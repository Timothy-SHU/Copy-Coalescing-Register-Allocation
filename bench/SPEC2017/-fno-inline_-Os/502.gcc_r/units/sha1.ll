; ModuleID = 'sha1.c'
source_filename = "sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sha1_ctx = type { i32, i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }

@fillbuf = internal unnamed_addr constant <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @sha1_init_ctx(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 !prof !34 {
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 4, !tbaa !35
  %2 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 4
  store <4 x i32> <i32 -1009589776, i32 0, i32 0, i32 0>, ptr %2, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @sha1_read_ctx(ptr nocapture noundef readonly %0, ptr noundef returned writeonly %1) local_unnamed_addr #1 !prof !34 {
  %3 = load i32, ptr %0, align 4, !tbaa !39
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  store i32 %4, ptr %1, align 4, !tbaa !35
  %5 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %7, ptr %8, align 4, !tbaa !35
  %9 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !42
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = getelementptr inbounds i32, ptr %1, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !35
  %13 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !43
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = getelementptr inbounds i32, ptr %1, i64 3
  store i32 %15, ptr %16, align 4, !tbaa !35
  %17 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !44
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = getelementptr inbounds i32, ptr %1, i64 4
  store i32 %19, ptr %20, align 4, !tbaa !35
  ret ptr %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @sha1_finish_ctx(ptr noundef %0, ptr noundef returned %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !45
  %5 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !35
  %7 = add i32 %6, %4
  store i32 %7, ptr %5, align 4, !tbaa !35
  %8 = icmp ult i32 %7, %4
  %9 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 5, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !35
  br i1 %8, label %11, label %13

11:                                               ; preds = %2
  %12 = add i32 %10, 1
  store i32 %12, ptr %9, align 4, !tbaa !35
  br label %13

13:                                               ; preds = %2, %11
  %14 = phi i32 [ %12, %11 ], [ %10, %2 ]
  %15 = icmp ult i32 %4, 56
  %16 = select i1 %15, i64 16, i64 32
  %17 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %7, i32 3)
  %18 = shl i32 %17, 24
  %19 = shl i32 %17, 8
  %20 = and i32 %19, 16711680
  %21 = or disjoint i32 %20, %18
  %22 = lshr i32 %17, 8
  %23 = and i32 %22, 65280
  %24 = or disjoint i32 %21, %23
  %25 = lshr i32 %17, 24
  %26 = or disjoint i32 %24, %25
  %27 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 7
  %28 = add nsw i64 %16, -2
  %29 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 7, i64 %28
  store i32 %26, ptr %29, align 4, !tbaa !35
  %30 = shl i32 %7, 3
  %31 = shl i32 %7, 27
  %32 = shl i32 %7, 11
  %33 = and i32 %32, 16711680
  %34 = or disjoint i32 %33, %31
  %35 = lshr i32 %30, 8
  %36 = and i32 %35, 65280
  %37 = or disjoint i32 %34, %36
  %38 = lshr i32 %30, 24
  %39 = or disjoint i32 %37, %38
  %40 = add nsw i64 %16, -1
  %41 = getelementptr inbounds %struct.sha1_ctx, ptr %0, i64 0, i32 7, i64 %40
  store i32 %39, ptr %41, align 4, !tbaa !35
  %42 = zext i32 %4 to i64
  %43 = getelementptr inbounds i8, ptr %27, i64 %42
  %44 = shl nuw nsw i64 %28, 2
  %45 = sub nsw i64 %44, %42
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %43, ptr nonnull align 16 @fillbuf, i64 %45, i1 false)
  %46 = shl nuw nsw i64 %16, 2
  tail call void @sha1_process_block(ptr noundef nonnull %27, i64 noundef %46, ptr noundef nonnull %0) #10
  %47 = tail call ptr @sha1_read_ctx(ptr noundef nonnull %0, ptr noundef %1) #10
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @sha1_process_block(ptr noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = alloca [16 x i32], align 16
  %5 = lshr i64 %1, 2
  %6 = getelementptr inbounds i32, ptr %0, i64 %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %7 = load i32, ptr %2, align 4, !tbaa !39
  %8 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !42
  %12 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !43
  %14 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !44
  %16 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !35
  %18 = trunc i64 %1 to i32
  %19 = add i32 %17, %18
  store i32 %19, ptr %16, align 4, !tbaa !35
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 5, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !35
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4, !tbaa !35
  br label %26

26:                                               ; preds = %22, %3
  %27 = and i64 %1, -4
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %1040

29:                                               ; preds = %26
  %30 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 1
  %31 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 2
  %32 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 3
  %33 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 4
  %34 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 5
  %35 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 6
  %36 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 7
  %37 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 8
  %38 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 9
  %39 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 10
  %40 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 11
  %41 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 12
  %42 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 13
  %43 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 14
  %44 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 15
  br label %45

45:                                               ; preds = %29, %61
  %46 = phi i32 [ %15, %29 ], [ %1038, %61 ]
  %47 = phi i32 [ %13, %29 ], [ %1037, %61 ]
  %48 = phi i32 [ %11, %29 ], [ %1036, %61 ]
  %49 = phi i32 [ %9, %29 ], [ %1035, %61 ]
  %50 = phi i32 [ %7, %29 ], [ %1034, %61 ]
  %51 = phi ptr [ %0, %29 ], [ %58, %61 ]
  br label %52

52:                                               ; preds = %45, %52
  %53 = phi i64 [ 0, %45 ], [ %59, %52 ]
  %54 = phi ptr [ %51, %45 ], [ %58, %52 ]
  %55 = load i32, ptr %54, align 4, !tbaa !35
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 %53
  store i32 %56, ptr %57, align 4, !tbaa !35
  %58 = getelementptr inbounds i32, ptr %54, i64 1
  %59 = add nuw nsw i64 %53, 1
  %60 = icmp eq i64 %59, 16
  br i1 %60, label %61, label %52, !llvm.loop !46

61:                                               ; preds = %52
  %62 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 5)
  %63 = xor i32 %47, %48
  %64 = and i32 %63, %49
  %65 = xor i32 %64, %47
  %66 = load i32, ptr %4, align 16, !tbaa !35
  %67 = add i32 %62, 1518500249
  %68 = add i32 %67, %46
  %69 = add i32 %68, %65
  %70 = add i32 %69, %66
  %71 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 30)
  %72 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 5)
  %73 = xor i32 %71, %48
  %74 = and i32 %73, %50
  %75 = xor i32 %74, %48
  %76 = load i32, ptr %30, align 4, !tbaa !35
  %77 = add i32 %47, 1518500249
  %78 = add i32 %77, %75
  %79 = add i32 %78, %76
  %80 = add i32 %79, %72
  %81 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 30)
  %82 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 5)
  %83 = xor i32 %71, %81
  %84 = and i32 %70, %83
  %85 = xor i32 %84, %71
  %86 = load i32, ptr %31, align 8, !tbaa !35
  %87 = add i32 %48, 1518500249
  %88 = add i32 %87, %86
  %89 = add i32 %88, %85
  %90 = add i32 %89, %82
  %91 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 30)
  %92 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 5)
  %93 = xor i32 %91, %81
  %94 = and i32 %80, %93
  %95 = xor i32 %94, %81
  %96 = load i32, ptr %32, align 4, !tbaa !35
  %97 = add i32 %71, 1518500249
  %98 = add i32 %97, %96
  %99 = add i32 %98, %95
  %100 = add i32 %99, %92
  %101 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 30)
  %102 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 5)
  %103 = xor i32 %101, %91
  %104 = and i32 %90, %103
  %105 = xor i32 %104, %91
  %106 = load i32, ptr %33, align 16, !tbaa !35
  %107 = add i32 %81, 1518500249
  %108 = add i32 %107, %106
  %109 = add i32 %108, %105
  %110 = add i32 %109, %102
  %111 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 30)
  %112 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 5)
  %113 = xor i32 %111, %101
  %114 = and i32 %100, %113
  %115 = xor i32 %114, %101
  %116 = load i32, ptr %34, align 4, !tbaa !35
  %117 = add i32 %91, 1518500249
  %118 = add i32 %117, %116
  %119 = add i32 %118, %115
  %120 = add i32 %119, %112
  %121 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 30)
  %122 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 5)
  %123 = xor i32 %121, %111
  %124 = and i32 %110, %123
  %125 = xor i32 %124, %111
  %126 = load i32, ptr %35, align 8, !tbaa !35
  %127 = add i32 %126, 1518500249
  %128 = add i32 %127, %101
  %129 = add i32 %128, %125
  %130 = add i32 %129, %122
  %131 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 30)
  %132 = tail call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 5)
  %133 = xor i32 %131, %121
  %134 = and i32 %120, %133
  %135 = xor i32 %134, %121
  %136 = load i32, ptr %36, align 4, !tbaa !35
  %137 = add i32 %136, 1518500249
  %138 = add i32 %137, %111
  %139 = add i32 %138, %135
  %140 = add i32 %139, %132
  %141 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 30)
  %142 = tail call i32 @llvm.fshl.i32(i32 %140, i32 %140, i32 5)
  %143 = xor i32 %141, %131
  %144 = and i32 %130, %143
  %145 = xor i32 %144, %131
  %146 = load i32, ptr %37, align 16, !tbaa !35
  %147 = add i32 %146, 1518500249
  %148 = add i32 %147, %121
  %149 = add i32 %148, %145
  %150 = add i32 %149, %142
  %151 = tail call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 30)
  %152 = tail call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 5)
  %153 = xor i32 %151, %141
  %154 = and i32 %140, %153
  %155 = xor i32 %154, %141
  %156 = load i32, ptr %38, align 4, !tbaa !35
  %157 = add i32 %156, 1518500249
  %158 = add i32 %157, %131
  %159 = add i32 %158, %155
  %160 = add i32 %159, %152
  %161 = tail call i32 @llvm.fshl.i32(i32 %140, i32 %140, i32 30)
  %162 = tail call i32 @llvm.fshl.i32(i32 %160, i32 %160, i32 5)
  %163 = xor i32 %161, %151
  %164 = and i32 %150, %163
  %165 = xor i32 %164, %151
  %166 = load i32, ptr %39, align 8, !tbaa !35
  %167 = add i32 %166, 1518500249
  %168 = add i32 %167, %141
  %169 = add i32 %168, %165
  %170 = add i32 %169, %162
  %171 = tail call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 30)
  %172 = tail call i32 @llvm.fshl.i32(i32 %170, i32 %170, i32 5)
  %173 = xor i32 %171, %161
  %174 = and i32 %160, %173
  %175 = xor i32 %174, %161
  %176 = load i32, ptr %40, align 4, !tbaa !35
  %177 = add i32 %176, 1518500249
  %178 = add i32 %177, %151
  %179 = add i32 %178, %175
  %180 = add i32 %179, %172
  %181 = tail call i32 @llvm.fshl.i32(i32 %160, i32 %160, i32 30)
  %182 = tail call i32 @llvm.fshl.i32(i32 %180, i32 %180, i32 5)
  %183 = xor i32 %181, %171
  %184 = and i32 %170, %183
  %185 = xor i32 %184, %171
  %186 = load i32, ptr %41, align 16, !tbaa !35
  %187 = add i32 %186, 1518500249
  %188 = add i32 %187, %161
  %189 = add i32 %188, %185
  %190 = add i32 %189, %182
  %191 = tail call i32 @llvm.fshl.i32(i32 %170, i32 %170, i32 30)
  %192 = tail call i32 @llvm.fshl.i32(i32 %190, i32 %190, i32 5)
  %193 = xor i32 %191, %181
  %194 = and i32 %180, %193
  %195 = xor i32 %194, %181
  %196 = load i32, ptr %42, align 4, !tbaa !35
  %197 = add i32 %196, 1518500249
  %198 = add i32 %197, %171
  %199 = add i32 %198, %195
  %200 = add i32 %199, %192
  %201 = tail call i32 @llvm.fshl.i32(i32 %180, i32 %180, i32 30)
  %202 = tail call i32 @llvm.fshl.i32(i32 %200, i32 %200, i32 5)
  %203 = xor i32 %201, %191
  %204 = and i32 %190, %203
  %205 = xor i32 %204, %191
  %206 = load i32, ptr %43, align 8, !tbaa !35
  %207 = add i32 %206, 1518500249
  %208 = add i32 %207, %181
  %209 = add i32 %208, %205
  %210 = add i32 %209, %202
  %211 = tail call i32 @llvm.fshl.i32(i32 %190, i32 %190, i32 30)
  %212 = tail call i32 @llvm.fshl.i32(i32 %210, i32 %210, i32 5)
  %213 = xor i32 %211, %201
  %214 = and i32 %200, %213
  %215 = xor i32 %214, %201
  %216 = load i32, ptr %44, align 4, !tbaa !35
  %217 = add i32 %216, 1518500249
  %218 = add i32 %217, %191
  %219 = add i32 %218, %215
  %220 = add i32 %219, %212
  %221 = tail call i32 @llvm.fshl.i32(i32 %200, i32 %200, i32 30)
  %222 = tail call i32 @llvm.fshl.i32(i32 %220, i32 %220, i32 5)
  %223 = xor i32 %221, %211
  %224 = and i32 %210, %223
  %225 = xor i32 %224, %211
  %226 = xor i32 %86, %66
  %227 = xor i32 %226, %146
  %228 = xor i32 %227, %196
  %229 = tail call i32 @llvm.fshl.i32(i32 %228, i32 %228, i32 1)
  %230 = add i32 %229, 1518500249
  %231 = add i32 %230, %201
  %232 = add i32 %231, %225
  %233 = add i32 %232, %222
  %234 = tail call i32 @llvm.fshl.i32(i32 %210, i32 %210, i32 30)
  %235 = tail call i32 @llvm.fshl.i32(i32 %233, i32 %233, i32 5)
  %236 = xor i32 %234, %221
  %237 = and i32 %220, %236
  %238 = xor i32 %237, %221
  %239 = xor i32 %96, %76
  %240 = xor i32 %239, %156
  %241 = xor i32 %240, %206
  %242 = tail call i32 @llvm.fshl.i32(i32 %241, i32 %241, i32 1)
  %243 = add i32 %242, 1518500249
  %244 = add i32 %243, %211
  %245 = add i32 %244, %238
  %246 = add i32 %245, %235
  %247 = tail call i32 @llvm.fshl.i32(i32 %220, i32 %220, i32 30)
  %248 = tail call i32 @llvm.fshl.i32(i32 %246, i32 %246, i32 5)
  %249 = xor i32 %247, %234
  %250 = and i32 %233, %249
  %251 = xor i32 %250, %234
  %252 = xor i32 %106, %86
  %253 = xor i32 %252, %166
  %254 = xor i32 %253, %216
  %255 = tail call i32 @llvm.fshl.i32(i32 %254, i32 %254, i32 1)
  %256 = add i32 %255, 1518500249
  %257 = add i32 %256, %221
  %258 = add i32 %257, %251
  %259 = add i32 %258, %248
  %260 = tail call i32 @llvm.fshl.i32(i32 %233, i32 %233, i32 30)
  %261 = tail call i32 @llvm.fshl.i32(i32 %259, i32 %259, i32 5)
  %262 = xor i32 %260, %247
  %263 = and i32 %246, %262
  %264 = xor i32 %263, %247
  %265 = xor i32 %116, %96
  %266 = xor i32 %265, %176
  %267 = xor i32 %266, %229
  %268 = tail call i32 @llvm.fshl.i32(i32 %267, i32 %267, i32 1)
  %269 = add i32 %268, 1518500249
  %270 = add i32 %269, %234
  %271 = add i32 %270, %264
  %272 = add i32 %271, %261
  %273 = tail call i32 @llvm.fshl.i32(i32 %246, i32 %246, i32 30)
  %274 = tail call i32 @llvm.fshl.i32(i32 %272, i32 %272, i32 5)
  %275 = xor i32 %273, %260
  %276 = xor i32 %275, %259
  %277 = xor i32 %126, %106
  %278 = xor i32 %277, %186
  %279 = xor i32 %278, %242
  %280 = tail call i32 @llvm.fshl.i32(i32 %279, i32 %279, i32 1)
  %281 = add i32 %280, 1859775393
  %282 = add i32 %281, %247
  %283 = add i32 %282, %276
  %284 = add i32 %283, %274
  %285 = tail call i32 @llvm.fshl.i32(i32 %259, i32 %259, i32 30)
  %286 = tail call i32 @llvm.fshl.i32(i32 %284, i32 %284, i32 5)
  %287 = xor i32 %285, %273
  %288 = xor i32 %287, %272
  %289 = xor i32 %136, %116
  %290 = xor i32 %289, %196
  %291 = xor i32 %290, %255
  %292 = tail call i32 @llvm.fshl.i32(i32 %291, i32 %291, i32 1)
  %293 = add i32 %292, 1859775393
  %294 = add i32 %293, %260
  %295 = add i32 %294, %288
  %296 = add i32 %295, %286
  %297 = tail call i32 @llvm.fshl.i32(i32 %272, i32 %272, i32 30)
  %298 = tail call i32 @llvm.fshl.i32(i32 %296, i32 %296, i32 5)
  %299 = xor i32 %297, %285
  %300 = xor i32 %299, %284
  %301 = xor i32 %146, %126
  %302 = xor i32 %301, %206
  %303 = xor i32 %302, %268
  %304 = tail call i32 @llvm.fshl.i32(i32 %303, i32 %303, i32 1)
  %305 = add i32 %304, 1859775393
  %306 = add i32 %305, %273
  %307 = add i32 %306, %300
  %308 = add i32 %307, %298
  %309 = tail call i32 @llvm.fshl.i32(i32 %284, i32 %284, i32 30)
  %310 = tail call i32 @llvm.fshl.i32(i32 %308, i32 %308, i32 5)
  %311 = xor i32 %309, %297
  %312 = xor i32 %311, %296
  %313 = xor i32 %156, %136
  %314 = xor i32 %313, %216
  %315 = xor i32 %314, %280
  %316 = tail call i32 @llvm.fshl.i32(i32 %315, i32 %315, i32 1)
  %317 = add i32 %316, 1859775393
  %318 = add i32 %317, %285
  %319 = add i32 %318, %312
  %320 = add i32 %319, %310
  %321 = tail call i32 @llvm.fshl.i32(i32 %296, i32 %296, i32 30)
  %322 = tail call i32 @llvm.fshl.i32(i32 %320, i32 %320, i32 5)
  %323 = xor i32 %321, %309
  %324 = xor i32 %323, %308
  %325 = xor i32 %166, %146
  %326 = xor i32 %325, %229
  %327 = xor i32 %326, %292
  %328 = tail call i32 @llvm.fshl.i32(i32 %327, i32 %327, i32 1)
  %329 = add i32 %328, 1859775393
  %330 = add i32 %329, %297
  %331 = add i32 %330, %324
  %332 = add i32 %331, %322
  %333 = tail call i32 @llvm.fshl.i32(i32 %308, i32 %308, i32 30)
  %334 = tail call i32 @llvm.fshl.i32(i32 %332, i32 %332, i32 5)
  %335 = xor i32 %333, %321
  %336 = xor i32 %335, %320
  %337 = xor i32 %176, %156
  %338 = xor i32 %337, %242
  %339 = xor i32 %338, %304
  %340 = tail call i32 @llvm.fshl.i32(i32 %339, i32 %339, i32 1)
  %341 = add i32 %340, 1859775393
  %342 = add i32 %341, %309
  %343 = add i32 %342, %336
  %344 = add i32 %343, %334
  %345 = tail call i32 @llvm.fshl.i32(i32 %320, i32 %320, i32 30)
  %346 = tail call i32 @llvm.fshl.i32(i32 %344, i32 %344, i32 5)
  %347 = xor i32 %345, %333
  %348 = xor i32 %347, %332
  %349 = xor i32 %186, %166
  %350 = xor i32 %349, %255
  %351 = xor i32 %350, %316
  %352 = tail call i32 @llvm.fshl.i32(i32 %351, i32 %351, i32 1)
  %353 = add i32 %352, 1859775393
  %354 = add i32 %353, %321
  %355 = add i32 %354, %348
  %356 = add i32 %355, %346
  %357 = tail call i32 @llvm.fshl.i32(i32 %332, i32 %332, i32 30)
  %358 = tail call i32 @llvm.fshl.i32(i32 %356, i32 %356, i32 5)
  %359 = xor i32 %357, %345
  %360 = xor i32 %359, %344
  %361 = xor i32 %196, %176
  %362 = xor i32 %361, %268
  %363 = xor i32 %362, %328
  %364 = tail call i32 @llvm.fshl.i32(i32 %363, i32 %363, i32 1)
  %365 = add i32 %364, 1859775393
  %366 = add i32 %365, %333
  %367 = add i32 %366, %360
  %368 = add i32 %367, %358
  %369 = tail call i32 @llvm.fshl.i32(i32 %344, i32 %344, i32 30)
  %370 = tail call i32 @llvm.fshl.i32(i32 %368, i32 %368, i32 5)
  %371 = xor i32 %369, %357
  %372 = xor i32 %371, %356
  %373 = xor i32 %206, %186
  %374 = xor i32 %373, %280
  %375 = xor i32 %374, %340
  %376 = tail call i32 @llvm.fshl.i32(i32 %375, i32 %375, i32 1)
  %377 = add i32 %376, 1859775393
  %378 = add i32 %377, %345
  %379 = add i32 %378, %372
  %380 = add i32 %379, %370
  %381 = tail call i32 @llvm.fshl.i32(i32 %356, i32 %356, i32 30)
  %382 = tail call i32 @llvm.fshl.i32(i32 %380, i32 %380, i32 5)
  %383 = xor i32 %381, %369
  %384 = xor i32 %383, %368
  %385 = xor i32 %216, %196
  %386 = xor i32 %385, %292
  %387 = xor i32 %386, %352
  %388 = tail call i32 @llvm.fshl.i32(i32 %387, i32 %387, i32 1)
  %389 = add i32 %388, 1859775393
  %390 = add i32 %389, %357
  %391 = add i32 %390, %384
  %392 = add i32 %391, %382
  %393 = tail call i32 @llvm.fshl.i32(i32 %368, i32 %368, i32 30)
  %394 = tail call i32 @llvm.fshl.i32(i32 %392, i32 %392, i32 5)
  %395 = xor i32 %393, %381
  %396 = xor i32 %395, %380
  %397 = xor i32 %229, %206
  %398 = xor i32 %397, %304
  %399 = xor i32 %398, %364
  %400 = tail call i32 @llvm.fshl.i32(i32 %399, i32 %399, i32 1)
  %401 = add i32 %400, 1859775393
  %402 = add i32 %401, %369
  %403 = add i32 %402, %396
  %404 = add i32 %403, %394
  %405 = tail call i32 @llvm.fshl.i32(i32 %380, i32 %380, i32 30)
  %406 = tail call i32 @llvm.fshl.i32(i32 %404, i32 %404, i32 5)
  %407 = xor i32 %405, %393
  %408 = xor i32 %407, %392
  %409 = xor i32 %242, %216
  %410 = xor i32 %409, %316
  %411 = xor i32 %410, %376
  %412 = tail call i32 @llvm.fshl.i32(i32 %411, i32 %411, i32 1)
  %413 = add i32 %412, 1859775393
  %414 = add i32 %413, %381
  %415 = add i32 %414, %408
  %416 = add i32 %415, %406
  %417 = tail call i32 @llvm.fshl.i32(i32 %392, i32 %392, i32 30)
  %418 = tail call i32 @llvm.fshl.i32(i32 %416, i32 %416, i32 5)
  %419 = xor i32 %417, %405
  %420 = xor i32 %419, %404
  %421 = xor i32 %255, %229
  %422 = xor i32 %421, %328
  %423 = xor i32 %422, %388
  %424 = tail call i32 @llvm.fshl.i32(i32 %423, i32 %423, i32 1)
  %425 = add i32 %424, 1859775393
  %426 = add i32 %425, %393
  %427 = add i32 %426, %420
  %428 = add i32 %427, %418
  %429 = tail call i32 @llvm.fshl.i32(i32 %404, i32 %404, i32 30)
  %430 = tail call i32 @llvm.fshl.i32(i32 %428, i32 %428, i32 5)
  %431 = xor i32 %429, %417
  %432 = xor i32 %431, %416
  %433 = xor i32 %268, %242
  %434 = xor i32 %433, %340
  %435 = xor i32 %434, %400
  %436 = tail call i32 @llvm.fshl.i32(i32 %435, i32 %435, i32 1)
  %437 = add i32 %436, 1859775393
  %438 = add i32 %437, %405
  %439 = add i32 %438, %432
  %440 = add i32 %439, %430
  %441 = tail call i32 @llvm.fshl.i32(i32 %416, i32 %416, i32 30)
  %442 = tail call i32 @llvm.fshl.i32(i32 %440, i32 %440, i32 5)
  %443 = xor i32 %441, %429
  %444 = xor i32 %443, %428
  %445 = xor i32 %280, %255
  %446 = xor i32 %445, %352
  %447 = xor i32 %446, %412
  %448 = tail call i32 @llvm.fshl.i32(i32 %447, i32 %447, i32 1)
  %449 = add i32 %448, 1859775393
  %450 = add i32 %449, %417
  %451 = add i32 %450, %444
  %452 = add i32 %451, %442
  %453 = tail call i32 @llvm.fshl.i32(i32 %428, i32 %428, i32 30)
  %454 = tail call i32 @llvm.fshl.i32(i32 %452, i32 %452, i32 5)
  %455 = xor i32 %453, %441
  %456 = xor i32 %455, %440
  %457 = xor i32 %292, %268
  %458 = xor i32 %457, %364
  %459 = xor i32 %458, %424
  %460 = tail call i32 @llvm.fshl.i32(i32 %459, i32 %459, i32 1)
  %461 = add i32 %460, 1859775393
  %462 = add i32 %461, %429
  %463 = add i32 %462, %456
  %464 = add i32 %463, %454
  %465 = tail call i32 @llvm.fshl.i32(i32 %440, i32 %440, i32 30)
  %466 = tail call i32 @llvm.fshl.i32(i32 %464, i32 %464, i32 5)
  %467 = xor i32 %465, %453
  %468 = xor i32 %467, %452
  %469 = xor i32 %304, %280
  %470 = xor i32 %469, %376
  %471 = xor i32 %470, %436
  %472 = tail call i32 @llvm.fshl.i32(i32 %471, i32 %471, i32 1)
  %473 = add i32 %472, 1859775393
  %474 = add i32 %473, %441
  %475 = add i32 %474, %468
  %476 = add i32 %475, %466
  %477 = tail call i32 @llvm.fshl.i32(i32 %452, i32 %452, i32 30)
  %478 = tail call i32 @llvm.fshl.i32(i32 %476, i32 %476, i32 5)
  %479 = xor i32 %477, %465
  %480 = xor i32 %479, %464
  %481 = xor i32 %316, %292
  %482 = xor i32 %481, %388
  %483 = xor i32 %482, %448
  %484 = tail call i32 @llvm.fshl.i32(i32 %483, i32 %483, i32 1)
  %485 = add i32 %484, 1859775393
  %486 = add i32 %485, %453
  %487 = add i32 %486, %480
  %488 = add i32 %487, %478
  %489 = tail call i32 @llvm.fshl.i32(i32 %464, i32 %464, i32 30)
  %490 = tail call i32 @llvm.fshl.i32(i32 %488, i32 %488, i32 5)
  %491 = xor i32 %489, %477
  %492 = xor i32 %491, %476
  %493 = xor i32 %328, %304
  %494 = xor i32 %493, %400
  %495 = xor i32 %494, %460
  %496 = tail call i32 @llvm.fshl.i32(i32 %495, i32 %495, i32 1)
  %497 = add i32 %496, 1859775393
  %498 = add i32 %497, %465
  %499 = add i32 %498, %492
  %500 = add i32 %499, %490
  %501 = tail call i32 @llvm.fshl.i32(i32 %476, i32 %476, i32 30)
  %502 = tail call i32 @llvm.fshl.i32(i32 %500, i32 %500, i32 5)
  %503 = xor i32 %501, %489
  %504 = xor i32 %503, %488
  %505 = xor i32 %340, %316
  %506 = xor i32 %505, %412
  %507 = xor i32 %506, %472
  %508 = tail call i32 @llvm.fshl.i32(i32 %507, i32 %507, i32 1)
  %509 = add i32 %508, 1859775393
  %510 = add i32 %509, %477
  %511 = add i32 %510, %504
  %512 = add i32 %511, %502
  %513 = tail call i32 @llvm.fshl.i32(i32 %488, i32 %488, i32 30)
  %514 = tail call i32 @llvm.fshl.i32(i32 %512, i32 %512, i32 5)
  %515 = and i32 %500, %513
  %516 = or i32 %500, %513
  %517 = and i32 %516, %501
  %518 = or i32 %517, %515
  %519 = xor i32 %352, %328
  %520 = xor i32 %519, %424
  %521 = xor i32 %520, %484
  %522 = tail call i32 @llvm.fshl.i32(i32 %521, i32 %521, i32 1)
  %523 = add i32 %522, -1894007588
  %524 = add i32 %523, %489
  %525 = add i32 %524, %518
  %526 = add i32 %525, %514
  %527 = tail call i32 @llvm.fshl.i32(i32 %500, i32 %500, i32 30)
  %528 = tail call i32 @llvm.fshl.i32(i32 %526, i32 %526, i32 5)
  %529 = and i32 %512, %527
  %530 = or i32 %512, %527
  %531 = and i32 %530, %513
  %532 = or i32 %531, %529
  %533 = xor i32 %364, %340
  %534 = xor i32 %533, %436
  %535 = xor i32 %534, %496
  %536 = tail call i32 @llvm.fshl.i32(i32 %535, i32 %535, i32 1)
  %537 = add i32 %536, -1894007588
  %538 = add i32 %537, %501
  %539 = add i32 %538, %532
  %540 = add i32 %539, %528
  %541 = tail call i32 @llvm.fshl.i32(i32 %512, i32 %512, i32 30)
  %542 = tail call i32 @llvm.fshl.i32(i32 %540, i32 %540, i32 5)
  %543 = and i32 %526, %541
  %544 = or i32 %526, %541
  %545 = and i32 %544, %527
  %546 = or i32 %545, %543
  %547 = xor i32 %376, %352
  %548 = xor i32 %547, %448
  %549 = xor i32 %548, %508
  %550 = tail call i32 @llvm.fshl.i32(i32 %549, i32 %549, i32 1)
  %551 = add i32 %550, -1894007588
  %552 = add i32 %551, %513
  %553 = add i32 %552, %546
  %554 = add i32 %553, %542
  %555 = tail call i32 @llvm.fshl.i32(i32 %526, i32 %526, i32 30)
  %556 = tail call i32 @llvm.fshl.i32(i32 %554, i32 %554, i32 5)
  %557 = and i32 %540, %555
  %558 = or i32 %540, %555
  %559 = and i32 %558, %541
  %560 = or i32 %559, %557
  %561 = xor i32 %388, %364
  %562 = xor i32 %561, %460
  %563 = xor i32 %562, %522
  %564 = tail call i32 @llvm.fshl.i32(i32 %563, i32 %563, i32 1)
  %565 = add i32 %564, -1894007588
  %566 = add i32 %565, %527
  %567 = add i32 %566, %560
  %568 = add i32 %567, %556
  %569 = tail call i32 @llvm.fshl.i32(i32 %540, i32 %540, i32 30)
  %570 = tail call i32 @llvm.fshl.i32(i32 %568, i32 %568, i32 5)
  %571 = and i32 %554, %569
  %572 = or i32 %554, %569
  %573 = and i32 %572, %555
  %574 = or i32 %573, %571
  %575 = xor i32 %400, %376
  %576 = xor i32 %575, %472
  %577 = xor i32 %576, %536
  %578 = tail call i32 @llvm.fshl.i32(i32 %577, i32 %577, i32 1)
  %579 = add i32 %578, -1894007588
  %580 = add i32 %579, %541
  %581 = add i32 %580, %574
  %582 = add i32 %581, %570
  %583 = tail call i32 @llvm.fshl.i32(i32 %554, i32 %554, i32 30)
  %584 = tail call i32 @llvm.fshl.i32(i32 %582, i32 %582, i32 5)
  %585 = and i32 %568, %583
  %586 = or i32 %568, %583
  %587 = and i32 %586, %569
  %588 = or i32 %587, %585
  %589 = xor i32 %412, %388
  %590 = xor i32 %589, %484
  %591 = xor i32 %590, %550
  %592 = tail call i32 @llvm.fshl.i32(i32 %591, i32 %591, i32 1)
  %593 = add i32 %592, -1894007588
  %594 = add i32 %593, %555
  %595 = add i32 %594, %588
  %596 = add i32 %595, %584
  %597 = tail call i32 @llvm.fshl.i32(i32 %568, i32 %568, i32 30)
  %598 = tail call i32 @llvm.fshl.i32(i32 %596, i32 %596, i32 5)
  %599 = and i32 %582, %597
  %600 = or i32 %582, %597
  %601 = and i32 %600, %583
  %602 = or i32 %601, %599
  %603 = xor i32 %424, %400
  %604 = xor i32 %603, %496
  %605 = xor i32 %604, %564
  %606 = tail call i32 @llvm.fshl.i32(i32 %605, i32 %605, i32 1)
  %607 = add i32 %606, -1894007588
  %608 = add i32 %607, %569
  %609 = add i32 %608, %602
  %610 = add i32 %609, %598
  %611 = tail call i32 @llvm.fshl.i32(i32 %582, i32 %582, i32 30)
  %612 = tail call i32 @llvm.fshl.i32(i32 %610, i32 %610, i32 5)
  %613 = and i32 %596, %611
  %614 = or i32 %596, %611
  %615 = and i32 %614, %597
  %616 = or i32 %615, %613
  %617 = xor i32 %436, %412
  %618 = xor i32 %617, %508
  %619 = xor i32 %618, %578
  %620 = tail call i32 @llvm.fshl.i32(i32 %619, i32 %619, i32 1)
  %621 = add i32 %620, -1894007588
  %622 = add i32 %621, %583
  %623 = add i32 %622, %616
  %624 = add i32 %623, %612
  %625 = tail call i32 @llvm.fshl.i32(i32 %596, i32 %596, i32 30)
  %626 = tail call i32 @llvm.fshl.i32(i32 %624, i32 %624, i32 5)
  %627 = and i32 %610, %625
  %628 = or i32 %610, %625
  %629 = and i32 %628, %611
  %630 = or i32 %629, %627
  %631 = xor i32 %448, %424
  %632 = xor i32 %631, %522
  %633 = xor i32 %632, %592
  %634 = tail call i32 @llvm.fshl.i32(i32 %633, i32 %633, i32 1)
  %635 = add i32 %634, -1894007588
  %636 = add i32 %635, %597
  %637 = add i32 %636, %630
  %638 = add i32 %637, %626
  %639 = tail call i32 @llvm.fshl.i32(i32 %610, i32 %610, i32 30)
  %640 = tail call i32 @llvm.fshl.i32(i32 %638, i32 %638, i32 5)
  %641 = and i32 %624, %639
  %642 = or i32 %624, %639
  %643 = and i32 %642, %625
  %644 = or i32 %643, %641
  %645 = xor i32 %460, %436
  %646 = xor i32 %645, %536
  %647 = xor i32 %646, %606
  %648 = tail call i32 @llvm.fshl.i32(i32 %647, i32 %647, i32 1)
  %649 = add i32 %648, -1894007588
  %650 = add i32 %649, %611
  %651 = add i32 %650, %644
  %652 = add i32 %651, %640
  %653 = tail call i32 @llvm.fshl.i32(i32 %624, i32 %624, i32 30)
  %654 = tail call i32 @llvm.fshl.i32(i32 %652, i32 %652, i32 5)
  %655 = and i32 %638, %653
  %656 = or i32 %638, %653
  %657 = and i32 %656, %639
  %658 = or i32 %657, %655
  %659 = xor i32 %472, %448
  %660 = xor i32 %659, %550
  %661 = xor i32 %660, %620
  %662 = tail call i32 @llvm.fshl.i32(i32 %661, i32 %661, i32 1)
  %663 = add i32 %662, -1894007588
  %664 = add i32 %663, %625
  %665 = add i32 %664, %658
  %666 = add i32 %665, %654
  %667 = tail call i32 @llvm.fshl.i32(i32 %638, i32 %638, i32 30)
  %668 = tail call i32 @llvm.fshl.i32(i32 %666, i32 %666, i32 5)
  %669 = and i32 %652, %667
  %670 = or i32 %652, %667
  %671 = and i32 %670, %653
  %672 = or i32 %671, %669
  %673 = xor i32 %484, %460
  %674 = xor i32 %673, %564
  %675 = xor i32 %674, %634
  %676 = tail call i32 @llvm.fshl.i32(i32 %675, i32 %675, i32 1)
  %677 = add i32 %676, -1894007588
  %678 = add i32 %677, %639
  %679 = add i32 %678, %672
  %680 = add i32 %679, %668
  %681 = tail call i32 @llvm.fshl.i32(i32 %652, i32 %652, i32 30)
  %682 = tail call i32 @llvm.fshl.i32(i32 %680, i32 %680, i32 5)
  %683 = and i32 %666, %681
  %684 = or i32 %666, %681
  %685 = and i32 %684, %667
  %686 = or i32 %685, %683
  %687 = xor i32 %496, %472
  %688 = xor i32 %687, %578
  %689 = xor i32 %688, %648
  %690 = tail call i32 @llvm.fshl.i32(i32 %689, i32 %689, i32 1)
  %691 = add i32 %690, -1894007588
  %692 = add i32 %691, %653
  %693 = add i32 %692, %686
  %694 = add i32 %693, %682
  %695 = tail call i32 @llvm.fshl.i32(i32 %666, i32 %666, i32 30)
  %696 = tail call i32 @llvm.fshl.i32(i32 %694, i32 %694, i32 5)
  %697 = and i32 %680, %695
  %698 = or i32 %680, %695
  %699 = and i32 %698, %681
  %700 = or i32 %699, %697
  %701 = xor i32 %508, %484
  %702 = xor i32 %701, %592
  %703 = xor i32 %702, %662
  %704 = tail call i32 @llvm.fshl.i32(i32 %703, i32 %703, i32 1)
  %705 = add i32 %704, -1894007588
  %706 = add i32 %705, %667
  %707 = add i32 %706, %700
  %708 = add i32 %707, %696
  %709 = tail call i32 @llvm.fshl.i32(i32 %680, i32 %680, i32 30)
  %710 = tail call i32 @llvm.fshl.i32(i32 %708, i32 %708, i32 5)
  %711 = and i32 %694, %709
  %712 = or i32 %694, %709
  %713 = and i32 %712, %695
  %714 = or i32 %713, %711
  %715 = xor i32 %522, %496
  %716 = xor i32 %715, %606
  %717 = xor i32 %716, %676
  %718 = tail call i32 @llvm.fshl.i32(i32 %717, i32 %717, i32 1)
  %719 = add i32 %718, -1894007588
  %720 = add i32 %719, %681
  %721 = add i32 %720, %714
  %722 = add i32 %721, %710
  %723 = tail call i32 @llvm.fshl.i32(i32 %694, i32 %694, i32 30)
  %724 = tail call i32 @llvm.fshl.i32(i32 %722, i32 %722, i32 5)
  %725 = and i32 %708, %723
  %726 = or i32 %708, %723
  %727 = and i32 %726, %709
  %728 = or i32 %727, %725
  %729 = xor i32 %536, %508
  %730 = xor i32 %729, %620
  %731 = xor i32 %730, %690
  %732 = tail call i32 @llvm.fshl.i32(i32 %731, i32 %731, i32 1)
  %733 = add i32 %732, -1894007588
  %734 = add i32 %733, %695
  %735 = add i32 %734, %728
  %736 = add i32 %735, %724
  %737 = tail call i32 @llvm.fshl.i32(i32 %708, i32 %708, i32 30)
  %738 = tail call i32 @llvm.fshl.i32(i32 %736, i32 %736, i32 5)
  %739 = and i32 %722, %737
  %740 = or i32 %722, %737
  %741 = and i32 %740, %723
  %742 = or i32 %741, %739
  %743 = xor i32 %550, %522
  %744 = xor i32 %743, %634
  %745 = xor i32 %744, %704
  %746 = tail call i32 @llvm.fshl.i32(i32 %745, i32 %745, i32 1)
  %747 = add i32 %746, -1894007588
  %748 = add i32 %747, %709
  %749 = add i32 %748, %742
  %750 = add i32 %749, %738
  %751 = tail call i32 @llvm.fshl.i32(i32 %722, i32 %722, i32 30)
  %752 = tail call i32 @llvm.fshl.i32(i32 %750, i32 %750, i32 5)
  %753 = and i32 %736, %751
  %754 = or i32 %736, %751
  %755 = and i32 %754, %737
  %756 = or i32 %755, %753
  %757 = xor i32 %564, %536
  %758 = xor i32 %757, %648
  %759 = xor i32 %758, %718
  %760 = tail call i32 @llvm.fshl.i32(i32 %759, i32 %759, i32 1)
  %761 = add i32 %760, -1894007588
  %762 = add i32 %761, %723
  %763 = add i32 %762, %756
  %764 = add i32 %763, %752
  %765 = tail call i32 @llvm.fshl.i32(i32 %736, i32 %736, i32 30)
  %766 = tail call i32 @llvm.fshl.i32(i32 %764, i32 %764, i32 5)
  %767 = and i32 %750, %765
  %768 = or i32 %750, %765
  %769 = and i32 %768, %751
  %770 = or i32 %769, %767
  %771 = xor i32 %578, %550
  %772 = xor i32 %771, %662
  %773 = xor i32 %772, %732
  %774 = tail call i32 @llvm.fshl.i32(i32 %773, i32 %773, i32 1)
  %775 = add i32 %774, -1894007588
  %776 = add i32 %775, %737
  %777 = add i32 %776, %770
  %778 = add i32 %777, %766
  %779 = tail call i32 @llvm.fshl.i32(i32 %750, i32 %750, i32 30)
  %780 = tail call i32 @llvm.fshl.i32(i32 %778, i32 %778, i32 5)
  %781 = and i32 %764, %779
  %782 = or i32 %764, %779
  %783 = and i32 %782, %765
  %784 = or i32 %783, %781
  %785 = xor i32 %592, %564
  %786 = xor i32 %785, %676
  %787 = xor i32 %786, %746
  %788 = tail call i32 @llvm.fshl.i32(i32 %787, i32 %787, i32 1)
  %789 = add i32 %788, -1894007588
  %790 = add i32 %789, %751
  %791 = add i32 %790, %784
  %792 = add i32 %791, %780
  %793 = tail call i32 @llvm.fshl.i32(i32 %764, i32 %764, i32 30)
  %794 = tail call i32 @llvm.fshl.i32(i32 %792, i32 %792, i32 5)
  %795 = xor i32 %793, %779
  %796 = xor i32 %795, %778
  %797 = xor i32 %606, %578
  %798 = xor i32 %797, %690
  %799 = xor i32 %798, %760
  %800 = tail call i32 @llvm.fshl.i32(i32 %799, i32 %799, i32 1)
  %801 = add i32 %800, -899497514
  %802 = add i32 %801, %765
  %803 = add i32 %802, %796
  %804 = add i32 %803, %794
  %805 = tail call i32 @llvm.fshl.i32(i32 %778, i32 %778, i32 30)
  %806 = tail call i32 @llvm.fshl.i32(i32 %804, i32 %804, i32 5)
  %807 = xor i32 %805, %793
  %808 = xor i32 %807, %792
  %809 = xor i32 %620, %592
  %810 = xor i32 %809, %704
  %811 = xor i32 %810, %774
  %812 = tail call i32 @llvm.fshl.i32(i32 %811, i32 %811, i32 1)
  %813 = add i32 %812, -899497514
  %814 = add i32 %813, %779
  %815 = add i32 %814, %808
  %816 = add i32 %815, %806
  %817 = tail call i32 @llvm.fshl.i32(i32 %792, i32 %792, i32 30)
  %818 = tail call i32 @llvm.fshl.i32(i32 %816, i32 %816, i32 5)
  %819 = xor i32 %817, %805
  %820 = xor i32 %819, %804
  %821 = xor i32 %634, %606
  %822 = xor i32 %821, %718
  %823 = xor i32 %822, %788
  %824 = tail call i32 @llvm.fshl.i32(i32 %823, i32 %823, i32 1)
  %825 = add i32 %824, -899497514
  %826 = add i32 %825, %793
  %827 = add i32 %826, %820
  %828 = add i32 %827, %818
  %829 = tail call i32 @llvm.fshl.i32(i32 %804, i32 %804, i32 30)
  %830 = tail call i32 @llvm.fshl.i32(i32 %828, i32 %828, i32 5)
  %831 = xor i32 %829, %817
  %832 = xor i32 %831, %816
  %833 = xor i32 %648, %620
  %834 = xor i32 %833, %732
  %835 = xor i32 %834, %800
  %836 = tail call i32 @llvm.fshl.i32(i32 %835, i32 %835, i32 1)
  %837 = add i32 %836, -899497514
  %838 = add i32 %837, %805
  %839 = add i32 %838, %832
  %840 = add i32 %839, %830
  %841 = tail call i32 @llvm.fshl.i32(i32 %816, i32 %816, i32 30)
  %842 = tail call i32 @llvm.fshl.i32(i32 %840, i32 %840, i32 5)
  %843 = xor i32 %841, %829
  %844 = xor i32 %843, %828
  %845 = xor i32 %662, %634
  %846 = xor i32 %845, %746
  %847 = xor i32 %846, %812
  %848 = tail call i32 @llvm.fshl.i32(i32 %847, i32 %847, i32 1)
  store i32 %848, ptr %4, align 16, !tbaa !35
  %849 = add i32 %848, -899497514
  %850 = add i32 %849, %817
  %851 = add i32 %850, %844
  %852 = add i32 %851, %842
  %853 = tail call i32 @llvm.fshl.i32(i32 %828, i32 %828, i32 30)
  %854 = tail call i32 @llvm.fshl.i32(i32 %852, i32 %852, i32 5)
  %855 = xor i32 %853, %841
  %856 = xor i32 %855, %840
  %857 = xor i32 %676, %648
  %858 = xor i32 %857, %760
  %859 = xor i32 %858, %824
  %860 = tail call i32 @llvm.fshl.i32(i32 %859, i32 %859, i32 1)
  store i32 %860, ptr %30, align 4, !tbaa !35
  %861 = add i32 %860, -899497514
  %862 = add i32 %861, %829
  %863 = add i32 %862, %856
  %864 = add i32 %863, %854
  %865 = tail call i32 @llvm.fshl.i32(i32 %840, i32 %840, i32 30)
  %866 = tail call i32 @llvm.fshl.i32(i32 %864, i32 %864, i32 5)
  %867 = xor i32 %865, %853
  %868 = xor i32 %867, %852
  %869 = xor i32 %690, %662
  %870 = xor i32 %869, %774
  %871 = xor i32 %870, %836
  %872 = tail call i32 @llvm.fshl.i32(i32 %871, i32 %871, i32 1)
  store i32 %872, ptr %31, align 8, !tbaa !35
  %873 = add i32 %872, -899497514
  %874 = add i32 %873, %841
  %875 = add i32 %874, %868
  %876 = add i32 %875, %866
  %877 = tail call i32 @llvm.fshl.i32(i32 %852, i32 %852, i32 30)
  %878 = tail call i32 @llvm.fshl.i32(i32 %876, i32 %876, i32 5)
  %879 = xor i32 %877, %865
  %880 = xor i32 %879, %864
  %881 = xor i32 %704, %676
  %882 = xor i32 %881, %788
  %883 = xor i32 %882, %848
  %884 = tail call i32 @llvm.fshl.i32(i32 %883, i32 %883, i32 1)
  store i32 %884, ptr %32, align 4, !tbaa !35
  %885 = add i32 %884, -899497514
  %886 = add i32 %885, %853
  %887 = add i32 %886, %880
  %888 = add i32 %887, %878
  %889 = tail call i32 @llvm.fshl.i32(i32 %864, i32 %864, i32 30)
  %890 = tail call i32 @llvm.fshl.i32(i32 %888, i32 %888, i32 5)
  %891 = xor i32 %889, %877
  %892 = xor i32 %891, %876
  %893 = xor i32 %718, %690
  %894 = xor i32 %893, %800
  %895 = xor i32 %894, %860
  %896 = tail call i32 @llvm.fshl.i32(i32 %895, i32 %895, i32 1)
  store i32 %896, ptr %33, align 16, !tbaa !35
  %897 = add i32 %896, -899497514
  %898 = add i32 %897, %865
  %899 = add i32 %898, %892
  %900 = add i32 %899, %890
  %901 = tail call i32 @llvm.fshl.i32(i32 %876, i32 %876, i32 30)
  %902 = tail call i32 @llvm.fshl.i32(i32 %900, i32 %900, i32 5)
  %903 = xor i32 %901, %889
  %904 = xor i32 %903, %888
  %905 = xor i32 %732, %704
  %906 = xor i32 %905, %812
  %907 = xor i32 %906, %872
  %908 = tail call i32 @llvm.fshl.i32(i32 %907, i32 %907, i32 1)
  store i32 %908, ptr %34, align 4, !tbaa !35
  %909 = add i32 %908, -899497514
  %910 = add i32 %909, %877
  %911 = add i32 %910, %904
  %912 = add i32 %911, %902
  %913 = tail call i32 @llvm.fshl.i32(i32 %888, i32 %888, i32 30)
  %914 = tail call i32 @llvm.fshl.i32(i32 %912, i32 %912, i32 5)
  %915 = xor i32 %913, %901
  %916 = xor i32 %915, %900
  %917 = xor i32 %746, %718
  %918 = xor i32 %917, %824
  %919 = xor i32 %918, %884
  %920 = tail call i32 @llvm.fshl.i32(i32 %919, i32 %919, i32 1)
  store i32 %920, ptr %35, align 8, !tbaa !35
  %921 = add i32 %920, -899497514
  %922 = add i32 %921, %889
  %923 = add i32 %922, %916
  %924 = add i32 %923, %914
  %925 = tail call i32 @llvm.fshl.i32(i32 %900, i32 %900, i32 30)
  %926 = tail call i32 @llvm.fshl.i32(i32 %924, i32 %924, i32 5)
  %927 = xor i32 %925, %913
  %928 = xor i32 %927, %912
  %929 = xor i32 %760, %732
  %930 = xor i32 %929, %836
  %931 = xor i32 %930, %896
  %932 = tail call i32 @llvm.fshl.i32(i32 %931, i32 %931, i32 1)
  store i32 %932, ptr %36, align 4, !tbaa !35
  %933 = add i32 %932, -899497514
  %934 = add i32 %933, %901
  %935 = add i32 %934, %928
  %936 = add i32 %935, %926
  %937 = tail call i32 @llvm.fshl.i32(i32 %912, i32 %912, i32 30)
  %938 = tail call i32 @llvm.fshl.i32(i32 %936, i32 %936, i32 5)
  %939 = xor i32 %937, %925
  %940 = xor i32 %939, %924
  %941 = xor i32 %774, %746
  %942 = xor i32 %941, %848
  %943 = xor i32 %942, %908
  %944 = tail call i32 @llvm.fshl.i32(i32 %943, i32 %943, i32 1)
  store i32 %944, ptr %37, align 16, !tbaa !35
  %945 = add i32 %944, -899497514
  %946 = add i32 %945, %913
  %947 = add i32 %946, %940
  %948 = add i32 %947, %938
  %949 = tail call i32 @llvm.fshl.i32(i32 %924, i32 %924, i32 30)
  %950 = tail call i32 @llvm.fshl.i32(i32 %948, i32 %948, i32 5)
  %951 = xor i32 %949, %937
  %952 = xor i32 %951, %936
  %953 = xor i32 %788, %760
  %954 = xor i32 %953, %860
  %955 = xor i32 %954, %920
  %956 = tail call i32 @llvm.fshl.i32(i32 %955, i32 %955, i32 1)
  store i32 %956, ptr %38, align 4, !tbaa !35
  %957 = add i32 %956, -899497514
  %958 = add i32 %957, %925
  %959 = add i32 %958, %952
  %960 = add i32 %959, %950
  %961 = tail call i32 @llvm.fshl.i32(i32 %936, i32 %936, i32 30)
  %962 = tail call i32 @llvm.fshl.i32(i32 %960, i32 %960, i32 5)
  %963 = xor i32 %961, %949
  %964 = xor i32 %963, %948
  %965 = xor i32 %800, %774
  %966 = xor i32 %965, %872
  %967 = xor i32 %966, %932
  %968 = tail call i32 @llvm.fshl.i32(i32 %967, i32 %967, i32 1)
  store i32 %968, ptr %39, align 8, !tbaa !35
  %969 = add i32 %968, -899497514
  %970 = add i32 %969, %937
  %971 = add i32 %970, %964
  %972 = add i32 %971, %962
  %973 = tail call i32 @llvm.fshl.i32(i32 %948, i32 %948, i32 30)
  %974 = tail call i32 @llvm.fshl.i32(i32 %972, i32 %972, i32 5)
  %975 = xor i32 %973, %961
  %976 = xor i32 %975, %960
  %977 = xor i32 %812, %788
  %978 = xor i32 %977, %884
  %979 = xor i32 %978, %944
  %980 = tail call i32 @llvm.fshl.i32(i32 %979, i32 %979, i32 1)
  store i32 %980, ptr %40, align 4, !tbaa !35
  %981 = add i32 %980, -899497514
  %982 = add i32 %981, %949
  %983 = add i32 %982, %976
  %984 = add i32 %983, %974
  %985 = tail call i32 @llvm.fshl.i32(i32 %960, i32 %960, i32 30)
  %986 = tail call i32 @llvm.fshl.i32(i32 %984, i32 %984, i32 5)
  %987 = xor i32 %985, %973
  %988 = xor i32 %987, %972
  %989 = xor i32 %824, %800
  %990 = xor i32 %989, %896
  %991 = xor i32 %990, %956
  %992 = tail call i32 @llvm.fshl.i32(i32 %991, i32 %991, i32 1)
  store i32 %992, ptr %41, align 16, !tbaa !35
  %993 = add i32 %992, -899497514
  %994 = add i32 %993, %961
  %995 = add i32 %994, %988
  %996 = add i32 %995, %986
  %997 = tail call i32 @llvm.fshl.i32(i32 %972, i32 %972, i32 30)
  %998 = tail call i32 @llvm.fshl.i32(i32 %996, i32 %996, i32 5)
  %999 = xor i32 %997, %985
  %1000 = xor i32 %999, %984
  %1001 = xor i32 %836, %812
  %1002 = xor i32 %1001, %908
  %1003 = xor i32 %1002, %968
  %1004 = tail call i32 @llvm.fshl.i32(i32 %1003, i32 %1003, i32 1)
  store i32 %1004, ptr %42, align 4, !tbaa !35
  %1005 = add i32 %1004, -899497514
  %1006 = add i32 %1005, %973
  %1007 = add i32 %1006, %1000
  %1008 = add i32 %1007, %998
  %1009 = tail call i32 @llvm.fshl.i32(i32 %984, i32 %984, i32 30)
  %1010 = tail call i32 @llvm.fshl.i32(i32 %1008, i32 %1008, i32 5)
  %1011 = xor i32 %1009, %997
  %1012 = xor i32 %1011, %996
  %1013 = xor i32 %848, %824
  %1014 = xor i32 %1013, %920
  %1015 = xor i32 %1014, %980
  %1016 = tail call i32 @llvm.fshl.i32(i32 %1015, i32 %1015, i32 1)
  store i32 %1016, ptr %43, align 8, !tbaa !35
  %1017 = add i32 %1016, -899497514
  %1018 = add i32 %1017, %985
  %1019 = add i32 %1018, %1012
  %1020 = add i32 %1019, %1010
  %1021 = tail call i32 @llvm.fshl.i32(i32 %996, i32 %996, i32 30)
  %1022 = tail call i32 @llvm.fshl.i32(i32 %1020, i32 %1020, i32 5)
  %1023 = xor i32 %1021, %1009
  %1024 = xor i32 %1023, %1008
  %1025 = xor i32 %860, %836
  %1026 = xor i32 %1025, %932
  %1027 = xor i32 %1026, %992
  %1028 = tail call i32 @llvm.fshl.i32(i32 %1027, i32 %1027, i32 1)
  store i32 %1028, ptr %44, align 4, !tbaa !35
  %1029 = tail call i32 @llvm.fshl.i32(i32 %1008, i32 %1008, i32 30)
  %1030 = add i32 %1028, -899497514
  %1031 = add i32 %1030, %50
  %1032 = add i32 %1031, %997
  %1033 = add i32 %1032, %1024
  %1034 = add i32 %1033, %1022
  store i32 %1034, ptr %2, align 4, !tbaa !39
  %1035 = add i32 %1020, %49
  store i32 %1035, ptr %8, align 4, !tbaa !41
  %1036 = add i32 %1029, %48
  store i32 %1036, ptr %10, align 4, !tbaa !42
  %1037 = add i32 %1021, %47
  store i32 %1037, ptr %12, align 4, !tbaa !43
  %1038 = add i32 %1009, %46
  store i32 %1038, ptr %14, align 4, !tbaa !44
  %1039 = icmp ult ptr %58, %6
  br i1 %1039, label %45, label %1040, !llvm.loop !48

1040:                                             ; preds = %61, %26
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @sha1_stream(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #5 !prof !34 {
  %3 = alloca %struct.sha1_ctx, align 4
  %4 = alloca [4168 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4168, ptr nonnull %4) #11
  call void @sha1_init_ctx(ptr noundef nonnull %3) #10
  br label %5

5:                                                ; preds = %20, %2
  %6 = phi i64 [ 0, %2 ], [ %21, %20 ]
  %7 = getelementptr inbounds i8, ptr %4, i64 %6
  %8 = sub i64 4096, %6
  %9 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 1, i64 noundef %8, ptr noundef %0) #10
  %10 = add i64 %9, %6
  %11 = icmp eq i64 %10, 4096
  br i1 %11, label %22, label %12

12:                                               ; preds = %5
  %13 = icmp eq i64 %9, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = call i32 @ferror(ptr noundef %0) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %28

17:                                               ; preds = %12
  %18 = call i32 @feof(ptr noundef %0) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %22
  %21 = phi i64 [ %10, %17 ], [ 0, %22 ]
  br label %5

22:                                               ; preds = %5
  call void @sha1_process_block(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull %3) #10
  br label %20

23:                                               ; preds = %17, %14
  %24 = icmp eq i64 %10, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  call void @sha1_process_bytes(ptr noundef nonnull %4, i64 noundef %10, ptr noundef nonnull %3) #10
  br label %26

26:                                               ; preds = %25, %23
  %27 = call ptr @sha1_finish_ctx(ptr noundef nonnull %3, ptr noundef %1) #10
  br label %28

28:                                               ; preds = %14, %26
  %29 = phi i32 [ 0, %26 ], [ 1, %14 ]
  call void @llvm.lifetime.end.p0(i64 4168, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %3) #11
  ret i32 %29
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sha1_process_bytes(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 !prof !34 {
  %4 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !45
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = zext i32 %5 to i64
  %9 = sub nsw i64 128, %8
  %10 = tail call i64 @llvm.umin.i64(i64 %9, i64 %1)
  %11 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 7
  %12 = getelementptr inbounds i8, ptr %11, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %12, ptr align 1 %0, i64 %10, i1 false)
  %13 = load i32, ptr %4, align 4, !tbaa !45
  %14 = trunc i64 %10 to i32
  %15 = add i32 %13, %14
  store i32 %15, ptr %4, align 4, !tbaa !45
  %16 = icmp ugt i32 %15, 64
  br i1 %16, label %17, label %26

17:                                               ; preds = %7
  %18 = and i32 %15, -64
  %19 = zext i32 %18 to i64
  tail call void @sha1_process_block(ptr noundef nonnull %11, i64 noundef %19, ptr noundef nonnull %2) #10
  %20 = load i32, ptr %4, align 4, !tbaa !45
  %21 = and i32 %20, 63
  store i32 %21, ptr %4, align 4, !tbaa !45
  %22 = add i64 %10, %8
  %23 = and i64 %22, -64
  %24 = getelementptr inbounds i8, ptr %11, i64 %23
  %25 = zext nneg i32 %21 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %11, ptr nonnull align 1 %24, i64 %25, i1 false)
  br label %26

26:                                               ; preds = %17, %7
  %27 = getelementptr inbounds i8, ptr %0, i64 %10
  %28 = sub i64 %1, %10
  br label %29

29:                                               ; preds = %26, %3
  %30 = phi i64 [ %28, %26 ], [ %1, %3 ]
  %31 = phi ptr [ %27, %26 ], [ %0, %3 ]
  %32 = icmp ugt i64 %30, 63
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = ptrtoint ptr %31 to i64
  %35 = and i64 %34, 3
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = icmp eq i64 %30, 64
  br i1 %38, label %55, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 7
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi ptr [ %31, %39 ], [ %44, %41 ]
  %43 = phi i64 [ %30, %39 ], [ %45, %41 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %40, ptr noundef nonnull align 1 dereferenceable(64) %42, i64 64, i1 false)
  tail call void @sha1_process_block(ptr noundef nonnull %40, i64 noundef 64, ptr noundef nonnull %2) #10
  %44 = getelementptr inbounds i8, ptr %42, i64 64
  %45 = add i64 %43, -64
  %46 = icmp ugt i64 %45, 64
  br i1 %46, label %41, label %55, !llvm.loop !49

47:                                               ; preds = %33
  %48 = and i64 %30, -64
  tail call void @sha1_process_block(ptr noundef %31, i64 noundef %48, ptr noundef nonnull %2) #10
  %49 = getelementptr inbounds i8, ptr %31, i64 %48
  %50 = and i64 %30, 63
  br label %51

51:                                               ; preds = %47, %29
  %52 = phi i64 [ %50, %47 ], [ %30, %29 ]
  %53 = phi ptr [ %49, %47 ], [ %31, %29 ]
  %54 = icmp eq i64 %52, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %41, %37, %51
  %56 = phi ptr [ %53, %51 ], [ %31, %37 ], [ %44, %41 ]
  %57 = phi i64 [ %52, %51 ], [ 64, %37 ], [ %45, %41 ]
  %58 = load i32, ptr %4, align 4, !tbaa !45
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 7
  %61 = getelementptr inbounds i8, ptr %60, i64 %59
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %61, ptr align 1 %56, i64 %57, i1 false)
  %62 = add nuw nsw i64 %57, %59
  %63 = icmp ugt i64 %62, 63
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  tail call void @sha1_process_block(ptr noundef nonnull %60, i64 noundef 64, ptr noundef nonnull %2) #10
  %65 = add nsw i64 %62, -64
  %66 = getelementptr inbounds %struct.sha1_ctx, ptr %2, i64 0, i32 7, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %60, ptr nonnull align 4 %66, i64 %65, i1 false)
  br label %67

67:                                               ; preds = %64, %55
  %68 = phi i64 [ %65, %64 ], [ %62, %55 ]
  %69 = trunc i64 %68 to i32
  store i32 %69, ptr %4, align 4, !tbaa !45
  br label %70

70:                                               ; preds = %67, %51
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @sha1_buffer(ptr noundef %0, i64 noundef %1, ptr noundef returned %2) local_unnamed_addr #8 !prof !34 {
  %4 = alloca %struct.sha1_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %4) #11
  call void @sha1_init_ctx(ptr noundef nonnull %4) #10
  call void @sha1_process_bytes(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4) #10
  %5 = call ptr @sha1_finish_ctx(ptr noundef nonnull %4, ptr noundef %2) #10
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %4) #11
  ret ptr %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { optsize }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 0}
!40 = !{!"sha1_ctx", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !37, i64 20, !36, i64 28, !37, i64 32}
!41 = !{!40, !36, i64 4}
!42 = !{!40, !36, i64 8}
!43 = !{!40, !36, i64 12}
!44 = !{!40, !36, i64 16}
!45 = !{!40, !36, i64 28}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = distinct !{!48, !47}
!49 = distinct !{!49, !47}

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lzma_lzma_optimum_fast(ptr noundef %0, ptr noalias noundef %1, ptr noalias nocapture noundef writeonly %2, ptr noalias nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 18
  %7 = load i32, ptr %6, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %13 = call i32 @lzma_mf_find(ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %12) #6
  br label %19

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !20
  store i32 %18, ptr %5, align 4, !tbaa !21
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi i32 [ %13, %11 ], [ %16, %14 ]
  %21 = call fastcc ptr @mf_ptr(ptr noundef nonnull %1) #7
  %22 = getelementptr inbounds i8, ptr %21, i64 -1
  %23 = call fastcc i32 @mf_avail(ptr noundef nonnull %1) #7
  %24 = add i32 %23, 1
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = call i32 @llvm.umin.i32(i32 %24, i32 273)
  %28 = load i8, ptr %22, align 1, !tbaa !22
  %29 = icmp eq i32 %24, 2
  %30 = call i32 @llvm.umax.i32(i32 %27, i32 3)
  %31 = zext nneg i32 %30 to i64
  br label %33

32:                                               ; preds = %19
  store i32 -1, ptr %2, align 4, !tbaa !21
  store i32 1, ptr %3, align 4, !tbaa !21
  br label %217

33:                                               ; preds = %26, %70
  %34 = phi i64 [ 0, %26 ], [ %73, %70 ]
  %35 = phi i32 [ 0, %26 ], [ %72, %70 ]
  %36 = phi i32 [ 0, %26 ], [ %71, %70 ]
  %37 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 %34
  %38 = load i32, ptr %37, align 4, !tbaa !21
  %39 = zext i32 %38 to i64
  %40 = sub nsw i64 0, %39
  %41 = getelementptr inbounds i8, ptr %22, i64 %40
  %42 = getelementptr inbounds i8, ptr %41, i64 -1
  %43 = load i8, ptr %42, align 1, !tbaa !22
  %44 = icmp eq i8 %28, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %33
  %46 = load i8, ptr %21, align 1, !tbaa !22
  %47 = load i8, ptr %41, align 1, !tbaa !22
  %48 = icmp eq i8 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %45
  br i1 %29, label %62, label %50

50:                                               ; preds = %49, %57
  %51 = phi i64 [ %58, %57 ], [ 2, %49 ]
  %52 = getelementptr inbounds i8, ptr %22, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !22
  %54 = getelementptr inbounds i8, ptr %42, i64 %51
  %55 = load i8, ptr %54, align 1, !tbaa !22
  %56 = icmp eq i8 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = add nuw nsw i64 %51, 1
  %59 = icmp eq i64 %58, %31
  br i1 %59, label %62, label %50, !llvm.loop !23

60:                                               ; preds = %50
  %61 = trunc i64 %51 to i32
  br label %62

62:                                               ; preds = %57, %60, %49
  %63 = phi i32 [ 2, %49 ], [ %61, %60 ], [ %30, %57 ]
  %64 = icmp ult i32 %63, %7
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = icmp ugt i32 %63, %35
  %67 = trunc i64 %34 to i32
  %68 = select i1 %66, i32 %67, i32 %36
  %69 = call i32 @llvm.umax.i32(i32 %63, i32 %35)
  br label %70

70:                                               ; preds = %45, %33, %65
  %71 = phi i32 [ %68, %65 ], [ %36, %33 ], [ %36, %45 ]
  %72 = phi i32 [ %69, %65 ], [ %35, %33 ], [ %35, %45 ]
  %73 = add nuw nsw i64 %34, 1
  %74 = icmp eq i64 %73, 4
  br i1 %74, label %78, label %33, !llvm.loop !25

75:                                               ; preds = %62
  %76 = trunc i64 %34 to i32
  store i32 %76, ptr %2, align 4, !tbaa !21
  store i32 %63, ptr %3, align 4, !tbaa !21
  %77 = add i32 %63, -1
  call fastcc void @mf_skip(ptr noundef %1, i32 noundef %77) #7
  br label %217

78:                                               ; preds = %70
  %79 = icmp ult i32 %20, %7
  br i1 %79, label %88, label %80

80:                                               ; preds = %78
  %81 = load i32, ptr %5, align 4, !tbaa !21
  %82 = add i32 %81, -1
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %83, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !26
  %86 = add i32 %85, 4
  store i32 %86, ptr %2, align 4, !tbaa !21
  store i32 %20, ptr %3, align 4, !tbaa !21
  %87 = add i32 %20, -1
  call fastcc void @mf_skip(ptr noundef %1, i32 noundef %87) #7
  br label %217

88:                                               ; preds = %78
  %89 = icmp ugt i32 %20, 1
  br i1 %89, label %90, label %124

90:                                               ; preds = %88
  %91 = load i32, ptr %5, align 4, !tbaa !21
  %92 = add i32 %91, -1
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %93, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !26
  %96 = icmp ugt i32 %91, 1
  br i1 %96, label %97, label %117

97:                                               ; preds = %90
  %98 = zext i32 %91 to i64
  br label %99

99:                                               ; preds = %97, %113
  %100 = phi i64 [ %98, %97 ], [ %114, %113 ]
  %101 = phi i32 [ %95, %97 ], [ %111, %113 ]
  %102 = phi i32 [ %20, %97 ], [ %105, %113 ]
  %103 = add nsw i64 %100, -2
  %104 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !28
  %106 = add i32 %105, 1
  %107 = icmp eq i32 %102, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %99
  %109 = lshr i32 %101, 7
  %110 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %103, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !26
  %112 = icmp ugt i32 %109, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = add nsw i64 %100, -1
  %115 = trunc i64 %114 to i32
  store i32 %115, ptr %5, align 4, !tbaa !21
  %116 = icmp ugt i32 %115, 1
  br i1 %116, label %99, label %117, !llvm.loop !29

117:                                              ; preds = %99, %108, %113, %90
  %118 = phi i32 [ %20, %90 ], [ %105, %113 ], [ %102, %108 ], [ %102, %99 ]
  %119 = phi i32 [ %95, %90 ], [ %111, %113 ], [ %101, %108 ], [ %101, %99 ]
  %120 = icmp eq i32 %118, 2
  %121 = icmp ugt i32 %119, 127
  %122 = select i1 %120, i1 %121, i1 false
  %123 = select i1 %122, i32 1, i32 %118
  br label %124

124:                                              ; preds = %117, %88
  %125 = phi i32 [ %119, %117 ], [ 0, %88 ]
  %126 = phi i32 [ %123, %117 ], [ %20, %88 ]
  %127 = icmp ugt i32 %72, 1
  br i1 %127, label %128, label %143

128:                                              ; preds = %124
  %129 = add i32 %72, 1
  %130 = icmp ult i32 %129, %126
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = add i32 %72, 2
  %133 = icmp uge i32 %132, %126
  %134 = icmp ugt i32 %125, 512
  %135 = select i1 %133, i1 %134, i1 false
  br i1 %135, label %141, label %136

136:                                              ; preds = %131
  %137 = add i32 %72, 3
  %138 = icmp uge i32 %137, %126
  %139 = icmp ugt i32 %125, 32768
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %141, label %143

141:                                              ; preds = %136, %131, %128
  store i32 %71, ptr %2, align 4, !tbaa !21
  store i32 %72, ptr %3, align 4, !tbaa !21
  %142 = add i32 %72, -1
  call fastcc void @mf_skip(ptr noundef %1, i32 noundef %142) #7
  br label %217

143:                                              ; preds = %136, %124
  %144 = icmp ult i32 %126, 2
  %145 = or i1 %29, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 -1, ptr %2, align 4, !tbaa !21
  store i32 1, ptr %3, align 4, !tbaa !21
  br label %217

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %149 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %150 = call i32 @lzma_mf_find(ptr noundef %1, ptr noundef nonnull %148, ptr noundef nonnull %149) #6
  %151 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  store i32 %150, ptr %151, align 8, !tbaa !13
  %152 = icmp ugt i32 %150, 1
  br i1 %152, label %153, label %179

153:                                              ; preds = %147
  %154 = load i32, ptr %148, align 4, !tbaa !20
  %155 = add i32 %154, -1
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %156, i32 1
  %158 = load i32, ptr %157, align 4, !tbaa !26
  %159 = icmp uge i32 %150, %126
  %160 = icmp ult i32 %158, %125
  %161 = select i1 %159, i1 %160, i1 false
  br i1 %161, label %178, label %162

162:                                              ; preds = %153
  %163 = add i32 %126, 1
  %164 = icmp eq i32 %150, %163
  %165 = lshr i32 %158, 7
  %166 = icmp ule i32 %165, %125
  %167 = select i1 %164, i1 %166, i1 false
  %168 = icmp ugt i32 %150, %163
  %169 = or i1 %168, %167
  br i1 %169, label %178, label %170

170:                                              ; preds = %162
  %171 = add i32 %150, 1
  %172 = icmp uge i32 %171, %126
  %173 = icmp ugt i32 %126, 2
  %174 = and i1 %173, %172
  %175 = lshr i32 %125, 7
  %176 = icmp ugt i32 %175, %158
  %177 = select i1 %174, i1 %176, i1 false
  br i1 %177, label %178, label %179

178:                                              ; preds = %170, %162, %153
  store i32 -1, ptr %2, align 4, !tbaa !21
  store i32 1, ptr %3, align 4, !tbaa !21
  br label %217

179:                                              ; preds = %170, %147
  %180 = add i32 %126, -1
  %181 = load i8, ptr %21, align 1, !tbaa !22
  %182 = getelementptr inbounds i8, ptr %21, i64 1
  %183 = icmp ugt i32 %180, 2
  %184 = zext i32 %180 to i64
  br label %185

185:                                              ; preds = %179, %210
  %186 = phi i64 [ 0, %179 ], [ %211, %210 ]
  %187 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !21
  %189 = zext i32 %188 to i64
  %190 = sub nsw i64 0, %189
  %191 = getelementptr inbounds i8, ptr %21, i64 %190
  %192 = getelementptr inbounds i8, ptr %191, i64 -1
  %193 = load i8, ptr %192, align 1, !tbaa !22
  %194 = icmp eq i8 %181, %193
  br i1 %194, label %195, label %210

195:                                              ; preds = %185
  %196 = load i8, ptr %182, align 1, !tbaa !22
  %197 = load i8, ptr %191, align 1, !tbaa !22
  %198 = icmp eq i8 %196, %197
  br i1 %198, label %199, label %210

199:                                              ; preds = %195
  br i1 %183, label %203, label %213

200:                                              ; preds = %203
  %201 = add nuw nsw i64 %204, 1
  %202 = icmp eq i64 %201, %184
  br i1 %202, label %213, label %203, !llvm.loop !30

203:                                              ; preds = %199, %200
  %204 = phi i64 [ %201, %200 ], [ 2, %199 ]
  %205 = getelementptr inbounds i8, ptr %21, i64 %204
  %206 = load i8, ptr %205, align 1, !tbaa !22
  %207 = getelementptr inbounds i8, ptr %192, i64 %204
  %208 = load i8, ptr %207, align 1, !tbaa !22
  %209 = icmp eq i8 %206, %208
  br i1 %209, label %200, label %210

210:                                              ; preds = %203, %195, %185
  %211 = add nuw nsw i64 %186, 1
  %212 = icmp eq i64 %211, 4
  br i1 %212, label %214, label %185, !llvm.loop !31

213:                                              ; preds = %199, %200
  store i32 -1, ptr %2, align 4, !tbaa !21
  store i32 1, ptr %3, align 4, !tbaa !21
  br label %217

214:                                              ; preds = %210
  %215 = add i32 %125, 4
  store i32 %215, ptr %2, align 4, !tbaa !21
  store i32 %126, ptr %3, align 4, !tbaa !21
  %216 = add i32 %126, -2
  call fastcc void @mf_skip(ptr noundef %1, i32 noundef %216) #7
  br label %217

217:                                              ; preds = %75, %213, %80, %214, %178, %146, %141, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @lzma_mf_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @mf_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !32
  %3 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !33
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %2, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @mf_avail(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !33
  %6 = sub i32 %3, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mf_skip(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  tail call void %6(ptr noundef %0, i32 noundef %1) #6
  %7 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %9 = add i32 %8, %1
  store i32 %9, ptr %7, align 4, !tbaa !12
  br label %10

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !11, i64 96}
!7 = !{!"lzma_mf_s", !8, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!7, !11, i64 28}
!13 = !{!14, !11, i64 2952}
!14 = !{!"lzma_coder_s", !15, i64 0, !11, i64 736, !9, i64 740, !9, i64 756, !11, i64 2948, !11, i64 2952, !17, i64 2956, !17, i64 2957, !17, i64 2958, !11, i64 2960, !11, i64 2964, !11, i64 2968, !9, i64 2972, !9, i64 27548, !9, i64 27932, !9, i64 27956, !9, i64 27980, !9, i64 28004, !9, i64 28028, !9, i64 28412, !9, i64 28924, !9, i64 29152, !18, i64 29184, !18, i64 47688, !9, i64 66192, !9, i64 67216, !11, i64 69264, !11, i64 69268, !9, i64 69272, !11, i64 69336, !11, i64 69340, !11, i64 69344, !9, i64 69348}
!15 = !{!"", !16, i64 0, !16, i64 8, !11, i64 16, !9, i64 20, !16, i64 24, !16, i64 32, !9, i64 40, !9, i64 272}
!16 = !{!"long", !9, i64 0}
!17 = !{!"_Bool", !9, i64 0}
!18 = !{!"", !19, i64 0, !19, i64 2, !9, i64 4, !9, i64 260, !9, i64 516, !9, i64 1028, !11, i64 18436, !9, i64 18440}
!19 = !{!"short", !9, i64 0}
!20 = !{!14, !11, i64 2948}
!21 = !{!11, !11, i64 0}
!22 = !{!9, !9, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = !{!27, !11, i64 4}
!27 = !{!"", !11, i64 0, !11, i64 4}
!28 = !{!27, !11, i64 0}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = distinct !{!31, !24}
!32 = !{!7, !8, i64 0}
!33 = !{!7, !11, i64 24}
!34 = !{!7, !11, i64 36}
!35 = !{!7, !8, i64 56}

; ModuleID = 'src/tif_thunder.c'
source_filename = "src/tif_thunder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

@twobitdeltas = internal unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 0, i32 -1], align 16
@threebitdeltas = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 -3, i32 -2, i32 -1], align 16
@.str = private unnamed_addr constant [52 x i8] c"ThunderDecode: %s data at scanline %ld (%lu != %lu)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Not enough\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Too much\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @TIFFInitThunderScan(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  store ptr @ThunderDecodeRow, ptr %3, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 28
  store ptr @ThunderDecodeRow, ptr %4, align 8, !tbaa !16
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ThunderDecodeRow(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i16 zeroext %3) #1 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %238

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 38
  br label %11

11:                                               ; preds = %6, %232
  %12 = phi ptr [ %1, %6 ], [ %236, %232 ]
  %13 = phi i32 [ %2, %6 ], [ %234, %232 ]
  %14 = load i32, ptr %7, align 8, !tbaa !17
  %15 = load ptr, ptr %8, align 8, !tbaa !18
  %16 = load i32, ptr %9, align 8, !tbaa !19
  %17 = icmp sgt i32 %16, 0
  %18 = icmp sgt i32 %14, 0
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %218

20:                                               ; preds = %11, %211
  %21 = phi i32 [ %214, %211 ], [ 0, %11 ]
  %22 = phi i32 [ %213, %211 ], [ 0, %11 ]
  %23 = phi i32 [ %29, %211 ], [ %16, %11 ]
  %24 = phi ptr [ %26, %211 ], [ %15, %11 ]
  %25 = phi ptr [ %212, %211 ], [ %12, %11 ]
  %26 = getelementptr inbounds i8, ptr %24, i64 1
  %27 = load i8, ptr %24, align 1, !tbaa !20
  %28 = zext i8 %27 to i32
  %29 = add nsw i32 %23, -1
  %30 = lshr i32 %28, 6
  switch i32 %30, label %210 [
    i32 0, label %31
    i32 1, label %77
    i32 2, label %151
    i32 3, label %198
  ]

31:                                               ; preds = %20
  %32 = and i32 %21, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = load i8, ptr %25, align 1, !tbaa !20
  %36 = trunc i32 %22 to i8
  %37 = or i8 %35, %36
  store i8 %37, ptr %25, align 1, !tbaa !20
  %38 = getelementptr inbounds i8, ptr %25, i64 1
  %39 = zext i8 %37 to i32
  %40 = add nsw i32 %21, 1
  %41 = add nsw i32 %28, -1
  br label %45

42:                                               ; preds = %31
  %43 = shl nuw nsw i32 %22, 4
  %44 = or i32 %43, %22
  br label %45

45:                                               ; preds = %42, %34
  %46 = phi ptr [ %38, %34 ], [ %25, %42 ]
  %47 = phi i32 [ %39, %34 ], [ %44, %42 ]
  %48 = phi i32 [ %40, %34 ], [ %21, %42 ]
  %49 = phi i32 [ %41, %34 ], [ %28, %42 ]
  %50 = add nsw i32 %49, %48
  %51 = icmp sgt i32 %49, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %45
  %53 = trunc i32 %47 to i8
  %54 = add nuw nsw i32 %49, 1
  %55 = tail call i32 @llvm.smin.i32(i32 %49, i32 2)
  %56 = sub nsw i32 %54, %55
  %57 = lshr i32 %56, 1
  %58 = add nuw i32 %57, 1
  %59 = zext i32 %58 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %46, i8 %53, i64 %59, i1 false), !tbaa !20
  %60 = and i32 %56, -2
  %61 = getelementptr i8, ptr %46, i64 1
  %62 = zext nneg i32 %57 to i64
  %63 = getelementptr i8, ptr %61, i64 %62
  %64 = add nsw i32 %49, -2
  %65 = sub nsw i32 %64, %60
  br label %66

66:                                               ; preds = %52, %45
  %67 = phi ptr [ %46, %45 ], [ %63, %52 ]
  %68 = phi i32 [ %49, %45 ], [ %65, %52 ]
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = getelementptr inbounds i8, ptr %67, i64 -1
  %72 = load i8, ptr %71, align 1, !tbaa !20
  %73 = and i8 %72, -16
  store i8 %73, ptr %71, align 1, !tbaa !20
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi ptr [ %71, %70 ], [ %67, %66 ]
  %76 = and i32 %47, 15
  br label %211

77:                                               ; preds = %20
  %78 = lshr i32 %28, 4
  %79 = and i32 %78, 3
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %101, label %81

81:                                               ; preds = %77
  %82 = zext nneg i32 %79 to i64
  %83 = getelementptr inbounds [4 x i32], ptr @twobitdeltas, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !21
  %85 = add i32 %84, %22
  %86 = and i32 %85, 15
  %87 = add nsw i32 %21, 1
  %88 = and i32 %21, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %81
  %91 = getelementptr inbounds i8, ptr %25, i64 1
  %92 = load i8, ptr %25, align 1, !tbaa !20
  %93 = trunc i32 %86 to i8
  %94 = or i8 %92, %93
  br label %98

95:                                               ; preds = %81
  %96 = trunc i32 %85 to i8
  %97 = shl i8 %96, 4
  br label %98

98:                                               ; preds = %90, %95
  %99 = phi i8 [ %97, %95 ], [ %94, %90 ]
  %100 = phi ptr [ %25, %95 ], [ %91, %90 ]
  store i8 %99, ptr %25, align 1, !tbaa !20
  br label %101

101:                                              ; preds = %98, %77
  %102 = phi ptr [ %25, %77 ], [ %100, %98 ]
  %103 = phi i32 [ %22, %77 ], [ %86, %98 ]
  %104 = phi i32 [ %21, %77 ], [ %87, %98 ]
  %105 = lshr i32 %28, 2
  %106 = and i32 %105, 3
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %128, label %108

108:                                              ; preds = %101
  %109 = zext nneg i32 %106 to i64
  %110 = getelementptr inbounds [4 x i32], ptr @twobitdeltas, i64 0, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !21
  %112 = add i32 %111, %103
  %113 = and i32 %112, 15
  %114 = add nsw i32 %104, 1
  %115 = and i32 %104, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %108
  %118 = getelementptr inbounds i8, ptr %102, i64 1
  %119 = load i8, ptr %102, align 1, !tbaa !20
  %120 = trunc i32 %113 to i8
  %121 = or i8 %119, %120
  br label %125

122:                                              ; preds = %108
  %123 = trunc i32 %112 to i8
  %124 = shl i8 %123, 4
  br label %125

125:                                              ; preds = %117, %122
  %126 = phi i8 [ %124, %122 ], [ %121, %117 ]
  %127 = phi ptr [ %102, %122 ], [ %118, %117 ]
  store i8 %126, ptr %102, align 1, !tbaa !20
  br label %128

128:                                              ; preds = %125, %101
  %129 = phi ptr [ %102, %101 ], [ %127, %125 ]
  %130 = phi i32 [ %103, %101 ], [ %113, %125 ]
  %131 = phi i32 [ %104, %101 ], [ %114, %125 ]
  %132 = and i32 %28, 3
  %133 = icmp eq i32 %132, 2
  br i1 %133, label %211, label %134

134:                                              ; preds = %128
  %135 = zext nneg i32 %132 to i64
  %136 = getelementptr inbounds [4 x i32], ptr @twobitdeltas, i64 0, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !21
  %138 = add i32 %137, %130
  %139 = and i32 %138, 15
  %140 = add nsw i32 %131, 1
  %141 = and i32 %131, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %134
  %144 = getelementptr inbounds i8, ptr %129, i64 1
  %145 = load i8, ptr %129, align 1, !tbaa !20
  %146 = trunc i32 %139 to i8
  %147 = or i8 %145, %146
  store i8 %147, ptr %129, align 1, !tbaa !20
  br label %211

148:                                              ; preds = %134
  %149 = trunc i32 %138 to i8
  %150 = shl i8 %149, 4
  store i8 %150, ptr %129, align 1, !tbaa !20
  br label %211

151:                                              ; preds = %20
  %152 = lshr i32 %28, 3
  %153 = and i32 %152, 7
  %154 = icmp eq i32 %153, 4
  br i1 %154, label %175, label %155

155:                                              ; preds = %151
  %156 = zext nneg i32 %153 to i64
  %157 = getelementptr inbounds [8 x i32], ptr @threebitdeltas, i64 0, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !21
  %159 = add i32 %158, %22
  %160 = and i32 %159, 15
  %161 = add nsw i32 %21, 1
  %162 = and i32 %21, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %155
  %165 = getelementptr inbounds i8, ptr %25, i64 1
  %166 = load i8, ptr %25, align 1, !tbaa !20
  %167 = trunc i32 %160 to i8
  %168 = or i8 %166, %167
  br label %172

169:                                              ; preds = %155
  %170 = trunc i32 %159 to i8
  %171 = shl i8 %170, 4
  br label %172

172:                                              ; preds = %164, %169
  %173 = phi i8 [ %171, %169 ], [ %168, %164 ]
  %174 = phi ptr [ %25, %169 ], [ %165, %164 ]
  store i8 %173, ptr %25, align 1, !tbaa !20
  br label %175

175:                                              ; preds = %172, %151
  %176 = phi ptr [ %25, %151 ], [ %174, %172 ]
  %177 = phi i32 [ %22, %151 ], [ %160, %172 ]
  %178 = phi i32 [ %21, %151 ], [ %161, %172 ]
  %179 = and i32 %28, 7
  %180 = icmp eq i32 %179, 4
  br i1 %180, label %211, label %181

181:                                              ; preds = %175
  %182 = zext nneg i32 %179 to i64
  %183 = getelementptr inbounds [8 x i32], ptr @threebitdeltas, i64 0, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !21
  %185 = add i32 %184, %177
  %186 = and i32 %185, 15
  %187 = add nsw i32 %178, 1
  %188 = and i32 %178, 1
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %181
  %191 = getelementptr inbounds i8, ptr %176, i64 1
  %192 = load i8, ptr %176, align 1, !tbaa !20
  %193 = trunc i32 %186 to i8
  %194 = or i8 %192, %193
  store i8 %194, ptr %176, align 1, !tbaa !20
  br label %211

195:                                              ; preds = %181
  %196 = trunc i32 %185 to i8
  %197 = shl i8 %196, 4
  store i8 %197, ptr %176, align 1, !tbaa !20
  br label %211

198:                                              ; preds = %20
  %199 = and i32 %28, 15
  %200 = add nsw i32 %21, 1
  %201 = and i32 %21, 1
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %198
  %204 = getelementptr inbounds i8, ptr %25, i64 1
  %205 = load i8, ptr %25, align 1, !tbaa !20
  %206 = trunc i32 %199 to i8
  %207 = or i8 %205, %206
  store i8 %207, ptr %25, align 1, !tbaa !20
  br label %211

208:                                              ; preds = %198
  %209 = shl i8 %27, 4
  store i8 %209, ptr %25, align 1, !tbaa !20
  br label %211

210:                                              ; preds = %20
  unreachable

211:                                              ; preds = %208, %203, %195, %190, %175, %148, %143, %128, %74
  %212 = phi ptr [ %204, %203 ], [ %25, %208 ], [ %191, %190 ], [ %176, %195 ], [ %176, %175 ], [ %144, %143 ], [ %129, %148 ], [ %129, %128 ], [ %75, %74 ]
  %213 = phi i32 [ %199, %203 ], [ %199, %208 ], [ %186, %190 ], [ %186, %195 ], [ %177, %175 ], [ %139, %143 ], [ %139, %148 ], [ %130, %128 ], [ %76, %74 ]
  %214 = phi i32 [ %200, %203 ], [ %200, %208 ], [ %187, %190 ], [ %187, %195 ], [ %178, %175 ], [ %140, %143 ], [ %140, %148 ], [ %131, %128 ], [ %50, %74 ]
  %215 = icmp sgt i32 %23, 1
  %216 = icmp slt i32 %214, %14
  %217 = select i1 %215, i1 %216, i1 false
  br i1 %217, label %20, label %218, !llvm.loop !22

218:                                              ; preds = %211, %11
  %219 = phi ptr [ %15, %11 ], [ %26, %211 ]
  %220 = phi i32 [ %16, %11 ], [ %29, %211 ]
  %221 = phi i32 [ 0, %11 ], [ %214, %211 ]
  %222 = phi i1 [ %18, %11 ], [ %216, %211 ]
  store ptr %219, ptr %8, align 8, !tbaa !18
  store i32 %220, ptr %9, align 8, !tbaa !19
  %223 = icmp eq i32 %221, %14
  br i1 %223, label %232, label %224

224:                                              ; preds = %218
  %225 = load ptr, ptr %0, align 8, !tbaa !24
  %226 = select i1 %222, ptr @.str.1, ptr @.str.2
  %227 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %228 = load i32, ptr %227, align 8, !tbaa !25
  %229 = zext i32 %228 to i64
  %230 = sext i32 %221 to i64
  %231 = sext i32 %14 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %225, ptr noundef nonnull @.str, ptr noundef nonnull %226, i64 noundef %229, i64 noundef %230, i64 noundef %231) #5
  br label %238

232:                                              ; preds = %218
  %233 = load i32, ptr %10, align 8, !tbaa !26
  %234 = sub nsw i32 %13, %233
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i8, ptr %12, i64 %235
  %237 = icmp sgt i32 %234, 0
  br i1 %237, label %11, label %238, !llvm.loop !27

238:                                              ; preds = %232, %4, %224
  %239 = phi i32 [ 0, %224 ], [ 1, %4 ], [ 1, %232 ]
  ret i32 %239
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 616}
!6 = !{!"tiff", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !11, i64 32, !15, i64 504, !7, i64 512, !7, i64 520, !7, i64 528, !10, i64 536, !12, i64 540, !10, i64 544, !10, i64 548, !10, i64 552, !12, i64 556, !10, i64 560, !10, i64 564, !10, i64 568, !10, i64 572, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !7, i64 696, !7, i64 704, !10, i64 712, !10, i64 716, !7, i64 720, !10, i64 728, !7, i64 736, !10, i64 744, !7, i64 752, !10, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !7, i64 840, !10, i64 848, !7, i64 856, !7, i64 864, !7, i64 872}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"", !8, i64 0, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !12, i64 52, !12, i64 54, !12, i64 56, !12, i64 58, !12, i64 60, !12, i64 62, !12, i64 64, !12, i64 66, !10, i64 68, !12, i64 72, !12, i64 74, !13, i64 80, !13, i64 88, !14, i64 96, !14, i64 100, !12, i64 104, !12, i64 106, !14, i64 108, !14, i64 112, !8, i64 116, !8, i64 120, !8, i64 144, !12, i64 148, !7, i64 152, !13, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !10, i64 240, !10, i64 244, !7, i64 248, !7, i64 256, !12, i64 264, !7, i64 272, !7, i64 280, !8, i64 288, !12, i64 292, !7, i64 296, !7, i64 304, !7, i64 312, !8, i64 320, !12, i64 344, !12, i64 346, !8, i64 348, !10, i64 352, !7, i64 360, !7, i64 368, !10, i64 376, !7, i64 384, !10, i64 392, !7, i64 400, !10, i64 408, !7, i64 416, !10, i64 424, !10, i64 428, !7, i64 432, !7, i64 440, !14, i64 448, !7, i64 456, !7, i64 464}
!12 = !{!"short", !8, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!"float", !8, i64 0}
!15 = !{!"", !12, i64 0, !12, i64 2, !10, i64 4}
!16 = !{!6, !7, i64 632}
!17 = !{!6, !10, i64 56}
!18 = !{!6, !7, i64 736}
!19 = !{!6, !10, i64 744}
!20 = !{!8, !8, i64 0}
!21 = !{!10, !10, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!6, !7, i64 0}
!25 = !{!6, !10, i64 536}
!26 = !{!6, !10, i64 712}
!27 = distinct !{!27, !23}

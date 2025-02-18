; ModuleID = 'zlib/adler32.c'
source_filename = "zlib/adler32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @adler32(i64 noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = lshr i64 %0, 16
  %5 = and i64 %4, 65535
  %6 = and i64 %0, 65535
  %7 = icmp eq i32 %2, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = load i8, ptr %1, align 1, !tbaa !34
  %10 = zext i8 %9 to i64
  %11 = add nuw nsw i64 %6, %10
  %12 = icmp ugt i64 %11, 65520
  %13 = add nsw i64 %11, -65521
  %14 = select i1 %12, i64 %13, i64 %11
  %15 = add nuw nsw i64 %14, %5
  %16 = icmp ugt i64 %15, 65520
  %17 = shl nsw i64 %15, 16
  %18 = add nsw i64 %17, -4293984256
  %19 = select i1 %16, i64 %18, i64 %17
  %20 = or i64 %19, %14
  br label %271

21:                                               ; preds = %3
  %22 = icmp eq ptr %1, null
  br i1 %22, label %271, label %23

23:                                               ; preds = %21
  %24 = icmp ult i32 %2, 16
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = icmp ugt i32 %2, 5551
  br i1 %26, label %50, label %148

27:                                               ; preds = %23
  %28 = icmp eq i32 %2, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %27, %29
  %30 = phi i64 [ %39, %29 ], [ %5, %27 ]
  %31 = phi i32 [ %34, %29 ], [ %2, %27 ]
  %32 = phi ptr [ %35, %29 ], [ %1, %27 ]
  %33 = phi i64 [ %38, %29 ], [ %6, %27 ]
  %34 = add i32 %31, -1
  %35 = getelementptr inbounds i8, ptr %32, i64 1
  %36 = load i8, ptr %32, align 1, !tbaa !34
  %37 = zext i8 %36 to i64
  %38 = add i64 %33, %37
  %39 = add i64 %38, %30
  %40 = icmp eq i32 %34, 0
  br i1 %40, label %41, label %29, !llvm.loop !37

41:                                               ; preds = %29, %27
  %42 = phi i64 [ %6, %27 ], [ %38, %29 ]
  %43 = phi i64 [ %5, %27 ], [ %39, %29 ]
  %44 = icmp ugt i64 %42, 65520
  %45 = add i64 %42, -65521
  %46 = select i1 %44, i64 %45, i64 %42
  %47 = urem i64 %43, 65521
  %48 = shl nuw nsw i64 %47, 16
  %49 = or i64 %48, %46
  br label %271

50:                                               ; preds = %25, %143
  %51 = phi i64 [ %146, %143 ], [ %5, %25 ]
  %52 = phi i32 [ %55, %143 ], [ %2, %25 ]
  %53 = phi ptr [ %144, %143 ], [ %1, %25 ]
  %54 = phi i64 [ %145, %143 ], [ %6, %25 ]
  %55 = add i32 %52, -5552
  br label %56

56:                                               ; preds = %56, %50
  %57 = phi i64 [ %54, %50 ], [ %138, %56 ]
  %58 = phi ptr [ %53, %50 ], [ %140, %56 ]
  %59 = phi i64 [ %51, %50 ], [ %139, %56 ]
  %60 = phi i32 [ 347, %50 ], [ %141, %56 ]
  %61 = load i8, ptr %58, align 1, !tbaa !34
  %62 = zext i8 %61 to i64
  %63 = add i64 %57, %62
  %64 = add i64 %63, %59
  %65 = getelementptr inbounds i8, ptr %58, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !34
  %67 = zext i8 %66 to i64
  %68 = add i64 %63, %67
  %69 = add i64 %64, %68
  %70 = getelementptr inbounds i8, ptr %58, i64 2
  %71 = load i8, ptr %70, align 1, !tbaa !34
  %72 = zext i8 %71 to i64
  %73 = add i64 %68, %72
  %74 = add i64 %69, %73
  %75 = getelementptr inbounds i8, ptr %58, i64 3
  %76 = load i8, ptr %75, align 1, !tbaa !34
  %77 = zext i8 %76 to i64
  %78 = add i64 %73, %77
  %79 = add i64 %74, %78
  %80 = getelementptr inbounds i8, ptr %58, i64 4
  %81 = load i8, ptr %80, align 1, !tbaa !34
  %82 = zext i8 %81 to i64
  %83 = add i64 %78, %82
  %84 = add i64 %79, %83
  %85 = getelementptr inbounds i8, ptr %58, i64 5
  %86 = load i8, ptr %85, align 1, !tbaa !34
  %87 = zext i8 %86 to i64
  %88 = add i64 %83, %87
  %89 = add i64 %84, %88
  %90 = getelementptr inbounds i8, ptr %58, i64 6
  %91 = load i8, ptr %90, align 1, !tbaa !34
  %92 = zext i8 %91 to i64
  %93 = add i64 %88, %92
  %94 = add i64 %89, %93
  %95 = getelementptr inbounds i8, ptr %58, i64 7
  %96 = load i8, ptr %95, align 1, !tbaa !34
  %97 = zext i8 %96 to i64
  %98 = add i64 %93, %97
  %99 = add i64 %94, %98
  %100 = getelementptr inbounds i8, ptr %58, i64 8
  %101 = load i8, ptr %100, align 1, !tbaa !34
  %102 = zext i8 %101 to i64
  %103 = add i64 %98, %102
  %104 = add i64 %99, %103
  %105 = getelementptr inbounds i8, ptr %58, i64 9
  %106 = load i8, ptr %105, align 1, !tbaa !34
  %107 = zext i8 %106 to i64
  %108 = add i64 %103, %107
  %109 = add i64 %104, %108
  %110 = getelementptr inbounds i8, ptr %58, i64 10
  %111 = load i8, ptr %110, align 1, !tbaa !34
  %112 = zext i8 %111 to i64
  %113 = add i64 %108, %112
  %114 = add i64 %109, %113
  %115 = getelementptr inbounds i8, ptr %58, i64 11
  %116 = load i8, ptr %115, align 1, !tbaa !34
  %117 = zext i8 %116 to i64
  %118 = add i64 %113, %117
  %119 = add i64 %114, %118
  %120 = getelementptr inbounds i8, ptr %58, i64 12
  %121 = load i8, ptr %120, align 1, !tbaa !34
  %122 = zext i8 %121 to i64
  %123 = add i64 %118, %122
  %124 = add i64 %119, %123
  %125 = getelementptr inbounds i8, ptr %58, i64 13
  %126 = load i8, ptr %125, align 1, !tbaa !34
  %127 = zext i8 %126 to i64
  %128 = add i64 %123, %127
  %129 = add i64 %124, %128
  %130 = getelementptr inbounds i8, ptr %58, i64 14
  %131 = load i8, ptr %130, align 1, !tbaa !34
  %132 = zext i8 %131 to i64
  %133 = add i64 %128, %132
  %134 = add i64 %129, %133
  %135 = getelementptr inbounds i8, ptr %58, i64 15
  %136 = load i8, ptr %135, align 1, !tbaa !34
  %137 = zext i8 %136 to i64
  %138 = add i64 %133, %137
  %139 = add i64 %134, %138
  %140 = getelementptr inbounds i8, ptr %58, i64 16
  %141 = add nsw i32 %60, -1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %56, !llvm.loop !40

143:                                              ; preds = %56
  %144 = getelementptr i8, ptr %53, i64 5552
  %145 = urem i64 %138, 65521
  %146 = urem i64 %139, 65521
  %147 = icmp ugt i32 %55, 5551
  br i1 %147, label %50, label %148, !llvm.loop !41

148:                                              ; preds = %143, %25
  %149 = phi i64 [ %6, %25 ], [ %145, %143 ]
  %150 = phi ptr [ %1, %25 ], [ %144, %143 ]
  %151 = phi i32 [ %2, %25 ], [ %55, %143 ]
  %152 = phi i64 [ %5, %25 ], [ %146, %143 ]
  %153 = icmp eq i32 %151, 0
  br i1 %153, label %266, label %154

154:                                              ; preds = %148
  %155 = icmp ugt i32 %151, 15
  br i1 %155, label %162, label %156

156:                                              ; preds = %162, %154
  %157 = phi i64 [ %149, %154 ], [ %245, %162 ]
  %158 = phi ptr [ %150, %154 ], [ %247, %162 ]
  %159 = phi i32 [ %151, %154 ], [ %167, %162 ]
  %160 = phi i64 [ %152, %154 ], [ %246, %162 ]
  %161 = icmp eq i32 %159, 0
  br i1 %161, label %261, label %249

162:                                              ; preds = %154, %162
  %163 = phi i64 [ %246, %162 ], [ %152, %154 ]
  %164 = phi i32 [ %167, %162 ], [ %151, %154 ]
  %165 = phi ptr [ %247, %162 ], [ %150, %154 ]
  %166 = phi i64 [ %245, %162 ], [ %149, %154 ]
  %167 = add nsw i32 %164, -16
  %168 = load i8, ptr %165, align 1, !tbaa !34
  %169 = zext i8 %168 to i64
  %170 = add i64 %166, %169
  %171 = add i64 %170, %163
  %172 = getelementptr inbounds i8, ptr %165, i64 1
  %173 = load i8, ptr %172, align 1, !tbaa !34
  %174 = zext i8 %173 to i64
  %175 = add i64 %170, %174
  %176 = add i64 %171, %175
  %177 = getelementptr inbounds i8, ptr %165, i64 2
  %178 = load i8, ptr %177, align 1, !tbaa !34
  %179 = zext i8 %178 to i64
  %180 = add i64 %175, %179
  %181 = add i64 %176, %180
  %182 = getelementptr inbounds i8, ptr %165, i64 3
  %183 = load i8, ptr %182, align 1, !tbaa !34
  %184 = zext i8 %183 to i64
  %185 = add i64 %180, %184
  %186 = add i64 %181, %185
  %187 = getelementptr inbounds i8, ptr %165, i64 4
  %188 = load i8, ptr %187, align 1, !tbaa !34
  %189 = zext i8 %188 to i64
  %190 = add i64 %185, %189
  %191 = add i64 %186, %190
  %192 = getelementptr inbounds i8, ptr %165, i64 5
  %193 = load i8, ptr %192, align 1, !tbaa !34
  %194 = zext i8 %193 to i64
  %195 = add i64 %190, %194
  %196 = add i64 %191, %195
  %197 = getelementptr inbounds i8, ptr %165, i64 6
  %198 = load i8, ptr %197, align 1, !tbaa !34
  %199 = zext i8 %198 to i64
  %200 = add i64 %195, %199
  %201 = add i64 %196, %200
  %202 = getelementptr inbounds i8, ptr %165, i64 7
  %203 = load i8, ptr %202, align 1, !tbaa !34
  %204 = zext i8 %203 to i64
  %205 = add i64 %200, %204
  %206 = add i64 %201, %205
  %207 = getelementptr inbounds i8, ptr %165, i64 8
  %208 = load i8, ptr %207, align 1, !tbaa !34
  %209 = zext i8 %208 to i64
  %210 = add i64 %205, %209
  %211 = add i64 %206, %210
  %212 = getelementptr inbounds i8, ptr %165, i64 9
  %213 = load i8, ptr %212, align 1, !tbaa !34
  %214 = zext i8 %213 to i64
  %215 = add i64 %210, %214
  %216 = add i64 %211, %215
  %217 = getelementptr inbounds i8, ptr %165, i64 10
  %218 = load i8, ptr %217, align 1, !tbaa !34
  %219 = zext i8 %218 to i64
  %220 = add i64 %215, %219
  %221 = add i64 %216, %220
  %222 = getelementptr inbounds i8, ptr %165, i64 11
  %223 = load i8, ptr %222, align 1, !tbaa !34
  %224 = zext i8 %223 to i64
  %225 = add i64 %220, %224
  %226 = add i64 %221, %225
  %227 = getelementptr inbounds i8, ptr %165, i64 12
  %228 = load i8, ptr %227, align 1, !tbaa !34
  %229 = zext i8 %228 to i64
  %230 = add i64 %225, %229
  %231 = add i64 %226, %230
  %232 = getelementptr inbounds i8, ptr %165, i64 13
  %233 = load i8, ptr %232, align 1, !tbaa !34
  %234 = zext i8 %233 to i64
  %235 = add i64 %230, %234
  %236 = add i64 %231, %235
  %237 = getelementptr inbounds i8, ptr %165, i64 14
  %238 = load i8, ptr %237, align 1, !tbaa !34
  %239 = zext i8 %238 to i64
  %240 = add i64 %235, %239
  %241 = add i64 %236, %240
  %242 = getelementptr inbounds i8, ptr %165, i64 15
  %243 = load i8, ptr %242, align 1, !tbaa !34
  %244 = zext i8 %243 to i64
  %245 = add i64 %240, %244
  %246 = add i64 %241, %245
  %247 = getelementptr inbounds i8, ptr %165, i64 16
  %248 = icmp ugt i32 %167, 15
  br i1 %248, label %162, label %156, !llvm.loop !42

249:                                              ; preds = %156, %249
  %250 = phi i64 [ %259, %249 ], [ %160, %156 ]
  %251 = phi i32 [ %254, %249 ], [ %159, %156 ]
  %252 = phi ptr [ %255, %249 ], [ %158, %156 ]
  %253 = phi i64 [ %258, %249 ], [ %157, %156 ]
  %254 = add i32 %251, -1
  %255 = getelementptr inbounds i8, ptr %252, i64 1
  %256 = load i8, ptr %252, align 1, !tbaa !34
  %257 = zext i8 %256 to i64
  %258 = add i64 %253, %257
  %259 = add i64 %258, %250
  %260 = icmp eq i32 %254, 0
  br i1 %260, label %261, label %249, !llvm.loop !43

261:                                              ; preds = %249, %156
  %262 = phi i64 [ %157, %156 ], [ %258, %249 ]
  %263 = phi i64 [ %160, %156 ], [ %259, %249 ]
  %264 = urem i64 %262, 65521
  %265 = urem i64 %263, 65521
  br label %266

266:                                              ; preds = %261, %148
  %267 = phi i64 [ %264, %261 ], [ %149, %148 ]
  %268 = phi i64 [ %265, %261 ], [ %152, %148 ]
  %269 = shl nuw nsw i64 %268, 16
  %270 = or i64 %269, %267
  br label %271

271:                                              ; preds = %21, %266, %41, %8
  %272 = phi i64 [ %20, %8 ], [ %49, %41 ], [ %270, %266 ], [ 1, %21 ]
  ret i64 %272
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @adler32_combine(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp slt i64 %2, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %3
  %6 = urem i64 %2, 65521
  %7 = and i64 %0, 65535
  %8 = mul nuw nsw i64 %6, %7
  %9 = urem i64 %8, 65521
  %10 = and i64 %1, 65535
  %11 = add nuw nsw i64 %7, 65520
  %12 = add nuw nsw i64 %11, %10
  %13 = lshr i64 %0, 16
  %14 = and i64 %13, 65535
  %15 = lshr i64 %1, 16
  %16 = and i64 %15, 65535
  %17 = add nuw nsw i64 %14, 65521
  %18 = add nuw nsw i64 %17, %16
  %19 = sub nuw nsw i64 %18, %6
  %20 = add nuw nsw i64 %19, %9
  %21 = icmp ugt i64 %12, 65520
  %22 = add nsw i64 %12, -65521
  %23 = select i1 %21, i64 %22, i64 65520
  %24 = icmp ugt i64 %23, 65520
  %25 = add nsw i64 %23, -65521
  %26 = select i1 %24, i64 %25, i64 %23
  %27 = icmp ugt i64 %20, 131041
  %28 = add nsw i64 %20, -131042
  %29 = select i1 %27, i64 %28, i64 %20
  %30 = icmp ugt i64 %29, 65520
  %31 = shl nsw i64 %29, 16
  %32 = add i64 %31, -4293984256
  %33 = select i1 %30, i64 %32, i64 %31
  %34 = or i64 %33, %26
  br label %35

35:                                               ; preds = %3, %5
  %36 = phi i64 [ %34, %5 ], [ 4294967295, %3 ]
  ret i64 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @adler32_combine64(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp slt i64 %2, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %3
  %6 = urem i64 %2, 65521
  %7 = and i64 %0, 65535
  %8 = mul nuw nsw i64 %6, %7
  %9 = urem i64 %8, 65521
  %10 = and i64 %1, 65535
  %11 = add nuw nsw i64 %7, 65520
  %12 = add nuw nsw i64 %11, %10
  %13 = lshr i64 %0, 16
  %14 = and i64 %13, 65535
  %15 = lshr i64 %1, 16
  %16 = and i64 %15, 65535
  %17 = add nuw nsw i64 %14, 65521
  %18 = add nuw nsw i64 %17, %16
  %19 = sub nuw nsw i64 %18, %6
  %20 = add nuw nsw i64 %19, %9
  %21 = icmp ugt i64 %12, 65520
  %22 = add nsw i64 %12, -65521
  %23 = select i1 %21, i64 %22, i64 65520
  %24 = icmp ugt i64 %23, 65520
  %25 = add nsw i64 %23, -65521
  %26 = select i1 %24, i64 %25, i64 %23
  %27 = icmp ugt i64 %20, 131041
  %28 = add nsw i64 %20, -131042
  %29 = select i1 %27, i64 %28, i64 %20
  %30 = icmp ugt i64 %29, 65520
  %31 = shl nsw i64 %29, 16
  %32 = add i64 %31, -4293984256
  %33 = select i1 %30, i64 %32, i64 %31
  %34 = or i64 %33, %26
  br label %35

35:                                               ; preds = %3, %5
  %36 = phi i64 [ %34, %5 ], [ 4294967295, %3 ]
  ret i64 %36
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !38, !39}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = distinct !{!40, !38, !39}
!41 = distinct !{!41, !38, !39}
!42 = distinct !{!42, !38, !39}
!43 = distinct !{!43, !38, !39}

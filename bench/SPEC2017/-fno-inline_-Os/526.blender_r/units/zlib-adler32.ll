; ModuleID = 'zlib/adler32.c'
source_filename = "zlib/adler32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
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
  br label %273

21:                                               ; preds = %3
  %22 = icmp eq ptr %1, null
  br i1 %22, label %273, label %23

23:                                               ; preds = %21
  %24 = icmp ult i32 %2, 16
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = icmp ugt i32 %2, 5551
  br i1 %26, label %50, label %152

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
  br label %273

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
  br i1 %142, label %143, label %56, !llvm.loop !39

143:                                              ; preds = %56
  %144 = getelementptr i8, ptr %53, i64 5552
  %145 = urem i64 %138, 65521
  %146 = urem i64 %139, 65521
  %147 = icmp ugt i32 %55, 5551
  br i1 %147, label %50, label %148, !llvm.loop !40

148:                                              ; preds = %143
  %149 = icmp eq i32 %55, 0
  br i1 %149, label %268, label %150

150:                                              ; preds = %148
  %151 = icmp ugt i32 %55, 15
  br i1 %151, label %152, label %159

152:                                              ; preds = %25, %150
  %153 = phi i64 [ %5, %25 ], [ %146, %150 ]
  %154 = phi i32 [ %2, %25 ], [ %55, %150 ]
  %155 = phi ptr [ %1, %25 ], [ %144, %150 ]
  %156 = phi i64 [ %6, %25 ], [ %145, %150 ]
  br label %164

157:                                              ; preds = %164
  %158 = icmp eq i32 %169, 0
  br i1 %158, label %263, label %159

159:                                              ; preds = %150, %157
  %160 = phi i64 [ %146, %150 ], [ %248, %157 ]
  %161 = phi i32 [ %55, %150 ], [ %169, %157 ]
  %162 = phi ptr [ %144, %150 ], [ %249, %157 ]
  %163 = phi i64 [ %145, %150 ], [ %247, %157 ]
  br label %251

164:                                              ; preds = %152, %164
  %165 = phi i64 [ %248, %164 ], [ %153, %152 ]
  %166 = phi i32 [ %169, %164 ], [ %154, %152 ]
  %167 = phi ptr [ %249, %164 ], [ %155, %152 ]
  %168 = phi i64 [ %247, %164 ], [ %156, %152 ]
  %169 = add nsw i32 %166, -16
  %170 = load i8, ptr %167, align 1, !tbaa !34
  %171 = zext i8 %170 to i64
  %172 = add i64 %168, %171
  %173 = add i64 %172, %165
  %174 = getelementptr inbounds i8, ptr %167, i64 1
  %175 = load i8, ptr %174, align 1, !tbaa !34
  %176 = zext i8 %175 to i64
  %177 = add i64 %172, %176
  %178 = add i64 %173, %177
  %179 = getelementptr inbounds i8, ptr %167, i64 2
  %180 = load i8, ptr %179, align 1, !tbaa !34
  %181 = zext i8 %180 to i64
  %182 = add i64 %177, %181
  %183 = add i64 %178, %182
  %184 = getelementptr inbounds i8, ptr %167, i64 3
  %185 = load i8, ptr %184, align 1, !tbaa !34
  %186 = zext i8 %185 to i64
  %187 = add i64 %182, %186
  %188 = add i64 %183, %187
  %189 = getelementptr inbounds i8, ptr %167, i64 4
  %190 = load i8, ptr %189, align 1, !tbaa !34
  %191 = zext i8 %190 to i64
  %192 = add i64 %187, %191
  %193 = add i64 %188, %192
  %194 = getelementptr inbounds i8, ptr %167, i64 5
  %195 = load i8, ptr %194, align 1, !tbaa !34
  %196 = zext i8 %195 to i64
  %197 = add i64 %192, %196
  %198 = add i64 %193, %197
  %199 = getelementptr inbounds i8, ptr %167, i64 6
  %200 = load i8, ptr %199, align 1, !tbaa !34
  %201 = zext i8 %200 to i64
  %202 = add i64 %197, %201
  %203 = add i64 %198, %202
  %204 = getelementptr inbounds i8, ptr %167, i64 7
  %205 = load i8, ptr %204, align 1, !tbaa !34
  %206 = zext i8 %205 to i64
  %207 = add i64 %202, %206
  %208 = add i64 %203, %207
  %209 = getelementptr inbounds i8, ptr %167, i64 8
  %210 = load i8, ptr %209, align 1, !tbaa !34
  %211 = zext i8 %210 to i64
  %212 = add i64 %207, %211
  %213 = add i64 %208, %212
  %214 = getelementptr inbounds i8, ptr %167, i64 9
  %215 = load i8, ptr %214, align 1, !tbaa !34
  %216 = zext i8 %215 to i64
  %217 = add i64 %212, %216
  %218 = add i64 %213, %217
  %219 = getelementptr inbounds i8, ptr %167, i64 10
  %220 = load i8, ptr %219, align 1, !tbaa !34
  %221 = zext i8 %220 to i64
  %222 = add i64 %217, %221
  %223 = add i64 %218, %222
  %224 = getelementptr inbounds i8, ptr %167, i64 11
  %225 = load i8, ptr %224, align 1, !tbaa !34
  %226 = zext i8 %225 to i64
  %227 = add i64 %222, %226
  %228 = add i64 %223, %227
  %229 = getelementptr inbounds i8, ptr %167, i64 12
  %230 = load i8, ptr %229, align 1, !tbaa !34
  %231 = zext i8 %230 to i64
  %232 = add i64 %227, %231
  %233 = add i64 %228, %232
  %234 = getelementptr inbounds i8, ptr %167, i64 13
  %235 = load i8, ptr %234, align 1, !tbaa !34
  %236 = zext i8 %235 to i64
  %237 = add i64 %232, %236
  %238 = add i64 %233, %237
  %239 = getelementptr inbounds i8, ptr %167, i64 14
  %240 = load i8, ptr %239, align 1, !tbaa !34
  %241 = zext i8 %240 to i64
  %242 = add i64 %237, %241
  %243 = add i64 %238, %242
  %244 = getelementptr inbounds i8, ptr %167, i64 15
  %245 = load i8, ptr %244, align 1, !tbaa !34
  %246 = zext i8 %245 to i64
  %247 = add i64 %242, %246
  %248 = add i64 %243, %247
  %249 = getelementptr inbounds i8, ptr %167, i64 16
  %250 = icmp ugt i32 %169, 15
  br i1 %250, label %164, label %157, !llvm.loop !41

251:                                              ; preds = %159, %251
  %252 = phi i64 [ %261, %251 ], [ %160, %159 ]
  %253 = phi i32 [ %256, %251 ], [ %161, %159 ]
  %254 = phi ptr [ %257, %251 ], [ %162, %159 ]
  %255 = phi i64 [ %260, %251 ], [ %163, %159 ]
  %256 = add i32 %253, -1
  %257 = getelementptr inbounds i8, ptr %254, i64 1
  %258 = load i8, ptr %254, align 1, !tbaa !34
  %259 = zext i8 %258 to i64
  %260 = add i64 %255, %259
  %261 = add i64 %260, %252
  %262 = icmp eq i32 %256, 0
  br i1 %262, label %263, label %251, !llvm.loop !42

263:                                              ; preds = %251, %157
  %264 = phi i64 [ %247, %157 ], [ %260, %251 ]
  %265 = phi i64 [ %248, %157 ], [ %261, %251 ]
  %266 = urem i64 %264, 65521
  %267 = urem i64 %265, 65521
  br label %268

268:                                              ; preds = %263, %148
  %269 = phi i64 [ %266, %263 ], [ %145, %148 ]
  %270 = phi i64 [ %267, %263 ], [ %146, %148 ]
  %271 = shl nuw nsw i64 %270, 16
  %272 = or disjoint i64 %271, %269
  br label %273

273:                                              ; preds = %21, %268, %41, %8
  %274 = phi i64 [ %20, %8 ], [ %49, %41 ], [ %272, %268 ], [ 1, %21 ]
  ret i64 %274
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i64 @adler32_combine(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = tail call fastcc i64 @adler32_combine_(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2, !range !43
  ret i64 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @adler32_combine_(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 !PGOFuncName !44 {
  %4 = icmp slt i64 %2, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = urem i64 %2, 65521
  %7 = and i64 %0, 65535
  %8 = mul nuw nsw i64 %6, %7
  %9 = trunc i64 %8 to i32
  %10 = urem i32 %9, 65521
  %11 = zext nneg i32 %10 to i64
  %12 = and i64 %1, 65535
  %13 = add nuw nsw i64 %7, 65520
  %14 = add nuw nsw i64 %13, %12
  %15 = lshr i64 %0, 16
  %16 = and i64 %15, 65535
  %17 = lshr i64 %1, 16
  %18 = and i64 %17, 65535
  %19 = add nuw nsw i64 %16, 65521
  %20 = add nuw nsw i64 %19, %18
  %21 = sub nuw nsw i64 %20, %6
  %22 = add nuw nsw i64 %21, %11
  %23 = icmp ugt i64 %14, 65520
  %24 = add nsw i64 %14, -65521
  %25 = select i1 %23, i64 %24, i64 65520
  %26 = icmp ugt i64 %25, 65520
  %27 = add nsw i64 %25, -65521
  %28 = select i1 %26, i64 %27, i64 %25
  %29 = icmp ugt i64 %22, 131041
  %30 = add nsw i64 %22, -131042
  %31 = select i1 %29, i64 %30, i64 %22
  %32 = icmp ugt i64 %31, 65520
  %33 = shl nsw i64 %31, 16
  %34 = add i64 %33, -4293984256
  %35 = select i1 %32, i64 %34, i64 %33
  %36 = or i64 %35, %28
  br label %37

37:                                               ; preds = %3, %5
  %38 = phi i64 [ %36, %5 ], [ 4294967295, %3 ]
  ret i64 %38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i64 @adler32_combine64(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = tail call fastcc i64 @adler32_combine_(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2, !range !43
  ret i64 %4
}

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !38}
!42 = distinct !{!42, !38}
!43 = !{i64 0, i64 8589934592}
!44 = !{!"adler32.c:adler32_combine_"}

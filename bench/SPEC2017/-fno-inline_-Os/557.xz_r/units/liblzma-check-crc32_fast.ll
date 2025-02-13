; ModuleID = 'liblzma/check/crc32_fast.c'
source_filename = "liblzma/check/crc32_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@lzma_crc32_table = external local_unnamed_addr constant [8 x [256 x i32]], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_crc32(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = xor i32 %2, -1
  %5 = icmp ugt i64 %1, 8
  br i1 %5, label %6, label %187, !prof !35

6:                                                ; preds = %3
  %7 = ptrtoint ptr %0 to i64
  %8 = and i64 %7, 7
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %127, label %10, !prof !36

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %0, i64 1
  %12 = load i8, ptr %0, align 1, !tbaa !37
  %13 = zext i8 %12 to i32
  %14 = and i32 %4, 255
  %15 = xor i32 %14, %13
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !40
  %19 = lshr i32 %4, 8
  %20 = xor i32 %18, %19
  %21 = add i64 %1, -1
  %22 = ptrtoint ptr %11 to i64
  %23 = and i64 %22, 7
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %127, label %25, !prof !42, !llvm.loop !43

25:                                               ; preds = %10
  %26 = getelementptr inbounds i8, ptr %0, i64 2
  %27 = load i8, ptr %11, align 1, !tbaa !37
  %28 = zext i8 %27 to i32
  %29 = and i32 %20, 255
  %30 = xor i32 %29, %28
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !40
  %34 = lshr i32 %20, 8
  %35 = xor i32 %33, %34
  %36 = add i64 %1, -2
  %37 = ptrtoint ptr %26 to i64
  %38 = and i64 %37, 7
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %127, label %40, !prof !42, !llvm.loop !43

40:                                               ; preds = %25
  %41 = getelementptr inbounds i8, ptr %0, i64 3
  %42 = load i8, ptr %26, align 1, !tbaa !37
  %43 = zext i8 %42 to i32
  %44 = and i32 %35, 255
  %45 = xor i32 %44, %43
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !40
  %49 = lshr i32 %35, 8
  %50 = xor i32 %48, %49
  %51 = add i64 %1, -3
  %52 = ptrtoint ptr %41 to i64
  %53 = and i64 %52, 7
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %127, label %55, !prof !42, !llvm.loop !43

55:                                               ; preds = %40
  %56 = getelementptr inbounds i8, ptr %0, i64 4
  %57 = load i8, ptr %41, align 1, !tbaa !37
  %58 = zext i8 %57 to i32
  %59 = and i32 %50, 255
  %60 = xor i32 %59, %58
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !40
  %64 = lshr i32 %50, 8
  %65 = xor i32 %63, %64
  %66 = add i64 %1, -4
  %67 = ptrtoint ptr %56 to i64
  %68 = and i64 %67, 7
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %127, label %70, !prof !42, !llvm.loop !43

70:                                               ; preds = %55
  %71 = getelementptr inbounds i8, ptr %0, i64 5
  %72 = load i8, ptr %56, align 1, !tbaa !37
  %73 = zext i8 %72 to i32
  %74 = and i32 %65, 255
  %75 = xor i32 %74, %73
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !40
  %79 = lshr i32 %65, 8
  %80 = xor i32 %78, %79
  %81 = add i64 %1, -5
  %82 = ptrtoint ptr %71 to i64
  %83 = and i64 %82, 7
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %127, label %85, !prof !42, !llvm.loop !43

85:                                               ; preds = %70
  %86 = getelementptr inbounds i8, ptr %0, i64 6
  %87 = load i8, ptr %71, align 1, !tbaa !37
  %88 = zext i8 %87 to i32
  %89 = and i32 %80, 255
  %90 = xor i32 %89, %88
  %91 = zext nneg i32 %90 to i64
  %92 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !40
  %94 = lshr i32 %80, 8
  %95 = xor i32 %93, %94
  %96 = add i64 %1, -6
  %97 = ptrtoint ptr %86 to i64
  %98 = and i64 %97, 7
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %127, label %100, !prof !42, !llvm.loop !43

100:                                              ; preds = %85
  %101 = getelementptr inbounds i8, ptr %0, i64 7
  %102 = load i8, ptr %86, align 1, !tbaa !37
  %103 = zext i8 %102 to i32
  %104 = and i32 %95, 255
  %105 = xor i32 %104, %103
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !40
  %109 = lshr i32 %95, 8
  %110 = xor i32 %108, %109
  %111 = add i64 %1, -7
  %112 = ptrtoint ptr %101 to i64
  %113 = and i64 %112, 7
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %127, label %115, !prof !42, !llvm.loop !43

115:                                              ; preds = %100
  %116 = getelementptr inbounds i8, ptr %0, i64 8
  %117 = load i8, ptr %101, align 1, !tbaa !37
  %118 = zext i8 %117 to i32
  %119 = and i32 %110, 255
  %120 = xor i32 %119, %118
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !40
  %124 = lshr i32 %110, 8
  %125 = xor i32 %123, %124
  %126 = add i64 %1, -8
  br label %127

127:                                              ; preds = %10, %25, %40, %55, %70, %85, %100, %115, %6
  %128 = phi i32 [ %4, %6 ], [ %20, %10 ], [ %35, %25 ], [ %50, %40 ], [ %65, %55 ], [ %80, %70 ], [ %95, %85 ], [ %110, %100 ], [ %125, %115 ]
  %129 = phi i64 [ %1, %6 ], [ %21, %10 ], [ %36, %25 ], [ %51, %40 ], [ %66, %55 ], [ %81, %70 ], [ %96, %85 ], [ %111, %100 ], [ %126, %115 ]
  %130 = phi ptr [ %0, %6 ], [ %11, %10 ], [ %26, %25 ], [ %41, %40 ], [ %56, %55 ], [ %71, %70 ], [ %86, %85 ], [ %101, %100 ], [ %116, %115 ]
  %131 = and i64 %129, -8
  %132 = getelementptr inbounds i8, ptr %130, i64 %131
  %133 = and i64 %129, 7
  %134 = icmp sgt i64 %131, 0
  br i1 %134, label %135, label %187, !prof !45

135:                                              ; preds = %127, %135
  %136 = phi ptr [ %160, %135 ], [ %130, %127 ]
  %137 = phi i32 [ %185, %135 ], [ %128, %127 ]
  %138 = load i32, ptr %136, align 4, !tbaa !40
  %139 = xor i32 %138, %137
  %140 = getelementptr inbounds i8, ptr %136, i64 4
  %141 = and i32 %139, 255
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 7, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !40
  %145 = lshr i32 %139, 8
  %146 = and i32 %145, 255
  %147 = zext nneg i32 %146 to i64
  %148 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 6, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !40
  %150 = lshr i32 %139, 16
  %151 = and i32 %150, 255
  %152 = zext nneg i32 %151 to i64
  %153 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 5, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !40
  %155 = lshr i32 %139, 24
  %156 = zext nneg i32 %155 to i64
  %157 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 4, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !40
  %159 = load i32, ptr %140, align 4, !tbaa !40
  %160 = getelementptr inbounds i8, ptr %136, i64 8
  %161 = and i32 %159, 255
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 3, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !40
  %165 = lshr i32 %159, 8
  %166 = and i32 %165, 255
  %167 = zext nneg i32 %166 to i64
  %168 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 2, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !40
  %170 = lshr i32 %159, 16
  %171 = and i32 %170, 255
  %172 = zext nneg i32 %171 to i64
  %173 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 1, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !40
  %175 = lshr i32 %159, 24
  %176 = zext nneg i32 %175 to i64
  %177 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !40
  %179 = xor i32 %149, %144
  %180 = xor i32 %179, %154
  %181 = xor i32 %180, %158
  %182 = xor i32 %181, %164
  %183 = xor i32 %182, %169
  %184 = xor i32 %183, %174
  %185 = xor i32 %184, %178
  %186 = icmp ult ptr %160, %132
  br i1 %186, label %135, label %187, !prof !46, !llvm.loop !47

187:                                              ; preds = %135, %127, %3
  %188 = phi i32 [ %4, %3 ], [ %128, %127 ], [ %185, %135 ]
  %189 = phi i64 [ %1, %3 ], [ %133, %127 ], [ %133, %135 ]
  %190 = phi ptr [ %0, %3 ], [ %130, %127 ], [ %160, %135 ]
  %191 = icmp eq i64 %189, 0
  br i1 %191, label %208, label %192, !prof !48

192:                                              ; preds = %187, %192
  %193 = phi ptr [ %197, %192 ], [ %190, %187 ]
  %194 = phi i64 [ %196, %192 ], [ %189, %187 ]
  %195 = phi i32 [ %206, %192 ], [ %188, %187 ]
  %196 = add nsw i64 %194, -1
  %197 = getelementptr inbounds i8, ptr %193, i64 1
  %198 = load i8, ptr %193, align 1, !tbaa !37
  %199 = zext i8 %198 to i32
  %200 = and i32 %195, 255
  %201 = xor i32 %200, %199
  %202 = zext nneg i32 %201 to i64
  %203 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %202
  %204 = load i32, ptr %203, align 4, !tbaa !40
  %205 = lshr i32 %195, 8
  %206 = xor i32 %204, %205
  %207 = icmp eq i64 %196, 0
  br i1 %207, label %208, label %192, !prof !49, !llvm.loop !50

208:                                              ; preds = %192, %187
  %209 = phi i32 [ %188, %187 ], [ %206, %192 ]
  %210 = xor i32 %209, -1
  ret i32 %210
}

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 42596457582}
!4 = !{!"MaxCount", i64 3509320374}
!5 = !{!"MaxInternalCount", i64 1880543368}
!6 = !{!"MaxFunctionCount", i64 3509320374}
!7 = !{!"NumCounts", i64 1899}
!8 = !{!"NumFunctions", i64 428}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3509320374, i32 1}
!14 = !{i32 100000, i64 3323890816, i32 2}
!15 = !{i32 200000, i64 2354835913, i32 3}
!16 = !{i32 300000, i64 1717654358, i32 5}
!17 = !{i32 400000, i64 1697273389, i32 8}
!18 = !{i32 500000, i64 1349259993, i32 11}
!19 = !{i32 600000, i64 759326020, i32 16}
!20 = !{i32 700000, i64 575792475, i32 22}
!21 = !{i32 800000, i64 285720408, i32 36}
!22 = !{i32 900000, i64 154264530, i32 55}
!23 = !{i32 950000, i64 86561411, i32 73}
!24 = !{i32 990000, i64 20049460, i32 113}
!25 = !{i32 999000, i64 3293392, i32 158}
!26 = !{i32 999900, i64 80863, i32 231}
!27 = !{i32 999990, i64 33328, i32 274}
!28 = !{i32 999999, i64 3584, i32 298}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 12}
!35 = !{!"branch_weights", i32 4, i32 10}
!36 = !{!"branch_weights", i32 3, i32 1}
!37 = !{!38, !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"branch_weights", i32 1, i32 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"branch_weights", i32 127, i32 1}
!46 = !{!"branch_weights", i32 1, i32 127}
!47 = distinct !{!47, !44}
!48 = !{!"branch_weights", i32 1, i32 207}
!49 = !{!"branch_weights", i32 207, i32 769}
!50 = distinct !{!50, !44}

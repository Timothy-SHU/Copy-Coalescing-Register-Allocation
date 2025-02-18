; ModuleID = 'liblzma/lzma/lzma_encoder_presets.c'
source_filename = "liblzma/lzma/lzma_encoder_presets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef zeroext i8 @lzma_lzma_preset(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = alloca [10 x i8], align 1
  %4 = alloca [4 x i8], align 1
  %5 = and i32 %1, 31
  %6 = icmp ult i32 %5, 10
  %7 = and i32 %1, 2147483616
  %8 = icmp eq i32 %7, 0
  %9 = and i1 %6, %8
  br i1 %9, label %10, label %64, !prof !35

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 1
  store ptr null, ptr %11, align 8, !tbaa !36
  %12 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 2
  store i32 0, ptr %12, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 3
  store i32 3, ptr %13, align 4, !tbaa !43
  %14 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 4
  store i32 0, ptr %14, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 5
  store i32 2, ptr %15, align 4, !tbaa !45
  store i8 18, ptr %3, align 1, !tbaa !46
  %16 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 20, ptr %16, align 1, !tbaa !46
  %17 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 21, ptr %17, align 1, !tbaa !46
  %18 = getelementptr inbounds i8, ptr %3, i64 3
  store i8 22, ptr %18, align 1, !tbaa !46
  %19 = getelementptr inbounds i8, ptr %3, i64 4
  store i8 22, ptr %19, align 1, !tbaa !46
  %20 = getelementptr inbounds i8, ptr %3, i64 5
  store i8 23, ptr %20, align 1, !tbaa !46
  %21 = getelementptr inbounds i8, ptr %3, i64 6
  store i8 23, ptr %21, align 1, !tbaa !46
  %22 = getelementptr inbounds i8, ptr %3, i64 7
  store i8 24, ptr %22, align 1, !tbaa !46
  %23 = getelementptr inbounds i8, ptr %3, i64 8
  store i8 25, ptr %23, align 1, !tbaa !46
  %24 = getelementptr inbounds i8, ptr %3, i64 9
  store i8 26, ptr %24, align 1, !tbaa !46
  %25 = zext nneg i32 %5 to i64
  %26 = getelementptr inbounds [10 x i8], ptr %3, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !46
  %28 = zext nneg i8 %27 to i32
  %29 = shl nuw i32 1, %28
  store i32 %29, ptr %0, align 8, !tbaa !47
  %30 = icmp ult i32 %5, 4
  %31 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 6
  %32 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 7
  br i1 %30, label %33, label %45, !prof !48

33:                                               ; preds = %10
  store i32 1, ptr %31, align 8, !tbaa !49
  %34 = icmp eq i32 %5, 0
  %35 = select i1 %34, i32 3, i32 4
  %36 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 8
  store i32 %35, ptr %36, align 8, !tbaa !50
  %37 = icmp ult i32 %5, 2
  %38 = select i1 %37, i32 128, i32 273
  store i32 %38, ptr %32, align 4, !tbaa !51
  store i8 4, ptr %4, align 1, !tbaa !46
  %39 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 8, ptr %39, align 1, !tbaa !46
  %40 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 24, ptr %40, align 1, !tbaa !46
  %41 = getelementptr inbounds i8, ptr %4, i64 3
  store i8 48, ptr %41, align 1, !tbaa !46
  %42 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 %25
  %43 = load i8, ptr %42, align 1, !tbaa !46
  %44 = zext i8 %43 to i32
  br label %51

45:                                               ; preds = %10
  store i32 2, ptr %31, align 8, !tbaa !49
  %46 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 8
  store i32 20, ptr %46, align 8, !tbaa !50
  %47 = icmp eq i32 %5, 4
  %48 = icmp eq i32 %5, 5
  %49 = select i1 %48, i32 32, i32 64, !prof !48
  %50 = select i1 %47, i32 16, i32 %49, !prof !48
  store i32 %50, ptr %32, align 4, !tbaa !51
  br label %51

51:                                               ; preds = %45, %33
  %52 = phi i32 [ 0, %45 ], [ %44, %33 ]
  %53 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 9
  store i32 %52, ptr %53, align 4, !tbaa !52
  %54 = icmp sgt i32 %1, -1
  br i1 %54, label %64, label %55, !prof !35

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 6
  store i32 2, ptr %56, align 8, !tbaa !49
  %57 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 8
  store i32 20, ptr %57, align 8, !tbaa !50
  switch i32 %5, label %58 [
    i32 5, label %59
    i32 3, label %59
  ]

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %55, %55, %58
  %60 = phi i32 [ 273, %58 ], [ 192, %55 ], [ 192, %55 ]
  %61 = phi i32 [ 512, %58 ], [ 0, %55 ], [ 0, %55 ]
  %62 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 7
  store i32 %60, ptr %62, align 4, !tbaa !51
  %63 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 9
  store i32 %61, ptr %63, align 4, !tbaa !52
  br label %64

64:                                               ; preds = %59, %51, %2
  %65 = phi i8 [ 1, %2 ], [ 0, %51 ], [ 0, %59 ]
  ret i8 %65
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 1}
!35 = !{!"branch_weights", i32 1, i32 0}
!36 = !{!37, !41, i64 8}
!37 = !{!"", !38, i64 0, !41, i64 8, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !38, i64 48, !38, i64 52, !38, i64 56, !38, i64 60, !38, i64 64, !38, i64 68, !38, i64 72, !38, i64 76, !38, i64 80, !38, i64 84, !38, i64 88, !38, i64 92, !41, i64 96, !41, i64 104}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"any pointer", !39, i64 0}
!42 = !{!37, !38, i64 16}
!43 = !{!37, !38, i64 20}
!44 = !{!37, !38, i64 24}
!45 = !{!37, !38, i64 28}
!46 = !{!39, !39, i64 0}
!47 = !{!37, !38, i64 0}
!48 = !{!"branch_weights", i32 0, i32 1}
!49 = !{!37, !38, i64 32}
!50 = !{!37, !38, i64 40}
!51 = !{!37, !38, i64 36}
!52 = !{!37, !38, i64 44}

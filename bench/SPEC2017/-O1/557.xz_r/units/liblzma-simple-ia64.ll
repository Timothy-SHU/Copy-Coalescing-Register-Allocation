; ModuleID = 'liblzma/simple/ia64.c'
source_filename = "liblzma/simple/ia64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ia64_code.BRANCH_TABLE = internal unnamed_addr constant [32 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 6, i32 6, i32 0, i32 0, i32 7, i32 7, i32 4, i32 4, i32 0, i32 0, i32 4, i32 4, i32 0, i32 0], align 16

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_simple_ia64_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ia64_code, i64 noundef 0, i64 noundef 16, i32 noundef 16, i1 noundef zeroext true) #3
  ret i32 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_simple_ia64_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ia64_code, i64 noundef 0, i64 noundef 16, i32 noundef 16, i1 noundef zeroext false) #3
  ret i32 %4
}

declare i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @ia64_code(ptr nocapture readnone %0, i32 noundef %1, i1 noundef zeroext %2, ptr nocapture noundef %3, i64 noundef %4) #2 !prof !34 {
  %6 = icmp ult i64 %4, 16
  br i1 %6, label %90, label %10

7:                                                ; preds = %86
  %8 = add nuw i64 %11, 16
  %9 = icmp ugt i64 %8, %4
  br i1 %9, label %90, label %10, !llvm.loop !35

10:                                               ; preds = %5, %7
  %11 = phi i64 [ %8, %7 ], [ 16, %5 ]
  %12 = phi i64 [ %11, %7 ], [ 0, %5 ]
  %13 = getelementptr inbounds i8, ptr %3, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !38
  %15 = and i8 %14, 31
  %16 = zext nneg i8 %15 to i64
  %17 = getelementptr inbounds [32 x i32], ptr @ia64_code.BRANCH_TABLE, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !41
  %19 = trunc i64 %12 to i32
  %20 = add i32 %19, %1
  %21 = sub i32 0, %20
  %22 = select i1 %2, i32 %20, i32 %21
  %23 = lshr i32 %22, 4
  br label %24

24:                                               ; preds = %10, %86
  %25 = phi i64 [ 5, %10 ], [ %88, %86 ]
  %26 = phi i64 [ 0, %10 ], [ %87, %86 ]
  %27 = trunc i64 %26 to i32
  %28 = shl nuw nsw i32 1, %27
  %29 = and i32 %28, %18
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %86, label %31

31:                                               ; preds = %24
  %32 = lshr i64 %25, 3
  %33 = and i64 %32, 536870911
  %34 = getelementptr i8, ptr %3, i64 %33
  br label %40

35:                                               ; preds = %40
  %36 = and i64 %25, 7
  %37 = lshr i64 %49, %36
  %38 = and i64 %37, 2061584305664
  %39 = icmp eq i64 %38, 687194767360
  br i1 %39, label %52, label %86

40:                                               ; preds = %31, %40
  %41 = phi i64 [ 0, %31 ], [ %50, %40 ]
  %42 = phi i64 [ 0, %31 ], [ %49, %40 ]
  %43 = or disjoint i64 %41, %12
  %44 = getelementptr i8, ptr %34, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !38
  %46 = zext i8 %45 to i64
  %47 = shl nuw nsw i64 %41, 3
  %48 = shl nuw nsw i64 %46, %47
  %49 = add i64 %48, %42
  %50 = add nuw nsw i64 %41, 1
  %51 = icmp eq i64 %50, 6
  br i1 %51, label %35, label %40, !llvm.loop !43

52:                                               ; preds = %35
  %53 = lshr i64 %37, 13
  %54 = and i64 %53, 1048575
  %55 = lshr i64 %37, 16
  %56 = and i64 %55, 1048576
  %57 = or disjoint i64 %54, %56
  %58 = trunc i64 %57 to i32
  %59 = add nuw nsw i32 %23, %58
  %60 = and i64 %37, -1451698941441
  %61 = and i32 %59, 1048575
  %62 = zext nneg i32 %61 to i64
  %63 = shl nuw nsw i64 %62, 13
  %64 = or disjoint i64 %63, %60
  %65 = and i32 %59, 1048576
  %66 = zext nneg i32 %65 to i64
  %67 = shl nuw nsw i64 %66, 16
  %68 = or disjoint i64 %64, %67
  %69 = trunc i64 %36 to i32
  %70 = shl nsw i32 -1, %69
  %71 = xor i32 %70, -1
  %72 = zext nneg i32 %71 to i64
  %73 = and i64 %49, %72
  %74 = shl i64 %68, %36
  %75 = or i64 %74, %73
  %76 = getelementptr i8, ptr %3, i64 %33
  br label %77

77:                                               ; preds = %52, %77
  %78 = phi i64 [ 0, %52 ], [ %84, %77 ]
  %79 = shl nuw nsw i64 %78, 3
  %80 = lshr i64 %75, %79
  %81 = trunc i64 %80 to i8
  %82 = or disjoint i64 %78, %12
  %83 = getelementptr i8, ptr %76, i64 %82
  store i8 %81, ptr %83, align 1, !tbaa !38
  %84 = add nuw nsw i64 %78, 1
  %85 = icmp eq i64 %84, 6
  br i1 %85, label %86, label %77, !llvm.loop !44

86:                                               ; preds = %77, %35, %24
  %87 = add nuw nsw i64 %26, 1
  %88 = add nuw nsw i64 %25, 41
  %89 = icmp eq i64 %87, 3
  br i1 %89, label %7, label %24, !llvm.loop !45

90:                                               ; preds = %7, %5
  %91 = phi i64 [ 0, %5 ], [ %11, %7 ]
  ret i64 %91
}

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!34 = !{!"function_entry_count", i64 0}
!35 = distinct !{!35, !36, !37}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!39, !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !39, i64 0}
!43 = distinct !{!43, !36, !37}
!44 = distinct !{!44, !36, !37}
!45 = distinct !{!45, !36, !37}

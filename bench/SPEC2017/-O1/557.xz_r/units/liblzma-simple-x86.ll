; ModuleID = 'liblzma/simple/x86.c'
source_filename = "liblzma/simple/x86.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i8, i8, ptr, ptr, i32, i64, i64, i64, i64, [0 x i8] }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_simple_s = type { i32, i32 }

@x86_code.MASK_TO_BIT_NUMBER = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3], align 16

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_simple_x86_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @x86_code, i64 noundef 8, i64 noundef 5, i32 noundef 1, i1 noundef zeroext true) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.lzma_coder_s, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  store i32 0, ptr %9, align 4, !tbaa !42
  %10 = getelementptr inbounds %struct.lzma_simple_s, ptr %9, i64 0, i32 1
  store i32 -5, ptr %10, align 4, !tbaa !45
  br label %11

11:                                               ; preds = %3, %6
  ret i32 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_simple_x86_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @x86_code, i64 noundef 8, i64 noundef 5, i32 noundef 1, i1 noundef zeroext false) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.lzma_coder_s, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  store i32 0, ptr %9, align 4, !tbaa !42
  %10 = getelementptr inbounds %struct.lzma_simple_s, ptr %9, i64 0, i32 1
  store i32 -5, ptr %10, align 4, !tbaa !45
  br label %11

11:                                               ; preds = %3, %6
  ret i32 %4
}

declare i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @x86_code(ptr nocapture noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr nocapture noundef %3, i64 noundef %4) #2 !prof !34 {
  %6 = getelementptr inbounds %struct.lzma_simple_s, ptr %0, i64 0, i32 1
  %7 = icmp ult i64 %4, 5
  br i1 %7, label %117, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %0, align 4, !tbaa !42
  %10 = load i32, ptr %6, align 4, !tbaa !45
  %11 = sub i32 %1, %10
  %12 = icmp ugt i32 %11, 5
  %13 = add i32 %1, -5
  %14 = select i1 %12, i32 %13, i32 %10
  %15 = add i64 %4, -5
  br label %16

16:                                               ; preds = %8, %111
  %17 = phi i32 [ %9, %8 ], [ %114, %111 ]
  %18 = phi i64 [ 0, %8 ], [ %113, %111 ]
  %19 = phi i32 [ %14, %8 ], [ %112, %111 ]
  %20 = getelementptr inbounds i8, ptr %3, i64 %18
  %21 = load i8, ptr %20, align 1, !tbaa !46
  %22 = add i8 %21, 22
  %23 = icmp ult i8 %22, -2
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = add nuw i64 %18, 1
  br label %111, !llvm.loop !47

26:                                               ; preds = %16
  %27 = trunc i64 %18 to i32
  %28 = add i32 %27, %1
  %29 = sub i32 %28, %19
  %30 = icmp ugt i32 %29, 5
  br i1 %30, label %42, label %31

31:                                               ; preds = %26
  %32 = icmp eq i32 %28, %19
  br i1 %32, label %42, label %33

33:                                               ; preds = %31
  %34 = tail call i32 @llvm.umax.i32(i32 %29, i32 1)
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i32 [ %40, %35 ], [ 0, %33 ]
  %37 = phi i32 [ %39, %35 ], [ %17, %33 ]
  %38 = shl i32 %37, 1
  %39 = and i32 %38, 238
  %40 = add nuw nsw i32 %36, 1
  %41 = icmp eq i32 %40, %34
  br i1 %41, label %42, label %35, !llvm.loop !50

42:                                               ; preds = %35, %31, %26
  %43 = phi i32 [ 0, %26 ], [ %17, %31 ], [ %39, %35 ]
  %44 = getelementptr i8, ptr %20, i64 4
  %45 = load i8, ptr %44, align 1, !tbaa !46
  %46 = zext i8 %45 to i32
  %47 = add i8 %45, 1
  %48 = icmp ult i8 %47, 2
  br i1 %48, label %49, label %107

49:                                               ; preds = %42
  %50 = lshr i32 %43, 1
  %51 = and i32 %50, 7
  %52 = zext nneg i32 %51 to i64
  %53 = lshr i64 232, %52
  %54 = and i64 %53, 1
  %55 = icmp eq i64 %54, 0
  %56 = icmp ult i32 %43, 32
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %58, label %107

58:                                               ; preds = %49
  %59 = shl nuw i32 %46, 24
  %60 = getelementptr i8, ptr %20, i64 3
  %61 = load i8, ptr %60, align 1, !tbaa !46
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 16
  %64 = or disjoint i32 %63, %59
  %65 = getelementptr i8, ptr %20, i64 2
  %66 = load i8, ptr %65, align 1, !tbaa !46
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 8
  %69 = or disjoint i32 %64, %68
  %70 = getelementptr i8, ptr %20, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !46
  %72 = zext i8 %71 to i32
  %73 = or disjoint i32 %69, %72
  %74 = add i32 %28, 5
  %75 = sub i32 -5, %28
  %76 = select i1 %2, i32 %74, i32 %75
  %77 = icmp eq i32 %43, 0
  %78 = zext nneg i32 %50 to i64
  %79 = getelementptr inbounds [8 x i32], ptr @x86_code.MASK_TO_BIT_NUMBER, i64 0, i64 %78
  br label %80

80:                                               ; preds = %94, %58
  %81 = phi i32 [ %73, %58 ], [ %96, %94 ]
  %82 = add i32 %81, %76
  br i1 %77, label %97, label %83

83:                                               ; preds = %80
  %84 = load i32, ptr %79, align 4, !tbaa !51
  %85 = shl i32 %84, 3
  %86 = sub i32 24, %85
  %87 = lshr i32 %82, %86
  %88 = trunc i32 %87 to i8
  switch i8 %88, label %94 [
    i8 -1, label %89
    i8 0, label %89
  ]

89:                                               ; preds = %83, %83
  %90 = sub i32 32, %85
  %91 = shl nsw i32 -1, %90
  %92 = xor i32 %82, %91
  %93 = xor i32 %92, -1
  br label %94

94:                                               ; preds = %83, %89
  %95 = phi i1 [ true, %89 ], [ false, %83 ]
  %96 = phi i32 [ %93, %89 ], [ %81, %83 ]
  br i1 %95, label %80, label %97

97:                                               ; preds = %94, %80
  %98 = shl i32 %82, 7
  %99 = ashr i32 %98, 31
  %100 = trunc i32 %99 to i8
  store i8 %100, ptr %44, align 1, !tbaa !46
  %101 = lshr i32 %82, 16
  %102 = trunc i32 %101 to i8
  store i8 %102, ptr %60, align 1, !tbaa !46
  %103 = lshr i32 %82, 8
  %104 = trunc i32 %103 to i8
  store i8 %104, ptr %65, align 1, !tbaa !46
  %105 = trunc i32 %82 to i8
  store i8 %105, ptr %70, align 1, !tbaa !46
  %106 = add nuw i64 %18, 5
  br label %111

107:                                              ; preds = %42, %49
  %108 = phi i32 [ 1, %42 ], [ 17, %49 ]
  %109 = add nuw i64 %18, 1
  %110 = or i32 %108, %43
  br label %111

111:                                              ; preds = %107, %97, %24
  %112 = phi i32 [ %19, %24 ], [ %28, %107 ], [ %28, %97 ]
  %113 = phi i64 [ %25, %24 ], [ %109, %107 ], [ %106, %97 ]
  %114 = phi i32 [ %17, %24 ], [ %110, %107 ], [ 0, %97 ]
  %115 = icmp ugt i64 %113, %15
  br i1 %115, label %116, label %16

116:                                              ; preds = %111
  store i32 %114, ptr %0, align 4, !tbaa !42
  store i32 %112, ptr %6, align 4, !tbaa !45
  br label %117

117:                                              ; preds = %5, %116
  %118 = phi i64 [ %113, %116 ], [ 0, %5 ]
  ret i64 %118
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!35 = !{!36, !37, i64 0}
!36 = !{!"lzma_next_coder_s", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!37, !37, i64 0}
!42 = !{!43, !44, i64 0}
!43 = !{!"lzma_simple_s", !44, i64 0, !44, i64 4}
!44 = !{!"int", !38, i64 0}
!45 = !{!43, !44, i64 4}
!46 = !{!38, !38, i64 0}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = distinct !{!50, !48, !49}
!51 = !{!44, !44, i64 0}

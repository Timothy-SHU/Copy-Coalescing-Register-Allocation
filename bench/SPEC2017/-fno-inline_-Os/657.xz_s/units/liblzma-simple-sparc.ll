; ModuleID = 'liblzma/simple/sparc.c'
source_filename = "liblzma/simple/sparc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_simple_sparc_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @sparc_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true) #3
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @sparc_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !35 {
  %5 = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @sparc_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext %3) #4
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal i64 @sparc_code(ptr nocapture readnone %0, i32 noundef %1, i1 noundef zeroext %2, ptr nocapture noundef %3, i64 noundef %4) #2 !PGOFuncName !36 {
  %6 = icmp ult i64 %4, 4
  br i1 %6, label %65, label %7

7:                                                ; preds = %5, %62
  %8 = phi i64 [ %63, %62 ], [ 4, %5 ]
  %9 = phi i64 [ %8, %62 ], [ 0, %5 ]
  %10 = getelementptr inbounds i8, ptr %3, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !37
  switch i8 %11, label %62 [
    i8 64, label %12
    i8 127, label %17
  ]

12:                                               ; preds = %7
  %13 = or disjoint i64 %9, 1
  %14 = getelementptr inbounds i8, ptr %3, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !37
  %16 = icmp ult i8 %15, 64
  br i1 %16, label %22, label %62

17:                                               ; preds = %7
  %18 = or disjoint i64 %9, 1
  %19 = getelementptr inbounds i8, ptr %3, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !37
  %21 = icmp ugt i8 %20, -65
  br i1 %21, label %22, label %62

22:                                               ; preds = %17, %12
  %23 = phi i8 [ %20, %17 ], [ %15, %12 ]
  %24 = phi i64 [ %18, %17 ], [ %13, %12 ]
  %25 = zext nneg i8 %11 to i32
  %26 = shl nuw nsw i32 %25, 24
  %27 = getelementptr inbounds i8, ptr %3, i64 %24
  %28 = zext i8 %23 to i32
  %29 = shl nuw nsw i32 %28, 16
  %30 = or disjoint i32 %29, %26
  %31 = or disjoint i64 %9, 2
  %32 = getelementptr inbounds i8, ptr %3, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !37
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = or disjoint i32 %30, %35
  %37 = or disjoint i64 %9, 3
  %38 = getelementptr inbounds i8, ptr %3, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !37
  %40 = zext i8 %39 to i32
  %41 = or disjoint i32 %36, %40
  %42 = shl i32 %41, 2
  %43 = trunc i64 %9 to i32
  %44 = add i32 %43, %1
  %45 = sub i32 0, %44
  %46 = select i1 %2, i32 %44, i32 %45
  %47 = add i32 %42, %46
  %48 = lshr i32 %47, 2
  %49 = shl i32 %47, 7
  %50 = ashr i32 %49, 9
  %51 = and i32 %50, 1069547520
  %52 = and i32 %48, 4128768
  %53 = or disjoint i32 %51, %52
  %54 = lshr i32 %51, 24
  %55 = trunc i32 %54 to i8
  %56 = or disjoint i8 %55, 64
  store i8 %56, ptr %10, align 1, !tbaa !37
  %57 = lshr exact i32 %53, 16
  %58 = trunc i32 %57 to i8
  store i8 %58, ptr %27, align 1, !tbaa !37
  %59 = lshr i32 %47, 10
  %60 = trunc i32 %59 to i8
  store i8 %60, ptr %32, align 1, !tbaa !37
  %61 = trunc i32 %48 to i8
  store i8 %61, ptr %38, align 1, !tbaa !37
  br label %62

62:                                               ; preds = %7, %12, %17, %22
  %63 = add nuw i64 %8, 4
  %64 = icmp ugt i64 %63, %4
  br i1 %64, label %65, label %7, !llvm.loop !40

65:                                               ; preds = %62, %5
  %66 = phi i64 [ 0, %5 ], [ %8, %62 ]
  ret i64 %66
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_simple_sparc_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @sparc_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false) #3
  ret i32 %4
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize }
attributes #4 = { nounwind optsize }

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
!35 = !{!"sparc.c:sparc_coder_init"}
!36 = !{!"sparc.c:sparc_code"}
!37 = !{!38, !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}

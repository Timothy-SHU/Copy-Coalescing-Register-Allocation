; ModuleID = 'liblzma/simple/armthumb.c'
source_filename = "liblzma/simple/armthumb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_simple_armthumb_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @armthumb_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true) #3
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @armthumb_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !35 {
  %5 = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @armthumb_code, i64 noundef 0, i64 noundef 4, i32 noundef 2, i1 noundef zeroext %3) #4
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal i64 @armthumb_code(ptr nocapture readnone %0, i32 noundef %1, i1 noundef zeroext %2, ptr nocapture noundef %3, i64 noundef %4) #2 !PGOFuncName !36 {
  %6 = icmp ult i64 %4, 4
  br i1 %6, label %65, label %7

7:                                                ; preds = %5
  %8 = add i32 %1, 4
  br label %9

9:                                                ; preds = %7, %60
  %10 = phi i64 [ 0, %7 ], [ %62, %60 ]
  %11 = getelementptr i8, ptr %3, i64 %10
  %12 = getelementptr i8, ptr %11, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !37
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 248
  %16 = icmp eq i32 %15, 240
  br i1 %16, label %17, label %60

17:                                               ; preds = %9
  %18 = getelementptr i8, ptr %11, i64 3
  %19 = load i8, ptr %18, align 1, !tbaa !37
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 248
  %22 = icmp eq i32 %21, 248
  br i1 %22, label %23, label %60

23:                                               ; preds = %17
  %24 = shl nuw nsw i32 %14, 19
  %25 = and i32 %24, 3670016
  %26 = load i8, ptr %11, align 1, !tbaa !37
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 11
  %29 = or disjoint i32 %28, %25
  %30 = shl nuw nsw i32 %20, 8
  %31 = and i32 %30, 1792
  %32 = or disjoint i32 %29, %31
  %33 = add i64 %10, 2
  %34 = getelementptr inbounds i8, ptr %3, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !37
  %36 = zext i8 %35 to i32
  %37 = or disjoint i32 %32, %36
  %38 = shl nuw nsw i32 %37, 1
  %39 = trunc i64 %10 to i32
  br i1 %2, label %40, label %43

40:                                               ; preds = %23
  %41 = add i32 %8, %39
  %42 = add i32 %41, %38
  br label %47

43:                                               ; preds = %23
  %44 = add i32 %39, %1
  %45 = sub i32 %38, %44
  %46 = add i32 %45, -4
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i32 [ %42, %40 ], [ %46, %43 ]
  %49 = lshr i32 %48, 1
  %50 = lshr i32 %48, 20
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 7
  %53 = or disjoint i8 %52, -16
  store i8 %53, ptr %12, align 1, !tbaa !37
  %54 = lshr i32 %48, 12
  %55 = trunc i32 %54 to i8
  store i8 %55, ptr %11, align 1, !tbaa !37
  %56 = lshr i32 %48, 9
  %57 = trunc i32 %56 to i8
  %58 = or i8 %57, -8
  store i8 %58, ptr %18, align 1, !tbaa !37
  %59 = trunc i32 %49 to i8
  store i8 %59, ptr %34, align 1, !tbaa !37
  br label %60

60:                                               ; preds = %9, %17, %47
  %61 = phi i64 [ %33, %47 ], [ %10, %17 ], [ %10, %9 ]
  %62 = add i64 %61, 2
  %63 = add i64 %61, 6
  %64 = icmp ugt i64 %63, %4
  br i1 %64, label %65, label %9, !llvm.loop !40

65:                                               ; preds = %60, %5
  %66 = phi i64 [ 0, %5 ], [ %62, %60 ]
  ret i64 %66
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_simple_armthumb_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @armthumb_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false) #3
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
!35 = !{!"armthumb.c:armthumb_coder_init"}
!36 = !{!"armthumb.c:armthumb_code"}
!37 = !{!38, !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}

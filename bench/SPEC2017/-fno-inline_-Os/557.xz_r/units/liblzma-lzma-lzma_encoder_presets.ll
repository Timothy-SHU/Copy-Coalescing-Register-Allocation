; ModuleID = 'liblzma/lzma/lzma_encoder_presets.c'
source_filename = "liblzma/lzma/lzma_encoder_presets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef zeroext i8 @lzma_lzma_preset(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = alloca [10 x i8], align 8
  %4 = alloca [4 x i8], align 4
  %5 = and i32 %1, 31
  %6 = icmp ult i32 %5, 10
  %7 = and i32 %1, 2147483616
  %8 = icmp eq i32 %7, 0
  %9 = and i1 %6, %8
  br i1 %9, label %10, label %49, !prof !35

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 1
  store ptr null, ptr %11, align 8, !tbaa !36
  %12 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 2
  store <4 x i32> <i32 0, i32 3, i32 0, i32 2>, ptr %12, align 8, !tbaa !42
  store <8 x i8> <i8 18, i8 20, i8 21, i8 22, i8 22, i8 23, i8 23, i8 24>, ptr %3, align 8, !tbaa !43
  %13 = getelementptr inbounds i8, ptr %3, i64 8
  store i8 25, ptr %13, align 8, !tbaa !43
  %14 = getelementptr inbounds i8, ptr %3, i64 9
  store i8 26, ptr %14, align 1, !tbaa !43
  %15 = zext nneg i32 %5 to i64
  %16 = getelementptr inbounds [10 x i8], ptr %3, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !43
  %18 = zext nneg i8 %17 to i32
  %19 = shl nuw i32 1, %18
  store i32 %19, ptr %0, align 8, !tbaa !44
  %20 = icmp ult i32 %5, 4
  br i1 %20, label %21, label %29, !prof !45

21:                                               ; preds = %10
  %22 = icmp eq i32 %5, 0
  %23 = select i1 %22, i32 3, i32 4
  %24 = icmp ult i32 %5, 2
  %25 = select i1 %24, i32 128, i32 273
  store <4 x i8> <i8 4, i8 8, i8 24, i8 48>, ptr %4, align 4, !tbaa !43
  %26 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 %15
  %27 = load i8, ptr %26, align 1, !tbaa !43
  %28 = zext i8 %27 to i32
  br label %34

29:                                               ; preds = %10
  %30 = icmp eq i32 %5, 4
  %31 = icmp eq i32 %5, 5
  %32 = select i1 %31, i32 32, i32 64
  %33 = select i1 %30, i32 16, i32 %32, !prof !45
  br label %34

34:                                               ; preds = %29, %21
  %35 = phi i32 [ 1, %21 ], [ 2, %29 ]
  %36 = phi i32 [ %23, %21 ], [ 20, %29 ]
  %37 = phi i32 [ %25, %21 ], [ %33, %29 ]
  %38 = phi i32 [ %28, %21 ], [ 0, %29 ]
  %39 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 6
  store i32 %35, ptr %39, align 8
  %40 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 8
  store i32 %36, ptr %40, align 8
  %41 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 7
  store i32 %37, ptr %41, align 4
  %42 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 9
  store i32 %38, ptr %42, align 4
  %43 = icmp sgt i32 %1, -1
  br i1 %43, label %49, label %44, !prof !46

44:                                               ; preds = %34
  store i32 2, ptr %39, align 8, !tbaa !47
  store i32 20, ptr %40, align 8, !tbaa !48
  switch i32 %5, label %45 [
    i32 5, label %46
    i32 3, label %46
  ]

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %44, %44, %45
  %47 = phi i32 [ 273, %45 ], [ 192, %44 ], [ 192, %44 ]
  %48 = phi i32 [ 512, %45 ], [ 0, %44 ], [ 0, %44 ]
  store i32 %47, ptr %41, align 4, !tbaa !49
  store i32 %48, ptr %42, align 4, !tbaa !50
  br label %49

49:                                               ; preds = %46, %34, %2
  %50 = phi i8 [ 1, %2 ], [ 0, %34 ], [ 0, %46 ]
  ret i8 %50
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!34 = !{!"function_entry_count", i64 1}
!35 = !{!"branch_weights", i32 4, i32 5}
!36 = !{!37, !41, i64 8}
!37 = !{!"", !38, i64 0, !41, i64 8, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !38, i64 48, !38, i64 52, !38, i64 56, !38, i64 60, !38, i64 64, !38, i64 68, !38, i64 72, !38, i64 76, !38, i64 80, !38, i64 84, !38, i64 88, !38, i64 92, !41, i64 96, !41, i64 104}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"any pointer", !39, i64 0}
!42 = !{!38, !38, i64 0}
!43 = !{!39, !39, i64 0}
!44 = !{!37, !38, i64 0}
!45 = !{!"branch_weights", i32 1, i32 2}
!46 = !{!"branch_weights", i32 2, i32 1}
!47 = !{!37, !38, i64 32}
!48 = !{!37, !38, i64 40}
!49 = !{!37, !38, i64 36}
!50 = !{!37, !38, i64 44}

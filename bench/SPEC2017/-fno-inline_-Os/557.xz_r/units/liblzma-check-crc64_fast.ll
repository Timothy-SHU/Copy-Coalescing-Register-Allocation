; ModuleID = 'liblzma/check/crc64_fast.c'
source_filename = "liblzma/check/crc64_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@lzma_crc64_table = external local_unnamed_addr constant [4 x [256 x i64]], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @lzma_crc64(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = xor i64 %2, -1
  %5 = icmp ugt i64 %1, 4
  br i1 %5, label %6, label %66, !prof !35

6:                                                ; preds = %3
  %7 = ptrtoint ptr %0 to i64
  %8 = and i64 %7, 3
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %27, label %10, !prof !36

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %14, %10 ], [ %0, %6 ]
  %12 = phi i64 [ %23, %10 ], [ %1, %6 ]
  %13 = phi i64 [ %22, %10 ], [ %4, %6 ]
  %14 = getelementptr inbounds i8, ptr %11, i64 1
  %15 = load i8, ptr %11, align 1, !tbaa !37
  %16 = zext i8 %15 to i64
  %17 = and i64 %13, 255
  %18 = xor i64 %17, %16
  %19 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !40
  %21 = lshr i64 %13, 8
  %22 = xor i64 %20, %21
  %23 = add i64 %12, -1
  %24 = ptrtoint ptr %14 to i64
  %25 = and i64 %24, 3
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %10, !prof !42, !llvm.loop !43

27:                                               ; preds = %10, %6
  %28 = phi i64 [ %4, %6 ], [ %22, %10 ]
  %29 = phi i64 [ %1, %6 ], [ %23, %10 ]
  %30 = phi ptr [ %0, %6 ], [ %14, %10 ]
  %31 = and i64 %29, -4
  %32 = getelementptr inbounds i8, ptr %30, i64 %31
  %33 = and i64 %29, 3
  %34 = icmp sgt i64 %31, 0
  br i1 %34, label %35, label %66, !prof !45

35:                                               ; preds = %27, %35
  %36 = phi ptr [ %41, %35 ], [ %30, %27 ]
  %37 = phi i64 [ %64, %35 ], [ %28, %27 ]
  %38 = load i32, ptr %36, align 4, !tbaa !46
  %39 = trunc i64 %37 to i32
  %40 = xor i32 %38, %39
  %41 = getelementptr inbounds i8, ptr %36, i64 4
  %42 = and i32 %40, 255
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [4 x [256 x i64]], ptr @lzma_crc64_table, i64 0, i64 3, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !40
  %46 = lshr i32 %40, 8
  %47 = and i32 %46, 255
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds [4 x [256 x i64]], ptr @lzma_crc64_table, i64 0, i64 2, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !40
  %51 = lshr i64 %37, 32
  %52 = lshr i32 %40, 16
  %53 = and i32 %52, 255
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds [4 x [256 x i64]], ptr @lzma_crc64_table, i64 0, i64 1, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !40
  %57 = lshr i32 %40, 24
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !40
  %61 = xor i64 %45, %51
  %62 = xor i64 %61, %50
  %63 = xor i64 %62, %56
  %64 = xor i64 %63, %60
  %65 = icmp ult ptr %41, %32
  br i1 %65, label %35, label %66, !prof !48, !llvm.loop !49

66:                                               ; preds = %35, %27, %3
  %67 = phi i64 [ %4, %3 ], [ %28, %27 ], [ %64, %35 ]
  %68 = phi i64 [ %1, %3 ], [ %33, %27 ], [ %33, %35 ]
  %69 = phi ptr [ %0, %3 ], [ %30, %27 ], [ %41, %35 ]
  %70 = icmp eq i64 %68, 0
  br i1 %70, label %86, label %71, !prof !50

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %76, %71 ], [ %69, %66 ]
  %73 = phi i64 [ %75, %71 ], [ %68, %66 ]
  %74 = phi i64 [ %84, %71 ], [ %67, %66 ]
  %75 = add nsw i64 %73, -1
  %76 = getelementptr inbounds i8, ptr %72, i64 1
  %77 = load i8, ptr %72, align 1, !tbaa !37
  %78 = zext i8 %77 to i64
  %79 = and i64 %74, 255
  %80 = xor i64 %79, %78
  %81 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !40
  %83 = lshr i64 %74, 8
  %84 = xor i64 %82, %83
  %85 = icmp eq i64 %75, 0
  br i1 %85, label %86, label %71, !prof !51, !llvm.loop !52

86:                                               ; preds = %71, %66
  %87 = phi i64 [ %67, %66 ], [ %84, %71 ]
  %88 = xor i64 %87, -1
  ret i64 %88
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
!34 = !{!"function_entry_count", i64 80863}
!35 = !{!"branch_weights", i32 76545, i32 4320}
!36 = !{!"branch_weights", i32 67592, i32 8953}
!37 = !{!38, !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !41, i64 0}
!41 = !{!"long", !38, i64 0}
!42 = !{!"branch_weights", i32 8953, i32 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"branch_weights", i32 76544, i32 1}
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !38, i64 0}
!48 = !{!"branch_weights", i32 144435880, i32 76544}
!49 = distinct !{!49, !44}
!50 = !{!"branch_weights", i32 71939, i32 8925}
!51 = !{!"branch_weights", i32 8925, i32 0}
!52 = distinct !{!52, !44}

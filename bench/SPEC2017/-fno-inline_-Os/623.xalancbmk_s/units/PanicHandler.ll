; ModuleID = 'PanicHandler.cpp'
source_filename = "PanicHandler.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"Could not load a transcoding service\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Could not load a local code page transcoder\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Could not find the xerces-c DLL\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Unknown message domain\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Cannot load message domain\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Cannot synchronize system or mutex\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Cannot initialize the system or mutex\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Cannot create, lock or unlock a mutex\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Unknown reason\00", align 1
@reltable._ZN11xercesc_2_712PanicHandler20getPanicReasonStringENS0_12PanicReasonsE = private unnamed_addr constant [9 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable._ZN11xercesc_2_712PanicHandler20getPanicReasonStringENS0_12PanicReasonsE to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.1 to i64), i64 ptrtoint (ptr @reltable._ZN11xercesc_2_712PanicHandler20getPanicReasonStringENS0_12PanicReasonsE to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.2 to i64), i64 ptrtoint (ptr @reltable._ZN11xercesc_2_712PanicHandler20getPanicReasonStringENS0_12PanicReasonsE to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.3 to i64), i64 ptrtoint (ptr @reltable._ZN11xercesc_2_712PanicHandler20getPanicReasonStringENS0_12PanicReasonsE to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.4 to i64), i64 ptrtoint (ptr @reltable._ZN11xercesc_2_712PanicHandler20getPanicReasonStringENS0_12PanicReasonsE to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.5 to i64), i64 ptrtoint (ptr @reltable._ZN11xercesc_2_712PanicHandler20getPanicReasonStringENS0_12PanicReasonsE to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.6 to i64), i64 ptrtoint (ptr @reltable._ZN11xercesc_2_712PanicHandler20getPanicReasonStringENS0_12PanicReasonsE to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.8 to i64), i64 ptrtoint (ptr @reltable._ZN11xercesc_2_712PanicHandler20getPanicReasonStringENS0_12PanicReasonsE to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.7 to i64), i64 ptrtoint (ptr @reltable._ZN11xercesc_2_712PanicHandler20getPanicReasonStringENS0_12PanicReasonsE to i64)) to i32)], align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xercesc_2_712PanicHandler20getPanicReasonStringENS0_12PanicReasonsE(i32 noundef %0) local_unnamed_addr #0 align 2 !prof !35 {
  %2 = icmp ult i32 %0, 9
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = shl i64 %4, 2
  %6 = call ptr @llvm.load.relative.i64(ptr @reltable._ZN11xercesc_2_712PanicHandler20getPanicReasonStringENS0_12PanicReasonsE, i64 %5)
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ @.str.8, %1 ]
  ret ptr %8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #1

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}

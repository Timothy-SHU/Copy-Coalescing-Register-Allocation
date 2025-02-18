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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xercesc_2_712PanicHandler20getPanicReasonStringENS0_12PanicReasonsE(i32 noundef %0) local_unnamed_addr #0 align 2 !prof !34 {
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

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}

; ModuleID = 'bits.cpp'
source_filename = "bits.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL10magictable = internal unnamed_addr constant [64 x i32] [i32 0, i32 1, i32 12, i32 2, i32 13, i32 22, i32 17, i32 3, i32 14, i32 33, i32 23, i32 36, i32 18, i32 58, i32 28, i32 4, i32 62, i32 15, i32 34, i32 26, i32 24, i32 48, i32 50, i32 37, i32 19, i32 55, i32 59, i32 52, i32 29, i32 44, i32 39, i32 5, i32 63, i32 11, i32 21, i32 16, i32 32, i32 35, i32 57, i32 27, i32 61, i32 25, i32 47, i32 49, i32 54, i32 51, i32 43, i32 38, i32 10, i32 20, i32 31, i32 56, i32 60, i32 46, i32 53, i32 42, i32 9, i32 30, i32 45, i32 41, i32 8, i32 40, i32 7, i32 6], align 16
@last_bit = dso_local local_unnamed_addr global [65536 x i8] zeroinitializer, align 16

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z8PopCounty(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %10, label %3, !prof !35

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %8, %3 ], [ 0, %1 ]
  %5 = phi i64 [ %7, %3 ], [ %0, %1 ]
  %6 = add i64 %5, -1
  %7 = and i64 %6, %5
  %8 = add nuw nsw i32 %4, 1
  %9 = icmp eq i64 %7, 0
  br i1 %9, label %10, label %3, !prof !36, !llvm.loop !37

10:                                               ; preds = %3, %1
  %11 = phi i32 [ 0, %1 ], [ %8, %3 ]
  ret i32 %11
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z9FindFirsty(i64 noundef %0) local_unnamed_addr #1 !prof !40 {
  %2 = sub i64 0, %0
  %3 = and i64 %2, %0
  %4 = mul i64 %3, 283881067100198605
  %5 = lshr i64 %4, 58
  %6 = getelementptr inbounds [64 x i32], ptr @_ZL10magictable, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !41
  ret i32 %7
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z15FindFirstRemovePy(ptr nocapture noundef %0) local_unnamed_addr #2 !prof !45 {
  %2 = load i64, ptr %0, align 8, !tbaa !46
  %3 = sub i64 0, %2
  %4 = and i64 %2, %3
  %5 = xor i64 %4, %2
  store i64 %5, ptr %0, align 8, !tbaa !46
  %6 = mul i64 %4, 283881067100198605
  %7 = lshr i64 %6, 58
  %8 = getelementptr inbounds [64 x i32], ptr @_ZL10magictable, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !41
  ret i32 %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z8FindLasty(i64 noundef %0) local_unnamed_addr #3 !prof !48 {
  %2 = icmp ugt i64 %0, 4294967295
  %3 = lshr i64 %0, 32
  %4 = select i1 %2, i64 %3, i64 %0, !prof !49
  %5 = select i1 %2, i32 32, i32 0, !prof !49
  %6 = icmp ugt i64 %4, 65535
  %7 = lshr i64 %4, 16
  %8 = or disjoint i32 %5, 16
  %9 = select i1 %6, i64 %7, i64 %4, !prof !50
  %10 = select i1 %6, i32 %8, i32 %5, !prof !50
  %11 = getelementptr inbounds [65536 x i8], ptr @last_bit, i64 0, i64 %9
  %12 = load i8, ptr %11, align 1, !tbaa !51
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %10, %13
  ret i32 %14
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z13ThickPopCounty(i64 noundef %0) local_unnamed_addr #0 !prof !52 {
  %2 = lshr i64 %0, 1
  %3 = and i64 %2, 6148914691236517205
  %4 = sub i64 %0, %3
  %5 = lshr i64 %4, 2
  %6 = and i64 %5, 3689348814741910323
  %7 = and i64 %4, 3689348814741910323
  %8 = add nuw nsw i64 %6, %7
  %9 = lshr i64 %8, 4
  %10 = add nuw nsw i64 %9, %8
  %11 = and i64 %10, 1085102592571150095
  %12 = mul i64 %11, 72340172838076673
  %13 = lshr i64 %12, 56
  %14 = trunc i64 %13 to i32
  ret i32 %14
}

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 128361366639}
!8 = !{!"MaxCount", i64 7592818589}
!9 = !{!"MaxInternalCount", i64 5393808666}
!10 = !{!"MaxFunctionCount", i64 7592818589}
!11 = !{!"NumCounts", i64 1723}
!12 = !{!"NumFunctions", i64 109}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 7592818589, i32 1}
!18 = !{i32 100000, i64 5393808666, i32 2}
!19 = !{i32 200000, i64 2869551984, i32 6}
!20 = !{i32 300000, i64 1728514292, i32 11}
!21 = !{i32 400000, i64 824050972, i32 24}
!22 = !{i32 500000, i64 588473769, i32 42}
!23 = !{i32 600000, i64 446369574, i32 68}
!24 = !{i32 700000, i64 286932458, i32 105}
!25 = !{i32 800000, i64 196614852, i32 160}
!26 = !{i32 900000, i64 107044397, i32 249}
!27 = !{i32 950000, i64 60101921, i32 326}
!28 = !{i32 990000, i64 15736932, i32 482}
!29 = !{i32 999000, i64 2025695, i32 659}
!30 = !{i32 999900, i64 318185, i32 779}
!31 = !{i32 999990, i64 50049, i32 848}
!32 = !{i32 999999, i64 3896, i32 923}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 5393808666}
!35 = !{!"branch_weights", i32 390422440, i32 -1988485403}
!36 = !{!"branch_weights", i32 -1988485403, i32 0}
!37 = distinct !{!37, !38, !39}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!"function_entry_count", i64 51}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!"function_entry_count", i64 7592818589}
!46 = !{!47, !47, i64 0}
!47 = !{!"long long", !43, i64 0}
!48 = !{!"function_entry_count", i64 396}
!49 = !{!"branch_weights", i32 0, i32 396}
!50 = !{!"branch_weights", i32 141, i32 255}
!51 = !{!43, !43, i64 0}
!52 = !{!"function_entry_count", i64 2351442609}

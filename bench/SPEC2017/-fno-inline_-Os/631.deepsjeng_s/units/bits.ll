; ModuleID = 'bits.cpp'
source_filename = "bits.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@last_bit = dso_local local_unnamed_addr global [65536 x i8] zeroinitializer, align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z8PopCounty(i64 noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %10, label %3, !prof !36

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %8, %3 ], [ 0, %1 ]
  %5 = phi i64 [ %7, %3 ], [ %0, %1 ]
  %6 = add i64 %5, -1
  %7 = and i64 %6, %5
  %8 = add nuw nsw i32 %4, 1
  %9 = icmp eq i64 %7, 0
  br i1 %9, label %10, label %3, !prof !37, !llvm.loop !38

10:                                               ; preds = %3, %1
  %11 = phi i32 [ 0, %1 ], [ %8, %3 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z9FindFirsty(i64 noundef %0) local_unnamed_addr #0 !prof !40 {
  %2 = tail call i64 @llvm.cttz.i64(i64 %0, i1 true), !range !41
  %3 = icmp eq i64 %0, 0
  %4 = trunc i64 %2 to i32
  %5 = select i1 %3, i32 0, i32 %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z15FindFirstRemovePy(ptr nocapture noundef %0) local_unnamed_addr #1 !prof !42 {
  %2 = load i64, ptr %0, align 8, !tbaa !43
  %3 = add i64 %2, -1
  %4 = and i64 %2, %3
  store i64 %4, ptr %0, align 8, !tbaa !43
  %5 = tail call i64 @llvm.cttz.i64(i64 %2, i1 true), !range !41
  %6 = icmp eq i64 %2, 0
  %7 = trunc i64 %5 to i32
  %8 = select i1 %6, i32 0, i32 %7
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z8FindLasty(i64 noundef %0) local_unnamed_addr #2 !prof !47 {
  %2 = icmp ugt i64 %0, 4294967295
  br i1 %2, label %3, label %5, !prof !48

3:                                                ; preds = %1
  %4 = lshr i64 %0, 32
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi i64 [ %4, %3 ], [ %0, %1 ]
  %7 = phi i32 [ 32, %3 ], [ 0, %1 ]
  %8 = icmp ugt i64 %6, 65535
  %9 = lshr i64 %6, 16
  %10 = or disjoint i32 %7, 16
  %11 = select i1 %8, i64 %9, i64 %6, !prof !49
  %12 = select i1 %8, i32 %10, i32 %7, !prof !49
  %13 = getelementptr inbounds [65536 x i8], ptr @last_bit, i64 0, i64 %11
  %14 = load i8, ptr %13, align 1, !tbaa !50
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %12, %15
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z13ThickPopCounty(i64 noundef %0) local_unnamed_addr #0 !prof !51 {
  %2 = tail call i64 @llvm.ctpop.i64(i64 %0), !range !41
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 146496756232}
!4 = !{!"MaxCount", i64 8721648212}
!5 = !{!"MaxInternalCount", i64 5141736311}
!6 = !{!"MaxFunctionCount", i64 8721648212}
!7 = !{!"NumCounts", i64 1321}
!8 = !{!"NumFunctions", i64 93}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 8721648212, i32 1}
!14 = !{i32 100000, i64 6254650610, i32 2}
!15 = !{i32 200000, i64 3869890121, i32 6}
!16 = !{i32 300000, i64 2709579086, i32 11}
!17 = !{i32 400000, i64 2122664977, i32 16}
!18 = !{i32 500000, i64 1035201207, i32 30}
!19 = !{i32 600000, i64 738030122, i32 46}
!20 = !{i32 700000, i64 447394011, i32 71}
!21 = !{i32 800000, i64 240014260, i32 118}
!22 = !{i32 900000, i64 123608408, i32 197}
!23 = !{i32 950000, i64 77992234, i32 270}
!24 = !{i32 990000, i64 24047101, i32 388}
!25 = !{i32 999000, i64 3805030, i32 501}
!26 = !{i32 999900, i64 637179, i32 578}
!27 = !{i32 999990, i64 66341, i32 629}
!28 = !{i32 999999, i64 5762, i32 686}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 6254650610}
!36 = !{!"branch_weights", i32 556457150, i32 -1724099140}
!37 = !{!"branch_weights", i32 -1724099140, i32 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"function_entry_count", i64 78}
!41 = !{i64 0, i64 65}
!42 = !{!"function_entry_count", i64 8721648212}
!43 = !{!44, !44, i64 0}
!44 = !{!"long long", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"function_entry_count", i64 172}
!48 = !{!"branch_weights", i32 1, i32 173}
!49 = !{!"branch_weights", i32 90, i32 84}
!50 = !{!45, !45, i64 0}
!51 = !{!"function_entry_count", i64 2709579086}

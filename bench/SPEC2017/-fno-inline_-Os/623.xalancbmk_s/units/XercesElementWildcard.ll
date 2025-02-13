; ModuleID = 'XercesElementWildcard.cpp'
source_filename = "XercesElementWildcard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard8conflictEPNS_13SchemaGrammarENS_15ContentSpecNode9NodeTypesEPNS_5QNameES4_S6_PNS_27SubstitutionGroupComparatorE(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 !prof !35 {
  %7 = icmp eq i32 %3, 0
  %8 = or i32 %3, %1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %2, ptr noundef %4) #4
  br i1 %11, label %26, label %12

12:                                               ; preds = %10
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %4, ptr noundef %2) #4
  br label %26

14:                                               ; preds = %6
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #4
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard13uriInWildcardEPNS_13SchemaGrammarEPNS_5QNameEjNS_15ContentSpecNode9NodeTypesEPNS_27SubstitutionGroupComparatorE(ptr noundef %0, ptr noundef %2, i32 noundef %17, i32 noundef %3, ptr noundef %5) #4
  br label %26

19:                                               ; preds = %14
  %20 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #4
  br i1 %7, label %21, label %23

21:                                               ; preds = %19
  %22 = tail call noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard13uriInWildcardEPNS_13SchemaGrammarEPNS_5QNameEjNS_15ContentSpecNode9NodeTypesEPNS_27SubstitutionGroupComparatorE(ptr noundef %0, ptr noundef %4, i32 noundef %20, i32 noundef %1, ptr noundef %5) #4
  br label %26

23:                                               ; preds = %19
  %24 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #4
  %25 = tail call noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard17wildcardIntersectENS_15ContentSpecNode9NodeTypesEjS2_j(i32 noundef %1, i32 noundef %20, i32 noundef %3, i32 noundef %24) #4
  br label %26

26:                                               ; preds = %12, %10, %23, %21, %16
  %27 = phi i1 [ %18, %16 ], [ %22, %21 ], [ %25, %23 ], [ true, %10 ], [ %13, %12 ]
  ret i1 %27
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard13uriInWildcardEPNS_13SchemaGrammarEPNS_5QNameEjNS_15ContentSpecNode9NodeTypesEPNS_27SubstitutionGroupComparatorE(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 !prof !35 {
  %6 = and i32 %3, 15
  switch i32 %6, label %11 [
    i32 6, label %12
    i32 8, label %7
    i32 7, label %9
  ]

7:                                                ; preds = %5
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator19isAllowedByWildcardEPNS_13SchemaGrammarEPNS_5QNameEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false) #4
  br label %12

9:                                                ; preds = %5
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator19isAllowedByWildcardEPNS_13SchemaGrammarEPNS_5QNameEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true) #4
  br label %12

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %5, %11, %9, %7
  %13 = phi i1 [ %8, %7 ], [ %10, %9 ], [ false, %11 ], [ true, %5 ]
  ret i1 %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 !prof !36 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !37
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard17wildcardIntersectENS_15ContentSpecNode9NodeTypesEjS2_j(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 !prof !35 {
  %5 = and i32 %0, 15
  %6 = icmp eq i32 %5, 6
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = and i32 %2, 15
  %9 = icmp eq i32 %8, 6
  br i1 %9, label %28, label %10

10:                                               ; preds = %7
  %11 = icmp eq i32 %5, 8
  %12 = icmp eq i32 %8, 8
  %13 = and i1 %11, %12
  %14 = icmp eq i32 %1, %3
  %15 = and i1 %14, %13
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  %17 = icmp eq i32 %5, 7
  %18 = icmp eq i32 %8, 7
  %19 = and i1 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = and i1 %11, %18
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = and i1 %17, %12
  %24 = xor i1 %23, true
  %25 = or i1 %14, %24
  br i1 %25, label %27, label %28

26:                                               ; preds = %20
  br i1 %14, label %27, label %28

27:                                               ; preds = %22, %26
  br label %28

28:                                               ; preds = %26, %22, %16, %10, %4, %7, %27
  %29 = phi i1 [ false, %27 ], [ true, %7 ], [ true, %4 ], [ true, %10 ], [ true, %16 ], [ true, %22 ], [ true, %26 ]
  ret i1 %29
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator19isAllowedByWildcardEPNS_13SchemaGrammarEPNS_5QNameEjb(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize }

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
!36 = !{!"function_entry_count", i64 6553673}
!37 = !{!38, !40, i64 20}
!38 = !{!"_ZTSN11xercesc_2_75QNameE", !39, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48}
!39 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!"any pointer", !41, i64 0}

; ModuleID = 'XercesElementWildcard.cpp'
source_filename = "XercesElementWildcard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard8conflictEPNS_13SchemaGrammarENS_15ContentSpecNode9NodeTypesEPNS_5QNameES4_S6_PNS_27SubstitutionGroupComparatorE(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 !prof !34 {
  %7 = icmp eq i32 %3, 0
  %8 = or i32 %3, %1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %2, ptr noundef %4)
  br i1 %11, label %51, label %12

12:                                               ; preds = %10
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %4, ptr noundef %2)
  br label %51

14:                                               ; preds = %6
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %4, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !35
  %19 = tail call noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard13uriInWildcardEPNS_13SchemaGrammarEPNS_5QNameEjNS_15ContentSpecNode9NodeTypesEPNS_27SubstitutionGroupComparatorE(ptr noundef %0, ptr noundef %2, i32 noundef %18, i32 noundef %3, ptr noundef %5)
  br label %51

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %2, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !35
  br i1 %7, label %23, label %25

23:                                               ; preds = %20
  %24 = tail call noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard13uriInWildcardEPNS_13SchemaGrammarEPNS_5QNameEjNS_15ContentSpecNode9NodeTypesEPNS_27SubstitutionGroupComparatorE(ptr noundef %0, ptr noundef %4, i32 noundef %22, i32 noundef %1, ptr noundef %5)
  br label %51

25:                                               ; preds = %20
  %26 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %4, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !35
  %28 = and i32 %1, 15
  %29 = icmp eq i32 %28, 6
  br i1 %29, label %51, label %30

30:                                               ; preds = %25
  %31 = and i32 %3, 15
  %32 = icmp eq i32 %31, 6
  br i1 %32, label %51, label %33

33:                                               ; preds = %30
  %34 = icmp eq i32 %28, 8
  %35 = icmp eq i32 %31, 8
  %36 = and i1 %34, %35
  %37 = icmp eq i32 %22, %27
  %38 = and i1 %36, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = icmp eq i32 %28, 7
  %41 = icmp eq i32 %31, 7
  %42 = and i1 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = and i1 %34, %41
  br i1 %44, label %49, label %45

45:                                               ; preds = %43
  %46 = and i1 %40, %35
  %47 = xor i1 %46, true
  %48 = or i1 %37, %47
  br i1 %48, label %50, label %51

49:                                               ; preds = %43
  br i1 %37, label %50, label %51

50:                                               ; preds = %49, %45
  br label %51

51:                                               ; preds = %49, %50, %45, %39, %33, %30, %25, %12, %10, %23, %16
  %52 = phi i1 [ %19, %16 ], [ %24, %23 ], [ true, %10 ], [ %13, %12 ], [ false, %50 ], [ true, %30 ], [ true, %25 ], [ true, %33 ], [ true, %39 ], [ true, %45 ], [ true, %49 ]
  ret i1 %52
}

declare noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard13uriInWildcardEPNS_13SchemaGrammarEPNS_5QNameEjNS_15ContentSpecNode9NodeTypesEPNS_27SubstitutionGroupComparatorE(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 !prof !34 {
  %6 = and i32 %3, 15
  switch i32 %6, label %11 [
    i32 6, label %12
    i32 8, label %7
    i32 7, label %9
  ]

7:                                                ; preds = %5
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator19isAllowedByWildcardEPNS_13SchemaGrammarEPNS_5QNameEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false)
  br label %12

9:                                                ; preds = %5
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator19isAllowedByWildcardEPNS_13SchemaGrammarEPNS_5QNameEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true)
  br label %12

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %5, %11, %9, %7
  %13 = phi i1 [ %8, %7 ], [ %10, %9 ], [ false, %11 ], [ true, %5 ]
  ret i1 %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard17wildcardIntersectENS_15ContentSpecNode9NodeTypesEjS2_j(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 !prof !34 {
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

declare noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator19isAllowedByWildcardEPNS_13SchemaGrammarEPNS_5QNameEjb(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!35 = !{!36, !38, i64 20}
!36 = !{!"_ZTSN11xercesc_2_75QNameE", !37, i64 0, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48}
!37 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!"any pointer", !39, i64 0}

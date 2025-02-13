; ModuleID = 'DOMChildNode.cpp'
source_filename = "DOMChildNode.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }

$_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl12isFirstChildEv = comdat any

@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl10FIRSTCHILDE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_712DOMChildNodeC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712DOMChildNodeC2Ev
@_ZN11xercesc_2_712DOMChildNodeC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712DOMChildNodeC2ERKS0_
@_ZN11xercesc_2_712DOMChildNodeD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712DOMChildNodeD2Ev

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_712DOMChildNodeC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 !prof !39 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_712DOMChildNodeC2ERKS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #0 align 2 !prof !40 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_712DOMChildNodeD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !40 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DOMChildNode14getNextSiblingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #2 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DOMChildNode13getParentNodeEPKNS_7DOMNodeE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !47 {
  %3 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %1) #5
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #5
  br i1 %4, label %5, label %7, !prof !48

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !49
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef readnone %0) unnamed_addr #1 !prof !47 !PGOFuncName !52 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #3 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !54
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !55
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DOMChildNode18getPreviousSiblingEPKNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !40 {
  %3 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %1) #5
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl12isFirstChildEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #5
  %5 = load ptr, ptr %0, align 8
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl12isFirstChildEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #3 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !54
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl10FIRSTCHILDE, align 2, !tbaa !55
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!38}

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
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37}
!36 = !{ptr @_ZNK11xercesc_2_712DOMChildNode13getParentNodeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE, i64 1262}
!37 = !{ptr @_ZNK11xercesc_2_712DOMChildNode13getParentNodeEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv, i64 1262}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 1200}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!"function_entry_count", i64 825}
!42 = !{!43, !44, i64 8}
!43 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !44, i64 0, !44, i64 8}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"function_entry_count", i64 1262}
!48 = !{!"branch_weights", i32 63, i32 1201}
!49 = !{!50, !44, i64 0}
!50 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !44, i64 0, !51, i64 8}
!51 = !{!"short", !45, i64 0}
!52 = !{!"DOMChildNode.cpp:_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE"}
!53 = !{!"function_entry_count", i64 2562}
!54 = !{!50, !51, i64 8}
!55 = !{!51, !51, i64 0}

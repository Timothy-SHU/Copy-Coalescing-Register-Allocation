; ModuleID = 'XalanSimplePrefixResolver.cpp'
source_filename = "XalanSimplePrefixResolver.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanSimplePrefixResolver" = type { %"class.xalanc_1_10::PrefixResolver", ptr, ptr, ptr }
%"class.xalanc_1_10::PrefixResolver" = type { ptr }

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_ = comdat any

@_ZTVN11xalanc_1_1025XalanSimplePrefixResolverE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1025XalanSimplePrefixResolverE, ptr @_ZN11xalanc_1_1025XalanSimplePrefixResolverD2Ev, ptr @_ZN11xalanc_1_1025XalanSimplePrefixResolverD0Ev, ptr @_ZNK11xalanc_1_1025XalanSimplePrefixResolver21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1025XalanSimplePrefixResolver6getURIEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1025XalanSimplePrefixResolverE = dso_local constant [43 x i8] c"N11xalanc_1_1025XalanSimplePrefixResolverE\00", align 1
@_ZTIN11xalanc_1_1014PrefixResolverE = external constant ptr
@_ZTIN11xalanc_1_1025XalanSimplePrefixResolverE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1025XalanSimplePrefixResolverE, ptr @_ZTIN11xalanc_1_1014PrefixResolverE }, align 8

@_ZN11xalanc_1_1025XalanSimplePrefixResolverC1ERKNS_14XalanDOMStringES3_S3_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1025XalanSimplePrefixResolverC2ERKNS_14XalanDOMStringES3_S3_
@_ZN11xalanc_1_1025XalanSimplePrefixResolverD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1025XalanSimplePrefixResolverD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1025XalanSimplePrefixResolverC2ERKNS_14XalanDOMStringES3_S3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #0 align 2 !prof !37 {
  tail call void @_ZN11xalanc_1_1014PrefixResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1025XalanSimplePrefixResolverE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanSimplePrefixResolver", ptr %0, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanSimplePrefixResolver", ptr %0, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !41
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSimplePrefixResolver", ptr %0, i64 0, i32 3
  store ptr %3, ptr %7, align 8, !tbaa !41
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014PrefixResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1025XalanSimplePrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 !prof !37 {
  tail call void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1025XalanSimplePrefixResolverD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xalanc_1_1025XalanSimplePrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  tail call void @_ZdlPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1025XalanSimplePrefixResolver21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSimplePrefixResolver", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %4) #6
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanSimplePrefixResolver", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = select i1 %5, ptr %7, ptr null
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat !prof !47 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #6
  ret i1 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XalanSimplePrefixResolver6getURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSimplePrefixResolver", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  ret ptr %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!36}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
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
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
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
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35}
!35 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 555646850}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !40, i64 0}
!44 = !{!45, !42, i64 8}
!45 = !{!"_ZTSN11xalanc_1_1025XalanSimplePrefixResolverE", !46, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!46 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!47 = !{!"function_entry_count", i64 555646850}
!48 = !{!45, !42, i64 24}

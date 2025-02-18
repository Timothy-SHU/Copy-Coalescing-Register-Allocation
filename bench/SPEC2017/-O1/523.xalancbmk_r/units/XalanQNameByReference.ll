; ModuleID = 'XalanQNameByReference.cpp'
source_filename = "XalanQNameByReference.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanQNameByReference" = type { %"class.xalanc_1_10::XalanQName", ptr, ptr }
%"class.xalanc_1_10::XalanQName" = type { ptr }

$_ZTSN11xalanc_1_1010XalanQNameE = comdat any

$_ZTIN11xalanc_1_1010XalanQNameE = comdat any

@_ZTVN11xalanc_1_1021XalanQNameByReferenceE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XalanQNameByReferenceE, ptr @_ZN11xalanc_1_1021XalanQNameByReferenceD2Ev, ptr @_ZN11xalanc_1_1021XalanQNameByReferenceD0Ev, ptr @_ZNK11xalanc_1_1021XalanQNameByReference12getLocalPartEv, ptr @_ZNK11xalanc_1_1021XalanQNameByReference12getNamespaceEv] }, align 8
@_ZN11xalanc_1_1010XalanQName13s_emptyStringE = external global %"class.xalanc_1_10::XalanDOMString", align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1021XalanQNameByReferenceE = dso_local constant [39 x i8] c"N11xalanc_1_1021XalanQNameByReferenceE\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1010XalanQNameE = linkonce_odr dso_local constant [28 x i8] c"N11xalanc_1_1010XalanQNameE\00", comdat, align 1
@_ZTIN11xalanc_1_1010XalanQNameE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1010XalanQNameE }, comdat, align 8
@_ZTIN11xalanc_1_1021XalanQNameByReferenceE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XalanQNameByReferenceE, ptr @_ZTIN11xalanc_1_1010XalanQNameE }, align 8

@_ZN11xalanc_1_1021XalanQNameByReferenceC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021XalanQNameByReferenceC2Ev
@_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_ = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1021XalanQNameByReferenceC2ERKNS_14XalanDOMStringES3_
@_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1021XalanQNameByReferenceC2ERKNS_14XalanDOMStringE
@_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_10XalanQNameE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1021XalanQNameByReferenceC2ERKNS_10XalanQNameE
@_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021XalanQNameByReferenceD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1021XalanQNameByReferenceC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanQNameByReferenceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %0, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1010XalanQName13s_emptyStringE, ptr %2, align 8, !tbaa !38
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %0, i64 0, i32 2
  store ptr @_ZN11xalanc_1_1010XalanQName13s_emptyStringE, ptr %3, align 8, !tbaa !43
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1021XalanQNameByReferenceC2ERKNS_14XalanDOMStringES3_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !44 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanQNameByReferenceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !43
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1021XalanQNameByReferenceC2ERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !45 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanQNameByReferenceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %0, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1010XalanQName13s_emptyStringE, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %0, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XalanQNameByReferenceC2ERKNS_10XalanQNameE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanQNameByReferenceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 3
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !47
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !38
  %8 = load ptr, ptr %1, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !48
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %0, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !43
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1021XalanQNameByReferenceD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !49 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1021XalanQNameByReferenceD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !prof !45 {
  tail call void @_ZdlPv(ptr noundef %0) #7
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XalanQNameByReference12getLocalPartEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #6 align 2 !prof !50 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  ret ptr %3
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XalanQNameByReference12getNamespaceEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #6 align 2 !prof !51 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  ret ptr %3
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { builtin nounwind }

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
!34 = !{!"function_entry_count", i64 1}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !41, i64 8}
!39 = !{!"_ZTSN11xalanc_1_1021XalanQNameByReferenceE", !40, i64 0, !41, i64 8, !41, i64 16}
!40 = !{!"_ZTSN11xalanc_1_1010XalanQNameE"}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!39, !41, i64 16}
!44 = !{!"function_entry_count", i64 111850948}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!"function_entry_count", i64 26}
!47 = !{!"VP", i32 0, i64 26, i64 8049669377434801377, i64 26}
!48 = !{!"VP", i32 0, i64 26, i64 1429807492782621726, i64 26}
!49 = !{!"function_entry_count", i64 111850982}
!50 = !{!"function_entry_count", i64 201224936}
!51 = !{!"function_entry_count", i64 111850989}

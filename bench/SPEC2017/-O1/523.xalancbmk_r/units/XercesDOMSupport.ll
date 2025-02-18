; ModuleID = 'XercesDOMSupport.cpp'
source_filename = "XercesDOMSupport.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XercesDOMSupport" = type { %"class.xalanc_1_10::DOMSupport", %"class.xalanc_1_10::DOMSupportDefault" }
%"class.xalanc_1_10::DOMSupport" = type { ptr }
%"class.xalanc_1_10::DOMSupportDefault" = type { %"class.xalanc_1_10::DOMSupport", %"class.xalanc_1_10::XalanDOMStringPool" }
%"class.xalanc_1_10::XalanDOMStringPool" = type { ptr, %"class.xalanc_1_10::XalanDOMStringAllocator", i64, %"class.xalanc_1_10::XalanDOMStringHashTable" }
%"class.xalanc_1_10::XalanDOMStringAllocator" = type { %"class.xalanc_1_10::ArenaAllocator" }
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringHashTable" = type <{ i64, i64, %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", i64, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" = type { ptr, ptr, i64 }

@_ZTVN11xalanc_1_1016XercesDOMSupportE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1016XercesDOMSupportE, ptr @_ZN11xalanc_1_1016XercesDOMSupportD2Ev, ptr @_ZN11xalanc_1_1016XercesDOMSupportD0Ev, ptr @_ZN11xalanc_1_1016XercesDOMSupport5resetEv, ptr @_ZNK11xalanc_1_1016XercesDOMSupport20getUnparsedEntityURIERKNS_14XalanDOMStringERKNS_13XalanDocumentE, ptr @_ZNK11xalanc_1_1016XercesDOMSupport11isNodeAfterERKNS_9XalanNodeES3_] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1016XercesDOMSupportE = dso_local constant [34 x i8] c"N11xalanc_1_1016XercesDOMSupportE\00", align 1
@_ZTIN11xalanc_1_1010DOMSupportE = external constant ptr
@_ZTIN11xalanc_1_1016XercesDOMSupportE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1016XercesDOMSupportE, ptr @_ZTIN11xalanc_1_1010DOMSupportE }, align 8

@_ZN11xalanc_1_1016XercesDOMSupportC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1016XercesDOMSupportC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1016XercesDOMSupportD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1016XercesDOMSupportD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1016XercesDOMSupportC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xalanc_1_1010DOMSupportC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1016XercesDOMSupportE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMSupport", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1017DOMSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1010DOMSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  resume { ptr, i32 } %6
}

declare void @_ZN11xalanc_1_1010DOMSupportC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1017DOMSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1010DOMSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1016XercesDOMSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #3 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1016XercesDOMSupportE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMSupport", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1017DOMSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #5
  tail call void @_ZN11xalanc_1_1010DOMSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017DOMSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1016XercesDOMSupportD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #3 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1016XercesDOMSupportE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMSupport", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1017DOMSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #5
  tail call void @_ZN11xalanc_1_1010DOMSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  tail call void @_ZdlPv(ptr noundef %0) #6
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1016XercesDOMSupport5resetEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMSupport", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1017DOMSupportDefault5resetEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
  ret void
}

declare void @_ZN11xalanc_1_1017DOMSupportDefault5resetEv(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1016XercesDOMSupport20getUnparsedEntityURIERKNS_14XalanDOMStringERKNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMSupport", ptr %0, i64 0, i32 1
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017DOMSupportDefault20getUnparsedEntityURIERKNS_14XalanDOMStringERKNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret ptr %5
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017DOMSupportDefault20getUnparsedEntityURIERKNS_14XalanDOMStringERKNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1016XercesDOMSupport11isNodeAfterERKNS_9XalanNodeES3_(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !34 {
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1011DOMServices11isNodeAfterERKNS_9XalanNodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %4
}

declare noundef zeroext i1 @_ZN11xalanc_1_1011DOMServices11isNodeAfterERKNS_9XalanNodeES3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { builtin nounwind }

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
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}

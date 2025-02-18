; ModuleID = 'FormatterToSourceTree.cpp'
source_filename = "FormatterToSourceTree.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::FormatterToSourceTree" = type { %"class.xalanc_1_10::FormatterListener", ptr, ptr, ptr, %"class.xalanc_1_10::XalanVector", ptr, %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::FormatterListener" = type { %"class.xercesc_2_7::DocumentHandler", ptr, i32, i32 }
%"class.xercesc_2_7::DocumentHandler" = type { ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.1", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanSourceTreeElement" = type { %"class.xalanc_1_10::XalanElement", ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%"class.xalanc_1_10::XalanElement" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

@_ZTVN11xalanc_1_1021FormatterToSourceTreeE = dso_local unnamed_addr constant { [23 x ptr] } { [23 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021FormatterToSourceTreeE, ptr @_ZN11xalanc_1_1021FormatterToSourceTreeD2Ev, ptr @_ZN11xalanc_1_1021FormatterToSourceTreeD0Ev, ptr @_ZN11xalanc_1_1021FormatterToSourceTree10charactersEPKtj, ptr @_ZN11xalanc_1_1021FormatterToSourceTree11endDocumentEv, ptr @_ZN11xalanc_1_1021FormatterToSourceTree10endElementEPKt, ptr @_ZN11xalanc_1_1021FormatterToSourceTree19ignorableWhitespaceEPKtj, ptr @_ZN11xalanc_1_1021FormatterToSourceTree21processingInstructionEPKtS2_, ptr @_ZN11xalanc_1_1021FormatterToSourceTree13resetDocumentEv, ptr @_ZN11xalanc_1_1021FormatterToSourceTree18setDocumentLocatorEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1021FormatterToSourceTree13startDocumentEv, ptr @_ZN11xalanc_1_1021FormatterToSourceTree12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1021FormatterToSourceTree13charactersRawEPKtj, ptr @_ZN11xalanc_1_1021FormatterToSourceTree7commentEPKt, ptr @_ZN11xalanc_1_1021FormatterToSourceTree5cdataEPKtj, ptr @_ZN11xalanc_1_1021FormatterToSourceTree15entityReferenceEPKt, ptr @_ZNK11xalanc_1_1017FormatterListener9getWriterEv, ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypeSystemEv, ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypePublicEv, ptr @_ZNK11xalanc_1_1017FormatterListener11getEncodingEv, ptr @_ZNK11xalanc_1_1017FormatterListener12getMediaTypeEv, ptr @_ZNK11xalanc_1_1017FormatterListener9getIndentEv] }, align 8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZN11xalanc_1_1017FormatterListener10s_piTargetE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1017FormatterListener8s_piDataE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1021FormatterToSourceTreeE = dso_local constant [39 x i8] c"N11xalanc_1_1021FormatterToSourceTreeE\00", align 1
@_ZTIN11xalanc_1_1017FormatterListenerE = external constant ptr
@_ZTIN11xalanc_1_1021FormatterToSourceTreeE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021FormatterToSourceTreeE, ptr @_ZTIN11xalanc_1_1017FormatterListenerE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1021FormatterToSourceTreeC1ERN11xercesc_2_713MemoryManagerEPNS_23XalanSourceTreeDocumentE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1021FormatterToSourceTreeC2ERN11xercesc_2_713MemoryManagerEPNS_23XalanSourceTreeDocumentE
@_ZN11xalanc_1_1021FormatterToSourceTreeC1EPNS_23XalanSourceTreeDocumentEPNS_31XalanSourceTreeDocumentFragmentERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1021FormatterToSourceTreeC2EPNS_23XalanSourceTreeDocumentEPNS_31XalanSourceTreeDocumentFragmentERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1021FormatterToSourceTreeD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021FormatterToSourceTreeD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTreeC2ERN11xercesc_2_713MemoryManagerEPNS_23XalanSourceTreeDocumentE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  tail call void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 4)
  store ptr getelementptr inbounds ({ [23 x ptr] }, ptr @_ZTVN11xalanc_1_1021FormatterToSourceTreeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %1, ptr %6, align 8, !tbaa !81
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  store ptr %1, ptr %8, align 8, !tbaa !82
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 6, i32 1
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %11 unwind label %12, !prof !83

11:                                               ; preds = %3
  ret void

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #16
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #16
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %13
}

declare void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !85
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !86

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = load ptr, ptr %0, align 8, !tbaa !82
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !88

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #17
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !90
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !91

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = load ptr, ptr %0, align 8, !tbaa !81
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !93

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #17
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTreeC2EPNS_23XalanSourceTreeDocumentEPNS_31XalanSourceTreeDocumentFragmentERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  tail call void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 4)
  store ptr getelementptr inbounds ({ [23 x ptr] }, ptr @_ZTVN11xalanc_1_1021FormatterToSourceTreeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !67
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !95
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 3
  store ptr null, ptr %7, align 8, !tbaa !96
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4
  store ptr %3, ptr %8, align 8, !tbaa !81
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4, i32 1
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  store ptr %3, ptr %10, align 8, !tbaa !82
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 6, i32 1
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %13 unwind label %14

13:                                               ; preds = %4
  ret void

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #16
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #16
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %15
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTreeD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 align 2 !prof !63 {
  store ptr getelementptr inbounds ({ [23 x ptr] }, ptr @_ZTVN11xalanc_1_1021FormatterToSourceTreeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTreeD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 align 2 !prof !94 {
  store ptr getelementptr inbounds ({ [23 x ptr] }, ptr @_ZTVN11xalanc_1_1021FormatterToSourceTreeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  tail call void @_ZdlPv(ptr noundef %0) #18
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree18setDocumentLocatorEPKN11xercesc_2_77LocatorE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #6 align 2 !prof !94 {
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #7 align 2 !prof !97 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 3
  store ptr null, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !98
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %8, label %7, !prof !99

7:                                                ; preds = %1
  store i64 0, ptr %4, align 8, !tbaa !98
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 5
  store ptr null, ptr %9, align 8, !tbaa !100
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 6
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 6, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !101
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14, !prof !99

14:                                               ; preds = %8
  store i64 0, ptr %11, align 8, !tbaa !101
  br label %15

15:                                               ; preds = %14, %8
  %16 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 6, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !85
  %18 = icmp ult i64 %17, 50
  br i1 %18, label %19, label %20, !prof !102

19:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 50)
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7
  %22 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7, i32 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !103
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %28, label %25, !prof !99

25:                                               ; preds = %20
  %26 = load i64, ptr %22, align 8, !tbaa !103
  %27 = sub i64 %26, %23
  store i64 %27, ptr %22, align 8, !tbaa !103
  br label %28

28:                                               ; preds = %25, %20
  %29 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7, i32 1
  store i32 0, ptr %29, align 8, !tbaa !104
  %30 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7, i32 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !105
  %32 = icmp ult i64 %31, 101
  br i1 %32, label %33, label %34, !prof !102

33:                                               ; preds = %28
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 101)
  br label %34

34:                                               ; preds = %28, %33
  %35 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  store ptr null, ptr %2, align 8, !tbaa !106
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree11endDocumentEv(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #7 align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5, !prof !107

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !104
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9, !prof !108

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7, i32 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !103
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = select i1 %12, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %14, !prof !109
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree12doCharactersEPKtj(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %15, i32 noundef %7)
  %16 = load i64, ptr %10, align 8, !tbaa !103
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %19, label %18, !prof !109

18:                                               ; preds = %9
  store i64 0, ptr %10, align 8, !tbaa !103
  br label %19

19:                                               ; preds = %18, %9
  store i32 0, ptr %6, align 8, !tbaa !104
  br label %20

20:                                               ; preds = %19, %5, %1
  %21 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !98
  %23 = add i64 %22, -1
  store i64 %23, ptr %21, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #7 align 2 !prof !94 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !104
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5, !prof !108

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7, i32 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !103
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = select i1 %8, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %10, !prof !109
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree12doCharactersEPKtj(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %11, i32 noundef %3)
  %12 = load i64, ptr %6, align 8, !tbaa !103
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %17, label %14, !prof !109

14:                                               ; preds = %5
  %15 = load i64, ptr %6, align 8, !tbaa !103
  %16 = sub i64 %15, %12
  store i64 %16, ptr %6, align 8, !tbaa !103
  br label %17

17:                                               ; preds = %14, %5
  store i32 0, ptr %2, align 8, !tbaa !104
  br label %18

18:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree12startElementEPKtRN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !94 {
  %4 = alloca ptr, align 8
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = tail call noundef ptr @_ZN11xalanc_1_1021FormatterToSourceTree17createElementNodeEPKtRN11xercesc_2_713AttributeListEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %6)
  store ptr %7, ptr %4, align 8, !tbaa !106
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !95
  %12 = load ptr, ptr %5, align 8, !tbaa !96
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 5
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = icmp eq ptr %11, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %13, align 8, !tbaa !106
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %7)
  br label %22

21:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull %18, ptr noundef %7)
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull %11)
  br label %22

22:                                               ; preds = %21, %20
  store ptr %7, ptr %13, align 8, !tbaa !106
  br label %31

23:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1023XalanSourceTreeDocument15appendChildNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(1056) %9, ptr noundef %7)
  br label %31

24:                                               ; preds = %3
  %25 = load ptr, ptr %13, align 8, !tbaa !106
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef %7)
  br label %30

28:                                               ; preds = %24
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull %25, ptr noundef %7)
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %7, i64 0, i32 4
  store ptr %12, ptr %29, align 8, !tbaa !110
  br label %30

30:                                               ; preds = %28, %27
  store ptr %7, ptr %13, align 8, !tbaa !106
  br label %31

31:                                               ; preds = %22, %23, %30
  %32 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %33 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 6
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %34 = load ptr, ptr %4, align 8, !tbaa !106
  store ptr %34, ptr %5, align 8, !tbaa !96
  store ptr null, ptr %13, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1021FormatterToSourceTree17createElementNodeEPKtRN11xercesc_2_713AttributeListEPNS_22XalanSourceTreeElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 align 2 !prof !94 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterListener", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  br i1 %7, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtRKN11xercesc_2_713AttributeListERKNS_14PrefixResolverEPNS_9XalanNodeESB_SB_b(ptr noundef nonnull align 8 dereferenceable(1056) %9, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %3, ptr noundef null, ptr noundef null, i1 noundef zeroext false)
  br label %14

12:                                               ; preds = %4
  %13 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtRKN11xercesc_2_713AttributeListEPNS_9XalanNodeES8_S8_b(ptr noundef nonnull align 8 dereferenceable(1056) %9, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef null, ptr noundef null, i1 noundef zeroext false)
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  ret ptr %15
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree10endElementEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 !prof !94 {
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !98
  %5 = add i64 %4, -1
  store i64 %5, ptr %3, align 8, !tbaa !98
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = getelementptr ptr, ptr %7, i64 %5
  %9 = getelementptr ptr, ptr %8, i64 -1
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !96
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 6, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 6, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !101
  %16 = getelementptr ptr, ptr %13, i64 %15
  %17 = getelementptr ptr, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !tbaa !106
  %19 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 5
  store ptr %18, ptr %19, align 8, !tbaa !100
  %20 = add i64 %15, -1
  store i64 %20, ptr %14, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !115 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7, !prof !109

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7
  %9 = icmp eq i32 %2, -1
  br i1 %9, label %10, label %13, !prof !109

10:                                               ; preds = %7
  %11 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  %12 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef %1, i32 noundef %11)
  br label %44

13:                                               ; preds = %7
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef %1, i32 noundef %2)
  br label %44

15:                                               ; preds = %3
  %16 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !96
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %23, %19 ], [ %1, %15 ]
  %21 = load i16, ptr %20, align 2, !tbaa !116
  %22 = icmp eq i16 %21, 0
  %23 = getelementptr inbounds i16, ptr %20, i64 1
  br i1 %22, label %24, label %19, !llvm.loop !118

24:                                               ; preds = %19
  %25 = ptrtoint ptr %20 to i64
  %26 = ptrtoint ptr %1 to i64
  %27 = sub i64 %25, %26
  %28 = lshr exact i64 %27, 1
  %29 = trunc i64 %28 to i32
  %30 = tail call noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceEPKtjj(ptr noundef %1, i32 noundef 0, i32 noundef %29)
  br i1 %30, label %44, label %31

31:                                               ; preds = %24
  %32 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %32, i32 noundef 3)
          to label %33 unwind label %34

33:                                               ; preds = %31
  tail call void @__cxa_throw(ptr nonnull %32, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #19
  unreachable

34:                                               ; preds = %31
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %32) #16
  resume { ptr, i32 } %35

36:                                               ; preds = %15
  %37 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7
  %38 = icmp eq i32 %2, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  %41 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %37, ptr noundef %1, i32 noundef %40)
  br label %44

42:                                               ; preds = %36
  %43 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %37, ptr noundef %1, i32 noundef %2)
  br label %44

44:                                               ; preds = %42, %39, %13, %10, %24
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree13charactersRawEPKtj(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !94 {
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree23doProcessingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull @_ZN11xalanc_1_1017FormatterListener10s_piTargetE, ptr noundef nonnull @_ZN11xalanc_1_1017FormatterListener8s_piDataE)
  %4 = load ptr, ptr %0, align 8, !tbaa !64
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree23doProcessingInstructionEPKtS2_(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !94 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 5
  %11 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument31createProcessingInstructionNodeEPKtS2_PNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056) %5, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null)
  %12 = icmp eq ptr %9, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = icmp eq ptr %7, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %10, align 8, !tbaa !106
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %11)
  br label %20

19:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull %16, ptr noundef %11)
  tail call void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull %7)
  br label %20

20:                                               ; preds = %19, %18
  store ptr %11, ptr %10, align 8, !tbaa !106
  br label %28

21:                                               ; preds = %13
  tail call void @_ZN11xalanc_1_1023XalanSourceTreeDocument15appendChildNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(1056) %5, ptr noundef %11)
  br label %28

22:                                               ; preds = %3
  %23 = load ptr, ptr %10, align 8, !tbaa !106
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef %11)
  br label %27

26:                                               ; preds = %22
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull %23, ptr noundef %11)
  tail call void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction9setParentEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull %9)
  br label %27

27:                                               ; preds = %26, %25
  store ptr %11, ptr %10, align 8, !tbaa !106
  br label %28

28:                                               ; preds = %20, %21, %27
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree15entityReferenceEPKt(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #6 align 2 !prof !94 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree19ignorableWhitespaceEPKtj(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !94 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !98
  %6 = icmp ugt i64 %5, 1
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createTextIWSNodeEPKtjPNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056) %12, ptr noundef %1, i32 noundef %2, ptr noundef %9, ptr noundef null, ptr noundef null)
  %14 = load ptr, ptr %10, align 8, !tbaa !106
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef %13)
  br label %18

17:                                               ; preds = %7
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull %14, ptr noundef %13)
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText9setParentEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %9)
  br label %18

18:                                               ; preds = %16, %17
  store ptr %13, ptr %10, align 8, !tbaa !106
  br label %36

19:                                               ; preds = %3
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !95
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %24 = load ptr, ptr %20, align 8, !tbaa !95
  %25 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 5
  %26 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !67
  %28 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !96
  %30 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createTextIWSNodeEPKtjPNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056) %27, ptr noundef %1, i32 noundef %2, ptr noundef %29, ptr noundef null, ptr noundef null)
  %31 = load ptr, ptr %25, align 8, !tbaa !106
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  tail call void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef %30)
  br label %35

34:                                               ; preds = %23
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull %31, ptr noundef %30)
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef %24)
  br label %35

35:                                               ; preds = %33, %34
  store ptr %30, ptr %25, align 8, !tbaa !106
  br label %36

36:                                               ; preds = %19, %35, %18
  ret void
}

declare noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createTextIWSNodeEPKtjPNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree21processingInstructionEPKtS2_(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !94 {
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree23doProcessingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree13resetDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !94 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree7commentEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !94 {
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %1, %2 ], [ %9, %5 ]
  %7 = load i16, ptr %6, align 2, !tbaa !116
  %8 = icmp eq i16 %7, 0
  %9 = getelementptr inbounds i16, ptr %6, i64 1
  br i1 %8, label %10, label %5, !llvm.loop !118

10:                                               ; preds = %5
  %11 = ptrtoint ptr %6 to i64
  %12 = ptrtoint ptr %1 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 1
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !96
  %18 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createCommentNodeEPKtjPNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056) %4, ptr noundef %1, i32 noundef %15, ptr noundef %17, ptr noundef null, ptr noundef null)
  %19 = load ptr, ptr %3, align 8, !tbaa !67
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !95
  %22 = load ptr, ptr %16, align 8, !tbaa !96
  %23 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 5
  %24 = icmp eq ptr %22, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %10
  %26 = icmp eq ptr %21, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %23, align 8, !tbaa !106
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  tail call void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef %18)
  br label %32

31:                                               ; preds = %27
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull %28, ptr noundef %18)
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeComment9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull %21)
  br label %32

32:                                               ; preds = %31, %30
  store ptr %18, ptr %23, align 8, !tbaa !106
  br label %40

33:                                               ; preds = %25
  tail call void @_ZN11xalanc_1_1023XalanSourceTreeDocument15appendChildNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(1056) %19, ptr noundef %18)
  br label %40

34:                                               ; preds = %10
  %35 = load ptr, ptr %23, align 8, !tbaa !106
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(72) %22, ptr noundef %18)
  br label %39

38:                                               ; preds = %34
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull %35, ptr noundef %18)
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeComment9setParentEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull %22)
  br label %39

39:                                               ; preds = %38, %37
  store ptr %18, ptr %23, align 8, !tbaa !106
  br label %40

40:                                               ; preds = %32, %33, %39
  ret void
}

declare noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createCommentNodeEPKtjPNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree5cdataEPKtj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i32 %2) unnamed_addr #6 align 2 !prof !94 {
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree12doCharactersEPKtj(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !115 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7, !prof !121

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument14createTextNodeEPKtjPNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056) %10, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5, ptr noundef null, ptr noundef null)
  %12 = load ptr, ptr %8, align 8, !tbaa !106
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef %11)
  br label %16

15:                                               ; preds = %7
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull %12, ptr noundef %11)
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText9setParentEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %5)
  br label %16

16:                                               ; preds = %14, %15
  store ptr %11, ptr %8, align 8, !tbaa !106
  br label %36

17:                                               ; preds = %3
  %18 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21, !prof !109

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 5
  %23 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !67
  %25 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument14createTextNodeEPKtjPNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056) %24, ptr noundef %1, i32 noundef %2, ptr noundef null, ptr noundef null, ptr noundef null)
  %26 = load ptr, ptr %22, align 8, !tbaa !106
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29, !prof !121

28:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef %25)
  br label %30

29:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull %26, ptr noundef %25)
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull %19)
  br label %30

30:                                               ; preds = %28, %29
  store ptr %25, ptr %22, align 8, !tbaa !106
  br label %36

31:                                               ; preds = %17
  %32 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %32, i32 noundef 3)
          to label %33 unwind label %34

33:                                               ; preds = %31
  tail call void @__cxa_throw(ptr nonnull %32, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #19
  unreachable

34:                                               ; preds = %31
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %32) #16
  resume { ptr, i32 } %35

36:                                               ; preds = %30, %16
  ret void
}

declare noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument14createTextNodeEPKtjPNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtRKN11xercesc_2_713AttributeListERKNS_14PrefixResolverEPNS_9XalanNodeESB_SB_b(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtRKN11xercesc_2_713AttributeListEPNS_9XalanNodeES8_S8_b(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument31createProcessingInstructionNodeEPKtS2_PNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1017FormatterListener9getWriterEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypeSystemEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypePublicEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener12getMediaTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef i32 @_ZNK11xalanc_1_1017FormatterListener9getIndentEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !105
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !123

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !124
  %8 = load ptr, ptr %0, align 8, !tbaa !125
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !126

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #17
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat !prof !94 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !127 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !125
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !103
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !128

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !125
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !103
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !105
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !64
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !129
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !124
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !124
  %20 = load i64, ptr %5, align 8, !tbaa !103
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !130

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !125
  %24 = load i64, ptr %10, align 8, !tbaa !103
  %25 = load i64, ptr %11, align 8, !tbaa !105
  %26 = load ptr, ptr %17, align 8, !tbaa !124
  store ptr %4, ptr %3, align 8, !tbaa !125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !105
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !124
  %33 = load ptr, ptr %3, align 8, !tbaa !125
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #17
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !131

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !64
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !132
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !125
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !105
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !124
  store ptr %53, ptr %0, align 8, !tbaa !125
  store i64 %52, ptr %5, align 8, !tbaa !103
  store i64 %51, ptr %55, align 8, !tbaa !105
  store ptr %50, ptr %57, align 8, !tbaa !124
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !133

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !64
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !134

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #17
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !135 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  store ptr %2, ptr %0, align 8, !tbaa !125
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !103
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !128

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !125
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !103
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !105
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !64
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !136
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !124
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !124
  %24 = load i64, ptr %9, align 8, !tbaa !103
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !130

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !125
  %28 = load i64, ptr %6, align 8, !tbaa !103
  %29 = load i64, ptr %7, align 8, !tbaa !105
  %30 = load ptr, ptr %8, align 8, !tbaa !124
  %31 = load ptr, ptr %5, align 8, !tbaa !125
  store ptr %31, ptr %0, align 8, !tbaa !125
  %32 = load i64, ptr %14, align 8, !tbaa !103
  store i64 %32, ptr %6, align 8, !tbaa !103
  %33 = load i64, ptr %15, align 8, !tbaa !105
  store i64 %33, ptr %7, align 8, !tbaa !105
  %34 = load ptr, ptr %21, align 8, !tbaa !124
  store ptr %34, ptr %8, align 8, !tbaa !124
  store ptr %27, ptr %5, align 8, !tbaa !125
  store i64 %28, ptr %14, align 8, !tbaa !103
  store i64 %29, ptr %15, align 8, !tbaa !105
  store ptr %30, ptr %21, align 8, !tbaa !124
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !130

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !64
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !105
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !124
  %50 = load ptr, ptr %5, align 8, !tbaa !125
  %51 = load ptr, ptr %50, align 8, !tbaa !64
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #17
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !131

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !64
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !137
  store ptr %65, ptr %8, align 8, !tbaa !124
  store i64 %3, ptr %7, align 8, !tbaa !105
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !139

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !103
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !124
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !105
  br i1 %18, label %21, label %39, !prof !140

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !141

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !142

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !124
  %28 = load i64, ptr %12, align 8, !tbaa !103
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !116
  store i16 %34, ptr %32, align 2, !tbaa !116
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !143, !llvm.loop !144

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !145

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !125
  store ptr %42, ptr %5, align 8, !tbaa !125
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !103
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !105
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !64
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !146
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !124
  %51 = load i64, ptr %43, align 8, !tbaa !103
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !124
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !147

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !124
  %56 = load i64, ptr %43, align 8, !tbaa !103
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !147

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !124
  %60 = load i64, ptr %43, align 8, !tbaa !103
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !124
  %63 = load i64, ptr %12, align 8, !tbaa !103
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !147

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !125
  %67 = load i64, ptr %12, align 8, !tbaa !103
  %68 = load i64, ptr %19, align 8, !tbaa !105
  %69 = load ptr, ptr %15, align 8, !tbaa !124
  %70 = load ptr, ptr %5, align 8, !tbaa !125
  store ptr %70, ptr %0, align 8, !tbaa !125
  %71 = load i64, ptr %43, align 8, !tbaa !103
  store i64 %71, ptr %12, align 8, !tbaa !103
  %72 = load i64, ptr %44, align 8, !tbaa !105
  store i64 %72, ptr %19, align 8, !tbaa !105
  %73 = load ptr, ptr %50, align 8, !tbaa !124
  store ptr %73, ptr %15, align 8, !tbaa !124
  store ptr %66, ptr %5, align 8, !tbaa !125
  store i64 %67, ptr %43, align 8, !tbaa !103
  store i64 %68, ptr %44, align 8, !tbaa !105
  store ptr %69, ptr %50, align 8, !tbaa !124
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !148

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !64
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !149

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #17
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !105
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !124
  %89 = load ptr, ptr %5, align 8, !tbaa !125
  %90 = load ptr, ptr %89, align 8, !tbaa !64
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #17
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !150

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !151

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !151

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !152, !llvm.loop !153

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !154, !llvm.loop !155

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !156
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds i16, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %121)
  %122 = getelementptr inbounds i16, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !157

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 1
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i16, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %131, ptr align 2 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !103
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !158 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !103
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !105
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !159

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !124
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !116
  store i16 %13, ptr %12, align 2, !tbaa !116
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !103
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !125
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !125
  %24 = load i64, ptr %4, align 8, !tbaa !103
  %25 = load i64, ptr %6, align 8, !tbaa !105
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !124
  %28 = load ptr, ptr %3, align 8, !tbaa !125
  store ptr %28, ptr %0, align 8, !tbaa !125
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !103
  store i64 %30, ptr %4, align 8, !tbaa !103
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !105
  store i64 %32, ptr %6, align 8, !tbaa !105
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !124
  store ptr %34, ptr %26, align 8, !tbaa !124
  store ptr %23, ptr %3, align 8, !tbaa !125
  store i64 %24, ptr %29, align 8, !tbaa !103
  store i64 %25, ptr %31, align 8, !tbaa !105
  store ptr %27, ptr %33, align 8, !tbaa !124
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !64
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !105
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !124
  %52 = load ptr, ptr %3, align 8, !tbaa !125
  %53 = load ptr, ptr %52, align 8, !tbaa !64
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #17
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceEPKtjj(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !82
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !82
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !101
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !85
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = load ptr, ptr %3, align 8, !tbaa !82
  store ptr %12, ptr %0, align 8, !tbaa !82
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !101
  store i64 %14, ptr %6, align 8, !tbaa !101
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !85
  store i64 %16, ptr %8, align 8, !tbaa !85
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !87
  store ptr %18, ptr %10, align 8, !tbaa !87
  store ptr %5, ptr %3, align 8, !tbaa !82
  store i64 %7, ptr %13, align 8, !tbaa !101
  store i64 %9, ptr %15, align 8, !tbaa !85
  store ptr %11, ptr %17, align 8, !tbaa !87
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !161

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !64
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24, !prof !162

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #17
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !163 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !82
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !164

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !82
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !101
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !85
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !64
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !165
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !87
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !87
  %24 = load i64, ptr %9, align 8, !tbaa !101
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !166

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !82
  %28 = load i64, ptr %6, align 8, !tbaa !101
  %29 = load i64, ptr %7, align 8, !tbaa !85
  %30 = load ptr, ptr %8, align 8, !tbaa !87
  %31 = load ptr, ptr %5, align 8, !tbaa !82
  store ptr %31, ptr %0, align 8, !tbaa !82
  %32 = load i64, ptr %14, align 8, !tbaa !101
  store i64 %32, ptr %6, align 8, !tbaa !101
  %33 = load i64, ptr %15, align 8, !tbaa !85
  store i64 %33, ptr %7, align 8, !tbaa !85
  %34 = load ptr, ptr %21, align 8, !tbaa !87
  store ptr %34, ptr %8, align 8, !tbaa !87
  store ptr %27, ptr %5, align 8, !tbaa !82
  store i64 %28, ptr %14, align 8, !tbaa !101
  store i64 %29, ptr %15, align 8, !tbaa !85
  store ptr %30, ptr %21, align 8, !tbaa !87
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !166

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !64
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !85
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !87
  %50 = load ptr, ptr %5, align 8, !tbaa !82
  %51 = load ptr, ptr %50, align 8, !tbaa !64
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #17
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !167

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !64
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !168
  store ptr %65, ptr %8, align 8, !tbaa !87
  store i64 %3, ptr %7, align 8, !tbaa !85
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !169 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !170

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !101
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !87
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !85
  br i1 %18, label %21, label %39, !prof !166

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !170

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !171

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !87
  %28 = load i64, ptr %12, align 8, !tbaa !101
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !106
  store ptr %34, ptr %32, align 8, !tbaa !106
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !172, !llvm.loop !173

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !82
  store ptr %42, ptr %5, align 8, !tbaa !82
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !101
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !85
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !64
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !87
  %51 = load i64, ptr %43, align 8, !tbaa !101
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !87
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !87
  %56 = load i64, ptr %43, align 8, !tbaa !101
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !87
  %60 = load i64, ptr %43, align 8, !tbaa !101
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !87
  %63 = load i64, ptr %12, align 8, !tbaa !101
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !82
  %67 = load i64, ptr %12, align 8, !tbaa !101
  %68 = load i64, ptr %19, align 8, !tbaa !85
  %69 = load ptr, ptr %15, align 8, !tbaa !87
  %70 = load ptr, ptr %5, align 8, !tbaa !82
  store ptr %70, ptr %0, align 8, !tbaa !82
  %71 = load i64, ptr %43, align 8, !tbaa !101
  store i64 %71, ptr %12, align 8, !tbaa !101
  %72 = load i64, ptr %44, align 8, !tbaa !85
  store i64 %72, ptr %19, align 8, !tbaa !85
  %73 = load ptr, ptr %50, align 8, !tbaa !87
  store ptr %73, ptr %15, align 8, !tbaa !87
  store ptr %66, ptr %5, align 8, !tbaa !82
  store i64 %67, ptr %43, align 8, !tbaa !101
  store i64 %68, ptr %44, align 8, !tbaa !85
  store ptr %69, ptr %50, align 8, !tbaa !87
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !64
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #17
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !85
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !87
  %89 = load ptr, ptr %5, align 8, !tbaa !82
  %90 = load ptr, ptr %89, align 8, !tbaa !64
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #17
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !174

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !175

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %100, i1 false)
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds ptr, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !176

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 3
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds ptr, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %131, ptr align 8 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !101
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !101
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !85
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !178

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !106
  store ptr %13, ptr %12, align 8, !tbaa !106
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !101
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !179
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !82
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !180

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !82
  %24 = load i64, ptr %4, align 8, !tbaa !101
  %25 = load i64, ptr %6, align 8, !tbaa !85
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !87
  %28 = load ptr, ptr %3, align 8, !tbaa !82
  store ptr %28, ptr %0, align 8, !tbaa !82
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !101
  store i64 %30, ptr %4, align 8, !tbaa !101
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !85
  store i64 %32, ptr %6, align 8, !tbaa !85
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !87
  store ptr %34, ptr %26, align 8, !tbaa !87
  store ptr %23, ptr %3, align 8, !tbaa !82
  store i64 %24, ptr %29, align 8, !tbaa !101
  store i64 %25, ptr %31, align 8, !tbaa !85
  store ptr %27, ptr %33, align 8, !tbaa !87
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !179

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !64
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !181

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !85
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !87
  %52 = load ptr, ptr %3, align 8, !tbaa !82
  %53 = load ptr, ptr %52, align 8, !tbaa !64
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #17
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !98
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !90
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !183

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !106
  store ptr %13, ptr %12, align 8, !tbaa !106
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !98
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !83
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !81
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !83

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !81
  %24 = load i64, ptr %4, align 8, !tbaa !98
  %25 = load i64, ptr %6, align 8, !tbaa !90
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !92
  %28 = load ptr, ptr %3, align 8, !tbaa !81
  store ptr %28, ptr %0, align 8, !tbaa !81
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !98
  store i64 %30, ptr %4, align 8, !tbaa !98
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !90
  store i64 %32, ptr %6, align 8, !tbaa !90
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !92
  store ptr %34, ptr %26, align 8, !tbaa !92
  store ptr %23, ptr %3, align 8, !tbaa !81
  store i64 %24, ptr %29, align 8, !tbaa !98
  store i64 %25, ptr %31, align 8, !tbaa !90
  store ptr %27, ptr %33, align 8, !tbaa !92
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !83

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !64
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !90
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !92
  %52 = load ptr, ptr %3, align 8, !tbaa !81
  %53 = load ptr, ptr %52, align 8, !tbaa !64
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #17
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !81
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !98
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !184

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !81
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !98
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !90
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !64
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !92
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !92
  %24 = load i64, ptr %9, align 8, !tbaa !98
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !81
  %28 = load i64, ptr %6, align 8, !tbaa !98
  %29 = load i64, ptr %7, align 8, !tbaa !90
  %30 = load ptr, ptr %8, align 8, !tbaa !92
  %31 = load ptr, ptr %5, align 8, !tbaa !81
  store ptr %31, ptr %0, align 8, !tbaa !81
  %32 = load i64, ptr %14, align 8, !tbaa !98
  store i64 %32, ptr %6, align 8, !tbaa !98
  %33 = load i64, ptr %15, align 8, !tbaa !90
  store i64 %33, ptr %7, align 8, !tbaa !90
  %34 = load ptr, ptr %21, align 8, !tbaa !92
  store ptr %34, ptr %8, align 8, !tbaa !92
  store ptr %27, ptr %5, align 8, !tbaa !81
  store i64 %28, ptr %14, align 8, !tbaa !98
  store i64 %29, ptr %15, align 8, !tbaa !90
  store ptr %30, ptr %21, align 8, !tbaa !92
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !64
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !90
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !92
  %50 = load ptr, ptr %5, align 8, !tbaa !81
  %51 = load ptr, ptr %50, align 8, !tbaa !64
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #17
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !91

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !64
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !185
  store ptr %65, ptr %8, align 8, !tbaa !92
  store i64 %3, ptr %7, align 8, !tbaa !90
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !98
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !90
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !92
  %28 = load i64, ptr %12, align 8, !tbaa !98
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !106
  store ptr %34, ptr %32, align 8, !tbaa !106
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !llvm.loop !186

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !81
  store ptr %42, ptr %5, align 8, !tbaa !81
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !98
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !90
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !64
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !92
  %51 = load i64, ptr %43, align 8, !tbaa !98
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !92
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !92
  %56 = load i64, ptr %43, align 8, !tbaa !98
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !92
  %60 = load i64, ptr %43, align 8, !tbaa !98
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !92
  %63 = load i64, ptr %12, align 8, !tbaa !98
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !81
  %67 = load i64, ptr %12, align 8, !tbaa !98
  %68 = load i64, ptr %19, align 8, !tbaa !90
  %69 = load ptr, ptr %15, align 8, !tbaa !92
  %70 = load ptr, ptr %5, align 8, !tbaa !81
  store ptr %70, ptr %0, align 8, !tbaa !81
  %71 = load i64, ptr %43, align 8, !tbaa !98
  store i64 %71, ptr %12, align 8, !tbaa !98
  %72 = load i64, ptr %44, align 8, !tbaa !90
  store i64 %72, ptr %19, align 8, !tbaa !90
  %73 = load ptr, ptr %50, align 8, !tbaa !92
  store ptr %73, ptr %15, align 8, !tbaa !92
  store ptr %66, ptr %5, align 8, !tbaa !81
  store i64 %67, ptr %43, align 8, !tbaa !98
  store i64 %68, ptr %44, align 8, !tbaa !90
  store ptr %69, ptr %50, align 8, !tbaa !92
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !64
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #17
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !90
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !92
  %89 = load ptr, ptr %5, align 8, !tbaa !81
  %90 = load ptr, ptr %89, align 8, !tbaa !64
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #17
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !187

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !188

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %100, i1 false)
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds ptr, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !189

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 3
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds ptr, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %131, ptr align 8 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !98
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !81
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !81
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !90
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = load ptr, ptr %3, align 8, !tbaa !81
  store ptr %12, ptr %0, align 8, !tbaa !81
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !98
  store i64 %14, ptr %6, align 8, !tbaa !98
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !90
  store i64 %16, ptr %8, align 8, !tbaa !90
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  store ptr %18, ptr %10, align 8, !tbaa !92
  store ptr %5, ptr %3, align 8, !tbaa !81
  store i64 %7, ptr %13, align 8, !tbaa !98
  store i64 %9, ptr %15, align 8, !tbaa !90
  store ptr %11, ptr %17, align 8, !tbaa !92
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !83

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !64
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #17
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

declare void @_ZN11xalanc_1_1023XalanSourceTreeDocument15appendChildNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_22XalanSourceTreeElementE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_19XalanSourceTreeTextE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1019XalanSourceTreeText9setParentEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1019XalanSourceTreeText9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1023XalanSourceTreeDocument15appendChildNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_22XalanSourceTreeCommentE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeComment9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeComment9setParentEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1023XalanSourceTreeDocument15appendChildNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction9setParentEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!62}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!35 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTreeC2ERN11xercesc_2_713MemoryManagerEPNS_23XalanSourceTreeDocumentE, ptr @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTreeC2ERN11xercesc_2_713MemoryManagerEPNS_23XalanSourceTreeDocumentE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTreeD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTreeD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTreeD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTreeD2Ev, ptr @_ZN11xalanc_1_1017FormatterListenerD2Ev, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree13startDocumentEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree13startDocumentEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree13startDocumentEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 37275}
!44 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree11endDocumentEv, ptr @_ZN11xalanc_1_1021FormatterToSourceTree12doCharactersEPKtj, i64 33406}
!45 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree10charactersEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 33406}
!46 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree12doCharactersEPKtj, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument14createTextNodeEPKtjPNS_9XalanNodeES4_S4_, i64 33406}
!47 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree12doCharactersEPKtj, ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_19XalanSourceTreeTextE, i64 33406}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 52494}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 52643}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 179}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 179}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 1}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!62 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!63 = !{!"function_entry_count", i64 1}
!64 = !{!65, !65, i64 0}
!65 = !{!"vtable pointer", !66, i64 0}
!66 = !{!"Simple C++ TBAA"}
!67 = !{!68, !71, i64 24}
!68 = !{!"_ZTSN11xalanc_1_1021FormatterToSourceTreeE", !69, i64 0, !71, i64 24, !71, i64 32, !71, i64 40, !75, i64 48, !71, i64 80, !77, i64 88, !78, i64 120}
!69 = !{!"_ZTSN11xalanc_1_1017FormatterListenerE", !70, i64 0, !71, i64 8, !73, i64 16, !74, i64 20}
!70 = !{!"_ZTSN11xercesc_2_715DocumentHandlerE"}
!71 = !{!"any pointer", !72, i64 0}
!72 = !{!"omnipotent char", !66, i64 0}
!73 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !72, i64 0}
!74 = !{!"_ZTSN11xalanc_1_1017FormatterListener11eXMLVersionE", !72, i64 0}
!75 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEE", !71, i64 0, !76, i64 8, !76, i64 16, !71, i64 24}
!76 = !{!"long", !72, i64 0}
!77 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !71, i64 0, !76, i64 8, !76, i64 16, !71, i64 24}
!78 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !79, i64 0, !80, i64 32}
!79 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !71, i64 0, !76, i64 8, !76, i64 16, !71, i64 24}
!80 = !{!"int", !72, i64 0}
!81 = !{!75, !71, i64 0}
!82 = !{!77, !71, i64 0}
!83 = !{!"branch_weights", i32 1, i32 0}
!84 = !{!"function_entry_count", i64 21}
!85 = !{!77, !76, i64 16}
!86 = !{!"branch_weights", i32 1, i32 20}
!87 = !{!77, !71, i64 24}
!88 = !{!"VP", i32 0, i64 20, i64 -7405368087501025645, i64 20}
!89 = !{!"function_entry_count", i64 2}
!90 = !{!75, !76, i64 16}
!91 = !{!"branch_weights", i32 0, i32 2}
!92 = !{!75, !71, i64 24}
!93 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!94 = !{!"function_entry_count", i64 0}
!95 = !{!68, !71, i64 32}
!96 = !{!68, !71, i64 40}
!97 = !{!"function_entry_count", i64 37275}
!98 = !{!75, !76, i64 8}
!99 = !{!"branch_weights", i32 37275, i32 0}
!100 = !{!68, !71, i64 80}
!101 = !{!77, !76, i64 8}
!102 = !{!"branch_weights", i32 1, i32 37274}
!103 = !{!79, !76, i64 8}
!104 = !{!78, !80, i64 32}
!105 = !{!79, !76, i64 16}
!106 = !{!71, !71, i64 0}
!107 = !{!"branch_weights", i32 0, i32 37275}
!108 = !{!"branch_weights", i32 3869, i32 33406}
!109 = !{!"branch_weights", i32 0, i32 33406}
!110 = !{!111, !71, i64 32}
!111 = !{!"_ZTSN11xalanc_1_1022XalanSourceTreeElementE", !112, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !71, i64 32, !71, i64 40, !71, i64 48, !71, i64 56, !76, i64 64}
!112 = !{!"_ZTSN11xalanc_1_1012XalanElementE", !113, i64 0}
!113 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!114 = !{!69, !71, i64 8}
!115 = !{!"function_entry_count", i64 33406}
!116 = !{!117, !117, i64 0}
!117 = !{!"short", !72, i64 0}
!118 = distinct !{!118, !119, !120}
!119 = !{!"llvm.loop.mustprogress"}
!120 = !{!"llvm.loop.unroll.disable"}
!121 = !{!"branch_weights", i32 33406, i32 0}
!122 = !{!"function_entry_count", i64 42470003}
!123 = !{!"branch_weights", i32 52000, i32 42418003}
!124 = !{!79, !71, i64 24}
!125 = !{!79, !71, i64 0}
!126 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!127 = !{!"function_entry_count", i64 64551586}
!128 = !{!"branch_weights", i32 64551590, i32 18}
!129 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!130 = !{!"branch_weights", i32 18, i32 0}
!131 = !{!"branch_weights", i32 4, i32 64551586}
!132 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!133 = !{!"branch_weights", i32 42418193, i32 22133393}
!134 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!135 = !{!"function_entry_count", i64 22}
!136 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!137 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!138 = !{!"function_entry_count", i64 155828046}
!139 = !{!"branch_weights", i32 0, i32 155828046}
!140 = !{!"branch_weights", i32 133170777, i32 22657269}
!141 = !{!"branch_weights", i32 20, i32 133170757}
!142 = !{!"branch_weights", i32 1, i32 19024395}
!143 = !{!"branch_weights", i32 19024395, i32 -26420601}
!144 = distinct !{!144, !119, !120}
!145 = !{!"branch_weights", i32 20748786, i32 1908483}
!146 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!147 = !{!"branch_weights", i32 20748786, i32 0}
!148 = !{!"branch_weights", i32 0, i32 20748786}
!149 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!150 = !{!"branch_weights", i32 0, i32 1908483}
!151 = !{!"branch_weights", i32 1, i32 1908482}
!152 = !{!"branch_weights", i32 1908482, i32 49797853}
!153 = distinct !{!153, !119, !120}
!154 = !{!"branch_weights", i32 1908482, i32 1}
!155 = distinct !{!155, !119, !120}
!156 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!157 = distinct !{!157, !119, !120}
!158 = !{!"function_entry_count", i64 124150652}
!159 = !{!"branch_weights", i32 124150652, i32 0}
!160 = !{!"function_entry_count", i64 52494}
!161 = !{!"branch_weights", i32 4, i32 52490}
!162 = !{!"VP", i32 0, i64 52490, i64 -7405368087501025645, i64 52490}
!163 = !{!"function_entry_count", i64 52673}
!164 = !{!"branch_weights", i32 30, i32 52643}
!165 = !{!"VP", i32 0, i64 52643, i64 8345045103670217670, i64 52643}
!166 = !{!"branch_weights", i32 52643, i32 0}
!167 = !{!"branch_weights", i32 0, i32 30}
!168 = !{!"VP", i32 0, i64 30, i64 8345045103670217670, i64 30}
!169 = !{!"function_entry_count", i64 52643}
!170 = !{!"branch_weights", i32 0, i32 52643}
!171 = !{!"branch_weights", i32 1, i32 52642}
!172 = !{!"branch_weights", i32 52642, i32 298062848}
!173 = distinct !{!173, !119, !120}
!174 = distinct !{!174, !119, !120}
!175 = distinct !{!175, !119, !120}
!176 = distinct !{!176, !119, !120}
!177 = !{!"function_entry_count", i64 3517488}
!178 = !{!"branch_weights", i32 3517309, i32 179}
!179 = !{!"branch_weights", i32 16, i32 163}
!180 = !{!"branch_weights", i32 179, i32 0}
!181 = !{!"VP", i32 0, i64 163, i64 -7405368087501025645, i64 163}
!182 = !{!"function_entry_count", i64 870188}
!183 = !{!"branch_weights", i32 870187, i32 1}
!184 = !{!"branch_weights", i32 2, i32 0}
!185 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!186 = distinct !{!186, !119, !120}
!187 = distinct !{!187, !119, !120}
!188 = distinct !{!188, !119, !120}
!189 = distinct !{!189, !119, !120}

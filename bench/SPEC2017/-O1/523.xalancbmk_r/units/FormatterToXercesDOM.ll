; ModuleID = 'FormatterToXercesDOM.cpp'
source_filename = "FormatterToXercesDOM.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::FormatterToXercesDOM" = type { %"class.xalanc_1_10::FormatterListener", ptr, ptr, ptr, %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::FormatterListener" = type { %"class.xercesc_2_7::DocumentHandler", ptr, i32, i32 }
%"class.xercesc_2_7::DocumentHandler" = type { ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RNS1_13MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm = comdat any

@_ZN11xalanc_1_1020FormatterToXercesDOM13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1020FormatterToXercesDOME = dso_local unnamed_addr constant { [23 x ptr] } { [23 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1020FormatterToXercesDOME, ptr @_ZN11xalanc_1_1020FormatterToXercesDOMD2Ev, ptr @_ZN11xalanc_1_1020FormatterToXercesDOMD0Ev, ptr @_ZN11xalanc_1_1020FormatterToXercesDOM10charactersEPKtj, ptr @_ZN11xalanc_1_1020FormatterToXercesDOM11endDocumentEv, ptr @_ZN11xalanc_1_1020FormatterToXercesDOM10endElementEPKt, ptr @_ZN11xalanc_1_1020FormatterToXercesDOM19ignorableWhitespaceEPKtj, ptr @_ZN11xalanc_1_1020FormatterToXercesDOM21processingInstructionEPKtS2_, ptr @_ZN11xalanc_1_1020FormatterToXercesDOM13resetDocumentEv, ptr @_ZN11xalanc_1_1020FormatterToXercesDOM18setDocumentLocatorEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1020FormatterToXercesDOM13startDocumentEv, ptr @_ZN11xalanc_1_1020FormatterToXercesDOM12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1020FormatterToXercesDOM13charactersRawEPKtj, ptr @_ZN11xalanc_1_1020FormatterToXercesDOM7commentEPKt, ptr @_ZN11xalanc_1_1020FormatterToXercesDOM5cdataEPKtj, ptr @_ZN11xalanc_1_1020FormatterToXercesDOM15entityReferenceEPKt, ptr @_ZNK11xalanc_1_1017FormatterListener9getWriterEv, ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypeSystemEv, ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypePublicEv, ptr @_ZNK11xalanc_1_1017FormatterListener11getEncodingEv, ptr @_ZNK11xalanc_1_1017FormatterListener12getMediaTypeEv, ptr @_ZNK11xalanc_1_1017FormatterListener9getIndentEv] }, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZTIN11xalanc_1_1018XercesDOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1020FormatterToXercesDOME = dso_local constant [38 x i8] c"N11xalanc_1_1020FormatterToXercesDOME\00", align 1
@_ZTIN11xalanc_1_1017FormatterListenerE = external constant ptr
@_ZTIN11xalanc_1_1020FormatterToXercesDOME = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1020FormatterToXercesDOME, ptr @_ZTIN11xalanc_1_1017FormatterListenerE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_FormatterToXercesDOM.cpp, ptr null }]

@_ZN11xalanc_1_1020FormatterToXercesDOMC1EPN11xercesc_2_711DOMDocumentEPNS1_19DOMDocumentFragmentEPNS1_10DOMElementERNS1_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1020FormatterToXercesDOMC2EPN11xercesc_2_711DOMDocumentEPNS1_19DOMDocumentFragmentEPNS1_10DOMElementERNS1_13MemoryManagerE
@_ZN11xalanc_1_1020FormatterToXercesDOMC1EPN11xercesc_2_711DOMDocumentEPNS1_10DOMElementERNS1_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1020FormatterToXercesDOMC2EPN11xercesc_2_711DOMDocumentEPNS1_10DOMElementERNS1_13MemoryManagerE
@_ZN11xalanc_1_1020FormatterToXercesDOMD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1020FormatterToXercesDOMD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !40 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020FormatterToXercesDOMC2EPN11xercesc_2_711DOMDocumentEPNS1_19DOMDocumentFragmentEPNS1_10DOMElementERNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 4)
  store ptr getelementptr inbounds ({ [23 x ptr] }, ptr @_ZTVN11xalanc_1_1020FormatterToXercesDOME, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 2
  store ptr %2, ptr %7, align 8, !tbaa !57
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 3
  store ptr %3, ptr %8, align 8, !tbaa !58
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 4
  store ptr %4, ptr %9, align 8, !tbaa !59
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 4, i32 1
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %12 unwind label %15

12:                                               ; preds = %5
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %14 unwind label %17

14:                                               ; preds = %12
  ret void

15:                                               ; preds = %5
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %19

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #16
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #16
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %20
}

declare void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !60
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = load ptr, ptr %0, align 8, !tbaa !59
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13

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
declare void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020FormatterToXercesDOMC2EPN11xercesc_2_711DOMDocumentEPNS1_10DOMElementERNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 4)
  store ptr getelementptr inbounds ({ [23 x ptr] }, ptr @_ZTVN11xalanc_1_1020FormatterToXercesDOME, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !57
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 3
  store ptr %2, ptr %7, align 8, !tbaa !58
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 4
  store ptr %3, ptr %8, align 8, !tbaa !59
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 4, i32 1
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %11 unwind label %14

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %13 unwind label %16

13:                                               ; preds = %11
  ret void

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #16
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #16
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %19
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1020FormatterToXercesDOMD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #2 align 2 !prof !40 {
  store ptr getelementptr inbounds ({ [23 x ptr] }, ptr @_ZTVN11xalanc_1_1020FormatterToXercesDOME, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1020FormatterToXercesDOMD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #2 align 2 !prof !40 {
  store ptr getelementptr inbounds ({ [23 x ptr] }, ptr @_ZTVN11xalanc_1_1020FormatterToXercesDOME, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  tail call void @_ZdlPv(ptr noundef %0) #18
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1020FormatterToXercesDOM18setDocumentLocatorEPKN11xercesc_2_77LocatorE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #6 align 2 !prof !40 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1020FormatterToXercesDOM13startDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !40 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020FormatterToXercesDOM11endDocumentEv(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  invoke void @_ZN11xalanc_1_1020FormatterToXercesDOM22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %18 unwind label %2

2:                                                ; preds = %1
  %3 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712DOMExceptionE
  %4 = extractvalue { ptr, i32 } %3, 1
  %5 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE) #16
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = extractvalue { ptr, i32 } %3, 0
  %9 = tail call ptr @__cxa_begin_catch(ptr %8) #16
  %10 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1018XercesDOMExceptionC1ERKN11xercesc_2_712DOMExceptionE(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(33) %9)
          to label %11 unwind label %12

11:                                               ; preds = %7
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xalanc_1_1018XercesDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1018XercesDOMExceptionD1Ev) #19
          to label %24 unwind label %14

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #16
  br label %16

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  invoke void @__cxa_end_catch()
          to label %19 unwind label %21

18:                                               ; preds = %1
  ret void

19:                                               ; preds = %16, %2
  %20 = phi { ptr, i32 } [ %3, %2 ], [ %17, %16 ]
  resume { ptr, i32 } %20

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #17
  unreachable

24:                                               ; preds = %11
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020FormatterToXercesDOM22processAccumulatedTextEv(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 6, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !62
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %40, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 6, i32 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !63
  %10 = icmp eq i64 %9, 0
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 6, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = select i1 %10, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %12
  %14 = load ptr, ptr %7, align 8, !tbaa !41
  %15 = getelementptr inbounds ptr, ptr %14, i64 5
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %13)
  %18 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !58
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load ptr, ptr %6, align 8, !tbaa !44
  %27 = getelementptr inbounds i8, ptr %26, i64 24
  br label %28

28:                                               ; preds = %21, %5, %25
  %29 = phi ptr [ %27, %25 ], [ %19, %5 ], [ %23, %21 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !41
  %31 = getelementptr inbounds ptr, ptr %30, i64 17
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %17)
  %34 = load i64, ptr %8, align 8, !tbaa !63
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i64, ptr %8, align 8, !tbaa !63
  %38 = sub i64 %37, %34
  store i64 %38, ptr %8, align 8, !tbaa !63
  br label %39

39:                                               ; preds = %36, %28
  store i32 0, ptr %2, align 8, !tbaa !62
  br label %40

40:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1018XercesDOMExceptionC1ERKN11xercesc_2_712DOMExceptionE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1018XercesDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !40 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020FormatterToXercesDOM12startElementEPKtRN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  invoke void @_ZN11xalanc_1_1020FormatterToXercesDOM22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %4 unwind label %27

4:                                                ; preds = %3
  %5 = invoke noundef ptr @_ZN11xalanc_1_1020FormatterToXercesDOM13createElementEPKtRN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %6 unwind label %29

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = getelementptr inbounds i8, ptr %16, i64 24
  br label %18

18:                                               ; preds = %10, %6, %14
  %19 = phi ptr [ %17, %14 ], [ %8, %6 ], [ %12, %10 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !41
  %21 = getelementptr inbounds ptr, ptr %20, i64 17
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %5)
          to label %24 unwind label %29

24:                                               ; preds = %18
  %25 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %26 unwind label %29

26:                                               ; preds = %24
  store ptr %5, ptr %7, align 8, !tbaa !58
  ret void

27:                                               ; preds = %3
  %28 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712DOMExceptionE
  br label %31

29:                                               ; preds = %18, %24, %4
  %30 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712DOMExceptionE
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  %33 = extractvalue { ptr, i32 } %32, 1
  %34 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE) #16
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = extractvalue { ptr, i32 } %32, 0
  %38 = tail call ptr @__cxa_begin_catch(ptr %37) #16
  %39 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1018XercesDOMExceptionC1ERKN11xercesc_2_712DOMExceptionE(ptr noundef nonnull align 8 dereferenceable(12) %39, ptr noundef nonnull align 8 dereferenceable(33) %38)
          to label %40 unwind label %41

40:                                               ; preds = %36
  invoke void @__cxa_throw(ptr nonnull %39, ptr nonnull @_ZTIN11xalanc_1_1018XercesDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1018XercesDOMExceptionD1Ev) #19
          to label %52 unwind label %43

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %39) #16
  br label %45

43:                                               ; preds = %40
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  invoke void @__cxa_end_catch()
          to label %47 unwind label %49

47:                                               ; preds = %45, %31
  %48 = phi { ptr, i32 } [ %32, %31 ], [ %46, %45 ]
  resume { ptr, i32 } %48

49:                                               ; preds = %45
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  tail call void @__clang_call_terminate(ptr %51) #17
  unreachable

52:                                               ; preds = %40
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1020FormatterToXercesDOM13createElementEPKtRN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 align 2 !prof !40 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterListener", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %1)
  br label %42

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 5
  %16 = tail call noundef ptr @_ZN11xalanc_1_1011DOMServices21getNamespaceForPrefixEPKtRKNS_14PrefixResolverEbRNS_14XalanDOMStringE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(36) %15)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %16, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !62
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef %1)
  br label %42

29:                                               ; preds = %18
  %30 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %16, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !63
  %34 = icmp eq i64 %33, 0
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %16, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = select i1 %34, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %36
  %38 = load ptr, ptr %31, align 8, !tbaa !41
  %39 = getelementptr inbounds ptr, ptr %38, i64 16
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef %37, ptr noundef %1)
  br label %42

42:                                               ; preds = %22, %29, %7
  %43 = phi ptr [ %13, %7 ], [ %28, %22 ], [ %41, %29 ]
  tail call void @_ZN11xalanc_1_1020FormatterToXercesDOM13addAttributesEPN11xercesc_2_710DOMElementERNS1_13AttributeListE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %43, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret ptr %43
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020FormatterToXercesDOM6appendEPN11xercesc_2_77DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds i8, ptr %12, i64 24
  br label %14

14:                                               ; preds = %6, %2, %10
  %15 = phi ptr [ %13, %10 ], [ %4, %2 ], [ %8, %6 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = getelementptr inbounds ptr, ptr %16, i64 17
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020FormatterToXercesDOM10endElementEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr nocapture readnone %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  invoke void @_ZN11xalanc_1_1020FormatterToXercesDOM22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %3 unwind label %15

3:                                                ; preds = %2
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 4, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !65
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = getelementptr ptr, ptr %9, i64 %5
  %11 = getelementptr ptr, ptr %10, i64 -1
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !58
  %14 = add i64 %5, -1
  store i64 %14, ptr %4, align 8, !tbaa !65
  br label %33

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712DOMExceptionE
  %17 = extractvalue { ptr, i32 } %16, 1
  %18 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE) #16
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = extractvalue { ptr, i32 } %16, 0
  %22 = tail call ptr @__cxa_begin_catch(ptr %21) #16
  %23 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1018XercesDOMExceptionC1ERKN11xercesc_2_712DOMExceptionE(ptr noundef nonnull align 8 dereferenceable(12) %23, ptr noundef nonnull align 8 dereferenceable(33) %22)
          to label %24 unwind label %27

24:                                               ; preds = %20
  invoke void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTIN11xalanc_1_1018XercesDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1018XercesDOMExceptionD1Ev) #19
          to label %39 unwind label %29

25:                                               ; preds = %3
  %26 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !58
  br label %33

27:                                               ; preds = %20
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %23) #16
  br label %31

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  invoke void @__cxa_end_catch()
          to label %34 unwind label %36

33:                                               ; preds = %7, %25
  ret void

34:                                               ; preds = %31, %15
  %35 = phi { ptr, i32 } [ %16, %15 ], [ %32, %31 ]
  resume { ptr, i32 } %35

36:                                               ; preds = %31
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  tail call void @__clang_call_terminate(ptr %38) #17
  unreachable

39:                                               ; preds = %24
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020FormatterToXercesDOM10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 align 2 !prof !40 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 6
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1, i32 noundef %2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020FormatterToXercesDOM13charactersRawEPKtj(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  invoke void @_ZN11xalanc_1_1020FormatterToXercesDOM22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %4 unwind label %8

4:                                                ; preds = %3
  %5 = load ptr, ptr %0, align 8, !tbaa !41
  %6 = getelementptr inbounds ptr, ptr %5, i64 13
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2)
          to label %24 unwind label %8

8:                                                ; preds = %4, %3
  %9 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712DOMExceptionE
  %10 = extractvalue { ptr, i32 } %9, 1
  %11 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE) #16
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = extractvalue { ptr, i32 } %9, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #16
  %16 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1018XercesDOMExceptionC1ERKN11xercesc_2_712DOMExceptionE(ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(33) %15)
          to label %17 unwind label %18

17:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xalanc_1_1018XercesDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1018XercesDOMExceptionD1Ev) #19
          to label %30 unwind label %20

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %16) #16
  br label %22

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  invoke void @__cxa_end_catch()
          to label %25 unwind label %27

24:                                               ; preds = %4
  ret void

25:                                               ; preds = %22, %8
  %26 = phi { ptr, i32 } [ %9, %8 ], [ %23, %22 ]
  resume { ptr, i32 } %26

27:                                               ; preds = %22
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #17
  unreachable

30:                                               ; preds = %17
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020FormatterToXercesDOM15entityReferenceEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  invoke void @_ZN11xalanc_1_1020FormatterToXercesDOM22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %3 unwind label %27

3:                                                ; preds = %2
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = getelementptr inbounds ptr, ptr %6, i64 10
  %8 = load ptr, ptr %7, align 8
  %9 = invoke noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1)
          to label %10 unwind label %27

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load ptr, ptr %4, align 8, !tbaa !44
  %20 = getelementptr inbounds i8, ptr %19, i64 24
  br label %21

21:                                               ; preds = %14, %10, %18
  %22 = phi ptr [ %20, %18 ], [ %12, %10 ], [ %16, %14 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = getelementptr inbounds ptr, ptr %23, i64 17
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %9)
          to label %43 unwind label %27

27:                                               ; preds = %21, %3, %2
  %28 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712DOMExceptionE
  %29 = extractvalue { ptr, i32 } %28, 1
  %30 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE) #16
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = extractvalue { ptr, i32 } %28, 0
  %34 = tail call ptr @__cxa_begin_catch(ptr %33) #16
  %35 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1018XercesDOMExceptionC1ERKN11xercesc_2_712DOMExceptionE(ptr noundef nonnull align 8 dereferenceable(12) %35, ptr noundef nonnull align 8 dereferenceable(33) %34)
          to label %36 unwind label %37

36:                                               ; preds = %32
  invoke void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xalanc_1_1018XercesDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1018XercesDOMExceptionD1Ev) #19
          to label %49 unwind label %39

37:                                               ; preds = %32
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %35) #16
  br label %41

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %38, %37 ]
  invoke void @__cxa_end_catch()
          to label %44 unwind label %46

43:                                               ; preds = %21
  ret void

44:                                               ; preds = %41, %27
  %45 = phi { ptr, i32 } [ %28, %27 ], [ %42, %41 ]
  resume { ptr, i32 } %45

46:                                               ; preds = %41
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  tail call void @__clang_call_terminate(ptr %48) #17
  unreachable

49:                                               ; preds = %36
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020FormatterToXercesDOM19ignorableWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  invoke void @_ZN11xalanc_1_1020FormatterToXercesDOM22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %4 unwind label %44

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 5
  %6 = icmp eq i32 %2, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 0, i32 noundef -1)
          to label %8 unwind label %44

8:                                                ; preds = %7
  %9 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
          to label %11 unwind label %44

10:                                               ; preds = %4
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 0, i32 noundef -1)
          to label %11 unwind label %44

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ %2, %10 ]
  %13 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %1, i32 noundef %12)
          to label %14 unwind label %44

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 5, i32 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !63
  %19 = icmp eq i64 %18, 0
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 5, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = select i1 %19, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %21
  %23 = load ptr, ptr %16, align 8, !tbaa !41
  %24 = getelementptr inbounds ptr, ptr %23, i64 5
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %22)
          to label %27 unwind label %44

27:                                               ; preds = %14
  %28 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !58
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load ptr, ptr %15, align 8, !tbaa !44
  %37 = getelementptr inbounds i8, ptr %36, i64 24
  br label %38

38:                                               ; preds = %31, %27, %35
  %39 = phi ptr [ %37, %35 ], [ %29, %27 ], [ %33, %31 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !41
  %41 = getelementptr inbounds ptr, ptr %40, i64 17
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %26)
          to label %60 unwind label %44

44:                                               ; preds = %11, %38, %10, %8, %7, %14, %3
  %45 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712DOMExceptionE
  %46 = extractvalue { ptr, i32 } %45, 1
  %47 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE) #16
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = extractvalue { ptr, i32 } %45, 0
  %51 = tail call ptr @__cxa_begin_catch(ptr %50) #16
  %52 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1018XercesDOMExceptionC1ERKN11xercesc_2_712DOMExceptionE(ptr noundef nonnull align 8 dereferenceable(12) %52, ptr noundef nonnull align 8 dereferenceable(33) %51)
          to label %53 unwind label %54

53:                                               ; preds = %49
  invoke void @__cxa_throw(ptr nonnull %52, ptr nonnull @_ZTIN11xalanc_1_1018XercesDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1018XercesDOMExceptionD1Ev) #19
          to label %66 unwind label %56

54:                                               ; preds = %49
  %55 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %52) #16
  br label %58

56:                                               ; preds = %53
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi { ptr, i32 } [ %57, %56 ], [ %55, %54 ]
  invoke void @__cxa_end_catch()
          to label %61 unwind label %63

60:                                               ; preds = %38
  ret void

61:                                               ; preds = %58, %44
  %62 = phi { ptr, i32 } [ %45, %44 ], [ %59, %58 ]
  resume { ptr, i32 } %62

63:                                               ; preds = %58
  %64 = landingpad { ptr, i32 }
          catch ptr null
  %65 = extractvalue { ptr, i32 } %64, 0
  tail call void @__clang_call_terminate(ptr %65) #17
  unreachable

66:                                               ; preds = %53
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020FormatterToXercesDOM21processingInstructionEPKtS2_(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  invoke void @_ZN11xalanc_1_1020FormatterToXercesDOM22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %4 unwind label %28

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds ptr, ptr %7, i64 8
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %1, ptr noundef %2)
          to label %11 unwind label %28

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load ptr, ptr %5, align 8, !tbaa !44
  %21 = getelementptr inbounds i8, ptr %20, i64 24
  br label %22

22:                                               ; preds = %15, %11, %19
  %23 = phi ptr [ %21, %19 ], [ %13, %11 ], [ %17, %15 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !41
  %25 = getelementptr inbounds ptr, ptr %24, i64 17
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %10)
          to label %44 unwind label %28

28:                                               ; preds = %22, %4, %3
  %29 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712DOMExceptionE
  %30 = extractvalue { ptr, i32 } %29, 1
  %31 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE) #16
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = extractvalue { ptr, i32 } %29, 0
  %35 = tail call ptr @__cxa_begin_catch(ptr %34) #16
  %36 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1018XercesDOMExceptionC1ERKN11xercesc_2_712DOMExceptionE(ptr noundef nonnull align 8 dereferenceable(12) %36, ptr noundef nonnull align 8 dereferenceable(33) %35)
          to label %37 unwind label %38

37:                                               ; preds = %33
  invoke void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTIN11xalanc_1_1018XercesDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1018XercesDOMExceptionD1Ev) #19
          to label %50 unwind label %40

38:                                               ; preds = %33
  %39 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %36) #16
  br label %42

40:                                               ; preds = %37
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi { ptr, i32 } [ %41, %40 ], [ %39, %38 ]
  invoke void @__cxa_end_catch()
          to label %45 unwind label %47

44:                                               ; preds = %22
  ret void

45:                                               ; preds = %42, %28
  %46 = phi { ptr, i32 } [ %29, %28 ], [ %43, %42 ]
  resume { ptr, i32 } %46

47:                                               ; preds = %42
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  tail call void @__clang_call_terminate(ptr %49) #17
  unreachable

50:                                               ; preds = %37
  unreachable
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1020FormatterToXercesDOM13resetDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !40 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020FormatterToXercesDOM7commentEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  invoke void @_ZN11xalanc_1_1020FormatterToXercesDOM22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %3 unwind label %27

3:                                                ; preds = %2
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = getelementptr inbounds ptr, ptr %6, i64 6
  %8 = load ptr, ptr %7, align 8
  %9 = invoke noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1)
          to label %10 unwind label %27

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load ptr, ptr %4, align 8, !tbaa !44
  %20 = getelementptr inbounds i8, ptr %19, i64 24
  br label %21

21:                                               ; preds = %14, %10, %18
  %22 = phi ptr [ %20, %18 ], [ %12, %10 ], [ %16, %14 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = getelementptr inbounds ptr, ptr %23, i64 17
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %9)
          to label %43 unwind label %27

27:                                               ; preds = %21, %3, %2
  %28 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712DOMExceptionE
  %29 = extractvalue { ptr, i32 } %28, 1
  %30 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE) #16
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = extractvalue { ptr, i32 } %28, 0
  %34 = tail call ptr @__cxa_begin_catch(ptr %33) #16
  %35 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1018XercesDOMExceptionC1ERKN11xercesc_2_712DOMExceptionE(ptr noundef nonnull align 8 dereferenceable(12) %35, ptr noundef nonnull align 8 dereferenceable(33) %34)
          to label %36 unwind label %37

36:                                               ; preds = %32
  invoke void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xalanc_1_1018XercesDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1018XercesDOMExceptionD1Ev) #19
          to label %49 unwind label %39

37:                                               ; preds = %32
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %35) #16
  br label %41

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %38, %37 ]
  invoke void @__cxa_end_catch()
          to label %44 unwind label %46

43:                                               ; preds = %21
  ret void

44:                                               ; preds = %41, %27
  %45 = phi { ptr, i32 } [ %28, %27 ], [ %42, %41 ]
  resume { ptr, i32 } %45

46:                                               ; preds = %41
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  tail call void @__clang_call_terminate(ptr %48) #17
  unreachable

49:                                               ; preds = %36
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020FormatterToXercesDOM5cdataEPKtj(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  invoke void @_ZN11xalanc_1_1020FormatterToXercesDOM22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %4 unwind label %44

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 5
  %6 = icmp eq i32 %2, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 0, i32 noundef -1)
          to label %8 unwind label %44

8:                                                ; preds = %7
  %9 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
          to label %11 unwind label %44

10:                                               ; preds = %4
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 0, i32 noundef -1)
          to label %11 unwind label %44

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ %2, %10 ]
  %13 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %1, i32 noundef %12)
          to label %14 unwind label %44

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 5, i32 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !63
  %19 = icmp eq i64 %18, 0
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 5, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = select i1 %19, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %21
  %23 = load ptr, ptr %16, align 8, !tbaa !41
  %24 = getelementptr inbounds ptr, ptr %23, i64 7
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %22)
          to label %27 unwind label %44

27:                                               ; preds = %14
  %28 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !58
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load ptr, ptr %15, align 8, !tbaa !44
  %37 = getelementptr inbounds i8, ptr %36, i64 24
  br label %38

38:                                               ; preds = %31, %27, %35
  %39 = phi ptr [ %37, %35 ], [ %29, %27 ], [ %33, %31 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !41
  %41 = getelementptr inbounds ptr, ptr %40, i64 17
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %26)
          to label %60 unwind label %44

44:                                               ; preds = %11, %38, %10, %8, %7, %14, %3
  %45 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712DOMExceptionE
  %46 = extractvalue { ptr, i32 } %45, 1
  %47 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE) #16
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = extractvalue { ptr, i32 } %45, 0
  %51 = tail call ptr @__cxa_begin_catch(ptr %50) #16
  %52 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1018XercesDOMExceptionC1ERKN11xercesc_2_712DOMExceptionE(ptr noundef nonnull align 8 dereferenceable(12) %52, ptr noundef nonnull align 8 dereferenceable(33) %51)
          to label %53 unwind label %54

53:                                               ; preds = %49
  invoke void @__cxa_throw(ptr nonnull %52, ptr nonnull @_ZTIN11xalanc_1_1018XercesDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1018XercesDOMExceptionD1Ev) #19
          to label %66 unwind label %56

54:                                               ; preds = %49
  %55 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %52) #16
  br label %58

56:                                               ; preds = %53
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi { ptr, i32 } [ %57, %56 ], [ %55, %54 ]
  invoke void @__cxa_end_catch()
          to label %61 unwind label %63

60:                                               ; preds = %38
  ret void

61:                                               ; preds = %58, %44
  %62 = phi { ptr, i32 } [ %45, %44 ], [ %59, %58 ]
  resume { ptr, i32 } %62

63:                                               ; preds = %58
  %64 = landingpad { ptr, i32 }
          catch ptr null
  %65 = extractvalue { ptr, i32 } %64, 0
  tail call void @__clang_call_terminate(ptr %65) #17
  unreachable

66:                                               ; preds = %53
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020FormatterToXercesDOM13addAttributesEPN11xercesc_2_710DOMElementERNS1_13AttributeListE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 align 2 !prof !40 {
  %4 = load ptr, ptr %2, align 8, !tbaa !41
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterListener", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  %11 = icmp eq i32 %7, 0
  br i1 %10, label %15, label %12

12:                                               ; preds = %3
  br i1 %11, label %69, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXercesDOM", ptr %0, i64 0, i32 5
  br label %31

15:                                               ; preds = %3
  br i1 %11, label %69, label %16

16:                                               ; preds = %15, %16
  %17 = phi i32 [ %29, %16 ], [ 0, %15 ]
  %18 = load ptr, ptr %2, align 8, !tbaa !41
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %17)
  %22 = load ptr, ptr %2, align 8, !tbaa !41
  %23 = getelementptr inbounds ptr, ptr %22, i64 5
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %17)
  %26 = load ptr, ptr %1, align 8, !tbaa !41
  %27 = getelementptr inbounds ptr, ptr %26, i64 44
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %21, ptr noundef %25)
  %29 = add nuw i32 %17, 1
  %30 = icmp eq i32 %29, %7
  br i1 %30, label %69, label %16, !llvm.loop !67

31:                                               ; preds = %13, %66
  %32 = phi i32 [ 0, %13 ], [ %67, %66 ]
  %33 = load ptr, ptr %2, align 8, !tbaa !41
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %32)
  %37 = load ptr, ptr %8, align 8, !tbaa !64
  %38 = tail call noundef ptr @_ZN11xalanc_1_1011DOMServices21getNamespaceForPrefixEPKtRKNS_14PrefixResolverEbRNS_14XalanDOMStringE(ptr noundef %36, ptr noundef nonnull align 8 dereferenceable(8) %37, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(36) %14)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %38, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !62
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40, %31
  %45 = load ptr, ptr %2, align 8, !tbaa !41
  %46 = getelementptr inbounds ptr, ptr %45, i64 5
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %32)
  %49 = load ptr, ptr %1, align 8, !tbaa !41
  %50 = getelementptr inbounds ptr, ptr %49, i64 44
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %36, ptr noundef %48)
  br label %66

52:                                               ; preds = %40
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %38, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !63
  %55 = icmp eq i64 %54, 0
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %38, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = select i1 %55, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %57
  %59 = load ptr, ptr %2, align 8, !tbaa !41
  %60 = getelementptr inbounds ptr, ptr %59, i64 5
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %32)
  %63 = load ptr, ptr %1, align 8, !tbaa !41
  %64 = getelementptr inbounds ptr, ptr %63, i64 49
  %65 = load ptr, ptr %64, align 8
  tail call void %65(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %58, ptr noundef %36, ptr noundef %62)
  br label %66

66:                                               ; preds = %52, %44
  %67 = add nuw i32 %32, 1
  %68 = icmp eq i32 %67, %7
  br i1 %68, label %69, label %31, !llvm.loop !70

69:                                               ; preds = %66, %16, %12, %15
  ret void
}

declare noundef ptr @_ZN11xalanc_1_1011DOMServices21getNamespaceForPrefixEPKtRKNS_14PrefixResolverEbRNS_14XalanDOMStringE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1017FormatterListener9getWriterEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypeSystemEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypePublicEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener12getMediaTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef i32 @_ZNK11xalanc_1_1017FormatterListener9getIndentEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !72
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !73

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = load ptr, ptr %0, align 8, !tbaa !75
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !76

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #17
  unreachable
}

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !65
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !60
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !66
  store ptr %13, ptr %12, align 8, !tbaa !66
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !65
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !59
  call void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RNS1_13MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !59
  %24 = load i64, ptr %4, align 8, !tbaa !65
  %25 = load i64, ptr %6, align 8, !tbaa !60
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !61
  %28 = load ptr, ptr %3, align 8, !tbaa !59
  store ptr %28, ptr %0, align 8, !tbaa !59
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !65
  store i64 %30, ptr %4, align 8, !tbaa !65
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !60
  store i64 %32, ptr %6, align 8, !tbaa !60
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !61
  store ptr %34, ptr %26, align 8, !tbaa !61
  store ptr %23, ptr %3, align 8, !tbaa !59
  store i64 %24, ptr %29, align 8, !tbaa !65
  store i64 %25, ptr %31, align 8, !tbaa !60
  store ptr %27, ptr %33, align 8, !tbaa !61
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !41
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
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !60
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !61
  %52 = load ptr, ptr %3, align 8, !tbaa !59
  %53 = load ptr, ptr %52, align 8, !tbaa !41
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
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RNS1_13MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !59
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !65
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !59
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !65
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !60
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !41
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !61
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  %24 = load i64, ptr %9, align 8, !tbaa !65
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !59
  %28 = load i64, ptr %6, align 8, !tbaa !65
  %29 = load i64, ptr %7, align 8, !tbaa !60
  %30 = load ptr, ptr %8, align 8, !tbaa !61
  %31 = load ptr, ptr %5, align 8, !tbaa !59
  store ptr %31, ptr %0, align 8, !tbaa !59
  %32 = load i64, ptr %14, align 8, !tbaa !65
  store i64 %32, ptr %6, align 8, !tbaa !65
  %33 = load i64, ptr %15, align 8, !tbaa !60
  store i64 %33, ptr %7, align 8, !tbaa !60
  %34 = load ptr, ptr %21, align 8, !tbaa !61
  store ptr %34, ptr %8, align 8, !tbaa !61
  store ptr %27, ptr %5, align 8, !tbaa !59
  store i64 %28, ptr %14, align 8, !tbaa !65
  store i64 %29, ptr %15, align 8, !tbaa !60
  store ptr %30, ptr %21, align 8, !tbaa !61
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !41
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
  %46 = load i64, ptr %15, align 8, !tbaa !60
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !61
  %50 = load ptr, ptr %5, align 8, !tbaa !59
  %51 = load ptr, ptr %50, align 8, !tbaa !41
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
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !41
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !61
  store i64 %3, ptr %7, align 8, !tbaa !60
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !65
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !60
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !61
  %28 = load i64, ptr %12, align 8, !tbaa !65
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !66
  store ptr %34, ptr %32, align 8, !tbaa !66
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !llvm.loop !77

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !59
  store ptr %42, ptr %5, align 8, !tbaa !59
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !65
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !60
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !41
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !61
  %51 = load i64, ptr %43, align 8, !tbaa !65
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !61
  invoke void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !61
  %56 = load i64, ptr %43, align 8, !tbaa !65
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !61
  %60 = load i64, ptr %43, align 8, !tbaa !65
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !61
  %63 = load i64, ptr %12, align 8, !tbaa !65
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !59
  %67 = load i64, ptr %12, align 8, !tbaa !65
  %68 = load i64, ptr %19, align 8, !tbaa !60
  %69 = load ptr, ptr %15, align 8, !tbaa !61
  %70 = load ptr, ptr %5, align 8, !tbaa !59
  store ptr %70, ptr %0, align 8, !tbaa !59
  %71 = load i64, ptr %43, align 8, !tbaa !65
  store i64 %71, ptr %12, align 8, !tbaa !65
  %72 = load i64, ptr %44, align 8, !tbaa !60
  store i64 %72, ptr %19, align 8, !tbaa !60
  %73 = load ptr, ptr %50, align 8, !tbaa !61
  store ptr %73, ptr %15, align 8, !tbaa !61
  store ptr %66, ptr %5, align 8, !tbaa !59
  store i64 %67, ptr %43, align 8, !tbaa !65
  store i64 %68, ptr %44, align 8, !tbaa !60
  store ptr %69, ptr %50, align 8, !tbaa !61
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !41
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
  %85 = load i64, ptr %44, align 8, !tbaa !60
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !61
  %89 = load ptr, ptr %5, align 8, !tbaa !59
  %90 = load ptr, ptr %89, align 8, !tbaa !41
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !78

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !79

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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !80

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
  store i64 %36, ptr %12, align 8, !tbaa !65
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !59
  call void @_ZN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RNS1_13MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !59
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !65
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = load ptr, ptr %3, align 8, !tbaa !59
  store ptr %12, ptr %0, align 8, !tbaa !59
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !65
  store i64 %14, ptr %6, align 8, !tbaa !65
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !60
  store i64 %16, ptr %8, align 8, !tbaa !60
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  store ptr %18, ptr %10, align 8, !tbaa !61
  store ptr %5, ptr %3, align 8, !tbaa !59
  store i64 %7, ptr %13, align 8, !tbaa !65
  store i64 %9, ptr %15, align 8, !tbaa !60
  store ptr %11, ptr %17, align 8, !tbaa !61
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !41
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

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_FormatterToXercesDOM.cpp() #13 section ".text.startup" !prof !81 !PGOFuncName !82 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1020FormatterToXercesDOM13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_1020FormatterToXercesDOM13s_emptyStringE, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!36 = !{ptr @_GLOBAL__sub_I_FormatterToXercesDOM.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!37 = !{ptr @_GLOBAL__sub_I_FormatterToXercesDOM.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!38 = !{ptr @_GLOBAL__sub_I_FormatterToXercesDOM.cpp, ptr @__cxa_atexit, i64 1}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!45, !48, i64 24}
!45 = !{!"_ZTSN11xalanc_1_1020FormatterToXercesDOME", !46, i64 0, !48, i64 24, !48, i64 32, !48, i64 40, !52, i64 48, !54, i64 80, !54, i64 120}
!46 = !{!"_ZTSN11xalanc_1_1017FormatterListenerE", !47, i64 0, !48, i64 8, !50, i64 16, !51, i64 20}
!47 = !{!"_ZTSN11xercesc_2_715DocumentHandlerE"}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !43, i64 0}
!50 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !49, i64 0}
!51 = !{!"_ZTSN11xalanc_1_1017FormatterListener11eXMLVersionE", !49, i64 0}
!52 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPN11xercesc_2_710DOMElementENS_31MemoryManagedConstructionTraitsIS3_EEEE", !48, i64 0, !53, i64 8, !53, i64 16, !48, i64 24}
!53 = !{!"long", !49, i64 0}
!54 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !55, i64 0, !56, i64 32}
!55 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !48, i64 0, !53, i64 8, !53, i64 16, !48, i64 24}
!56 = !{!"int", !49, i64 0}
!57 = !{!45, !48, i64 32}
!58 = !{!45, !48, i64 40}
!59 = !{!52, !48, i64 0}
!60 = !{!52, !53, i64 16}
!61 = !{!52, !48, i64 24}
!62 = !{!54, !56, i64 32}
!63 = !{!55, !53, i64 8}
!64 = !{!46, !48, i64 8}
!65 = !{!52, !53, i64 8}
!66 = !{!48, !48, i64 0}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = distinct !{!70, !68, !69}
!71 = !{!"function_entry_count", i64 42470003}
!72 = !{!55, !53, i64 16}
!73 = !{!"branch_weights", i32 52000, i32 42418003}
!74 = !{!55, !48, i64 24}
!75 = !{!55, !48, i64 0}
!76 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!77 = distinct !{!77, !68, !69}
!78 = distinct !{!78, !68, !69}
!79 = distinct !{!79, !68, !69}
!80 = distinct !{!80, !68, !69}
!81 = !{!"function_entry_count", i64 1}
!82 = !{!"FormatterToXercesDOM.cpp;_GLOBAL__sub_I_FormatterToXercesDOM.cpp"}

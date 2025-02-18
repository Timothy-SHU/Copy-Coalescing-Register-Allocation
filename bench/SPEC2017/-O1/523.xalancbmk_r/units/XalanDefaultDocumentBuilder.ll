; ModuleID = 'XalanDefaultDocumentBuilder.cpp'
source_filename = "XalanDefaultDocumentBuilder.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDefaultDocumentBuilder" = type { %"class.xalanc_1_10::XalanDocumentBuilder", %"class.xalanc_1_10::XalanSourceTreeDOMSupport", %"class.xalanc_1_10::XalanSourceTreeParserLiaison", %"class.xalanc_1_10::XalanSourceTreeContentHandler", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanDocumentBuilder" = type { %"class.xalanc_1_10::XalanParsedSource" }
%"class.xalanc_1_10::XalanParsedSource" = type { ptr }
%"class.xalanc_1_10::XalanSourceTreeDOMSupport" = type { %"class.xalanc_1_10::DOMSupport", ptr }
%"class.xalanc_1_10::DOMSupport" = type { ptr }
%"class.xalanc_1_10::XalanSourceTreeParserLiaison" = type { %"class.xalanc_1_10::XMLParserLiaison", %"class.xalanc_1_10::XercesParserLiaison", %"class.xalanc_1_10::XalanMap.1", i8, ptr }
%"class.xalanc_1_10::XMLParserLiaison" = type { ptr }
%"class.xalanc_1_10::XercesParserLiaison" = type { %"class.xalanc_1_10::XMLParserLiaison", %"class.xercesc_2_7::ErrorHandler", i32, i8, i8, i8, i8, ptr, ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanMap", i8, i8, i8, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ErrorHandler" = type { ptr }
%"class.xalanc_1_10::XalanMap" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.0", i64, i64 }
%"class.xalanc_1_10::XalanHasher" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.1" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.2", %"class.xalanc_1_10::XalanList.2", %"class.xalanc_1_10::XalanVector.3", i64, i64 }
%"class.xalanc_1_10::XalanList.2" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanSourceTreeContentHandler" = type <{ %"class.xercesc_2_7::ContentHandler", %"class.xercesc_2_7::DTDHandler", %"class.xercesc_2_7::LexicalHandler", ptr, ptr, %"class.xalanc_1_10::XalanVector.4", ptr, %"class.xalanc_1_10::XalanVector.5", i8, [7 x i8], %"class.xalanc_1_10::XalanDOMString", i8, [7 x i8] }>
%"class.xercesc_2_7::ContentHandler" = type { ptr }
%"class.xercesc_2_7::DTDHandler" = type { ptr }
%"class.xercesc_2_7::LexicalHandler" = type { ptr }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.5" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZTSN11xalanc_1_1020XalanDocumentBuilderE = comdat any

$_ZTIN11xalanc_1_1020XalanDocumentBuilderE = comdat any

@_ZTVN11xalanc_1_1027XalanDefaultDocumentBuilderE = dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1027XalanDefaultDocumentBuilderE, ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilderD2Ev, ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilderD0Ev, ptr @_ZNK11xalanc_1_1027XalanDefaultDocumentBuilder11getDocumentEv, ptr @_ZNK11xalanc_1_1027XalanDefaultDocumentBuilder12createHelperERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1027XalanDefaultDocumentBuilder6getURIEv, ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilder17getContentHandlerEv, ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilder13getDTDHandlerEv, ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilder17getLexicalHandlerEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1027XalanDefaultDocumentBuilderE = dso_local constant [45 x i8] c"N11xalanc_1_1027XalanDefaultDocumentBuilderE\00", align 1
@_ZTSN11xalanc_1_1020XalanDocumentBuilderE = linkonce_odr dso_local constant [38 x i8] c"N11xalanc_1_1020XalanDocumentBuilderE\00", comdat, align 1
@_ZTIN11xalanc_1_1017XalanParsedSourceE = external constant ptr
@_ZTIN11xalanc_1_1020XalanDocumentBuilderE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1020XalanDocumentBuilderE, ptr @_ZTIN11xalanc_1_1017XalanParsedSourceE }, comdat, align 8
@_ZTIN11xalanc_1_1027XalanDefaultDocumentBuilderE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1027XalanDefaultDocumentBuilderE, ptr @_ZTIN11xalanc_1_1020XalanDocumentBuilderE }, align 8

@_ZN11xalanc_1_1027XalanDefaultDocumentBuilderC1ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilderC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE
@_ZN11xalanc_1_1027XalanDefaultDocumentBuilderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilderD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1027XalanDefaultDocumentBuilderC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xalanc_1_1017XalanParsedSourceC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xalanc_1_1027XalanDefaultDocumentBuilderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %5 unwind label %15

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(448) %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %7 unwind label %17

7:                                                ; preds = %5
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 3
  %9 = invoke noundef ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison29createXalanSourceTreeDocumentEv(ptr noundef nonnull align 8 dereferenceable(448) %6)
          to label %10 unwind label %19

10:                                               ; preds = %7
  invoke void @_ZN11xalanc_1_1029XalanSourceTreeContentHandlerC1ERN11xercesc_2_713MemoryManagerEPNS_23XalanSourceTreeDocumentEb(ptr noundef nonnull align 8 dereferenceable(161) %8, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %9, i1 noundef zeroext true)
          to label %11 unwind label %19

11:                                               ; preds = %10
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0, i32 noundef -1)
          to label %13 unwind label %21

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 1, i32 1
  store ptr %6, ptr %14, align 8, !tbaa !41
  ret void

15:                                               ; preds = %3
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %27

17:                                               ; preds = %5
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %25

19:                                               ; preds = %10, %7
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %11
  %22 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1029XalanSourceTreeContentHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(161) %8) #9
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  tail call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %6) #9
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %18, %17 ]
  tail call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #9
  br label %27

27:                                               ; preds = %25, %15
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %16, %15 ]
  tail call void @_ZN11xalanc_1_1017XalanParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %28
}

declare void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison29createXalanSourceTreeDocumentEv(ptr noundef nonnull align 8 dereferenceable(448)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1029XalanSourceTreeContentHandlerC1ERN11xercesc_2_713MemoryManagerEPNS_23XalanSourceTreeDocumentEb(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1029XalanSourceTreeContentHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilder6createERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 680)
  invoke void @_ZN11xalanc_1_1027XalanDefaultDocumentBuilderC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(680) %6, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret ptr %6

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = icmp eq ptr %6, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 8, !tbaa !38
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %6)
          to label %18 unwind label %15

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  tail call void @__clang_call_terminate(ptr %17) #10
  unreachable

18:                                               ; preds = %8, %11
  resume { ptr, i32 } %9
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1027XalanDefaultDocumentBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(680) %0) unnamed_addr #3 align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xalanc_1_1027XalanDefaultDocumentBuilderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #9
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1029XalanSourceTreeContentHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(161) %3) #9
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %4) #9
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #9
  tail call void @_ZN11xalanc_1_1017XalanParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1027XalanDefaultDocumentBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(680) %0) unnamed_addr #3 align 2 !prof !37 {
  tail call void @_ZN11xalanc_1_1027XalanDefaultDocumentBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(680) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1027XalanDefaultDocumentBuilder11getDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(680) %0) unnamed_addr #5 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 3, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1027XalanDefaultDocumentBuilder12createHelperERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper6createERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret ptr %4
}

declare noundef ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper6createERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilder17getContentHandlerEv(ptr noundef nonnull readnone align 8 dereferenceable(680) %0) unnamed_addr #6 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilder13getDTDHandlerEv(ptr noundef nonnull readnone align 8 dereferenceable(680) %0) unnamed_addr #6 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 3, i32 1
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilder17getLexicalHandlerEv(ptr noundef nonnull readnone align 8 dereferenceable(680) %0) unnamed_addr #6 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 3, i32 2
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1027XalanDefaultDocumentBuilder6getURIEv(ptr noundef nonnull readnone align 8 dereferenceable(680) %0) unnamed_addr #6 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 4
  ret ptr %2
}

declare void @_ZN11xalanc_1_1017XalanParsedSourceC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !59
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !60

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = load ptr, ptr %0, align 8, !tbaa !62
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !63

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #10
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !37 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!42, !44, i64 8}
!42 = !{!"_ZTSN11xalanc_1_1025XalanSourceTreeDOMSupportE", !43, i64 0, !44, i64 8}
!43 = !{!"_ZTSN11xalanc_1_1010DOMSupportE"}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !40, i64 0}
!46 = !{!47, !44, i64 24}
!47 = !{!"_ZTSN11xalanc_1_1029XalanSourceTreeContentHandlerE", !48, i64 0, !49, i64 8, !50, i64 16, !44, i64 24, !44, i64 32, !51, i64 40, !44, i64 72, !53, i64 80, !54, i64 112, !55, i64 120, !54, i64 160}
!48 = !{!"_ZTSN11xercesc_2_714ContentHandlerE"}
!49 = !{!"_ZTSN11xercesc_2_710DTDHandlerE"}
!50 = !{!"_ZTSN11xercesc_2_714LexicalHandlerE"}
!51 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEE", !44, i64 0, !52, i64 8, !52, i64 16, !44, i64 24}
!52 = !{!"long", !45, i64 0}
!53 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !44, i64 0, !52, i64 8, !52, i64 16, !44, i64 24}
!54 = !{!"bool", !45, i64 0}
!55 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !56, i64 0, !57, i64 32}
!56 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !44, i64 0, !52, i64 8, !52, i64 16, !44, i64 24}
!57 = !{!"int", !45, i64 0}
!58 = !{!"function_entry_count", i64 42470003}
!59 = !{!56, !52, i64 16}
!60 = !{!"branch_weights", i32 52000, i32 42418003}
!61 = !{!56, !44, i64 24}
!62 = !{!56, !44, i64 0}
!63 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}

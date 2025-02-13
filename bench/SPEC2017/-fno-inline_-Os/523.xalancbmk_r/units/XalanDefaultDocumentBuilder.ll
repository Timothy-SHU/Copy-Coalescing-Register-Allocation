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
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDefaultDocumentBuilder, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDefaultDocumentBuilder, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }

$_ZN11xalanc_1_1020XalanDocumentBuilderC2Ev = comdat any

$_ZN11xalanc_1_1025XalanSourceTreeDOMSupport16setParserLiaisonEPKNS_28XalanSourceTreeParserLiaisonE = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EED2Ev = comdat any

$_ZNK11xalanc_1_1029XalanSourceTreeContentHandler11getDocumentEv = comdat any

$_ZN11xalanc_1_1020XalanDocumentBuilderD0Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1027XalanDefaultDocumentBuilderEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZTSN11xalanc_1_1020XalanDocumentBuilderE = comdat any

$_ZTIN11xalanc_1_1020XalanDocumentBuilderE = comdat any

$_ZTVN11xalanc_1_1020XalanDocumentBuilderE = comdat any

@_ZTVN11xalanc_1_1027XalanDefaultDocumentBuilderE = dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1027XalanDefaultDocumentBuilderE, ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilderD2Ev, ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilderD0Ev, ptr @_ZNK11xalanc_1_1027XalanDefaultDocumentBuilder11getDocumentEv, ptr @_ZNK11xalanc_1_1027XalanDefaultDocumentBuilder12createHelperERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1027XalanDefaultDocumentBuilder6getURIEv, ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilder17getContentHandlerEv, ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilder13getDTDHandlerEv, ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilder17getLexicalHandlerEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1027XalanDefaultDocumentBuilderE = dso_local constant [45 x i8] c"N11xalanc_1_1027XalanDefaultDocumentBuilderE\00", align 1
@_ZTSN11xalanc_1_1020XalanDocumentBuilderE = linkonce_odr dso_local constant [38 x i8] c"N11xalanc_1_1020XalanDocumentBuilderE\00", comdat, align 1
@_ZTIN11xalanc_1_1017XalanParsedSourceE = external constant ptr
@_ZTIN11xalanc_1_1020XalanDocumentBuilderE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1020XalanDocumentBuilderE, ptr @_ZTIN11xalanc_1_1017XalanParsedSourceE }, comdat, align 8
@_ZTIN11xalanc_1_1027XalanDefaultDocumentBuilderE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1027XalanDefaultDocumentBuilderE, ptr @_ZTIN11xalanc_1_1020XalanDocumentBuilderE }, align 8
@_ZTVN11xalanc_1_1020XalanDocumentBuilderE = linkonce_odr dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1020XalanDocumentBuilderE, ptr @_ZN11xalanc_1_1017XalanParsedSourceD2Ev, ptr @_ZN11xalanc_1_1020XalanDocumentBuilderD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8

@_ZN11xalanc_1_1027XalanDefaultDocumentBuilderC1ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilderC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE
@_ZN11xalanc_1_1027XalanDefaultDocumentBuilderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilderD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1027XalanDefaultDocumentBuilderC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  tail call void @_ZN11xalanc_1_1020XalanDocumentBuilderC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xalanc_1_1027XalanDefaultDocumentBuilderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #9
          to label %5 unwind label %14

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(448) %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
          to label %7 unwind label %16

7:                                                ; preds = %5
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 3
  %9 = invoke noundef ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison29createXalanSourceTreeDocumentEv(ptr noundef nonnull align 8 dereferenceable(448) %6) #9
          to label %10 unwind label %18

10:                                               ; preds = %7
  invoke void @_ZN11xalanc_1_1029XalanSourceTreeContentHandlerC1ERN11xercesc_2_713MemoryManagerEPNS_23XalanSourceTreeDocumentEb(ptr noundef nonnull align 8 dereferenceable(161) %8, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %9, i1 noundef zeroext true) #9
          to label %11 unwind label %18

11:                                               ; preds = %10
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0, i32 noundef -1) #9
          to label %13 unwind label %20

13:                                               ; preds = %11
  tail call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupport16setParserLiaisonEPKNS_28XalanSourceTreeParserLiaisonE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %6) #9
  ret void

14:                                               ; preds = %3
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %26

16:                                               ; preds = %5
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %24

18:                                               ; preds = %10, %7
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %22

20:                                               ; preds = %11
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1029XalanSourceTreeContentHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(161) %8) #10
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  tail call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %6) #10
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %17, %16 ]
  tail call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #10
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %15, %14 ]
  tail call void @_ZN11xalanc_1_1017XalanParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  resume { ptr, i32 } %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanDocumentBuilderC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_1017XalanParsedSourceC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xalanc_1_1020XalanDocumentBuilderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison29createXalanSourceTreeDocumentEv(ptr noundef nonnull align 8 dereferenceable(448)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1029XalanSourceTreeContentHandlerC1ERN11xercesc_2_713MemoryManagerEPNS_23XalanSourceTreeDocumentEb(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupport16setParserLiaisonEPKNS_28XalanSourceTreeParserLiaisonE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !51 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDOMSupport", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !57 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1029XalanSourceTreeContentHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilder6createERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %3 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %4 = load ptr, ptr %0, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 680) #9
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #9
  %8 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  invoke void @_ZN11xalanc_1_1027XalanDefaultDocumentBuilderC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(680) %8, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #9
          to label %9 unwind label %12

9:                                                ; preds = %2
  %10 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
          to label %11 unwind label %12

11:                                               ; preds = %9
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret ptr %8

12:                                               ; preds = %9, %2
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !47 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !47 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #9
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1027XalanDefaultDocumentBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(680) %0) unnamed_addr #2 align 2 !prof !47 {
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xalanc_1_1027XalanDefaultDocumentBuilderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #10
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1029XalanSourceTreeContentHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(161) %3) #10
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %4) #10
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #10
  tail call void @_ZN11xalanc_1_1017XalanParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1027XalanDefaultDocumentBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(680) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xalanc_1_1027XalanDefaultDocumentBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(680) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1027XalanDefaultDocumentBuilder11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(680) %0) unnamed_addr #2 align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1029XalanSourceTreeContentHandler11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(161) %2) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1029XalanSourceTreeContentHandler11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(161) %0) local_unnamed_addr #2 comdat align 2 !prof !51 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeContentHandler", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1027XalanDefaultDocumentBuilder12createHelperERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 !prof !47 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper6createERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper6createERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilder17getContentHandlerEv(ptr noundef nonnull readnone align 8 dereferenceable(680) %0) unnamed_addr #6 align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilder13getDTDHandlerEv(ptr noundef nonnull readnone align 8 dereferenceable(680) %0) unnamed_addr #6 align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 3, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilder17getLexicalHandlerEv(ptr noundef nonnull readnone align 8 dereferenceable(680) %0) unnamed_addr #6 align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 3, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1027XalanDefaultDocumentBuilder6getURIEv(ptr noundef nonnull readnone align 8 dereferenceable(680) %0) unnamed_addr #6 align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultDocumentBuilder", ptr %0, i64 0, i32 4
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanParsedSourceC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanDocumentBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
  tail call void @llvm.trap() #12
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !73
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !74

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #9
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #9
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !76 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !77 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !78

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #9
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !79, !llvm.loop !80

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !82 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !83 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !77 {
  %3 = load ptr, ptr %0, align 8, !tbaa !84
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #2 comdat align 2 !prof !85 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !87
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !47 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !88
  store ptr %2, ptr %5, align 8, !tbaa !88
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1027XalanDefaultDocumentBuilderEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1027XalanDefaultDocumentBuilderEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 comdat align 2 !prof !47 {
  %4 = load ptr, ptr %1, align 8, !tbaa !88
  store ptr %4, ptr %0, align 8, !tbaa !89
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !88
  store ptr %6, ptr %5, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !47 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !47 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = load ptr, ptr %4, align 8, !tbaa !48
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #9
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !47 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !47 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  store ptr %1, ptr %0, align 8, !tbaa !89
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !58
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XalanDefaultDocumentBuilderELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  ret void
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!46}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!36 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!"function_entry_count", i64 1}
!52 = !{!53, !55, i64 8}
!53 = !{!"_ZTSN11xalanc_1_1025XalanSourceTreeDOMSupportE", !54, i64 0, !55, i64 8}
!54 = !{!"_ZTSN11xalanc_1_1010DOMSupportE"}
!55 = !{!"any pointer", !56, i64 0}
!56 = !{!"omnipotent char", !50, i64 0}
!57 = !{!"function_entry_count", i64 43398227}
!58 = !{!59, !55, i64 8}
!59 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1027XalanDefaultDocumentBuilderEE", !55, i64 0, !55, i64 8}
!60 = !{!61, !55, i64 24}
!61 = !{!"_ZTSN11xalanc_1_1029XalanSourceTreeContentHandlerE", !62, i64 0, !63, i64 8, !64, i64 16, !55, i64 24, !55, i64 32, !65, i64 40, !55, i64 72, !67, i64 80, !68, i64 112, !69, i64 120, !68, i64 160}
!62 = !{!"_ZTSN11xercesc_2_714ContentHandlerE"}
!63 = !{!"_ZTSN11xercesc_2_710DTDHandlerE"}
!64 = !{!"_ZTSN11xercesc_2_714LexicalHandlerE"}
!65 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEE", !55, i64 0, !66, i64 8, !66, i64 16, !55, i64 24}
!66 = !{!"long", !56, i64 0}
!67 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !55, i64 0, !66, i64 8, !66, i64 16, !55, i64 24}
!68 = !{!"bool", !56, i64 0}
!69 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !70, i64 0, !71, i64 32}
!70 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !55, i64 0, !66, i64 8, !66, i64 16, !55, i64 24}
!71 = !{!"int", !56, i64 0}
!72 = !{!"function_entry_count", i64 128698679}
!73 = !{!70, !66, i64 16}
!74 = !{!"branch_weights", i32 43398290, i32 85300391}
!75 = !{!70, !55, i64 24}
!76 = !{!"function_entry_count", i64 6521798493}
!77 = !{!"function_entry_count", i64 85300390}
!78 = !{!"branch_weights", i32 1, i32 12185770}
!79 = !{!"branch_weights", i32 12185770, i32 -193930396}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!"function_entry_count", i64 227375739}
!83 = !{!"function_entry_count", i64 568333389}
!84 = !{!70, !55, i64 0}
!85 = !{!"function_entry_count", i64 30137156660}
!86 = !{!"function_entry_count", i64 825654971}
!87 = !{!70, !66, i64 8}
!88 = !{!55, !55, i64 0}
!89 = !{!59, !55, i64 0}

; ModuleID = 'XalanDefaultParsedSource.cpp'
source_filename = "XalanDefaultParsedSource.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDefaultParsedSourceDOMSupport" = type { %"class.xalanc_1_10::XalanSourceTreeDOMSupport", ptr }
%"class.xalanc_1_10::XalanSourceTreeDOMSupport" = type { %"class.xalanc_1_10::DOMSupport", ptr }
%"class.xalanc_1_10::DOMSupport" = type { ptr }
%"class.xalanc_1_10::XalanDefaultParsedSourceHelper" = type { %"class.xalanc_1_10::XalanParsedSourceHelper", %"class.xalanc_1_10::XalanSourceTreeParserLiaison", %"class.xalanc_1_10::XalanDefaultParsedSourceDOMSupport" }
%"class.xalanc_1_10::XalanParsedSourceHelper" = type { ptr }
%"class.xalanc_1_10::XalanSourceTreeParserLiaison" = type { %"class.xalanc_1_10::XMLParserLiaison", %"class.xalanc_1_10::XercesParserLiaison", %"class.xalanc_1_10::XalanMap.1", i8, ptr }
%"class.xalanc_1_10::XMLParserLiaison" = type { ptr }
%"class.xalanc_1_10::XercesParserLiaison" = type { %"class.xalanc_1_10::XMLParserLiaison", %"class.xercesc_2_7::ErrorHandler", i32, i8, i8, i8, i8, ptr, ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanMap", i8, i8, i8, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ErrorHandler" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.0", i64, i64 }
%"class.xalanc_1_10::XalanHasher" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.1" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.2", %"class.xalanc_1_10::XalanList.2", %"class.xalanc_1_10::XalanVector.3", i64, i64 }
%"class.xalanc_1_10::XalanList.2" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDefaultParsedSource" = type { %"class.xalanc_1_10::XalanParsedSource", %"class.xalanc_1_10::XalanSourceTreeParserLiaison", %"class.xalanc_1_10::XalanSourceTreeDOMSupport", ptr, %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanParsedSource" = type { ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDefaultParsedSourceHelper, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDefaultParsedSourceHelper, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.4" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDefaultParsedSource, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDefaultParsedSource, false>::MemMgrAutoPtrData" = type { %"struct.std::pair.5" }
%"struct.std::pair.5" = type { ptr, ptr }

$_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

$_ZN11xalanc_1_1023XalanParsedSourceHelperC2Ev = comdat any

$_ZN11xalanc_1_1023XalanParsedSourceHelperD2Ev = comdat any

$_ZN11xalanc_1_1023XalanParsedSourceHelperD0Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1030XalanDefaultParsedSourceHelperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14setPoolAllTextEb = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1025XalanSourceTreeDOMSupport16setParserLiaisonEPKNS_28XalanSourceTreeParserLiaisonE = comdat any

$_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtRNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1014XalanDOMStringaSEPKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6appendEPKt = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1024XalanDefaultParsedSourceEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZTSN11xalanc_1_1023XalanParsedSourceHelperE = comdat any

$_ZTIN11xalanc_1_1023XalanParsedSourceHelperE = comdat any

$_ZTVN11xalanc_1_1023XalanParsedSourceHelperE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportE, ptr @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportD2Ev, ptr @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportD0Ev, ptr @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupport5resetEv, ptr @_ZNK11xalanc_1_1034XalanDefaultParsedSourceDOMSupport20getUnparsedEntityURIERKNS_14XalanDOMStringERKNS_13XalanDocumentE, ptr @_ZNK11xalanc_1_1034XalanDefaultParsedSourceDOMSupport11isNodeAfterERKNS_9XalanNodeES3_] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportE = dso_local constant [52 x i8] c"N11xalanc_1_1034XalanDefaultParsedSourceDOMSupportE\00", align 1
@_ZTIN11xalanc_1_1025XalanSourceTreeDOMSupportE = external constant ptr
@_ZTIN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportE, ptr @_ZTIN11xalanc_1_1025XalanSourceTreeDOMSupportE }, align 8
@_ZTVN11xalanc_1_1030XalanDefaultParsedSourceHelperE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1030XalanDefaultParsedSourceHelperE, ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperD2Ev, ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperD0Ev, ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper13getDOMSupportEv, ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper16getParserLiaisonEv] }, align 8
@_ZTSN11xalanc_1_1030XalanDefaultParsedSourceHelperE = dso_local constant [48 x i8] c"N11xalanc_1_1030XalanDefaultParsedSourceHelperE\00", align 1
@_ZTSN11xalanc_1_1023XalanParsedSourceHelperE = linkonce_odr dso_local constant [41 x i8] c"N11xalanc_1_1023XalanParsedSourceHelperE\00", comdat, align 1
@_ZTIN11xalanc_1_1023XalanParsedSourceHelperE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1023XalanParsedSourceHelperE }, comdat, align 8
@_ZTIN11xalanc_1_1030XalanDefaultParsedSourceHelperE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1030XalanDefaultParsedSourceHelperE, ptr @_ZTIN11xalanc_1_1023XalanParsedSourceHelperE }, align 8
@_ZTVN11xalanc_1_1024XalanDefaultParsedSourceE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1024XalanDefaultParsedSourceE, ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceD2Ev, ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceD0Ev, ptr @_ZNK11xalanc_1_1024XalanDefaultParsedSource11getDocumentEv, ptr @_ZNK11xalanc_1_1024XalanDefaultParsedSource12createHelperERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1024XalanDefaultParsedSource6getURIEv] }, align 8
@_ZTSN11xalanc_1_1024XalanDefaultParsedSourceE = dso_local constant [42 x i8] c"N11xalanc_1_1024XalanDefaultParsedSourceE\00", align 1
@_ZTIN11xalanc_1_1017XalanParsedSourceE = external constant ptr
@_ZTIN11xalanc_1_1024XalanDefaultParsedSourceE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1024XalanDefaultParsedSourceE, ptr @_ZTIN11xalanc_1_1017XalanParsedSourceE }, align 8
@_ZTVN11xalanc_1_1023XalanParsedSourceHelperE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1023XalanParsedSourceHelperE, ptr @_ZN11xalanc_1_1023XalanParsedSourceHelperD2Ev, ptr @_ZN11xalanc_1_1023XalanParsedSourceHelperD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr

@_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportC1ERKNS_28XalanSourceTreeParserLiaisonERKNS_25XalanSourceTreeDOMSupportE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportC2ERKNS_28XalanSourceTreeParserLiaisonERKNS_25XalanSourceTreeDOMSupportE
@_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportD2Ev
@_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperC1ERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperC2ERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperD2Ev
@_ZN11xalanc_1_1024XalanDefaultParsedSourceC1ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i1, ptr, ptr, ptr, ptr, i1, ptr), ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE
@_ZN11xalanc_1_1024XalanDefaultParsedSourceD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupport5resetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !115 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1034XalanDefaultParsedSourceDOMSupport20getUnparsedEntityURIERKNS_14XalanDOMStringERKNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 !prof !116 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceDOMSupport", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %10 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %9) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XalanSourceTreeDOMSupport20getUnparsedEntityURIERKNS_14XalanDOMStringERKNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  br label %14

14:                                               ; preds = %3, %12
  %15 = phi ptr [ %13, %12 ], [ %9, %3 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1034XalanDefaultParsedSourceDOMSupport11isNodeAfterERKNS_9XalanNodeES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 !prof !116 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceDOMSupport", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  ret i1 %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperD0Ev(ptr noundef nonnull align 8 dereferenceable(480) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperD2Ev(ptr noundef nonnull align 8 dereferenceable(480) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper13getDOMSupportEv(ptr noundef nonnull readnone align 8 dereferenceable(480) %0) unnamed_addr #1 align 2 !prof !126 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceHelper", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper16getParserLiaisonEv(ptr noundef nonnull readnone align 8 dereferenceable(480) %0) unnamed_addr #1 align 2 !prof !126 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceHelper", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XalanDefaultParsedSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(520) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1024XalanDefaultParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(520) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1024XalanDefaultParsedSource11getDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(520) %0) unnamed_addr #3 align 2 !prof !126 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !127
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1024XalanDefaultParsedSource12createHelperERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 !prof !126 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper6createERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XalanDefaultParsedSource6getURIEv(ptr noundef nonnull readnone align 8 dereferenceable(520) %0) unnamed_addr #1 align 2 !prof !126 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 4
  ret ptr %2
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportC2ERKNS_28XalanSourceTreeParserLiaisonERKNS_25XalanSourceTreeDOMSupportE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(448) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #2 align 2 !prof !126 {
  tail call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC2ERKNS_28XalanSourceTreeParserLiaisonE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(448) %1) #13
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !124
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceDOMSupport", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !148
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC2ERKNS_28XalanSourceTreeParserLiaisonE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(448)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 !prof !126 {
  tail call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat !prof !149 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  ret i32 %2
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XalanSourceTreeDOMSupport20getUnparsedEntityURIERKNS_14XalanDOMStringERKNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !150 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !151 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !152 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !153
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperC2ERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !126 {
  tail call void @_ZN11xalanc_1_1023XalanParsedSourceHelperC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1030XalanDefaultParsedSourceHelperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !124
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceHelper", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(448) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
          to label %5 unwind label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceHelper", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportC2ERKNS_28XalanSourceTreeParserLiaisonERKNS_25XalanSourceTreeDOMSupportE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(448) %4, ptr noundef nonnull align 8 dereferenceable(16) %1) #13
          to label %7 unwind label %10

7:                                                ; preds = %5
  ret void

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %12

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %4) #11
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi { ptr, i32 } [ %11, %10 ], [ %9, %8 ]
  tail call void @_ZN11xalanc_1_1023XalanParsedSourceHelperD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanParsedSourceHelperC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1023XalanParsedSourceHelperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !124
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanParsedSourceHelperD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !126 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanParsedSourceHelperD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper6createERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !126 {
  %3 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %4 = load ptr, ptr %1, align 8, !tbaa !124
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 480) #13
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %7) #13
  %8 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  invoke void @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperC2ERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(480) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
          to label %9 unwind label %12

9:                                                ; preds = %2
  %10 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
          to label %11 unwind label %12

11:                                               ; preds = %9
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret ptr %8

12:                                               ; preds = %9, %2
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !126 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !126 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !126 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #13
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !126 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !126 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !148
  store ptr %2, ptr %5, align 8, !tbaa !148
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1030XalanDefaultParsedSourceHelperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1030XalanDefaultParsedSourceHelperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !126 {
  %4 = load ptr, ptr %1, align 8, !tbaa !148
  store ptr %4, ptr %0, align 8, !tbaa !156
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !148
  store ptr %6, ptr %5, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !157 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !126 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !156
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !154
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !126 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  br i1 %2, label %3, label %10, !prof !158

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !156
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !154
  %7 = load ptr, ptr %4, align 8, !tbaa !124
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #13
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !126 {
  %2 = load ptr, ptr %0, align 8, !tbaa !156
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperD2Ev(ptr noundef nonnull align 8 dereferenceable(480) %0) unnamed_addr #0 align 2 !prof !126 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1030XalanDefaultParsedSourceHelperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !124
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceHelper", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceHelper", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %3) #11
  tail call void @_ZN11xalanc_1_1023XalanParsedSourceHelperD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, ptr noundef nonnull align 8 dereferenceable(8) %8) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !126 {
  %10 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  tail call void @_ZN11xalanc_1_1017XalanParsedSourceC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1024XalanDefaultParsedSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !124
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(448) %11, ptr noundef nonnull align 8 dereferenceable(8) %8) #13
          to label %12 unwind label %37

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC1ERKNS_28XalanSourceTreeParserLiaisonE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(448) %11) #13
          to label %14 unwind label %41

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 3
  store ptr null, ptr %15, align 8, !tbaa !127
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull align 8 dereferenceable(8) %8) #13
          to label %17 unwind label %45

17:                                               ; preds = %14
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison16setUseValidationEb(ptr noundef nonnull align 8 dereferenceable(448) %11, i1 noundef zeroext %2) #13
          to label %18 unwind label %49

18:                                               ; preds = %17
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE(ptr noundef nonnull align 8 dereferenceable(448) %11, ptr noundef %4) #13
          to label %19 unwind label %49

19:                                               ; preds = %18
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(448) %11, ptr noundef %3) #13
          to label %20 unwind label %49

20:                                               ; preds = %19
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(448) %11, ptr noundef %5) #13
          to label %21 unwind label %49

21:                                               ; preds = %20
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(448) %11, ptr noundef %6) #13
          to label %22 unwind label %49

22:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14setPoolAllTextEb(ptr noundef nonnull align 8 dereferenceable(448) %11, i1 noundef zeroext %7) #13
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #15
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #13
          to label %24 unwind label %53

24:                                               ; preds = %22
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %23) #13
          to label %25 unwind label %53

25:                                               ; preds = %24
  %26 = invoke noundef ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(448) %11, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(36) %10) #13
          to label %27 unwind label %55

27:                                               ; preds = %25
  %28 = invoke noundef ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison11mapDocumentEPKNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(448) %11, ptr noundef %26) #13
          to label %29 unwind label %55

29:                                               ; preds = %27
  store ptr %28, ptr %15, align 8, !tbaa !127
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %10) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #15
  call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupport16setParserLiaisonEPKNS_28XalanSourceTreeParserLiaisonE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %11) #13
  %30 = load ptr, ptr %1, align 8, !tbaa !124
  %31 = getelementptr inbounds ptr, ptr %30, i64 5
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(41) %1) #13
          to label %34 unwind label %61

34:                                               ; preds = %29
  %35 = icmp eq ptr %33, null
  br i1 %35, label %83, label %36, !prof !158

36:                                               ; preds = %34
  invoke void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtRNS_14XalanDOMStringE(ptr noundef nonnull %33, ptr noundef nonnull align 8 dereferenceable(36) %16) #13
          to label %83 unwind label %65

37:                                               ; preds = %9
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = extractvalue { ptr, i32 } %38, 0
  %40 = extractvalue { ptr, i32 } %38, 1
  br label %93

41:                                               ; preds = %12
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = extractvalue { ptr, i32 } %42, 0
  %44 = extractvalue { ptr, i32 } %42, 1
  br label %90

45:                                               ; preds = %14
  %46 = landingpad { ptr, i32 }
          cleanup
  %47 = extractvalue { ptr, i32 } %46, 0
  %48 = extractvalue { ptr, i32 } %46, 1
  br label %87

49:                                               ; preds = %21, %20, %19, %18, %17
  %50 = landingpad { ptr, i32 }
          cleanup
  %51 = extractvalue { ptr, i32 } %50, 0
  %52 = extractvalue { ptr, i32 } %50, 1
  br label %84

53:                                               ; preds = %24, %22
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %57

55:                                               ; preds = %27, %25
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %10) #11
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi { ptr, i32 } [ %56, %55 ], [ %54, %53 ]
  %59 = extractvalue { ptr, i32 } %58, 0
  %60 = extractvalue { ptr, i32 } %58, 1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #15
  br label %84

61:                                               ; preds = %29
  %62 = landingpad { ptr, i32 }
          cleanup
  %63 = extractvalue { ptr, i32 } %62, 0
  %64 = extractvalue { ptr, i32 } %62, 1
  br label %84

65:                                               ; preds = %36
  %66 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %67 = extractvalue { ptr, i32 } %66, 0
  %68 = extractvalue { ptr, i32 } %66, 1
  %69 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #15
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = call ptr @__cxa_begin_catch(ptr %67) #15
  %73 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull %33) #13
          to label %74 unwind label %75

74:                                               ; preds = %71
  invoke void @__cxa_end_catch()
          to label %83 unwind label %77

75:                                               ; preds = %71
  %76 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %79 unwind label %98

77:                                               ; preds = %74
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %79

79:                                               ; preds = %75, %77
  %80 = phi { ptr, i32 } [ %78, %77 ], [ %76, %75 ]
  %81 = extractvalue { ptr, i32 } %80, 0
  %82 = extractvalue { ptr, i32 } %80, 1
  br label %84

83:                                               ; preds = %74, %36, %34
  ret void

84:                                               ; preds = %61, %65, %79, %57, %49
  %85 = phi i32 [ %60, %57 ], [ %52, %49 ], [ %82, %79 ], [ %68, %65 ], [ %64, %61 ]
  %86 = phi ptr [ %59, %57 ], [ %51, %49 ], [ %81, %79 ], [ %67, %65 ], [ %63, %61 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %16) #11
  br label %87

87:                                               ; preds = %84, %45
  %88 = phi i32 [ %85, %84 ], [ %48, %45 ]
  %89 = phi ptr [ %86, %84 ], [ %47, %45 ]
  call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #11
  br label %90

90:                                               ; preds = %87, %41
  %91 = phi i32 [ %88, %87 ], [ %44, %41 ]
  %92 = phi ptr [ %89, %87 ], [ %43, %41 ]
  call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %11) #11
  br label %93

93:                                               ; preds = %90, %37
  %94 = phi i32 [ %91, %90 ], [ %40, %37 ]
  %95 = phi ptr [ %92, %90 ], [ %39, %37 ]
  call void @_ZN11xalanc_1_1017XalanParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %96 = insertvalue { ptr, i32 } poison, ptr %95, 0
  %97 = insertvalue { ptr, i32 } %96, i32 %94, 1
  resume { ptr, i32 } %97

98:                                               ; preds = %75
  %99 = landingpad { ptr, i32 }
          catch ptr null
  %100 = extractvalue { ptr, i32 } %99, 0
  call void @__clang_call_terminate(ptr %100) #14
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanParsedSourceC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC1ERKNS_28XalanSourceTreeParserLiaisonE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(448)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison16setUseValidationEb(ptr noundef nonnull align 8 dereferenceable(448), i1 noundef zeroext) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14setPoolAllTextEb(ptr noundef nonnull align 8 dereferenceable(448) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !126 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 3
  store i8 %3, ptr %4, align 8, !tbaa !159
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison11mapDocumentEPKNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 !prof !160 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupport16setParserLiaisonEPKNS_28XalanSourceTreeParserLiaisonE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !126 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDOMSupport", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtRNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #2 comdat align 2 !prof !115 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #13
  tail call void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE(ptr noundef %0, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %1) #13
  ret void
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !162 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #13
  ret ptr %3
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !163 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !164
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !165

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #13
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !166
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #13
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !167 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !168 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !169

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #13
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !170, !llvm.loop !171

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !173 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !174 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !168 {
  %3 = load ptr, ptr %0, align 8, !tbaa !175
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !178
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !179 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #13
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #13
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !180 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #13
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3) #13
  ret ptr %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1024XalanDefaultParsedSource6createERN11xercesc_2_713MemoryManagerERKNS1_11InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSC_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !126 {
  %9 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr.4", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #15
  %10 = load ptr, ptr %0, align 8, !tbaa !124
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 520) #13
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %13) #13
  %14 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #13
  invoke void @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(520) %14, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, ptr noundef nonnull align 8 dereferenceable(8) %0) #13
          to label %15 unwind label %18

15:                                               ; preds = %8
  %16 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #13
          to label %17 unwind label %18

17:                                               ; preds = %15
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  ret ptr %14

18:                                               ; preds = %15, %8
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !126 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !126 {
  %2 = getelementptr inbounds %"struct.std::pair.5", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !126 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #13
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !126 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !126 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !148
  store ptr %2, ptr %5, align 8, !tbaa !148
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1024XalanDefaultParsedSourceEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1024XalanDefaultParsedSourceEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !126 {
  %4 = load ptr, ptr %1, align 8, !tbaa !148
  store ptr %4, ptr %0, align 8, !tbaa !183
  %5 = getelementptr inbounds %"struct.std::pair.5", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !148
  store ptr %6, ptr %5, align 8, !tbaa !181
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !157 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !126 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !183
  %4 = getelementptr inbounds %"struct.std::pair.5", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !181
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !126 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  br i1 %2, label %3, label %10, !prof !158

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !183
  %5 = getelementptr inbounds %"struct.std::pair.5", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !181
  %7 = load ptr, ptr %4, align 8, !tbaa !124
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #13
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !126 {
  %2 = load ptr, ptr %0, align 8, !tbaa !183
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair.5", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XalanDefaultParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(520) %0) unnamed_addr #0 align 2 !prof !126 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1024XalanDefaultParsedSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !124
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #11
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %4) #11
  tail call void @_ZN11xalanc_1_1017XalanParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { builtin nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!114}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113}
!36 = !{ptr @_ZNK11xalanc_1_1024XalanDefaultParsedSource12createHelperERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper6createERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportC2ERKNS_28XalanSourceTreeParserLiaisonERKNS_25XalanSourceTreeDOMSupportE, ptr @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC2ERKNS_28XalanSourceTreeParserLiaisonE, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportD2Ev, ptr @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD2Ev, i64 1}
!39 = !{ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 66708615}
!40 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527000}
!41 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527000}
!42 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337976}
!43 = !{ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperC2ERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1023XalanParsedSourceHelperC2Ev, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperC2ERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperC2ERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportC2ERKNS_28XalanSourceTreeParserLiaisonERKNS_25XalanSourceTreeDOMSupportE, i64 1}
!46 = !{ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper6createERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, i64 1}
!47 = !{ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper6createERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE3getEv, i64 1}
!48 = !{ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper6createERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperC2ERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE, i64 1}
!49 = !{ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper6createERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE7releaseEv, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper6createERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EED2Ev, i64 1}
!51 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, i64 1}
!52 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE7releaseEv, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, i64 1}
!53 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EED2Ev, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData10deallocateEv, i64 1}
!54 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1030XalanDefaultParsedSourceHelperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, i64 1}
!55 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData10invariantsEv, i64 1}
!56 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData10invariantsEv, i64 2}
!57 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData10invariantsEv, i64 1}
!58 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanDefaultParsedSourceHelperELb0EE17MemMgrAutoPtrData12isInitilizedEv, i64 1}
!59 = !{ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperD2Ev, ptr @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportD2Ev, i64 1}
!60 = !{ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperD2Ev, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev, i64 1}
!61 = !{ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperD2Ev, ptr @_ZN11xalanc_1_1023XalanParsedSourceHelperD2Ev, i64 1}
!62 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1017XalanParsedSourceC2Ev, i64 1}
!63 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!64 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC1ERKNS_28XalanSourceTreeParserLiaisonE, i64 1}
!65 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 2}
!66 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison16setUseValidationEb, i64 1}
!67 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE, i64 1}
!68 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE, i64 1}
!69 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison25setExternalSchemaLocationEPKt, i64 1}
!70 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison36setExternalNoNamespaceSchemaLocationEPKt, i64 1}
!71 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14setPoolAllTextEb, i64 1}
!72 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!73 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE, i64 1}
!74 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison11mapDocumentEPKNS_13XalanDocumentE, i64 1}
!75 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 1}
!76 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1025XalanSourceTreeDOMSupport16setParserLiaisonEPKNS_28XalanSourceTreeParserLiaisonE, i64 1}
!77 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtRNS_14XalanDOMStringE, i64 1}
!78 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!79 = !{ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 3}
!80 = !{ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE, i64 3}
!81 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, i64 1084346}
!82 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!83 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!84 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!85 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!86 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!87 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!88 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!89 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!90 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!91 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!92 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 2169010}
!93 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 1084505}
!94 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, i64 1084505}
!95 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 1179818}
!96 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 1179818}
!97 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSource6createERN11xercesc_2_713MemoryManagerERKNS1_11InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSC_b, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, i64 1}
!98 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSource6createERN11xercesc_2_713MemoryManagerERKNS1_11InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSC_b, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE3getEv, i64 1}
!99 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSource6createERN11xercesc_2_713MemoryManagerERKNS1_11InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSC_b, ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, i64 1}
!100 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSource6createERN11xercesc_2_713MemoryManagerERKNS1_11InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSC_b, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE7releaseEv, i64 1}
!101 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSource6createERN11xercesc_2_713MemoryManagerERKNS1_11InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSC_b, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EED2Ev, i64 1}
!102 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, i64 1}
!103 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE7releaseEv, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, i64 1}
!104 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EED2Ev, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData10deallocateEv, i64 1}
!105 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1024XalanDefaultParsedSourceEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, i64 1}
!106 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData10invariantsEv, i64 1}
!107 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData10invariantsEv, i64 2}
!108 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData10invariantsEv, i64 1}
!109 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanDefaultParsedSourceELb0EE17MemMgrAutoPtrData12isInitilizedEv, i64 1}
!110 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceD2Ev, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 1}
!111 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceD2Ev, ptr @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev, i64 1}
!112 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceD2Ev, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev, i64 1}
!113 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceD2Ev, ptr @_ZN11xalanc_1_1017XalanParsedSourceD2Ev, i64 1}
!114 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!115 = !{!"function_entry_count", i64 3}
!116 = !{!"function_entry_count", i64 0}
!117 = !{!118, !121, i64 16}
!118 = !{!"_ZTSN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportE", !119, i64 0, !121, i64 16}
!119 = !{!"_ZTSN11xalanc_1_1025XalanSourceTreeDOMSupportE", !120, i64 0, !121, i64 8}
!120 = !{!"_ZTSN11xalanc_1_1010DOMSupportE"}
!121 = !{!"any pointer", !122, i64 0}
!122 = !{!"omnipotent char", !123, i64 0}
!123 = !{!"Simple C++ TBAA"}
!124 = !{!125, !125, i64 0}
!125 = !{!"vtable pointer", !123, i64 0}
!126 = !{!"function_entry_count", i64 1}
!127 = !{!128, !121, i64 472}
!128 = !{!"_ZTSN11xalanc_1_1024XalanDefaultParsedSourceE", !129, i64 0, !130, i64 8, !119, i64 456, !121, i64 472, !136, i64 480}
!129 = !{!"_ZTSN11xalanc_1_1017XalanParsedSourceE"}
!130 = !{!"_ZTSN11xalanc_1_1028XalanSourceTreeParserLiaisonE", !131, i64 0, !132, i64 8, !145, i64 296, !135, i64 432, !121, i64 440}
!131 = !{!"_ZTSN11xalanc_1_1016XMLParserLiaisonE"}
!132 = !{!"_ZTSN11xalanc_1_1019XercesParserLiaisonE", !131, i64 0, !133, i64 8, !134, i64 16, !135, i64 20, !135, i64 21, !135, i64 22, !135, i64 23, !121, i64 24, !121, i64 32, !136, i64 40, !136, i64 80, !139, i64 120, !135, i64 256, !135, i64 257, !135, i64 258, !135, i64 259, !121, i64 264, !121, i64 272, !121, i64 280}
!133 = !{!"_ZTSN11xercesc_2_712ErrorHandlerE"}
!134 = !{!"int", !122, i64 0}
!135 = !{!"bool", !122, i64 0}
!136 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !137, i64 0, !134, i64 32}
!137 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !121, i64 0, !138, i64 8, !138, i64 16, !121, i64 24}
!138 = !{!"long", !122, i64 0}
!139 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEEE", !140, i64 0, !141, i64 1, !121, i64 8, !142, i64 16, !138, i64 24, !138, i64 32, !143, i64 40, !143, i64 64, !144, i64 88, !138, i64 120, !138, i64 128}
!140 = !{!"_ZTSN11xalanc_1_1011XalanHasherIPKNS_13XalanDocumentEEE"}
!141 = !{!"_ZTSSt8equal_toIPKN11xalanc_1_1013XalanDocumentEE"}
!142 = !{!"float", !122, i64 0}
!143 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !121, i64 0, !121, i64 8, !121, i64 16}
!144 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEE", !121, i64 0, !138, i64 8, !138, i64 16, !121, i64 24}
!145 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEEE", !140, i64 0, !141, i64 1, !121, i64 8, !142, i64 16, !138, i64 24, !138, i64 32, !146, i64 40, !146, i64 64, !147, i64 88, !138, i64 120, !138, i64 128}
!146 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !121, i64 0, !121, i64 8, !121, i64 16}
!147 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEE", !121, i64 0, !138, i64 8, !138, i64 16, !121, i64 24}
!148 = !{!121, !121, i64 0}
!149 = !{!"function_entry_count", i64 66708615}
!150 = !{!"function_entry_count", i64 230527000}
!151 = !{!"function_entry_count", i64 3070433826}
!152 = !{!"function_entry_count", i64 1414337976}
!153 = !{!136, !134, i64 32}
!154 = !{!155, !121, i64 8}
!155 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1030XalanDefaultParsedSourceHelperEE", !121, i64 0, !121, i64 8}
!156 = !{!155, !121, i64 0}
!157 = !{!"function_entry_count", i64 4}
!158 = !{!"branch_weights", i32 1, i32 2}
!159 = !{!130, !135, i64 432}
!160 = !{!"function_entry_count", i64 43398227}
!161 = !{!119, !121, i64 8}
!162 = !{!"function_entry_count", i64 1084346}
!163 = !{!"function_entry_count", i64 128698679}
!164 = !{!137, !138, i64 16}
!165 = !{!"branch_weights", i32 43398290, i32 85300391}
!166 = !{!137, !121, i64 24}
!167 = !{!"function_entry_count", i64 6521798503}
!168 = !{!"function_entry_count", i64 85300390}
!169 = !{!"branch_weights", i32 1, i32 12185770}
!170 = !{!"branch_weights", i32 12185770, i32 -193930395}
!171 = distinct !{!171, !172}
!172 = !{!"llvm.loop.mustprogress"}
!173 = !{!"function_entry_count", i64 227375739}
!174 = !{!"function_entry_count", i64 568333389}
!175 = !{!137, !121, i64 0}
!176 = !{!"function_entry_count", i64 30137156670}
!177 = !{!"function_entry_count", i64 825654975}
!178 = !{!137, !138, i64 8}
!179 = !{!"function_entry_count", i64 1084505}
!180 = !{!"function_entry_count", i64 1179818}
!181 = !{!182, !121, i64 8}
!182 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1024XalanDefaultParsedSourceEE", !121, i64 0, !121, i64 8}
!183 = !{!182, !121, i64 0}

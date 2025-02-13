; ModuleID = 'XercesDOMParsedSource.cpp'
source_filename = "XercesDOMParsedSource.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XercesDOMParsedSourceHelper" = type { %"class.xalanc_1_10::XalanParsedSourceHelper", %"class.xalanc_1_10::XercesDOMSupport", %"class.xalanc_1_10::XercesParserLiaison" }
%"class.xalanc_1_10::XalanParsedSourceHelper" = type { ptr }
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
%"class.xalanc_1_10::XercesParserLiaison" = type { %"class.xalanc_1_10::XMLParserLiaison", %"class.xercesc_2_7::ErrorHandler", i32, i8, i8, i8, i8, ptr, ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanMap", i8, i8, i8, i8, ptr, ptr, ptr }
%"class.xalanc_1_10::XMLParserLiaison" = type { ptr }
%"class.xercesc_2_7::ErrorHandler" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.0", %"class.xalanc_1_10::XalanList.0", %"class.xalanc_1_10::XalanVector.1", i64, i64 }
%"class.xalanc_1_10::XalanHasher" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList.0" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XercesDOMParsedSourceHelper, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XercesDOMParsedSourceHelper, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XercesDOMParsedSource" = type { %"class.xalanc_1_10::XalanParsedSource", %"class.xalanc_1_10::XercesParserLiaison", ptr, %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanParsedSource" = type { ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.2" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XercesDOMParsedSource, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XercesDOMParsedSource, false>::MemMgrAutoPtrData" = type { %"struct.std::pair.3" }
%"struct.std::pair.3" = type { ptr, ptr }

$_ZN11xalanc_1_1023XalanParsedSourceHelperC2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EED2Ev = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtRNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1014XalanDOMStringaSEPKt = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EED2Ev = comdat any

$_ZN11xalanc_1_1023XalanParsedSourceHelperD2Ev = comdat any

$_ZN11xalanc_1_1023XalanParsedSourceHelperD0Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignEPKt = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString6appendEPKt = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1027XercesDOMParsedSourceHelperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1021XercesDOMParsedSourceEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZTSN11xalanc_1_1023XalanParsedSourceHelperE = comdat any

$_ZTIN11xalanc_1_1023XalanParsedSourceHelperE = comdat any

$_ZTVN11xalanc_1_1023XalanParsedSourceHelperE = comdat any

@_ZTVN11xalanc_1_1027XercesDOMParsedSourceHelperE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1027XercesDOMParsedSourceHelperE, ptr @_ZN11xalanc_1_1027XercesDOMParsedSourceHelperD2Ev, ptr @_ZN11xalanc_1_1027XercesDOMParsedSourceHelperD0Ev, ptr @_ZN11xalanc_1_1027XercesDOMParsedSourceHelper13getDOMSupportEv, ptr @_ZN11xalanc_1_1027XercesDOMParsedSourceHelper16getParserLiaisonEv] }, align 8
@_ZTVN11xalanc_1_1021XercesDOMParsedSourceE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XercesDOMParsedSourceE, ptr @_ZN11xalanc_1_1021XercesDOMParsedSourceD2Ev, ptr @_ZN11xalanc_1_1021XercesDOMParsedSourceD0Ev, ptr @_ZNK11xalanc_1_1021XercesDOMParsedSource11getDocumentEv, ptr @_ZNK11xalanc_1_1021XercesDOMParsedSource12createHelperERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1021XercesDOMParsedSource6getURIEv] }, align 8
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1027XercesDOMParsedSourceHelperE = dso_local constant [45 x i8] c"N11xalanc_1_1027XercesDOMParsedSourceHelperE\00", align 1
@_ZTSN11xalanc_1_1023XalanParsedSourceHelperE = linkonce_odr dso_local constant [41 x i8] c"N11xalanc_1_1023XalanParsedSourceHelperE\00", comdat, align 1
@_ZTIN11xalanc_1_1023XalanParsedSourceHelperE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1023XalanParsedSourceHelperE }, comdat, align 8
@_ZTIN11xalanc_1_1027XercesDOMParsedSourceHelperE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1027XercesDOMParsedSourceHelperE, ptr @_ZTIN11xalanc_1_1023XalanParsedSourceHelperE }, align 8
@_ZTSN11xalanc_1_1021XercesDOMParsedSourceE = dso_local constant [39 x i8] c"N11xalanc_1_1021XercesDOMParsedSourceE\00", align 1
@_ZTIN11xalanc_1_1017XalanParsedSourceE = external constant ptr
@_ZTIN11xalanc_1_1021XercesDOMParsedSourceE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XercesDOMParsedSourceE, ptr @_ZTIN11xalanc_1_1017XalanParsedSourceE }, align 8
@_ZTVN11xalanc_1_1023XalanParsedSourceHelperE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1023XalanParsedSourceHelperE, ptr @_ZN11xalanc_1_1023XalanParsedSourceHelperD2Ev, ptr @_ZN11xalanc_1_1023XalanParsedSourceHelperD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8

@_ZN11xalanc_1_1027XercesDOMParsedSourceHelperC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1027XercesDOMParsedSourceHelperC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1027XercesDOMParsedSourceHelperD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1027XercesDOMParsedSourceHelperD2Ev
@_ZN11xalanc_1_1021XercesDOMParsedSourceC1ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_RNS1_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i1, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1021XercesDOMParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_RNS1_13MemoryManagerE
@_ZN11xalanc_1_1021XercesDOMParsedSourceD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021XercesDOMParsedSourceD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1027XercesDOMParsedSourceHelperC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xalanc_1_1023XalanParsedSourceHelperC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1027XercesDOMParsedSourceHelperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSourceHelper", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1016XercesDOMSupportC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
          to label %4 unwind label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSourceHelper", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1019XercesParserLiaisonC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(288) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
          to label %6 unwind label %9

6:                                                ; preds = %4
  ret void

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %11

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1016XercesDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #11
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi { ptr, i32 } [ %10, %9 ], [ %8, %7 ]
  tail call void @_ZN11xalanc_1_1023XalanParsedSourceHelperD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanParsedSourceHelperC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1023XalanParsedSourceHelperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XercesDOMSupportC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XercesParserLiaisonC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1016XercesDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1027XercesDOMParsedSourceHelper6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !56
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 424) #12
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %6) #12
  %7 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  invoke void @_ZN11xalanc_1_1027XercesDOMParsedSourceHelperC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(424) %7, ptr noundef nonnull align 8 dereferenceable(8) %0) #12
          to label %8 unwind label %11

8:                                                ; preds = %1
  %9 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
          to label %10 unwind label %11

10:                                               ; preds = %8
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret ptr %7

11:                                               ; preds = %8, %1
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !55 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !55 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !55 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #12
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1027XercesDOMParsedSourceHelperD2Ev(ptr noundef nonnull align 8 dereferenceable(424) %0) unnamed_addr #2 align 2 !prof !55 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1027XercesDOMParsedSourceHelperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSourceHelper", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1019XercesParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(288) %2) #11
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSourceHelper", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1016XercesDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #11
  tail call void @_ZN11xalanc_1_1023XalanParsedSourceHelperD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1019XercesParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1027XercesDOMParsedSourceHelperD0Ev(ptr noundef nonnull align 8 dereferenceable(424) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xalanc_1_1027XercesDOMParsedSourceHelperD2Ev(ptr noundef nonnull align 8 dereferenceable(424) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1027XercesDOMParsedSourceHelper13getDOMSupportEv(ptr noundef nonnull readnone align 8 dereferenceable(424) %0) unnamed_addr #6 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSourceHelper", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1027XercesDOMParsedSourceHelper16getParserLiaisonEv(ptr noundef nonnull readnone align 8 dereferenceable(424) %0) unnamed_addr #6 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSourceHelper", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDOMParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_RNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %9 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  tail call void @_ZN11xalanc_1_1017XalanParsedSourceC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1021XercesDOMParsedSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSource", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1019XercesParserLiaisonC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(288) %10, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
          to label %11 unwind label %32

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSource", ptr %0, i64 0, i32 2
  store ptr null, ptr %12, align 8, !tbaa !63
  %13 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSource", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
          to label %14 unwind label %36

14:                                               ; preds = %11
  invoke void @_ZN11xalanc_1_1019XercesParserLiaison16setUseValidationEb(ptr noundef nonnull align 8 dereferenceable(288) %10, i1 noundef zeroext %2) #12
          to label %15 unwind label %40

15:                                               ; preds = %14
  invoke void @_ZN11xalanc_1_1019XercesParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE(ptr noundef nonnull align 8 dereferenceable(288) %10, ptr noundef %4) #12
          to label %16 unwind label %40

16:                                               ; preds = %15
  invoke void @_ZN11xalanc_1_1019XercesParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(288) %10, ptr noundef %3) #12
          to label %17 unwind label %40

17:                                               ; preds = %16
  invoke void @_ZN11xalanc_1_1019XercesParserLiaison25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(288) %10, ptr noundef %5) #12
          to label %18 unwind label %40

18:                                               ; preds = %17
  invoke void @_ZN11xalanc_1_1019XercesParserLiaison36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(288) %10, ptr noundef %6) #12
          to label %19 unwind label %40

19:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #13
  %20 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #12
          to label %21 unwind label %44

21:                                               ; preds = %19
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %20) #12
          to label %22 unwind label %44

22:                                               ; preds = %21
  %23 = invoke noundef ptr @_ZN11xalanc_1_1019XercesParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(288) %10, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(36) %9) #12
          to label %24 unwind label %46

24:                                               ; preds = %22
  store ptr %23, ptr %12, align 8, !tbaa !63
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %9) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #13
  %25 = load ptr, ptr %1, align 8, !tbaa !56
  %26 = getelementptr inbounds ptr, ptr %25, i64 5
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(41) %1) #12
          to label %29 unwind label %52

29:                                               ; preds = %24
  %30 = icmp eq ptr %28, null
  br i1 %30, label %74, label %31

31:                                               ; preds = %29
  invoke void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtRNS_14XalanDOMStringE(ptr noundef nonnull %28, ptr noundef nonnull align 8 dereferenceable(36) %13) #12
          to label %74 unwind label %56

32:                                               ; preds = %8
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = extractvalue { ptr, i32 } %33, 1
  br label %81

36:                                               ; preds = %11
  %37 = landingpad { ptr, i32 }
          cleanup
  %38 = extractvalue { ptr, i32 } %37, 0
  %39 = extractvalue { ptr, i32 } %37, 1
  br label %78

40:                                               ; preds = %18, %17, %16, %15, %14
  %41 = landingpad { ptr, i32 }
          cleanup
  %42 = extractvalue { ptr, i32 } %41, 0
  %43 = extractvalue { ptr, i32 } %41, 1
  br label %75

44:                                               ; preds = %21, %19
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %48

46:                                               ; preds = %22
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %9) #11
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %45, %44 ]
  %50 = extractvalue { ptr, i32 } %49, 0
  %51 = extractvalue { ptr, i32 } %49, 1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #13
  br label %75

52:                                               ; preds = %24
  %53 = landingpad { ptr, i32 }
          cleanup
  %54 = extractvalue { ptr, i32 } %53, 0
  %55 = extractvalue { ptr, i32 } %53, 1
  br label %75

56:                                               ; preds = %31
  %57 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %58 = extractvalue { ptr, i32 } %57, 0
  %59 = extractvalue { ptr, i32 } %57, 1
  %60 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #13
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = call ptr @__cxa_begin_catch(ptr %58) #13
  %64 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull %28) #12
          to label %65 unwind label %66

65:                                               ; preds = %62
  invoke void @__cxa_end_catch()
          to label %74 unwind label %68

66:                                               ; preds = %62
  %67 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %70 unwind label %86

68:                                               ; preds = %65
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %70

70:                                               ; preds = %66, %68
  %71 = phi { ptr, i32 } [ %69, %68 ], [ %67, %66 ]
  %72 = extractvalue { ptr, i32 } %71, 0
  %73 = extractvalue { ptr, i32 } %71, 1
  br label %75

74:                                               ; preds = %65, %31, %29
  ret void

75:                                               ; preds = %52, %56, %70, %48, %40
  %76 = phi i32 [ %51, %48 ], [ %43, %40 ], [ %73, %70 ], [ %59, %56 ], [ %55, %52 ]
  %77 = phi ptr [ %50, %48 ], [ %42, %40 ], [ %72, %70 ], [ %58, %56 ], [ %54, %52 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %13) #11
  br label %78

78:                                               ; preds = %75, %36
  %79 = phi i32 [ %76, %75 ], [ %39, %36 ]
  %80 = phi ptr [ %77, %75 ], [ %38, %36 ]
  call void @_ZN11xalanc_1_1019XercesParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(288) %10) #11
  br label %81

81:                                               ; preds = %78, %32
  %82 = phi i32 [ %79, %78 ], [ %35, %32 ]
  %83 = phi ptr [ %80, %78 ], [ %34, %32 ]
  call void @_ZN11xalanc_1_1017XalanParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %84 = insertvalue { ptr, i32 } poison, ptr %83, 0
  %85 = insertvalue { ptr, i32 } %84, i32 %82, 1
  resume { ptr, i32 } %85

86:                                               ; preds = %66
  %87 = landingpad { ptr, i32 }
          catch ptr null
  %88 = extractvalue { ptr, i32 } %87, 0
  call void @__clang_call_terminate(ptr %88) #14
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanParsedSourceC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XercesParserLiaison16setUseValidationEb(ptr noundef nonnull align 8 dereferenceable(288), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XercesParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XercesParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XercesParserLiaison25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XercesParserLiaison36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1019XercesParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !80 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtRNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat align 2 !prof !81 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #12
  tail call void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE(ptr noundef %0, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %1) #12
  ret void
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !82 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #12
  ret ptr %3
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1021XercesDOMParsedSource6createERN11xercesc_2_713MemoryManagerERKNS1_11InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %8 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr.2", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  %9 = load ptr, ptr %0, align 8, !tbaa !56
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 344) #12
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %12) #12
  %13 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #12
  invoke void @_ZN11xalanc_1_1021XercesDOMParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_RNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(344) %13, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %0) #12
          to label %14 unwind label %17

14:                                               ; preds = %7
  %15 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #12
          to label %16 unwind label %17

16:                                               ; preds = %14
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  ret ptr %13

17:                                               ; preds = %14, %7
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !55 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !55 {
  %2 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !55 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #12
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDOMParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #2 align 2 !prof !55 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1021XercesDOMParsedSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSource", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #11
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSource", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1019XercesParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(288) %3) #11
  tail call void @_ZN11xalanc_1_1017XalanParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDOMParsedSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xalanc_1_1021XercesDOMParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDOMParsedSource11getDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(344) %0) unnamed_addr #9 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSource", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDOMParsedSource12createHelperERN11xercesc_2_713MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 !prof !55 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1027XercesDOMParsedSourceHelper6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XercesDOMParsedSource6getURIEv(ptr noundef nonnull readnone align 8 dereferenceable(344) %0) unnamed_addr #6 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSource", ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanParsedSourceHelperD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !85 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanParsedSourceHelperD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !87
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !88

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #12
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #12
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
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !90 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !91 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !92

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #12
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !93, !llvm.loop !94

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !96 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !97 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !91 {
  %3 = load ptr, ptr %0, align 8, !tbaa !98
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #2 comdat align 2 !prof !99 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !100 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !101
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !102 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #12
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !103 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !104 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #12
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3) #12
  ret ptr %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !55 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !105
  store ptr %2, ptr %5, align 8, !tbaa !105
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1027XercesDOMParsedSourceHelperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1027XercesDOMParsedSourceHelperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 comdat align 2 !prof !55 {
  %4 = load ptr, ptr %1, align 8, !tbaa !105
  store ptr %4, ptr %0, align 8, !tbaa !106
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !105
  store ptr %6, ptr %5, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !55 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !55 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !106
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = load ptr, ptr %4, align 8, !tbaa !56
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #12
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !55 {
  %2 = load ptr, ptr %0, align 8, !tbaa !106
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !55 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  store ptr %1, ptr %0, align 8, !tbaa !106
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !59
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_27XercesDOMParsedSourceHelperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !55 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !105
  store ptr %2, ptr %5, align 8, !tbaa !105
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1021XercesDOMParsedSourceEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1021XercesDOMParsedSourceEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 comdat align 2 !prof !55 {
  %4 = load ptr, ptr %1, align 8, !tbaa !105
  store ptr %4, ptr %0, align 8, !tbaa !107
  %5 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !105
  store ptr %6, ptr %5, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !55 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !55 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !107
  %5 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = load ptr, ptr %4, align 8, !tbaa !56
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #12
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !55 {
  %2 = load ptr, ptr %0, align 8, !tbaa !107
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !55 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  store ptr %1, ptr %0, align 8, !tbaa !107
  %4 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !83
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDOMParsedSourceELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  ret void
}

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!54}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!35 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!36 = !{ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 3}
!37 = !{ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE, i64 3}
!38 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, i64 1084346}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!49 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 2169010}
!50 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 1084505}
!51 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, i64 1084505}
!52 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 1179818}
!53 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 1179818}
!54 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!55 = !{!"function_entry_count", i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"vtable pointer", !58, i64 0}
!58 = !{!"Simple C++ TBAA"}
!59 = !{!60, !61, i64 8}
!60 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1027XercesDOMParsedSourceHelperEE", !61, i64 0, !61, i64 8}
!61 = !{!"any pointer", !62, i64 0}
!62 = !{!"omnipotent char", !58, i64 0}
!63 = !{!64, !61, i64 296}
!64 = !{!"_ZTSN11xalanc_1_1021XercesDOMParsedSourceE", !65, i64 0, !66, i64 8, !61, i64 296, !71, i64 304}
!65 = !{!"_ZTSN11xalanc_1_1017XalanParsedSourceE"}
!66 = !{!"_ZTSN11xalanc_1_1019XercesParserLiaisonE", !67, i64 0, !68, i64 8, !69, i64 16, !70, i64 20, !70, i64 21, !70, i64 22, !70, i64 23, !61, i64 24, !61, i64 32, !71, i64 40, !71, i64 80, !74, i64 120, !70, i64 256, !70, i64 257, !70, i64 258, !70, i64 259, !61, i64 264, !61, i64 272, !61, i64 280}
!67 = !{!"_ZTSN11xalanc_1_1016XMLParserLiaisonE"}
!68 = !{!"_ZTSN11xercesc_2_712ErrorHandlerE"}
!69 = !{!"int", !62, i64 0}
!70 = !{!"bool", !62, i64 0}
!71 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !72, i64 0, !69, i64 32}
!72 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !61, i64 0, !73, i64 8, !73, i64 16, !61, i64 24}
!73 = !{!"long", !62, i64 0}
!74 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEEE", !75, i64 0, !76, i64 1, !61, i64 8, !77, i64 16, !73, i64 24, !73, i64 32, !78, i64 40, !78, i64 64, !79, i64 88, !73, i64 120, !73, i64 128}
!75 = !{!"_ZTSN11xalanc_1_1011XalanHasherIPKNS_13XalanDocumentEEE"}
!76 = !{!"_ZTSSt8equal_toIPKN11xalanc_1_1013XalanDocumentEE"}
!77 = !{!"float", !62, i64 0}
!78 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !61, i64 0, !61, i64 8, !61, i64 16}
!79 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEE", !61, i64 0, !73, i64 8, !73, i64 16, !61, i64 24}
!80 = !{!"function_entry_count", i64 43398227}
!81 = !{!"function_entry_count", i64 3}
!82 = !{!"function_entry_count", i64 1084346}
!83 = !{!84, !61, i64 8}
!84 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1021XercesDOMParsedSourceEE", !61, i64 0, !61, i64 8}
!85 = !{!"function_entry_count", i64 1}
!86 = !{!"function_entry_count", i64 128698679}
!87 = !{!72, !73, i64 16}
!88 = !{!"branch_weights", i32 43398290, i32 85300391}
!89 = !{!72, !61, i64 24}
!90 = !{!"function_entry_count", i64 6521798493}
!91 = !{!"function_entry_count", i64 85300390}
!92 = !{!"branch_weights", i32 1, i32 12185770}
!93 = !{!"branch_weights", i32 12185770, i32 -193930396}
!94 = distinct !{!94, !95}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!"function_entry_count", i64 227375739}
!97 = !{!"function_entry_count", i64 568333389}
!98 = !{!72, !61, i64 0}
!99 = !{!"function_entry_count", i64 30137156660}
!100 = !{!"function_entry_count", i64 825654971}
!101 = !{!72, !73, i64 8}
!102 = !{!"function_entry_count", i64 1084505}
!103 = !{!"function_entry_count", i64 3070433834}
!104 = !{!"function_entry_count", i64 1179818}
!105 = !{!61, !61, i64 0}
!106 = !{!60, !61, i64 0}
!107 = !{!84, !61, i64 0}

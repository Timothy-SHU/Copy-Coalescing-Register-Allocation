; ModuleID = 'XalanCompiledStylesheetDefault.cpp'
source_filename = "XalanCompiledStylesheetDefault.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanCompiledStylesheetDefault" = type { %"class.xalanc_1_10::XalanCompiledStylesheet", %"class.xalanc_1_10::XPathFactoryBlock", %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr }
%"class.xalanc_1_10::XalanCompiledStylesheet" = type { ptr }
%"class.xalanc_1_10::XPathFactoryBlock" = type { %"class.xalanc_1_10::XPathFactory", %"class.xalanc_1_10::XPathAllocator" }
%"class.xalanc_1_10::XPathFactory" = type { ptr }
%"class.xalanc_1_10::XPathAllocator" = type { %"class.xalanc_1_10::ArenaAllocator" }
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::StylesheetConstructionContextDefault" = type { %"class.xalanc_1_10::StylesheetConstructionContext", ptr, ptr, %"class.xalanc_1_10::XalanMemMgrAutoPtr", %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanDOMStringPool", %"class.xalanc_1_10::XalanArrayAllocator", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanQNameByValue", %"class.xalanc_1_10::XalanDOMStringCache", %"class.xalanc_1_10::XalanAVTAllocator", %"class.xalanc_1_10::XalanAVTPartSimpleAllocator", %"class.xalanc_1_10::XalanAVTPartXPathAllocator", %"class.xalanc_1_10::XalanQNameByValueAllocator", %"class.xalanc_1_10::XalanQNameByReference", %"class.xalanc_1_10::XalanArrayAllocator.15", %"class.xalanc_1_10::XalanVector.17", %"class.xalanc_1_10::XalanElemApplyTemplatesAllocator", %"class.xalanc_1_10::XalanElemAttributeAllocator", %"class.xalanc_1_10::XalanElemAttributeSetAllocator", %"class.xalanc_1_10::XalanElemCallTemplateAllocator", %"class.xalanc_1_10::XalanElemElementAllocator", %"class.xalanc_1_10::XalanElemLiteralResultAllocator", %"class.xalanc_1_10::XalanElemTemplateAllocator", %"class.xalanc_1_10::XalanElemTextLiteralAllocator", %"class.xalanc_1_10::XalanElemValueOfAllocator", %"class.xalanc_1_10::XalanElemVariableAllocator", %"class.xalanc_1_10::XalanMatchPatternDataAllocator", %"class.xalanc_1_10::XalanQNameByReference" }
%"class.xalanc_1_10::StylesheetConstructionContext" = type { %"class.xalanc_1_10::XPathConstructionContext" }
%"class.xalanc_1_10::XPathConstructionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathProcessor>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathProcessor>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringPool" = type { ptr, %"class.xalanc_1_10::XalanDOMStringAllocator", i64, %"class.xalanc_1_10::XalanDOMStringHashTable" }
%"class.xalanc_1_10::XalanDOMStringAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.0" }
%"class.xalanc_1_10::ArenaAllocator.0" = type { ptr, i64, %"class.xalanc_1_10::XalanList.1" }
%"class.xalanc_1_10::XalanList.1" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringHashTable" = type <{ i64, i64, %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", i64, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" = type { ptr, ptr, i64 }
%"class.xalanc_1_10::XalanArrayAllocator" = type { %"class.xalanc_1_10::XalanList.2", i64, ptr }
%"class.xalanc_1_10::XalanList.2" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanQNameByValue" = type { %"class.xalanc_1_10::XalanQName", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::XalanDOMStringCache" = type { %"class.xalanc_1_10::XalanVector.4", %"class.xalanc_1_10::XalanVector.4", i32, [4 x i8], %"class.xalanc_1_10::XalanDOMStringReusableAllocator" }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringReusableAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator" }
%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator.5", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.5" = type { ptr, i16, %"class.xalanc_1_10::XalanList.6" }
%"class.xalanc_1_10::XalanList.6" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanAVTAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.7" }
%"class.xalanc_1_10::ArenaAllocator.7" = type { ptr, i64, %"class.xalanc_1_10::XalanList.8" }
%"class.xalanc_1_10::XalanList.8" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanAVTPartSimpleAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.9" }
%"class.xalanc_1_10::ArenaAllocator.9" = type { ptr, i64, %"class.xalanc_1_10::XalanList.10" }
%"class.xalanc_1_10::XalanList.10" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanAVTPartXPathAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.11" }
%"class.xalanc_1_10::ArenaAllocator.11" = type { ptr, i64, %"class.xalanc_1_10::XalanList.12" }
%"class.xalanc_1_10::XalanList.12" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanQNameByValueAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.13" }
%"class.xalanc_1_10::ArenaAllocator.13" = type { ptr, i64, %"class.xalanc_1_10::XalanList.14" }
%"class.xalanc_1_10::XalanList.14" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanArrayAllocator.15" = type { %"class.xalanc_1_10::XalanList.16", i64, ptr }
%"class.xalanc_1_10::XalanList.16" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.17" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanElemApplyTemplatesAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.18" }
%"class.xalanc_1_10::ArenaAllocator.18" = type { ptr, i64, %"class.xalanc_1_10::XalanList.19" }
%"class.xalanc_1_10::XalanList.19" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemAttributeAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.20" }
%"class.xalanc_1_10::ArenaAllocator.20" = type { ptr, i64, %"class.xalanc_1_10::XalanList.21" }
%"class.xalanc_1_10::XalanList.21" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemAttributeSetAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.22" }
%"class.xalanc_1_10::ArenaAllocator.22" = type { ptr, i64, %"class.xalanc_1_10::XalanList.23" }
%"class.xalanc_1_10::XalanList.23" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemCallTemplateAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.24" }
%"class.xalanc_1_10::ArenaAllocator.24" = type { ptr, i64, %"class.xalanc_1_10::XalanList.25" }
%"class.xalanc_1_10::XalanList.25" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemElementAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.26" }
%"class.xalanc_1_10::ArenaAllocator.26" = type { ptr, i64, %"class.xalanc_1_10::XalanList.27" }
%"class.xalanc_1_10::XalanList.27" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemLiteralResultAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.28" }
%"class.xalanc_1_10::ArenaAllocator.28" = type { ptr, i64, %"class.xalanc_1_10::XalanList.29" }
%"class.xalanc_1_10::XalanList.29" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemTemplateAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.30" }
%"class.xalanc_1_10::ArenaAllocator.30" = type { ptr, i64, %"class.xalanc_1_10::XalanList.31" }
%"class.xalanc_1_10::XalanList.31" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemTextLiteralAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.32" }
%"class.xalanc_1_10::ArenaAllocator.32" = type { ptr, i64, %"class.xalanc_1_10::XalanList.33" }
%"class.xalanc_1_10::XalanList.33" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemValueOfAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.34" }
%"class.xalanc_1_10::ArenaAllocator.34" = type { ptr, i64, %"class.xalanc_1_10::XalanList.35" }
%"class.xalanc_1_10::XalanList.35" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemVariableAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.36" }
%"class.xalanc_1_10::ArenaAllocator.36" = type { ptr, i64, %"class.xalanc_1_10::XalanList.37" }
%"class.xalanc_1_10::XalanList.37" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanMatchPatternDataAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.38" }
%"class.xalanc_1_10::ArenaAllocator.38" = type { ptr, i64, %"class.xalanc_1_10::XalanList.39" }
%"class.xalanc_1_10::XalanList.39" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanQNameByReference" = type { %"class.xalanc_1_10::XalanQName", ptr, ptr }
%"class.xalanc_1_10::SetAndRestoreHandlers" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.50" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanCompiledStylesheetDefault, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanCompiledStylesheetDefault, false>::MemMgrAutoPtrData" = type { %"struct.std::pair.51" }
%"struct.std::pair.51" = type { ptr, ptr }

$_ZN11xalanc_1_1023XalanCompiledStylesheetC2Ev = comdat any

$_ZN11xalanc_1_1017compileStylesheetERKNS_15XSLTInputSourceERNS_14XSLTEngineImplERNS_36StylesheetConstructionContextDefaultEPN11xercesc_2_712ErrorHandlerEPNS7_14EntityResolverE = comdat any

$_ZN11xalanc_1_1023XalanCompiledStylesheetD2Ev = comdat any

$_ZN11xalanc_1_1023XalanCompiledStylesheetD0Ev = comdat any

$_ZN11xalanc_1_1021SetAndRestoreHandlersC2ERNS_16XMLParserLiaisonEPN11xercesc_2_712ErrorHandlerEPNS3_14EntityResolverE = comdat any

$_ZN11xalanc_1_1021SetAndRestoreHandlersD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1030XalanCompiledStylesheetDefaultEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZTSN11xalanc_1_1023XalanCompiledStylesheetE = comdat any

$_ZTIN11xalanc_1_1023XalanCompiledStylesheetE = comdat any

$_ZTVN11xalanc_1_1023XalanCompiledStylesheetE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xalanc_1_1030XalanCompiledStylesheetDefaultE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1030XalanCompiledStylesheetDefaultE, ptr @_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultD2Ev, ptr @_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultD0Ev, ptr @_ZNK11xalanc_1_1030XalanCompiledStylesheetDefault17getStylesheetRootEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1030XalanCompiledStylesheetDefaultE = dso_local constant [48 x i8] c"N11xalanc_1_1030XalanCompiledStylesheetDefaultE\00", align 1
@_ZTSN11xalanc_1_1023XalanCompiledStylesheetE = linkonce_odr dso_local constant [41 x i8] c"N11xalanc_1_1023XalanCompiledStylesheetE\00", comdat, align 1
@_ZTIN11xalanc_1_1023XalanCompiledStylesheetE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1023XalanCompiledStylesheetE }, comdat, align 8
@_ZTIN11xalanc_1_1030XalanCompiledStylesheetDefaultE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1030XalanCompiledStylesheetDefaultE, ptr @_ZTIN11xalanc_1_1023XalanCompiledStylesheetE }, align 8
@_ZTVN11xalanc_1_1023XalanCompiledStylesheetE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1023XalanCompiledStylesheetE, ptr @_ZN11xalanc_1_1023XalanCompiledStylesheetD2Ev, ptr @_ZN11xalanc_1_1023XalanCompiledStylesheetD0Ev, ptr @__cxa_pure_virtual] }, comdat, align 8

@_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultC1ERN11xercesc_2_713MemoryManagerERKNS_15XSLTInputSourceERNS_14XSLTEngineImplEPNS1_12ErrorHandlerEPNS1_14EntityResolverE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultC2ERN11xercesc_2_713MemoryManagerERKNS_15XSLTInputSourceERNS_14XSLTEngineImplEPNS1_12ErrorHandlerEPNS1_14EntityResolverE
@_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultD0Ev(ptr noundef nonnull align 8 dereferenceable(1264) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(1264) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1030XalanCompiledStylesheetDefault17getStylesheetRootEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1264) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanCompiledStylesheetDefault", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  ret ptr %3
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultC2ERN11xercesc_2_713MemoryManagerERKNS_15XSLTInputSourceERNS_14XSLTEngineImplEPNS1_12ErrorHandlerEPNS1_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(1264) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(1000) %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  store i64 0, ptr %0, align 8
  tail call void @_ZN11xalanc_1_1023XalanCompiledStylesheetC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1030XalanCompiledStylesheetDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !126
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanCompiledStylesheetDefault", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1017XPathFactoryBlockC1ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 20) #11
          to label %8 unwind label %14

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanCompiledStylesheetDefault", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC1ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm(ptr noundef nonnull align 8 dereferenceable(1200) %9, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(1000) %3, ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 1024, i64 noundef 128, i64 noundef 128, i64 noundef 128, i64 noundef 32, i64 noundef 512) #11
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = invoke noundef ptr @_ZN11xalanc_1_1017compileStylesheetERKNS_15XSLTInputSourceERNS_14XSLTEngineImplERNS_36StylesheetConstructionContextDefaultEPN11xercesc_2_712ErrorHandlerEPNS7_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(1000) %3, ptr noundef nonnull align 8 dereferenceable(1200) %9, ptr noundef %4, ptr noundef %5) #11
          to label %12 unwind label %18

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanCompiledStylesheetDefault", ptr %0, i64 0, i32 3
  store ptr %11, ptr %13, align 8, !tbaa !36
  ret void

14:                                               ; preds = %6
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %22

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %20

18:                                               ; preds = %10
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(1200) %9) #9
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  tail call void @_ZN11xalanc_1_1017XPathFactoryBlockD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #9
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %15, %14 ]
  tail call void @_ZN11xalanc_1_1023XalanCompiledStylesheetD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanCompiledStylesheetC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1023XalanCompiledStylesheetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !126
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XPathFactoryBlockC1ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC1ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm(ptr noundef nonnull align 8 dereferenceable(1200), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1017compileStylesheetERKNS_15XSLTInputSourceERNS_14XSLTEngineImplERNS_36StylesheetConstructionContextDefaultEPN11xercesc_2_712ErrorHandlerEPNS7_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(1000) %1, ptr noundef nonnull align 8 dereferenceable(1200) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 !prof !35 {
  %6 = alloca %"class.xalanc_1_10::SetAndRestoreHandlers", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  %7 = load ptr, ptr %1, align 8, !tbaa !126
  %8 = getelementptr inbounds ptr, ptr %7, i64 12
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr %9(ptr noundef nonnull align 8 dereferenceable(1000) %1) #11
  call void @_ZN11xalanc_1_1021SetAndRestoreHandlersC2ERNS_16XMLParserLiaisonEPN11xercesc_2_712ErrorHandlerEPNS3_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %3, ptr noundef %4) #11
  %11 = load ptr, ptr %1, align 8, !tbaa !126
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(1000) %1, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #11
          to label %15 unwind label %16

15:                                               ; preds = %5
  call void @_ZN11xalanc_1_1021SetAndRestoreHandlersD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  ret ptr %14

16:                                               ; preds = %5
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021SetAndRestoreHandlersD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  resume { ptr, i32 } %17
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(1200)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XPathFactoryBlockD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanCompiledStylesheetD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanCompiledStylesheetD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021SetAndRestoreHandlersC2ERNS_16XMLParserLiaisonEPN11xercesc_2_712ErrorHandlerEPNS3_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 !prof !35 {
  store ptr %1, ptr %0, align 8, !tbaa !128
  %5 = getelementptr inbounds %"class.xalanc_1_10::SetAndRestoreHandlers", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %1, align 8, !tbaa !126
  %7 = getelementptr inbounds ptr, ptr %6, i64 16
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  store ptr %9, ptr %5, align 8, !tbaa !129
  %10 = getelementptr inbounds %"class.xalanc_1_10::SetAndRestoreHandlers", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %1, align 8, !tbaa !126
  %12 = getelementptr inbounds ptr, ptr %11, i64 14
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  store ptr %14, ptr %10, align 8, !tbaa !131
  %15 = icmp eq ptr %2, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load ptr, ptr %1, align 8, !tbaa !126
  %18 = getelementptr inbounds ptr, ptr %17, i64 17
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2) #11
  br label %20

20:                                               ; preds = %16, %4
  %21 = icmp eq ptr %3, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %1, align 8, !tbaa !126
  %24 = getelementptr inbounds ptr, ptr %23, i64 15
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %3) #11
  br label %26

26:                                               ; preds = %22, %20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021SetAndRestoreHandlersD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !132
  %3 = getelementptr inbounds %"class.xalanc_1_10::SetAndRestoreHandlers", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !131
  %5 = load ptr, ptr %2, align 8, !tbaa !126
  %6 = getelementptr inbounds ptr, ptr %5, i64 15
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #11
          to label %8 unwind label %16

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !132
  %10 = getelementptr inbounds %"class.xalanc_1_10::SetAndRestoreHandlers", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !129
  %12 = load ptr, ptr %9, align 8, !tbaa !126
  %13 = getelementptr inbounds ptr, ptr %12, i64 17
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11) #11
          to label %15 unwind label %16

15:                                               ; preds = %8
  ret void

16:                                               ; preds = %8, %1
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #13
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1030XalanCompiledStylesheetDefault6createERN11xercesc_2_713MemoryManagerERKNS_15XSLTInputSourceERNS_14XSLTEngineImplEPNS1_12ErrorHandlerEPNS1_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(1000) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %6 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr.50", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  %7 = load ptr, ptr %0, align 8, !tbaa !126
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 1264) #11
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %10) #11
  %11 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #11
  invoke void @_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultC2ERN11xercesc_2_713MemoryManagerERKNS_15XSLTInputSourceERNS_14XSLTEngineImplEPNS1_12ErrorHandlerEPNS1_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(1264) %11, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(1000) %2, ptr noundef %3, ptr noundef %4) #11
          to label %12 unwind label %15

12:                                               ; preds = %5
  %13 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #11
          to label %14 unwind label %15

14:                                               ; preds = %12
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  ret ptr %11

15:                                               ; preds = %12, %5
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !35 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"struct.std::pair.51", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !35 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #11
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !35 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !128
  store ptr %2, ptr %5, align 8, !tbaa !128
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1030XalanCompiledStylesheetDefaultEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1030XalanCompiledStylesheetDefaultEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !35 {
  %4 = load ptr, ptr %1, align 8, !tbaa !128
  store ptr %4, ptr %0, align 8, !tbaa !135
  %5 = getelementptr inbounds %"struct.std::pair.51", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !128
  store ptr %6, ptr %5, align 8, !tbaa !133
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !35 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  store ptr %1, ptr %0, align 8, !tbaa !135
  %4 = getelementptr inbounds %"struct.std::pair.51", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !133
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !35 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !135
  %5 = getelementptr inbounds %"struct.std::pair.51", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !133
  %7 = load ptr, ptr %4, align 8, !tbaa !126
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #11
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanCompiledStylesheetDefaultELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !135
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair.51", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(1264) %0) unnamed_addr #0 align 2 !prof !35 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1030XalanCompiledStylesheetDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !126
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanCompiledStylesheetDefault", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(1200) %2) #9
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanCompiledStylesheetDefault", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1017XPathFactoryBlockD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  tail call void @_ZN11xalanc_1_1023XalanCompiledStylesheetD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret void
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { builtin nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !47, i64 1256}
!37 = !{!"_ZTSN11xalanc_1_1030XalanCompiledStylesheetDefaultE", !38, i64 0, !39, i64 8, !48, i64 56, !47, i64 1256}
!38 = !{!"_ZTSN11xalanc_1_1023XalanCompiledStylesheetE"}
!39 = !{!"_ZTSN11xalanc_1_1017XPathFactoryBlockE", !40, i64 0, !41, i64 8}
!40 = !{!"_ZTSN11xalanc_1_1012XPathFactoryE"}
!41 = !{!"_ZTSN11xalanc_1_1014XPathAllocatorE", !42, i64 0}
!42 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEEE", !43, i64 8, !46, i64 16}
!43 = !{!"long", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!47 = !{!"any pointer", !44, i64 0}
!48 = !{!"_ZTSN11xalanc_1_1036StylesheetConstructionContextDefaultE", !49, i64 0, !47, i64 16, !47, i64 24, !51, i64 32, !54, i64 48, !55, i64 80, !63, i64 192, !65, i64 232, !67, i64 272, !69, i64 360, !77, i64 480, !80, i64 520, !83, i64 560, !86, i64 600, !89, i64 640, !90, i64 664, !92, i64 704, !93, i64 736, !96, i64 776, !99, i64 816, !102, i64 856, !105, i64 896, !108, i64 936, !111, i64 976, !114, i64 1016, !117, i64 1056, !120, i64 1096, !123, i64 1136, !89, i64 1176}
!49 = !{!"_ZTSN11xalanc_1_1029StylesheetConstructionContextE", !50, i64 0}
!50 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !47, i64 8}
!51 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EEE", !52, i64 0}
!52 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EE17MemMgrAutoPtrDataE", !53, i64 0}
!53 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1014XPathProcessorEE", !47, i64 0, !47, i64 8}
!54 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEEE", !47, i64 0, !43, i64 8, !43, i64 16, !47, i64 24}
!55 = !{!"_ZTSN11xalanc_1_1018XalanDOMStringPoolE", !56, i64 8, !43, i64 48, !59, i64 56}
!56 = !{!"_ZTSN11xalanc_1_1023XalanDOMStringAllocatorE", !57, i64 0}
!57 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE", !43, i64 8, !58, i64 16}
!58 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!59 = !{!"_ZTSN11xalanc_1_1023XalanDOMStringHashTableE", !43, i64 0, !43, i64 8, !60, i64 16, !43, i64 40, !62, i64 48}
!60 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEEE", !61, i64 0}
!61 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayDataE", !47, i64 0, !47, i64 8, !43, i64 16}
!62 = !{!"int", !44, i64 0}
!63 = !{!"_ZTSN11xalanc_1_1019XalanArrayAllocatorItEE", !64, i64 0, !43, i64 24, !47, i64 32}
!64 = !{!"_ZTSN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!65 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !66, i64 0, !62, i64 32}
!66 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !47, i64 0, !43, i64 8, !43, i64 16, !47, i64 24}
!67 = !{!"_ZTSN11xalanc_1_1017XalanQNameByValueE", !68, i64 0, !65, i64 8, !65, i64 48}
!68 = !{!"_ZTSN11xalanc_1_1010XalanQNameE"}
!69 = !{!"_ZTSN11xalanc_1_1019XalanDOMStringCacheE", !70, i64 0, !70, i64 32, !62, i64 64, !71, i64 72}
!70 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEE", !47, i64 0, !43, i64 8, !43, i64 16, !47, i64 24}
!71 = !{!"_ZTSN11xalanc_1_1031XalanDOMStringReusableAllocatorE", !72, i64 0}
!72 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE", !73, i64 0, !76, i64 40}
!73 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE", !74, i64 8, !75, i64 16}
!74 = !{!"short", !44, i64 0}
!75 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!76 = !{!"bool", !44, i64 0}
!77 = !{!"_ZTSN11xalanc_1_1017XalanAVTAllocatorE", !78, i64 0}
!78 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEEE", !43, i64 8, !79, i64 16}
!79 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!80 = !{!"_ZTSN11xalanc_1_1027XalanAVTPartSimpleAllocatorE", !81, i64 0}
!81 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEEE", !43, i64 8, !82, i64 16}
!82 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!83 = !{!"_ZTSN11xalanc_1_1026XalanAVTPartXPathAllocatorE", !84, i64 0}
!84 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_12AVTPartXPathENS_10ArenaBlockIS1_mEEEE", !43, i64 8, !85, i64 16}
!85 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12AVTPartXPathEmEEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!86 = !{!"_ZTSN11xalanc_1_1026XalanQNameByValueAllocatorE", !87, i64 0}
!87 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_17XalanQNameByValueENS_10ArenaBlockIS1_mEEEE", !43, i64 8, !88, i64 16}
!88 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XalanQNameByValueEmEEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!89 = !{!"_ZTSN11xalanc_1_1021XalanQNameByReferenceE", !68, i64 0, !47, i64 8, !47, i64 16}
!90 = !{!"_ZTSN11xalanc_1_1019XalanArrayAllocatorIPKvEE", !91, i64 0, !43, i64 24, !47, i64 32}
!91 = !{!"_ZTSN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!92 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEEE", !47, i64 0, !43, i64 8, !43, i64 16, !47, i64 24}
!93 = !{!"_ZTSN11xalanc_1_1032XalanElemApplyTemplatesAllocatorE", !94, i64 0}
!94 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEEE", !43, i64 8, !95, i64 16}
!95 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!96 = !{!"_ZTSN11xalanc_1_1027XalanElemAttributeAllocatorE", !97, i64 0}
!97 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_13ElemAttributeENS_10ArenaBlockIS1_mEEEE", !43, i64 8, !98, i64 16}
!98 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13ElemAttributeEmEEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!99 = !{!"_ZTSN11xalanc_1_1030XalanElemAttributeSetAllocatorE", !100, i64 0}
!100 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_16ElemAttributeSetENS_10ArenaBlockIS1_mEEEE", !43, i64 8, !101, i64 16}
!101 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemAttributeSetEmEEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!102 = !{!"_ZTSN11xalanc_1_1030XalanElemCallTemplateAllocatorE", !103, i64 0}
!103 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_16ElemCallTemplateENS_10ArenaBlockIS1_mEEEE", !43, i64 8, !104, i64 16}
!104 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemCallTemplateEmEEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!105 = !{!"_ZTSN11xalanc_1_1025XalanElemElementAllocatorE", !106, i64 0}
!106 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_11ElemElementENS_10ArenaBlockIS1_mEEEE", !43, i64 8, !107, i64 16}
!107 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemElementEmEEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!108 = !{!"_ZTSN11xalanc_1_1031XalanElemLiteralResultAllocatorE", !109, i64 0}
!109 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_17ElemLiteralResultENS_10ArenaBlockIS1_mEEEE", !43, i64 8, !110, i64 16}
!110 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17ElemLiteralResultEmEEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!111 = !{!"_ZTSN11xalanc_1_1026XalanElemTemplateAllocatorE", !112, i64 0}
!112 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_12ElemTemplateENS_10ArenaBlockIS1_mEEEE", !43, i64 8, !113, i64 16}
!113 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemTemplateEmEEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!114 = !{!"_ZTSN11xalanc_1_1029XalanElemTextLiteralAllocatorE", !115, i64 0}
!115 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_15ElemTextLiteralENS_10ArenaBlockIS1_mEEEE", !43, i64 8, !116, i64 16}
!116 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_15ElemTextLiteralEmEEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!117 = !{!"_ZTSN11xalanc_1_1025XalanElemValueOfAllocatorE", !118, i64 0}
!118 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_11ElemValueOfENS_10ArenaBlockIS1_mEEEE", !43, i64 8, !119, i64 16}
!119 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemValueOfEmEEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!120 = !{!"_ZTSN11xalanc_1_1026XalanElemVariableAllocatorE", !121, i64 0}
!121 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_12ElemVariableENS_10ArenaBlockIS1_mEEEE", !43, i64 8, !122, i64 16}
!122 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemVariableEmEEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!123 = !{!"_ZTSN11xalanc_1_1030XalanMatchPatternDataAllocatorE", !124, i64 0}
!124 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEEE", !43, i64 8, !125, i64 16}
!125 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!126 = !{!127, !127, i64 0}
!127 = !{!"vtable pointer", !45, i64 0}
!128 = !{!47, !47, i64 0}
!129 = !{!130, !47, i64 8}
!130 = !{!"_ZTSN11xalanc_1_1021SetAndRestoreHandlersE", !47, i64 0, !47, i64 8, !47, i64 16}
!131 = !{!130, !47, i64 16}
!132 = !{!130, !47, i64 0}
!133 = !{!134, !47, i64 8}
!134 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1030XalanCompiledStylesheetDefaultEE", !47, i64 0, !47, i64 8}
!135 = !{!134, !47, i64 0}

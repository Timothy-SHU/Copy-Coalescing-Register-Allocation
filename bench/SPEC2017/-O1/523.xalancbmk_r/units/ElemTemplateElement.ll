; ModuleID = 'ElemTemplateElement.cpp'
source_filename = "ElemTemplateElement.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanQNameByReference" = type { %"class.xalanc_1_10::XalanQName", ptr, ptr }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::ElemTemplateElement" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16, [6 x i8] }>
%"class.xalanc_1_10::PrefixResolver" = type { ptr }
%"class.xalanc_1_10::NamespacesHandler" = type { %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanVector.2", %"class.xalanc_1_10::XalanMap" }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringPointerHashFunction", %"struct.xalanc_1_10::pointer_equal", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.3", i64, i64 }
%"struct.xalanc_1_10::DOMStringPointerHashFunction" = type { i8 }
%"struct.xalanc_1_10::pointer_equal" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%union.anon = type { ptr }
%"class.xalanc_1_10::ElemTemplateElement::LocatorProxy" = type { %"class.xalanc_1_10::XalanLocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanLocator" = type { %"class.xercesc_2_7::Locator" }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xalanc_1_10::Stylesheet" = type { %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.4", %"class.xalanc_1_10::XalanVector.5", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.6", i64, %"class.xalanc_1_10::XalanDeque", %"class.xalanc_1_10::XalanDeque.8", i8, %"class.xalanc_1_10::XalanMap.10", ptr, %"class.xalanc_1_10::XalanVector.15", %"class.xalanc_1_10::XalanMap.16", %"class.xalanc_1_10::XalanVector.21", double, %"class.xalanc_1_10::XalanMap.22", %"struct.xalanc_1_10::XalanMapIterator", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanMap.22", %"struct.xalanc_1_10::XalanMapIterator", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanVector.25", i64, %"class.xalanc_1_10::XalanVector.26", %"class.xalanc_1_10::NamespacesHandler" }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.5" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.6" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDeque" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.7", %"class.xalanc_1_10::XalanVector.7" }
%"class.xalanc_1_10::XalanVector.7" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDeque.8" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.9", %"class.xalanc_1_10::XalanVector.9" }
%"class.xalanc_1_10::XalanVector.9" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.10" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.13", %"class.xalanc_1_10::XalanList.13", %"class.xalanc_1_10::XalanVector.14", i64, i64 }
%"struct.xalanc_1_10::DOMStringHashFunction" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList.13" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.14" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.15" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.16" = type { %"struct.xalanc_1_10::XalanHashMemberReference", %"struct.std::equal_to.17", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.19", %"class.xalanc_1_10::XalanList.19", %"class.xalanc_1_10::XalanVector.20", i64, i64 }
%"struct.xalanc_1_10::XalanHashMemberReference" = type { i8 }
%"struct.std::equal_to.17" = type { i8 }
%"class.xalanc_1_10::XalanList.19" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.20" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.21" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.22" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.23", %"class.xalanc_1_10::XalanList.23", %"class.xalanc_1_10::XalanVector.24", i64, i64 }
%"class.xalanc_1_10::XalanList.23" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.24" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanMapIterator" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"class.xalanc_1_10::XalanVector.25" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.26" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathConstructionContext" = type { ptr, ptr }
%"class.xalanc_1_10::TracerEvent" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ElemTextLiteral" = type <{ %"class.xalanc_1_10::ElemTemplateElement.base", i8, [5 x i8], ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::ElemTemplateElement.base" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16 }>
%"class.xalanc_1_10::StylesheetRoot" = type { %"class.xalanc_1_10::Stylesheet", %"class.xalanc_1_10::XalanDOMString", i32, [4 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i8, [7 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i32, %"class.xalanc_1_10::XalanVector.27", i8, %"class.xalanc_1_10::XalanVector.15", ptr, ptr, ptr, i8, i8, i32, i8, i64, %"class.xalanc_1_10::XalanMap.28" }
%"class.xalanc_1_10::XalanVector.27" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.28" = type { %"struct.xalanc_1_10::XalanHashMemberPointer", %"struct.xalanc_1_10::pointer_equal.29", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.31", %"class.xalanc_1_10::XalanList.31", %"class.xalanc_1_10::XalanVector.32", i64, i64 }
%"struct.xalanc_1_10::XalanHashMemberPointer" = type { i8 }
%"struct.xalanc_1_10::pointer_equal.29" = type { i8 }
%"class.xalanc_1_10::XalanList.31" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.32" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElemCallTemplate" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZTSN11xalanc_1_1012XalanLocatorE = comdat any

$_ZTSN11xercesc_2_77LocatorE = comdat any

$_ZTIN11xercesc_2_77LocatorE = comdat any

$_ZTIN11xalanc_1_1012XalanLocatorE = comdat any

@_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_1019ElemTemplateElement12s_emptyQNameE = dso_local global %"class.xalanc_1_10::XalanQNameByReference" zeroinitializer, align 8
@_ZTVN11xalanc_1_1019ElemTemplateElementE = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElementD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @__cxa_pure_virtual, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_] }, align 8
@_ZN11xalanc_1_109Constants16ATTRVAL_PRESERVEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants15ATTRVAL_DEFAULTE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants32ELEMNAME_SORT_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZN11xalanc_1_109Constants33ATTRNAME_EXTENSIONELEMENTPREFIXESE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants32ATTRNAME_EXCLUDE_RESULT_PREFIXESE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices11s_XMLStringE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE = external local_unnamed_addr constant ptr, align 8
@_ZTVN11xalanc_1_1019ElemTemplateElement12LocatorProxyE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1019ElemTemplateElement12LocatorProxyE, ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy11getPublicIdEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy11getSystemIdEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy13getLineNumberEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy15getColumnNumberEv] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1019ElemTemplateElementE = dso_local constant [37 x i8] c"N11xalanc_1_1019ElemTemplateElementE\00", align 1
@_ZTIN11xalanc_1_1014PrefixResolverE = external constant ptr
@_ZTIN11xalanc_1_1019ElemTemplateElementE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1019ElemTemplateElementE, ptr @_ZTIN11xalanc_1_1014PrefixResolverE }, align 8
@_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE = dso_local constant [51 x i8] c"N11xalanc_1_1019ElemTemplateElement12LocatorProxyE\00", align 1
@_ZTSN11xalanc_1_1012XalanLocatorE = linkonce_odr dso_local constant [30 x i8] c"N11xalanc_1_1012XalanLocatorE\00", comdat, align 1
@_ZTSN11xercesc_2_77LocatorE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77LocatorE\00", comdat, align 1
@_ZTIN11xercesc_2_77LocatorE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77LocatorE }, comdat, align 8
@_ZTIN11xalanc_1_1012XalanLocatorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1012XalanLocatorE, ptr @_ZTIN11xercesc_2_77LocatorE }, comdat, align 8
@_ZTIN11xalanc_1_1019ElemTemplateElement12LocatorProxyE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE, ptr @_ZTIN11xalanc_1_1012XalanLocatorE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ElemTemplateElement.cpp, ptr null }]

@_ZN11xalanc_1_1019ElemTemplateElementD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev
@_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyC1EllRKNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, i64, i64, ptr), ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyC2EllRKNS_14XalanDOMStringE
@_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !74 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #28
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

declare void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  tail call void @_ZN11xalanc_1_1014PrefixResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1019ElemTemplateElementE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !76
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  store ptr %2, ptr %7, align 8, !tbaa !79
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %2, i64 0, i32 30
  %10 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %2, i64 0, i32 8
  %11 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %2, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1017NamespacesHandlerC1ERNS_29StylesheetConstructionContextERKS0_RKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %9, ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %12 unwind label %36, !prof !82

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 3
  store i32 %5, ptr %13, align 8, !tbaa !83
  %14 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 5
  %15 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %2, i64 0, i32 13, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  %16 = load i64, ptr %15, align 8, !tbaa !102
  %17 = icmp eq i64 %16, 0
  %18 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %2, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %2, i64 0, i32 13, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr %"class.xalanc_1_10::XalanDOMString", ptr %20, i64 %16
  %22 = getelementptr %"class.xalanc_1_10::XalanDOMString", ptr %21, i64 -1
  %23 = select i1 %17, ptr %18, ptr %22, !prof !104
  %24 = load ptr, ptr %1, align 8, !tbaa !76
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef nonnull align 8 dereferenceable(36) ptr %26(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %23)
          to label %28 unwind label %38, !prof !105

28:                                               ; preds = %12
  %29 = sext i32 %4 to i64
  %30 = sext i32 %3 to i64
  %31 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1019ElemTemplateElement12LocatorProxyE, i64 0, inrange i32 0, i64 2), ptr %31, align 8, !tbaa !76
  %32 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9, i32 1
  store i64 %30, ptr %32, align 8, !tbaa !106
  %33 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9, i32 2
  store i64 %29, ptr %33, align 8, !tbaa !107
  %34 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9, i32 3
  store ptr %27, ptr %34, align 8, !tbaa !79
  %35 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  store i16 16, ptr %35, align 8, !tbaa !108
  ret void

36:                                               ; preds = %6
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %40

38:                                               ; preds = %12
  %39 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1017NamespacesHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(232) %8) #28
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi { ptr, i32 } [ %39, %38 ], [ %37, %36 ]
  tail call void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #28
  resume { ptr, i32 } %41
}

declare void @_ZN11xalanc_1_1014PrefixResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1017NamespacesHandlerC1ERNS_29StylesheetConstructionContextERKS0_RKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017NamespacesHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiRKNS_14XalanDOMStringEii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !109 {
  tail call void @_ZN11xalanc_1_1014PrefixResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1019ElemTemplateElementE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !76
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !79
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !110
  invoke void @_ZN11xalanc_1_1017NamespacesHandlerC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(232) %9, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %12 unwind label %27, !prof !112

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 3
  store i32 %3, ptr %13, align 8, !tbaa !83
  %14 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  %15 = load ptr, ptr %1, align 8, !tbaa !76
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %19 unwind label %29, !prof !113

19:                                               ; preds = %12
  %20 = sext i32 %6 to i64
  %21 = sext i32 %5 to i64
  %22 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1019ElemTemplateElement12LocatorProxyE, i64 0, inrange i32 0, i64 2), ptr %22, align 8, !tbaa !76
  %23 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9, i32 1
  store i64 %21, ptr %23, align 8, !tbaa !106
  %24 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9, i32 2
  store i64 %20, ptr %24, align 8, !tbaa !107
  %25 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9, i32 3
  store ptr %18, ptr %25, align 8, !tbaa !79
  %26 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  store i16 16, ptr %26, align 8, !tbaa !108
  ret void

27:                                               ; preds = %7
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %31

29:                                               ; preds = %12
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1017NamespacesHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(232) %9) #28
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  tail call void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #28
  resume { ptr, i32 } %32
}

declare void @_ZN11xalanc_1_1017NamespacesHandlerC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) unnamed_addr #6 align 2 !prof !114 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1019ElemTemplateElementE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1017NamespacesHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(232) %2) #28
  tail call void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #28
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElementD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !74 {
  tail call void @llvm.trap() #29
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv(ptr noundef nonnull readnone align 8 dereferenceable(322) %0) unnamed_addr #9 align 2 !prof !115 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !74 {
  ret i1 false
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #5 align 2 !prof !74 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1010Stylesheet8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(1504) %7, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  ret i1 %8
}

declare noundef zeroext i1 @_ZNK11xalanc_1_1010Stylesheet8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #5 align 2 !prof !117 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !116
  %9 = load ptr, ptr %0, align 8, !tbaa !76
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(322) %0), !prof !118
  %13 = load ptr, ptr %5, align 8, !tbaa !76
  %14 = getelementptr inbounds ptr, ptr %13, i64 28
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef zeroext i1 %15(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(1504) %8, ptr noundef %12), !prof !119
  br i1 %16, label %17, label %48, !prof !120

17:                                               ; preds = %6
  %18 = load ptr, ptr %3, align 8, !tbaa !76
  %19 = getelementptr inbounds ptr, ptr %18, i64 5
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4)
  %22 = load ptr, ptr @_ZN11xalanc_1_109Constants16ATTRVAL_PRESERVEE, align 8, !tbaa !79
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %22, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !121
  %25 = icmp eq i64 %24, 0
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %22, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8
  %28 = select i1 %25, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %27
  %29 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %28)
  %30 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %21)
  %31 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %28, i32 noundef %29, ptr noundef %21, i32 noundef %30)
  br i1 %31, label %32, label %36

32:                                               ; preds = %17
  %33 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %34 = load i16, ptr %33, align 8, !tbaa !108
  %35 = or i16 %34, 64
  store i16 %35, ptr %33, align 8, !tbaa !108
  br label %48

36:                                               ; preds = %17
  %37 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRVAL_DEFAULTE, align 8, !tbaa !79
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %37, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !121
  %40 = icmp eq i64 %39, 0
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %37, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = select i1 %40, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %42
  %44 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %43)
  %45 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %21)
  %46 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %43, i32 noundef %44, ptr noundef %21, i32 noundef %45)
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 65, ptr noundef %1, ptr noundef %2, ptr noundef %21)
  br label %48

48:                                               ; preds = %32, %47, %36, %6
  ret i1 %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %7 = load ptr, ptr %1, align 8, !tbaa !76
  %8 = getelementptr inbounds ptr, ptr %7, i64 5
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr %9(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %11 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null)
          to label %12 unwind label %30

12:                                               ; preds = %6
  %13 = load ptr, ptr %0, align 8, !tbaa !76
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %17 unwind label %30

17:                                               ; preds = %12
  %18 = load ptr, ptr %1, align 8, !tbaa !76
  %19 = getelementptr inbounds ptr, ptr %18, i64 7
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef null, ptr noundef %16)
          to label %21 unwind label %30

21:                                               ; preds = %17
  %22 = load ptr, ptr %1, align 8, !tbaa !76
  %23 = getelementptr inbounds ptr, ptr %22, i64 6
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %29 unwind label %26

26:                                               ; preds = %21
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #29
  unreachable

29:                                               ; preds = %21
  ret void

30:                                               ; preds = %17, %12, %6
  %31 = landingpad { ptr, i32 }
          cleanup
  %32 = load ptr, ptr %1, align 8, !tbaa !76
  %33 = getelementptr inbounds ptr, ptr %32, i64 6
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef zeroext i1 %34(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %39 unwind label %36

36:                                               ; preds = %30
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  tail call void @__clang_call_terminate(ptr %38) #29
  unreachable

39:                                               ; preds = %30
  resume { ptr, i32 } %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #5 align 2 !prof !74 {
  %2 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0)
  ret i1 %2
}

declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %3 = alloca %"class.xalanc_1_10::TracerEvent", align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !76
  %5 = getelementptr inbounds ptr, ptr %4, i64 137
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i64 %6(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !124
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %16, label %9, !prof !125

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @_ZN11xalanc_1_1011TracerEventC1ERKNS_26StylesheetExecutionContextERKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(322) %0)
  %10 = load ptr, ptr %1, align 8, !tbaa !76
  %11 = getelementptr inbounds ptr, ptr %10, i64 139
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %13 unwind label %14

13:                                               ; preds = %9
  call void @_ZN11xalanc_1_1011TracerEventD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %16

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011TracerEventD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  resume { ptr, i32 } %15

16:                                               ; preds = %13, %2
  ret ptr null
}

declare void @_ZN11xalanc_1_1011TracerEventC1ERKNS_26StylesheetExecutionContextERKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1011TracerEventD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #13 align 2 !prof !126 {
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #14 align 2 !prof !127 {
  %3 = load ptr, ptr %0, align 8, !tbaa !76
  %4 = getelementptr inbounds ptr, ptr %3, i64 30
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(322) %0), !prof !128
  %7 = load ptr, ptr %1, align 8, !tbaa !76
  %8 = getelementptr inbounds ptr, ptr %7, i64 134
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %6), !prof !129
  br label %10

10:                                               ; preds = %2, %112
  %11 = phi ptr [ %0, %2 ], [ %113, %112 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = getelementptr inbounds ptr, ptr %12, i64 6
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(322) %11, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !130
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %112, !prof !131

17:                                               ; preds = %10, %109
  %18 = phi ptr [ %110, %109 ], [ %11, %10 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = getelementptr inbounds ptr, ptr %19, i64 7
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(322) %18, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !132
  %22 = load ptr, ptr %18, align 8, !tbaa !76
  %23 = getelementptr inbounds ptr, ptr %22, i64 10
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE
  br i1 %25, label %26, label %35, !prof !133

26:                                               ; preds = %17
  %27 = getelementptr inbounds ptr, ptr %22, i64 30
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv
  br i1 %29, label %30, label %33, !prof !134

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %18, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !135
  br label %37

33:                                               ; preds = %26
  %34 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(322) %18)
  br label %37

35:                                               ; preds = %17
  %36 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(322) %18, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !136
  br label %37

37:                                               ; preds = %33, %30, %35
  %38 = phi ptr [ %36, %35 ], [ %34, %33 ], [ %32, %30 ]
  %39 = icmp eq ptr %38, %6
  br i1 %39, label %112, label %40, !prof !137

40:                                               ; preds = %37
  %41 = load ptr, ptr %18, align 8, !tbaa !76
  %42 = getelementptr inbounds ptr, ptr %41, i64 10
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE
  br i1 %44, label %45, label %54, !prof !138

45:                                               ; preds = %40
  %46 = getelementptr inbounds ptr, ptr %41, i64 30
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv
  br i1 %48, label %49, label %52, !prof !134

49:                                               ; preds = %45
  %50 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %18, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !135
  br label %56

52:                                               ; preds = %45
  %53 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(322) %18)
  br label %56

54:                                               ; preds = %40
  %55 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(322) %18, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !139
  br label %56

56:                                               ; preds = %52, %49, %54
  %57 = phi ptr [ %55, %54 ], [ %53, %52 ], [ %51, %49 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !76
  %59 = getelementptr inbounds ptr, ptr %58, i64 24
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_
  br i1 %61, label %62, label %88, !prof !140

62:                                               ; preds = %56
  %63 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %57, i64 0, i32 10
  %64 = load i16, ptr %63, align 8, !tbaa !108
  %65 = and i16 %64, 8
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %90, !prof !141

67:                                               ; preds = %62, %86
  %68 = phi ptr [ %79, %86 ], [ %18, %62 ]
  %69 = load ptr, ptr %68, align 8, !tbaa !76
  %70 = getelementptr inbounds ptr, ptr %69, i64 23
  %71 = load ptr, ptr %70, align 8
  %72 = icmp eq ptr %71, @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv
  br i1 %72, label %73, label %76, !prof !141

73:                                               ; preds = %67
  %74 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %68, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !142
  br label %78

76:                                               ; preds = %67
  %77 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(322) %68)
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi ptr [ %77, %76 ], [ %75, %73 ]
  %80 = icmp eq ptr %79, null
  br i1 %80, label %90, label %81, !prof !143

81:                                               ; preds = %78
  %82 = load ptr, ptr %57, align 8, !tbaa !76
  %83 = getelementptr inbounds ptr, ptr %82, i64 26
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_
  br i1 %85, label %90, label %86, !prof !144

86:                                               ; preds = %81
  %87 = tail call noundef zeroext i1 %84(ptr noundef nonnull align 8 dereferenceable(322) %57, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %79)
  br i1 %87, label %90, label %67, !prof !144, !llvm.loop !145

88:                                               ; preds = %56
  %89 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(322) %57, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %18), !prof !148
  br label %90

90:                                               ; preds = %86, %81, %78, %62, %88
  %91 = phi ptr [ %89, %88 ], [ null, %62 ], [ %79, %78 ], [ %79, %81 ], [ %79, %86 ]
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %109, !prof !149

93:                                               ; preds = %90
  %94 = load ptr, ptr %18, align 8, !tbaa !76
  %95 = getelementptr inbounds ptr, ptr %94, i64 10
  %96 = load ptr, ptr %95, align 8
  %97 = icmp eq ptr %96, @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE
  br i1 %97, label %98, label %107, !prof !150

98:                                               ; preds = %93
  %99 = getelementptr inbounds ptr, ptr %94, i64 30
  %100 = load ptr, ptr %99, align 8
  %101 = icmp eq ptr %100, @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv
  br i1 %101, label %102, label %105, !prof !134

102:                                              ; preds = %98
  %103 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %18, i64 0, i32 5
  %104 = load ptr, ptr %103, align 8, !tbaa !135
  br label %109

105:                                              ; preds = %98
  %106 = tail call noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(322) %18)
  br label %109

107:                                              ; preds = %93
  %108 = tail call noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(322) %18, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !151
  br label %109

109:                                              ; preds = %107, %102, %105, %90
  %110 = phi ptr [ %18, %90 ], [ %108, %107 ], [ %106, %105 ], [ %104, %102 ]
  %111 = icmp eq ptr %91, null
  br i1 %111, label %17, label %112, !prof !152, !llvm.loop !153

112:                                              ; preds = %109, %37, %10
  %113 = phi ptr [ %15, %10 ], [ %91, %109 ], [ null, %37 ]
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %10, !prof !137, !llvm.loop !154

115:                                              ; preds = %112
  %116 = load ptr, ptr %1, align 8, !tbaa !76
  %117 = getelementptr inbounds ptr, ptr %116, i64 135
  %118 = load ptr, ptr %117, align 8
  tail call void %118(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !155
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 align 2 !prof !74 {
  %3 = load ptr, ptr %0, align 8, !tbaa !76
  %4 = getelementptr inbounds ptr, ptr %3, i64 19
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %16, %8 ], [ %6, %2 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = getelementptr inbounds ptr, ptr %10, i64 8
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(322) %9, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %13 = load ptr, ptr %0, align 8, !tbaa !76
  %14 = getelementptr inbounds ptr, ptr %13, i64 24
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %9)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !156

18:                                               ; preds = %8, %2
  %19 = load ptr, ptr %0, align 8, !tbaa !76
  %20 = getelementptr inbounds ptr, ptr %19, i64 20
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #12 align 2 !prof !157 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 8, !tbaa !108
  %5 = and i16 %4, 5
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %11, label %7, !prof !158

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !76
  %9 = getelementptr inbounds ptr, ptr %8, i64 93
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0), !prof !159
  br label %11

11:                                               ; preds = %2, %7
  %12 = load ptr, ptr %0, align 8, !tbaa !76
  %13 = getelementptr inbounds ptr, ptr %12, i64 25
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE
  br i1 %15, label %16, label %64, !prof !160

16:                                               ; preds = %11
  %17 = load i16, ptr %3, align 8, !tbaa !108
  %18 = and i16 %17, 8
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %29, label %20, !prof !161

20:                                               ; preds = %16
  %21 = load ptr, ptr %1, align 8, !tbaa !76
  %22 = getelementptr inbounds ptr, ptr %21, i64 85
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %24 = load ptr, ptr %1, align 8, !tbaa !76
  %25 = getelementptr inbounds ptr, ptr %24, i64 134
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0)
  %27 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !162
  br label %66

29:                                               ; preds = %16
  %30 = getelementptr inbounds ptr, ptr %12, i64 18
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv
  br i1 %32, label %33, label %36, !prof !161

33:                                               ; preds = %29
  %34 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !162
  br label %38

36:                                               ; preds = %29
  %37 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(322) %0)
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi ptr [ %37, %36 ], [ %35, %33 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %66, label %41, !prof !163

41:                                               ; preds = %38
  %42 = load ptr, ptr %0, align 8, !tbaa !76
  %43 = getelementptr inbounds ptr, ptr %42, i64 26
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_
  br i1 %45, label %66, label %46, !prof !164

46:                                               ; preds = %41
  %47 = tail call noundef zeroext i1 %44(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %39)
  br i1 %47, label %66, label %48, !prof !164

48:                                               ; preds = %46
  %49 = load i16, ptr %3, align 8, !tbaa !108
  %50 = and i16 %49, 8
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %48, %59
  %53 = phi ptr [ %57, %59 ], [ %39, %48 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !76
  %55 = getelementptr inbounds ptr, ptr %54, i64 23
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(322) %53)
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = load ptr, ptr %0, align 8, !tbaa !76
  %61 = getelementptr inbounds ptr, ptr %60, i64 26
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef zeroext i1 %62(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %57)
  br i1 %63, label %66, label %52, !llvm.loop !145

64:                                               ; preds = %11
  %65 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !165
  br label %66

66:                                               ; preds = %59, %52, %48, %46, %41, %38, %20, %64
  %67 = phi ptr [ %65, %64 ], [ %28, %20 ], [ %39, %46 ], [ null, %38 ], [ null, %48 ], [ %39, %41 ], [ %57, %52 ], [ %57, %59 ]
  ret ptr %67
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #12 align 2 !prof !157 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 8, !tbaa !108
  %5 = and i16 %4, 5
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %14, !prof !158

7:                                                ; preds = %2
  %8 = and i16 %4, 8
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %19, label %10, !prof !166

10:                                               ; preds = %7
  %11 = load ptr, ptr %1, align 8, !tbaa !76
  %12 = getelementptr inbounds ptr, ptr %11, i64 135
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi i64 [ 86, %10 ], [ 94, %2 ]
  %16 = load ptr, ptr %1, align 8, !tbaa !76
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %19

19:                                               ; preds = %14, %7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #14 align 2 !prof !167 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %5 = load i16, ptr %4, align 8, !tbaa !108
  %6 = and i16 %5, 2
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %21, label %8, !prof !168

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !162
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemTextLiteral", ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !169
  %13 = getelementptr inbounds %"class.xalanc_1_10::ElemTextLiteral", ptr %10, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !172
  %15 = icmp eq i32 %14, -1
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 0, i32 noundef -1)
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %12)
  %18 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %12, i32 noundef %17)
  br label %38

19:                                               ; preds = %8
  %20 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %12, i32 noundef %14)
  br label %38

21:                                               ; preds = %3
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !173
  %24 = add i32 %23, 1025
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !175
  %28 = icmp ult i64 %27, %25
  br i1 %28, label %29, label %30, !prof !176

29:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %25)
  br label %30

30:                                               ; preds = %21, %29
  %31 = load ptr, ptr %1, align 8, !tbaa !76
  %32 = getelementptr inbounds ptr, ptr %31, i64 112
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %2), !prof !177
  %34 = load ptr, ptr %0, align 8, !tbaa !76
  %35 = getelementptr inbounds ptr, ptr %34, i64 19
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !178
  br label %38

38:                                               ; preds = %19, %16, %30
  %39 = phi ptr [ %37, %30 ], [ null, %16 ], [ null, %19 ]
  ret ptr %39
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement19endChildrenToStringERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #14 align 2 !prof !167 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 8, !tbaa !108
  %5 = and i16 %4, 2
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %14, !prof !168

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !76
  %9 = getelementptr inbounds ptr, ptr %8, i64 20
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !179
  %11 = load ptr, ptr %1, align 8, !tbaa !76
  %12 = getelementptr inbounds ptr, ptr %11, i64 113
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !180
  br label %14

14:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #12 align 2 !prof !181 {
  %3 = load ptr, ptr %0, align 8, !tbaa !76
  %4 = getelementptr inbounds ptr, ptr %3, i64 30
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv
  br i1 %6, label %7, label %10, !prof !134

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !135
  br label %12

10:                                               ; preds = %2
  %11 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(322) %0)
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %11, %10 ], [ %9, %7 ]
  ret ptr %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %4 = load ptr, ptr %1, align 8, !tbaa !76
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef %2)
          to label %9 unwind label %32

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !76
  %11 = getelementptr inbounds ptr, ptr %10, i64 6
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %14 unwind label %32

14:                                               ; preds = %9
  %15 = load ptr, ptr %0, align 8, !tbaa !76
  %16 = getelementptr inbounds ptr, ptr %15, i64 4
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %19 unwind label %32

19:                                               ; preds = %14
  %20 = load ptr, ptr %1, align 8, !tbaa !76
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef %13, ptr noundef %18)
          to label %23 unwind label %32

23:                                               ; preds = %19
  %24 = load ptr, ptr %1, align 8, !tbaa !76
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %31 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #29
  unreachable

31:                                               ; preds = %23
  ret void

32:                                               ; preds = %19, %14, %9, %3
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = load ptr, ptr %1, align 8, !tbaa !76
  %35 = getelementptr inbounds ptr, ptr %34, i64 24
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %41 unwind label %38

38:                                               ; preds = %32
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #29
  unreachable

41:                                               ; preds = %32
  resume { ptr, i32 } %33
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %5 = load ptr, ptr %1, align 8, !tbaa !76
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %9 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %10 unwind label %33

10:                                               ; preds = %4
  %11 = load ptr, ptr %1, align 8, !tbaa !76
  %12 = getelementptr inbounds ptr, ptr %11, i64 6
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %15 unwind label %33

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 8, !tbaa !76
  %17 = getelementptr inbounds ptr, ptr %16, i64 4
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %20 unwind label %33

20:                                               ; preds = %15
  %21 = load ptr, ptr %1, align 8, !tbaa !76
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %14, ptr noundef %19)
          to label %24 unwind label %33

24:                                               ; preds = %20
  %25 = load ptr, ptr %1, align 8, !tbaa !76
  %26 = getelementptr inbounds ptr, ptr %25, i64 24
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %32 unwind label %29

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #29
  unreachable

32:                                               ; preds = %24
  ret void

33:                                               ; preds = %20, %15, %10, %4
  %34 = landingpad { ptr, i32 }
          cleanup
  %35 = load ptr, ptr %1, align 8, !tbaa !76
  %36 = getelementptr inbounds ptr, ptr %35, i64 24
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef zeroext i1 %37(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %42 unwind label %39

39:                                               ; preds = %33
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  tail call void @__clang_call_terminate(ptr %41) #29
  unreachable

42:                                               ; preds = %33
  resume { ptr, i32 } %34
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesEPKN11xercesc_2_77LocatorE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %5 = load ptr, ptr %1, align 8, !tbaa !76
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %9 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef %2)
          to label %10 unwind label %28

10:                                               ; preds = %4
  %11 = load ptr, ptr %1, align 8, !tbaa !76
  %12 = getelementptr inbounds ptr, ptr %11, i64 6
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %15 unwind label %28

15:                                               ; preds = %10
  %16 = load ptr, ptr %1, align 8, !tbaa !76
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %14, ptr noundef %3)
          to label %19 unwind label %28

19:                                               ; preds = %15
  %20 = load ptr, ptr %1, align 8, !tbaa !76
  %21 = getelementptr inbounds ptr, ptr %20, i64 24
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef zeroext i1 %22(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %27 unwind label %24

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #29
  unreachable

27:                                               ; preds = %19
  ret void

28:                                               ; preds = %15, %10, %4
  %29 = landingpad { ptr, i32 }
          cleanup
  %30 = load ptr, ptr %1, align 8, !tbaa !76
  %31 = getelementptr inbounds ptr, ptr %30, i64 24
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef zeroext i1 %32(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %37 unwind label %34

34:                                               ; preds = %28
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  tail call void @__clang_call_terminate(ptr %36) #29
  unreachable

37:                                               ; preds = %28
  resume { ptr, i32 } %29
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %4 = load ptr, ptr %1, align 8, !tbaa !76
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef %2)
          to label %9 unwind label %32

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !76
  %11 = getelementptr inbounds ptr, ptr %10, i64 6
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %14 unwind label %32

14:                                               ; preds = %9
  %15 = load ptr, ptr %0, align 8, !tbaa !76
  %16 = getelementptr inbounds ptr, ptr %15, i64 4
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %19 unwind label %32

19:                                               ; preds = %14
  %20 = load ptr, ptr %1, align 8, !tbaa !76
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef %13, ptr noundef %18)
          to label %23 unwind label %32

23:                                               ; preds = %19
  %24 = load ptr, ptr %1, align 8, !tbaa !76
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %31 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #29
  unreachable

31:                                               ; preds = %23
  ret void

32:                                               ; preds = %19, %14, %9, %3
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = load ptr, ptr %1, align 8, !tbaa !76
  %35 = getelementptr inbounds ptr, ptr %34, i64 24
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %41 unwind label %38

38:                                               ; preds = %32
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #29
  unreachable

41:                                               ; preds = %32
  resume { ptr, i32 } %33
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesEPKN11xercesc_2_77LocatorE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %5 = load ptr, ptr %1, align 8, !tbaa !76
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %9 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef %2)
          to label %10 unwind label %28

10:                                               ; preds = %4
  %11 = load ptr, ptr %1, align 8, !tbaa !76
  %12 = getelementptr inbounds ptr, ptr %11, i64 6
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %15 unwind label %28

15:                                               ; preds = %10
  %16 = load ptr, ptr %1, align 8, !tbaa !76
  %17 = getelementptr inbounds ptr, ptr %16, i64 3
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %14, ptr noundef %3)
          to label %19 unwind label %28

19:                                               ; preds = %15
  %20 = load ptr, ptr %1, align 8, !tbaa !76
  %21 = getelementptr inbounds ptr, ptr %20, i64 24
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef zeroext i1 %22(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %27 unwind label %24

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #29
  unreachable

27:                                               ; preds = %19
  ret void

28:                                               ; preds = %15, %10, %4
  %29 = landingpad { ptr, i32 }
          cleanup
  %30 = load ptr, ptr %1, align 8, !tbaa !76
  %31 = getelementptr inbounds ptr, ptr %30, i64 24
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef zeroext i1 %32(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %37 unwind label %34

34:                                               ; preds = %28
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  tail call void @__clang_call_terminate(ptr %36) #29
  unreachable

37:                                               ; preds = %28
  resume { ptr, i32 } %29
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %5 = load ptr, ptr %1, align 8, !tbaa !76
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %9 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %10 unwind label %33

10:                                               ; preds = %4
  %11 = load ptr, ptr %1, align 8, !tbaa !76
  %12 = getelementptr inbounds ptr, ptr %11, i64 6
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %15 unwind label %33

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 8, !tbaa !76
  %17 = getelementptr inbounds ptr, ptr %16, i64 4
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %20 unwind label %33

20:                                               ; preds = %15
  %21 = load ptr, ptr %1, align 8, !tbaa !76
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %14, ptr noundef %19)
          to label %24 unwind label %33

24:                                               ; preds = %20
  %25 = load ptr, ptr %1, align 8, !tbaa !76
  %26 = getelementptr inbounds ptr, ptr %25, i64 24
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %32 unwind label %29

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #29
  unreachable

32:                                               ; preds = %24
  ret void

33:                                               ; preds = %20, %15, %10, %4
  %34 = landingpad { ptr, i32 }
          cleanup
  %35 = load ptr, ptr %1, align 8, !tbaa !76
  %36 = getelementptr inbounds ptr, ptr %35, i64 24
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef zeroext i1 %37(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %42 unwind label %39

39:                                               ; preds = %33
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  tail call void @__clang_call_terminate(ptr %41) #29
  unreachable

42:                                               ; preds = %33
  resume { ptr, i32 } %34
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %7 = load ptr, ptr %1, align 8, !tbaa !76
  %8 = getelementptr inbounds ptr, ptr %7, i64 5
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr %9(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %11 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null)
          to label %12 unwind label %30

12:                                               ; preds = %6
  %13 = load ptr, ptr %0, align 8, !tbaa !76
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %17 unwind label %30

17:                                               ; preds = %12
  %18 = load ptr, ptr %1, align 8, !tbaa !76
  %19 = getelementptr inbounds ptr, ptr %18, i64 8
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef null, ptr noundef %16)
          to label %21 unwind label %30

21:                                               ; preds = %17
  %22 = load ptr, ptr %1, align 8, !tbaa !76
  %23 = getelementptr inbounds ptr, ptr %22, i64 6
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %29 unwind label %26

26:                                               ; preds = %21
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #29
  unreachable

29:                                               ; preds = %21
  ret void

30:                                               ; preds = %17, %12, %6
  %31 = landingpad { ptr, i32 }
          cleanup
  %32 = load ptr, ptr %1, align 8, !tbaa !76
  %33 = getelementptr inbounds ptr, ptr %32, i64 6
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef zeroext i1 %34(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %39 unwind label %36

36:                                               ; preds = %30
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  tail call void @__clang_call_terminate(ptr %38) #29
  unreachable

39:                                               ; preds = %30
  resume { ptr, i32 } %31
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %4 = load ptr, ptr %1, align 8, !tbaa !76
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef %2)
          to label %9 unwind label %27

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !76
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %14 unwind label %27

14:                                               ; preds = %9
  %15 = load ptr, ptr %1, align 8, !tbaa !76
  %16 = getelementptr inbounds ptr, ptr %15, i64 7
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef null, ptr noundef %13)
          to label %18 unwind label %27

18:                                               ; preds = %14
  %19 = load ptr, ptr %1, align 8, !tbaa !76
  %20 = getelementptr inbounds ptr, ptr %19, i64 6
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef zeroext i1 %21(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %26 unwind label %23

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #29
  unreachable

26:                                               ; preds = %18
  ret void

27:                                               ; preds = %14, %9, %3
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load ptr, ptr %1, align 8, !tbaa !76
  %30 = getelementptr inbounds ptr, ptr %29, i64 6
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef zeroext i1 %31(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %36 unwind label %33

33:                                               ; preds = %27
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  tail call void @__clang_call_terminate(ptr %35) #29
  unreachable

36:                                               ; preds = %27
  resume { ptr, i32 } %28
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringEPKN11xercesc_2_77LocatorE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %6 = load ptr, ptr %1, align 8, !tbaa !76
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %10 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %9, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %11 unwind label %24

11:                                               ; preds = %5
  %12 = load ptr, ptr %1, align 8, !tbaa !76
  %13 = getelementptr inbounds ptr, ptr %12, i64 7
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef null, ptr noundef %4)
          to label %15 unwind label %24

15:                                               ; preds = %11
  %16 = load ptr, ptr %1, align 8, !tbaa !76
  %17 = getelementptr inbounds ptr, ptr %16, i64 6
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef zeroext i1 %18(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %23 unwind label %20

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  tail call void @__clang_call_terminate(ptr %22) #29
  unreachable

23:                                               ; preds = %15
  ret void

24:                                               ; preds = %11, %5
  %25 = landingpad { ptr, i32 }
          cleanup
  %26 = load ptr, ptr %1, align 8, !tbaa !76
  %27 = getelementptr inbounds ptr, ptr %26, i64 6
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef zeroext i1 %28(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %33 unwind label %30

30:                                               ; preds = %24
  %31 = landingpad { ptr, i32 }
          catch ptr null
  %32 = extractvalue { ptr, i32 } %31, 0
  tail call void @__clang_call_terminate(ptr %32) #29
  unreachable

33:                                               ; preds = %24
  resume { ptr, i32 } %25
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %5 = load ptr, ptr %1, align 8, !tbaa !76
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %9 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %10 unwind label %28

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !76
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %15 unwind label %28

15:                                               ; preds = %10
  %16 = load ptr, ptr %1, align 8, !tbaa !76
  %17 = getelementptr inbounds ptr, ptr %16, i64 7
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef null, ptr noundef %14)
          to label %19 unwind label %28

19:                                               ; preds = %15
  %20 = load ptr, ptr %1, align 8, !tbaa !76
  %21 = getelementptr inbounds ptr, ptr %20, i64 6
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef zeroext i1 %22(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %27 unwind label %24

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #29
  unreachable

27:                                               ; preds = %19
  ret void

28:                                               ; preds = %15, %10, %4
  %29 = landingpad { ptr, i32 }
          cleanup
  %30 = load ptr, ptr %1, align 8, !tbaa !76
  %31 = getelementptr inbounds ptr, ptr %30, i64 6
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef zeroext i1 %32(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %37 unwind label %34

34:                                               ; preds = %28
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  tail call void @__clang_call_terminate(ptr %36) #29
  unreachable

37:                                               ; preds = %28
  resume { ptr, i32 } %29
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %6 = load ptr, ptr %1, align 8, !tbaa !76
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %10 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %9, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %11 unwind label %29

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !76
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %16 unwind label %29

16:                                               ; preds = %11
  %17 = load ptr, ptr %1, align 8, !tbaa !76
  %18 = getelementptr inbounds ptr, ptr %17, i64 7
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef null, ptr noundef %15)
          to label %20 unwind label %29

20:                                               ; preds = %16
  %21 = load ptr, ptr %1, align 8, !tbaa !76
  %22 = getelementptr inbounds ptr, ptr %21, i64 6
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %28 unwind label %25

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #29
  unreachable

28:                                               ; preds = %20
  ret void

29:                                               ; preds = %16, %11, %5
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = load ptr, ptr %1, align 8, !tbaa !76
  %32 = getelementptr inbounds ptr, ptr %31, i64 6
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %38 unwind label %35

35:                                               ; preds = %29
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #29
  unreachable

38:                                               ; preds = %29
  resume { ptr, i32 } %30
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %6 = load ptr, ptr %1, align 8, !tbaa !76
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %10 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %9, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null, ptr noundef null)
          to label %11 unwind label %29

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !76
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %16 unwind label %29

16:                                               ; preds = %11
  %17 = load ptr, ptr %1, align 8, !tbaa !76
  %18 = getelementptr inbounds ptr, ptr %17, i64 7
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef null, ptr noundef %15)
          to label %20 unwind label %29

20:                                               ; preds = %16
  %21 = load ptr, ptr %1, align 8, !tbaa !76
  %22 = getelementptr inbounds ptr, ptr %21, i64 6
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %28 unwind label %25

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #29
  unreachable

28:                                               ; preds = %20
  ret void

29:                                               ; preds = %16, %11, %5
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = load ptr, ptr %1, align 8, !tbaa !76
  %32 = getelementptr inbounds ptr, ptr %31, i64 6
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %38 unwind label %35

35:                                               ; preds = %29
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #29
  unreachable

38:                                               ; preds = %29
  resume { ptr, i32 } %30
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !74 {
  ret ptr @_ZN11xalanc_1_1019ElemTemplateElement12s_emptyQNameE
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #10 align 2 !prof !74 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nocapture nonnull readnone align 8 %2, ptr nocapture nonnull readnone align 8 %3, ptr noundef %4) unnamed_addr #5 align 2 !prof !74 {
  %6 = load ptr, ptr @_ZN11xalanc_1_109Constants32ELEMNAME_SORT_WITH_PREFIX_STRINGE, align 8, !tbaa !79
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringEPKN11xercesc_2_77LocatorE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 75, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb(ptr nocapture noundef nonnull align 8 dereferenceable(322) %0, i1 noundef zeroext %1) unnamed_addr #5 align 2 !prof !182 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 8, !tbaa !108
  %5 = or i16 %4, 32
  store i16 %5, ptr %3, align 8, !tbaa !108
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !162
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !183

9:                                                ; preds = %10, %2
  ret void

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %16, %10 ], [ %7, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = getelementptr inbounds ptr, ptr %12, i64 16
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(322) %11, i1 noundef zeroext %1), !prof !184
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %11, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !162
  %17 = icmp eq ptr %16, null
  br i1 %17, label %9, label %10, !prof !185, !llvm.loop !186
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %0) unnamed_addr #15 align 2 !prof !187 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !162
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(322) %0, ptr noundef %1) unnamed_addr #16 align 2 !prof !74 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  store ptr %1, ptr %3, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %0) unnamed_addr #17 align 2 !prof !188 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi ptr [ null, %1 ], [ %6, %3 ]
  %5 = phi ptr [ %2, %1 ], [ %8, %3 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !162
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %6, i64 0, i32 6
  br i1 %7, label %9, label %3, !prof !189, !llvm.loop !190

9:                                                ; preds = %3
  ret ptr %4
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %0) unnamed_addr #15 align 2 !prof !191 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(322) %0, ptr noundef %1) unnamed_addr #18 align 2 !prof !192 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 6
  store ptr %1, ptr %3, align 8, !tbaa !142
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %0) unnamed_addr #19 align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !193
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(322) %0, ptr noundef %1) unnamed_addr #16 align 2 !prof !194 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 7
  store ptr %1, ptr %3, align 8, !tbaa !193
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %0) unnamed_addr #15 align 2 !prof !195 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(322) %0, ptr noundef %1) unnamed_addr #16 align 2 !prof !196 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !135
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef returned %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !196 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds ptr, ptr %5, i64 36
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef %4), !prof !197
  br i1 %8, label %14, label %9, !prof !198

9:                                                ; preds = %2
  %10 = tail call ptr @__cxa_allocate_exception(i64 16) #28
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %10, i32 noundef 3)
          to label %11 unwind label %12

11:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #30
  unreachable

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #28
  resume { ptr, i32 } %13

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !162
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22, !prof !199

18:                                               ; preds = %14
  store ptr %1, ptr %15, align 8, !tbaa !162
  %19 = load ptr, ptr %1, align 8, !tbaa !76
  %20 = getelementptr inbounds ptr, ptr %19, i64 29
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(322) %1, ptr noundef null), !prof !200
  br label %33

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !76
  %24 = getelementptr inbounds ptr, ptr %23, i64 22
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(322) %0), !prof !201
  %27 = load ptr, ptr %26, align 8, !tbaa !76
  %28 = getelementptr inbounds ptr, ptr %27, i64 27
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(322) %26, ptr noundef nonnull %1), !prof !202
  %30 = load ptr, ptr %1, align 8, !tbaa !76
  %31 = getelementptr inbounds ptr, ptr %30, i64 29
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(322) %1, ptr noundef nonnull %26), !prof !203
  br label %33

33:                                               ; preds = %18, %22
  %34 = load ptr, ptr %1, align 8, !tbaa !76
  %35 = getelementptr inbounds ptr, ptr %34, i64 31
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(322) %1, ptr noundef nonnull %0), !prof !204
  %37 = load ptr, ptr %1, align 8, !tbaa !76
  %38 = getelementptr inbounds ptr, ptr %37, i64 27
  %39 = load ptr, ptr %38, align 8
  tail call void %39(ptr noundef nonnull align 8 dereferenceable(322) %1, ptr noundef null), !prof !205
  ret ptr %1
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #10 align 2 !prof !74 {
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(322) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #14 align 2 !prof !206 {
  %6 = load ptr, ptr %4, align 8, !tbaa !76
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %4), !prof !207
  %10 = load ptr, ptr %0, align 8, !tbaa !76
  %11 = getelementptr inbounds ptr, ptr %10, i64 35
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(322) %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %9), !prof !208
  ret ptr %13
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 !prof !206 {
  %7 = alloca %"class.xalanc_1_10::TracerEvent", align 8
  %8 = icmp eq ptr %3, null
  br i1 %8, label %9, label %31, !prof !209

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %2, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !83
  %12 = icmp eq i32 %11, 29
  br i1 %12, label %13, label %19, !prof !210

13:                                               ; preds = %9
  %14 = load ptr, ptr %1, align 8, !tbaa !76
  %15 = getelementptr inbounds ptr, ptr %14, i64 59
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %18 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %17, i64 0, i32 1
  br label %23

19:                                               ; preds = %9
  %20 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !116
  %22 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %21, i64 0, i32 1
  br label %23

23:                                               ; preds = %19, %13
  %24 = phi ptr [ %18, %13 ], [ %22, %19 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !79
  %26 = load ptr, ptr %1, align 8, !tbaa !76
  %27 = getelementptr inbounds ptr, ptr %26, i64 56
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !211
  %30 = tail call noundef ptr @_ZNK11xalanc_1_1010Stylesheet12findTemplateERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS3_8NodeTypeERKNS_10XalanQNameEb(ptr noundef nonnull align 8 dereferenceable(1504) %25, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %29, i1 noundef zeroext %12)
  br label %31

31:                                               ; preds = %23, %6
  %32 = phi ptr [ %30, %23 ], [ %3, %6 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %56, !prof !212

34:                                               ; preds = %31
  switch i32 %5, label %56 [
    i32 11, label %35
    i32 1, label %35
    i32 4, label %41
    i32 3, label %41
    i32 2, label %41
    i32 9, label %47
  ], !prof !213

35:                                               ; preds = %34, %34
  %36 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !116
  %38 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !214
  %40 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %39, i64 0, i32 17
  br label %53

41:                                               ; preds = %34, %34, %34
  %42 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !116
  %44 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !214
  %46 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %45, i64 0, i32 16
  br label %53

47:                                               ; preds = %34
  %48 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !116
  %50 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !214
  %52 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %51, i64 0, i32 18
  br label %53

53:                                               ; preds = %47, %41, %35
  %54 = phi ptr [ %40, %35 ], [ %46, %41 ], [ %52, %47 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !79
  br label %56

56:                                               ; preds = %53, %34, %31
  %57 = phi ptr [ null, %34 ], [ %32, %31 ], [ %55, %53 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %107, label %59, !prof !210

59:                                               ; preds = %56
  %60 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !116
  %62 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !214
  %64 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %63, i64 0, i32 16
  %65 = load ptr, ptr %64, align 8, !tbaa !242
  %66 = icmp eq ptr %57, %65
  br i1 %66, label %67, label %94, !prof !212

67:                                               ; preds = %59
  switch i32 %5, label %107 [
    i32 4, label %68
    i32 3, label %68
    i32 2, label %76
  ], !prof !252

68:                                               ; preds = %67, %67
  %69 = load ptr, ptr %0, align 8, !tbaa !76
  %70 = getelementptr inbounds ptr, ptr %69, i64 4
  %71 = load ptr, ptr %70, align 8
  %72 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(322) %0), !prof !253
  %73 = load ptr, ptr %1, align 8, !tbaa !76
  %74 = getelementptr inbounds ptr, ptr %73, i64 109
  %75 = load ptr, ptr %74, align 8
  tail call void %75(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 3, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %72), !prof !254
  br label %107

76:                                               ; preds = %67
  %77 = load ptr, ptr %4, align 8, !tbaa !76
  %78 = getelementptr inbounds ptr, ptr %77, i64 3
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef nonnull align 8 dereferenceable(36) ptr %79(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %81 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %80, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !173
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %107, label %84

84:                                               ; preds = %76
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %80, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !121
  %87 = icmp eq i64 %86, 0
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %80, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8
  %90 = select i1 %87, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %89
  %91 = load ptr, ptr %1, align 8, !tbaa !76
  %92 = getelementptr inbounds ptr, ptr %91, i64 103
  %93 = load ptr, ptr %92, align 8
  tail call void %93(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %90, i32 noundef 0, i32 noundef %82)
  br label %107

94:                                               ; preds = %59
  %95 = load ptr, ptr %1, align 8, !tbaa !76
  %96 = getelementptr inbounds ptr, ptr %95, i64 137
  %97 = load ptr, ptr %96, align 8
  %98 = tail call noundef i64 %97(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !255
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %107, label %100, !prof !256

100:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #28
  call void @_ZN11xalanc_1_1011TracerEventC1ERKNS_26StylesheetExecutionContextERKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(322) %57)
  %101 = load ptr, ptr %1, align 8, !tbaa !76
  %102 = getelementptr inbounds ptr, ptr %101, i64 139
  %103 = load ptr, ptr %102, align 8
  invoke void %103(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %104 unwind label %105

104:                                              ; preds = %100
  call void @_ZN11xalanc_1_1011TracerEventD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #28
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #28
  br label %107

105:                                              ; preds = %100
  %106 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011TracerEventD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #28
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #28
  resume { ptr, i32 } %106

107:                                              ; preds = %56, %68, %67, %84, %76, %94, %104
  %108 = phi ptr [ %57, %104 ], [ %57, %94 ], [ null, %76 ], [ null, %84 ], [ null, %67 ], [ null, %68 ], [ null, %56 ]
  ret ptr %108
}

declare noundef ptr @_ZNK11xalanc_1_1010Stylesheet12findTemplateERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS3_8NodeTypeERKNS_10XalanQNameEb(ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2) unnamed_addr #14 align 2 !prof !257 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds ptr, ptr %5, i64 37
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2, ptr noundef nonnull align 8 dereferenceable(232) %4), !prof !258
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !162
  %10 = icmp eq ptr %9, null
  br i1 %10, label %85, label %11, !prof !259

11:                                               ; preds = %3
  %12 = load ptr, ptr %8, align 8, !tbaa !162
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !260

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  br label %20

16:                                               ; preds = %41, %11
  %17 = load ptr, ptr %8, align 8, !tbaa !162
  %18 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !83
  switch i32 %19, label %76 [
    i32 36, label %45
    i32 14, label %57
  ], !prof !261

20:                                               ; preds = %14, %41
  %21 = phi ptr [ %12, %14 ], [ %43, %41 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  %23 = getelementptr inbounds ptr, ptr %22, i64 17
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(322) %21, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %4), !prof !262
  %25 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %21, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !83
  %27 = load i16, ptr %15, align 8, !tbaa !108
  %28 = and i16 %27, 4
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %33, !prof !263

30:                                               ; preds = %20
  switch i32 %26, label %33 [
    i32 30, label %31
    i32 15, label %31
  ], !prof !264

31:                                               ; preds = %30, %30
  %32 = or disjoint i16 %27, 4
  store i16 %32, ptr %15, align 8, !tbaa !108
  br label %33

33:                                               ; preds = %30, %31, %20
  %34 = load i16, ptr %15, align 8, !tbaa !108
  %35 = and i16 %34, 1
  %36 = icmp ne i16 %35, 0
  %37 = icmp ne i32 %26, 0
  %38 = or i1 %37, %36
  br i1 %38, label %41, label %39, !prof !263

39:                                               ; preds = %33
  %40 = or i16 %34, 1
  store i16 %40, ptr %15, align 8, !tbaa !108
  br label %41

41:                                               ; preds = %39, %33
  %42 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %21, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !162
  %44 = icmp eq ptr %43, null
  br i1 %44, label %16, label %20, !prof !265, !llvm.loop !266

45:                                               ; preds = %16
  %46 = load ptr, ptr %17, align 8, !tbaa !76
  %47 = getelementptr inbounds ptr, ptr %46, i64 23
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(322) %17), !prof !267
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %55, !prof !268

51:                                               ; preds = %45
  %52 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %53 = load i16, ptr %52, align 8, !tbaa !108
  %54 = or i16 %53, 2
  store i16 %54, ptr %52, align 8, !tbaa !108
  br label %85

55:                                               ; preds = %45
  %56 = icmp eq i32 %19, 14
  br i1 %56, label %57, label %76, !prof !269

57:                                               ; preds = %16, %55
  %58 = load ptr, ptr %8, align 8, !tbaa !162
  %59 = load ptr, ptr %58, align 8, !tbaa !76
  %60 = getelementptr inbounds ptr, ptr %59, i64 23
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(322) %58), !prof !270
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %76, !prof !271

64:                                               ; preds = %57
  %65 = load ptr, ptr %8, align 8, !tbaa !162
  %66 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %65, i64 0, i32 10
  %67 = load i16, ptr %66, align 8, !tbaa !108
  %68 = and i16 %67, 1
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %85, !prof !272

70:                                               ; preds = %64
  %71 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %72 = load i16, ptr %71, align 8, !tbaa !108
  %73 = or i16 %72, 8
  store i16 %73, ptr %71, align 8, !tbaa !108
  %74 = getelementptr inbounds %"class.xalanc_1_10::ElemCallTemplate", ptr %65, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !273
  store ptr %75, ptr %8, align 8, !tbaa !162
  br label %85

76:                                               ; preds = %57, %55, %16
  %77 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %78 = load i16, ptr %77, align 8, !tbaa !108
  %79 = and i16 %78, 16
  %80 = icmp ne i16 %79, 0
  %81 = icmp eq i32 %19, 35
  %82 = or i1 %81, %80
  br i1 %82, label %85, label %83, !prof !275

83:                                               ; preds = %76
  %84 = or i16 %78, 16
  store i16 %84, ptr %77, align 8, !tbaa !108
  br label %85

85:                                               ; preds = %51, %76, %83, %64, %70, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2, ptr noundef nonnull align 8 dereferenceable(232) %3) unnamed_addr #5 align 2 !prof !276 {
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(322) %0), !prof !277
  tail call void @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE(ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull %2, ptr noundef null)
  ret void
}

declare void @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #5 align 2 !prof !278 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #5 align 2 !prof !278 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 8, !tbaa !108
  %5 = and i16 %4, 128
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %12, !prof !279

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  %10 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %9, i64 0, i32 8
  %11 = tail call noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br label %37

12:                                               ; preds = %2
  %13 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices11s_XMLStringE, align 8, !tbaa !79
  %14 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %13)
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE, align 8, !tbaa !79
  br label %37

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  %19 = tail call noundef ptr @_ZNK11xalanc_1_1017NamespacesHandler12getNamespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232) %18, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !135
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %23, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi ptr [ %26, %25 ], [ null, %21 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !116
  %33 = load ptr, ptr %32, align 8, !tbaa !76
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(1504) %32, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br label %37

37:                                               ; preds = %15, %27, %30, %17, %7
  %38 = phi ptr [ %11, %7 ], [ %16, %15 ], [ %36, %30 ], [ %28, %27 ], [ %19, %17 ]
  ret ptr %38
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement20processPrefixControlERNS_29StylesheetConstructionContextERKNS_10StylesheetERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %4) local_unnamed_addr #5 align 2 !prof !74 {
  %6 = load ptr, ptr @_ZN11xalanc_1_109Constants33ATTRNAME_EXTENSIONELEMENTPREFIXESE, align 8, !tbaa !79
  %7 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %6)
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %2, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1017NamespacesHandler31processExtensionElementPrefixesERNS_29StylesheetConstructionContextEPKtRKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEE(ptr noundef nonnull align 8 dereferenceable(232) %9, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(80) %10)
  br label %17

11:                                               ; preds = %5
  %12 = load ptr, ptr @_ZN11xalanc_1_109Constants32ATTRNAME_EXCLUDE_RESULT_PREFIXESE, align 8, !tbaa !79
  %13 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %12)
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %2, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1017NamespacesHandler28processExcludeResultPrefixesERNS_29StylesheetConstructionContextEPKtRKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEE(ptr noundef nonnull align 8 dereferenceable(232) %15, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(80) %16)
  br label %17

17:                                               ; preds = %11, %14, %8
  %18 = phi i1 [ true, %8 ], [ true, %14 ], [ false, %11 ]
  ret i1 %18
}

declare void @_ZN11xalanc_1_1017NamespacesHandler31processExtensionElementPrefixesERNS_29StylesheetConstructionContextEPKtRKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1017NamespacesHandler28processExcludeResultPrefixesERNS_29StylesheetConstructionContextEPKtRKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1017NamespacesHandler12getNamespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %0) unnamed_addr #19 align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !280
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyC2EllRKNS_14XalanDOMStringE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #16 align 2 !prof !74 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1019ElemTemplateElement12LocatorProxyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !76
  %5 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", ptr %0, i64 0, i32 1
  store i64 %1, ptr %5, align 8, !tbaa !106
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", ptr %0, i64 0, i32 2
  store i64 %2, ptr %6, align 8, !tbaa !107
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", ptr %0, i64 0, i32 3
  store ptr %3, ptr %7, align 8, !tbaa !79
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !74 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 !prof !74 {
  tail call void @_ZdlPv(ptr noundef %0) #31
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy13getLineNumberEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #19 align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !106
  ret i64 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy15getColumnNumberEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #19 align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !107
  ret i64 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy11getPublicIdEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !74 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy11getSystemIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #20 align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !280
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !173
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !121
  %10 = icmp eq i64 %9, 0
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = select i1 %10, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %12
  br label %14

14:                                               ; preds = %1, %7
  %15 = phi ptr [ %13, %7 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #10 align 2 !prof !281 {
  ret i1 true
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #12 align 2 !prof !282 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %5 = load i16, ptr %4, align 8, !tbaa !108
  %6 = and i16 %5, 8
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %29, !prof !141

8:                                                ; preds = %3, %27
  %9 = phi ptr [ %20, %27 ], [ %2, %3 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = getelementptr inbounds ptr, ptr %10, i64 23
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv
  br i1 %13, label %14, label %17, !prof !141

14:                                               ; preds = %8
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %9, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !142
  br label %19

17:                                               ; preds = %8
  %18 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(322) %9)
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi ptr [ %18, %17 ], [ %16, %14 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22, !prof !143

22:                                               ; preds = %19
  %23 = load ptr, ptr %0, align 8, !tbaa !76
  %24 = getelementptr inbounds ptr, ptr %23, i64 26
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_
  br i1 %26, label %29, label %27, !prof !144

27:                                               ; preds = %22
  %28 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %20)
  br i1 %28, label %29, label %8, !prof !144, !llvm.loop !145

29:                                               ; preds = %22, %27, %19, %3
  %30 = phi ptr [ null, %3 ], [ %20, %19 ], [ %20, %27 ], [ %20, %22 ]
  ret ptr %30
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #12 align 2 !prof !283 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 8, !tbaa !108
  %5 = and i16 %4, 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %16, label %7, !prof !161

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !76
  %9 = getelementptr inbounds ptr, ptr %8, i64 85
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %11 = load ptr, ptr %1, align 8, !tbaa !76
  %12 = getelementptr inbounds ptr, ptr %11, i64 134
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0)
  %14 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !162
  br label %52

16:                                               ; preds = %2
  %17 = load ptr, ptr %0, align 8, !tbaa !76
  %18 = getelementptr inbounds ptr, ptr %17, i64 18
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv
  br i1 %20, label %21, label %24, !prof !161

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !162
  br label %26

24:                                               ; preds = %16
  %25 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(322) %0)
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi ptr [ %25, %24 ], [ %23, %21 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %52, label %29, !prof !163

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 8, !tbaa !76
  %31 = getelementptr inbounds ptr, ptr %30, i64 26
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_
  br i1 %33, label %52, label %34, !prof !164

34:                                               ; preds = %29
  %35 = tail call noundef zeroext i1 %32(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %27)
  br i1 %35, label %52, label %36, !prof !164

36:                                               ; preds = %34
  %37 = load i16, ptr %3, align 8, !tbaa !108
  %38 = and i16 %37, 8
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36, %47
  %41 = phi ptr [ %45, %47 ], [ %27, %36 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !76
  %43 = getelementptr inbounds ptr, ptr %42, i64 23
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(322) %41)
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %40
  %48 = load ptr, ptr %0, align 8, !tbaa !76
  %49 = getelementptr inbounds ptr, ptr %48, i64 26
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef zeroext i1 %50(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %45)
  br i1 %51, label %52, label %40, !llvm.loop !145

52:                                               ; preds = %47, %40, %29, %36, %26, %34, %7
  %53 = phi ptr [ %15, %7 ], [ %27, %34 ], [ null, %26 ], [ null, %36 ], [ %27, %29 ], [ %45, %40 ], [ %45, %47 ]
  ret ptr %53
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture readnone %2) unnamed_addr #13 align 2 !prof !74 {
  ret i1 true
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 !prof !284 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !175
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !285

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !286
  %8 = load ptr, ptr %0, align 8, !tbaa !287
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !288

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #29
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #22 comdat !prof !74 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #28
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !289 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !287
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !121
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !290

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #28
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !287
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !121
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !175
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !76
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !291
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !286
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !286
  %20 = load i64, ptr %5, align 8, !tbaa !121
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !292

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !287
  %24 = load i64, ptr %10, align 8, !tbaa !121
  %25 = load i64, ptr %11, align 8, !tbaa !175
  %26 = load ptr, ptr %17, align 8, !tbaa !286
  store ptr %4, ptr %3, align 8, !tbaa !287
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #28
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !175
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !286
  %33 = load ptr, ptr %3, align 8, !tbaa !287
  %34 = load ptr, ptr %33, align 8, !tbaa !76
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #29
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #28
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !293

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !76
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !294
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !287
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !175
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !286
  store ptr %53, ptr %0, align 8, !tbaa !287
  store i64 %52, ptr %5, align 8, !tbaa !121
  store i64 %51, ptr %55, align 8, !tbaa !175
  store ptr %50, ptr %57, align 8, !tbaa !286
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !295

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !76
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !296

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #29
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !297 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !287
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !121
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !290

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #28
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !287
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !121
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !175
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !76
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !298
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !286
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !286
  %24 = load i64, ptr %9, align 8, !tbaa !121
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !292

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !287
  %28 = load i64, ptr %6, align 8, !tbaa !121
  %29 = load i64, ptr %7, align 8, !tbaa !175
  %30 = load ptr, ptr %8, align 8, !tbaa !286
  %31 = load ptr, ptr %5, align 8, !tbaa !287
  store ptr %31, ptr %0, align 8, !tbaa !287
  %32 = load i64, ptr %14, align 8, !tbaa !121
  store i64 %32, ptr %6, align 8, !tbaa !121
  %33 = load i64, ptr %15, align 8, !tbaa !175
  store i64 %33, ptr %7, align 8, !tbaa !175
  %34 = load ptr, ptr %21, align 8, !tbaa !286
  store ptr %34, ptr %8, align 8, !tbaa !286
  store ptr %27, ptr %5, align 8, !tbaa !287
  store i64 %28, ptr %14, align 8, !tbaa !121
  store i64 %29, ptr %15, align 8, !tbaa !175
  store ptr %30, ptr %21, align 8, !tbaa !286
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !292

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !76
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #29
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #28
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !175
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !286
  %50 = load ptr, ptr %5, align 8, !tbaa !287
  %51 = load ptr, ptr %50, align 8, !tbaa !76
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #29
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #28
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !293

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !76
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !299
  store ptr %65, ptr %8, align 8, !tbaa !286
  store i64 %3, ptr %7, align 8, !tbaa !175
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !300 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !301

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !121
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !286
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !175
  br i1 %18, label %21, label %39, !prof !302

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !303

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !304

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !286
  %28 = load i64, ptr %12, align 8, !tbaa !121
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !305
  store i16 %34, ptr %32, align 2, !tbaa !305
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !306, !llvm.loop !307

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !308

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #28
  %42 = load ptr, ptr %0, align 8, !tbaa !287
  store ptr %42, ptr %5, align 8, !tbaa !287
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !121
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !175
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !76
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !309
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !286
  %51 = load i64, ptr %43, align 8, !tbaa !121
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !286
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !310

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !286
  %56 = load i64, ptr %43, align 8, !tbaa !121
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !310

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !286
  %60 = load i64, ptr %43, align 8, !tbaa !121
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !286
  %63 = load i64, ptr %12, align 8, !tbaa !121
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !310

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !287
  %67 = load i64, ptr %12, align 8, !tbaa !121
  %68 = load i64, ptr %19, align 8, !tbaa !175
  %69 = load ptr, ptr %15, align 8, !tbaa !286
  %70 = load ptr, ptr %5, align 8, !tbaa !287
  store ptr %70, ptr %0, align 8, !tbaa !287
  %71 = load i64, ptr %43, align 8, !tbaa !121
  store i64 %71, ptr %12, align 8, !tbaa !121
  %72 = load i64, ptr %44, align 8, !tbaa !175
  store i64 %72, ptr %19, align 8, !tbaa !175
  %73 = load ptr, ptr %50, align 8, !tbaa !286
  store ptr %73, ptr %15, align 8, !tbaa !286
  store ptr %66, ptr %5, align 8, !tbaa !287
  store i64 %67, ptr %43, align 8, !tbaa !121
  store i64 %68, ptr %44, align 8, !tbaa !175
  store ptr %69, ptr %50, align 8, !tbaa !286
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !311

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !76
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !312

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #29
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #28
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !175
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !286
  %89 = load ptr, ptr %5, align 8, !tbaa !287
  %90 = load ptr, ptr %89, align 8, !tbaa !76
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #29
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #28
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !313

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !314

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !314

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !315, !llvm.loop !316

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !317, !llvm.loop !318

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !319
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
  br i1 %123, label %124, label %120, !llvm.loop !320

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
  store i64 %36, ptr %12, align 8, !tbaa !121
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !321 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !121
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !175
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !322

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !286
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !305
  store i16 %13, ptr %12, align 2, !tbaa !305
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !121
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #28
  %21 = load ptr, ptr %0, align 8, !tbaa !287
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !287
  %24 = load i64, ptr %4, align 8, !tbaa !121
  %25 = load i64, ptr %6, align 8, !tbaa !175
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !286
  %28 = load ptr, ptr %3, align 8, !tbaa !287
  store ptr %28, ptr %0, align 8, !tbaa !287
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !121
  store i64 %30, ptr %4, align 8, !tbaa !121
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !175
  store i64 %32, ptr %6, align 8, !tbaa !175
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !286
  store ptr %34, ptr %26, align 8, !tbaa !286
  store ptr %23, ptr %3, align 8, !tbaa !287
  store i64 %24, ptr %29, align 8, !tbaa !121
  store i64 %25, ptr %31, align 8, !tbaa !175
  store ptr %27, ptr %33, align 8, !tbaa !286
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !76
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #29
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #28
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !175
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !286
  %52 = load ptr, ptr %3, align 8, !tbaa !287
  %53 = load ptr, ptr %52, align 8, !tbaa !76
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #29
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #28
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #23

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #24

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_ElemTemplateElement.cpp() #25 section ".text.startup" !prof !127 !PGOFuncName !323 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE, ptr nonnull @__dso_handle) #28
  tail call void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xalanc_1_1019ElemTemplateElement12s_emptyQNameE, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE)
  %3 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev, ptr nonnull @_ZN11xalanc_1_1019ElemTemplateElement12s_emptyQNameE, ptr nonnull @__dso_handle) #28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #25 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { noreturn }
attributes #31 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!73}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!35 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZN11xalanc_1_1014PrefixResolverC2Ev, i64 395}
!36 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZN11xalanc_1_1017NamespacesHandlerC1ERNS_29StylesheetConstructionContextERKS0_RKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEERKNS_14XalanDOMStringE, i64 395}
!37 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiRKNS_14XalanDOMStringEii, ptr @_ZN11xalanc_1_1014PrefixResolverC2Ev, i64 455}
!38 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiRKNS_14XalanDOMStringEii, ptr @_ZN11xalanc_1_1017NamespacesHandlerC1ERN11xercesc_2_713MemoryManagerE, i64 455}
!39 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, ptr @_ZN11xalanc_1_1017NamespacesHandlerD1Ev, i64 850}
!40 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, ptr @_ZN11xalanc_1_1014PrefixResolverD2Ev, i64 850}
!41 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, i64 12}
!42 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, i64 1}
!43 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE, i64 23271370}
!44 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 1}
!45 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, i64 40062}
!46 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement19endChildrenToStringERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, i64 40062}
!47 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, i64 3}
!48 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, i64 351}
!49 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, i64 409}
!50 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, i64 190}
!51 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, i64 599}
!52 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, i64 403}
!53 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, i64 397107}
!54 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1010Stylesheet12findTemplateERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS3_8NodeTypeERKNS_10XalanQNameEb, i64 397107}
!55 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, i64 167720}
!56 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_, i64 245}
!57 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, i64 168}
!58 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, i64 75}
!59 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_, ptr @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE, i64 245}
!60 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE, i64 165}
!61 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE, i64 165}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!69 = !{ptr @_GLOBAL__sub_I_ElemTemplateElement.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!70 = !{ptr @_GLOBAL__sub_I_ElemTemplateElement.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!71 = !{ptr @_GLOBAL__sub_I_ElemTemplateElement.cpp, ptr @__cxa_atexit, i64 2}
!72 = !{ptr @_GLOBAL__sub_I_ElemTemplateElement.cpp, ptr @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_, i64 1}
!73 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!74 = !{!"function_entry_count", i64 0}
!75 = !{!"function_entry_count", i64 395}
!76 = !{!77, !77, i64 0}
!77 = !{!"vtable pointer", !78, i64 0}
!78 = !{!"Simple C++ TBAA"}
!79 = !{!80, !80, i64 0}
!80 = !{!"any pointer", !81, i64 0}
!81 = !{!"omnipotent char", !78, i64 0}
!82 = !{!"branch_weights", i32 395, i32 0}
!83 = !{!84, !97, i64 248}
!84 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !85, i64 0, !80, i64 8, !86, i64 16, !97, i64 248, !80, i64 256, !80, i64 264, !80, i64 272, !81, i64 280, !98, i64 288, !101, i64 320}
!85 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!86 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !87, i64 0, !89, i64 32, !90, i64 64, !91, i64 96}
!87 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!88 = !{!"long", !81, i64 0}
!89 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!90 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!91 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !92, i64 0, !93, i64 1, !80, i64 8, !94, i64 16, !88, i64 24, !88, i64 32, !95, i64 40, !95, i64 64, !96, i64 88, !88, i64 120, !88, i64 128}
!92 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!93 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!94 = !{!"float", !81, i64 0}
!95 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !80, i64 0, !80, i64 8, !80, i64 16}
!96 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!97 = !{!"int", !81, i64 0}
!98 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !99, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!99 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !100, i64 0}
!100 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!101 = !{!"short", !81, i64 0}
!102 = !{!103, !88, i64 8}
!103 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!104 = !{!"branch_weights", i32 0, i32 395}
!105 = !{!"VP", i32 0, i64 395, i64 -2492984370683079149, i64 395}
!106 = !{!98, !88, i64 8}
!107 = !{!98, !88, i64 16}
!108 = !{!84, !101, i64 320}
!109 = !{!"function_entry_count", i64 455}
!110 = !{!111, !80, i64 8}
!111 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !80, i64 8}
!112 = !{!"branch_weights", i32 455, i32 0}
!113 = !{!"VP", i32 0, i64 455, i64 -2492984370683079149, i64 455}
!114 = !{!"function_entry_count", i64 850}
!115 = !{!"function_entry_count", i64 168057}
!116 = !{!84, !80, i64 8}
!117 = !{!"function_entry_count", i64 12}
!118 = !{!"VP", i32 0, i64 12, i64 -5610273550909442482, i64 12}
!119 = !{!"VP", i32 0, i64 12, i64 -8820415475705394364, i64 12}
!120 = !{!"branch_weights", i32 0, i32 12}
!121 = !{!122, !88, i64 8}
!122 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!123 = !{!"function_entry_count", i64 135898737}
!124 = !{!"VP", i32 0, i64 135898737, i64 -4171607645886912631, i64 135898737}
!125 = !{!"branch_weights", i32 135898737, i32 0}
!126 = !{!"function_entry_count", i64 23581092}
!127 = !{!"function_entry_count", i64 1}
!128 = !{!"VP", i32 0, i64 1, i64 3848243577505407877, i64 1}
!129 = !{!"VP", i32 0, i64 1, i64 4336303630697943180, i64 1}
!130 = !{!"VP", i32 0, i64 181720134, i64 2772720153386160035, i64 44800927, i64 5490048318530774551, i64 44742742, i64 8702321664983276923, i64 22648489}
!131 = !{!"branch_weights", i32 181720132, i32 1}
!132 = !{!"VP", i32 0, i64 181720134, i64 5737380384297328735, i64 44800927, i64 -5083911372452250069, i64 44742742, i64 1189439279657590852, i64 23271370}
!133 = !{!"branch_weights", i32 159071645, i32 22648489}
!134 = !{!"branch_weights", i32 386423474, i32 0}
!135 = !{!84, !80, i64 256}
!136 = !{!"VP", i32 0, i64 22648489, i64 1043429170433592703, i64 22648489}
!137 = !{!"branch_weights", i32 1, i32 181720133}
!138 = !{!"branch_weights", i32 159071645, i32 22648488}
!139 = !{!"VP", i32 0, i64 22648488, i64 1043429170433592703, i64 22648488}
!140 = !{!"branch_weights", i32 90016784, i32 91703349}
!141 = !{!"branch_weights", i32 136276664, i32 0}
!142 = !{!84, !80, i64 264}
!143 = !{!"branch_weights", i32 68303307, i32 67973357}
!144 = !{!"branch_weights", i32 67973357, i32 0}
!145 = distinct !{!145, !146, !147}
!146 = !{!"llvm.loop.mustprogress"}
!147 = !{!"llvm.loop.unroll.disable"}
!148 = !{!"VP", i32 0, i64 91703349, i64 4720505397257175218, i64 67161843, i64 8114216612024568409, i64 22371791}
!149 = !{!"branch_weights", i32 90891622, i32 90828511}
!150 = !{!"branch_weights", i32 68280184, i32 22611438}
!151 = !{!"VP", i32 0, i64 22611438, i64 1043429170433592703, i64 22611438}
!152 = !{!"branch_weights", i32 2, i32 181720132}
!153 = distinct !{!153, !146, !147}
!154 = distinct !{!154, !146, !147}
!155 = !{!"VP", i32 0, i64 1, i64 5321850962579362954, i64 1}
!156 = distinct !{!156, !146, !147}
!157 = !{!"function_entry_count", i64 46307078}
!158 = !{!"branch_weights", i32 23887977, i32 22419101}
!159 = !{!"VP", i32 0, i64 22419101, i64 -2532843380396836569, i64 22419101}
!160 = !{!"branch_weights", i32 45258274, i32 1048804}
!161 = !{!"branch_weights", i32 68726179, i32 0}
!162 = !{!81, !81, i64 0}
!163 = !{!"branch_weights", i32 262215, i32 68463964}
!164 = !{!"branch_weights", i32 68463964, i32 0}
!165 = !{!"VP", i32 0, i64 1048804, i64 6493426690278994479, i64 1048804}
!166 = !{!"branch_weights", i32 23887977, i32 0}
!167 = !{!"function_entry_count", i64 40062}
!168 = !{!"branch_weights", i32 40062, i32 0}
!169 = !{!170, !80, i64 328}
!170 = !{!"_ZTSN11xalanc_1_1015ElemTextLiteralE", !84, i64 0, !171, i64 322, !80, i64 328, !97, i64 336}
!171 = !{!"bool", !81, i64 0}
!172 = !{!170, !97, i64 336}
!173 = !{!174, !97, i64 32}
!174 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !122, i64 0, !97, i64 32}
!175 = !{!122, !88, i64 16}
!176 = !{!"branch_weights", i32 1, i32 40061}
!177 = !{!"VP", i32 0, i64 40062, i64 -1067971540127943206, i64 40062}
!178 = !{!"VP", i32 0, i64 40062, i64 7918534656437768524, i64 40062}
!179 = !{!"VP", i32 0, i64 40062, i64 -2787738682491994990, i64 40062}
!180 = !{!"VP", i32 0, i64 40062, i64 -371003275719989616, i64 40062}
!181 = !{!"function_entry_count", i64 5875799}
!182 = !{!"function_entry_count", i64 6}
!183 = !{!"branch_weights", i32 3, i32 3}
!184 = !{!"VP", i32 0, i64 3, i64 -124077457730033891, i64 3}
!185 = !{!"branch_weights", i32 3, i32 0}
!186 = distinct !{!186, !146, !147}
!187 = !{!"function_entry_count", i64 22756063}
!188 = !{!"function_entry_count", i64 559}
!189 = !{!"branch_weights", i32 559, i32 1719}
!190 = distinct !{!190, !146, !147}
!191 = !{!"function_entry_count", i64 22750892}
!192 = !{!"function_entry_count", i64 651}
!193 = !{!84, !80, i64 272}
!194 = !{!"function_entry_count", i64 435}
!195 = !{!"function_entry_count", i64 95467}
!196 = !{!"function_entry_count", i64 409}
!197 = !{!"VP", i32 0, i64 409, i64 -8372643095066488579, i64 351, i64 2032662910187126419, i64 42, i64 6929011709954210378, i64 9}
!198 = !{!"branch_weights", i32 409, i32 0}
!199 = !{!"branch_weights", i32 219, i32 190}
!200 = !{!"VP", i32 0, i64 219, i64 3620242170163329240, i64 219}
!201 = !{!"VP", i32 0, i64 190, i64 -7757430924250155709, i64 190}
!202 = !{!"VP", i32 0, i64 190, i64 6877719967282748505, i64 190}
!203 = !{!"VP", i32 0, i64 190, i64 3620242170163329240, i64 190}
!204 = !{!"VP", i32 0, i64 409, i64 -5900080780922026953, i64 403, i64 -1704129667708416676, i64 6}
!205 = !{!"VP", i32 0, i64 409, i64 6877719967282748505, i64 409}
!206 = !{!"function_entry_count", i64 397107}
!207 = !{!"VP", i32 0, i64 397107, i64 5575636727286712827, i64 222922, i64 -2905376512939438276, i64 167720, i64 7640389117638268357, i64 6465}
!208 = !{!"VP", i32 0, i64 397107, i64 -3876296676012194209, i64 397107}
!209 = !{!"branch_weights", i32 397107, i32 0}
!210 = !{!"branch_weights", i32 0, i32 397107}
!211 = !{!"VP", i32 0, i64 397107, i64 -263514279710675539, i64 397107}
!212 = !{!"branch_weights", i32 167720, i32 229387}
!213 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 167720, i32 0, i32 0}
!214 = !{!215, !80, i64 8}
!215 = !{!"_ZTSN11xalanc_1_1010StylesheetE", !85, i64 0, !80, i64 8, !174, i64 16, !216, i64 56, !217, i64 88, !174, i64 120, !218, i64 160, !88, i64 192, !219, i64 200, !221, i64 280, !171, i64 360, !223, i64 368, !80, i64 504, !103, i64 512, !228, i64 544, !233, i64 680, !234, i64 712, !235, i64 720, !238, i64 856, !240, i64 864, !235, i64 896, !238, i64 1032, !240, i64 1040, !240, i64 1072, !240, i64 1104, !240, i64 1136, !240, i64 1168, !240, i64 1200, !88, i64 1232, !241, i64 1240, !86, i64 1272}
!216 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14KeyDeclarationENS_31MemoryManagedConstructionTraitsIS1_EEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!217 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_20XalanSpaceNodeTesterENS_31MemoryManagedConstructionTraitsIS1_EEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!218 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_10StylesheetENS_31MemoryManagedConstructionTraitsIS2_EEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!219 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS2_IS4_EEEE", !80, i64 0, !88, i64 8, !220, i64 16, !220, i64 48}
!220 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEENS_31MemoryManagedConstructionTraitsIS8_EEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!221 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEE", !80, i64 0, !88, i64 8, !222, i64 16, !222, i64 48}
!222 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS_31MemoryManagedConstructionTraitsIS5_EEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!223 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS1_EEEE", !224, i64 0, !225, i64 1, !80, i64 8, !94, i64 16, !88, i64 24, !88, i64 32, !226, i64 40, !226, i64 64, !227, i64 88, !88, i64 120, !88, i64 128}
!224 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!225 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!226 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !80, i64 0, !80, i64 8, !80, i64 16}
!227 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!228 = !{!"_ZTSN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS1_EEEE", !229, i64 0, !230, i64 1, !80, i64 8, !94, i64 16, !88, i64 24, !88, i64 32, !231, i64 40, !231, i64 64, !232, i64 88, !88, i64 120, !88, i64 128}
!229 = !{!"_ZTSN11xalanc_1_1024XalanHashMemberReferenceINS_10XalanQNameEEE"}
!230 = !{!"_ZTSSt8equal_toIN11xalanc_1_1010XalanQNameEE"}
!231 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !80, i64 0, !80, i64 8, !80, i64 16}
!232 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!233 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!234 = !{!"double", !81, i64 0}
!235 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS5_EEEENS_17XalanMapKeyTraitsIS1_EEEE", !224, i64 0, !225, i64 1, !80, i64 8, !94, i64 16, !88, i64 24, !88, i64 32, !236, i64 40, !236, i64 64, !237, i64 88, !88, i64 120, !88, i64 128}
!236 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS6_EEEENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !80, i64 0, !80, i64 8, !80, i64 16}
!237 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS0_IPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISE_E4NodeEEENS8_ISJ_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!238 = !{!"_ZTSN11xalanc_1_1016XalanMapIteratorINS_27XalanMapConstIteratorTraitsISt4pairIKNS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS8_EEEEEEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIS3_SB_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISK_E4NodeEEEEE", !239, i64 0}
!239 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISE_E4NodeEEE", !80, i64 0}
!240 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS3_EEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!241 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_17ElemDecimalFormatENS_31MemoryManagedConstructionTraitsIS2_EEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!242 = !{!243, !80, i64 1880}
!243 = !{!"_ZTSN11xalanc_1_1014StylesheetRootE", !215, i64 0, !174, i64 1504, !244, i64 1544, !174, i64 1552, !174, i64 1592, !174, i64 1632, !174, i64 1672, !171, i64 1712, !174, i64 1720, !174, i64 1760, !245, i64 1800, !246, i64 1808, !171, i64 1840, !103, i64 1848, !80, i64 1880, !80, i64 1888, !80, i64 1896, !171, i64 1904, !171, i64 1905, !97, i64 1908, !171, i64 1912, !88, i64 1920, !247, i64 1928}
!244 = !{!"_ZTSN11xalanc_1_1014StylesheetRoot11eIndentTypeE", !81, i64 0}
!245 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !81, i64 0}
!246 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_10XalanQNameENS_31MemoryManagedConstructionTraitsIS3_EEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!247 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_10XalanQNameENS_11XalanVectorIPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS6_EEEENS_17XalanMapKeyTraitsIS3_EEEE", !248, i64 0, !249, i64 1, !80, i64 8, !94, i64 16, !88, i64 24, !88, i64 32, !250, i64 40, !250, i64 64, !251, i64 88, !88, i64 120, !88, i64 128}
!248 = !{!"_ZTSN11xalanc_1_1022XalanHashMemberPointerINS_10XalanQNameEEE"}
!249 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_10XalanQNameEEE"}
!250 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_10XalanQNameENS_11XalanVectorIPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !80, i64 0, !80, i64 8, !80, i64 16}
!251 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_10XalanQNameENS0_IPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISF_E4NodeEEENS9_ISK_EEEENS_32ConstructWithMemoryManagerTraitsISM_EEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!252 = !{!"branch_weights", i32 0, i32 0, i32 167720, i32 0}
!253 = !{!"VP", i32 0, i64 167720, i64 -5610273550909442482, i64 167720}
!254 = !{!"VP", i32 0, i64 167720, i64 8180887726348631025, i64 167720}
!255 = !{!"VP", i32 0, i64 229387, i64 -4171607645886912631, i64 229387}
!256 = !{!"branch_weights", i32 229387, i32 0}
!257 = !{!"function_entry_count", i64 433}
!258 = !{!"VP", i32 0, i64 433, i64 -3114506183459620885, i64 245, i64 6953500331370630683, i64 188}
!259 = !{!"branch_weights", i32 217, i32 216}
!260 = !{!"branch_weights", i32 1, i32 215}
!261 = !{!"branch_weights", i32 141, i32 73, i32 2}
!262 = !{!"VP", i32 0, i64 406, i64 7834606306137840250, i64 188, i64 -3643121899664081924, i64 168, i64 3242116189140126666, i64 42}
!263 = !{!"branch_weights", i32 398, i32 8}
!264 = !{!"branch_weights", i32 395, i32 0, i32 3}
!265 = !{!"branch_weights", i32 215, i32 191}
!266 = distinct !{!266, !146, !147}
!267 = !{!"VP", i32 0, i64 73, i64 807462341575192572, i64 73}
!268 = !{!"branch_weights", i32 66, i32 7}
!269 = !{!"branch_weights", i32 0, i32 7}
!270 = !{!"VP", i32 0, i64 2, i64 807462341575192572, i64 2}
!271 = !{!"branch_weights", i32 2, i32 0}
!272 = !{!"branch_weights", i32 0, i32 2}
!273 = !{!274, !80, i64 336}
!274 = !{!"_ZTSN11xalanc_1_1016ElemCallTemplateE", !84, i64 0, !80, i64 328, !80, i64 336}
!275 = !{!"branch_weights", i32 148, i32 0}
!276 = !{!"function_entry_count", i64 245}
!277 = !{!"VP", i32 0, i64 245, i64 -3454512958759836663, i64 75, i64 7610230257770558025, i64 64, i64 -4591168110239481455, i64 30}
!278 = !{!"function_entry_count", i64 165}
!279 = !{!"branch_weights", i32 165, i32 0}
!280 = !{!98, !80, i64 24}
!281 = !{!"function_entry_count", i64 351}
!282 = !{!"function_entry_count", i64 47628639}
!283 = !{!"function_entry_count", i64 23467905}
!284 = !{!"function_entry_count", i64 42470003}
!285 = !{!"branch_weights", i32 52000, i32 42418003}
!286 = !{!122, !80, i64 24}
!287 = !{!122, !80, i64 0}
!288 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!289 = !{!"function_entry_count", i64 64551586}
!290 = !{!"branch_weights", i32 64551590, i32 18}
!291 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!292 = !{!"branch_weights", i32 18, i32 0}
!293 = !{!"branch_weights", i32 4, i32 64551586}
!294 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!295 = !{!"branch_weights", i32 42418193, i32 22133393}
!296 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!297 = !{!"function_entry_count", i64 22}
!298 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!299 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!300 = !{!"function_entry_count", i64 155828046}
!301 = !{!"branch_weights", i32 0, i32 155828046}
!302 = !{!"branch_weights", i32 133170777, i32 22657269}
!303 = !{!"branch_weights", i32 20, i32 133170757}
!304 = !{!"branch_weights", i32 1, i32 19024395}
!305 = !{!101, !101, i64 0}
!306 = !{!"branch_weights", i32 19024395, i32 -26420601}
!307 = distinct !{!307, !146, !147}
!308 = !{!"branch_weights", i32 20748786, i32 1908483}
!309 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!310 = !{!"branch_weights", i32 20748786, i32 0}
!311 = !{!"branch_weights", i32 0, i32 20748786}
!312 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!313 = !{!"branch_weights", i32 0, i32 1908483}
!314 = !{!"branch_weights", i32 1, i32 1908482}
!315 = !{!"branch_weights", i32 1908482, i32 49797853}
!316 = distinct !{!316, !146, !147}
!317 = !{!"branch_weights", i32 1908482, i32 1}
!318 = distinct !{!318, !146, !147}
!319 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!320 = distinct !{!320, !146, !147}
!321 = !{!"function_entry_count", i64 124150652}
!322 = !{!"branch_weights", i32 124150652, i32 0}
!323 = !{!"ElemTemplateElement.cpp;_GLOBAL__sub_I_ElemTemplateElement.cpp"}

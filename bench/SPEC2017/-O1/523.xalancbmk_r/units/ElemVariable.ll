; ModuleID = 'ElemVariable.cpp'
source_filename = "ElemVariable.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElemVariable" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr, i8, %"class.xalanc_1_10::XObjectPtr", ptr }
%"class.xalanc_1_10::ElemTemplateElement.base" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16 }>
%"class.xalanc_1_10::PrefixResolver" = type { ptr }
%"class.xalanc_1_10::NamespacesHandler" = type { %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanMap" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringPointerHashFunction", %"struct.xalanc_1_10::pointer_equal", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.2", i64, i64 }
%"struct.xalanc_1_10::DOMStringPointerHashFunction" = type { i8 }
%"struct.xalanc_1_10::pointer_equal" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%union.anon = type { ptr }
%"class.xalanc_1_10::ElemTemplateElement::LocatorProxy" = type { %"class.xalanc_1_10::XalanLocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanLocator" = type { %"class.xercesc_2_7::Locator" }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
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
%"class.xalanc_1_10::ElemTemplateElement" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16, [6 x i8] }>
%"class.xalanc_1_10::SelectionEvent" = type { ptr, ptr, ptr, ptr, ptr, ptr, %"class.xalanc_1_10::XObjectPtr", i32, i8, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.27" = type { ptr, i64, i64, ptr }

$_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

@_ZTVN11xalanc_1_1012ElemVariableE = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1012ElemVariableE, ptr @_ZN11xalanc_1_1012ElemVariableD2Ev, ptr @_ZN11xalanc_1_1012ElemVariableD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1012ElemVariable10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1012ElemVariable14getElementNameEv, ptr @_ZNK11xalanc_1_1012ElemVariable16getNameAttributeEv, ptr @_ZN11xalanc_1_1012ElemVariable15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1012ElemVariable17setParentNodeElemEPNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1012ElemVariable8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_] }, align 8
@_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants36ELEMNAME_VARIABLE_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE = external global %"class.xalanc_1_10::XalanDOMString", align 8
@.str = private unnamed_addr constant [7 x i8] c"select\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1012ElemVariableE = dso_local constant [30 x i8] c"N11xalanc_1_1012ElemVariableE\00", align 1
@_ZTIN11xalanc_1_1019ElemTemplateElementE = external constant ptr
@_ZTIN11xalanc_1_1012ElemVariableE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1012ElemVariableE, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1012ElemVariableC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1012ElemVariableC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_1012ElemVariableC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32, i32), ptr @_ZN11xalanc_1_1012ElemVariableC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiii
@_ZN11xalanc_1_1012ElemVariableD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1012ElemVariableD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1012ElemVariableC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %4, i32 noundef %5, i32 noundef 30)
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1012ElemVariableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 4
  store ptr null, ptr %8, align 8, !tbaa !66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %7, i8 0, i64 17, i1 false)
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
          to label %9 unwind label %12, !prof !70

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1012ElemVariable4initERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %11 unwind label %14, !prof !70

11:                                               ; preds = %9
  ret void

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %20

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = load ptr, ptr %8, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %16)
          to label %20 unwind label %17

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #15
  unreachable

20:                                               ; preds = %14, %12
  %21 = phi { ptr, i32 } [ %13, %12 ], [ %15, %14 ]
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #16
  resume { ptr, i32 } %21
}

declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1012ElemVariable4initERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 align 2 !prof !92 {
  %5 = load ptr, ptr %3, align 8, !tbaa !63
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(8) %3), !prof !93
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10, !prof !94

10:                                               ; preds = %4
  %11 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE, align 8
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %11, i64 0, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %11, i64 0, i32 3
  %14 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %14, i64 0, i32 1
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %14, i64 0, i32 3
  %17 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %2, i64 0, i32 8
  %18 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 1
  br label %23

19:                                               ; preds = %104, %4
  %20 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !95
  %22 = icmp eq ptr %21, null
  br i1 %22, label %107, label %110, !prof !96

23:                                               ; preds = %10, %104
  %24 = phi i32 [ 0, %10 ], [ %105, %104 ]
  %25 = load ptr, ptr %3, align 8, !tbaa !63
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %24), !prof !97
  %29 = load i64, ptr %12, align 8, !tbaa !98
  %30 = icmp eq i64 %29, 0
  %31 = load ptr, ptr %13, align 8
  %32 = select i1 %30, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %31, !prof !100
  %33 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %32)
  %34 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %28)
  %35 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %32, i32 noundef %33, ptr noundef %28, i32 noundef %34)
  br i1 %35, label %36, label %50, !prof !101

36:                                               ; preds = %23
  %37 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %0, align 8, !tbaa !63
  %39 = getelementptr inbounds ptr, ptr %38, i64 4
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(322) %0), !prof !102
  %42 = load ptr, ptr %3, align 8, !tbaa !63
  %43 = getelementptr inbounds ptr, ptr %42, i64 5
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %24), !prof !103
  %46 = load ptr, ptr %1, align 8, !tbaa !63
  %47 = getelementptr inbounds ptr, ptr %46, i64 21
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %41, ptr noundef %45, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true, i1 noundef zeroext true), !prof !104
  store ptr %49, ptr %37, align 8, !tbaa !105
  br label %104

50:                                               ; preds = %23
  %51 = load i64, ptr %15, align 8, !tbaa !98
  %52 = icmp eq i64 %51, 0
  %53 = load ptr, ptr %16, align 8
  %54 = select i1 %52, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %53, !prof !96
  %55 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %54)
  %56 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %28)
  %57 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %54, i32 noundef %55, ptr noundef %28, i32 noundef %56)
  br i1 %57, label %58, label %85, !prof !106

58:                                               ; preds = %50
  %59 = load ptr, ptr %3, align 8, !tbaa !63
  %60 = getelementptr inbounds ptr, ptr %59, i64 5
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %24), !prof !107
  %63 = load ptr, ptr %0, align 8, !tbaa !63
  %64 = getelementptr inbounds ptr, ptr %63, i64 4
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(322) %0), !prof !108
  %67 = load ptr, ptr %1, align 8, !tbaa !63
  %68 = getelementptr inbounds ptr, ptr %67, i64 41
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %62, ptr noundef nonnull align 8 dereferenceable(80) %17, ptr noundef %66, i1 noundef zeroext false), !prof !109
  store ptr %70, ptr %18, align 8, !tbaa !95
  %71 = load ptr, ptr %70, align 8, !tbaa !63
  %72 = getelementptr inbounds ptr, ptr %71, i64 2
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef nonnull align 8 dereferenceable(36) ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %70), !prof !110
  %75 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %74)
  br i1 %75, label %104, label %76, !prof !106

76:                                               ; preds = %58
  %77 = load i64, ptr %15, align 8, !tbaa !98
  %78 = icmp eq i64 %77, 0
  %79 = load ptr, ptr %16, align 8
  %80 = select i1 %78, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %79
  %81 = load ptr, ptr %3, align 8, !tbaa !63
  %82 = getelementptr inbounds ptr, ptr %81, i64 5
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %24)
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 62, ptr noundef %80, ptr noundef %84)
  br label %104

85:                                               ; preds = %50
  %86 = load ptr, ptr %0, align 8, !tbaa !63
  %87 = getelementptr inbounds ptr, ptr %86, i64 5
  %88 = load ptr, ptr %87, align 8
  %89 = tail call noundef zeroext i1 %88(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %28, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %24, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %89, label %104, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr @_ZN11xalanc_1_109Constants36ELEMNAME_VARIABLE_WITH_PREFIX_STRINGE, align 8
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %91, i64 0, i32 1
  %93 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %91, i64 0, i32 3
  %94 = load i64, ptr %92, align 8, !tbaa !98
  %95 = icmp eq i64 %94, 0
  %96 = load ptr, ptr %93, align 8
  %97 = select i1 %95, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %96
  %98 = tail call noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %97, ptr noundef %28, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %24, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %98, label %104, label %99

99:                                               ; preds = %90
  %100 = load i64, ptr %92, align 8, !tbaa !98
  %101 = icmp eq i64 %100, 0
  %102 = load ptr, ptr %93, align 8
  %103 = select i1 %101, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %102
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 74, ptr noundef %103, ptr noundef %28)
  br label %104

104:                                              ; preds = %76, %58, %99, %90, %85, %36
  %105 = add nuw i32 %24, 1
  %106 = icmp eq i32 %105, %8
  br i1 %106, label %19, label %23, !prof !111, !llvm.loop !112

107:                                              ; preds = %19
  %108 = load ptr, ptr @_ZN11xalanc_1_109Constants36ELEMNAME_VARIABLE_WITH_PREFIX_STRINGE, align 8, !tbaa !115
  %109 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8, !tbaa !115
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 63, ptr noundef nonnull align 8 dereferenceable(36) %108, ptr noundef nonnull align 8 dereferenceable(36) %109)
  br label %110

110:                                              ; preds = %107, %19
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1012ElemVariableC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiii(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !116 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %4, i32 noundef %5, i32 noundef %6)
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1012ElemVariableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %8, i8 0, i64 17, i1 false)
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
          to label %10 unwind label %13, !prof !117

10:                                               ; preds = %7
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 5
  store ptr null, ptr %11, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1012ElemVariable4initERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %12 unwind label %15, !prof !117

12:                                               ; preds = %10
  ret void

13:                                               ; preds = %7
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %21

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = load ptr, ptr %9, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %17)
          to label %21 unwind label %18

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #15
  unreachable

21:                                               ; preds = %15, %13
  %22 = phi { ptr, i32 } [ %14, %13 ], [ %16, %15 ]
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #16
  resume { ptr, i32 } %22
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1012ElemVariableD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !92 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1012ElemVariableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %3)
          to label %7 unwind label %4, !prof !106

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #15
  unreachable

7:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1012ElemVariableD0Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #4 align 2 !prof !118 {
  tail call void @_ZN11xalanc_1_1012ElemVariableD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) #16
  tail call void @_ZdlPv(ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1012ElemVariable16getNameAttributeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(368) %0) unnamed_addr #6 align 2 !prof !92 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1012ElemVariable15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2) unnamed_addr #1 align 2 !prof !118 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !119
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 76)
  br label %19

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !63
  %11 = getelementptr inbounds ptr, ptr %10, i64 30
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(322) %0)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 77)
  br label %19

16:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store ptr %0, ptr %4, align 8, !tbaa !115
  %17 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %2, i64 0, i32 15
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  %18 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 3
  store i8 1, ptr %18, align 8, !tbaa !120
  br label %19

19:                                               ; preds = %15, %16, %8
  ret void
}

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1012ElemVariable14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !62 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants36ELEMNAME_VARIABLE_WITH_PREFIX_STRINGE, align 8, !tbaa !115
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1012ElemVariable17setParentNodeElemEPNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !92 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 8, !tbaa !120, !range !121, !noundef !122
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6, !prof !106

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %7, i32 noundef 3)
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  resume { ptr, i32 } %10

11:                                               ; preds = %2
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %1)
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %3 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %4 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %5 = alloca %"class.xalanc_1_10::SelectionEvent", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %8 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %9 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  %10 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !105
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %68, !prof !124

13:                                               ; preds = %2
  %14 = load ptr, ptr %0, align 8, !tbaa !63
  %15 = getelementptr inbounds ptr, ptr %14, i64 18
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %18 unwind label %39, !prof !125

18:                                               ; preds = %13
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %54, !prof !126

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %21 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !127
  %23 = load ptr, ptr %22, align 8, !tbaa !63
  %24 = getelementptr inbounds ptr, ptr %23, i64 13
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE)
          to label %26 unwind label %42

26:                                               ; preds = %20
  %27 = load ptr, ptr %3, align 8, !tbaa !66
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef null)
          to label %30 unwind label %44

30:                                               ; preds = %29
  %31 = load ptr, ptr %3, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %31)
          to label %32 unwind label %44

32:                                               ; preds = %26, %30
  %33 = phi ptr [ null, %26 ], [ %31, %30 ]
  %34 = load ptr, ptr %3, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %34)
          to label %38 unwind label %35

35:                                               ; preds = %32
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  call void @__clang_call_terminate(ptr %37) #15
  unreachable

38:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %202

39:                                               ; preds = %207, %233, %228, %113, %63, %59, %54, %13
  %40 = phi ptr [ %203, %233 ], [ %203, %228 ], [ %203, %207 ], [ null, %63 ], [ null, %59 ], [ null, %54 ], [ null, %13 ], [ %108, %113 ]
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %244

42:                                               ; preds = %20
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %51

44:                                               ; preds = %30, %29
  %45 = phi ptr [ %31, %30 ], [ null, %29 ]
  %46 = landingpad { ptr, i32 }
          cleanup
  %47 = load ptr, ptr %3, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %47)
          to label %51 unwind label %48

48:                                               ; preds = %44
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  call void @__clang_call_terminate(ptr %50) #15
  unreachable

51:                                               ; preds = %44, %42
  %52 = phi ptr [ null, %42 ], [ %45, %44 ]
  %53 = phi { ptr, i32 } [ %43, %42 ], [ %46, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %244

54:                                               ; preds = %18
  %55 = load ptr, ptr %1, align 8, !tbaa !63
  %56 = getelementptr inbounds ptr, ptr %55, i64 6
  %57 = load ptr, ptr %56, align 8
  %58 = invoke noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %59 unwind label %39, !prof !130

59:                                               ; preds = %54
  %60 = load ptr, ptr %1, align 8, !tbaa !63
  %61 = getelementptr inbounds ptr, ptr %60, i64 110
  %62 = load ptr, ptr %61, align 8
  invoke void %62(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %58)
          to label %63 unwind label %39, !prof !131

63:                                               ; preds = %59
  %64 = load ptr, ptr %0, align 8, !tbaa !63
  %65 = getelementptr inbounds ptr, ptr %64, i64 19
  %66 = load ptr, ptr %65, align 8
  %67 = invoke noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %237 unwind label %39, !prof !132

68:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %69 = load ptr, ptr %1, align 8, !tbaa !63, !noalias !133
  %70 = getelementptr inbounds ptr, ptr %69, i64 29
  %71 = load ptr, ptr %70, align 8, !noalias !133
  %72 = invoke noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %73 unwind label %155, !prof !136

73:                                               ; preds = %68
  %74 = load ptr, ptr %1, align 8, !tbaa !63, !noalias !133
  %75 = getelementptr inbounds ptr, ptr %74, i64 30
  %76 = load ptr, ptr %75, align 8, !noalias !133
  invoke void %76(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0)
          to label %77 unwind label %155, !prof !137

77:                                               ; preds = %73
  %78 = load ptr, ptr %1, align 8, !tbaa !63, !noalias !133
  %79 = getelementptr inbounds ptr, ptr %78, i64 6
  %80 = load ptr, ptr %79, align 8, !noalias !133
  %81 = invoke noundef ptr %80(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %82 unwind label %93, !prof !138, !noalias !133

82:                                               ; preds = %77
  %83 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %11, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !139, !noalias !133
  %85 = getelementptr inbounds i32, ptr %84, i64 2
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(129) %11, ptr noundef %81, ptr noundef nonnull %85, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %86 unwind label %93, !prof !141

86:                                               ; preds = %82
  %87 = load ptr, ptr %1, align 8, !tbaa !63, !noalias !133
  %88 = getelementptr inbounds ptr, ptr %87, i64 30
  %89 = load ptr, ptr %88, align 8
  invoke void %89(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %72)
          to label %101 unwind label %90, !prof !142

90:                                               ; preds = %86
  %91 = landingpad { ptr, i32 }
          catch ptr null
  %92 = extractvalue { ptr, i32 } %91, 0
  call void @__clang_call_terminate(ptr %92) #15
  unreachable

93:                                               ; preds = %82, %77
  %94 = landingpad { ptr, i32 }
          cleanup
  %95 = load ptr, ptr %1, align 8, !tbaa !63, !noalias !133
  %96 = getelementptr inbounds ptr, ptr %95, i64 30
  %97 = load ptr, ptr %96, align 8
  invoke void %97(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %72)
          to label %164 unwind label %98

98:                                               ; preds = %93
  %99 = landingpad { ptr, i32 }
          catch ptr null
  %100 = extractvalue { ptr, i32 } %99, 0
  call void @__clang_call_terminate(ptr %100) #15
  unreachable

101:                                              ; preds = %86
  %102 = load ptr, ptr %4, align 8, !tbaa !66
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104, !prof !143

104:                                              ; preds = %101
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef null)
          to label %105 unwind label %157, !prof !144

105:                                              ; preds = %104
  %106 = load ptr, ptr %4, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %106)
          to label %107 unwind label %157, !prof !144

107:                                              ; preds = %101, %105
  %108 = phi ptr [ null, %101 ], [ %106, %105 ]
  %109 = load ptr, ptr %4, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %109)
          to label %113 unwind label %110, !prof !144

110:                                              ; preds = %107
  %111 = landingpad { ptr, i32 }
          catch ptr null
  %112 = extractvalue { ptr, i32 } %111, 0
  call void @__clang_call_terminate(ptr %112) #15
  unreachable

113:                                              ; preds = %107
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  %114 = load ptr, ptr %1, align 8, !tbaa !63
  %115 = getelementptr inbounds ptr, ptr %114, i64 137
  %116 = load ptr, ptr %115, align 8
  %117 = invoke noundef i64 %116(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %118 unwind label %39, !prof !145

118:                                              ; preds = %113
  %119 = icmp eq i64 %117, 0
  br i1 %119, label %202, label %120, !prof !144

120:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #16
  %121 = load ptr, ptr %1, align 8, !tbaa !63
  %122 = getelementptr inbounds ptr, ptr %121, i64 6
  %123 = load ptr, ptr %122, align 8
  %124 = invoke noundef ptr %123(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %125 unwind label %167

125:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #16
  %126 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %1, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %127, i32 noundef -1)
          to label %128 unwind label %169

128:                                              ; preds = %125
  %129 = load ptr, ptr %10, align 8, !tbaa !105
  store ptr %108, ptr %7, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %108)
          to label %130 unwind label %171

130:                                              ; preds = %128
  invoke void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %124, ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(129) %129, ptr noundef nonnull %7)
          to label %131 unwind label %173

131:                                              ; preds = %130
  %132 = load ptr, ptr %1, align 8, !tbaa !63
  %133 = getelementptr inbounds ptr, ptr %132, i64 140
  %134 = load ptr, ptr %133, align 8
  invoke void %134(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %135 unwind label %175

135:                                              ; preds = %131
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %5) #16
  %136 = load ptr, ptr %7, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %136)
          to label %140 unwind label %137

137:                                              ; preds = %135
  %138 = landingpad { ptr, i32 }
          catch ptr null
  %139 = extractvalue { ptr, i32 } %138, 0
  call void @__clang_call_terminate(ptr %139) #15
  unreachable

140:                                              ; preds = %135
  %141 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 2
  %142 = load i64, ptr %141, align 8, !tbaa !147
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !148
  %147 = load ptr, ptr %6, align 8, !tbaa !149
  %148 = load ptr, ptr %147, align 8, !tbaa !63
  %149 = getelementptr inbounds ptr, ptr %148, i64 3
  %150 = load ptr, ptr %149, align 8
  invoke void %150(ptr noundef nonnull align 8 dereferenceable(8) %147, ptr noundef %146)
          to label %154 unwind label %151

151:                                              ; preds = %144
  %152 = landingpad { ptr, i32 }
          catch ptr null
  %153 = extractvalue { ptr, i32 } %152, 0
  call void @__clang_call_terminate(ptr %153) #15
  unreachable

154:                                              ; preds = %140, %144
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #16
  br label %202

155:                                              ; preds = %73, %68
  %156 = landingpad { ptr, i32 }
          cleanup
  br label %164

157:                                              ; preds = %105, %104
  %158 = phi ptr [ %106, %105 ], [ null, %104 ]
  %159 = landingpad { ptr, i32 }
          cleanup
  %160 = load ptr, ptr %4, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %160)
          to label %164 unwind label %161

161:                                              ; preds = %157
  %162 = landingpad { ptr, i32 }
          catch ptr null
  %163 = extractvalue { ptr, i32 } %162, 0
  call void @__clang_call_terminate(ptr %163) #15
  unreachable

164:                                              ; preds = %155, %93, %157
  %165 = phi ptr [ %158, %157 ], [ null, %93 ], [ null, %155 ]
  %166 = phi { ptr, i32 } [ %159, %157 ], [ %94, %93 ], [ %156, %155 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %244

167:                                              ; preds = %120
  %168 = landingpad { ptr, i32 }
          cleanup
  br label %200

169:                                              ; preds = %125
  %170 = landingpad { ptr, i32 }
          cleanup
  br label %198

171:                                              ; preds = %128
  %172 = landingpad { ptr, i32 }
          cleanup
  br label %183

173:                                              ; preds = %130
  %174 = landingpad { ptr, i32 }
          cleanup
  br label %177

175:                                              ; preds = %131
  %176 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %5) #16
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi { ptr, i32 } [ %176, %175 ], [ %174, %173 ]
  %179 = load ptr, ptr %7, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %179)
          to label %183 unwind label %180

180:                                              ; preds = %177
  %181 = landingpad { ptr, i32 }
          catch ptr null
  %182 = extractvalue { ptr, i32 } %181, 0
  call void @__clang_call_terminate(ptr %182) #15
  unreachable

183:                                              ; preds = %177, %171
  %184 = phi { ptr, i32 } [ %172, %171 ], [ %178, %177 ]
  %185 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 2
  %186 = load i64, ptr %185, align 8, !tbaa !147
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %198, label %188

188:                                              ; preds = %183
  %189 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 3
  %190 = load ptr, ptr %189, align 8, !tbaa !148
  %191 = load ptr, ptr %6, align 8, !tbaa !149
  %192 = load ptr, ptr %191, align 8, !tbaa !63
  %193 = getelementptr inbounds ptr, ptr %192, i64 3
  %194 = load ptr, ptr %193, align 8
  invoke void %194(ptr noundef nonnull align 8 dereferenceable(8) %191, ptr noundef %190)
          to label %198 unwind label %195

195:                                              ; preds = %188
  %196 = landingpad { ptr, i32 }
          catch ptr null
  %197 = extractvalue { ptr, i32 } %196, 0
  call void @__clang_call_terminate(ptr %197) #15
  unreachable

198:                                              ; preds = %188, %183, %169
  %199 = phi { ptr, i32 } [ %170, %169 ], [ %184, %183 ], [ %184, %188 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #16
  br label %200

200:                                              ; preds = %198, %167
  %201 = phi { ptr, i32 } [ %199, %198 ], [ %168, %167 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #16
  br label %244

202:                                              ; preds = %118, %154, %38
  %203 = phi ptr [ %33, %38 ], [ %108, %118 ], [ %108, %154 ]
  %204 = icmp eq ptr %203, null
  %205 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !95
  br i1 %204, label %228, label %207, !prof !143

207:                                              ; preds = %202
  store ptr %203, ptr %8, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef nonnull %203)
          to label %208 unwind label %39, !prof !144

208:                                              ; preds = %207
  %209 = load ptr, ptr %0, align 8, !tbaa !63
  %210 = getelementptr inbounds ptr, ptr %209, i64 30
  %211 = load ptr, ptr %210, align 8
  %212 = invoke noundef ptr %211(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %213 unwind label %222, !prof !150

213:                                              ; preds = %208
  %214 = load ptr, ptr %1, align 8, !tbaa !63
  %215 = getelementptr inbounds ptr, ptr %214, i64 83
  %216 = load ptr, ptr %215, align 8
  invoke void %216(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %206, ptr noundef nonnull %8, ptr noundef %212)
          to label %217 unwind label %222, !prof !151

217:                                              ; preds = %213
  %218 = load ptr, ptr %8, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %218)
          to label %237 unwind label %219, !prof !144

219:                                              ; preds = %217
  %220 = landingpad { ptr, i32 }
          catch ptr null
  %221 = extractvalue { ptr, i32 } %220, 0
  call void @__clang_call_terminate(ptr %221) #15
  unreachable

222:                                              ; preds = %213, %208
  %223 = landingpad { ptr, i32 }
          cleanup
  %224 = load ptr, ptr %8, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %224)
          to label %244 unwind label %225

225:                                              ; preds = %222
  %226 = landingpad { ptr, i32 }
          catch ptr null
  %227 = extractvalue { ptr, i32 } %226, 0
  call void @__clang_call_terminate(ptr %227) #15
  unreachable

228:                                              ; preds = %202
  %229 = load ptr, ptr %0, align 8, !tbaa !63
  %230 = getelementptr inbounds ptr, ptr %229, i64 30
  %231 = load ptr, ptr %230, align 8
  %232 = invoke noundef ptr %231(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %233 unwind label %39

233:                                              ; preds = %228
  %234 = load ptr, ptr %1, align 8, !tbaa !63
  %235 = getelementptr inbounds ptr, ptr %234, i64 84
  %236 = load ptr, ptr %235, align 8
  invoke void %236(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %206, ptr noundef nonnull %0, ptr noundef %232)
          to label %237 unwind label %39

237:                                              ; preds = %63, %217, %233
  %238 = phi ptr [ %203, %233 ], [ %203, %217 ], [ null, %63 ]
  %239 = phi ptr [ null, %233 ], [ null, %217 ], [ %67, %63 ]
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %238)
          to label %243 unwind label %240, !prof !152

240:                                              ; preds = %237
  %241 = landingpad { ptr, i32 }
          catch ptr null
  %242 = extractvalue { ptr, i32 } %241, 0
  call void @__clang_call_terminate(ptr %242) #15
  unreachable

243:                                              ; preds = %237
  ret ptr %239

244:                                              ; preds = %222, %200, %164, %51, %39
  %245 = phi ptr [ %40, %39 ], [ %52, %51 ], [ %108, %200 ], [ %165, %164 ], [ %203, %222 ]
  %246 = phi { ptr, i32 } [ %41, %39 ], [ %53, %51 ], [ %201, %200 ], [ %166, %164 ], [ %223, %222 ]
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %245)
          to label %250 unwind label %247

247:                                              ; preds = %244
  %248 = landingpad { ptr, i32 }
          catch ptr null
  %249 = extractvalue { ptr, i32 } %248, 0
  call void @__clang_call_terminate(ptr %249) #15
  unreachable

250:                                              ; preds = %244
  resume { ptr, i32 } %246
}

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !153 {
  %5 = load ptr, ptr %3, align 8, !tbaa !63
  %6 = getelementptr inbounds ptr, ptr %5, i64 29
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %3), !prof !154
  %9 = load ptr, ptr %3, align 8, !tbaa !63
  %10 = getelementptr inbounds ptr, ptr %9, i64 30
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %2), !prof !155
  %12 = load ptr, ptr %3, align 8, !tbaa !63
  %13 = getelementptr inbounds ptr, ptr %12, i64 6
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %16 unwind label %28, !prof !138

16:                                               ; preds = %4
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !139
  %19 = getelementptr inbounds i32, ptr %18, i64 2
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %15, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %20 unwind label %28, !prof !141

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 8, !tbaa !63
  %22 = getelementptr inbounds ptr, ptr %21, i64 30
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %8)
          to label %27 unwind label %24, !prof !142

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #15
  unreachable

27:                                               ; preds = %20
  ret void

28:                                               ; preds = %16, %4
  %29 = landingpad { ptr, i32 }
          cleanup
  %30 = load ptr, ptr %3, align 8, !tbaa !63
  %31 = getelementptr inbounds ptr, ptr %30, i64 30
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %8)
          to label %36 unwind label %33

33:                                               ; preds = %28
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  tail call void @__clang_call_terminate(ptr %35) #15
  unreachable

36:                                               ; preds = %28
  resume { ptr, i32 } %29
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(129), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1012ElemVariable10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %3 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %42, !prof !157

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !63
  %9 = getelementptr inbounds ptr, ptr %8, i64 18
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(322) %0), !prof !125
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13, !prof !126

13:                                               ; preds = %7
  %14 = load ptr, ptr %0, align 8, !tbaa !63
  %15 = getelementptr inbounds ptr, ptr %14, i64 20
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !158
  %17 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  %19 = load ptr, ptr %1, align 8, !tbaa !63
  %20 = getelementptr inbounds ptr, ptr %19, i64 111
  %21 = load ptr, ptr %20, align 8
  call void %21(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !159
  %22 = load ptr, ptr %0, align 8, !tbaa !63
  %23 = getelementptr inbounds ptr, ptr %22, i64 30
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %26 unwind label %35, !prof !160

26:                                               ; preds = %13
  %27 = load ptr, ptr %1, align 8, !tbaa !63
  %28 = getelementptr inbounds ptr, ptr %27, i64 83
  %29 = load ptr, ptr %28, align 8
  invoke void %29(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %3, ptr noundef %25)
          to label %30 unwind label %35, !prof !161

30:                                               ; preds = %26
  %31 = load ptr, ptr %3, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %31)
          to label %42 unwind label %32, !prof !157

32:                                               ; preds = %30
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  call void @__clang_call_terminate(ptr %34) #15
  unreachable

35:                                               ; preds = %26, %13
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = load ptr, ptr %3, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %37)
          to label %41 unwind label %38

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  call void @__clang_call_terminate(ptr %40) #15
  unreachable

41:                                               ; preds = %35
  resume { ptr, i32 } %36

42:                                               ; preds = %30, %7, %2
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1012ElemVariable8getXPathEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(368) %0, i32 noundef %1) unnamed_addr #6 align 2 !prof !118 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = select i1 %3, ptr %5, ptr null
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1012ElemVariable8getValueERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = alloca %"class.xalanc_1_10::SelectionEvent", align 8
  %8 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %9 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %10 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !105
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %4
  %14 = load ptr, ptr %1, align 8, !tbaa !63
  %15 = getelementptr inbounds ptr, ptr %14, i64 18
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(322) %1)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !127
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = getelementptr inbounds ptr, ptr %22, i64 13
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE)
  br label %188

25:                                               ; preds = %13
  %26 = load ptr, ptr %2, align 8, !tbaa !63
  %27 = getelementptr inbounds ptr, ptr %26, i64 110
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3)
  %29 = load ptr, ptr %1, align 8, !tbaa !63
  %30 = getelementptr inbounds ptr, ptr %29, i64 9
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(322) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %32 = load ptr, ptr %2, align 8, !tbaa !63
  %33 = getelementptr inbounds ptr, ptr %32, i64 111
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %188

35:                                               ; preds = %4
  store ptr null, ptr %0, align 8, !tbaa !66
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  %36 = load ptr, ptr %2, align 8, !tbaa !63
  %37 = getelementptr inbounds ptr, ptr %36, i64 6
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %40 unwind label %57

40:                                               ; preds = %35
  %41 = icmp eq ptr %39, %3
  br i1 %41, label %42, label %69

42:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %43 = load ptr, ptr %10, align 8, !tbaa !105
  invoke void @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %43, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %44 unwind label %59

44:                                               ; preds = %42
  %45 = load ptr, ptr %0, align 8, !tbaa !66
  %46 = load ptr, ptr %5, align 8, !tbaa !66
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %45)
          to label %49 unwind label %61

49:                                               ; preds = %48
  %50 = load ptr, ptr %5, align 8, !tbaa !66
  store ptr %50, ptr %0, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %50)
          to label %51 unwind label %61

51:                                               ; preds = %44, %49
  %52 = load ptr, ptr %5, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %52)
          to label %56 unwind label %53

53:                                               ; preds = %51
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  call void @__clang_call_terminate(ptr %55) #15
  unreachable

56:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %112

57:                                               ; preds = %112, %35
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %181

59:                                               ; preds = %42
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %67

61:                                               ; preds = %49, %48
  %62 = landingpad { ptr, i32 }
          cleanup
  %63 = load ptr, ptr %5, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %63)
          to label %67 unwind label %64

64:                                               ; preds = %61
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #15
  unreachable

67:                                               ; preds = %61, %59
  %68 = phi { ptr, i32 } [ %60, %59 ], [ %62, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %181

69:                                               ; preds = %40
  %70 = load ptr, ptr %2, align 8, !tbaa !63
  %71 = getelementptr inbounds ptr, ptr %70, i64 7
  %72 = load ptr, ptr %71, align 8
  invoke void %72(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3)
          to label %73 unwind label %94

73:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %74 = load ptr, ptr %10, align 8, !tbaa !105
  invoke void @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %74, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %75 unwind label %96

75:                                               ; preds = %73
  %76 = load ptr, ptr %0, align 8, !tbaa !66
  %77 = load ptr, ptr %6, align 8, !tbaa !66
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %76)
          to label %80 unwind label %98

80:                                               ; preds = %79
  %81 = load ptr, ptr %6, align 8, !tbaa !66
  store ptr %81, ptr %0, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %81)
          to label %82 unwind label %98

82:                                               ; preds = %75, %80
  %83 = load ptr, ptr %6, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %83)
          to label %87 unwind label %84

84:                                               ; preds = %82
  %85 = landingpad { ptr, i32 }
          catch ptr null
  %86 = extractvalue { ptr, i32 } %85, 0
  call void @__clang_call_terminate(ptr %86) #15
  unreachable

87:                                               ; preds = %82
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %88 = load ptr, ptr %2, align 8, !tbaa !63
  %89 = getelementptr inbounds ptr, ptr %88, i64 8
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %112 unwind label %91

91:                                               ; preds = %87
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  call void @__clang_call_terminate(ptr %93) #15
  unreachable

94:                                               ; preds = %69
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %181

96:                                               ; preds = %73
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %104

98:                                               ; preds = %80, %79
  %99 = landingpad { ptr, i32 }
          cleanup
  %100 = load ptr, ptr %6, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %100)
          to label %104 unwind label %101

101:                                              ; preds = %98
  %102 = landingpad { ptr, i32 }
          catch ptr null
  %103 = extractvalue { ptr, i32 } %102, 0
  call void @__clang_call_terminate(ptr %103) #15
  unreachable

104:                                              ; preds = %98, %96
  %105 = phi { ptr, i32 } [ %97, %96 ], [ %99, %98 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %106 = load ptr, ptr %2, align 8, !tbaa !63
  %107 = getelementptr inbounds ptr, ptr %106, i64 8
  %108 = load ptr, ptr %107, align 8
  invoke void %108(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %181 unwind label %109

109:                                              ; preds = %104
  %110 = landingpad { ptr, i32 }
          catch ptr null
  %111 = extractvalue { ptr, i32 } %110, 0
  call void @__clang_call_terminate(ptr %111) #15
  unreachable

112:                                              ; preds = %87, %56
  %113 = load ptr, ptr %2, align 8, !tbaa !63
  %114 = getelementptr inbounds ptr, ptr %113, i64 137
  %115 = load ptr, ptr %114, align 8
  %116 = invoke noundef i64 %115(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %117 unwind label %57

117:                                              ; preds = %112
  %118 = icmp eq i64 %116, 0
  br i1 %118, label %188, label %119

119:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #16
  %120 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %121, i32 noundef -1)
          to label %122 unwind label %150

122:                                              ; preds = %119
  %123 = load ptr, ptr %10, align 8, !tbaa !105
  %124 = load ptr, ptr %0, align 8, !tbaa !66
  store ptr %124, ptr %9, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %124)
          to label %125 unwind label %152

125:                                              ; preds = %122
  invoke void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(322) %1, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(129) %123, ptr noundef nonnull %9)
          to label %126 unwind label %154

126:                                              ; preds = %125
  %127 = load ptr, ptr %2, align 8, !tbaa !63
  %128 = getelementptr inbounds ptr, ptr %127, i64 140
  %129 = load ptr, ptr %128, align 8
  invoke void %129(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(72) %7)
          to label %130 unwind label %156

130:                                              ; preds = %126
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %7) #16
  %131 = load ptr, ptr %9, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %131)
          to label %135 unwind label %132

132:                                              ; preds = %130
  %133 = landingpad { ptr, i32 }
          catch ptr null
  %134 = extractvalue { ptr, i32 } %133, 0
  call void @__clang_call_terminate(ptr %134) #15
  unreachable

135:                                              ; preds = %130
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %8, i64 0, i32 2
  %137 = load i64, ptr %136, align 8, !tbaa !147
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %149, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %8, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !148
  %142 = load ptr, ptr %8, align 8, !tbaa !149
  %143 = load ptr, ptr %142, align 8, !tbaa !63
  %144 = getelementptr inbounds ptr, ptr %143, i64 3
  %145 = load ptr, ptr %144, align 8
  invoke void %145(ptr noundef nonnull align 8 dereferenceable(8) %142, ptr noundef %141)
          to label %149 unwind label %146

146:                                              ; preds = %139
  %147 = landingpad { ptr, i32 }
          catch ptr null
  %148 = extractvalue { ptr, i32 } %147, 0
  call void @__clang_call_terminate(ptr %148) #15
  unreachable

149:                                              ; preds = %135, %139
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #16
  br label %188

150:                                              ; preds = %119
  %151 = landingpad { ptr, i32 }
          cleanup
  br label %179

152:                                              ; preds = %122
  %153 = landingpad { ptr, i32 }
          cleanup
  br label %164

154:                                              ; preds = %125
  %155 = landingpad { ptr, i32 }
          cleanup
  br label %158

156:                                              ; preds = %126
  %157 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %7) #16
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi { ptr, i32 } [ %157, %156 ], [ %155, %154 ]
  %160 = load ptr, ptr %9, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %160)
          to label %164 unwind label %161

161:                                              ; preds = %158
  %162 = landingpad { ptr, i32 }
          catch ptr null
  %163 = extractvalue { ptr, i32 } %162, 0
  call void @__clang_call_terminate(ptr %163) #15
  unreachable

164:                                              ; preds = %158, %152
  %165 = phi { ptr, i32 } [ %153, %152 ], [ %159, %158 ]
  %166 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %8, i64 0, i32 2
  %167 = load i64, ptr %166, align 8, !tbaa !147
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %179, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %8, i64 0, i32 3
  %171 = load ptr, ptr %170, align 8, !tbaa !148
  %172 = load ptr, ptr %8, align 8, !tbaa !149
  %173 = load ptr, ptr %172, align 8, !tbaa !63
  %174 = getelementptr inbounds ptr, ptr %173, i64 3
  %175 = load ptr, ptr %174, align 8
  invoke void %175(ptr noundef nonnull align 8 dereferenceable(8) %172, ptr noundef %171)
          to label %179 unwind label %176

176:                                              ; preds = %169
  %177 = landingpad { ptr, i32 }
          catch ptr null
  %178 = extractvalue { ptr, i32 } %177, 0
  call void @__clang_call_terminate(ptr %178) #15
  unreachable

179:                                              ; preds = %169, %164, %150
  %180 = phi { ptr, i32 } [ %151, %150 ], [ %165, %164 ], [ %165, %169 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #16
  br label %181

181:                                              ; preds = %94, %104, %179, %67, %57
  %182 = phi { ptr, i32 } [ %180, %179 ], [ %58, %57 ], [ %68, %67 ], [ %95, %94 ], [ %105, %104 ]
  %183 = load ptr, ptr %0, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %183)
          to label %187 unwind label %184

184:                                              ; preds = %181
  %185 = landingpad { ptr, i32 }
          catch ptr null
  %186 = extractvalue { ptr, i32 } %185, 0
  call void @__clang_call_terminate(ptr %186) #15
  unreachable

187:                                              ; preds = %181
  resume { ptr, i32 } %182

188:                                              ; preds = %117, %149, %25, %19
  ret void
}

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb(ptr noundef nonnull align 8 dereferenceable(322), i1 noundef zeroext) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat !prof !118 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.21", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !162
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !164
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !165
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !115
  store ptr %13, ptr %12, align 8, !tbaa !115
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !162
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !166
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !166
  %24 = load i64, ptr %4, align 8, !tbaa !162
  %25 = load i64, ptr %6, align 8, !tbaa !164
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !165
  %28 = load ptr, ptr %3, align 8, !tbaa !166
  store ptr %28, ptr %0, align 8, !tbaa !166
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !162
  store i64 %30, ptr %4, align 8, !tbaa !162
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !164
  store i64 %32, ptr %6, align 8, !tbaa !164
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !165
  store ptr %34, ptr %26, align 8, !tbaa !165
  store ptr %23, ptr %3, align 8, !tbaa !166
  store i64 %24, ptr %29, align 8, !tbaa !162
  store i64 %25, ptr %31, align 8, !tbaa !164
  store ptr %27, ptr %33, align 8, !tbaa !165
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !63
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #15
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !164
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !165
  %52 = load ptr, ptr %3, align 8, !tbaa !166
  %53 = load ptr, ptr %52, align 8, !tbaa !63
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #15
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.21", align 8
  store ptr %2, ptr %0, align 8, !tbaa !166
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !162
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !166
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !162
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !164
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !63
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !165
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !165
  %24 = load i64, ptr %9, align 8, !tbaa !162
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !166
  %28 = load i64, ptr %6, align 8, !tbaa !162
  %29 = load i64, ptr %7, align 8, !tbaa !164
  %30 = load ptr, ptr %8, align 8, !tbaa !165
  %31 = load ptr, ptr %5, align 8, !tbaa !166
  store ptr %31, ptr %0, align 8, !tbaa !166
  %32 = load i64, ptr %14, align 8, !tbaa !162
  store i64 %32, ptr %6, align 8, !tbaa !162
  %33 = load i64, ptr %15, align 8, !tbaa !164
  store i64 %33, ptr %7, align 8, !tbaa !164
  %34 = load ptr, ptr %21, align 8, !tbaa !165
  store ptr %34, ptr %8, align 8, !tbaa !165
  store ptr %27, ptr %5, align 8, !tbaa !166
  store i64 %28, ptr %14, align 8, !tbaa !162
  store i64 %29, ptr %15, align 8, !tbaa !164
  store ptr %30, ptr %21, align 8, !tbaa !165
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !63
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #15
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !164
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !165
  %50 = load ptr, ptr %5, align 8, !tbaa !166
  %51 = load ptr, ptr %50, align 8, !tbaa !63
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #15
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !63
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !165
  store i64 %3, ptr %7, align 8, !tbaa !164
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.21", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !162
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !165
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !164
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !165
  %28 = load i64, ptr %12, align 8, !tbaa !162
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !115
  store ptr %34, ptr %32, align 8, !tbaa !115
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !llvm.loop !167

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !166
  store ptr %42, ptr %5, align 8, !tbaa !166
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !162
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !164
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !63
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !165
  %51 = load i64, ptr %43, align 8, !tbaa !162
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !165
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !165
  %56 = load i64, ptr %43, align 8, !tbaa !162
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !165
  %60 = load i64, ptr %43, align 8, !tbaa !162
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !165
  %63 = load i64, ptr %12, align 8, !tbaa !162
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !166
  %67 = load i64, ptr %12, align 8, !tbaa !162
  %68 = load i64, ptr %19, align 8, !tbaa !164
  %69 = load ptr, ptr %15, align 8, !tbaa !165
  %70 = load ptr, ptr %5, align 8, !tbaa !166
  store ptr %70, ptr %0, align 8, !tbaa !166
  %71 = load i64, ptr %43, align 8, !tbaa !162
  store i64 %71, ptr %12, align 8, !tbaa !162
  %72 = load i64, ptr %44, align 8, !tbaa !164
  store i64 %72, ptr %19, align 8, !tbaa !164
  %73 = load ptr, ptr %50, align 8, !tbaa !165
  store ptr %73, ptr %15, align 8, !tbaa !165
  store ptr %66, ptr %5, align 8, !tbaa !166
  store i64 %67, ptr %43, align 8, !tbaa !162
  store i64 %68, ptr %44, align 8, !tbaa !164
  store ptr %69, ptr %50, align 8, !tbaa !165
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !63
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #15
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !164
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !165
  %89 = load ptr, ptr %5, align 8, !tbaa !166
  %90 = load ptr, ptr %89, align 8, !tbaa !63
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #15
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !168

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !169

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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !170

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
  store i64 %36, ptr %12, align 8, !tbaa !162
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.21", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !166
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !166
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !162
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !164
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !165
  %12 = load ptr, ptr %3, align 8, !tbaa !166
  store ptr %12, ptr %0, align 8, !tbaa !166
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !162
  store i64 %14, ptr %6, align 8, !tbaa !162
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !164
  store i64 %16, ptr %8, align 8, !tbaa !164
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !165
  store ptr %18, ptr %10, align 8, !tbaa !165
  store ptr %5, ptr %3, align 8, !tbaa !166
  store i64 %7, ptr %13, align 8, !tbaa !162
  store i64 %9, ptr %15, align 8, !tbaa !164
  store ptr %11, ptr %17, align 8, !tbaa !165
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !63
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #15
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

declare void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!61}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!35 = !{ptr @_ZN11xalanc_1_1012ElemVariableC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1012ElemVariableC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1012ElemVariableC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1012ElemVariable4initERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListE, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1012ElemVariable4initERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 28}
!39 = !{ptr @_ZN11xalanc_1_1012ElemVariable4initERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 14}
!40 = !{ptr @_ZN11xalanc_1_1012ElemVariable4initERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, i64 8}
!41 = !{ptr @_ZN11xalanc_1_1012ElemVariable4initERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE, i64 6}
!42 = !{ptr @_ZN11xalanc_1_1012ElemVariableC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiii, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 5}
!43 = !{ptr @_ZN11xalanc_1_1012ElemVariableC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiii, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 5}
!44 = !{ptr @_ZN11xalanc_1_1012ElemVariableC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiii, ptr @_ZN11xalanc_1_1012ElemVariable4initERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListE, i64 5}
!45 = !{ptr @_ZN11xalanc_1_1012ElemVariableD2Ev, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 6}
!46 = !{ptr @_ZN11xalanc_1_1012ElemVariableD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, i64 6}
!47 = !{ptr @_ZN11xalanc_1_1012ElemVariable17setParentNodeElemEPNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, i64 6}
!48 = !{ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, i64 95460}
!49 = !{ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 211830}
!50 = !{ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, i64 37275}
!51 = !{ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, i64 37275}
!52 = !{ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 58185}
!53 = !{ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 270014}
!54 = !{ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, i64 58185}
!55 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 44742699}
!56 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @__clang_call_terminate, i64 43}
!57 = !{ptr @_ZNK11xalanc_1_1012ElemVariable10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, i64 37275}
!58 = !{ptr @_ZNK11xalanc_1_1012ElemVariable10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, i64 37275}
!59 = !{ptr @_ZNK11xalanc_1_1012ElemVariable10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, i64 37275}
!60 = !{ptr @_ZNK11xalanc_1_1012ElemVariable10endElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 37275}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = !{!"function_entry_count", i64 1}
!63 = !{!64, !64, i64 0}
!64 = !{!"vtable pointer", !65, i64 0}
!65 = !{!"Simple C++ TBAA"}
!66 = !{!67, !68, i64 0}
!67 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !68, i64 0}
!68 = !{!"any pointer", !69, i64 0}
!69 = !{!"omnipotent char", !65, i64 0}
!70 = !{!"branch_weights", i32 1, i32 0}
!71 = !{!72, !68, i64 360}
!72 = !{!"_ZTSN11xalanc_1_1012ElemVariableE", !73, i64 0, !68, i64 328, !68, i64 336, !91, i64 344, !67, i64 352, !68, i64 360}
!73 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !74, i64 0, !68, i64 8, !75, i64 16, !86, i64 248, !68, i64 256, !68, i64 264, !68, i64 272, !69, i64 280, !87, i64 288, !90, i64 320}
!74 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!75 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !76, i64 0, !78, i64 32, !79, i64 64, !80, i64 96}
!76 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !68, i64 0, !77, i64 8, !77, i64 16, !68, i64 24}
!77 = !{!"long", !69, i64 0}
!78 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !68, i64 0, !77, i64 8, !77, i64 16, !68, i64 24}
!79 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !68, i64 0, !77, i64 8, !77, i64 16, !68, i64 24}
!80 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !81, i64 0, !82, i64 1, !68, i64 8, !83, i64 16, !77, i64 24, !77, i64 32, !84, i64 40, !84, i64 64, !85, i64 88, !77, i64 120, !77, i64 128}
!81 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!82 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!83 = !{!"float", !69, i64 0}
!84 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !68, i64 0, !68, i64 8, !68, i64 16}
!85 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !68, i64 0, !77, i64 8, !77, i64 16, !68, i64 24}
!86 = !{!"int", !69, i64 0}
!87 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !88, i64 0, !77, i64 8, !77, i64 16, !68, i64 24}
!88 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !89, i64 0}
!89 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!90 = !{!"short", !69, i64 0}
!91 = !{!"bool", !69, i64 0}
!92 = !{!"function_entry_count", i64 6}
!93 = !{!"VP", i32 0, i64 6, i64 8253907953441087172, i64 6}
!94 = !{!"branch_weights", i32 1, i32 191}
!95 = !{!72, !68, i64 328}
!96 = !{!"branch_weights", i32 0, i32 6}
!97 = !{!"VP", i32 0, i64 8, i64 5829949526982853143, i64 8}
!98 = !{!99, !77, i64 8}
!99 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !68, i64 0, !77, i64 8, !77, i64 16, !68, i64 24}
!100 = !{!"branch_weights", i32 0, i32 8}
!101 = !{!"branch_weights", i32 2, i32 6}
!102 = !{!"VP", i32 0, i64 2, i64 -5610273550909442482, i64 2}
!103 = !{!"VP", i32 0, i64 2, i64 -7250213707570638104, i64 2}
!104 = !{!"VP", i32 0, i64 2, i64 5056957690790192712, i64 2}
!105 = !{!72, !68, i64 336}
!106 = !{!"branch_weights", i32 6, i32 0}
!107 = !{!"VP", i32 0, i64 6, i64 -7250213707570638104, i64 6}
!108 = !{!"VP", i32 0, i64 6, i64 -5610273550909442482, i64 6}
!109 = !{!"VP", i32 0, i64 6, i64 7468382999542374119, i64 6}
!110 = !{!"VP", i32 0, i64 6, i64 1429807492782621726, i64 6}
!111 = !{!"branch_weights", i32 191, i32 65}
!112 = distinct !{!112, !113, !114}
!113 = !{!"llvm.loop.mustprogress"}
!114 = !{!"llvm.loop.unroll.disable"}
!115 = !{!68, !68, i64 0}
!116 = !{!"function_entry_count", i64 5}
!117 = !{!"branch_weights", i32 5, i32 0}
!118 = !{!"function_entry_count", i64 0}
!119 = !{!73, !68, i64 8}
!120 = !{!72, !91, i64 344}
!121 = !{i8 0, i8 2}
!122 = !{}
!123 = !{!"function_entry_count", i64 95460}
!124 = !{!"branch_weights", i32 37275, i32 58185}
!125 = !{!"VP", i32 0, i64 37275, i64 4167659195022591920, i64 37275}
!126 = !{!"branch_weights", i32 0, i32 37275}
!127 = !{!128, !68, i64 16}
!128 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !129, i64 0, !68, i64 16}
!129 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !68, i64 8}
!130 = !{!"VP", i32 0, i64 37275, i64 -7584622325260852241, i64 37275}
!131 = !{!"VP", i32 0, i64 37275, i64 -3897908599205900493, i64 37275}
!132 = !{!"VP", i32 0, i64 37275, i64 7918534656437768524, i64 37275}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE: argument 0"}
!135 = distinct !{!135, !"_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE"}
!136 = !{!"VP", i32 0, i64 58185, i64 -6410307884929493294, i64 58185}
!137 = !{!"VP", i32 0, i64 58185, i64 8453500335362080052, i64 58185}
!138 = !{!"VP", i32 0, i64 44800927, i64 -7584622325260852241, i64 44800927}
!139 = !{!140, !68, i64 24}
!140 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !68, i64 0, !77, i64 8, !77, i64 16, !68, i64 24}
!141 = !{!"branch_weights", i32 44800927, i32 0}
!142 = !{!"VP", i32 0, i64 44800927, i64 8453500335362080052, i64 44800927}
!143 = !{!"branch_weights", i32 0, i32 58185}
!144 = !{!"branch_weights", i32 58185, i32 0}
!145 = !{!"VP", i32 0, i64 58185, i64 -4171607645886912631, i64 58185}
!146 = !{!129, !68, i64 8}
!147 = !{!99, !77, i64 16}
!148 = !{!99, !68, i64 24}
!149 = !{!99, !68, i64 0}
!150 = !{!"VP", i32 0, i64 58185, i64 3848243577505407877, i64 58185}
!151 = !{!"VP", i32 0, i64 58185, i64 5369189565814797997, i64 58185}
!152 = !{!"branch_weights", i32 95460, i32 0}
!153 = !{!"function_entry_count", i64 44742742}
!154 = !{!"VP", i32 0, i64 44742742, i64 -6410307884929493294, i64 44742742}
!155 = !{!"VP", i32 0, i64 44742742, i64 8453500335362080052, i64 44742742}
!156 = !{!"function_entry_count", i64 37275}
!157 = !{!"branch_weights", i32 37275, i32 0}
!158 = !{!"VP", i32 0, i64 37275, i64 -2787738682491994990, i64 37275}
!159 = !{!"VP", i32 0, i64 37275, i64 936410254212034973, i64 37275}
!160 = !{!"VP", i32 0, i64 37275, i64 3848243577505407877, i64 37275}
!161 = !{!"VP", i32 0, i64 37275, i64 5369189565814797997, i64 37275}
!162 = !{!163, !77, i64 8}
!163 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEE", !68, i64 0, !77, i64 8, !77, i64 16, !68, i64 24}
!164 = !{!163, !77, i64 16}
!165 = !{!163, !68, i64 24}
!166 = !{!163, !68, i64 0}
!167 = distinct !{!167, !113, !114}
!168 = distinct !{!168, !113, !114}
!169 = distinct !{!169, !113, !114}
!170 = distinct !{!170, !113, !114}

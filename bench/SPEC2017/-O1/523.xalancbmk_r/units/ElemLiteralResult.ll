; ModuleID = 'ElemLiteralResult.cpp'
source_filename = "ElemLiteralResult.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElemLiteralResult" = type <{ %"class.xalanc_1_10::ElemUse", ptr, ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::ElemUse" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, i64 }
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
%"class.xalanc_1_10::ElemTemplateElement" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16, [6 x i8] }>
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
%"class.xalanc_1_10::AVTPrefixChecker" = type <{ %"class.xalanc_1_10::NamespacesHandler::PrefixChecker", ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::NamespacesHandler::PrefixChecker" = type { ptr }
%"class.xalanc_1_10::AVT" = type { ptr, ptr, i64, ptr, i32, ptr }

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1016AVTPrefixCheckerD0Ev = comdat any

$_ZNK11xalanc_1_1016AVTPrefixChecker8isActiveERKNS_14XalanDOMStringE = comdat any

$_ZTVN11xalanc_1_1016AVTPrefixCheckerE = comdat any

$_ZTSN11xalanc_1_1016AVTPrefixCheckerE = comdat any

$_ZTIN11xalanc_1_1016AVTPrefixCheckerE = comdat any

@_ZTVN11xalanc_1_1017ElemLiteralResultE = dso_local unnamed_addr constant { [41 x ptr] } { [41 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017ElemLiteralResultE, ptr @_ZN11xalanc_1_1017ElemLiteralResultD2Ev, ptr @_ZN11xalanc_1_1017ElemLiteralResultD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1017ElemLiteralResult8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1017ElemLiteralResult12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1017ElemLiteralResult10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1017ElemLiteralResult14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1017ElemLiteralResult16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_107ElemUse25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_107ElemUse26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1017ElemLiteralResult26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_, ptr @_ZNK11xalanc_1_1017ElemLiteralResult12evaluateAVTsERNS_26StylesheetExecutionContextE] }, align 8
@_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants16ATTRNAME_VERSIONE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE = external global %"class.xalanc_1_10::XalanDOMString", align 8
@_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1017ElemLiteralResultE = dso_local constant [35 x i8] c"N11xalanc_1_1017ElemLiteralResultE\00", align 1
@_ZTIN11xalanc_1_107ElemUseE = external constant ptr
@_ZTIN11xalanc_1_1017ElemLiteralResultE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017ElemLiteralResultE, ptr @_ZTIN11xalanc_1_107ElemUseE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZTVN11xalanc_1_1016AVTPrefixCheckerE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1016AVTPrefixCheckerE, ptr @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerD2Ev, ptr @_ZN11xalanc_1_1016AVTPrefixCheckerD0Ev, ptr @_ZNK11xalanc_1_1016AVTPrefixChecker8isActiveERKNS_14XalanDOMStringE] }, comdat, align 8
@_ZTSN11xalanc_1_1016AVTPrefixCheckerE = linkonce_odr dso_local constant [34 x i8] c"N11xalanc_1_1016AVTPrefixCheckerE\00", comdat, align 1
@_ZTIN11xalanc_1_1017NamespacesHandler13PrefixCheckerE = external constant ptr
@_ZTIN11xalanc_1_1016AVTPrefixCheckerE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1016AVTPrefixCheckerE, ptr @_ZTIN11xalanc_1_1017NamespacesHandler13PrefixCheckerE }, comdat, align 8

@_ZN11xalanc_1_1017ElemLiteralResultC1ERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1017ElemLiteralResultC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_1017ElemLiteralResultC1ERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEiii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i32, i32, i32), ptr @_ZN11xalanc_1_1017ElemLiteralResultC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEiii
@_ZN11xalanc_1_1017ElemLiteralResultD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017ElemLiteralResultD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017ElemLiteralResultC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  tail call void @_ZN11xalanc_1_107ElemUseC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %5, i32 noundef %6, i32 noundef 35)
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTVN11xalanc_1_1017ElemLiteralResultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %8 = load ptr, ptr %1, align 8, !tbaa !61
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %3, i32 noundef -1)
          to label %12 unwind label %17, !prof !64

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !65
  %14 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !68
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 3
  store i32 0, ptr %15, align 8, !tbaa !89
  invoke void @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %16 unwind label %17, !prof !90

16:                                               ; preds = %12
  ret void

17:                                               ; preds = %12, %7
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_107ElemUseD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) #10
  resume { ptr, i32 } %18
}

declare void @_ZN11xalanc_1_107ElemUseC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  br label %6

6:                                                ; preds = %9, %5
  %7 = phi ptr [ %3, %5 ], [ %10, %9 ]
  %8 = load i16, ptr %7, align 2, !tbaa !91
  switch i16 %8, label %9 [
    i16 58, label %11
    i16 0, label %11
  ], !prof !92

9:                                                ; preds = %6
  %10 = getelementptr inbounds i16, ptr %7, i64 1
  br label %6, !llvm.loop !93

11:                                               ; preds = %6, %6
  %12 = ptrtoint ptr %7 to i64
  %13 = ptrtoint ptr %3 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  br label %16

16:                                               ; preds = %16, %11
  %17 = phi ptr [ %3, %11 ], [ %20, %16 ]
  %18 = load i16, ptr %17, align 2, !tbaa !91
  %19 = icmp eq i16 %18, 0
  %20 = getelementptr inbounds i16, ptr %17, i64 1
  br i1 %19, label %21, label %16, !prof !96, !llvm.loop !97

21:                                               ; preds = %16
  %22 = trunc i64 %15 to i32
  %23 = ptrtoint ptr %17 to i64
  %24 = sub i64 %23, %13
  %25 = lshr exact i64 %24, 1
  %26 = trunc i64 %25 to i32
  %27 = icmp ult i32 %22, %26
  %28 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %29 = load i16, ptr %28, align 8, !tbaa !98
  br i1 %27, label %30, label %32, !prof !99

30:                                               ; preds = %21
  %31 = or i16 %29, 256
  br label %34

32:                                               ; preds = %21
  %33 = and i16 %29, -257
  br label %34

34:                                               ; preds = %30, %32
  %35 = phi i16 [ %31, %30 ], [ %33, %32 ]
  store i16 %35, ptr %28, align 8, !tbaa !98
  %36 = load ptr, ptr %4, align 8, !tbaa !61
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef i32 %38(ptr noundef nonnull align 8 dereferenceable(8) %4), !prof !100
  %40 = zext i32 %39 to i64
  %41 = load ptr, ptr %1, align 8, !tbaa !61
  %42 = getelementptr inbounds ptr, ptr %41, i64 38
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %40), !prof !101
  %45 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 2
  store ptr %44, ptr %45, align 8, !tbaa !68
  %46 = load ptr, ptr %1, align 8, !tbaa !61
  %47 = getelementptr inbounds ptr, ptr %46, i64 5
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef nonnull align 8 dereferenceable(36) ptr %48(ptr noundef nonnull align 8 dereferenceable(16) %1), !prof !102
  %50 = icmp eq i32 %39, 0
  br i1 %50, label %51, label %60, !prof !103

51:                                               ; preds = %183, %34
  %52 = load ptr, ptr %1, align 8, !tbaa !61
  %53 = getelementptr inbounds ptr, ptr %52, i64 6
  %54 = load ptr, ptr %53, align 8
  %55 = invoke noundef zeroext i1 %54(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %49)
          to label %59 unwind label %56, !prof !104

56:                                               ; preds = %51
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  tail call void @__clang_call_terminate(ptr %58) #11
  unreachable

59:                                               ; preds = %51
  ret void

60:                                               ; preds = %34, %183
  %61 = phi i32 [ %184, %183 ], [ 0, %34 ]
  %62 = load ptr, ptr %4, align 8, !tbaa !61
  %63 = getelementptr inbounds ptr, ptr %62, i64 3
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %61)
          to label %66 unwind label %99, !prof !105

66:                                               ; preds = %60, %69
  %67 = phi ptr [ %70, %69 ], [ %65, %60 ]
  %68 = load i16, ptr %67, align 2, !tbaa !91
  switch i16 %68, label %69 [
    i16 58, label %71
    i16 0, label %71
  ], !prof !106

69:                                               ; preds = %66
  %70 = getelementptr inbounds i16, ptr %67, i64 1
  br label %66, !llvm.loop !93

71:                                               ; preds = %66, %66
  %72 = ptrtoint ptr %67 to i64
  %73 = ptrtoint ptr %65 to i64
  %74 = sub i64 %72, %73
  %75 = lshr exact i64 %74, 1
  br label %76

76:                                               ; preds = %76, %71
  %77 = phi ptr [ %65, %71 ], [ %80, %76 ]
  %78 = load i16, ptr %77, align 2, !tbaa !91
  %79 = icmp eq i16 %78, 0
  %80 = getelementptr inbounds i16, ptr %77, i64 1
  br i1 %79, label %81, label %76, !prof !107, !llvm.loop !97

81:                                               ; preds = %76
  %82 = trunc i64 %75 to i32
  %83 = ptrtoint ptr %77 to i64
  %84 = sub i64 %83, %73
  %85 = lshr exact i64 %84, 1
  %86 = trunc i64 %85 to i32
  %87 = icmp ult i32 %82, %86
  br i1 %87, label %88, label %142, !prof !108

88:                                               ; preds = %81
  %89 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_109substringEPKtRNS_14XalanDOMStringEjj(ptr noundef %65, ptr noundef nonnull align 8 dereferenceable(36) %49, i32 noundef 0, i32 noundef %82)
          to label %90 unwind label %101

90:                                               ; preds = %88
  %91 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8
  %92 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %49, ptr noundef nonnull align 8 dereferenceable(36) %91)
          to label %93 unwind label %101

93:                                               ; preds = %90
  br i1 %92, label %183, label %94

94:                                               ; preds = %93
  %95 = invoke noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %49)
          to label %96 unwind label %103

96:                                               ; preds = %94
  %97 = icmp eq ptr %95, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %96
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 27, ptr noundef nonnull align 8 dereferenceable(36) %49)
          to label %142 unwind label %103

99:                                               ; preds = %60
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %186

101:                                              ; preds = %90, %171, %166, %161, %155, %152, %142, %88
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %186

103:                                              ; preds = %125, %110, %109, %105, %122, %117, %98, %94
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %186

105:                                              ; preds = %96
  %106 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %2, i64 0, i32 5
  %107 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %95, ptr noundef nonnull align 8 dereferenceable(36) %106)
          to label %108 unwind label %103

108:                                              ; preds = %105
  br i1 %107, label %109, label %142

109:                                              ; preds = %108
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %49, i32 noundef 0, i32 noundef -1)
          to label %110 unwind label %103

110:                                              ; preds = %109
  %111 = xor i32 %82, -1
  %112 = add i32 %86, %111
  %113 = and i64 %75, 4294967295
  %114 = getelementptr inbounds i16, ptr %65, i64 %113
  %115 = getelementptr inbounds i16, ptr %114, i64 1
  %116 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %49, ptr noundef nonnull %115, i32 noundef %112)
          to label %117 unwind label %103

117:                                              ; preds = %110
  %118 = load ptr, ptr %4, align 8, !tbaa !61
  %119 = getelementptr inbounds ptr, ptr %118, i64 5
  %120 = load ptr, ptr %119, align 8
  %121 = invoke noundef ptr %120(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %61)
          to label %122 unwind label %103

122:                                              ; preds = %117
  %123 = invoke noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement20processPrefixControlERNS_29StylesheetConstructionContextERKNS_10StylesheetERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(36) %49, ptr noundef %121)
          to label %124 unwind label %103

124:                                              ; preds = %122
  br i1 %123, label %183, label %125

125:                                              ; preds = %124
  %126 = load ptr, ptr @_ZN11xalanc_1_109Constants16ATTRNAME_VERSIONE, align 8
  %127 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %49, ptr noundef nonnull align 8 dereferenceable(36) %126)
          to label %128 unwind label %103

128:                                              ; preds = %125
  br i1 %127, label %129, label %142

129:                                              ; preds = %128
  %130 = load ptr, ptr %4, align 8, !tbaa !61
  %131 = getelementptr inbounds ptr, ptr %130, i64 5
  %132 = load ptr, ptr %131, align 8
  %133 = invoke noundef ptr %132(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %61)
          to label %134 unwind label %140

134:                                              ; preds = %129
  %135 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %1, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !109
  %137 = invoke noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %133, ptr noundef nonnull align 8 dereferenceable(8) %136)
          to label %138 unwind label %140

138:                                              ; preds = %134
  %139 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %2, i64 0, i32 16
  store double %137, ptr %139, align 8, !tbaa !111
  br label %142

140:                                              ; preds = %134, %129
  %141 = landingpad { ptr, i32 }
          cleanup
  br label %186

142:                                              ; preds = %108, %128, %138, %98, %81
  %143 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !143
  %145 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %144, i64 0, i32 1
  %146 = load i64, ptr %145, align 8, !tbaa !144
  %147 = icmp eq i64 %146, 0
  %148 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %144, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8
  %150 = select i1 %147, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %149, !prof !108
  %151 = invoke noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %150, ptr noundef %65, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %61, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %152 unwind label %101, !prof !145

152:                                              ; preds = %142
  %153 = invoke noundef zeroext i1 @_ZN11xalanc_1_107ElemUse23processUseAttributeSetsERNS_29StylesheetConstructionContextEPKtRKN11xercesc_2_713AttributeListEi(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %65, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %61)
          to label %154 unwind label %101, !prof !145

154:                                              ; preds = %152
  br i1 %153, label %183, label %155, !prof !108

155:                                              ; preds = %154
  %156 = load ptr, ptr %0, align 8, !tbaa !61
  %157 = getelementptr inbounds ptr, ptr %156, i64 5
  %158 = load ptr, ptr %157, align 8
  %159 = invoke noundef zeroext i1 %158(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef %65, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %61, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %160 unwind label %101, !prof !146

160:                                              ; preds = %155
  br i1 %159, label %161, label %183, !prof !145

161:                                              ; preds = %160
  %162 = load ptr, ptr %0, align 8, !tbaa !61
  %163 = getelementptr inbounds ptr, ptr %162, i64 4
  %164 = load ptr, ptr %163, align 8
  %165 = invoke noundef ptr %164(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %166 unwind label %101, !prof !147

166:                                              ; preds = %161
  %167 = load ptr, ptr %4, align 8, !tbaa !61
  %168 = getelementptr inbounds ptr, ptr %167, i64 5
  %169 = load ptr, ptr %168, align 8
  %170 = invoke noundef ptr %169(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %61)
          to label %171 unwind label %101, !prof !148

171:                                              ; preds = %166
  %172 = load ptr, ptr %1, align 8, !tbaa !61
  %173 = getelementptr inbounds ptr, ptr %172, i64 35
  %174 = load ptr, ptr %173, align 8
  %175 = invoke noundef ptr %174(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %165, ptr noundef %65, ptr noundef %170, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %176 unwind label %101, !prof !149

176:                                              ; preds = %171
  %177 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 3
  %178 = load ptr, ptr %45, align 8, !tbaa !68
  %179 = load i32, ptr %177, align 8, !tbaa !89
  %180 = add i32 %179, 1
  store i32 %180, ptr %177, align 8, !tbaa !89
  %181 = zext i32 %179 to i64
  %182 = getelementptr inbounds ptr, ptr %178, i64 %181
  store ptr %175, ptr %182, align 8, !tbaa !65
  br label %183

183:                                              ; preds = %124, %93, %154, %160, %176
  %184 = add nuw i32 %61, 1
  %185 = icmp eq i32 %184, %39
  br i1 %185, label %51, label %60, !prof !145, !llvm.loop !150

186:                                              ; preds = %99, %103, %140, %101
  %187 = phi { ptr, i32 } [ %100, %99 ], [ %102, %101 ], [ %104, %103 ], [ %141, %140 ]
  %188 = load ptr, ptr %1, align 8, !tbaa !61
  %189 = getelementptr inbounds ptr, ptr %188, i64 6
  %190 = load ptr, ptr %189, align 8
  %191 = invoke noundef zeroext i1 %190(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %49)
          to label %195 unwind label %192

192:                                              ; preds = %186
  %193 = landingpad { ptr, i32 }
          catch ptr null
  %194 = extractvalue { ptr, i32 } %193, 0
  tail call void @__clang_call_terminate(ptr %194) #11
  unreachable

195:                                              ; preds = %186
  resume { ptr, i32 } %187
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_107ElemUseD2Ev(ptr noundef nonnull align 8 dereferenceable(344)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017ElemLiteralResultC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEiii(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  tail call void @_ZN11xalanc_1_107ElemUseC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTVN11xalanc_1_1017ElemLiteralResultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %9 = load ptr, ptr %1, align 8, !tbaa !61
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef nonnull align 8 dereferenceable(36) ptr %11(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %3, i32 noundef -1)
          to label %13 unwind label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !65
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !68
  %16 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 3
  store i32 0, ptr %16, align 8, !tbaa !89
  invoke void @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %17 unwind label %18

17:                                               ; preds = %13
  ret void

18:                                               ; preds = %13, %8
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_107ElemUseD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) #10
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_109substringEPKtRNS_14XalanDOMStringEjj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement20processPrefixControlERNS_29StylesheetConstructionContextERKNS_10StylesheetERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) local_unnamed_addr #2

declare noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_107ElemUse23processUseAttributeSetsERNS_29StylesheetConstructionContextEPKtRKN11xercesc_2_713AttributeListEi(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017ElemLiteralResultD2Ev(ptr noundef nonnull align 8 dereferenceable(364) %0) unnamed_addr #6 align 2 !prof !60 {
  tail call void @_ZN11xalanc_1_107ElemUseD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017ElemLiteralResultD0Ev(ptr noundef nonnull align 8 dereferenceable(364) %0) unnamed_addr #6 align 2 !prof !151 {
  tail call void @_ZN11xalanc_1_107ElemUseD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) #10
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017ElemLiteralResult14getElementNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(364) %0) unnamed_addr #7 align 2 !prof !152 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017ElemLiteralResult16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2) unnamed_addr #1 align 2 !prof !60 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !89
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2, i32 1, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %8, 0
  %10 = select i1 %6, i1 %9, i1 false, !prof !103
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %12 = load i16, ptr %11, align 8, !tbaa !98
  br i1 %10, label %15, label %13, !prof !99

13:                                               ; preds = %3
  %14 = or i16 %12, 16
  br label %17

15:                                               ; preds = %3
  %16 = and i16 %12, -17
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i16 [ %16, %15 ], [ %14, %13 ]
  store i16 %18, ptr %11, align 8, !tbaa !98
  tail call void @_ZN11xalanc_1_107ElemUse16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2)
  %19 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %20 = load i16, ptr %19, align 8, !tbaa !98
  %21 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  %24 = and i16 %20, 18
  %25 = icmp ne i16 %24, 0
  %26 = select i1 %25, i1 true, i1 %23, !prof !90
  br i1 %26, label %38, label %27, !prof !90

27:                                               ; preds = %17
  %28 = load ptr, ptr %0, align 8, !tbaa !61
  %29 = getelementptr inbounds ptr, ptr %28, i64 18
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(322) %0)
  %32 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %31, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !153
  %34 = icmp eq i32 %33, 35
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i16, ptr %19, align 8, !tbaa !98
  %37 = or i16 %36, 16
  store i16 %37, ptr %19, align 8, !tbaa !98
  br label %38

38:                                               ; preds = %35, %27, %17
  ret void
}

declare void @_ZN11xalanc_1_107ElemUse16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017ElemLiteralResult26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2, ptr noundef nonnull align 8 dereferenceable(232) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  %5 = alloca %"class.xalanc_1_10::AVTPrefixChecker", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !89
  call void @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1016AVTPrefixCheckerE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !61
  %10 = getelementptr inbounds %"class.xalanc_1_10::AVTPrefixChecker", ptr %5, i64 0, i32 1
  store ptr %7, ptr %10, align 8, !tbaa !154
  %11 = getelementptr inbounds %"class.xalanc_1_10::AVTPrefixChecker", ptr %5, i64 0, i32 2
  store i32 %9, ptr %11, align 8, !tbaa !157
  %12 = load ptr, ptr %0, align 8, !tbaa !61
  %13 = getelementptr inbounds ptr, ptr %12, i64 12
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef nonnull align 8 dereferenceable(36) ptr %14(ptr noundef nonnull align 8 dereferenceable(364) %0)
          to label %16 unwind label %18, !prof !158

16:                                               ; preds = %4
  invoke void @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE(ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef nonnull %2, ptr noundef nonnull %5)
          to label %17 unwind label %18, !prof !90

17:                                               ; preds = %16
  call void @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerD2Ev(ptr noundef nonnull align 8 dereferenceable(20) %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret void

18:                                               ; preds = %16, %4
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerD2Ev(ptr noundef nonnull align 8 dereferenceable(20) %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  resume { ptr, i32 } %19
}

declare void @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017ElemLiteralResult12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 !prof !159 {
  %3 = load ptr, ptr %0, align 8, !tbaa !61
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(364) %0), !prof !160
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !144
  %9 = icmp eq i64 %8, 0
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = select i1 %9, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %11, !prof !161
  %13 = load ptr, ptr %1, align 8, !tbaa !61
  %14 = getelementptr inbounds ptr, ptr %13, i64 101
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %12), !prof !162
  %16 = tail call noundef ptr @_ZNK11xalanc_1_107ElemUse12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %17 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  tail call void @_ZNK11xalanc_1_1017NamespacesHandler22outputResultNamespacesERNS_26StylesheetExecutionContextEb(ptr noundef nonnull align 8 dereferenceable(232) %17, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext false)
  %18 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %19 = load i16, ptr %18, align 8, !tbaa !98
  %20 = and i16 %19, 256
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %39, !prof !163

22:                                               ; preds = %2
  %23 = load ptr, ptr %1, align 8, !tbaa !61
  %24 = getelementptr inbounds ptr, ptr %23, i64 72
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE), !prof !164
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28, !prof !163

28:                                               ; preds = %22
  %29 = tail call noundef ptr @_ZNK11xalanc_1_1017NamespacesHandler12getNamespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232) %17, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %26, ptr noundef nonnull align 8 dereferenceable(36) %29)
  br i1 %32, label %39, label %33

33:                                               ; preds = %31, %28
  %34 = phi ptr [ @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE, %28 ], [ %29, %31 ]
  %35 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !65
  %36 = load ptr, ptr %1, align 8, !tbaa !61
  %37 = getelementptr inbounds ptr, ptr %36, i64 68
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %35, ptr noundef nonnull align 8 dereferenceable(36) %34)
  br label %39

39:                                               ; preds = %33, %22, %31, %2
  %40 = load ptr, ptr %0, align 8, !tbaa !61
  %41 = getelementptr inbounds ptr, ptr %40, i64 19
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !165
  ret ptr %43
}

declare noundef ptr @_ZNK11xalanc_1_107ElemUse12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZNK11xalanc_1_1017NamespacesHandler22outputResultNamespacesERNS_26StylesheetExecutionContextEb(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1017NamespacesHandler12getNamespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1017ElemLiteralResult10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 !prof !159 {
  %3 = load ptr, ptr %0, align 8, !tbaa !61
  %4 = getelementptr inbounds ptr, ptr %3, i64 20
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !166
  %6 = load ptr, ptr %0, align 8, !tbaa !61
  %7 = getelementptr inbounds ptr, ptr %6, i64 12
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(364) %0), !prof !160
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !144
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %9, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = select i1 %12, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %14, !prof !161
  %16 = load ptr, ptr %1, align 8, !tbaa !61
  %17 = getelementptr inbounds ptr, ptr %16, i64 102
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %15), !prof !167
  tail call void @_ZNK11xalanc_1_107ElemUse10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

declare void @_ZNK11xalanc_1_107ElemUse10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1017ElemLiteralResult12evaluateAVTsERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !159 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !89
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %66, label %6, !prof !168

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !61
  %8 = getelementptr inbounds ptr, ptr %7, i64 23
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr %9(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !169
  %11 = load i32, ptr %3, align 8, !tbaa !89
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !170

13:                                               ; preds = %6
  %14 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %10, i64 0, i32 1
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %10, i64 0, i32 1
  br label %25

17:                                               ; preds = %51, %6
  %18 = load ptr, ptr %1, align 8, !tbaa !61
  %19 = getelementptr inbounds ptr, ptr %18, i64 24
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef zeroext i1 %20(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %66 unwind label %22, !prof !171

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #11
  unreachable

25:                                               ; preds = %13, %51
  %26 = phi i64 [ 0, %13 ], [ %52, %51 ]
  %27 = load ptr, ptr %14, align 8, !tbaa !68
  %28 = getelementptr inbounds ptr, ptr %27, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !65
  %30 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !172
  %32 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %29, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !174
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35, !prof !175

35:                                               ; preds = %25
  %36 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %29, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !176
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef 0, i32 noundef -1)
          to label %38 unwind label %56

38:                                               ; preds = %35
  %39 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull %33, i32 noundef %37)
          to label %41 unwind label %56

40:                                               ; preds = %25
  invoke void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %41 unwind label %56

41:                                               ; preds = %38, %40
  %42 = load ptr, ptr %1, align 8, !tbaa !61
  %43 = getelementptr inbounds ptr, ptr %42, i64 68
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %31, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %45 unwind label %56, !prof !177

45:                                               ; preds = %41
  %46 = load i64, ptr %15, align 8, !tbaa !144
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %51, label %48, !prof !178

48:                                               ; preds = %45
  %49 = load i64, ptr %15, align 8, !tbaa !144
  %50 = sub i64 %49, %46
  store i64 %50, ptr %15, align 8, !tbaa !144
  br label %51

51:                                               ; preds = %48, %45
  store i32 0, ptr %16, align 8, !tbaa !179
  %52 = add nuw nsw i64 %26, 1
  %53 = load i32, ptr %3, align 8, !tbaa !89
  %54 = zext i32 %53 to i64
  %55 = icmp ult i64 %52, %54
  br i1 %55, label %25, label %17, !prof !170, !llvm.loop !180

56:                                               ; preds = %40, %38, %35, %41
  %57 = landingpad { ptr, i32 }
          cleanup
  %58 = load ptr, ptr %1, align 8, !tbaa !61
  %59 = getelementptr inbounds ptr, ptr %58, i64 24
  %60 = load ptr, ptr %59, align 8
  %61 = invoke noundef zeroext i1 %60(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %65 unwind label %62

62:                                               ; preds = %56
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #11
  unreachable

65:                                               ; preds = %56
  resume { ptr, i32 } %57

66:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1017ElemLiteralResult8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(364) %0, ptr noundef %1, ptr nocapture nonnull readnone align 8 %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !181 {
  %6 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !65
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !144
  %9 = icmp eq i64 %8, 0
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = select i1 %9, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %11, !prof !108
  %13 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %12)
  %14 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  %15 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %12, i32 noundef %13, ptr noundef %1, i32 noundef %14)
  br i1 %15, label %38, label %16, !prof !108

16:                                               ; preds = %5
  %17 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE, align 8, !tbaa !65
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi ptr [ %1, %16 ], [ %22, %18 ]
  %20 = load i16, ptr %19, align 2, !tbaa !91
  %21 = icmp eq i16 %20, 0
  %22 = getelementptr inbounds i16, ptr %19, i64 1
  br i1 %21, label %23, label %18, !prof !107, !llvm.loop !97

23:                                               ; preds = %18
  %24 = ptrtoint ptr %19 to i64
  %25 = ptrtoint ptr %1 to i64
  %26 = sub i64 %24, %25
  %27 = lshr exact i64 %26, 1
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %17, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !144
  %31 = icmp eq i64 %30, 0
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %17, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = select i1 %31, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %33, !prof !108
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %17, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !179
  %37 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %1, i32 noundef %28, ptr noundef %34, i32 noundef %36)
  br label %38

38:                                               ; preds = %23, %5
  %39 = phi i1 [ true, %5 ], [ %37, %23 ]
  br i1 %39, label %109, label %40, !prof !108

40:                                               ; preds = %38, %40
  %41 = phi ptr [ %44, %40 ], [ %1, %38 ]
  %42 = load i16, ptr %41, align 2, !tbaa !91
  %43 = icmp eq i16 %42, 0
  %44 = getelementptr inbounds i16, ptr %41, i64 1
  br i1 %43, label %45, label %40, !prof !107, !llvm.loop !97

45:                                               ; preds = %40
  %46 = ptrtoint ptr %41 to i64
  %47 = ptrtoint ptr %1 to i64
  %48 = sub i64 %46, %47
  %49 = lshr exact i64 %48, 1
  %50 = trunc i64 %49 to i32
  br label %51

51:                                               ; preds = %54, %45
  %52 = phi ptr [ %1, %45 ], [ %55, %54 ]
  %53 = load i16, ptr %52, align 2, !tbaa !91
  switch i16 %53, label %54 [
    i16 58, label %56
    i16 0, label %56
  ], !prof !106

54:                                               ; preds = %51
  %55 = getelementptr inbounds i16, ptr %52, i64 1
  br label %51, !llvm.loop !93

56:                                               ; preds = %51, %51
  %57 = ptrtoint ptr %52 to i64
  %58 = sub i64 %57, %47
  %59 = lshr exact i64 %58, 1
  %60 = trunc i64 %59 to i32
  %61 = icmp ult i32 %60, %50
  br i1 %61, label %62, label %109, !prof !108

62:                                               ; preds = %56
  %63 = load ptr, ptr %4, align 8, !tbaa !61
  %64 = getelementptr inbounds ptr, ptr %63, i64 5
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef nonnull align 8 dereferenceable(36) ptr %65(ptr noundef nonnull align 8 dereferenceable(16) %4)
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %66, i32 noundef 0, i32 noundef -1)
          to label %67 unwind label %86

67:                                               ; preds = %62
  %68 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %66, ptr noundef %1, i32 noundef %60)
          to label %69 unwind label %86

69:                                               ; preds = %67
  %70 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !182
  %72 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %71, i64 0, i32 8
  %73 = invoke noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80) %72, ptr noundef nonnull align 8 dereferenceable(36) %66)
          to label %74 unwind label %88

74:                                               ; preds = %69
  %75 = icmp eq ptr %73, null
  br i1 %75, label %90, label %76

76:                                               ; preds = %74
  %77 = load ptr, ptr %4, align 8, !tbaa !61
  %78 = getelementptr inbounds ptr, ptr %77, i64 17
  %79 = load ptr, ptr %78, align 8
  %80 = invoke noundef nonnull align 8 dereferenceable(36) ptr %79(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %81 unwind label %88

81:                                               ; preds = %76
  %82 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %73, ptr noundef nonnull align 8 dereferenceable(36) %80)
          to label %83 unwind label %88

83:                                               ; preds = %81
  %84 = xor i1 %82, true
  %85 = or i1 %39, %84
  br label %90

86:                                               ; preds = %67, %62
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %99

88:                                               ; preds = %81, %69, %76
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %99

90:                                               ; preds = %74, %83
  %91 = phi i1 [ %39, %74 ], [ %85, %83 ]
  %92 = load ptr, ptr %4, align 8, !tbaa !61
  %93 = getelementptr inbounds ptr, ptr %92, i64 6
  %94 = load ptr, ptr %93, align 8
  %95 = invoke noundef zeroext i1 %94(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(36) %66)
          to label %109 unwind label %96

96:                                               ; preds = %90
  %97 = landingpad { ptr, i32 }
          catch ptr null
  %98 = extractvalue { ptr, i32 } %97, 0
  tail call void @__clang_call_terminate(ptr %98) #11
  unreachable

99:                                               ; preds = %86, %88
  %100 = phi { ptr, i32 } [ %89, %88 ], [ %87, %86 ]
  %101 = load ptr, ptr %4, align 8, !tbaa !61
  %102 = getelementptr inbounds ptr, ptr %101, i64 6
  %103 = load ptr, ptr %102, align 8
  %104 = invoke noundef zeroext i1 %103(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(36) %66)
          to label %108 unwind label %105

105:                                              ; preds = %99
  %106 = landingpad { ptr, i32 }
          catch ptr null
  %107 = extractvalue { ptr, i32 } %106, 0
  tail call void @__clang_call_terminate(ptr %107) #11
  unreachable

108:                                              ; preds = %99
  resume { ptr, i32 } %100

109:                                              ; preds = %90, %56, %38
  %110 = phi i1 [ %39, %38 ], [ true, %56 ], [ %91, %90 ]
  ret i1 %110
}

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb(ptr noundef nonnull align 8 dereferenceable(322), i1 noundef zeroext) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_107ElemUse25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_107ElemUse26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !151 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016AVTPrefixCheckerD0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #9 comdat align 2 !prof !151 {
  tail call void @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerD2Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) #10
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1016AVTPrefixChecker8isActiveERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 comdat align 2 !prof !60 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AVTPrefixChecker", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !157
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %70, label %6, !prof !103

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::AVTPrefixChecker", ptr %0, i64 0, i32 1
  br label %13

8:                                                ; preds = %64
  %9 = add nuw nsw i64 %14, 1
  %10 = load i32, ptr %3, align 8, !tbaa !157
  %11 = zext i32 %10 to i64
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %67, !prof !108, !llvm.loop !183

13:                                               ; preds = %6, %8
  %14 = phi i64 [ 0, %6 ], [ %9, %8 ]
  %15 = phi i8 [ 0, %6 ], [ %66, %8 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !154
  %17 = getelementptr inbounds ptr, ptr %16, i64 %14
  %18 = load ptr, ptr %17, align 8, !tbaa !65
  %19 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !172
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %20, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !179
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %42, label %24, !prof !108

24:                                               ; preds = %13
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %20, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !144
  %27 = icmp eq i64 %26, 0
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %20, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8
  %30 = select i1 %27, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %29, !prof !108
  br label %31

31:                                               ; preds = %34, %24
  %32 = phi ptr [ %30, %24 ], [ %35, %34 ]
  %33 = load i16, ptr %32, align 2, !tbaa !91
  switch i16 %33, label %34 [
    i16 58, label %36
    i16 0, label %36
  ], !prof !106

34:                                               ; preds = %31
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  br label %31, !llvm.loop !93

36:                                               ; preds = %31, %31
  %37 = ptrtoint ptr %32 to i64
  %38 = ptrtoint ptr %30 to i64
  %39 = sub i64 %37, %38
  %40 = lshr exact i64 %39, 1
  %41 = trunc i64 %40 to i32
  br label %42

42:                                               ; preds = %13, %36
  %43 = phi i32 [ %41, %36 ], [ 0, %13 ]
  %44 = icmp eq i32 %43, %22
  br i1 %44, label %63, label %45, !prof !145

45:                                               ; preds = %42
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !179
  %48 = icmp eq i32 %47, %43
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %20, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !144
  %54 = icmp eq i64 %53, 0
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %20, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8
  %57 = select i1 %54, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %56
  %58 = load i64, ptr %50, align 8, !tbaa !144
  %59 = icmp eq i64 %58, 0
  %60 = load ptr, ptr %51, align 8
  %61 = select i1 %59, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %60
  %62 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %57, i32 noundef %22, ptr noundef %61, i32 noundef %47)
  br i1 %62, label %64, label %63

63:                                               ; preds = %45, %49, %42
  br label %64

64:                                               ; preds = %49, %63
  %65 = phi i1 [ true, %63 ], [ false, %49 ]
  %66 = phi i8 [ %15, %63 ], [ 1, %49 ]
  br i1 %65, label %8, label %67, !prof !145

67:                                               ; preds = %8, %64
  %68 = and i8 %66, 1
  %69 = icmp ne i8 %68, 0
  br label %70

70:                                               ; preds = %67, %2
  %71 = phi i1 [ false, %2 ], [ %69, %67 ]
  ret i1 %71
}

declare noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!59}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!35 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResultC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_107ElemUseC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 188}
!36 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResultC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE, i64 188}
!37 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, i64 12}
!38 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_107ElemUse23processUseAttributeSetsERNS_29StylesheetConstructionContextEPKtRKN11xercesc_2_713AttributeListEi, i64 12}
!39 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE, ptr @_ZNK11xalanc_1_1017ElemLiteralResult8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, i64 12}
!40 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, i64 12}
!41 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResultD2Ev, ptr @_ZN11xalanc_1_107ElemUseD2Ev, i64 188}
!42 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZN11xalanc_1_107ElemUse16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, i64 188}
!43 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_, ptr @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerC2Ev, i64 188}
!44 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_, ptr @_ZNK11xalanc_1_1017ElemLiteralResult14getElementNameEv, i64 188}
!45 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_, ptr @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE, i64 188}
!46 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_, ptr @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerD2Ev, i64 188}
!47 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1017ElemLiteralResult14getElementNameEv, i64 1048804}
!48 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_107ElemUse12startElementERNS_26StylesheetExecutionContextE, i64 1048804}
!49 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1017NamespacesHandler22outputResultNamespacesERNS_26StylesheetExecutionContextEb, i64 1048804}
!50 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, i64 1048804}
!51 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, i64 1048804}
!52 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1017ElemLiteralResult14getElementNameEv, i64 1048804}
!53 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_107ElemUse10endElementERNS_26StylesheetExecutionContextE, i64 1048804}
!54 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult12evaluateAVTsERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 35027}
!55 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult12evaluateAVTsERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 35027}
!56 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 24}
!57 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 12}
!58 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_1010startsWithEPKtjS1_j, i64 12}
!59 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!60 = !{!"function_entry_count", i64 188}
!61 = !{!62, !62, i64 0}
!62 = !{!"vtable pointer", !63, i64 0}
!63 = !{!"Simple C++ TBAA"}
!64 = !{!"VP", i32 0, i64 188, i64 -5842568502186695876, i64 188}
!65 = !{!66, !66, i64 0}
!66 = !{!"any pointer", !67, i64 0}
!67 = !{!"omnipotent char", !63, i64 0}
!68 = !{!69, !66, i64 352}
!69 = !{!"_ZTSN11xalanc_1_1017ElemLiteralResultE", !70, i64 0, !66, i64 344, !66, i64 352, !84, i64 360}
!70 = !{!"_ZTSN11xalanc_1_107ElemUseE", !71, i64 0, !66, i64 328, !75, i64 336}
!71 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !72, i64 0, !66, i64 8, !73, i64 16, !84, i64 248, !66, i64 256, !66, i64 264, !66, i64 272, !67, i64 280, !85, i64 288, !88, i64 320}
!72 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!73 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !74, i64 0, !76, i64 32, !77, i64 64, !78, i64 96}
!74 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !66, i64 0, !75, i64 8, !75, i64 16, !66, i64 24}
!75 = !{!"long", !67, i64 0}
!76 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !66, i64 0, !75, i64 8, !75, i64 16, !66, i64 24}
!77 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !66, i64 0, !75, i64 8, !75, i64 16, !66, i64 24}
!78 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !79, i64 0, !80, i64 1, !66, i64 8, !81, i64 16, !75, i64 24, !75, i64 32, !82, i64 40, !82, i64 64, !83, i64 88, !75, i64 120, !75, i64 128}
!79 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!80 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!81 = !{!"float", !67, i64 0}
!82 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !66, i64 0, !66, i64 8, !66, i64 16}
!83 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !66, i64 0, !75, i64 8, !75, i64 16, !66, i64 24}
!84 = !{!"int", !67, i64 0}
!85 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !86, i64 0, !75, i64 8, !75, i64 16, !66, i64 24}
!86 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !87, i64 0}
!87 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!88 = !{!"short", !67, i64 0}
!89 = !{!69, !84, i64 360}
!90 = !{!"branch_weights", i32 188, i32 0}
!91 = !{!88, !88, i64 0}
!92 = !{!"branch_weights", i32 371, i32 0, i32 188}
!93 = distinct !{!93, !94, !95}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !{!"branch_weights", i32 188, i32 371}
!97 = distinct !{!97, !94, !95}
!98 = !{!71, !88, i64 320}
!99 = !{!"branch_weights", i32 0, i32 188}
!100 = !{!"VP", i32 0, i64 188, i64 8253907953441087172, i64 188}
!101 = !{!"VP", i32 0, i64 188, i64 -8971020446851298560, i64 188}
!102 = !{!"VP", i32 0, i64 188, i64 5287555200792350651, i64 188}
!103 = !{!"branch_weights", i32 176, i32 12}
!104 = !{!"VP", i32 0, i64 188, i64 8649632521824085322, i64 188}
!105 = !{!"VP", i32 0, i64 12, i64 5829949526982853143, i64 12}
!106 = !{!"branch_weights", i32 72, i32 0, i32 12}
!107 = !{!"branch_weights", i32 12, i32 72}
!108 = !{!"branch_weights", i32 0, i32 12}
!109 = !{!110, !66, i64 8}
!110 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !66, i64 8}
!111 = !{!112, !135, i64 712}
!112 = !{!"_ZTSN11xalanc_1_1010StylesheetE", !72, i64 0, !66, i64 8, !113, i64 16, !115, i64 56, !116, i64 88, !113, i64 120, !117, i64 160, !75, i64 192, !118, i64 200, !120, i64 280, !122, i64 360, !123, i64 368, !66, i64 504, !128, i64 512, !129, i64 544, !134, i64 680, !135, i64 712, !136, i64 720, !139, i64 856, !141, i64 864, !136, i64 896, !139, i64 1032, !141, i64 1040, !141, i64 1072, !141, i64 1104, !141, i64 1136, !141, i64 1168, !141, i64 1200, !75, i64 1232, !142, i64 1240, !73, i64 1272}
!113 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !114, i64 0, !84, i64 32}
!114 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !66, i64 0, !75, i64 8, !75, i64 16, !66, i64 24}
!115 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14KeyDeclarationENS_31MemoryManagedConstructionTraitsIS1_EEEE", !66, i64 0, !75, i64 8, !75, i64 16, !66, i64 24}
!116 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_20XalanSpaceNodeTesterENS_31MemoryManagedConstructionTraitsIS1_EEEE", !66, i64 0, !75, i64 8, !75, i64 16, !66, i64 24}
!117 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_10StylesheetENS_31MemoryManagedConstructionTraitsIS2_EEEE", !66, i64 0, !75, i64 8, !75, i64 16, !66, i64 24}
!118 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS2_IS4_EEEE", !66, i64 0, !75, i64 8, !119, i64 16, !119, i64 48}
!119 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEENS_31MemoryManagedConstructionTraitsIS8_EEEE", !66, i64 0, !75, i64 8, !75, i64 16, !66, i64 24}
!120 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEE", !66, i64 0, !75, i64 8, !121, i64 16, !121, i64 48}
!121 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS_31MemoryManagedConstructionTraitsIS5_EEEE", !66, i64 0, !75, i64 8, !75, i64 16, !66, i64 24}
!122 = !{!"bool", !67, i64 0}
!123 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS1_EEEE", !124, i64 0, !125, i64 1, !66, i64 8, !81, i64 16, !75, i64 24, !75, i64 32, !126, i64 40, !126, i64 64, !127, i64 88, !75, i64 120, !75, i64 128}
!124 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!125 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!126 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !66, i64 0, !66, i64 8, !66, i64 16}
!127 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !66, i64 0, !75, i64 8, !75, i64 16, !66, i64 24}
!128 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEE", !66, i64 0, !75, i64 8, !75, i64 16, !66, i64 24}
!129 = !{!"_ZTSN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS1_EEEE", !130, i64 0, !131, i64 1, !66, i64 8, !81, i64 16, !75, i64 24, !75, i64 32, !132, i64 40, !132, i64 64, !133, i64 88, !75, i64 120, !75, i64 128}
!130 = !{!"_ZTSN11xalanc_1_1024XalanHashMemberReferenceINS_10XalanQNameEEE"}
!131 = !{!"_ZTSSt8equal_toIN11xalanc_1_1010XalanQNameEE"}
!132 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !66, i64 0, !66, i64 8, !66, i64 16}
!133 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEE", !66, i64 0, !75, i64 8, !75, i64 16, !66, i64 24}
!134 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEE", !66, i64 0, !75, i64 8, !75, i64 16, !66, i64 24}
!135 = !{!"double", !67, i64 0}
!136 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS5_EEEENS_17XalanMapKeyTraitsIS1_EEEE", !124, i64 0, !125, i64 1, !66, i64 8, !81, i64 16, !75, i64 24, !75, i64 32, !137, i64 40, !137, i64 64, !138, i64 88, !75, i64 120, !75, i64 128}
!137 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS6_EEEENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !66, i64 0, !66, i64 8, !66, i64 16}
!138 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS0_IPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISE_E4NodeEEENS8_ISJ_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEE", !66, i64 0, !75, i64 8, !75, i64 16, !66, i64 24}
!139 = !{!"_ZTSN11xalanc_1_1016XalanMapIteratorINS_27XalanMapConstIteratorTraitsISt4pairIKNS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS8_EEEEEEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIS3_SB_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISK_E4NodeEEEEE", !140, i64 0}
!140 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISE_E4NodeEEE", !66, i64 0}
!141 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS3_EEEE", !66, i64 0, !75, i64 8, !75, i64 16, !66, i64 24}
!142 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_17ElemDecimalFormatENS_31MemoryManagedConstructionTraitsIS2_EEEE", !66, i64 0, !75, i64 8, !75, i64 16, !66, i64 24}
!143 = !{!69, !66, i64 344}
!144 = !{!114, !75, i64 8}
!145 = !{!"branch_weights", i32 12, i32 0}
!146 = !{!"VP", i32 0, i64 12, i64 7514087314236734767, i64 12}
!147 = !{!"VP", i32 0, i64 12, i64 -5610273550909442482, i64 12}
!148 = !{!"VP", i32 0, i64 12, i64 -7250213707570638104, i64 12}
!149 = !{!"VP", i32 0, i64 12, i64 362171021796504155, i64 12}
!150 = distinct !{!150, !94, !95}
!151 = !{!"function_entry_count", i64 0}
!152 = !{!"function_entry_count", i64 2097796}
!153 = !{!71, !84, i64 248}
!154 = !{!155, !66, i64 8}
!155 = !{!"_ZTSN11xalanc_1_1016AVTPrefixCheckerE", !156, i64 0, !66, i64 8, !84, i64 16}
!156 = !{!"_ZTSN11xalanc_1_1017NamespacesHandler13PrefixCheckerE"}
!157 = !{!155, !84, i64 16}
!158 = !{!"VP", i32 0, i64 188, i64 -8369368142092860089, i64 188}
!159 = !{!"function_entry_count", i64 1048804}
!160 = !{!"VP", i32 0, i64 1048804, i64 -8369368142092860089, i64 1048804}
!161 = !{!"branch_weights", i32 0, i32 1048804}
!162 = !{!"VP", i32 0, i64 1048804, i64 -5946793201622302951, i64 1048804}
!163 = !{!"branch_weights", i32 1048804, i32 0}
!164 = !{!"VP", i32 0, i64 1048804, i64 6851338409076929298, i64 1048804}
!165 = !{!"VP", i32 0, i64 1048804, i64 7918534656437768524, i64 1048804}
!166 = !{!"VP", i32 0, i64 1048804, i64 -2787738682491994990, i64 1048804}
!167 = !{!"VP", i32 0, i64 1048804, i64 232726550842389929, i64 1048804}
!168 = !{!"branch_weights", i32 1013777, i32 35027}
!169 = !{!"VP", i32 0, i64 35027, i64 513632834810131310, i64 35027}
!170 = !{!"branch_weights", i32 1, i32 35026}
!171 = !{!"VP", i32 0, i64 35027, i64 1667259618122374371, i64 35027}
!172 = !{!173, !66, i64 40}
!173 = !{!"_ZTSN11xalanc_1_103AVTE", !66, i64 8, !75, i64 16, !66, i64 24, !84, i64 32, !66, i64 40}
!174 = !{!173, !66, i64 24}
!175 = !{!"branch_weights", i32 0, i32 197105}
!176 = !{!173, !84, i64 32}
!177 = !{!"VP", i32 0, i64 35027, i64 -3500381797682012745, i64 35027}
!178 = !{!"branch_weights", i32 0, i32 35027}
!179 = !{!113, !84, i64 32}
!180 = distinct !{!180, !94, !95}
!181 = !{!"function_entry_count", i64 12}
!182 = !{!71, !66, i64 8}
!183 = distinct !{!183, !94, !95}

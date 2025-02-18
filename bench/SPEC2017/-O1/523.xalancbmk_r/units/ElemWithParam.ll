; ModuleID = 'ElemWithParam.cpp'
source_filename = "ElemWithParam.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElemWithParam" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr }
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
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::SelectionEvent" = type { ptr, ptr, ptr, ptr, ptr, ptr, %"class.xalanc_1_10::XObjectPtr", i32, i8, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.27" = type { ptr, i64, i64, ptr }

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1013ElemWithParamE = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1013ElemWithParamE, ptr @_ZN11xalanc_1_1013ElemWithParamD2Ev, ptr @_ZN11xalanc_1_1013ElemWithParamD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1013ElemWithParam12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1013ElemWithParam10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1013ElemWithParam14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1013ElemWithParam8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_] }, align 8
@_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants37ELEMNAME_WITHPARAM_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE = external global %"class.xalanc_1_10::XalanDOMString", align 8
@.str = private unnamed_addr constant [7 x i8] c"select\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1013ElemWithParamE = dso_local constant [31 x i8] c"N11xalanc_1_1013ElemWithParamE\00", align 1
@_ZTIN11xalanc_1_1019ElemTemplateElementE = external constant ptr
@_ZTIN11xalanc_1_1013ElemWithParamE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1013ElemWithParamE, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1013ElemWithParamC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1013ElemWithParamC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_1013ElemWithParamD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1013ElemWithParamD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1013ElemWithParamC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %4, i32 noundef %5, i32 noundef 0)
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1013ElemWithParamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemWithParam", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemWithParam", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %9 = load ptr, ptr %3, align 8, !tbaa !48
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %13 unwind label %26, !prof !51

13:                                               ; preds = %6
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %23, label %15, !prof !52

15:                                               ; preds = %13
  %16 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE, align 8
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %16, i64 0, i32 1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %16, i64 0, i32 3
  %19 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %19, i64 0, i32 1
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %19, i64 0, i32 3
  %22 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %2, i64 0, i32 8
  br label %28

23:                                               ; preds = %125, %13
  %24 = load ptr, ptr %8, align 8, !tbaa !53
  %25 = icmp eq ptr %24, null
  br i1 %25, label %128, label %131, !prof !75

26:                                               ; preds = %128, %6
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %132

28:                                               ; preds = %15, %125
  %29 = phi i32 [ 0, %15 ], [ %126, %125 ]
  %30 = load ptr, ptr %3, align 8, !tbaa !48
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %29)
          to label %34 unwind label %61, !prof !76

34:                                               ; preds = %28
  %35 = load i64, ptr %17, align 8, !tbaa !77
  %36 = icmp eq i64 %35, 0
  %37 = load ptr, ptr %18, align 8
  %38 = select i1 %36, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %37, !prof !79
  %39 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %38)
          to label %40 unwind label %61, !prof !80

40:                                               ; preds = %34
  %41 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %33)
          to label %42 unwind label %61, !prof !80

42:                                               ; preds = %40
  %43 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %38, i32 noundef %39, ptr noundef %33, i32 noundef %41)
          to label %44 unwind label %61, !prof !80

44:                                               ; preds = %42
  br i1 %43, label %45, label %63, !prof !81

45:                                               ; preds = %44
  %46 = load ptr, ptr %0, align 8, !tbaa !48
  %47 = getelementptr inbounds ptr, ptr %46, i64 4
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %50 unwind label %61, !prof !82

50:                                               ; preds = %45
  %51 = load ptr, ptr %3, align 8, !tbaa !48
  %52 = getelementptr inbounds ptr, ptr %51, i64 5
  %53 = load ptr, ptr %52, align 8
  %54 = invoke noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %29)
          to label %55 unwind label %61, !prof !83

55:                                               ; preds = %50
  %56 = load ptr, ptr %1, align 8, !tbaa !48
  %57 = getelementptr inbounds ptr, ptr %56, i64 21
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %49, ptr noundef %54, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %60 unwind label %61, !prof !84

60:                                               ; preds = %55
  store ptr %59, ptr %7, align 8, !tbaa !85
  br label %125

61:                                               ; preds = %121, %94, %89, %71, %69, %63, %42, %40, %34, %107, %97, %84, %79, %74, %55, %50, %45, %28
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %132

63:                                               ; preds = %44
  %64 = load i64, ptr %20, align 8, !tbaa !77
  %65 = icmp eq i64 %64, 0
  %66 = load ptr, ptr %21, align 8
  %67 = select i1 %65, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %66, !prof !75
  %68 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %67)
          to label %69 unwind label %61, !prof !86

69:                                               ; preds = %63
  %70 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %33)
          to label %71 unwind label %61, !prof !86

71:                                               ; preds = %69
  %72 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %67, i32 noundef %68, ptr noundef %33, i32 noundef %70)
          to label %73 unwind label %61, !prof !86

73:                                               ; preds = %71
  br i1 %72, label %74, label %107, !prof !86

74:                                               ; preds = %73
  %75 = load ptr, ptr %3, align 8, !tbaa !48
  %76 = getelementptr inbounds ptr, ptr %75, i64 5
  %77 = load ptr, ptr %76, align 8
  %78 = invoke noundef ptr %77(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %29)
          to label %79 unwind label %61, !prof !83

79:                                               ; preds = %74
  %80 = load ptr, ptr %0, align 8, !tbaa !48
  %81 = getelementptr inbounds ptr, ptr %80, i64 4
  %82 = load ptr, ptr %81, align 8
  %83 = invoke noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %84 unwind label %61, !prof !82

84:                                               ; preds = %79
  %85 = load ptr, ptr %1, align 8, !tbaa !48
  %86 = getelementptr inbounds ptr, ptr %85, i64 41
  %87 = load ptr, ptr %86, align 8
  %88 = invoke noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %78, ptr noundef nonnull align 8 dereferenceable(80) %22, ptr noundef %83, i1 noundef zeroext false)
          to label %89 unwind label %61, !prof !87

89:                                               ; preds = %84
  store ptr %88, ptr %8, align 8, !tbaa !53
  %90 = load ptr, ptr %88, align 8, !tbaa !48
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8
  %93 = invoke noundef nonnull align 8 dereferenceable(36) ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %88)
          to label %94 unwind label %61, !prof !88

94:                                               ; preds = %89
  %95 = invoke noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %93)
          to label %96 unwind label %61, !prof !86

96:                                               ; preds = %94
  br i1 %95, label %125, label %97, !prof !86

97:                                               ; preds = %96
  %98 = load i64, ptr %20, align 8, !tbaa !77
  %99 = load ptr, ptr %21, align 8
  %100 = load ptr, ptr %3, align 8, !tbaa !48
  %101 = getelementptr inbounds ptr, ptr %100, i64 5
  %102 = load ptr, ptr %101, align 8
  %103 = invoke noundef ptr %102(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %29)
          to label %104 unwind label %61

104:                                              ; preds = %97
  %105 = icmp eq i64 %98, 0
  %106 = select i1 %105, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %99
  br label %121

107:                                              ; preds = %73
  %108 = load ptr, ptr %0, align 8, !tbaa !48
  %109 = getelementptr inbounds ptr, ptr %108, i64 5
  %110 = load ptr, ptr %109, align 8
  %111 = invoke noundef zeroext i1 %110(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %33, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %29, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %112 unwind label %61

112:                                              ; preds = %107
  br i1 %111, label %125, label %113

113:                                              ; preds = %112
  %114 = load ptr, ptr @_ZN11xalanc_1_109Constants37ELEMNAME_WITHPARAM_WITH_PREFIX_STRINGE, align 8
  %115 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %114, i64 0, i32 1
  %116 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %114, i64 0, i32 3
  %117 = load i64, ptr %115, align 8, !tbaa !77
  %118 = icmp eq i64 %117, 0
  %119 = load ptr, ptr %116, align 8
  %120 = select i1 %118, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %119
  br label %121

121:                                              ; preds = %104, %113
  %122 = phi i32 [ 74, %113 ], [ 62, %104 ]
  %123 = phi ptr [ %120, %113 ], [ %106, %104 ]
  %124 = phi ptr [ %33, %113 ], [ %103, %104 ]
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %122, ptr noundef %123, ptr noundef %124)
          to label %125 unwind label %61

125:                                              ; preds = %121, %96, %112, %60
  %126 = add nuw i32 %29, 1
  %127 = icmp eq i32 %126, %12
  br i1 %127, label %23, label %28, !prof !89, !llvm.loop !90

128:                                              ; preds = %23
  %129 = load ptr, ptr @_ZN11xalanc_1_109Constants37ELEMNAME_WITHPARAM_WITH_PREFIX_STRINGE, align 8, !tbaa !93
  %130 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8, !tbaa !93
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 63, ptr noundef nonnull align 8 dereferenceable(36) %129, ptr noundef nonnull align 8 dereferenceable(36) %130)
          to label %131 unwind label %26

131:                                              ; preds = %128, %23
  ret void

132:                                              ; preds = %61, %26
  %133 = phi { ptr, i32 } [ %62, %61 ], [ %27, %26 ]
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #11
  resume { ptr, i32 } %133
}

declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1013ElemWithParamD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #5 align 2 !prof !47 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1013ElemWithParamD0Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #5 align 2 !prof !94 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1013ElemWithParam14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !47 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants37ELEMNAME_WITHPARAM_WITH_PREFIX_STRINGE, align 8, !tbaa !93
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1013ElemWithParam8getXPathEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(344) %0, i32 noundef %1) unnamed_addr #7 align 2 !prof !94 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemWithParam", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = select i1 %3, ptr %5, ptr null
  ret ptr %6
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1013ElemWithParam12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %3 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %4 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::SelectionEvent", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %9 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store ptr null, ptr %3, align 8, !tbaa !96
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  %10 = getelementptr inbounds %"class.xalanc_1_10::ElemWithParam", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %65, !prof !98

13:                                               ; preds = %2
  %14 = load ptr, ptr %0, align 8, !tbaa !48
  %15 = getelementptr inbounds ptr, ptr %14, i64 18
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %18 unwind label %39

18:                                               ; preds = %13
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %51

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %21 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = getelementptr inbounds ptr, ptr %23, i64 13
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE)
          to label %26 unwind label %41

26:                                               ; preds = %20
  %27 = load ptr, ptr %3, align 8, !tbaa !96
  %28 = load ptr, ptr %4, align 8, !tbaa !96
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %27)
          to label %31 unwind label %43

31:                                               ; preds = %30
  %32 = load ptr, ptr %4, align 8, !tbaa !96
  store ptr %32, ptr %3, align 8, !tbaa !96
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %32)
          to label %33 unwind label %43

33:                                               ; preds = %26, %31
  %34 = load ptr, ptr %4, align 8, !tbaa !96
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %34)
          to label %38 unwind label %35

35:                                               ; preds = %33
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  call void @__clang_call_terminate(ptr %37) #13
  unreachable

38:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %198

39:                                               ; preds = %198, %110, %60, %56, %51, %13
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %211

41:                                               ; preds = %20
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %49

43:                                               ; preds = %31, %30
  %44 = landingpad { ptr, i32 }
          cleanup
  %45 = load ptr, ptr %4, align 8, !tbaa !96
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %45)
          to label %49 unwind label %46

46:                                               ; preds = %43
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  call void @__clang_call_terminate(ptr %48) #13
  unreachable

49:                                               ; preds = %43, %41
  %50 = phi { ptr, i32 } [ %42, %41 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %211

51:                                               ; preds = %18
  %52 = load ptr, ptr %1, align 8, !tbaa !48
  %53 = getelementptr inbounds ptr, ptr %52, i64 6
  %54 = load ptr, ptr %53, align 8
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %56 unwind label %39

56:                                               ; preds = %51
  %57 = load ptr, ptr %1, align 8, !tbaa !48
  %58 = getelementptr inbounds ptr, ptr %57, i64 110
  %59 = load ptr, ptr %58, align 8
  invoke void %59(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %55)
          to label %60 unwind label %39

60:                                               ; preds = %56
  %61 = load ptr, ptr %0, align 8, !tbaa !48
  %62 = getelementptr inbounds ptr, ptr %61, i64 19
  %63 = load ptr, ptr %62, align 8
  %64 = invoke noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %204 unwind label %39

65:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %66 = load ptr, ptr %1, align 8, !tbaa !48, !noalias !102
  %67 = getelementptr inbounds ptr, ptr %66, i64 29
  %68 = load ptr, ptr %67, align 8, !noalias !102
  %69 = invoke noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %70 unwind label %153, !prof !105

70:                                               ; preds = %65
  %71 = load ptr, ptr %1, align 8, !tbaa !48, !noalias !102
  %72 = getelementptr inbounds ptr, ptr %71, i64 30
  %73 = load ptr, ptr %72, align 8, !noalias !102
  invoke void %73(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0)
          to label %74 unwind label %153, !prof !106

74:                                               ; preds = %70
  %75 = load ptr, ptr %1, align 8, !tbaa !48, !noalias !102
  %76 = getelementptr inbounds ptr, ptr %75, i64 6
  %77 = load ptr, ptr %76, align 8, !noalias !102
  %78 = invoke noundef ptr %77(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %79 unwind label %90, !prof !107, !noalias !102

79:                                               ; preds = %74
  %80 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %11, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !108, !noalias !102
  %82 = getelementptr inbounds i32, ptr %81, i64 2
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %11, ptr noundef %78, ptr noundef nonnull %82, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %83 unwind label %90, !prof !110

83:                                               ; preds = %79
  %84 = load ptr, ptr %1, align 8, !tbaa !48, !noalias !102
  %85 = getelementptr inbounds ptr, ptr %84, i64 30
  %86 = load ptr, ptr %85, align 8
  invoke void %86(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %69)
          to label %98 unwind label %87, !prof !111

87:                                               ; preds = %83
  %88 = landingpad { ptr, i32 }
          catch ptr null
  %89 = extractvalue { ptr, i32 } %88, 0
  call void @__clang_call_terminate(ptr %89) #13
  unreachable

90:                                               ; preds = %79, %74
  %91 = landingpad { ptr, i32 }
          cleanup
  %92 = load ptr, ptr %1, align 8, !tbaa !48, !noalias !102
  %93 = getelementptr inbounds ptr, ptr %92, i64 30
  %94 = load ptr, ptr %93, align 8
  invoke void %94(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %69)
          to label %161 unwind label %95

95:                                               ; preds = %90
  %96 = landingpad { ptr, i32 }
          catch ptr null
  %97 = extractvalue { ptr, i32 } %96, 0
  call void @__clang_call_terminate(ptr %97) #13
  unreachable

98:                                               ; preds = %83
  %99 = load ptr, ptr %3, align 8, !tbaa !96
  %100 = load ptr, ptr %5, align 8, !tbaa !96
  %101 = icmp eq ptr %99, %100
  br i1 %101, label %105, label %102, !prof !98

102:                                              ; preds = %98
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %99)
          to label %103 unwind label %155, !prof !112

103:                                              ; preds = %102
  %104 = load ptr, ptr %5, align 8, !tbaa !96
  store ptr %104, ptr %3, align 8, !tbaa !96
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %104)
          to label %105 unwind label %155, !prof !112

105:                                              ; preds = %98, %103
  %106 = load ptr, ptr %5, align 8, !tbaa !96
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %106)
          to label %110 unwind label %107, !prof !112

107:                                              ; preds = %105
  %108 = landingpad { ptr, i32 }
          catch ptr null
  %109 = extractvalue { ptr, i32 } %108, 0
  call void @__clang_call_terminate(ptr %109) #13
  unreachable

110:                                              ; preds = %105
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %111 = load ptr, ptr %1, align 8, !tbaa !48
  %112 = getelementptr inbounds ptr, ptr %111, i64 137
  %113 = load ptr, ptr %112, align 8
  %114 = invoke noundef i64 %113(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %115 unwind label %39, !prof !113

115:                                              ; preds = %110
  %116 = icmp eq i64 %114, 0
  br i1 %116, label %198, label %117, !prof !112

117:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #11
  %118 = load ptr, ptr %1, align 8, !tbaa !48
  %119 = getelementptr inbounds ptr, ptr %118, i64 6
  %120 = load ptr, ptr %119, align 8
  %121 = invoke noundef ptr %120(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %122 unwind label %163

122:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #11
  %123 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %1, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !114
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %124, i32 noundef -1)
          to label %125 unwind label %165

125:                                              ; preds = %122
  %126 = load ptr, ptr %10, align 8, !tbaa !85
  %127 = load ptr, ptr %3, align 8, !tbaa !96
  store ptr %127, ptr %8, align 8, !tbaa !96
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %127)
          to label %128 unwind label %167

128:                                              ; preds = %125
  invoke void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %121, ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(129) %126, ptr noundef nonnull %8)
          to label %129 unwind label %169

129:                                              ; preds = %128
  %130 = load ptr, ptr %1, align 8, !tbaa !48
  %131 = getelementptr inbounds ptr, ptr %130, i64 140
  %132 = load ptr, ptr %131, align 8
  invoke void %132(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %133 unwind label %171

133:                                              ; preds = %129
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #11
  %134 = load ptr, ptr %8, align 8, !tbaa !96
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %134)
          to label %138 unwind label %135

135:                                              ; preds = %133
  %136 = landingpad { ptr, i32 }
          catch ptr null
  %137 = extractvalue { ptr, i32 } %136, 0
  call void @__clang_call_terminate(ptr %137) #13
  unreachable

138:                                              ; preds = %133
  %139 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 2
  %140 = load i64, ptr %139, align 8, !tbaa !115
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %152, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !116
  %145 = load ptr, ptr %7, align 8, !tbaa !117
  %146 = load ptr, ptr %145, align 8, !tbaa !48
  %147 = getelementptr inbounds ptr, ptr %146, i64 3
  %148 = load ptr, ptr %147, align 8
  invoke void %148(ptr noundef nonnull align 8 dereferenceable(8) %145, ptr noundef %144)
          to label %152 unwind label %149

149:                                              ; preds = %142
  %150 = landingpad { ptr, i32 }
          catch ptr null
  %151 = extractvalue { ptr, i32 } %150, 0
  call void @__clang_call_terminate(ptr %151) #13
  unreachable

152:                                              ; preds = %138, %142
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #11
  br label %198

153:                                              ; preds = %70, %65
  %154 = landingpad { ptr, i32 }
          cleanup
  br label %161

155:                                              ; preds = %103, %102
  %156 = landingpad { ptr, i32 }
          cleanup
  %157 = load ptr, ptr %5, align 8, !tbaa !96
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %157)
          to label %161 unwind label %158

158:                                              ; preds = %155
  %159 = landingpad { ptr, i32 }
          catch ptr null
  %160 = extractvalue { ptr, i32 } %159, 0
  call void @__clang_call_terminate(ptr %160) #13
  unreachable

161:                                              ; preds = %153, %90, %155
  %162 = phi { ptr, i32 } [ %156, %155 ], [ %154, %153 ], [ %91, %90 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %211

163:                                              ; preds = %117
  %164 = landingpad { ptr, i32 }
          cleanup
  br label %196

165:                                              ; preds = %122
  %166 = landingpad { ptr, i32 }
          cleanup
  br label %194

167:                                              ; preds = %125
  %168 = landingpad { ptr, i32 }
          cleanup
  br label %179

169:                                              ; preds = %128
  %170 = landingpad { ptr, i32 }
          cleanup
  br label %173

171:                                              ; preds = %129
  %172 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #11
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi { ptr, i32 } [ %172, %171 ], [ %170, %169 ]
  %175 = load ptr, ptr %8, align 8, !tbaa !96
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %175)
          to label %179 unwind label %176

176:                                              ; preds = %173
  %177 = landingpad { ptr, i32 }
          catch ptr null
  %178 = extractvalue { ptr, i32 } %177, 0
  call void @__clang_call_terminate(ptr %178) #13
  unreachable

179:                                              ; preds = %173, %167
  %180 = phi { ptr, i32 } [ %168, %167 ], [ %174, %173 ]
  %181 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 2
  %182 = load i64, ptr %181, align 8, !tbaa !115
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %194, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !116
  %187 = load ptr, ptr %7, align 8, !tbaa !117
  %188 = load ptr, ptr %187, align 8, !tbaa !48
  %189 = getelementptr inbounds ptr, ptr %188, i64 3
  %190 = load ptr, ptr %189, align 8
  invoke void %190(ptr noundef nonnull align 8 dereferenceable(8) %187, ptr noundef %186)
          to label %194 unwind label %191

191:                                              ; preds = %184
  %192 = landingpad { ptr, i32 }
          catch ptr null
  %193 = extractvalue { ptr, i32 } %192, 0
  call void @__clang_call_terminate(ptr %193) #13
  unreachable

194:                                              ; preds = %184, %179, %165
  %195 = phi { ptr, i32 } [ %166, %165 ], [ %180, %179 ], [ %180, %184 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #11
  br label %196

196:                                              ; preds = %194, %163
  %197 = phi { ptr, i32 } [ %195, %194 ], [ %164, %163 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #11
  br label %211

198:                                              ; preds = %115, %152, %38
  %199 = getelementptr inbounds %"class.xalanc_1_10::ElemWithParam", ptr %0, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !53
  %201 = load ptr, ptr %1, align 8, !tbaa !48
  %202 = getelementptr inbounds ptr, ptr %201, i64 91
  %203 = load ptr, ptr %202, align 8
  invoke void %203(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %200, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %204 unwind label %39, !prof !118

204:                                              ; preds = %60, %198
  %205 = phi ptr [ null, %198 ], [ %64, %60 ]
  %206 = load ptr, ptr %3, align 8, !tbaa !96
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %206)
          to label %210 unwind label %207, !prof !112

207:                                              ; preds = %204
  %208 = landingpad { ptr, i32 }
          catch ptr null
  %209 = extractvalue { ptr, i32 } %208, 0
  call void @__clang_call_terminate(ptr %209) #13
  unreachable

210:                                              ; preds = %204
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret ptr %205

211:                                              ; preds = %196, %161, %49, %39
  %212 = phi { ptr, i32 } [ %40, %39 ], [ %50, %49 ], [ %197, %196 ], [ %162, %161 ]
  %213 = load ptr, ptr %3, align 8, !tbaa !96
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %213)
          to label %217 unwind label %214

214:                                              ; preds = %211
  %215 = landingpad { ptr, i32 }
          catch ptr null
  %216 = extractvalue { ptr, i32 } %215, 0
  call void @__clang_call_terminate(ptr %216) #13
  unreachable

217:                                              ; preds = %211
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  resume { ptr, i32 } %212
}

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(129), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1013ElemWithParam10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %3 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemWithParam", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %38, !prof !98

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !48
  %9 = getelementptr inbounds ptr, ptr %8, i64 18
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(322) %0)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %0, align 8, !tbaa !48
  %15 = getelementptr inbounds ptr, ptr %14, i64 20
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %17 = getelementptr inbounds %"class.xalanc_1_10::ElemWithParam", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %19 = load ptr, ptr %1, align 8, !tbaa !48
  %20 = getelementptr inbounds ptr, ptr %19, i64 111
  %21 = load ptr, ptr %20, align 8
  call void %21(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %22 = load ptr, ptr %1, align 8, !tbaa !48
  %23 = getelementptr inbounds ptr, ptr %22, i64 91
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %25 unwind label %31

25:                                               ; preds = %13
  %26 = load ptr, ptr %3, align 8, !tbaa !96
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %26)
          to label %30 unwind label %27

27:                                               ; preds = %25
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  call void @__clang_call_terminate(ptr %29) #13
  unreachable

30:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %38

31:                                               ; preds = %13
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %3, align 8, !tbaa !96
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %33)
          to label %37 unwind label %34

34:                                               ; preds = %31
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @__clang_call_terminate(ptr %36) #13
  unreachable

37:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  resume { ptr, i32 } %32

38:                                               ; preds = %30, %7, %2
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504)) unnamed_addr #2

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

declare void @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !94 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!46}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @_ZN11xalanc_1_1013ElemWithParamC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 9}
!36 = !{ptr @_ZN11xalanc_1_1013ElemWithParamC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 54}
!37 = !{ptr @_ZN11xalanc_1_1013ElemWithParamC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 27}
!38 = !{ptr @_ZN11xalanc_1_1013ElemWithParamC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, i64 18}
!39 = !{ptr @_ZN11xalanc_1_1013ElemWithParamC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE, i64 9}
!40 = !{ptr @_ZN11xalanc_1_1013ElemWithParamD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, i64 9}
!41 = !{ptr @_ZNK11xalanc_1_1013ElemWithParam12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, i64 44742742}
!42 = !{ptr @_ZNK11xalanc_1_1013ElemWithParam12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 89485313}
!43 = !{ptr @_ZNK11xalanc_1_1013ElemWithParam12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 44742614}
!44 = !{ptr @_ZNK11xalanc_1_1013ElemWithParam12startElementERNS_26StylesheetExecutionContextE, ptr @__clang_call_terminate, i64 43}
!45 = !{ptr @_ZNK11xalanc_1_1013ElemWithParam12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 134227841}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 9}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!"VP", i32 0, i64 9, i64 8253907953441087172, i64 9}
!52 = !{!"branch_weights", i32 1, i32 143}
!53 = !{!54, !57, i64 336}
!54 = !{!"_ZTSN11xalanc_1_1013ElemWithParamE", !55, i64 0, !57, i64 328, !57, i64 336}
!55 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !56, i64 0, !57, i64 8, !59, i64 16, !70, i64 248, !57, i64 256, !57, i64 264, !57, i64 272, !58, i64 280, !71, i64 288, !74, i64 320}
!56 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!57 = !{!"any pointer", !58, i64 0}
!58 = !{!"omnipotent char", !50, i64 0}
!59 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !60, i64 0, !62, i64 32, !63, i64 64, !64, i64 96}
!60 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !57, i64 0, !61, i64 8, !61, i64 16, !57, i64 24}
!61 = !{!"long", !58, i64 0}
!62 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !57, i64 0, !61, i64 8, !61, i64 16, !57, i64 24}
!63 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !57, i64 0, !61, i64 8, !61, i64 16, !57, i64 24}
!64 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !65, i64 0, !66, i64 1, !57, i64 8, !67, i64 16, !61, i64 24, !61, i64 32, !68, i64 40, !68, i64 64, !69, i64 88, !61, i64 120, !61, i64 128}
!65 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!66 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!67 = !{!"float", !58, i64 0}
!68 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !57, i64 0, !57, i64 8, !57, i64 16}
!69 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !57, i64 0, !61, i64 8, !61, i64 16, !57, i64 24}
!70 = !{!"int", !58, i64 0}
!71 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !72, i64 0, !61, i64 8, !61, i64 16, !57, i64 24}
!72 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !73, i64 0}
!73 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!74 = !{!"short", !58, i64 0}
!75 = !{!"branch_weights", i32 0, i32 9}
!76 = !{!"VP", i32 0, i64 18, i64 5829949526982853143, i64 18}
!77 = !{!78, !61, i64 8}
!78 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !57, i64 0, !61, i64 8, !61, i64 16, !57, i64 24}
!79 = !{!"branch_weights", i32 0, i32 18}
!80 = !{!"branch_weights", i32 18, i32 0}
!81 = !{!"branch_weights", i32 9, i32 9}
!82 = !{!"VP", i32 0, i64 9, i64 -5610273550909442482, i64 9}
!83 = !{!"VP", i32 0, i64 9, i64 -7250213707570638104, i64 9}
!84 = !{!"VP", i32 0, i64 9, i64 5056957690790192712, i64 9}
!85 = !{!54, !57, i64 328}
!86 = !{!"branch_weights", i32 9, i32 0}
!87 = !{!"VP", i32 0, i64 9, i64 7468382999542374119, i64 9}
!88 = !{!"VP", i32 0, i64 9, i64 1429807492782621726, i64 9}
!89 = !{!"branch_weights", i32 143, i32 145}
!90 = distinct !{!90, !91, !92}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = !{!57, !57, i64 0}
!94 = !{!"function_entry_count", i64 0}
!95 = !{!"function_entry_count", i64 44742742}
!96 = !{!97, !57, i64 0}
!97 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !57, i64 0}
!98 = !{!"branch_weights", i32 0, i32 44742742}
!99 = !{!100, !57, i64 16}
!100 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !101, i64 0, !57, i64 16}
!101 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !57, i64 8}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE: argument 0"}
!104 = distinct !{!104, !"_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE"}
!105 = !{!"VP", i32 0, i64 44742742, i64 -6410307884929493294, i64 44742742}
!106 = !{!"VP", i32 0, i64 44742742, i64 8453500335362080052, i64 44742742}
!107 = !{!"VP", i32 0, i64 44800927, i64 -7584622325260852241, i64 44800927}
!108 = !{!109, !57, i64 24}
!109 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !57, i64 0, !61, i64 8, !61, i64 16, !57, i64 24}
!110 = !{!"branch_weights", i32 44800927, i32 0}
!111 = !{!"VP", i32 0, i64 44800927, i64 8453500335362080052, i64 44800927}
!112 = !{!"branch_weights", i32 44742742, i32 0}
!113 = !{!"VP", i32 0, i64 44742742, i64 -4171607645886912631, i64 44742742}
!114 = !{!101, !57, i64 8}
!115 = !{!78, !61, i64 16}
!116 = !{!78, !57, i64 24}
!117 = !{!78, !57, i64 0}
!118 = !{!"VP", i32 0, i64 44742742, i64 711696265844563565, i64 44742742}

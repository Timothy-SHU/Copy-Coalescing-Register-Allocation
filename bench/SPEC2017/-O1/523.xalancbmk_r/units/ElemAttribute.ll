; ModuleID = 'ElemAttribute.cpp'
source_filename = "ElemAttribute.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElemAttribute" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr }
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
%"class.xalanc_1_10::XPathConstructionContext" = type { ptr, ptr }
%"class.xalanc_1_10::AVT" = type { ptr, ptr, i64, ptr, i32, ptr }

$_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

@_ZTVN11xalanc_1_1013ElemAttributeE = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1013ElemAttributeE, ptr @_ZN11xalanc_1_1013ElemAttributeD2Ev, ptr @_ZN11xalanc_1_1013ElemAttributeD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1013ElemAttribute12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1013ElemAttribute10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1013ElemAttribute14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1013ElemAttribute16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_] }, align 8
@_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants18ATTRNAME_NAMESPACEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants37ELEMNAME_ATTRIBUTE_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices35s_XMLNamespaceSeparatorStringLengthE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices29s_XMLNamespaceSeparatorStringE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices33s_XMLNamespaceWithSeparatorLengthE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices11s_XMLStringE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1013ElemAttributeE = dso_local constant [31 x i8] c"N11xalanc_1_1013ElemAttributeE\00", align 1
@_ZTIN11xalanc_1_1019ElemTemplateElementE = external constant ptr
@_ZTIN11xalanc_1_1013ElemAttributeE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1013ElemAttributeE, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1013ElemAttributeC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1013ElemAttributeC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_1013ElemAttributeD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1013ElemAttributeD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1013ElemAttributeC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, i32 noundef %4, i32 noundef %5, i32 noundef 6)
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1013ElemAttributeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemAttribute", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemAttribute", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %10 = load ptr, ptr %3, align 8, !tbaa !61
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %14 unwind label %23, !prof !64

14:                                               ; preds = %6
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %20, label %16, !prof !65

16:                                               ; preds = %14
  %17 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %17, i64 0, i32 1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %17, i64 0, i32 3
  br label %25

20:                                               ; preds = %110, %14
  %21 = load ptr, ptr %8, align 8, !tbaa !66
  %22 = icmp eq ptr %21, null
  br i1 %22, label %113, label %153, !prof !88

23:                                               ; preds = %6
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %154

25:                                               ; preds = %16, %110
  %26 = phi i32 [ 0, %16 ], [ %111, %110 ]
  %27 = load ptr, ptr %3, align 8, !tbaa !61
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %26)
          to label %31 unwind label %58, !prof !89

31:                                               ; preds = %25
  %32 = load i64, ptr %18, align 8, !tbaa !90
  %33 = icmp eq i64 %32, 0
  %34 = load ptr, ptr %19, align 8
  %35 = select i1 %33, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %34, !prof !88
  %36 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %35)
          to label %37 unwind label %58, !prof !92

37:                                               ; preds = %31
  %38 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %30)
          to label %39 unwind label %58, !prof !92

39:                                               ; preds = %37
  %40 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %35, i32 noundef %36, ptr noundef %30, i32 noundef %38)
          to label %41 unwind label %58, !prof !92

41:                                               ; preds = %39
  br i1 %40, label %42, label %60, !prof !92

42:                                               ; preds = %41
  %43 = load ptr, ptr %0, align 8, !tbaa !61
  %44 = getelementptr inbounds ptr, ptr %43, i64 4
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %47 unwind label %58, !prof !93

47:                                               ; preds = %42
  %48 = load ptr, ptr %3, align 8, !tbaa !61
  %49 = getelementptr inbounds ptr, ptr %48, i64 5
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %26)
          to label %52 unwind label %58, !prof !94

52:                                               ; preds = %47
  %53 = load ptr, ptr %1, align 8, !tbaa !61
  %54 = getelementptr inbounds ptr, ptr %53, i64 35
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %46, ptr noundef %30, ptr noundef %51, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %57 unwind label %58, !prof !95

57:                                               ; preds = %52
  store ptr %56, ptr %8, align 8, !tbaa !66
  br label %110

58:                                               ; preds = %71, %69, %60, %39, %37, %31, %105, %95, %90, %84, %79, %75, %52, %47, %42, %25
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %154

60:                                               ; preds = %41
  %61 = load ptr, ptr @_ZN11xalanc_1_109Constants18ATTRNAME_NAMESPACEE, align 8
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %61, i64 0, i32 1
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %61, i64 0, i32 3
  %64 = load i64, ptr %62, align 8, !tbaa !90
  %65 = icmp eq i64 %64, 0
  %66 = load ptr, ptr %63, align 8
  %67 = select i1 %65, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %66
  %68 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %67)
          to label %69 unwind label %58

69:                                               ; preds = %60
  %70 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %30)
          to label %71 unwind label %58

71:                                               ; preds = %69
  %72 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %67, i32 noundef %68, ptr noundef %30, i32 noundef %70)
          to label %73 unwind label %58

73:                                               ; preds = %71
  %74 = load ptr, ptr %0, align 8, !tbaa !61
  br i1 %72, label %75, label %90

75:                                               ; preds = %73
  %76 = getelementptr inbounds ptr, ptr %74, i64 4
  %77 = load ptr, ptr %76, align 8
  %78 = invoke noundef ptr %77(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %79 unwind label %58

79:                                               ; preds = %75
  %80 = load ptr, ptr %3, align 8, !tbaa !61
  %81 = getelementptr inbounds ptr, ptr %80, i64 5
  %82 = load ptr, ptr %81, align 8
  %83 = invoke noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %26)
          to label %84 unwind label %58

84:                                               ; preds = %79
  %85 = load ptr, ptr %1, align 8, !tbaa !61
  %86 = getelementptr inbounds ptr, ptr %85, i64 35
  %87 = load ptr, ptr %86, align 8
  %88 = invoke noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %78, ptr noundef %30, ptr noundef %83, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %89 unwind label %58

89:                                               ; preds = %84
  store ptr %88, ptr %9, align 8, !tbaa !96
  br label %110

90:                                               ; preds = %73
  %91 = getelementptr inbounds ptr, ptr %74, i64 5
  %92 = load ptr, ptr %91, align 8
  %93 = invoke noundef zeroext i1 %92(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %30, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %26, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %94 unwind label %58

94:                                               ; preds = %90
  br i1 %93, label %110, label %95

95:                                               ; preds = %94
  %96 = load ptr, ptr @_ZN11xalanc_1_109Constants37ELEMNAME_ATTRIBUTE_WITH_PREFIX_STRINGE, align 8
  %97 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %96, i64 0, i32 1
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %96, i64 0, i32 3
  %99 = load i64, ptr %97, align 8, !tbaa !90
  %100 = icmp eq i64 %99, 0
  %101 = load ptr, ptr %98, align 8
  %102 = select i1 %100, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %101
  %103 = invoke noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %102, ptr noundef %30, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %26, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %104 unwind label %58

104:                                              ; preds = %95
  br i1 %103, label %110, label %105

105:                                              ; preds = %104
  %106 = load i64, ptr %97, align 8, !tbaa !90
  %107 = icmp eq i64 %106, 0
  %108 = load ptr, ptr %98, align 8
  %109 = select i1 %107, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %108
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 74, ptr noundef %109, ptr noundef %30)
          to label %110 unwind label %58

110:                                              ; preds = %89, %105, %104, %94, %57
  %111 = add nuw i32 %26, 1
  %112 = icmp eq i32 %111, %13
  br i1 %112, label %20, label %25, !prof !97, !llvm.loop !98

113:                                              ; preds = %20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #14
  %114 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %1, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !101
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %115)
          to label %116 unwind label %134

116:                                              ; preds = %113
  %117 = load ptr, ptr @_ZN11xalanc_1_109Constants37ELEMNAME_ATTRIBUTE_WITH_PREFIX_STRINGE, align 8, !tbaa !103
  %118 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 63, ptr noundef nonnull align 8 dereferenceable(36) %117, ptr noundef nonnull align 8 dereferenceable(36) %118)
          to label %119 unwind label %136

119:                                              ; preds = %116
  %120 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 2
  %121 = load i64, ptr %120, align 8, !tbaa !104
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !105
  %126 = load ptr, ptr %7, align 8, !tbaa !106
  %127 = load ptr, ptr %126, align 8, !tbaa !61
  %128 = getelementptr inbounds ptr, ptr %127, i64 3
  %129 = load ptr, ptr %128, align 8
  invoke void %129(ptr noundef nonnull align 8 dereferenceable(8) %126, ptr noundef %125)
          to label %133 unwind label %130

130:                                              ; preds = %123
  %131 = landingpad { ptr, i32 }
          catch ptr null
  %132 = extractvalue { ptr, i32 } %131, 0
  call void @__clang_call_terminate(ptr %132) #15
  unreachable

133:                                              ; preds = %119, %123
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #14
  br label %153

134:                                              ; preds = %113
  %135 = landingpad { ptr, i32 }
          cleanup
  br label %151

136:                                              ; preds = %116
  %137 = landingpad { ptr, i32 }
          cleanup
  %138 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 2
  %139 = load i64, ptr %138, align 8, !tbaa !104
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !105
  %144 = load ptr, ptr %7, align 8, !tbaa !106
  %145 = load ptr, ptr %144, align 8, !tbaa !61
  %146 = getelementptr inbounds ptr, ptr %145, i64 3
  %147 = load ptr, ptr %146, align 8
  invoke void %147(ptr noundef nonnull align 8 dereferenceable(8) %144, ptr noundef %143)
          to label %151 unwind label %148

148:                                              ; preds = %141
  %149 = landingpad { ptr, i32 }
          catch ptr null
  %150 = extractvalue { ptr, i32 } %149, 0
  call void @__clang_call_terminate(ptr %150) #15
  unreachable

151:                                              ; preds = %141, %136, %134
  %152 = phi { ptr, i32 } [ %135, %134 ], [ %137, %136 ], [ %137, %141 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #14
  br label %154

153:                                              ; preds = %133, %20
  ret void

154:                                              ; preds = %151, %58, %23
  %155 = phi { ptr, i32 } [ %59, %58 ], [ %152, %151 ], [ %24, %23 ]
  call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #14
  resume { ptr, i32 } %155
}

declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1013ElemAttributeD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #5 align 2 !prof !60 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1013ElemAttributeD0Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #5 align 2 !prof !107 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #16
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1013ElemAttribute14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !60 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants37ELEMNAME_ATTRIBUTE_WITH_PREFIX_STRINGE, align 8, !tbaa !103
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1013ElemAttribute12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %4 = load ptr, ptr %1, align 8, !tbaa !61
  %5 = getelementptr inbounds ptr, ptr %4, i64 163
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !109
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemAttribute", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !110
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !112

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %9, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !113
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 0, i32 noundef -1)
  %16 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull %11, i32 noundef %15)
  br label %18

17:                                               ; preds = %2
  tail call void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %18

18:                                               ; preds = %13, %17
  %19 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName12isValidQNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %7)
  br i1 %19, label %24, label %20, !prof !114

20:                                               ; preds = %18
  tail call void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(36) %7)
  %21 = load ptr, ptr %1, align 8, !tbaa !61
  %22 = getelementptr inbounds ptr, ptr %21, i64 46
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext false)
  br label %606

24:                                               ; preds = %18
  %25 = load ptr, ptr %1, align 8, !tbaa !61
  %26 = getelementptr inbounds ptr, ptr %25, i64 23
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef nonnull align 8 dereferenceable(36) ptr %27(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !115
  %29 = icmp eq ptr %7, %28
  br i1 %29, label %36, label %30, !prof !116

30:                                               ; preds = %24
  %31 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %32 unwind label %78, !prof !114

32:                                               ; preds = %30
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !117
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %28, i64 0, i32 1
  store i32 %34, ptr %35, align 8, !tbaa !117
  br label %36

36:                                               ; preds = %32, %24
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %28, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !117
  %39 = load ptr, ptr %1, align 8, !tbaa !61
  %40 = getelementptr inbounds ptr, ptr %39, i64 23
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef nonnull align 8 dereferenceable(36) ptr %41(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %43 unwind label %80, !prof !115

43:                                               ; preds = %36
  %44 = getelementptr inbounds %"class.xalanc_1_10::ElemAttribute", ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !96
  %46 = icmp eq ptr %45, null
  br i1 %46, label %341, label %47, !prof !114

47:                                               ; preds = %43
  invoke void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr noundef nonnull align 8 dereferenceable(36) %42, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %48 unwind label %82

48:                                               ; preds = %47
  %49 = load i32, ptr %37, align 8, !tbaa !117
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %28, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !90
  %54 = icmp eq i64 %53, 0
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %28, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8
  %57 = select i1 %54, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %56
  br label %58

58:                                               ; preds = %61, %51
  %59 = phi ptr [ %57, %51 ], [ %62, %61 ]
  %60 = load i16, ptr %59, align 2, !tbaa !119
  switch i16 %60, label %61 [
    i16 58, label %63
    i16 0, label %63
  ]

61:                                               ; preds = %58
  %62 = getelementptr inbounds i16, ptr %59, i64 1
  br label %58, !llvm.loop !120

63:                                               ; preds = %58, %58
  %64 = ptrtoint ptr %59 to i64
  %65 = ptrtoint ptr %57 to i64
  %66 = sub i64 %64, %65
  %67 = lshr exact i64 %66, 1
  %68 = trunc i64 %67 to i32
  br label %69

69:                                               ; preds = %63, %48
  %70 = phi i32 [ %68, %63 ], [ 0, %48 ]
  %71 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %42, i64 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !117
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = icmp ult i32 %70, %38
  br i1 %75, label %76, label %544

76:                                               ; preds = %74
  %77 = add i32 %70, 1
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %28, ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef %77, i32 noundef -1)
          to label %544 unwind label %82

78:                                               ; preds = %30
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %596

80:                                               ; preds = %36
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %596

82:                                               ; preds = %351, %347, %568, %555, %554, %543, %341, %76, %47
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %587

84:                                               ; preds = %69
  %85 = load ptr, ptr %1, align 8, !tbaa !61
  %86 = getelementptr inbounds ptr, ptr %85, i64 71
  %87 = load ptr, ptr %86, align 8
  %88 = invoke noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %42)
          to label %89 unwind label %131

89:                                               ; preds = %84
  %90 = icmp eq ptr %88, null
  br i1 %90, label %165, label %91

91:                                               ; preds = %89
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %88, i64 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !117
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %165, label %95

95:                                               ; preds = %91
  %96 = icmp eq i32 %70, %38
  br i1 %96, label %112, label %97

97:                                               ; preds = %95
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %88, i64 0, i32 1
  %99 = load i64, ptr %98, align 8, !tbaa !90
  %100 = icmp eq i64 %99, 0
  %101 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %88, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8
  %103 = select i1 %100, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %102
  %104 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 1
  %105 = load i64, ptr %104, align 8, !tbaa !90
  %106 = icmp eq i64 %105, 0
  %107 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8
  %109 = select i1 %106, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %108
  %110 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %103, ptr noundef %109, i32 noundef %70)
          to label %111 unwind label %131

111:                                              ; preds = %97
  br i1 %110, label %112, label %165

112:                                              ; preds = %111, %95
  %113 = icmp ult i32 %70, %38
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !117
  br i1 %113, label %116, label %133

116:                                              ; preds = %112
  %117 = add i32 %70, 1
  %118 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices35s_XMLNamespaceSeparatorStringLengthE, align 8, !tbaa !103
  %119 = load i32, ptr %118, align 4, !tbaa !121
  %120 = load i32, ptr %92, align 8, !tbaa !117
  %121 = sub i32 %115, %70
  %122 = add i32 %121, 1
  %123 = add i32 %122, %119
  %124 = add i32 %123, %120
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 2
  %127 = load i64, ptr %126, align 8, !tbaa !104
  %128 = icmp ult i64 %127, %125
  br i1 %128, label %129, label %130

129:                                              ; preds = %116
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %125)
          to label %130 unwind label %131

130:                                              ; preds = %129, %116
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 0, i32 noundef %117)
          to label %145 unwind label %131

131:                                              ; preds = %156, %145, %144, %129, %130, %97, %84
  %132 = landingpad { ptr, i32 }
          cleanup
  br label %587

133:                                              ; preds = %112
  %134 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices35s_XMLNamespaceSeparatorStringLengthE, align 8, !tbaa !103
  %135 = load i32, ptr %134, align 4, !tbaa !121
  %136 = load i32, ptr %92, align 8, !tbaa !117
  %137 = add i32 %115, 2
  %138 = add i32 %137, %135
  %139 = add i32 %138, %136
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 2
  %142 = load i64, ptr %141, align 8, !tbaa !104
  %143 = icmp ult i64 %142, %140
  br i1 %143, label %144, label %145

144:                                              ; preds = %133
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %140)
          to label %145 unwind label %131

145:                                              ; preds = %144, %130, %133
  %146 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices29s_XMLNamespaceSeparatorStringE, align 8, !tbaa !103
  %147 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %146, i64 0, i32 1
  %148 = load i64, ptr %147, align 8, !tbaa !90
  %149 = icmp eq i64 %148, 0
  %150 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %146, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8
  %152 = select i1 %149, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %151
  %153 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %146, i64 0, i32 1
  %154 = load i32, ptr %153, align 8, !tbaa !117
  %155 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6insertEjPKtj(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 0, ptr noundef %152, i32 noundef %154)
          to label %156 unwind label %131

156:                                              ; preds = %145
  %157 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %88, i64 0, i32 1
  %158 = load i64, ptr %157, align 8, !tbaa !90
  %159 = icmp eq i64 %158, 0
  %160 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %88, i64 0, i32 3
  %161 = load ptr, ptr %160, align 8
  %162 = select i1 %159, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %161
  %163 = load i32, ptr %92, align 8, !tbaa !117
  %164 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6insertEjPKtj(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 0, ptr noundef %162, i32 noundef %163)
          to label %544 unwind label %131

165:                                              ; preds = %111, %91, %89
  %166 = load ptr, ptr %1, align 8, !tbaa !61
  %167 = getelementptr inbounds ptr, ptr %166, i64 23
  %168 = load ptr, ptr %167, align 8
  %169 = invoke noundef nonnull align 8 dereferenceable(36) ptr %168(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %170 unwind label %218

170:                                              ; preds = %165
  %171 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE, align 8, !tbaa !103
  %172 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %28, i64 0, i32 1
  %173 = load i64, ptr %172, align 8, !tbaa !90
  %174 = icmp eq i64 %173, 0
  %175 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %28, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8
  %177 = select i1 %174, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %176
  %178 = load i32, ptr %37, align 8, !tbaa !117
  %179 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %171, i64 0, i32 1
  %180 = load i64, ptr %179, align 8, !tbaa !90
  %181 = icmp eq i64 %180, 0
  %182 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %171, i64 0, i32 3
  %183 = load ptr, ptr %182, align 8
  %184 = select i1 %181, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %183
  %185 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %171, i64 0, i32 1
  %186 = load i32, ptr %185, align 8, !tbaa !117
  %187 = invoke noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %177, i32 noundef %178, ptr noundef %184, i32 noundef %186)
          to label %188 unwind label %220

188:                                              ; preds = %170
  %189 = icmp uge i32 %70, %38
  %190 = or i1 %189, %187
  br i1 %190, label %224, label %191

191:                                              ; preds = %188
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %28, ptr noundef nonnull align 8 dereferenceable(36) %169, i32 noundef 0, i32 noundef %70)
          to label %192 unwind label %220

192:                                              ; preds = %191
  %193 = load ptr, ptr %1, align 8, !tbaa !61
  %194 = getelementptr inbounds ptr, ptr %193, i64 72
  %195 = load ptr, ptr %194, align 8
  %196 = invoke noundef ptr %195(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %169)
          to label %197 unwind label %222

197:                                              ; preds = %192
  %198 = icmp eq ptr %196, null
  br i1 %198, label %224, label %199

199:                                              ; preds = %197
  %200 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %196, ptr noundef nonnull align 8 dereferenceable(36) %42)
          to label %201 unwind label %222

201:                                              ; preds = %199
  br i1 %200, label %224, label %202

202:                                              ; preds = %201
  %203 = load ptr, ptr %1, align 8, !tbaa !61
  %204 = getelementptr inbounds ptr, ptr %203, i64 73
  %205 = load ptr, ptr %204, align 8
  %206 = invoke noundef zeroext i1 %205(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %169)
          to label %207 unwind label %222

207:                                              ; preds = %202
  br i1 %206, label %208, label %224

208:                                              ; preds = %207
  %209 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %169, i64 0, i32 1
  %210 = load i64, ptr %209, align 8, !tbaa !90
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %208
  %213 = load i64, ptr %209, align 8, !tbaa !90
  %214 = sub i64 %213, %210
  store i64 %214, ptr %209, align 8, !tbaa !90
  br label %215

215:                                              ; preds = %212, %208
  %216 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %169, i64 0, i32 1
  store i32 0, ptr %216, align 8, !tbaa !117
  %217 = add i32 %70, 1
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %28, ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef %217, i32 noundef -1)
          to label %224 unwind label %222

218:                                              ; preds = %165
  %219 = landingpad { ptr, i32 }
          cleanup
  br label %587

220:                                              ; preds = %260, %249, %248, %170, %231, %229, %191
  %221 = landingpad { ptr, i32 }
          cleanup
  br label %332

222:                                              ; preds = %199, %215, %202, %192
  %223 = landingpad { ptr, i32 }
          cleanup
  br label %332

224:                                              ; preds = %197, %201, %207, %215, %188
  %225 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %169, i64 0, i32 1
  %226 = load i32, ptr %225, align 8, !tbaa !117
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %269

228:                                              ; preds = %224
  br i1 %187, label %229, label %231

229:                                              ; preds = %228
  %230 = add i32 %70, 1
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 0, i32 noundef %230)
          to label %231 unwind label %220

231:                                              ; preds = %229, %228
  %232 = load ptr, ptr %1, align 8, !tbaa !61
  %233 = getelementptr inbounds ptr, ptr %232, i64 74
  %234 = load ptr, ptr %233, align 8
  invoke void %234(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %169)
          to label %235 unwind label %220

235:                                              ; preds = %231
  %236 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %237 = load i32, ptr %236, align 8, !tbaa !117
  %238 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices35s_XMLNamespaceSeparatorStringLengthE, align 8, !tbaa !103
  %239 = load i32, ptr %238, align 4, !tbaa !121
  %240 = load i32, ptr %225, align 8, !tbaa !117
  %241 = add i32 %237, 2
  %242 = add i32 %241, %239
  %243 = add i32 %242, %240
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 2
  %246 = load i64, ptr %245, align 8, !tbaa !104
  %247 = icmp ult i64 %246, %244
  br i1 %247, label %248, label %249

248:                                              ; preds = %235
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %244)
          to label %249 unwind label %220

249:                                              ; preds = %248, %235
  %250 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices29s_XMLNamespaceSeparatorStringE, align 8, !tbaa !103
  %251 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %250, i64 0, i32 1
  %252 = load i64, ptr %251, align 8, !tbaa !90
  %253 = icmp eq i64 %252, 0
  %254 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %250, i64 0, i32 3
  %255 = load ptr, ptr %254, align 8
  %256 = select i1 %253, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %255
  %257 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %250, i64 0, i32 1
  %258 = load i32, ptr %257, align 8, !tbaa !117
  %259 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6insertEjPKtj(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 0, ptr noundef %256, i32 noundef %258)
          to label %260 unwind label %220

260:                                              ; preds = %249
  %261 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %169, i64 0, i32 1
  %262 = load i64, ptr %261, align 8, !tbaa !90
  %263 = icmp eq i64 %262, 0
  %264 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %169, i64 0, i32 3
  %265 = load ptr, ptr %264, align 8
  %266 = select i1 %263, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %265
  %267 = load i32, ptr %225, align 8, !tbaa !117
  %268 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6insertEjPKtj(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 0, ptr noundef %266, i32 noundef %267)
          to label %269 unwind label %220

269:                                              ; preds = %260, %224
  %270 = load ptr, ptr %1, align 8, !tbaa !61
  %271 = getelementptr inbounds ptr, ptr %270, i64 23
  %272 = load ptr, ptr %271, align 8
  %273 = invoke noundef nonnull align 8 dereferenceable(36) ptr %272(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %274 unwind label %321

274:                                              ; preds = %269
  %275 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices33s_XMLNamespaceWithSeparatorLengthE, align 8, !tbaa !103
  %276 = load i32, ptr %275, align 4, !tbaa !121
  %277 = load i32, ptr %225, align 8, !tbaa !117
  %278 = add i32 %276, 2
  %279 = add i32 %278, %277
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %273, i64 0, i32 2
  %282 = load i64, ptr %281, align 8, !tbaa !104
  %283 = icmp ult i64 %282, %280
  br i1 %283, label %284, label %285

284:                                              ; preds = %274
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %273, i64 noundef %280)
          to label %285 unwind label %323

285:                                              ; preds = %274, %284
  %286 = icmp eq ptr %171, %273
  br i1 %286, label %292, label %287

287:                                              ; preds = %285
  %288 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %273, ptr noundef nonnull align 8 dereferenceable(32) %171)
          to label %289 unwind label %323

289:                                              ; preds = %287
  %290 = load i32, ptr %185, align 8, !tbaa !117
  %291 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %273, i64 0, i32 1
  store i32 %290, ptr %291, align 8, !tbaa !117
  br label %292

292:                                              ; preds = %285, %289
  %293 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %169, i64 0, i32 1
  %294 = load i64, ptr %293, align 8, !tbaa !90
  %295 = icmp eq i64 %294, 0
  %296 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %169, i64 0, i32 3
  %297 = load ptr, ptr %296, align 8
  %298 = select i1 %295, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %297
  %299 = load i32, ptr %225, align 8, !tbaa !117
  %300 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %273, ptr noundef %298, i32 noundef %299)
          to label %301 unwind label %323

301:                                              ; preds = %292
  %302 = load ptr, ptr %1, align 8, !tbaa !61
  %303 = getelementptr inbounds ptr, ptr %302, i64 68
  %304 = load ptr, ptr %303, align 8
  invoke void %304(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %273, ptr noundef nonnull align 8 dereferenceable(36) %42)
          to label %305 unwind label %323

305:                                              ; preds = %301
  %306 = load ptr, ptr %1, align 8, !tbaa !61
  %307 = getelementptr inbounds ptr, ptr %306, i64 24
  %308 = load ptr, ptr %307, align 8
  %309 = invoke noundef zeroext i1 %308(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %273)
          to label %313 unwind label %310

310:                                              ; preds = %305
  %311 = landingpad { ptr, i32 }
          catch ptr null
  %312 = extractvalue { ptr, i32 } %311, 0
  tail call void @__clang_call_terminate(ptr %312) #15
  unreachable

313:                                              ; preds = %305
  %314 = load ptr, ptr %1, align 8, !tbaa !61
  %315 = getelementptr inbounds ptr, ptr %314, i64 24
  %316 = load ptr, ptr %315, align 8
  %317 = invoke noundef zeroext i1 %316(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %169)
          to label %544 unwind label %318

318:                                              ; preds = %313
  %319 = landingpad { ptr, i32 }
          catch ptr null
  %320 = extractvalue { ptr, i32 } %319, 0
  tail call void @__clang_call_terminate(ptr %320) #15
  unreachable

321:                                              ; preds = %269
  %322 = landingpad { ptr, i32 }
          cleanup
  br label %332

323:                                              ; preds = %292, %287, %284, %301
  %324 = landingpad { ptr, i32 }
          cleanup
  %325 = load ptr, ptr %1, align 8, !tbaa !61
  %326 = getelementptr inbounds ptr, ptr %325, i64 24
  %327 = load ptr, ptr %326, align 8
  %328 = invoke noundef zeroext i1 %327(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %273)
          to label %332 unwind label %329

329:                                              ; preds = %323
  %330 = landingpad { ptr, i32 }
          catch ptr null
  %331 = extractvalue { ptr, i32 } %330, 0
  tail call void @__clang_call_terminate(ptr %331) #15
  unreachable

332:                                              ; preds = %220, %222, %323, %321
  %333 = phi { ptr, i32 } [ %221, %220 ], [ %223, %222 ], [ %322, %321 ], [ %324, %323 ]
  %334 = load ptr, ptr %1, align 8, !tbaa !61
  %335 = getelementptr inbounds ptr, ptr %334, i64 24
  %336 = load ptr, ptr %335, align 8
  %337 = invoke noundef zeroext i1 %336(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %169)
          to label %587 unwind label %338

338:                                              ; preds = %332
  %339 = landingpad { ptr, i32 }
          catch ptr null
  %340 = extractvalue { ptr, i32 } %339, 0
  tail call void @__clang_call_terminate(ptr %340) #15
  unreachable

341:                                              ; preds = %43
  %342 = load ptr, ptr %1, align 8, !tbaa !61
  %343 = getelementptr inbounds ptr, ptr %342, i64 62
  %344 = load ptr, ptr %343, align 8
  %345 = invoke noundef zeroext i1 %344(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %346 unwind label %82, !prof !122

346:                                              ; preds = %341
  br i1 %345, label %347, label %543, !prof !114

347:                                              ; preds = %346
  %348 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !103
  %349 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %28, ptr noundef nonnull align 8 dereferenceable(36) %348)
          to label %350 unwind label %82, !prof !114

350:                                              ; preds = %347
  br i1 %349, label %543, label %351, !prof !116

351:                                              ; preds = %350
  %352 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices11s_XMLStringE, align 8, !tbaa !103
  %353 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %28, i64 0, i32 1
  %354 = load i64, ptr %353, align 8, !tbaa !90
  %355 = icmp eq i64 %354, 0
  %356 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %28, i64 0, i32 3
  %357 = load ptr, ptr %356, align 8
  %358 = select i1 %355, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %357, !prof !116
  %359 = load i32, ptr %37, align 8, !tbaa !117
  %360 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %352, i64 0, i32 1
  %361 = load i64, ptr %360, align 8, !tbaa !90
  %362 = icmp eq i64 %361, 0
  %363 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %352, i64 0, i32 3
  %364 = load ptr, ptr %363, align 8
  %365 = select i1 %362, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %364, !prof !116
  %366 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %352, i64 0, i32 1
  %367 = load i32, ptr %366, align 8, !tbaa !117
  %368 = invoke noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %358, i32 noundef %359, ptr noundef %365, i32 noundef %367)
          to label %369 unwind label %82, !prof !114

369:                                              ; preds = %351
  br i1 %368, label %544, label %370, !prof !116

370:                                              ; preds = %369
  %371 = load i32, ptr %37, align 8, !tbaa !117
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %389, label %373, !prof !116

373:                                              ; preds = %370
  %374 = load i64, ptr %353, align 8, !tbaa !90
  %375 = icmp eq i64 %374, 0
  %376 = load ptr, ptr %356, align 8
  %377 = select i1 %375, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %376, !prof !116
  br label %378

378:                                              ; preds = %381, %373
  %379 = phi ptr [ %377, %373 ], [ %382, %381 ]
  %380 = load i16, ptr %379, align 2, !tbaa !119
  switch i16 %380, label %381 [
    i16 58, label %383
    i16 0, label %383
  ], !prof !123

381:                                              ; preds = %378
  %382 = getelementptr inbounds i16, ptr %379, i64 1
  br label %378, !llvm.loop !120

383:                                              ; preds = %378, %378
  %384 = ptrtoint ptr %379 to i64
  %385 = ptrtoint ptr %377 to i64
  %386 = sub i64 %384, %385
  %387 = lshr exact i64 %386, 1
  %388 = trunc i64 %387 to i32
  br label %389

389:                                              ; preds = %383, %370
  %390 = phi i32 [ %388, %383 ], [ 0, %370 ]
  %391 = icmp ult i32 %390, %38
  br i1 %391, label %392, label %544, !prof !116

392:                                              ; preds = %389
  %393 = load ptr, ptr %1, align 8, !tbaa !61
  %394 = getelementptr inbounds ptr, ptr %393, i64 23
  %395 = load ptr, ptr %394, align 8
  %396 = invoke noundef nonnull align 8 dereferenceable(36) ptr %395(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %397 unwind label %446

397:                                              ; preds = %392
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %28, ptr noundef nonnull align 8 dereferenceable(36) %396, i32 noundef 0, i32 noundef %390)
          to label %398 unwind label %448

398:                                              ; preds = %397
  %399 = load ptr, ptr %0, align 8, !tbaa !61
  %400 = getelementptr inbounds ptr, ptr %399, i64 2
  %401 = load ptr, ptr %400, align 8
  %402 = invoke noundef ptr %401(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %396)
          to label %403 unwind label %450

403:                                              ; preds = %398
  %404 = icmp eq ptr %402, null
  br i1 %404, label %454, label %405

405:                                              ; preds = %403
  %406 = icmp eq ptr %402, %42
  br i1 %406, label %413, label %407

407:                                              ; preds = %405
  %408 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(32) %402)
          to label %409 unwind label %450

409:                                              ; preds = %407
  %410 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %402, i64 0, i32 1
  %411 = load i32, ptr %410, align 8, !tbaa !117
  %412 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %42, i64 0, i32 1
  store i32 %411, ptr %412, align 8, !tbaa !117
  br label %413

413:                                              ; preds = %409, %405
  %414 = load ptr, ptr %1, align 8, !tbaa !61
  %415 = getelementptr inbounds ptr, ptr %414, i64 72
  %416 = load ptr, ptr %415, align 8
  %417 = invoke noundef ptr %416(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %396)
          to label %418 unwind label %452

418:                                              ; preds = %413
  %419 = icmp eq ptr %417, null
  br i1 %419, label %454, label %420

420:                                              ; preds = %418
  %421 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %402, ptr noundef nonnull align 8 dereferenceable(36) %417)
          to label %422 unwind label %452

422:                                              ; preds = %420
  br i1 %421, label %454, label %423

423:                                              ; preds = %422
  %424 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %396, i64 0, i32 1
  %425 = load i64, ptr %424, align 8, !tbaa !90
  %426 = icmp eq i64 %425, 0
  br i1 %426, label %430, label %427

427:                                              ; preds = %423
  %428 = load i64, ptr %424, align 8, !tbaa !90
  %429 = sub i64 %428, %425
  store i64 %429, ptr %424, align 8, !tbaa !90
  br label %430

430:                                              ; preds = %427, %423
  %431 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %396, i64 0, i32 1
  store i32 0, ptr %431, align 8, !tbaa !117
  %432 = load ptr, ptr %1, align 8, !tbaa !61
  %433 = getelementptr inbounds ptr, ptr %432, i64 74
  %434 = load ptr, ptr %433, align 8
  invoke void %434(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %396)
          to label %435 unwind label %452

435:                                              ; preds = %430
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 0, i32 noundef %390)
          to label %436 unwind label %452

436:                                              ; preds = %435
  %437 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 3
  %438 = load ptr, ptr %437, align 8, !tbaa !105
  %439 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %396, i64 0, i32 3
  %440 = load ptr, ptr %439, align 8
  %441 = load i64, ptr %424, align 8, !tbaa !90
  %442 = icmp eq i64 %441, 0
  %443 = getelementptr inbounds i16, ptr %440, i64 %441
  %444 = getelementptr inbounds i16, ptr %443, i64 -1
  %445 = select i1 %442, ptr %440, ptr %444
  invoke void @_ZN11xalanc_1_1014XalanDOMString6insertEPtS1_S1_(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %438, ptr noundef %440, ptr noundef %445)
          to label %454 unwind label %452

446:                                              ; preds = %392
  %447 = landingpad { ptr, i32 }
          cleanup
  br label %587

448:                                              ; preds = %397
  %449 = landingpad { ptr, i32 }
          cleanup
  br label %534

450:                                              ; preds = %407, %458, %398
  %451 = landingpad { ptr, i32 }
          cleanup
  br label %534

452:                                              ; preds = %420, %436, %435, %430, %413
  %453 = landingpad { ptr, i32 }
          cleanup
  br label %534

454:                                              ; preds = %418, %422, %436, %403
  %455 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %42, i64 0, i32 1
  %456 = load i32, ptr %455, align 8, !tbaa !117
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %459

458:                                              ; preds = %454
  invoke void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 27, ptr noundef nonnull align 8 dereferenceable(36) %396)
          to label %526 unwind label %450

459:                                              ; preds = %454
  %460 = load ptr, ptr %1, align 8, !tbaa !61
  %461 = getelementptr inbounds ptr, ptr %460, i64 71
  %462 = load ptr, ptr %461, align 8
  %463 = invoke noundef ptr %462(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %42)
          to label %464 unwind label %513

464:                                              ; preds = %459
  %465 = icmp eq ptr %463, null
  br i1 %465, label %466, label %526

466:                                              ; preds = %464
  %467 = load ptr, ptr %1, align 8, !tbaa !61
  %468 = getelementptr inbounds ptr, ptr %467, i64 23
  %469 = load ptr, ptr %468, align 8
  %470 = invoke noundef nonnull align 8 dereferenceable(36) ptr %469(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %471 unwind label %515

471:                                              ; preds = %466
  %472 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices33s_XMLNamespaceWithSeparatorLengthE, align 8, !tbaa !103
  %473 = load i32, ptr %472, align 4, !tbaa !121
  %474 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %396, i64 0, i32 1
  %475 = load i32, ptr %474, align 8, !tbaa !117
  %476 = add i32 %473, 2
  %477 = add i32 %476, %475
  %478 = zext i32 %477 to i64
  %479 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %470, i64 0, i32 2
  %480 = load i64, ptr %479, align 8, !tbaa !104
  %481 = icmp ult i64 %480, %478
  br i1 %481, label %482, label %483

482:                                              ; preds = %471
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %470, i64 noundef %478)
          to label %483 unwind label %517

483:                                              ; preds = %471, %482
  %484 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE, align 8, !tbaa !103
  %485 = icmp eq ptr %484, %470
  br i1 %485, label %492, label %486

486:                                              ; preds = %483
  %487 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %470, ptr noundef nonnull align 8 dereferenceable(32) %484)
          to label %488 unwind label %517

488:                                              ; preds = %486
  %489 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %484, i64 0, i32 1
  %490 = load i32, ptr %489, align 8, !tbaa !117
  %491 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %470, i64 0, i32 1
  store i32 %490, ptr %491, align 8, !tbaa !117
  br label %492

492:                                              ; preds = %483, %488
  %493 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %396, i64 0, i32 1
  %494 = load i64, ptr %493, align 8, !tbaa !90
  %495 = icmp eq i64 %494, 0
  %496 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %396, i64 0, i32 3
  %497 = load ptr, ptr %496, align 8
  %498 = select i1 %495, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %497
  %499 = load i32, ptr %474, align 8, !tbaa !117
  %500 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %470, ptr noundef %498, i32 noundef %499)
          to label %501 unwind label %517

501:                                              ; preds = %492
  %502 = load ptr, ptr %1, align 8, !tbaa !61
  %503 = getelementptr inbounds ptr, ptr %502, i64 68
  %504 = load ptr, ptr %503, align 8
  invoke void %504(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %470, ptr noundef nonnull align 8 dereferenceable(36) %42)
          to label %505 unwind label %517

505:                                              ; preds = %501
  %506 = load ptr, ptr %1, align 8, !tbaa !61
  %507 = getelementptr inbounds ptr, ptr %506, i64 24
  %508 = load ptr, ptr %507, align 8
  %509 = invoke noundef zeroext i1 %508(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %470)
          to label %526 unwind label %510

510:                                              ; preds = %505
  %511 = landingpad { ptr, i32 }
          catch ptr null
  %512 = extractvalue { ptr, i32 } %511, 0
  tail call void @__clang_call_terminate(ptr %512) #15
  unreachable

513:                                              ; preds = %459
  %514 = landingpad { ptr, i32 }
          cleanup
  br label %534

515:                                              ; preds = %466
  %516 = landingpad { ptr, i32 }
          cleanup
  br label %534

517:                                              ; preds = %492, %486, %482, %501
  %518 = landingpad { ptr, i32 }
          cleanup
  %519 = load ptr, ptr %1, align 8, !tbaa !61
  %520 = getelementptr inbounds ptr, ptr %519, i64 24
  %521 = load ptr, ptr %520, align 8
  %522 = invoke noundef zeroext i1 %521(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %470)
          to label %534 unwind label %523

523:                                              ; preds = %517
  %524 = landingpad { ptr, i32 }
          catch ptr null
  %525 = extractvalue { ptr, i32 } %524, 0
  tail call void @__clang_call_terminate(ptr %525) #15
  unreachable

526:                                              ; preds = %458, %464, %505
  %527 = load ptr, ptr %1, align 8, !tbaa !61
  %528 = getelementptr inbounds ptr, ptr %527, i64 24
  %529 = load ptr, ptr %528, align 8
  %530 = invoke noundef zeroext i1 %529(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %396)
          to label %544 unwind label %531

531:                                              ; preds = %526
  %532 = landingpad { ptr, i32 }
          catch ptr null
  %533 = extractvalue { ptr, i32 } %532, 0
  tail call void @__clang_call_terminate(ptr %533) #15
  unreachable

534:                                              ; preds = %517, %448, %513, %452, %450, %515
  %535 = phi { ptr, i32 } [ %449, %448 ], [ %451, %450 ], [ %453, %452 ], [ %514, %513 ], [ %516, %515 ], [ %518, %517 ]
  %536 = load ptr, ptr %1, align 8, !tbaa !61
  %537 = getelementptr inbounds ptr, ptr %536, i64 24
  %538 = load ptr, ptr %537, align 8
  %539 = invoke noundef zeroext i1 %538(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %396)
          to label %587 unwind label %540

540:                                              ; preds = %534
  %541 = landingpad { ptr, i32 }
          catch ptr null
  %542 = extractvalue { ptr, i32 } %541, 0
  tail call void @__clang_call_terminate(ptr %542) #15
  unreachable

543:                                              ; preds = %350, %346
  invoke void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 48)
          to label %544 unwind label %82

544:                                              ; preds = %76, %526, %313, %156, %369, %74, %389, %543
  %545 = phi i32 [ 0, %543 ], [ %390, %389 ], [ %38, %74 ], [ %38, %369 ], [ %70, %156 ], [ %70, %313 ], [ %390, %526 ], [ %38, %76 ]
  %546 = icmp ne i32 %545, %38
  %547 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %42, i64 0, i32 1
  %548 = load i32, ptr %547, align 8
  %549 = icmp eq i32 %548, 0
  %550 = select i1 %546, i1 %549, i1 false, !prof !116
  %551 = load ptr, ptr %1, align 8, !tbaa !61
  %552 = getelementptr inbounds ptr, ptr %551, i64 46
  %553 = load ptr, ptr %552, align 8
  br i1 %550, label %568, label %554, !prof !116

554:                                              ; preds = %544
  invoke void %553(ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true)
          to label %555 unwind label %82, !prof !124

555:                                              ; preds = %554
  %556 = load ptr, ptr %1, align 8, !tbaa !61
  %557 = getelementptr inbounds ptr, ptr %556, i64 44
  %558 = load ptr, ptr %557, align 8
  invoke void %558(ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true)
          to label %559 unwind label %82, !prof !125

559:                                              ; preds = %555
  %560 = load ptr, ptr %1, align 8, !tbaa !61
  %561 = getelementptr inbounds ptr, ptr %560, i64 163
  %562 = load ptr, ptr %561, align 8
  %563 = invoke noundef nonnull align 8 dereferenceable(36) ptr %562(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %564 unwind label %566, !prof !109

564:                                              ; preds = %559
  %565 = invoke noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %563)
          to label %569 unwind label %566, !prof !114

566:                                              ; preds = %564, %559
  %567 = landingpad { ptr, i32 }
          cleanup
  br label %587

568:                                              ; preds = %544
  invoke void %553(ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext false)
          to label %569 unwind label %82

569:                                              ; preds = %564, %568
  %570 = phi ptr [ %565, %564 ], [ undef, %568 ]
  %571 = load ptr, ptr %1, align 8, !tbaa !61
  %572 = getelementptr inbounds ptr, ptr %571, i64 24
  %573 = load ptr, ptr %572, align 8
  %574 = invoke noundef zeroext i1 %573(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %42)
          to label %578 unwind label %575, !prof !126

575:                                              ; preds = %569
  %576 = landingpad { ptr, i32 }
          catch ptr null
  %577 = extractvalue { ptr, i32 } %576, 0
  tail call void @__clang_call_terminate(ptr %577) #15
  unreachable

578:                                              ; preds = %569
  %579 = load ptr, ptr %1, align 8, !tbaa !61
  %580 = getelementptr inbounds ptr, ptr %579, i64 24
  %581 = load ptr, ptr %580, align 8
  %582 = invoke noundef zeroext i1 %581(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %28)
          to label %586 unwind label %583, !prof !126

583:                                              ; preds = %578
  %584 = landingpad { ptr, i32 }
          catch ptr null
  %585 = extractvalue { ptr, i32 } %584, 0
  tail call void @__clang_call_terminate(ptr %585) #15
  unreachable

586:                                              ; preds = %578
  br i1 %550, label %606, label %611, !prof !116

587:                                              ; preds = %82, %566, %131, %332, %218, %534, %446
  %588 = phi { ptr, i32 } [ %567, %566 ], [ %83, %82 ], [ %132, %131 ], [ %219, %218 ], [ %333, %332 ], [ %447, %446 ], [ %535, %534 ]
  %589 = load ptr, ptr %1, align 8, !tbaa !61
  %590 = getelementptr inbounds ptr, ptr %589, i64 24
  %591 = load ptr, ptr %590, align 8
  %592 = invoke noundef zeroext i1 %591(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %42)
          to label %596 unwind label %593

593:                                              ; preds = %587
  %594 = landingpad { ptr, i32 }
          catch ptr null
  %595 = extractvalue { ptr, i32 } %594, 0
  tail call void @__clang_call_terminate(ptr %595) #15
  unreachable

596:                                              ; preds = %78, %587, %80
  %597 = phi { ptr, i32 } [ %79, %78 ], [ %81, %80 ], [ %588, %587 ]
  %598 = load ptr, ptr %1, align 8, !tbaa !61
  %599 = getelementptr inbounds ptr, ptr %598, i64 24
  %600 = load ptr, ptr %599, align 8
  %601 = invoke noundef zeroext i1 %600(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %28)
          to label %605 unwind label %602

602:                                              ; preds = %596
  %603 = landingpad { ptr, i32 }
          catch ptr null
  %604 = extractvalue { ptr, i32 } %603, 0
  tail call void @__clang_call_terminate(ptr %604) #15
  unreachable

605:                                              ; preds = %596
  resume { ptr, i32 } %597

606:                                              ; preds = %586, %20
  %607 = load ptr, ptr %1, align 8, !tbaa !61
  %608 = getelementptr inbounds ptr, ptr %607, i64 165
  %609 = load ptr, ptr %608, align 8
  %610 = tail call noundef nonnull align 8 dereferenceable(36) ptr %609(ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %611

611:                                              ; preds = %586, %606
  %612 = phi ptr [ null, %606 ], [ %570, %586 ]
  ret ptr %612
}

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #7 comdat align 2 !prof !127 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !112

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !113
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 0, i32 noundef -1)
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %6, i32 noundef %10)
  br label %13

12:                                               ; preds = %4
  tail call void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %13

13:                                               ; preds = %12, %8
  ret void
}

declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName12isValidQNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMString6insertEPtS1_S1_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1013ElemAttribute10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #7 align 2 !prof !108 {
  %3 = load ptr, ptr %1, align 8, !tbaa !61
  %4 = getelementptr inbounds ptr, ptr %3, i64 47
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !128
  br i1 %6, label %7, label %23, !prof !114

7:                                                ; preds = %2
  tail call void @_ZNK11xalanc_1_1019ElemTemplateElement19endChildrenToStringERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %8 = load ptr, ptr %1, align 8, !tbaa !61
  %9 = getelementptr inbounds ptr, ptr %8, i64 165
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !129
  %12 = load ptr, ptr %1, align 8, !tbaa !61
  %13 = getelementptr inbounds ptr, ptr %12, i64 165
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef nonnull align 8 dereferenceable(36) ptr %14(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !129
  %16 = load ptr, ptr %1, align 8, !tbaa !61
  %17 = getelementptr inbounds ptr, ptr %16, i64 68
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef nonnull align 8 dereferenceable(36) %11), !prof !130
  %19 = load ptr, ptr %1, align 8, !tbaa !61
  %20 = getelementptr inbounds ptr, ptr %19, i64 45
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef zeroext i1 %21(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !131
  br label %23

23:                                               ; preds = %7, %2
  ret void
}

declare void @_ZNK11xalanc_1_1019ElemTemplateElement19endChildrenToStringERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1013ElemAttribute16childTypeAllowedEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #6 align 2 !prof !60 {
  %3 = icmp ult i32 %1, 37
  %4 = zext nneg i32 %1 to i37
  %5 = lshr i37 -64910964170, %4
  %6 = and i37 %5, 1
  %7 = icmp ne i37 %6, 0
  %8 = select i1 %3, i1 %7, i1 false
  ret i1 %8
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

declare void @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

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

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !107 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !132 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !133

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !104
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !90
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !134

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %12 = load ptr, ptr %0, align 8, !tbaa !106
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !106
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !90
  %16 = load i64, ptr %6, align 8, !tbaa !104
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !105
  %19 = load ptr, ptr %3, align 8, !tbaa !106
  store ptr %19, ptr %0, align 8, !tbaa !106
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !90
  store i64 %21, ptr %14, align 8, !tbaa !90
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !104
  store i64 %23, ptr %6, align 8, !tbaa !104
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !105
  store ptr %25, ptr %17, align 8, !tbaa !105
  store ptr %13, ptr %3, align 8, !tbaa !106
  store i64 %15, ptr %20, align 8, !tbaa !90
  store i64 %16, ptr %22, align 8, !tbaa !104
  store ptr %18, ptr %24, align 8, !tbaa !105
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !135

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !61
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !136

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #15
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !105
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !90
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !137

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !138

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !105
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !90
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !90
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !105
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !139

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !140
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !141 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  store ptr %2, ptr %0, align 8, !tbaa !106
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !90
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !142

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !106
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !90
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !104
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !61
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !143
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !105
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !105
  %24 = load i64, ptr %9, align 8, !tbaa !90
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !144

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !106
  %28 = load i64, ptr %6, align 8, !tbaa !90
  %29 = load i64, ptr %7, align 8, !tbaa !104
  %30 = load ptr, ptr %8, align 8, !tbaa !105
  %31 = load ptr, ptr %5, align 8, !tbaa !106
  store ptr %31, ptr %0, align 8, !tbaa !106
  %32 = load i64, ptr %14, align 8, !tbaa !90
  store i64 %32, ptr %6, align 8, !tbaa !90
  %33 = load i64, ptr %15, align 8, !tbaa !104
  store i64 %33, ptr %7, align 8, !tbaa !104
  %34 = load ptr, ptr %21, align 8, !tbaa !105
  store ptr %34, ptr %8, align 8, !tbaa !105
  store ptr %27, ptr %5, align 8, !tbaa !106
  store i64 %28, ptr %14, align 8, !tbaa !90
  store i64 %29, ptr %15, align 8, !tbaa !104
  store ptr %30, ptr %21, align 8, !tbaa !105
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !144

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !61
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !104
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !105
  %50 = load ptr, ptr %5, align 8, !tbaa !106
  %51 = load ptr, ptr %50, align 8, !tbaa !61
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !145

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !61
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !146
  store ptr %65, ptr %8, align 8, !tbaa !105
  store i64 %3, ptr %7, align 8, !tbaa !104
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !147 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !148

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !90
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !105
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !104
  br i1 %18, label %21, label %39, !prof !149

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !150

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !151

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !105
  %28 = load i64, ptr %12, align 8, !tbaa !90
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !119
  store i16 %34, ptr %32, align 2, !tbaa !119
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !152, !llvm.loop !153

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !154

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %42 = load ptr, ptr %0, align 8, !tbaa !106
  store ptr %42, ptr %5, align 8, !tbaa !106
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !90
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !104
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !61
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !155
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !105
  %51 = load i64, ptr %43, align 8, !tbaa !90
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !105
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !156

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !105
  %56 = load i64, ptr %43, align 8, !tbaa !90
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !156

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !105
  %60 = load i64, ptr %43, align 8, !tbaa !90
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !105
  %63 = load i64, ptr %12, align 8, !tbaa !90
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !156

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !106
  %67 = load i64, ptr %12, align 8, !tbaa !90
  %68 = load i64, ptr %19, align 8, !tbaa !104
  %69 = load ptr, ptr %15, align 8, !tbaa !105
  %70 = load ptr, ptr %5, align 8, !tbaa !106
  store ptr %70, ptr %0, align 8, !tbaa !106
  %71 = load i64, ptr %43, align 8, !tbaa !90
  store i64 %71, ptr %12, align 8, !tbaa !90
  %72 = load i64, ptr %44, align 8, !tbaa !104
  store i64 %72, ptr %19, align 8, !tbaa !104
  %73 = load ptr, ptr %50, align 8, !tbaa !105
  store ptr %73, ptr %15, align 8, !tbaa !105
  store ptr %66, ptr %5, align 8, !tbaa !106
  store i64 %67, ptr %43, align 8, !tbaa !90
  store i64 %68, ptr %44, align 8, !tbaa !104
  store ptr %69, ptr %50, align 8, !tbaa !105
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !157

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !61
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !158

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #15
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !104
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !105
  %89 = load ptr, ptr %5, align 8, !tbaa !106
  %90 = load ptr, ptr %89, align 8, !tbaa !61
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !159

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !160

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !160

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !161, !llvm.loop !162

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !163, !llvm.loop !164

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !165
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
  br i1 %123, label %124, label %120, !llvm.loop !166

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
  store i64 %36, ptr %12, align 8, !tbaa !90
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !167 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !104
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !168

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !105
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !119
  store i16 %13, ptr %12, align 2, !tbaa !119
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !90
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %21 = load ptr, ptr %0, align 8, !tbaa !106
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !106
  %24 = load i64, ptr %4, align 8, !tbaa !90
  %25 = load i64, ptr %6, align 8, !tbaa !104
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !105
  %28 = load ptr, ptr %3, align 8, !tbaa !106
  store ptr %28, ptr %0, align 8, !tbaa !106
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !90
  store i64 %30, ptr %4, align 8, !tbaa !90
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !104
  store i64 %32, ptr %6, align 8, !tbaa !104
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !105
  store ptr %34, ptr %26, align 8, !tbaa !105
  store ptr %23, ptr %3, align 8, !tbaa !106
  store i64 %24, ptr %29, align 8, !tbaa !90
  store i64 %25, ptr %31, align 8, !tbaa !104
  store ptr %27, ptr %33, align 8, !tbaa !105
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !61
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !104
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !105
  %52 = load ptr, ptr %3, align 8, !tbaa !106
  %53 = load ptr, ptr %52, align 8, !tbaa !61
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !169 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !106
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !90
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !142

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !106
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !90
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !104
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !61
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !170
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !105
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !105
  %20 = load i64, ptr %5, align 8, !tbaa !90
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !144

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !106
  %24 = load i64, ptr %10, align 8, !tbaa !90
  %25 = load i64, ptr %11, align 8, !tbaa !104
  %26 = load ptr, ptr %17, align 8, !tbaa !105
  store ptr %4, ptr %3, align 8, !tbaa !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !104
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !105
  %33 = load ptr, ptr %3, align 8, !tbaa !106
  %34 = load ptr, ptr %33, align 8, !tbaa !61
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #15
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !145

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !61
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !171
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !106
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !104
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !105
  store ptr %53, ptr %0, align 8, !tbaa !106
  store i64 %52, ptr %5, align 8, !tbaa !90
  store i64 %51, ptr %55, align 8, !tbaa !104
  store ptr %50, ptr %57, align 8, !tbaa !105
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !172

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !61
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !173

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #15
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6insertEjPKtj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind }

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
!35 = !{ptr @_ZN11xalanc_1_1013ElemAttributeC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 3}
!36 = !{ptr @_ZN11xalanc_1_1013ElemAttributeC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 6}
!37 = !{ptr @_ZN11xalanc_1_1013ElemAttributeC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 3}
!38 = !{ptr @_ZN11xalanc_1_1013ElemAttributeC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, i64 3}
!39 = !{ptr @_ZN11xalanc_1_1013ElemAttributeD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, i64 3}
!40 = !{ptr @_ZNK11xalanc_1_1013ElemAttribute12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, i64 40062}
!41 = !{ptr @_ZNK11xalanc_1_1013ElemAttribute12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 40062}
!42 = !{ptr @_ZNK11xalanc_1_1013ElemAttribute12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 40062}
!43 = !{ptr @_ZNK11xalanc_1_1013ElemAttribute12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1010XalanQName12isValidQNameERKNS_14XalanDOMStringE, i64 40062}
!44 = !{ptr @_ZNK11xalanc_1_1013ElemAttribute12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, i64 40062}
!45 = !{ptr @_ZNK11xalanc_1_1013ElemAttribute12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 40062}
!46 = !{ptr @_ZNK11xalanc_1_1013ElemAttribute12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1010startsWithEPKtjS1_j, i64 40062}
!47 = !{ptr @_ZNK11xalanc_1_1013ElemAttribute12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, i64 40062}
!48 = !{ptr @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 157043}
!49 = !{ptr @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 157043}
!50 = !{ptr @_ZNK11xalanc_1_1013ElemAttribute10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19endChildrenToStringERNS_26StylesheetExecutionContextE, i64 40062}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!59 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!60 = !{!"function_entry_count", i64 3}
!61 = !{!62, !62, i64 0}
!62 = !{!"vtable pointer", !63, i64 0}
!63 = !{!"Simple C++ TBAA"}
!64 = !{!"VP", i32 0, i64 3, i64 8253907953441087172, i64 3}
!65 = !{!"branch_weights", i32 1, i32 191}
!66 = !{!67, !70, i64 328}
!67 = !{!"_ZTSN11xalanc_1_1013ElemAttributeE", !68, i64 0, !70, i64 328, !70, i64 336}
!68 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !69, i64 0, !70, i64 8, !72, i64 16, !83, i64 248, !70, i64 256, !70, i64 264, !70, i64 272, !71, i64 280, !84, i64 288, !87, i64 320}
!69 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!70 = !{!"any pointer", !71, i64 0}
!71 = !{!"omnipotent char", !63, i64 0}
!72 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !73, i64 0, !75, i64 32, !76, i64 64, !77, i64 96}
!73 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !70, i64 0, !74, i64 8, !74, i64 16, !70, i64 24}
!74 = !{!"long", !71, i64 0}
!75 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !70, i64 0, !74, i64 8, !74, i64 16, !70, i64 24}
!76 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !70, i64 0, !74, i64 8, !74, i64 16, !70, i64 24}
!77 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !78, i64 0, !79, i64 1, !70, i64 8, !80, i64 16, !74, i64 24, !74, i64 32, !81, i64 40, !81, i64 64, !82, i64 88, !74, i64 120, !74, i64 128}
!78 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!79 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!80 = !{!"float", !71, i64 0}
!81 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !70, i64 0, !70, i64 8, !70, i64 16}
!82 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !70, i64 0, !74, i64 8, !74, i64 16, !70, i64 24}
!83 = !{!"int", !71, i64 0}
!84 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !85, i64 0, !74, i64 8, !74, i64 16, !70, i64 24}
!85 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !86, i64 0}
!86 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!87 = !{!"short", !71, i64 0}
!88 = !{!"branch_weights", i32 0, i32 3}
!89 = !{!"VP", i32 0, i64 3, i64 5829949526982853143, i64 3}
!90 = !{!91, !74, i64 8}
!91 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !70, i64 0, !74, i64 8, !74, i64 16, !70, i64 24}
!92 = !{!"branch_weights", i32 3, i32 0}
!93 = !{!"VP", i32 0, i64 3, i64 -5610273550909442482, i64 3}
!94 = !{!"VP", i32 0, i64 3, i64 -7250213707570638104, i64 3}
!95 = !{!"VP", i32 0, i64 3, i64 362171021796504155, i64 3}
!96 = !{!67, !70, i64 336}
!97 = !{!"branch_weights", i32 191, i32 1}
!98 = distinct !{!98, !99, !100}
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !{!102, !70, i64 8}
!102 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !70, i64 8}
!103 = !{!70, !70, i64 0}
!104 = !{!91, !74, i64 16}
!105 = !{!91, !70, i64 24}
!106 = !{!91, !70, i64 0}
!107 = !{!"function_entry_count", i64 0}
!108 = !{!"function_entry_count", i64 40062}
!109 = !{!"VP", i32 0, i64 40062, i64 688881455612636410, i64 40062}
!110 = !{!111, !70, i64 24}
!111 = !{!"_ZTSN11xalanc_1_103AVTE", !70, i64 8, !74, i64 16, !70, i64 24, !83, i64 32, !70, i64 40}
!112 = !{!"branch_weights", i32 0, i32 197105}
!113 = !{!111, !83, i64 32}
!114 = !{!"branch_weights", i32 40062, i32 0}
!115 = !{!"VP", i32 0, i64 40062, i64 513632834810131310, i64 40062}
!116 = !{!"branch_weights", i32 0, i32 40062}
!117 = !{!118, !83, i64 32}
!118 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !91, i64 0, !83, i64 32}
!119 = !{!87, !87, i64 0}
!120 = distinct !{!120, !99, !100}
!121 = !{!83, !83, i64 0}
!122 = !{!"VP", i32 0, i64 40062, i64 5461461034800206152, i64 40062}
!123 = !{!"branch_weights", i32 160248, i32 0, i32 40062}
!124 = !{!"VP", i32 0, i64 40062, i64 5602088404319307775, i64 40062}
!125 = !{!"VP", i32 0, i64 40062, i64 -7804284886123524543, i64 40062}
!126 = !{!"VP", i32 0, i64 40062, i64 1667259618122374371, i64 40062}
!127 = !{!"function_entry_count", i64 157043}
!128 = !{!"VP", i32 0, i64 40062, i64 2485769753472079356, i64 40062}
!129 = !{!"VP", i32 0, i64 40062, i64 5228007125839394368, i64 40062}
!130 = !{!"VP", i32 0, i64 40062, i64 -3500381797682012745, i64 40062}
!131 = !{!"VP", i32 0, i64 40062, i64 -4714310272649002270, i64 40062}
!132 = !{!"function_entry_count", i64 41614}
!133 = !{!"branch_weights", i32 0, i32 41614}
!134 = !{!"branch_weights", i32 12, i32 41602}
!135 = !{!"branch_weights", i32 5, i32 7}
!136 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!137 = !{!"branch_weights", i32 354, i32 41248}
!138 = !{!"branch_weights", i32 40889, i32 359}
!139 = !{!"branch_weights", i32 40581, i32 1021}
!140 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!141 = !{!"function_entry_count", i64 22}
!142 = !{!"branch_weights", i32 64551590, i32 18}
!143 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!144 = !{!"branch_weights", i32 18, i32 0}
!145 = !{!"branch_weights", i32 4, i32 64551586}
!146 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!147 = !{!"function_entry_count", i64 155828046}
!148 = !{!"branch_weights", i32 0, i32 155828046}
!149 = !{!"branch_weights", i32 133170777, i32 22657269}
!150 = !{!"branch_weights", i32 20, i32 133170757}
!151 = !{!"branch_weights", i32 1, i32 19024395}
!152 = !{!"branch_weights", i32 19024395, i32 -26420601}
!153 = distinct !{!153, !99, !100}
!154 = !{!"branch_weights", i32 20748786, i32 1908483}
!155 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!156 = !{!"branch_weights", i32 20748786, i32 0}
!157 = !{!"branch_weights", i32 0, i32 20748786}
!158 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!159 = !{!"branch_weights", i32 0, i32 1908483}
!160 = !{!"branch_weights", i32 1, i32 1908482}
!161 = !{!"branch_weights", i32 1908482, i32 49797853}
!162 = distinct !{!162, !99, !100}
!163 = !{!"branch_weights", i32 1908482, i32 1}
!164 = distinct !{!164, !99, !100}
!165 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!166 = distinct !{!166, !99, !100}
!167 = !{!"function_entry_count", i64 124150652}
!168 = !{!"branch_weights", i32 124150652, i32 0}
!169 = !{!"function_entry_count", i64 64551586}
!170 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!171 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!172 = !{!"branch_weights", i32 42418193, i32 22133393}
!173 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}

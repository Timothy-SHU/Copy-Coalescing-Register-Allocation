; ModuleID = 'ElemElement.cpp'
source_filename = "ElemElement.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElemElement" = type { %"class.xalanc_1_10::ElemUse", ptr, ptr }
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
%"class.xalanc_1_10::AVT" = type { ptr, ptr, i64, ptr, i32, ptr }

$_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

@_ZTVN11xalanc_1_1011ElemElementE = dso_local unnamed_addr constant { [41 x ptr] } { [41 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1011ElemElementE, ptr @_ZN11xalanc_1_1011ElemElementD2Ev, ptr @_ZN11xalanc_1_1011ElemElementD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1011ElemElement12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1011ElemElement10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1011ElemElement14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_107ElemUse16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_107ElemUse25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_107ElemUse26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1011ElemElement19executeChildElementERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1011ElemElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_, ptr @_ZNK11xalanc_1_107ElemUse12evaluateAVTsERNS_26StylesheetExecutionContextE] }, align 8
@_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants18ATTRNAME_NAMESPACEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants35ELEMNAME_ELEMENT_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE = external global %"class.xalanc_1_10::XalanDOMString", align 8
@_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1011ElemElementE = dso_local constant [29 x i8] c"N11xalanc_1_1011ElemElementE\00", align 1
@_ZTIN11xalanc_1_107ElemUseE = external constant ptr
@_ZTIN11xalanc_1_1011ElemElementE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1011ElemElementE, ptr @_ZTIN11xalanc_1_107ElemUseE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1011ElemElementC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1011ElemElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_1011ElemElementD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1011ElemElementD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011ElemElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  tail call void @_ZN11xalanc_1_107ElemUseC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %4, i32 noundef %5, i32 noundef 28)
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTVN11xalanc_1_1011ElemElementE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemElement", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemElement", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %9 = load ptr, ptr %3, align 8, !tbaa !47
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %13 unwind label %28

13:                                               ; preds = %6
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %16, i64 0, i32 1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %16, i64 0, i32 3
  %19 = load ptr, ptr @_ZN11xalanc_1_109Constants18ATTRNAME_NAMESPACEE, align 8
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %19, i64 0, i32 1
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %19, i64 0, i32 3
  %22 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_ELEMENT_WITH_PREFIX_STRINGE, align 8
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %22, i64 0, i32 1
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %22, i64 0, i32 3
  br label %30

25:                                               ; preds = %113, %13
  %26 = load ptr, ptr %7, align 8, !tbaa !50
  %27 = icmp eq ptr %26, null
  br i1 %27, label %116, label %119

28:                                               ; preds = %116, %6
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %120

30:                                               ; preds = %15, %113
  %31 = phi i32 [ 0, %15 ], [ %114, %113 ]
  %32 = load ptr, ptr %3, align 8, !tbaa !47
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %31)
          to label %36 unwind label %63

36:                                               ; preds = %30
  %37 = load i64, ptr %17, align 8, !tbaa !73
  %38 = icmp eq i64 %37, 0
  %39 = load ptr, ptr %18, align 8
  %40 = select i1 %38, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %39
  %41 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %40)
          to label %42 unwind label %63

42:                                               ; preds = %36
  %43 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %35)
          to label %44 unwind label %63

44:                                               ; preds = %42
  %45 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %40, i32 noundef %41, ptr noundef %35, i32 noundef %43)
          to label %46 unwind label %63

46:                                               ; preds = %44
  br i1 %45, label %47, label %65

47:                                               ; preds = %46
  %48 = load ptr, ptr %0, align 8, !tbaa !47
  %49 = getelementptr inbounds ptr, ptr %48, i64 4
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %52 unwind label %63

52:                                               ; preds = %47
  %53 = load ptr, ptr %3, align 8, !tbaa !47
  %54 = getelementptr inbounds ptr, ptr %53, i64 5
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %31)
          to label %57 unwind label %63

57:                                               ; preds = %52
  %58 = load ptr, ptr %1, align 8, !tbaa !47
  %59 = getelementptr inbounds ptr, ptr %58, i64 35
  %60 = load ptr, ptr %59, align 8
  %61 = invoke noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %51, ptr noundef %35, ptr noundef %56, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %62 unwind label %63

62:                                               ; preds = %57
  store ptr %61, ptr %7, align 8, !tbaa !50
  br label %113

63:                                               ; preds = %73, %71, %65, %44, %42, %36, %108, %102, %95, %92, %86, %81, %76, %57, %52, %47, %30
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %120

65:                                               ; preds = %46
  %66 = load i64, ptr %20, align 8, !tbaa !73
  %67 = icmp eq i64 %66, 0
  %68 = load ptr, ptr %21, align 8
  %69 = select i1 %67, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %68
  %70 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %69)
          to label %71 unwind label %63

71:                                               ; preds = %65
  %72 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %35)
          to label %73 unwind label %63

73:                                               ; preds = %71
  %74 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %69, i32 noundef %70, ptr noundef %35, i32 noundef %72)
          to label %75 unwind label %63

75:                                               ; preds = %73
  br i1 %74, label %76, label %92

76:                                               ; preds = %75
  %77 = load ptr, ptr %0, align 8, !tbaa !47
  %78 = getelementptr inbounds ptr, ptr %77, i64 4
  %79 = load ptr, ptr %78, align 8
  %80 = invoke noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %81 unwind label %63

81:                                               ; preds = %76
  %82 = load ptr, ptr %3, align 8, !tbaa !47
  %83 = getelementptr inbounds ptr, ptr %82, i64 5
  %84 = load ptr, ptr %83, align 8
  %85 = invoke noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %31)
          to label %86 unwind label %63

86:                                               ; preds = %81
  %87 = load ptr, ptr %1, align 8, !tbaa !47
  %88 = getelementptr inbounds ptr, ptr %87, i64 35
  %89 = load ptr, ptr %88, align 8
  %90 = invoke noundef ptr %89(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %80, ptr noundef %35, ptr noundef %85, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %91 unwind label %63

91:                                               ; preds = %86
  store ptr %90, ptr %8, align 8, !tbaa !75
  br label %113

92:                                               ; preds = %75
  %93 = invoke noundef zeroext i1 @_ZN11xalanc_1_107ElemUse23processUseAttributeSetsERNS_29StylesheetConstructionContextEPKtRKN11xercesc_2_713AttributeListEi(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %35, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %31)
          to label %94 unwind label %63

94:                                               ; preds = %92
  br i1 %93, label %113, label %95

95:                                               ; preds = %94
  %96 = load i64, ptr %23, align 8, !tbaa !73
  %97 = icmp eq i64 %96, 0
  %98 = load ptr, ptr %24, align 8
  %99 = select i1 %97, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %98
  %100 = invoke noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %99, ptr noundef %35, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %31, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %101 unwind label %63

101:                                              ; preds = %95
  br i1 %100, label %113, label %102

102:                                              ; preds = %101
  %103 = load ptr, ptr %0, align 8, !tbaa !47
  %104 = getelementptr inbounds ptr, ptr %103, i64 5
  %105 = load ptr, ptr %104, align 8
  %106 = invoke noundef zeroext i1 %105(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %35, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %31, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %107 unwind label %63

107:                                              ; preds = %102
  br i1 %106, label %113, label %108

108:                                              ; preds = %107
  %109 = load i64, ptr %23, align 8, !tbaa !73
  %110 = icmp eq i64 %109, 0
  %111 = load ptr, ptr %24, align 8
  %112 = select i1 %110, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %111
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 74, ptr noundef %112, ptr noundef %35)
          to label %113 unwind label %63

113:                                              ; preds = %91, %108, %107, %101, %94, %62
  %114 = add nuw i32 %31, 1
  %115 = icmp eq i32 %114, %12
  br i1 %115, label %25, label %30, !llvm.loop !76

116:                                              ; preds = %25
  %117 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_ELEMENT_WITH_PREFIX_STRINGE, align 8, !tbaa !79
  %118 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8, !tbaa !79
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 63, ptr noundef nonnull align 8 dereferenceable(36) %117, ptr noundef nonnull align 8 dereferenceable(36) %118)
          to label %119 unwind label %28

119:                                              ; preds = %116, %25
  ret void

120:                                              ; preds = %63, %28
  %121 = phi { ptr, i32 } [ %64, %63 ], [ %29, %28 ]
  tail call void @_ZN11xalanc_1_107ElemUseD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) #14
  resume { ptr, i32 } %121
}

declare void @_ZN11xalanc_1_107ElemUseC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZN11xalanc_1_107ElemUse23processUseAttributeSetsERNS_29StylesheetConstructionContextEPKtRKN11xercesc_2_713AttributeListEi(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_107ElemUseD2Ev(ptr noundef nonnull align 8 dereferenceable(344)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1011ElemElementD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #5 align 2 !prof !46 {
  tail call void @_ZN11xalanc_1_107ElemUseD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1011ElemElementD0Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #5 align 2 !prof !46 {
  tail call void @_ZN11xalanc_1_107ElemUseD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1011ElemElement14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !46 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_ELEMENT_WITH_PREFIX_STRINGE, align 8, !tbaa !79
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1011ElemElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %3 = load ptr, ptr %1, align 8, !tbaa !47
  %4 = getelementptr inbounds ptr, ptr %3, i64 163
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemElement", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  tail call void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %9 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName12isValidQNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %6)
  %10 = xor i1 %9, true
  br i1 %9, label %15, label %11

11:                                               ; preds = %2
  tail call void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 49, ptr noundef nonnull align 8 dereferenceable(36) %6)
  %12 = load ptr, ptr %1, align 8, !tbaa !47
  %13 = getelementptr inbounds ptr, ptr %12, i64 48
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true)
  br label %244

15:                                               ; preds = %2
  %16 = load ptr, ptr %1, align 8, !tbaa !47
  %17 = getelementptr inbounds ptr, ptr %16, i64 23
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef nonnull align 8 dereferenceable(36) ptr %18(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %20 = getelementptr inbounds %"class.xalanc_1_10::ElemElement", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !75
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  invoke void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %26 unwind label %24

24:                                               ; preds = %23
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %234

26:                                               ; preds = %23, %15
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %19, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !80
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !80
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !73
  %35 = icmp eq i64 %34, 0
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = select i1 %35, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %37
  br label %39

39:                                               ; preds = %42, %32
  %40 = phi ptr [ %38, %32 ], [ %43, %42 ]
  %41 = load i16, ptr %40, align 2, !tbaa !82
  switch i16 %41, label %42 [
    i16 58, label %44
    i16 0, label %44
  ]

42:                                               ; preds = %39
  %43 = getelementptr inbounds i16, ptr %40, i64 1
  br label %39, !llvm.loop !83

44:                                               ; preds = %39, %39
  %45 = ptrtoint ptr %40 to i64
  %46 = ptrtoint ptr %38 to i64
  %47 = sub i64 %45, %46
  %48 = lshr exact i64 %47, 1
  %49 = trunc i64 %48 to i32
  br label %50

50:                                               ; preds = %44, %26
  %51 = phi i32 [ %49, %44 ], [ 0, %26 ]
  %52 = icmp eq i32 %51, %30
  %53 = load ptr, ptr %1, align 8, !tbaa !47
  %54 = getelementptr inbounds ptr, ptr %53, i64 23
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef nonnull align 8 dereferenceable(36) ptr %55(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %57 unwind label %66

57:                                               ; preds = %50
  br i1 %52, label %102, label %58

58:                                               ; preds = %57
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %56, i32 noundef 0, i32 noundef %51)
          to label %59 unwind label %68

59:                                               ; preds = %58
  %60 = load ptr, ptr %1, align 8, !tbaa !47
  %61 = getelementptr inbounds ptr, ptr %60, i64 72
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %56)
          to label %64 unwind label %70

64:                                               ; preds = %59
  %65 = icmp ne ptr %63, null
  br i1 %65, label %102, label %72

66:                                               ; preds = %50
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %234

68:                                               ; preds = %204, %202, %121, %105, %58
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %225

70:                                               ; preds = %59
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %225

72:                                               ; preds = %64
  %73 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  %74 = invoke noundef ptr @_ZNK11xalanc_1_1017NamespacesHandler12getNamespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232) %73, ptr noundef nonnull align 8 dereferenceable(36) %56)
          to label %75 unwind label %85

75:                                               ; preds = %72
  %76 = icmp eq ptr %74, null
  %77 = icmp eq i32 %28, 0
  %78 = and i1 %77, %76
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  invoke void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 27, ptr noundef nonnull align 8 dereferenceable(36) %56)
          to label %80 unwind label %85

80:                                               ; preds = %79
  %81 = load ptr, ptr %20, align 8, !tbaa !75
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = add i32 %51, 1
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef 0, i32 noundef %84)
          to label %102 unwind label %85

85:                                               ; preds = %97, %91, %87, %83, %79, %72
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %225

87:                                               ; preds = %80
  invoke void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 49, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %102 unwind label %85

88:                                               ; preds = %75
  %89 = icmp ne ptr %74, null
  %90 = and i1 %77, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !79
  %93 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %56, ptr noundef nonnull align 8 dereferenceable(36) %92)
          to label %94 unwind label %85

94:                                               ; preds = %91
  %95 = icmp eq ptr %74, %19
  %96 = or i1 %95, %93
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %74)
          to label %99 unwind label %85

99:                                               ; preds = %97
  %100 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %74, i64 0, i32 1
  %101 = load i32, ptr %100, align 8, !tbaa !80
  store i32 %101, ptr %27, align 8, !tbaa !80
  br label %102

102:                                              ; preds = %87, %99, %64, %88, %94, %83, %57
  %103 = phi i1 [ false, %57 ], [ false, %83 ], [ false, %94 ], [ false, %88 ], [ %65, %64 ], [ false, %99 ], [ false, %87 ]
  %104 = phi i1 [ %10, %57 ], [ %10, %83 ], [ %10, %94 ], [ %10, %88 ], [ %10, %64 ], [ %10, %99 ], [ true, %87 ]
  br i1 %104, label %204, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !73
  %108 = icmp eq i64 %107, 0
  %109 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8
  %111 = select i1 %108, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %110
  %112 = load ptr, ptr %1, align 8, !tbaa !47
  %113 = getelementptr inbounds ptr, ptr %112, i64 101
  %114 = load ptr, ptr %113, align 8
  invoke void %114(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %111)
          to label %115 unwind label %68

115:                                              ; preds = %105
  %116 = load ptr, ptr %20, align 8, !tbaa !75
  %117 = icmp eq ptr %116, null
  %118 = or i1 %52, %103
  %119 = and i1 %118, %117
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  br i1 %52, label %121, label %201

121:                                              ; preds = %120
  invoke void @_ZNK11xalanc_1_1011ElemElement21fixupDefaultNamespaceERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %201 unwind label %68

122:                                              ; preds = %115
  br i1 %52, label %123, label %174

123:                                              ; preds = %122
  %124 = icmp eq i32 %28, 0
  br i1 %124, label %142, label %125

125:                                              ; preds = %123
  %126 = load ptr, ptr %1, align 8, !tbaa !47
  %127 = getelementptr inbounds ptr, ptr %126, i64 72
  %128 = load ptr, ptr %127, align 8
  %129 = invoke noundef ptr %128(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE)
          to label %130 unwind label %140

130:                                              ; preds = %125
  %131 = icmp eq ptr %129, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %130
  %133 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %129, ptr noundef nonnull align 8 dereferenceable(36) %19)
          to label %134 unwind label %140

134:                                              ; preds = %132
  br i1 %133, label %201, label %135

135:                                              ; preds = %134, %130
  %136 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !79
  %137 = load ptr, ptr %1, align 8, !tbaa !47
  %138 = getelementptr inbounds ptr, ptr %137, i64 68
  %139 = load ptr, ptr %138, align 8
  invoke void %139(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %136, ptr noundef nonnull align 8 dereferenceable(36) %19)
          to label %201 unwind label %140

140:                                              ; preds = %132, %135, %125
  %141 = landingpad { ptr, i32 }
          cleanup
  br label %225

142:                                              ; preds = %123
  %143 = load ptr, ptr %0, align 8, !tbaa !47
  %144 = getelementptr inbounds ptr, ptr %143, i64 30
  %145 = load ptr, ptr %144, align 8
  %146 = invoke noundef ptr %145(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %147 unwind label %167

147:                                              ; preds = %142
  %148 = icmp eq ptr %146, null
  br i1 %148, label %155, label %149

149:                                              ; preds = %147
  %150 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %146, i64 0, i32 2
  %151 = invoke noundef ptr @_ZNK11xalanc_1_1017NamespacesHandler12getNamespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232) %150, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE)
          to label %152 unwind label %167

152:                                              ; preds = %149
  %153 = icmp eq ptr %151, null
  %154 = select i1 %153, ptr @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE, ptr %151
  br label %155

155:                                              ; preds = %152, %147
  %156 = phi ptr [ %154, %152 ], [ @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE, %147 ]
  %157 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %156, i64 0, i32 1
  %158 = load i32, ptr %157, align 8, !tbaa !80
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %155
  %161 = load ptr, ptr %1, align 8, !tbaa !47
  %162 = getelementptr inbounds ptr, ptr %161, i64 72
  %163 = load ptr, ptr %162, align 8
  %164 = invoke noundef ptr %163(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE)
          to label %165 unwind label %167

165:                                              ; preds = %160
  %166 = icmp eq ptr %164, null
  br i1 %166, label %201, label %169

167:                                              ; preds = %169, %149, %142, %160
  %168 = landingpad { ptr, i32 }
          cleanup
  br label %225

169:                                              ; preds = %155, %165
  %170 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !79
  %171 = load ptr, ptr %1, align 8, !tbaa !47
  %172 = getelementptr inbounds ptr, ptr %171, i64 68
  %173 = load ptr, ptr %172, align 8
  invoke void %173(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %170, ptr noundef nonnull align 8 dereferenceable(36) %19)
          to label %201 unwind label %167

174:                                              ; preds = %122
  %175 = load ptr, ptr %1, align 8, !tbaa !47
  %176 = getelementptr inbounds ptr, ptr %175, i64 72
  %177 = load ptr, ptr %176, align 8
  %178 = invoke noundef ptr %177(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %56)
          to label %179 unwind label %199

179:                                              ; preds = %174
  %180 = icmp eq ptr %178, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %179
  %182 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %178, ptr noundef nonnull align 8 dereferenceable(36) %19)
          to label %183 unwind label %199

183:                                              ; preds = %181
  br i1 %182, label %201, label %184

184:                                              ; preds = %183, %179
  %185 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE, align 8, !tbaa !79
  %186 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %185, i64 0, i32 1
  %187 = load i64, ptr %186, align 8, !tbaa !73
  %188 = icmp eq i64 %187, 0
  %189 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %185, i64 0, i32 3
  %190 = load ptr, ptr %189, align 8
  %191 = select i1 %188, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %190
  %192 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %185, i64 0, i32 1
  %193 = load i32, ptr %192, align 8, !tbaa !80
  %194 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6insertEjPKtj(ptr noundef nonnull align 8 dereferenceable(36) %56, i32 noundef 0, ptr noundef %191, i32 noundef %193)
          to label %195 unwind label %199

195:                                              ; preds = %184
  %196 = load ptr, ptr %1, align 8, !tbaa !47
  %197 = getelementptr inbounds ptr, ptr %196, i64 68
  %198 = load ptr, ptr %197, align 8
  invoke void %198(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %56, ptr noundef nonnull align 8 dereferenceable(36) %19)
          to label %201 unwind label %199

199:                                              ; preds = %184, %181, %195, %174
  %200 = landingpad { ptr, i32 }
          cleanup
  br label %225

201:                                              ; preds = %169, %121, %183, %195, %165, %134, %135, %120
  br i1 %104, label %204, label %202

202:                                              ; preds = %201
  %203 = invoke noundef ptr @_ZNK11xalanc_1_107ElemUse12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %204 unwind label %68

204:                                              ; preds = %202, %201, %102
  %205 = phi i1 [ true, %102 ], [ true, %201 ], [ false, %202 ]
  %206 = load ptr, ptr %1, align 8, !tbaa !47
  %207 = getelementptr inbounds ptr, ptr %206, i64 48
  %208 = load ptr, ptr %207, align 8
  invoke void %208(ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %205)
          to label %209 unwind label %68

209:                                              ; preds = %204
  %210 = load ptr, ptr %1, align 8, !tbaa !47
  %211 = getelementptr inbounds ptr, ptr %210, i64 24
  %212 = load ptr, ptr %211, align 8
  %213 = invoke noundef zeroext i1 %212(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %56)
          to label %217 unwind label %214

214:                                              ; preds = %209
  %215 = landingpad { ptr, i32 }
          catch ptr null
  %216 = extractvalue { ptr, i32 } %215, 0
  tail call void @__clang_call_terminate(ptr %216) #16
  unreachable

217:                                              ; preds = %209
  %218 = load ptr, ptr %1, align 8, !tbaa !47
  %219 = getelementptr inbounds ptr, ptr %218, i64 24
  %220 = load ptr, ptr %219, align 8
  %221 = invoke noundef zeroext i1 %220(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %19)
          to label %244 unwind label %222

222:                                              ; preds = %217
  %223 = landingpad { ptr, i32 }
          catch ptr null
  %224 = extractvalue { ptr, i32 } %223, 0
  tail call void @__clang_call_terminate(ptr %224) #16
  unreachable

225:                                              ; preds = %68, %140, %167, %199, %85, %70
  %226 = phi { ptr, i32 } [ %69, %68 ], [ %141, %140 ], [ %168, %167 ], [ %200, %199 ], [ %86, %85 ], [ %71, %70 ]
  %227 = load ptr, ptr %1, align 8, !tbaa !47
  %228 = getelementptr inbounds ptr, ptr %227, i64 24
  %229 = load ptr, ptr %228, align 8
  %230 = invoke noundef zeroext i1 %229(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %56)
          to label %234 unwind label %231

231:                                              ; preds = %225
  %232 = landingpad { ptr, i32 }
          catch ptr null
  %233 = extractvalue { ptr, i32 } %232, 0
  tail call void @__clang_call_terminate(ptr %233) #16
  unreachable

234:                                              ; preds = %24, %225, %66
  %235 = phi { ptr, i32 } [ %25, %24 ], [ %67, %66 ], [ %226, %225 ]
  %236 = load ptr, ptr %1, align 8, !tbaa !47
  %237 = getelementptr inbounds ptr, ptr %236, i64 24
  %238 = load ptr, ptr %237, align 8
  %239 = invoke noundef zeroext i1 %238(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %19)
          to label %243 unwind label %240

240:                                              ; preds = %234
  %241 = landingpad { ptr, i32 }
          catch ptr null
  %242 = extractvalue { ptr, i32 } %241, 0
  tail call void @__clang_call_terminate(ptr %242) #16
  unreachable

243:                                              ; preds = %234
  resume { ptr, i32 } %235

244:                                              ; preds = %217, %11
  %245 = load ptr, ptr %0, align 8, !tbaa !47
  %246 = getelementptr inbounds ptr, ptr %245, i64 19
  %247 = load ptr, ptr %246, align 8
  %248 = tail call noundef ptr %247(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret ptr %248
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #7 comdat align 2 !prof !84 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !87

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !88
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

declare noundef ptr @_ZNK11xalanc_1_1017NamespacesHandler12getNamespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1011ElemElement21fixupDefaultNamespaceERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 align 2 !prof !46 {
  %3 = load ptr, ptr %1, align 8, !tbaa !47
  %4 = getelementptr inbounds ptr, ptr %3, i64 72
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE)
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  %8 = tail call noundef ptr @_ZNK11xalanc_1_1017NamespacesHandler12getNamespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232) %7, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE)
  %9 = icmp eq ptr %6, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = icmp eq ptr %8, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %10
  %13 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %8)
  br i1 %13, label %40, label %34

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !47
  %16 = getelementptr inbounds ptr, ptr %15, i64 30
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(322) %0)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %18, i64 0, i32 2
  %22 = tail call noundef ptr @_ZNK11xalanc_1_1017NamespacesHandler12getNamespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232) %21, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE)
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE, ptr %22
  br label %25

25:                                               ; preds = %14, %20
  %26 = phi ptr [ %24, %20 ], [ @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE, %14 ]
  %27 = icmp eq ptr %8, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %26, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !80
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %26, ptr noundef nonnull align 8 dereferenceable(36) %8)
  br i1 %33, label %40, label %34

34:                                               ; preds = %28, %32, %12, %10
  %35 = phi ptr [ @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE, %10 ], [ %8, %12 ], [ %8, %32 ], [ %8, %28 ]
  %36 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !79
  %37 = load ptr, ptr %1, align 8, !tbaa !47
  %38 = getelementptr inbounds ptr, ptr %37, i64 68
  %39 = load ptr, ptr %38, align 8
  tail call void %39(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %36, ptr noundef nonnull align 8 dereferenceable(36) %35)
  br label %40

40:                                               ; preds = %34, %25, %32, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1011ElemElement25getParentDefaultNamespaceEv(ptr noundef nonnull align 8 dereferenceable(360) %0) local_unnamed_addr #1 align 2 !prof !46 {
  %2 = load ptr, ptr %0, align 8, !tbaa !47
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(322) %0)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %5, i64 0, i32 2
  %9 = tail call noundef ptr @_ZNK11xalanc_1_1017NamespacesHandler12getNamespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232) %8, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE)
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE, ptr %9
  br label %12

12:                                               ; preds = %1, %7
  %13 = phi ptr [ %11, %7 ], [ @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE, %1 ]
  ret ptr %13
}

declare noundef ptr @_ZNK11xalanc_1_107ElemUse12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1011ElemElement10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 !prof !46 {
  %3 = load ptr, ptr %0, align 8, !tbaa !47
  %4 = getelementptr inbounds ptr, ptr %3, i64 20
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %6 = load ptr, ptr %1, align 8, !tbaa !47
  %7 = getelementptr inbounds ptr, ptr %6, i64 50
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %10 = load ptr, ptr %1, align 8, !tbaa !47
  %11 = getelementptr inbounds ptr, ptr %10, i64 165
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %9, label %24, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %13, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !73
  %17 = icmp eq i64 %16, 0
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %13, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = select i1 %17, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %19
  %21 = load ptr, ptr %1, align 8, !tbaa !47
  %22 = getelementptr inbounds ptr, ptr %21, i64 102
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %20)
  tail call void @_ZNK11xalanc_1_107ElemUse10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %24

24:                                               ; preds = %14, %2
  ret void
}

declare void @_ZNK11xalanc_1_107ElemUse10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011ElemElement19executeChildElementERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nocapture noundef readonly %2) unnamed_addr #1 align 2 !prof !46 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %2, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !89
  %6 = icmp eq i32 %5, 6
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8, !tbaa !47
  %9 = getelementptr inbounds ptr, ptr %8, i64 49
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef zeroext i1 %10(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi i1 [ true, %3 ], [ %12, %7 ]
  ret i1 %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011ElemElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2, ptr noundef nonnull align 8 dereferenceable(232) %3) unnamed_addr #1 align 2 !prof !46 {
  %5 = load ptr, ptr %0, align 8, !tbaa !47
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(360) %0)
  tail call void @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE(ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull %2, ptr noundef null)
  ret void
}

declare void @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef) local_unnamed_addr #2

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

declare void @_ZN11xalanc_1_107ElemUse16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_107ElemUse25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_107ElemUse26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

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

declare void @_ZNK11xalanc_1_107ElemUse12evaluateAVTsERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

declare void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !91

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !92
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !73
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !93

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %12 = load ptr, ptr %0, align 8, !tbaa !94
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !94
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !73
  %16 = load i64, ptr %6, align 8, !tbaa !92
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  %19 = load ptr, ptr %3, align 8, !tbaa !94
  store ptr %19, ptr %0, align 8, !tbaa !94
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !73
  store i64 %21, ptr %14, align 8, !tbaa !73
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !92
  store i64 %23, ptr %6, align 8, !tbaa !92
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !95
  store ptr %25, ptr %17, align 8, !tbaa !95
  store ptr %13, ptr %3, align 8, !tbaa !94
  store i64 %15, ptr %20, align 8, !tbaa !73
  store i64 %16, ptr %22, align 8, !tbaa !92
  store ptr %18, ptr %24, align 8, !tbaa !95
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !96

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !47
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !97

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #16
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !95
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !73
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !98

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !99

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !95
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !73
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !73
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !95
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !100

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !95
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !101
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  store ptr %2, ptr %0, align 8, !tbaa !94
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !73
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !103

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !94
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !73
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !92
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !47
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !104
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !95
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !95
  %24 = load i64, ptr %9, align 8, !tbaa !73
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !105

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !94
  %28 = load i64, ptr %6, align 8, !tbaa !73
  %29 = load i64, ptr %7, align 8, !tbaa !92
  %30 = load ptr, ptr %8, align 8, !tbaa !95
  %31 = load ptr, ptr %5, align 8, !tbaa !94
  store ptr %31, ptr %0, align 8, !tbaa !94
  %32 = load i64, ptr %14, align 8, !tbaa !73
  store i64 %32, ptr %6, align 8, !tbaa !73
  %33 = load i64, ptr %15, align 8, !tbaa !92
  store i64 %33, ptr %7, align 8, !tbaa !92
  %34 = load ptr, ptr %21, align 8, !tbaa !95
  store ptr %34, ptr %8, align 8, !tbaa !95
  store ptr %27, ptr %5, align 8, !tbaa !94
  store i64 %28, ptr %14, align 8, !tbaa !73
  store i64 %29, ptr %15, align 8, !tbaa !92
  store ptr %30, ptr %21, align 8, !tbaa !95
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !105

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !47
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #16
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !92
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !95
  %50 = load ptr, ptr %5, align 8, !tbaa !94
  %51 = load ptr, ptr %50, align 8, !tbaa !47
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #16
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !106

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !47
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !107
  store ptr %65, ptr %8, align 8, !tbaa !95
  store i64 %3, ptr %7, align 8, !tbaa !92
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !109

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !73
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !92
  br i1 %18, label %21, label %39, !prof !110

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !111

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !112

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !95
  %28 = load i64, ptr %12, align 8, !tbaa !73
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !82
  store i16 %34, ptr %32, align 2, !tbaa !82
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !113, !llvm.loop !114

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !115

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %42 = load ptr, ptr %0, align 8, !tbaa !94
  store ptr %42, ptr %5, align 8, !tbaa !94
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !73
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !92
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !47
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !116
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !95
  %51 = load i64, ptr %43, align 8, !tbaa !73
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !95
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !117

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !95
  %56 = load i64, ptr %43, align 8, !tbaa !73
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !117

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !95
  %60 = load i64, ptr %43, align 8, !tbaa !73
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !95
  %63 = load i64, ptr %12, align 8, !tbaa !73
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !117

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !94
  %67 = load i64, ptr %12, align 8, !tbaa !73
  %68 = load i64, ptr %19, align 8, !tbaa !92
  %69 = load ptr, ptr %15, align 8, !tbaa !95
  %70 = load ptr, ptr %5, align 8, !tbaa !94
  store ptr %70, ptr %0, align 8, !tbaa !94
  %71 = load i64, ptr %43, align 8, !tbaa !73
  store i64 %71, ptr %12, align 8, !tbaa !73
  %72 = load i64, ptr %44, align 8, !tbaa !92
  store i64 %72, ptr %19, align 8, !tbaa !92
  %73 = load ptr, ptr %50, align 8, !tbaa !95
  store ptr %73, ptr %15, align 8, !tbaa !95
  store ptr %66, ptr %5, align 8, !tbaa !94
  store i64 %67, ptr %43, align 8, !tbaa !73
  store i64 %68, ptr %44, align 8, !tbaa !92
  store ptr %69, ptr %50, align 8, !tbaa !95
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !118

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !47
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !119

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #16
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !92
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !95
  %89 = load ptr, ptr %5, align 8, !tbaa !94
  %90 = load ptr, ptr %89, align 8, !tbaa !47
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #16
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !120

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !121

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !121

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !122, !llvm.loop !123

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !124, !llvm.loop !125

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !126
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
  br i1 %123, label %124, label %120, !llvm.loop !127

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
  store i64 %36, ptr %12, align 8, !tbaa !73
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !46 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !73
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !92
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !129

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !95
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !82
  store i16 %13, ptr %12, align 2, !tbaa !82
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !73
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %21 = load ptr, ptr %0, align 8, !tbaa !94
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !94
  %24 = load i64, ptr %4, align 8, !tbaa !73
  %25 = load i64, ptr %6, align 8, !tbaa !92
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !95
  %28 = load ptr, ptr %3, align 8, !tbaa !94
  store ptr %28, ptr %0, align 8, !tbaa !94
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !73
  store i64 %30, ptr %4, align 8, !tbaa !73
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !92
  store i64 %32, ptr %6, align 8, !tbaa !92
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !95
  store ptr %34, ptr %26, align 8, !tbaa !95
  store ptr %23, ptr %3, align 8, !tbaa !94
  store i64 %24, ptr %29, align 8, !tbaa !73
  store i64 %25, ptr %31, align 8, !tbaa !92
  store ptr %27, ptr %33, align 8, !tbaa !95
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !47
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #16
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !92
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !95
  %52 = load ptr, ptr %3, align 8, !tbaa !94
  %53 = load ptr, ptr %52, align 8, !tbaa !47
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #16
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !130 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !94
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !73
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !103

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !94
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !73
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !92
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !47
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !131
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !95
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  %20 = load i64, ptr %5, align 8, !tbaa !73
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !105

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !94
  %24 = load i64, ptr %10, align 8, !tbaa !73
  %25 = load i64, ptr %11, align 8, !tbaa !92
  %26 = load ptr, ptr %17, align 8, !tbaa !95
  store ptr %4, ptr %3, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !92
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !95
  %33 = load ptr, ptr %3, align 8, !tbaa !94
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #16
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !106

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !47
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !132
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !94
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !92
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !95
  store ptr %53, ptr %0, align 8, !tbaa !94
  store i64 %52, ptr %5, align 8, !tbaa !73
  store i64 %51, ptr %55, align 8, !tbaa !92
  store ptr %50, ptr %57, align 8, !tbaa !95
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !133

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !47
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !134

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #16
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6insertEjPKtj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!45}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 197105}
!36 = !{ptr @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 197105}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"vtable pointer", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!51, !55, i64 344}
!51 = !{!"_ZTSN11xalanc_1_1011ElemElementE", !52, i64 0, !55, i64 344, !55, i64 352}
!52 = !{!"_ZTSN11xalanc_1_107ElemUseE", !53, i64 0, !55, i64 328, !59, i64 336}
!53 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !54, i64 0, !55, i64 8, !57, i64 16, !68, i64 248, !55, i64 256, !55, i64 264, !55, i64 272, !56, i64 280, !69, i64 288, !72, i64 320}
!54 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!55 = !{!"any pointer", !56, i64 0}
!56 = !{!"omnipotent char", !49, i64 0}
!57 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !58, i64 0, !60, i64 32, !61, i64 64, !62, i64 96}
!58 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !55, i64 0, !59, i64 8, !59, i64 16, !55, i64 24}
!59 = !{!"long", !56, i64 0}
!60 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !55, i64 0, !59, i64 8, !59, i64 16, !55, i64 24}
!61 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !55, i64 0, !59, i64 8, !59, i64 16, !55, i64 24}
!62 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !63, i64 0, !64, i64 1, !55, i64 8, !65, i64 16, !59, i64 24, !59, i64 32, !66, i64 40, !66, i64 64, !67, i64 88, !59, i64 120, !59, i64 128}
!63 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!64 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!65 = !{!"float", !56, i64 0}
!66 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !55, i64 0, !55, i64 8, !55, i64 16}
!67 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !55, i64 0, !59, i64 8, !59, i64 16, !55, i64 24}
!68 = !{!"int", !56, i64 0}
!69 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !70, i64 0, !59, i64 8, !59, i64 16, !55, i64 24}
!70 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !71, i64 0}
!71 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!72 = !{!"short", !56, i64 0}
!73 = !{!74, !59, i64 8}
!74 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !55, i64 0, !59, i64 8, !59, i64 16, !55, i64 24}
!75 = !{!51, !55, i64 352}
!76 = distinct !{!76, !77, !78}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = !{!55, !55, i64 0}
!80 = !{!81, !68, i64 32}
!81 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !74, i64 0, !68, i64 32}
!82 = !{!72, !72, i64 0}
!83 = distinct !{!83, !77, !78}
!84 = !{!"function_entry_count", i64 197105}
!85 = !{!86, !55, i64 24}
!86 = !{!"_ZTSN11xalanc_1_103AVTE", !55, i64 8, !59, i64 16, !55, i64 24, !68, i64 32, !55, i64 40}
!87 = !{!"branch_weights", i32 0, i32 197105}
!88 = !{!86, !68, i64 32}
!89 = !{!53, !68, i64 248}
!90 = !{!"function_entry_count", i64 41614}
!91 = !{!"branch_weights", i32 0, i32 41614}
!92 = !{!74, !59, i64 16}
!93 = !{!"branch_weights", i32 12, i32 41602}
!94 = !{!74, !55, i64 0}
!95 = !{!74, !55, i64 24}
!96 = !{!"branch_weights", i32 5, i32 7}
!97 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!98 = !{!"branch_weights", i32 354, i32 41248}
!99 = !{!"branch_weights", i32 40889, i32 359}
!100 = !{!"branch_weights", i32 40581, i32 1021}
!101 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!102 = !{!"function_entry_count", i64 22}
!103 = !{!"branch_weights", i32 64551590, i32 18}
!104 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!105 = !{!"branch_weights", i32 18, i32 0}
!106 = !{!"branch_weights", i32 4, i32 64551586}
!107 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!108 = !{!"function_entry_count", i64 155828046}
!109 = !{!"branch_weights", i32 0, i32 155828046}
!110 = !{!"branch_weights", i32 133170777, i32 22657269}
!111 = !{!"branch_weights", i32 20, i32 133170757}
!112 = !{!"branch_weights", i32 1, i32 19024395}
!113 = !{!"branch_weights", i32 19024395, i32 -26420601}
!114 = distinct !{!114, !77, !78}
!115 = !{!"branch_weights", i32 20748786, i32 1908483}
!116 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!117 = !{!"branch_weights", i32 20748786, i32 0}
!118 = !{!"branch_weights", i32 0, i32 20748786}
!119 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!120 = !{!"branch_weights", i32 0, i32 1908483}
!121 = !{!"branch_weights", i32 1, i32 1908482}
!122 = !{!"branch_weights", i32 1908482, i32 49797853}
!123 = distinct !{!123, !77, !78}
!124 = !{!"branch_weights", i32 1908482, i32 1}
!125 = distinct !{!125, !77, !78}
!126 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!127 = distinct !{!127, !77, !78}
!128 = !{!"function_entry_count", i64 124150652}
!129 = !{!"branch_weights", i32 124150652, i32 0}
!130 = !{!"function_entry_count", i64 64551586}
!131 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!132 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!133 = !{!"branch_weights", i32 42418193, i32 22133393}
!134 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}

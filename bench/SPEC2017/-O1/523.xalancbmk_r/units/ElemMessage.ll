; ModuleID = 'ElemMessage.cpp'
source_filename = "ElemMessage.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ElemMessage" = type { %"class.xalanc_1_10::ElemTemplateElement.base", i8, [5 x i8] }
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
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }

$_ZN11xalanc_1_1011ElemMessageD0Ev = comdat any

$_ZNK11xalanc_1_1011ElemMessage29ElemMessageTerminateException7getTypeEv = comdat any

@_ZTVN11xalanc_1_1011ElemMessageE = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1011ElemMessageE, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, ptr @_ZN11xalanc_1_1011ElemMessageD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1011ElemMessage12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1011ElemMessage10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1011ElemMessage14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_] }, align 8
@_ZN11xalanc_1_109Constants18ATTRNAME_TERMINATEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants11ATTRVAL_YESE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants10ATTRVAL_NOE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants35ELEMNAME_MESSAGE_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionE = dso_local constant [60 x i8] c"N11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionE\00", align 1
@_ZTIN11xalanc_1_1022XSLTProcessorExceptionE = external constant ptr
@_ZTIN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionE, ptr @_ZTIN11xalanc_1_1022XSLTProcessorExceptionE }, align 8
@_ZN11xalanc_1_1011ElemMessage29ElemMessageTerminateException6m_typeE = dso_local constant [31 x i16] [i16 69, i16 108, i16 101, i16 109, i16 77, i16 101, i16 115, i16 115, i16 97, i16 103, i16 101, i16 84, i16 101, i16 114, i16 109, i16 105, i16 110, i16 97, i16 116, i16 101, i16 69, i16 120, i16 112, i16 114, i16 101, i16 115, i16 115, i16 105, i16 111, i16 110, i16 0], align 16
@_ZTVN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionE, ptr @_ZN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionD2Ev, ptr @_ZN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionD0Ev, ptr @_ZNK11xalanc_1_1011ElemMessage29ElemMessageTerminateException7getTypeEv] }, align 8
@_ZTSN11xalanc_1_1011ElemMessageE = dso_local constant [29 x i8] c"N11xalanc_1_1011ElemMessageE\00", align 1
@_ZTIN11xalanc_1_1019ElemTemplateElementE = external constant ptr
@_ZTIN11xalanc_1_1011ElemMessageE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1011ElemMessageE, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1011ElemMessageC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1011ElemMessageC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionC1ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE
@_ZN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionC1ERN11xercesc_2_713MemoryManagerERKNS2_7LocatorERKNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionC2ERN11xercesc_2_713MemoryManagerERKNS2_7LocatorERKNS_14XalanDOMStringE
@_ZN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011ElemMessageC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(323) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, i32 noundef %4, i32 noundef %5, i32 noundef 31)
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1011ElemMessageE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemMessage", ptr %0, i64 0, i32 1
  store i8 0, ptr %7, align 2, !tbaa !38
  %8 = load ptr, ptr %3, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %12 unwind label %31

12:                                               ; preds = %6
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr @_ZN11xalanc_1_109Constants18ATTRNAME_TERMINATEE, align 8
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %15, i64 0, i32 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %15, i64 0, i32 3
  %18 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_MESSAGE_WITH_PREFIX_STRINGE, align 8
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %18, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %18, i64 0, i32 3
  %21 = load ptr, ptr @_ZN11xalanc_1_109Constants11ATTRVAL_YESE, align 8
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %21, i64 0, i32 1
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %21, i64 0, i32 3
  %24 = load ptr, ptr @_ZN11xalanc_1_109Constants10ATTRVAL_NOE, align 8
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %24, i64 0, i32 1
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %24, i64 0, i32 3
  %27 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_MESSAGE_WITH_PREFIX_STRINGE, align 8
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %27, i64 0, i32 1
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %27, i64 0, i32 3
  br label %33

30:                                               ; preds = %105, %12
  ret void

31:                                               ; preds = %6
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %108

33:                                               ; preds = %14, %105
  %34 = phi i32 [ 0, %14 ], [ %106, %105 ]
  %35 = load ptr, ptr %3, align 8, !tbaa !35
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %34)
          to label %39 unwind label %67

39:                                               ; preds = %33
  %40 = load i64, ptr %16, align 8, !tbaa !61
  %41 = icmp eq i64 %40, 0
  %42 = load ptr, ptr %17, align 8
  %43 = select i1 %41, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %42
  %44 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %43)
          to label %45 unwind label %67

45:                                               ; preds = %39
  %46 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %38)
          to label %47 unwind label %67

47:                                               ; preds = %45
  %48 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %43, i32 noundef %44, ptr noundef %38, i32 noundef %46)
          to label %49 unwind label %67

49:                                               ; preds = %47
  br i1 %48, label %50, label %87

50:                                               ; preds = %49
  %51 = load ptr, ptr %3, align 8, !tbaa !35
  %52 = getelementptr inbounds ptr, ptr %51, i64 5
  %53 = load ptr, ptr %52, align 8
  %54 = invoke noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %34)
          to label %55 unwind label %69

55:                                               ; preds = %50
  %56 = load i64, ptr %22, align 8, !tbaa !61
  %57 = icmp eq i64 %56, 0
  %58 = load ptr, ptr %23, align 8
  %59 = select i1 %57, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %58
  %60 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %59)
          to label %61 unwind label %69

61:                                               ; preds = %55
  %62 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %54)
          to label %63 unwind label %69

63:                                               ; preds = %61
  %64 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %59, i32 noundef %60, ptr noundef %54, i32 noundef %62)
          to label %65 unwind label %69

65:                                               ; preds = %63
  br i1 %64, label %66, label %71

66:                                               ; preds = %65
  store i8 1, ptr %7, align 2, !tbaa !38
  br label %105

67:                                               ; preds = %47, %45, %39, %100, %93, %87, %33
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %108

69:                                               ; preds = %79, %77, %71, %63, %61, %55, %82, %50
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %108

71:                                               ; preds = %65
  %72 = load i64, ptr %25, align 8, !tbaa !61
  %73 = icmp eq i64 %72, 0
  %74 = load ptr, ptr %26, align 8
  %75 = select i1 %73, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %74
  %76 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %75)
          to label %77 unwind label %69

77:                                               ; preds = %71
  %78 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %54)
          to label %79 unwind label %69

79:                                               ; preds = %77
  %80 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %75, i32 noundef %76, ptr noundef %54, i32 noundef %78)
          to label %81 unwind label %69

81:                                               ; preds = %79
  br i1 %80, label %105, label %82

82:                                               ; preds = %81
  %83 = load i64, ptr %28, align 8, !tbaa !61
  %84 = icmp eq i64 %83, 0
  %85 = load ptr, ptr %29, align 8
  %86 = select i1 %84, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %85
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 65, ptr noundef %86, ptr noundef %38, ptr noundef %54)
          to label %105 unwind label %69

87:                                               ; preds = %49
  %88 = load ptr, ptr %0, align 8, !tbaa !35
  %89 = getelementptr inbounds ptr, ptr %88, i64 5
  %90 = load ptr, ptr %89, align 8
  %91 = invoke noundef zeroext i1 %90(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %38, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %34, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %92 unwind label %67

92:                                               ; preds = %87
  br i1 %91, label %105, label %93

93:                                               ; preds = %92
  %94 = load i64, ptr %19, align 8, !tbaa !61
  %95 = icmp eq i64 %94, 0
  %96 = load ptr, ptr %20, align 8
  %97 = select i1 %95, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %96
  %98 = invoke noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %97, ptr noundef %38, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %34, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %99 unwind label %67

99:                                               ; preds = %93
  br i1 %98, label %105, label %100

100:                                              ; preds = %99
  %101 = load i64, ptr %19, align 8, !tbaa !61
  %102 = icmp eq i64 %101, 0
  %103 = load ptr, ptr %20, align 8
  %104 = select i1 %102, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %103
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 74, ptr noundef %104, ptr noundef %38)
          to label %105 unwind label %67

105:                                              ; preds = %66, %82, %81, %92, %99, %100
  %106 = add nuw i32 %34, 1
  %107 = icmp eq i32 %106, %11
  br i1 %107, label %30, label %33, !llvm.loop !63

108:                                              ; preds = %67, %69, %31
  %109 = phi { ptr, i32 } [ %32, %31 ], [ %70, %69 ], [ %68, %67 ]
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #7
  resume { ptr, i32 } %109
}

declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1011ElemMessage14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_MESSAGE_WITH_PREFIX_STRINGE, align 8, !tbaa !66
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1011ElemMessage12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(323) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 163
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %8 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %7)
  ret ptr %8
}

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1011ElemMessage10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(323) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZNK11xalanc_1_1019ElemTemplateElement19endChildrenToStringERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 165
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %7 = load ptr, ptr %0, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(322) %0)
  %11 = load ptr, ptr %1, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 6
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %15 = load ptr, ptr %1, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 4
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef %14, ptr noundef %10)
  %18 = getelementptr inbounds %"class.xalanc_1_10::ElemMessage", ptr %0, i64 0, i32 1
  %19 = load i8, ptr %18, align 2, !tbaa !38, !range !67, !noundef !68
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %2
  %22 = icmp eq ptr %10, null
  %23 = tail call ptr @__cxa_allocate_exception(i64 104) #7
  %24 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !69
  br i1 %22, label %30, label %26

26:                                               ; preds = %21
  invoke void @_ZN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionC2ERN11xercesc_2_713MemoryManagerERKNS2_7LocatorERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %23, ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %27 unwind label %28

27:                                               ; preds = %26
  tail call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTIN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionE, ptr nonnull @_ZN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionD2Ev) #8
  unreachable

28:                                               ; preds = %26
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %35

30:                                               ; preds = %21
  invoke void @_ZN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %23, ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %31 unwind label %32

31:                                               ; preds = %30
  tail call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTIN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionE, ptr nonnull @_ZN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionD2Ev) #8
  unreachable

32:                                               ; preds = %30
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %35

34:                                               ; preds = %2
  ret void

35:                                               ; preds = %32, %28
  %36 = phi { ptr, i32 } [ %29, %28 ], [ %33, %32 ]
  tail call void @__cxa_free_exception(ptr %23) #7
  resume { ptr, i32 } %36
}

declare void @_ZNK11xalanc_1_1019ElemTemplateElement19endChildrenToStringERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1022XSLTProcessorExceptionC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

declare void @_ZN11xalanc_1_1022XSLTProcessorExceptionC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionC2ERN11xercesc_2_713MemoryManagerERKNS2_7LocatorERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1022XSLTProcessorExceptionC2ERN11xercesc_2_713MemoryManagerERKNS1_7LocatorERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(36) %3)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

declare void @_ZN11xalanc_1_1022XSLTProcessorExceptionC2ERN11xercesc_2_713MemoryManagerERKNS1_7LocatorERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1022XSLTProcessorExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1022XSLTProcessorExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1011ElemMessage29ElemMessageTerminateExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1022XSLTProcessorExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #7
  tail call void @_ZdlPv(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #4

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011ElemMessageD0Ev(ptr noundef nonnull align 8 dereferenceable(323) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(323) %0) #7
  tail call void @_ZdlPv(ptr noundef %0) #9
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

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011ElemMessage29ElemMessageTerminateException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 !prof !34 {
  ret ptr @_ZN11xalanc_1_1011ElemMessage29ElemMessageTerminateException6m_typeE
}

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !60, i64 322}
!39 = !{!"_ZTSN11xalanc_1_1011ElemMessageE", !40, i64 0, !60, i64 322}
!40 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !41, i64 0, !42, i64 8, !44, i64 16, !55, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !43, i64 280, !56, i64 288, !59, i64 320}
!41 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !37, i64 0}
!44 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !45, i64 0, !47, i64 32, !48, i64 64, !49, i64 96}
!45 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !42, i64 0, !46, i64 8, !46, i64 16, !42, i64 24}
!46 = !{!"long", !43, i64 0}
!47 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !42, i64 0, !46, i64 8, !46, i64 16, !42, i64 24}
!48 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !42, i64 0, !46, i64 8, !46, i64 16, !42, i64 24}
!49 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !50, i64 0, !51, i64 1, !42, i64 8, !52, i64 16, !46, i64 24, !46, i64 32, !53, i64 40, !53, i64 64, !54, i64 88, !46, i64 120, !46, i64 128}
!50 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!51 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!52 = !{!"float", !43, i64 0}
!53 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !42, i64 0, !42, i64 8, !42, i64 16}
!54 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !42, i64 0, !46, i64 8, !46, i64 16, !42, i64 24}
!55 = !{!"int", !43, i64 0}
!56 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !57, i64 0, !46, i64 8, !46, i64 16, !42, i64 24}
!57 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !58, i64 0}
!58 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!59 = !{!"short", !43, i64 0}
!60 = !{!"bool", !43, i64 0}
!61 = !{!62, !46, i64 8}
!62 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !42, i64 0, !46, i64 8, !46, i64 16, !42, i64 24}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!42, !42, i64 0}
!67 = !{i8 0, i8 2}
!68 = !{}
!69 = !{!70, !42, i64 8}
!70 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !42, i64 8}

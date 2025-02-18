; ModuleID = 'ElemSort.cpp'
source_filename = "ElemSort.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ElemSort" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr, ptr, ptr, ptr }
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

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_108ElemSortE = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_108ElemSortE, ptr @_ZN11xalanc_1_108ElemSortD2Ev, ptr @_ZN11xalanc_1_108ElemSortD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_108ElemSort14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_108ElemSort8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_] }, align 8
@_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants13ATTRNAME_LANGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants17ATTRNAME_DATATYPEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants14ATTRNAME_ORDERE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants18ATTRNAME_CASEORDERE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants32ELEMNAME_SORT_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants21ATTRVAL_DATATYPE_TEXTE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants23ATTRVAL_ORDER_ASCENDINGE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_108ElemSortE = dso_local constant [25 x i8] c"N11xalanc_1_108ElemSortE\00", align 1
@_ZTIN11xalanc_1_1019ElemTemplateElementE = external constant ptr
@_ZTIN11xalanc_1_108ElemSortE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_108ElemSortE, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_108ElemSortC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_108ElemSortC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_108ElemSortD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_108ElemSortD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_108ElemSortC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, i32 noundef %4, i32 noundef %5, i32 noundef 21)
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_108ElemSortE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %12 = load ptr, ptr %3, align 8, !tbaa !43
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %16 unwind label %34, !prof !46

16:                                               ; preds = %6
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %31, label %18, !prof !47

18:                                               ; preds = %16
  %19 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE, align 8
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %19, i64 0, i32 1
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %19, i64 0, i32 3
  %22 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_LANGE, align 8
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %22, i64 0, i32 1
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %22, i64 0, i32 3
  %25 = load ptr, ptr @_ZN11xalanc_1_109Constants17ATTRNAME_DATATYPEE, align 8
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %25, i64 0, i32 1
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %25, i64 0, i32 3
  %28 = load ptr, ptr @_ZN11xalanc_1_109Constants14ATTRNAME_ORDERE, align 8
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %28, i64 0, i32 1
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %28, i64 0, i32 3
  br label %36

31:                                               ; preds = %195, %16
  %32 = load ptr, ptr %9, align 8, !tbaa !48
  %33 = icmp eq ptr %32, null
  br i1 %33, label %198, label %223, !prof !70

34:                                               ; preds = %231, %226, %203, %198, %6
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %252

36:                                               ; preds = %18, %195
  %37 = phi i32 [ 0, %18 ], [ %196, %195 ]
  %38 = load ptr, ptr %3, align 8, !tbaa !43
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %37)
          to label %42 unwind label %69, !prof !71

42:                                               ; preds = %36
  %43 = load i64, ptr %20, align 8, !tbaa !72
  %44 = icmp eq i64 %43, 0
  %45 = load ptr, ptr %21, align 8
  %46 = select i1 %44, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %45, !prof !74
  %47 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %46)
          to label %48 unwind label %69, !prof !75

48:                                               ; preds = %42
  %49 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %41)
          to label %50 unwind label %69, !prof !75

50:                                               ; preds = %48
  %51 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %46, i32 noundef %47, ptr noundef %41, i32 noundef %49)
          to label %52 unwind label %69, !prof !75

52:                                               ; preds = %50
  br i1 %51, label %53, label %71, !prof !76

53:                                               ; preds = %52
  %54 = load ptr, ptr %0, align 8, !tbaa !43
  %55 = getelementptr inbounds ptr, ptr %54, i64 4
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %58 unwind label %69, !prof !77

58:                                               ; preds = %53
  %59 = load ptr, ptr %3, align 8, !tbaa !43
  %60 = getelementptr inbounds ptr, ptr %59, i64 5
  %61 = load ptr, ptr %60, align 8
  %62 = invoke noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %37)
          to label %63 unwind label %69, !prof !78

63:                                               ; preds = %58
  %64 = load ptr, ptr %1, align 8, !tbaa !43
  %65 = getelementptr inbounds ptr, ptr %64, i64 21
  %66 = load ptr, ptr %65, align 8
  %67 = invoke noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %57, ptr noundef %62, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %68 unwind label %69, !prof !79

68:                                               ; preds = %63
  store ptr %67, ptr %7, align 8, !tbaa !80
  br label %195

69:                                               ; preds = %163, %161, %152, %133, %131, %125, %106, %104, %98, %79, %77, %71, %50, %48, %42, %187, %182, %176, %171, %167, %146, %141, %136, %119, %114, %109, %92, %87, %82, %63, %58, %53, %36
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %252

71:                                               ; preds = %52
  %72 = load i64, ptr %23, align 8, !tbaa !72
  %73 = icmp eq i64 %72, 0
  %74 = load ptr, ptr %24, align 8
  %75 = select i1 %73, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %74, !prof !81
  %76 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %75)
          to label %77 unwind label %69, !prof !82

77:                                               ; preds = %71
  %78 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %41)
          to label %79 unwind label %69, !prof !82

79:                                               ; preds = %77
  %80 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %75, i32 noundef %76, ptr noundef %41, i32 noundef %78)
          to label %81 unwind label %69, !prof !82

81:                                               ; preds = %79
  br i1 %80, label %82, label %98, !prof !81

82:                                               ; preds = %81
  %83 = load ptr, ptr %0, align 8, !tbaa !43
  %84 = getelementptr inbounds ptr, ptr %83, i64 4
  %85 = load ptr, ptr %84, align 8
  %86 = invoke noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %87 unwind label %69

87:                                               ; preds = %82
  %88 = load ptr, ptr %3, align 8, !tbaa !43
  %89 = getelementptr inbounds ptr, ptr %88, i64 5
  %90 = load ptr, ptr %89, align 8
  %91 = invoke noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %37)
          to label %92 unwind label %69

92:                                               ; preds = %87
  %93 = load ptr, ptr %1, align 8, !tbaa !43
  %94 = getelementptr inbounds ptr, ptr %93, i64 35
  %95 = load ptr, ptr %94, align 8
  %96 = invoke noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %86, ptr noundef %41, ptr noundef %91, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %97 unwind label %69

97:                                               ; preds = %92
  store ptr %96, ptr %8, align 8, !tbaa !83
  br label %195

98:                                               ; preds = %81
  %99 = load i64, ptr %26, align 8, !tbaa !72
  %100 = icmp eq i64 %99, 0
  %101 = load ptr, ptr %27, align 8
  %102 = select i1 %100, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %101, !prof !81
  %103 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %102)
          to label %104 unwind label %69, !prof !82

104:                                              ; preds = %98
  %105 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %41)
          to label %106 unwind label %69, !prof !82

106:                                              ; preds = %104
  %107 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %102, i32 noundef %103, ptr noundef %41, i32 noundef %105)
          to label %108 unwind label %69, !prof !82

108:                                              ; preds = %106
  br i1 %107, label %109, label %125, !prof !84

109:                                              ; preds = %108
  %110 = load ptr, ptr %0, align 8, !tbaa !43
  %111 = getelementptr inbounds ptr, ptr %110, i64 4
  %112 = load ptr, ptr %111, align 8
  %113 = invoke noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %114 unwind label %69, !prof !85

114:                                              ; preds = %109
  %115 = load ptr, ptr %3, align 8, !tbaa !43
  %116 = getelementptr inbounds ptr, ptr %115, i64 5
  %117 = load ptr, ptr %116, align 8
  %118 = invoke noundef ptr %117(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %37)
          to label %119 unwind label %69, !prof !86

119:                                              ; preds = %114
  %120 = load ptr, ptr %1, align 8, !tbaa !43
  %121 = getelementptr inbounds ptr, ptr %120, i64 35
  %122 = load ptr, ptr %121, align 8
  %123 = invoke noundef ptr %122(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %113, ptr noundef %41, ptr noundef %118, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %124 unwind label %69, !prof !87

124:                                              ; preds = %119
  store ptr %123, ptr %9, align 8, !tbaa !48
  br label %195

125:                                              ; preds = %108
  %126 = load i64, ptr %29, align 8, !tbaa !72
  %127 = icmp eq i64 %126, 0
  %128 = load ptr, ptr %30, align 8
  %129 = select i1 %127, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %128, !prof !88
  %130 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %129)
          to label %131 unwind label %69, !prof !89

131:                                              ; preds = %125
  %132 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %41)
          to label %133 unwind label %69, !prof !89

133:                                              ; preds = %131
  %134 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %129, i32 noundef %130, ptr noundef %41, i32 noundef %132)
          to label %135 unwind label %69, !prof !89

135:                                              ; preds = %133
  br i1 %134, label %136, label %152, !prof !89

136:                                              ; preds = %135
  %137 = load ptr, ptr %0, align 8, !tbaa !43
  %138 = getelementptr inbounds ptr, ptr %137, i64 4
  %139 = load ptr, ptr %138, align 8
  %140 = invoke noundef ptr %139(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %141 unwind label %69, !prof !77

141:                                              ; preds = %136
  %142 = load ptr, ptr %3, align 8, !tbaa !43
  %143 = getelementptr inbounds ptr, ptr %142, i64 5
  %144 = load ptr, ptr %143, align 8
  %145 = invoke noundef ptr %144(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %37)
          to label %146 unwind label %69, !prof !78

146:                                              ; preds = %141
  %147 = load ptr, ptr %1, align 8, !tbaa !43
  %148 = getelementptr inbounds ptr, ptr %147, i64 35
  %149 = load ptr, ptr %148, align 8
  %150 = invoke noundef ptr %149(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %140, ptr noundef %41, ptr noundef %145, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %151 unwind label %69, !prof !90

151:                                              ; preds = %146
  store ptr %150, ptr %10, align 8, !tbaa !91
  br label %195

152:                                              ; preds = %135
  %153 = load ptr, ptr @_ZN11xalanc_1_109Constants18ATTRNAME_CASEORDERE, align 8
  %154 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %153, i64 0, i32 1
  %155 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %153, i64 0, i32 3
  %156 = load i64, ptr %154, align 8, !tbaa !72
  %157 = icmp eq i64 %156, 0
  %158 = load ptr, ptr %155, align 8
  %159 = select i1 %157, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %158
  %160 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %159)
          to label %161 unwind label %69

161:                                              ; preds = %152
  %162 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %41)
          to label %163 unwind label %69

163:                                              ; preds = %161
  %164 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %159, i32 noundef %160, ptr noundef %41, i32 noundef %162)
          to label %165 unwind label %69

165:                                              ; preds = %163
  %166 = load ptr, ptr %0, align 8, !tbaa !43
  br i1 %164, label %167, label %182

167:                                              ; preds = %165
  %168 = getelementptr inbounds ptr, ptr %166, i64 4
  %169 = load ptr, ptr %168, align 8
  %170 = invoke noundef ptr %169(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %171 unwind label %69

171:                                              ; preds = %167
  %172 = load ptr, ptr %3, align 8, !tbaa !43
  %173 = getelementptr inbounds ptr, ptr %172, i64 5
  %174 = load ptr, ptr %173, align 8
  %175 = invoke noundef ptr %174(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %37)
          to label %176 unwind label %69

176:                                              ; preds = %171
  %177 = load ptr, ptr %1, align 8, !tbaa !43
  %178 = getelementptr inbounds ptr, ptr %177, i64 35
  %179 = load ptr, ptr %178, align 8
  %180 = invoke noundef ptr %179(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %170, ptr noundef %41, ptr noundef %175, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %181 unwind label %69

181:                                              ; preds = %176
  store ptr %180, ptr %11, align 8, !tbaa !92
  br label %195

182:                                              ; preds = %165
  %183 = getelementptr inbounds ptr, ptr %166, i64 5
  %184 = load ptr, ptr %183, align 8
  %185 = invoke noundef zeroext i1 %184(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %41, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %37, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %186 unwind label %69

186:                                              ; preds = %182
  br i1 %185, label %195, label %187

187:                                              ; preds = %186
  %188 = load ptr, ptr @_ZN11xalanc_1_109Constants32ELEMNAME_SORT_WITH_PREFIX_STRINGE, align 8
  %189 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %188, i64 0, i32 1
  %190 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %188, i64 0, i32 3
  %191 = load i64, ptr %189, align 8, !tbaa !72
  %192 = icmp eq i64 %191, 0
  %193 = load ptr, ptr %190, align 8
  %194 = select i1 %192, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %193
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 74, ptr noundef %194, ptr noundef %41)
          to label %195 unwind label %69

195:                                              ; preds = %97, %151, %186, %187, %181, %124, %68
  %196 = add nuw i32 %37, 1
  %197 = icmp eq i32 %196, %15
  br i1 %197, label %31, label %36, !prof !93, !llvm.loop !94

198:                                              ; preds = %31
  %199 = load ptr, ptr %0, align 8, !tbaa !43
  %200 = getelementptr inbounds ptr, ptr %199, i64 4
  %201 = load ptr, ptr %200, align 8
  %202 = invoke noundef ptr %201(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %203 unwind label %34, !prof !97

203:                                              ; preds = %198
  %204 = load ptr, ptr @_ZN11xalanc_1_109Constants17ATTRNAME_DATATYPEE, align 8, !tbaa !98
  %205 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %204, i64 0, i32 1
  %206 = load i64, ptr %205, align 8, !tbaa !72
  %207 = icmp eq i64 %206, 0
  %208 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %204, i64 0, i32 3
  %209 = load ptr, ptr %208, align 8
  %210 = select i1 %207, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %209, !prof !99
  %211 = load ptr, ptr @_ZN11xalanc_1_109Constants21ATTRVAL_DATATYPE_TEXTE, align 8, !tbaa !98
  %212 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %211, i64 0, i32 1
  %213 = load i64, ptr %212, align 8, !tbaa !72
  %214 = icmp eq i64 %213, 0
  %215 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %211, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8
  %217 = select i1 %214, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %216, !prof !99
  %218 = load ptr, ptr %1, align 8, !tbaa !43
  %219 = getelementptr inbounds ptr, ptr %218, i64 35
  %220 = load ptr, ptr %219, align 8
  %221 = invoke noundef ptr %220(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %202, ptr noundef %210, ptr noundef %217, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %222 unwind label %34, !prof !100

222:                                              ; preds = %203
  store ptr %221, ptr %9, align 8, !tbaa !48
  br label %223

223:                                              ; preds = %222, %31
  %224 = load ptr, ptr %10, align 8, !tbaa !91
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %251, !prof !88

226:                                              ; preds = %223
  %227 = load ptr, ptr %0, align 8, !tbaa !43
  %228 = getelementptr inbounds ptr, ptr %227, i64 4
  %229 = load ptr, ptr %228, align 8
  %230 = invoke noundef ptr %229(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %231 unwind label %34

231:                                              ; preds = %226
  %232 = load ptr, ptr @_ZN11xalanc_1_109Constants14ATTRNAME_ORDERE, align 8, !tbaa !98
  %233 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %232, i64 0, i32 1
  %234 = load i64, ptr %233, align 8, !tbaa !72
  %235 = icmp eq i64 %234, 0
  %236 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %232, i64 0, i32 3
  %237 = load ptr, ptr %236, align 8
  %238 = select i1 %235, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %237
  %239 = load ptr, ptr @_ZN11xalanc_1_109Constants23ATTRVAL_ORDER_ASCENDINGE, align 8, !tbaa !98
  %240 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %239, i64 0, i32 1
  %241 = load i64, ptr %240, align 8, !tbaa !72
  %242 = icmp eq i64 %241, 0
  %243 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %239, i64 0, i32 3
  %244 = load ptr, ptr %243, align 8
  %245 = select i1 %242, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %244
  %246 = load ptr, ptr %1, align 8, !tbaa !43
  %247 = getelementptr inbounds ptr, ptr %246, i64 35
  %248 = load ptr, ptr %247, align 8
  %249 = invoke noundef ptr %248(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %230, ptr noundef %238, ptr noundef %245, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %250 unwind label %34

250:                                              ; preds = %231
  store ptr %249, ptr %10, align 8, !tbaa !91
  br label %251

251:                                              ; preds = %250, %223
  ret void

252:                                              ; preds = %69, %34
  %253 = phi { ptr, i32 } [ %70, %69 ], [ %35, %34 ]
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
  resume { ptr, i32 } %253
}

declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_108ElemSort6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetERKNS1_13AttributeListEii(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = load ptr, ptr %0, align 8, !tbaa !43
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 368), !prof !101
  invoke void @_ZN11xalanc_1_108ElemSortC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(368) %10, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5)
          to label %11 unwind label %12, !prof !89

11:                                               ; preds = %6
  ret ptr %10

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = icmp eq ptr %10, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %16, i64 3
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %10)
          to label %22 unwind label %19

19:                                               ; preds = %15
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  tail call void @__clang_call_terminate(ptr %21) #10
  unreachable

22:                                               ; preds = %12, %15
  resume { ptr, i32 } %13
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_108ElemSortD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #4 align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_108ElemSortD0Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #4 align 2 !prof !102 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_108ElemSort14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !102 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants32ELEMNAME_SORT_WITH_PREFIX_STRINGE, align 8, !tbaa !98
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_108ElemSort8getXPathEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(368) %0, i32 noundef %1) unnamed_addr #6 align 2 !prof !102 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = select i1 %3, ptr %5, ptr null
  ret ptr %6
}

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1) unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1) unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1) unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb(ptr noundef nonnull align 8 dereferenceable(322), i1 noundef zeroext) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1) unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1, ptr noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !102 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!41}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @_ZN11xalanc_1_108ElemSortC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 14}
!36 = !{ptr @_ZN11xalanc_1_108ElemSortC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 146}
!37 = !{ptr @_ZN11xalanc_1_108ElemSortC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 73}
!38 = !{ptr @_ZN11xalanc_1_108ElemSortC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, i64 42}
!39 = !{ptr @_ZN11xalanc_1_108ElemSort6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetERKNS1_13AttributeListEii, ptr @_ZN11xalanc_1_108ElemSortC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, i64 14}
!40 = !{ptr @_ZN11xalanc_1_108ElemSortD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, i64 14}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 14}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!"VP", i32 0, i64 14, i64 8253907953441087172, i64 14}
!47 = !{!"branch_weights", i32 1, i32 223}
!48 = !{!49, !52, i64 344}
!49 = !{!"_ZTSN11xalanc_1_108ElemSortE", !50, i64 0, !52, i64 328, !52, i64 336, !52, i64 344, !52, i64 352, !52, i64 360}
!50 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !51, i64 0, !52, i64 8, !54, i64 16, !65, i64 248, !52, i64 256, !52, i64 264, !52, i64 272, !53, i64 280, !66, i64 288, !69, i64 320}
!51 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !45, i64 0}
!54 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !55, i64 0, !57, i64 32, !58, i64 64, !59, i64 96}
!55 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !52, i64 0, !56, i64 8, !56, i64 16, !52, i64 24}
!56 = !{!"long", !53, i64 0}
!57 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !52, i64 0, !56, i64 8, !56, i64 16, !52, i64 24}
!58 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !52, i64 0, !56, i64 8, !56, i64 16, !52, i64 24}
!59 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !60, i64 0, !61, i64 1, !52, i64 8, !62, i64 16, !56, i64 24, !56, i64 32, !63, i64 40, !63, i64 64, !64, i64 88, !56, i64 120, !56, i64 128}
!60 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!61 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!62 = !{!"float", !53, i64 0}
!63 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !52, i64 0, !52, i64 8, !52, i64 16}
!64 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !52, i64 0, !56, i64 8, !56, i64 16, !52, i64 24}
!65 = !{!"int", !53, i64 0}
!66 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !67, i64 0, !56, i64 8, !56, i64 16, !52, i64 24}
!67 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !68, i64 0}
!68 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!69 = !{!"short", !53, i64 0}
!70 = !{!"branch_weights", i32 13, i32 1}
!71 = !{!"VP", i32 0, i64 29, i64 5829949526982853143, i64 29}
!72 = !{!73, !56, i64 8}
!73 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !52, i64 0, !56, i64 8, !56, i64 16, !52, i64 24}
!74 = !{!"branch_weights", i32 0, i32 29}
!75 = !{!"branch_weights", i32 29, i32 0}
!76 = !{!"branch_weights", i32 14, i32 15}
!77 = !{!"VP", i32 0, i64 14, i64 -5610273550909442482, i64 14}
!78 = !{!"VP", i32 0, i64 14, i64 -7250213707570638104, i64 14}
!79 = !{!"VP", i32 0, i64 14, i64 5056957690790192712, i64 14}
!80 = !{!49, !52, i64 328}
!81 = !{!"branch_weights", i32 0, i32 15}
!82 = !{!"branch_weights", i32 15, i32 0}
!83 = !{!49, !52, i64 336}
!84 = !{!"branch_weights", i32 1, i32 14}
!85 = !{!"VP", i32 0, i64 1, i64 -5610273550909442482, i64 1}
!86 = !{!"VP", i32 0, i64 1, i64 -7250213707570638104, i64 1}
!87 = !{!"VP", i32 0, i64 1, i64 362171021796504155, i64 1}
!88 = !{!"branch_weights", i32 0, i32 14}
!89 = !{!"branch_weights", i32 14, i32 0}
!90 = !{!"VP", i32 0, i64 14, i64 362171021796504155, i64 14}
!91 = !{!49, !52, i64 352}
!92 = !{!49, !52, i64 360}
!93 = !{!"branch_weights", i32 223, i32 241}
!94 = distinct !{!94, !95, !96}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = !{!"VP", i32 0, i64 13, i64 -5610273550909442482, i64 13}
!98 = !{!52, !52, i64 0}
!99 = !{!"branch_weights", i32 0, i32 13}
!100 = !{!"VP", i32 0, i64 13, i64 362171021796504155, i64 13}
!101 = !{!"VP", i32 0, i64 14, i64 8345045103670217670, i64 14}
!102 = !{!"function_entry_count", i64 0}

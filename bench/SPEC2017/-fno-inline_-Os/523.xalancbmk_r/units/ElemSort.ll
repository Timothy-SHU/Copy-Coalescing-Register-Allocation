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
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::ElemSort, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::ElemSort, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EED2Ev = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_108ElemSortEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

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

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_108ElemSortC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, i32 noundef %4, i32 noundef %5, i32 noundef 21) #10
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_108ElemSortE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %12 = load ptr, ptr %3, align 8, !tbaa !65
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
          to label %16 unwind label %24

16:                                               ; preds = %6
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %21, label %18, !prof !68

18:                                               ; preds = %16
  %19 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE, align 8
  %20 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_LANGE, align 8
  br label %26

21:                                               ; preds = %141, %16
  %22 = load ptr, ptr %9, align 8, !tbaa !69
  %23 = icmp eq ptr %22, null
  br i1 %23, label %144, label %161, !prof !91

24:                                               ; preds = %175, %172, %169, %164, %155, %152, %149, %144, %6
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %182

26:                                               ; preds = %18, %141
  %27 = phi i32 [ 0, %18 ], [ %142, %141 ]
  %28 = load ptr, ptr %3, align 8, !tbaa !65
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %27) #10
          to label %32 unwind label %51

32:                                               ; preds = %26
  %33 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %31, ptr noundef nonnull align 8 dereferenceable(36) %19) #10
          to label %34 unwind label %51

34:                                               ; preds = %32
  br i1 %33, label %35, label %53, !prof !92

35:                                               ; preds = %34
  %36 = load ptr, ptr %0, align 8, !tbaa !65
  %37 = getelementptr inbounds ptr, ptr %36, i64 4
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(322) %0) #10
          to label %40 unwind label %51

40:                                               ; preds = %35
  %41 = load ptr, ptr %3, align 8, !tbaa !65
  %42 = getelementptr inbounds ptr, ptr %41, i64 5
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %27) #10
          to label %45 unwind label %51

45:                                               ; preds = %40
  %46 = load ptr, ptr %1, align 8, !tbaa !65
  %47 = getelementptr inbounds ptr, ptr %46, i64 21
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %39, ptr noundef %44, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true, i1 noundef zeroext true) #10
          to label %50 unwind label %51

50:                                               ; preds = %45
  store ptr %49, ptr %7, align 8, !tbaa !93
  br label %141

51:                                               ; preds = %140, %137, %132, %126, %121, %117, %112, %106, %101, %96, %92, %86, %81, %76, %72, %66, %61, %56, %53, %45, %40, %35, %32, %26
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %182

53:                                               ; preds = %34
  %54 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %31, ptr noundef nonnull align 8 dereferenceable(36) %20) #10
          to label %55 unwind label %51

55:                                               ; preds = %53
  br i1 %54, label %56, label %72, !prof !94

56:                                               ; preds = %55
  %57 = load ptr, ptr %0, align 8, !tbaa !65
  %58 = getelementptr inbounds ptr, ptr %57, i64 4
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(322) %0) #10
          to label %61 unwind label %51

61:                                               ; preds = %56
  %62 = load ptr, ptr %3, align 8, !tbaa !65
  %63 = getelementptr inbounds ptr, ptr %62, i64 5
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %27) #10
          to label %66 unwind label %51

66:                                               ; preds = %61
  %67 = load ptr, ptr %1, align 8, !tbaa !65
  %68 = getelementptr inbounds ptr, ptr %67, i64 35
  %69 = load ptr, ptr %68, align 8
  %70 = invoke noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %60, ptr noundef %31, ptr noundef %65, ptr noundef nonnull align 8 dereferenceable(8) %0) #10
          to label %71 unwind label %51

71:                                               ; preds = %66
  store ptr %70, ptr %8, align 8, !tbaa !95
  br label %141

72:                                               ; preds = %55
  %73 = load ptr, ptr @_ZN11xalanc_1_109Constants17ATTRNAME_DATATYPEE, align 8
  %74 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %31, ptr noundef nonnull align 8 dereferenceable(36) %73) #10
          to label %75 unwind label %51

75:                                               ; preds = %72
  br i1 %74, label %76, label %92, !prof !96

76:                                               ; preds = %75
  %77 = load ptr, ptr %0, align 8, !tbaa !65
  %78 = getelementptr inbounds ptr, ptr %77, i64 4
  %79 = load ptr, ptr %78, align 8
  %80 = invoke noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(322) %0) #10
          to label %81 unwind label %51

81:                                               ; preds = %76
  %82 = load ptr, ptr %3, align 8, !tbaa !65
  %83 = getelementptr inbounds ptr, ptr %82, i64 5
  %84 = load ptr, ptr %83, align 8
  %85 = invoke noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %27) #10
          to label %86 unwind label %51

86:                                               ; preds = %81
  %87 = load ptr, ptr %1, align 8, !tbaa !65
  %88 = getelementptr inbounds ptr, ptr %87, i64 35
  %89 = load ptr, ptr %88, align 8
  %90 = invoke noundef ptr %89(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %80, ptr noundef %31, ptr noundef %85, ptr noundef nonnull align 8 dereferenceable(8) %0) #10
          to label %91 unwind label %51

91:                                               ; preds = %86
  store ptr %90, ptr %9, align 8, !tbaa !69
  br label %141

92:                                               ; preds = %75
  %93 = load ptr, ptr @_ZN11xalanc_1_109Constants14ATTRNAME_ORDERE, align 8
  %94 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %31, ptr noundef nonnull align 8 dereferenceable(36) %93) #10
          to label %95 unwind label %51

95:                                               ; preds = %92
  br i1 %94, label %96, label %112, !prof !97

96:                                               ; preds = %95
  %97 = load ptr, ptr %0, align 8, !tbaa !65
  %98 = getelementptr inbounds ptr, ptr %97, i64 4
  %99 = load ptr, ptr %98, align 8
  %100 = invoke noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(322) %0) #10
          to label %101 unwind label %51

101:                                              ; preds = %96
  %102 = load ptr, ptr %3, align 8, !tbaa !65
  %103 = getelementptr inbounds ptr, ptr %102, i64 5
  %104 = load ptr, ptr %103, align 8
  %105 = invoke noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %27) #10
          to label %106 unwind label %51

106:                                              ; preds = %101
  %107 = load ptr, ptr %1, align 8, !tbaa !65
  %108 = getelementptr inbounds ptr, ptr %107, i64 35
  %109 = load ptr, ptr %108, align 8
  %110 = invoke noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %100, ptr noundef %31, ptr noundef %105, ptr noundef nonnull align 8 dereferenceable(8) %0) #10
          to label %111 unwind label %51

111:                                              ; preds = %106
  store ptr %110, ptr %10, align 8, !tbaa !98
  br label %141

112:                                              ; preds = %95
  %113 = load ptr, ptr @_ZN11xalanc_1_109Constants18ATTRNAME_CASEORDERE, align 8
  %114 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %31, ptr noundef nonnull align 8 dereferenceable(36) %113) #10
          to label %115 unwind label %51

115:                                              ; preds = %112
  %116 = load ptr, ptr %0, align 8, !tbaa !65
  br i1 %114, label %117, label %132

117:                                              ; preds = %115
  %118 = getelementptr inbounds ptr, ptr %116, i64 4
  %119 = load ptr, ptr %118, align 8
  %120 = invoke noundef ptr %119(ptr noundef nonnull align 8 dereferenceable(322) %0) #10
          to label %121 unwind label %51

121:                                              ; preds = %117
  %122 = load ptr, ptr %3, align 8, !tbaa !65
  %123 = getelementptr inbounds ptr, ptr %122, i64 5
  %124 = load ptr, ptr %123, align 8
  %125 = invoke noundef ptr %124(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %27) #10
          to label %126 unwind label %51

126:                                              ; preds = %121
  %127 = load ptr, ptr %1, align 8, !tbaa !65
  %128 = getelementptr inbounds ptr, ptr %127, i64 35
  %129 = load ptr, ptr %128, align 8
  %130 = invoke noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %120, ptr noundef %31, ptr noundef %125, ptr noundef nonnull align 8 dereferenceable(8) %0) #10
          to label %131 unwind label %51

131:                                              ; preds = %126
  store ptr %130, ptr %11, align 8, !tbaa !99
  br label %141

132:                                              ; preds = %115
  %133 = getelementptr inbounds ptr, ptr %116, i64 5
  %134 = load ptr, ptr %133, align 8
  %135 = invoke noundef zeroext i1 %134(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %31, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %27, ptr noundef nonnull align 8 dereferenceable(16) %1) #10
          to label %136 unwind label %51

136:                                              ; preds = %132
  br i1 %135, label %141, label %137

137:                                              ; preds = %136
  %138 = load ptr, ptr @_ZN11xalanc_1_109Constants32ELEMNAME_SORT_WITH_PREFIX_STRINGE, align 8
  %139 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %138) #10
          to label %140 unwind label %51

140:                                              ; preds = %137
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 74, ptr noundef %139, ptr noundef %31) #10
          to label %141 unwind label %51

141:                                              ; preds = %71, %111, %136, %140, %131, %91, %50
  %142 = add nuw i32 %27, 1
  %143 = icmp eq i32 %142, %15
  br i1 %143, label %21, label %26, !prof !100, !llvm.loop !101

144:                                              ; preds = %21
  %145 = load ptr, ptr %0, align 8, !tbaa !65
  %146 = getelementptr inbounds ptr, ptr %145, i64 4
  %147 = load ptr, ptr %146, align 8
  %148 = invoke noundef ptr %147(ptr noundef nonnull align 8 dereferenceable(322) %0) #10
          to label %149 unwind label %24

149:                                              ; preds = %144
  %150 = load ptr, ptr @_ZN11xalanc_1_109Constants17ATTRNAME_DATATYPEE, align 8, !tbaa !103
  %151 = invoke noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %150) #10
          to label %152 unwind label %24

152:                                              ; preds = %149
  %153 = load ptr, ptr @_ZN11xalanc_1_109Constants21ATTRVAL_DATATYPE_TEXTE, align 8, !tbaa !103
  %154 = invoke noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %153) #10
          to label %155 unwind label %24

155:                                              ; preds = %152
  %156 = load ptr, ptr %1, align 8, !tbaa !65
  %157 = getelementptr inbounds ptr, ptr %156, i64 35
  %158 = load ptr, ptr %157, align 8
  %159 = invoke noundef ptr %158(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %148, ptr noundef %151, ptr noundef %154, ptr noundef nonnull align 8 dereferenceable(8) %0) #10
          to label %160 unwind label %24

160:                                              ; preds = %155
  store ptr %159, ptr %9, align 8, !tbaa !69
  br label %161

161:                                              ; preds = %160, %21
  %162 = load ptr, ptr %10, align 8, !tbaa !98
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %181, !prof !104

164:                                              ; preds = %161
  %165 = load ptr, ptr %0, align 8, !tbaa !65
  %166 = getelementptr inbounds ptr, ptr %165, i64 4
  %167 = load ptr, ptr %166, align 8
  %168 = invoke noundef ptr %167(ptr noundef nonnull align 8 dereferenceable(322) %0) #10
          to label %169 unwind label %24

169:                                              ; preds = %164
  %170 = load ptr, ptr @_ZN11xalanc_1_109Constants14ATTRNAME_ORDERE, align 8, !tbaa !103
  %171 = invoke noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %170) #10
          to label %172 unwind label %24

172:                                              ; preds = %169
  %173 = load ptr, ptr @_ZN11xalanc_1_109Constants23ATTRVAL_ORDER_ASCENDINGE, align 8, !tbaa !103
  %174 = invoke noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %173) #10
          to label %175 unwind label %24

175:                                              ; preds = %172
  %176 = load ptr, ptr %1, align 8, !tbaa !65
  %177 = getelementptr inbounds ptr, ptr %176, i64 35
  %178 = load ptr, ptr %177, align 8
  %179 = invoke noundef ptr %178(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %168, ptr noundef %171, ptr noundef %174, ptr noundef nonnull align 8 dereferenceable(8) %0) #10
          to label %180 unwind label %24

180:                                              ; preds = %175
  store ptr %179, ptr %10, align 8, !tbaa !98
  br label %181

181:                                              ; preds = %180, %161
  ret void

182:                                              ; preds = %51, %24
  %183 = phi { ptr, i32 } [ %52, %51 ], [ %25, %24 ]
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #11
  resume { ptr, i32 } %183
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat !prof !105 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %0) #10
  ret i1 %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !106 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  br i1 %2, label %5, label %3, !prof !107

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #10
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !108 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  ret ptr %2
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_108ElemSort6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetERKNS1_13AttributeListEii(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %7 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  %8 = load ptr, ptr %0, align 8, !tbaa !65
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 368) #10
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %11) #10
  %12 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #10
  invoke void @_ZN11xalanc_1_108ElemSortC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(368) %12, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) #10
          to label %13 unwind label %16

13:                                               ; preds = %6
  %14 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #10
          to label %15 unwind label %16

15:                                               ; preds = %13
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  ret ptr %12

16:                                               ; preds = %13, %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !64 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !64 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #10
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_108ElemSortD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #5 align 2 !prof !64 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_108ElemSortD0Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #5 align 2 {
  tail call void @_ZN11xalanc_1_108ElemSortD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_108ElemSort14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !111 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants32ELEMNAME_SORT_WITH_PREFIX_STRINGE, align 8, !tbaa !103
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_108ElemSort8getXPathEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(368) %0, i32 noundef %1) unnamed_addr #7 align 2 !prof !111 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = select i1 %3, ptr %5, ptr null
  ret ptr %6
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb(ptr noundef nonnull align 8 dereferenceable(322), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !105 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #10
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !105 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %3, ptr noundef %1) #10
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !112 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #10
  %4 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #10
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef %4) #10
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #5 comdat align 2 !prof !113 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !114 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !115
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !117 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !119 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !64 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !103
  store ptr %2, ptr %5, align 8, !tbaa !103
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_108ElemSortEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_108ElemSortEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #5 comdat align 2 !prof !64 {
  %4 = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %4, ptr %0, align 8, !tbaa !120
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !103
  store ptr %6, ptr %5, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !121 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !64 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  br i1 %2, label %3, label %10, !prof !104

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !120
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = load ptr, ptr %4, align 8, !tbaa !65
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #10
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !64 {
  %2 = load ptr, ptr %0, align 8, !tbaa !120
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !64 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  store ptr %1, ptr %0, align 8, !tbaa !120
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !109
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!63}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!35 = !{ptr @_ZN11xalanc_1_108ElemSortC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 14}
!36 = !{ptr @_ZN11xalanc_1_108ElemSortC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, i64 69}
!37 = !{ptr @_ZN11xalanc_1_108ElemSortC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, i64 26}
!38 = !{ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, i64 1899}
!39 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!40 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!41 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!42 = !{ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 12093723}
!43 = !{ptr @_ZN11xalanc_1_108ElemSort6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetERKNS1_13AttributeListEii, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, i64 14}
!44 = !{ptr @_ZN11xalanc_1_108ElemSort6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetERKNS1_13AttributeListEii, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE3getEv, i64 14}
!45 = !{ptr @_ZN11xalanc_1_108ElemSort6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetERKNS1_13AttributeListEii, ptr @_ZN11xalanc_1_108ElemSortC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, i64 14}
!46 = !{ptr @_ZN11xalanc_1_108ElemSort6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetERKNS1_13AttributeListEii, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE7releaseEv, i64 14}
!47 = !{ptr @_ZN11xalanc_1_108ElemSort6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetERKNS1_13AttributeListEii, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EED2Ev, i64 14}
!48 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, i64 14}
!49 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE7releaseEv, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, i64 14}
!50 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EED2Ev, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData10deallocateEv, i64 14}
!51 = !{ptr @_ZN11xalanc_1_108ElemSortD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, i64 14}
!52 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, i64 1899}
!53 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 1899}
!54 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, i64 1899}
!55 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 807446}
!56 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 403723}
!57 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!58 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_108ElemSortEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, i64 14}
!59 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData10invariantsEv, i64 14}
!60 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData10invariantsEv, i64 14}
!61 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData12isInitilizedEv, i64 14}
!62 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8ElemSortELb0EE17MemMgrAutoPtrData10invariantsEv, i64 28}
!63 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!64 = !{!"function_entry_count", i64 14}
!65 = !{!66, !66, i64 0}
!66 = !{!"vtable pointer", !67, i64 0}
!67 = !{!"Simple C++ TBAA"}
!68 = !{!"branch_weights", i32 1, i32 239}
!69 = !{!70, !73, i64 344}
!70 = !{!"_ZTSN11xalanc_1_108ElemSortE", !71, i64 0, !73, i64 328, !73, i64 336, !73, i64 344, !73, i64 352, !73, i64 360}
!71 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !72, i64 0, !73, i64 8, !75, i64 16, !86, i64 248, !73, i64 256, !73, i64 264, !73, i64 272, !74, i64 280, !87, i64 288, !90, i64 320}
!72 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!73 = !{!"any pointer", !74, i64 0}
!74 = !{!"omnipotent char", !67, i64 0}
!75 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !76, i64 0, !78, i64 32, !79, i64 64, !80, i64 96}
!76 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !73, i64 0, !77, i64 8, !77, i64 16, !73, i64 24}
!77 = !{!"long", !74, i64 0}
!78 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !73, i64 0, !77, i64 8, !77, i64 16, !73, i64 24}
!79 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !73, i64 0, !77, i64 8, !77, i64 16, !73, i64 24}
!80 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !81, i64 0, !82, i64 1, !73, i64 8, !83, i64 16, !77, i64 24, !77, i64 32, !84, i64 40, !84, i64 64, !85, i64 88, !77, i64 120, !77, i64 128}
!81 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!82 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!83 = !{!"float", !74, i64 0}
!84 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !73, i64 0, !73, i64 8, !73, i64 16}
!85 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !73, i64 0, !77, i64 8, !77, i64 16, !73, i64 24}
!86 = !{!"int", !74, i64 0}
!87 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !88, i64 0, !77, i64 8, !77, i64 16, !73, i64 24}
!88 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !89, i64 0}
!89 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!90 = !{!"short", !74, i64 0}
!91 = !{!"branch_weights", i32 14, i32 2}
!92 = !{!"branch_weights", i32 15, i32 16}
!93 = !{!70, !73, i64 328}
!94 = !{!"branch_weights", i32 1, i32 16}
!95 = !{!70, !73, i64 336}
!96 = !{!"branch_weights", i32 2, i32 15}
!97 = !{!"branch_weights", i32 15, i32 1}
!98 = !{!70, !73, i64 352}
!99 = !{!70, !73, i64 360}
!100 = !{!"branch_weights", i32 239, i32 241}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.mustprogress"}
!103 = !{!73, !73, i64 0}
!104 = !{!"branch_weights", i32 1, i32 15}
!105 = !{!"function_entry_count", i64 1899}
!106 = !{!"function_entry_count", i64 967143541}
!107 = !{!"branch_weights", i32 403628487, i32 563515056}
!108 = !{!"function_entry_count", i64 12093723}
!109 = !{!110, !73, i64 8}
!110 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_108ElemSortEE", !73, i64 0, !73, i64 8}
!111 = !{!"function_entry_count", i64 0}
!112 = !{!"function_entry_count", i64 403723}
!113 = !{!"function_entry_count", i64 3070433834}
!114 = !{!"function_entry_count", i64 1083116306}
!115 = !{!116, !77, i64 8}
!116 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !73, i64 0, !77, i64 8, !77, i64 16, !73, i64 24}
!117 = !{!"function_entry_count", i64 565220908}
!118 = !{!116, !73, i64 24}
!119 = !{!"function_entry_count", i64 6521798493}
!120 = !{!110, !73, i64 0}
!121 = !{!"function_entry_count", i64 56}

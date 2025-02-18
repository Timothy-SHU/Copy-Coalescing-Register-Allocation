; ModuleID = 'ElemTemplate.cpp'
source_filename = "ElemTemplate.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanQNameByValue" = type { %"class.xalanc_1_10::XalanQName", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"union.xalanc_1_10::DoubleSupport::NumberUnion" = type { double }
%"class.xalanc_1_10::ElemTemplate" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr, ptr, double }
%"class.xalanc_1_10::ElemTemplateElement.base" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16 }>
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

@_ZN11xalanc_1_10L7s_emptyE = internal global %"class.xalanc_1_10::XalanQNameByValue" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1012ElemTemplateE = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1012ElemTemplateE, ptr @_ZN11xalanc_1_1012ElemTemplateD2Ev, ptr @_ZN11xalanc_1_1012ElemTemplateD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1012ElemTemplate12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1012ElemTemplate10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1012ElemTemplate10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1012ElemTemplate14getElementNameEv, ptr @_ZNK11xalanc_1_1012ElemTemplate16getNameAttributeEv, ptr @_ZN11xalanc_1_1012ElemTemplate15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1012ElemTemplate8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1012ElemTemplate16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_] }, align 8
@_ZN11xalanc_1_109Constants14ATTRNAME_MATCHE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants17ATTRNAME_PRIORITYE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants13ATTRNAME_MODEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants36ELEMNAME_TEMPLATE_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1012ElemTemplateE = dso_local constant [30 x i8] c"N11xalanc_1_1012ElemTemplateE\00", align 1
@_ZTIN11xalanc_1_1019ElemTemplateElementE = external constant ptr
@_ZTIN11xalanc_1_1012ElemTemplateE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1012ElemTemplateE, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE }, align 8
@_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ElemTemplate.cpp, ptr null }]

@_ZN11xalanc_1_1012ElemTemplateC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1012ElemTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_1012ElemTemplateD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1012ElemTemplateD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1012ElemTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %4, i32 noundef %5, i32 noundef 20)
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1012ElemTemplateE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplate", ptr %0, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !53
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplate", ptr %0, i64 0, i32 2
  store ptr @_ZN11xalanc_1_10L7s_emptyE, ptr %8, align 8, !tbaa !76
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplate", ptr %0, i64 0, i32 3
  store ptr @_ZN11xalanc_1_10L7s_emptyE, ptr %9, align 8, !tbaa !77
  %10 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplate", ptr %0, i64 0, i32 4
  %11 = load double, ptr @_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE, align 8, !tbaa !78
  store double %11, ptr %10, align 8, !tbaa !79
  %12 = load ptr, ptr %3, align 8, !tbaa !50
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %16 unwind label %25, !prof !80

16:                                               ; preds = %6
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %22, label %18, !prof !81

18:                                               ; preds = %16
  %19 = load ptr, ptr @_ZN11xalanc_1_109Constants14ATTRNAME_MATCHE, align 8
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %19, i64 0, i32 1
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %19, i64 0, i32 3
  br label %27

22:                                               ; preds = %196, %16
  %23 = load ptr, ptr %7, align 8, !tbaa !53
  %24 = icmp eq ptr %23, null
  br i1 %24, label %199, label %220, !prof !82

25:                                               ; preds = %209, %199, %218, %6
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %221

27:                                               ; preds = %18, %196
  %28 = phi i32 [ 0, %18 ], [ %197, %196 ]
  %29 = load ptr, ptr %3, align 8, !tbaa !50
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28)
          to label %33 unwind label %60, !prof !83

33:                                               ; preds = %27
  %34 = load i64, ptr %20, align 8, !tbaa !84
  %35 = icmp eq i64 %34, 0
  %36 = load ptr, ptr %21, align 8
  %37 = select i1 %35, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %36, !prof !86
  %38 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %37)
          to label %39 unwind label %60, !prof !87

39:                                               ; preds = %33
  %40 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %32)
          to label %41 unwind label %60, !prof !87

41:                                               ; preds = %39
  %42 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %37, i32 noundef %38, ptr noundef %32, i32 noundef %40)
          to label %43 unwind label %60, !prof !87

43:                                               ; preds = %41
  br i1 %42, label %44, label %62, !prof !88

44:                                               ; preds = %43
  %45 = load ptr, ptr %0, align 8, !tbaa !50
  %46 = getelementptr inbounds ptr, ptr %45, i64 4
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %49 unwind label %60, !prof !89

49:                                               ; preds = %44
  %50 = load ptr, ptr %3, align 8, !tbaa !50
  %51 = getelementptr inbounds ptr, ptr %50, i64 5
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28)
          to label %54 unwind label %60, !prof !90

54:                                               ; preds = %49
  %55 = load ptr, ptr %1, align 8, !tbaa !50
  %56 = getelementptr inbounds ptr, ptr %55, i64 19
  %57 = load ptr, ptr %56, align 8
  %58 = invoke noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %48, ptr noundef %53, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %59 unwind label %60, !prof !91

59:                                               ; preds = %54
  store ptr %58, ptr %7, align 8, !tbaa !53
  br label %196

60:                                               ; preds = %166, %192, %163, %158, %137, %135, %126, %113, %111, %102, %99, %94, %73, %71, %62, %41, %39, %33, %177, %171, %152, %145, %140, %121, %116, %88, %81, %76, %54, %49, %44, %27
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %221

62:                                               ; preds = %43
  %63 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %63, i64 0, i32 1
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %63, i64 0, i32 3
  %66 = load i64, ptr %64, align 8, !tbaa !84
  %67 = icmp eq i64 %66, 0
  %68 = load ptr, ptr %65, align 8
  %69 = select i1 %67, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %68, !prof !92
  %70 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %69)
          to label %71 unwind label %60, !prof !93

71:                                               ; preds = %62
  %72 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %32)
          to label %73 unwind label %60, !prof !93

73:                                               ; preds = %71
  %74 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %69, i32 noundef %70, ptr noundef %32, i32 noundef %72)
          to label %75 unwind label %60, !prof !93

75:                                               ; preds = %73
  br i1 %74, label %76, label %102, !prof !93

76:                                               ; preds = %75
  %77 = load ptr, ptr %3, align 8, !tbaa !50
  %78 = getelementptr inbounds ptr, ptr %77, i64 5
  %79 = load ptr, ptr %78, align 8
  %80 = invoke noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28)
          to label %81 unwind label %60, !prof !94

81:                                               ; preds = %76
  %82 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !95
  %84 = load ptr, ptr %0, align 8, !tbaa !50
  %85 = getelementptr inbounds ptr, ptr %84, i64 4
  %86 = load ptr, ptr %85, align 8
  %87 = invoke noundef ptr %86(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %88 unwind label %60, !prof !96

88:                                               ; preds = %81
  %89 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %83, i64 0, i32 8
  %90 = load ptr, ptr %1, align 8, !tbaa !50
  %91 = getelementptr inbounds ptr, ptr %90, i64 41
  %92 = load ptr, ptr %91, align 8
  %93 = invoke noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %80, ptr noundef nonnull align 8 dereferenceable(80) %89, ptr noundef %87, i1 noundef zeroext false)
          to label %94 unwind label %60, !prof !97

94:                                               ; preds = %88
  store ptr %93, ptr %8, align 8, !tbaa !76
  %95 = load ptr, ptr %93, align 8, !tbaa !50
  %96 = getelementptr inbounds ptr, ptr %95, i64 2
  %97 = load ptr, ptr %96, align 8
  %98 = invoke noundef nonnull align 8 dereferenceable(36) ptr %97(ptr noundef nonnull align 8 dereferenceable(8) %93)
          to label %99 unwind label %60, !prof !98

99:                                               ; preds = %94
  %100 = invoke noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %98)
          to label %101 unwind label %60, !prof !93

101:                                              ; preds = %99
  br i1 %100, label %196, label %166, !prof !93

102:                                              ; preds = %75
  %103 = load ptr, ptr @_ZN11xalanc_1_109Constants17ATTRNAME_PRIORITYE, align 8
  %104 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %103, i64 0, i32 1
  %105 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %103, i64 0, i32 3
  %106 = load i64, ptr %104, align 8, !tbaa !84
  %107 = icmp eq i64 %106, 0
  %108 = load ptr, ptr %105, align 8
  %109 = select i1 %107, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %108
  %110 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %109)
          to label %111 unwind label %60

111:                                              ; preds = %102
  %112 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %32)
          to label %113 unwind label %60

113:                                              ; preds = %111
  %114 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %109, i32 noundef %110, ptr noundef %32, i32 noundef %112)
          to label %115 unwind label %60

115:                                              ; preds = %113
  br i1 %114, label %116, label %126

116:                                              ; preds = %115
  %117 = load ptr, ptr %3, align 8, !tbaa !50
  %118 = getelementptr inbounds ptr, ptr %117, i64 5
  %119 = load ptr, ptr %118, align 8
  %120 = invoke noundef ptr %119(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28)
          to label %121 unwind label %60

121:                                              ; preds = %116
  %122 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %1, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !99
  %124 = invoke noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %120, ptr noundef nonnull align 8 dereferenceable(8) %123)
          to label %125 unwind label %60

125:                                              ; preds = %121
  store double %124, ptr %10, align 8, !tbaa !79
  br label %196

126:                                              ; preds = %115
  %127 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_MODEE, align 8
  %128 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %127, i64 0, i32 1
  %129 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %127, i64 0, i32 3
  %130 = load i64, ptr %128, align 8, !tbaa !84
  %131 = icmp eq i64 %130, 0
  %132 = load ptr, ptr %129, align 8
  %133 = select i1 %131, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %132
  %134 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %133)
          to label %135 unwind label %60

135:                                              ; preds = %126
  %136 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %32)
          to label %137 unwind label %60

137:                                              ; preds = %135
  %138 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %133, i32 noundef %134, ptr noundef %32, i32 noundef %136)
          to label %139 unwind label %60

139:                                              ; preds = %137
  br i1 %138, label %140, label %171

140:                                              ; preds = %139
  %141 = load ptr, ptr %3, align 8, !tbaa !50
  %142 = getelementptr inbounds ptr, ptr %141, i64 5
  %143 = load ptr, ptr %142, align 8
  %144 = invoke noundef ptr %143(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28)
          to label %145 unwind label %60

145:                                              ; preds = %140
  %146 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !95
  %148 = load ptr, ptr %0, align 8, !tbaa !50
  %149 = getelementptr inbounds ptr, ptr %148, i64 4
  %150 = load ptr, ptr %149, align 8
  %151 = invoke noundef ptr %150(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %152 unwind label %60

152:                                              ; preds = %145
  %153 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %147, i64 0, i32 8
  %154 = load ptr, ptr %1, align 8, !tbaa !50
  %155 = getelementptr inbounds ptr, ptr %154, i64 41
  %156 = load ptr, ptr %155, align 8
  %157 = invoke noundef ptr %156(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %144, ptr noundef nonnull align 8 dereferenceable(80) %153, ptr noundef %151, i1 noundef zeroext false)
          to label %158 unwind label %60

158:                                              ; preds = %152
  store ptr %157, ptr %9, align 8, !tbaa !77
  %159 = load ptr, ptr %157, align 8, !tbaa !50
  %160 = getelementptr inbounds ptr, ptr %159, i64 2
  %161 = load ptr, ptr %160, align 8
  %162 = invoke noundef nonnull align 8 dereferenceable(36) ptr %161(ptr noundef nonnull align 8 dereferenceable(8) %157)
          to label %163 unwind label %60

163:                                              ; preds = %158
  %164 = invoke noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %162)
          to label %165 unwind label %60

165:                                              ; preds = %163
  br i1 %164, label %196, label %166

166:                                              ; preds = %165, %101
  %167 = load ptr, ptr %3, align 8, !tbaa !50
  %168 = getelementptr inbounds ptr, ptr %167, i64 5
  %169 = load ptr, ptr %168, align 8
  %170 = invoke noundef ptr %169(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28)
          to label %192 unwind label %60

171:                                              ; preds = %139
  %172 = load ptr, ptr %0, align 8, !tbaa !50
  %173 = getelementptr inbounds ptr, ptr %172, i64 5
  %174 = load ptr, ptr %173, align 8
  %175 = invoke noundef zeroext i1 %174(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %176 unwind label %60

176:                                              ; preds = %171
  br i1 %175, label %196, label %177

177:                                              ; preds = %176
  %178 = load ptr, ptr @_ZN11xalanc_1_109Constants36ELEMNAME_TEMPLATE_WITH_PREFIX_STRINGE, align 8
  %179 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %178, i64 0, i32 1
  %180 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %178, i64 0, i32 3
  %181 = load i64, ptr %179, align 8, !tbaa !84
  %182 = icmp eq i64 %181, 0
  %183 = load ptr, ptr %180, align 8
  %184 = select i1 %182, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %183
  %185 = invoke noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %184, ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %186 unwind label %60

186:                                              ; preds = %177
  br i1 %185, label %196, label %187

187:                                              ; preds = %186
  %188 = load i64, ptr %179, align 8, !tbaa !84
  %189 = icmp eq i64 %188, 0
  %190 = load ptr, ptr %180, align 8
  %191 = select i1 %189, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %190
  br label %192

192:                                              ; preds = %166, %187
  %193 = phi i32 [ 74, %187 ], [ 62, %166 ]
  %194 = phi ptr [ %191, %187 ], [ %32, %166 ]
  %195 = phi ptr [ %32, %187 ], [ %170, %166 ]
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %193, ptr noundef %194, ptr noundef %195)
          to label %196 unwind label %60

196:                                              ; preds = %192, %101, %165, %186, %176, %125, %59
  %197 = add nuw i32 %28, 1
  %198 = icmp eq i32 %197, %15
  br i1 %198, label %22, label %27, !prof !101, !llvm.loop !102

199:                                              ; preds = %22
  %200 = load ptr, ptr %8, align 8, !tbaa !76
  %201 = load ptr, ptr %200, align 8, !tbaa !50
  %202 = getelementptr inbounds ptr, ptr %201, i64 3
  %203 = load ptr, ptr %202, align 8
  %204 = invoke noundef nonnull align 8 dereferenceable(36) ptr %203(ptr noundef nonnull align 8 dereferenceable(8) %200)
          to label %205 unwind label %25, !prof !105

205:                                              ; preds = %199
  %206 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %204, i64 0, i32 1
  %207 = load i32, ptr %206, align 8, !tbaa !106
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %220, !prof !93

209:                                              ; preds = %205
  %210 = load ptr, ptr %200, align 8, !tbaa !50
  %211 = getelementptr inbounds ptr, ptr %210, i64 2
  %212 = load ptr, ptr %211, align 8
  %213 = invoke noundef nonnull align 8 dereferenceable(36) ptr %212(ptr noundef nonnull align 8 dereferenceable(8) %200)
          to label %214 unwind label %25, !prof !98

214:                                              ; preds = %209
  %215 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %213, i64 0, i32 1
  %216 = load i32, ptr %215, align 8, !tbaa !106
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %220, !prof !92

218:                                              ; preds = %214
  %219 = load ptr, ptr @_ZN11xalanc_1_109Constants36ELEMNAME_TEMPLATE_WITH_PREFIX_STRINGE, align 8, !tbaa !108
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 73, ptr noundef nonnull align 8 dereferenceable(36) %219)
          to label %220 unwind label %25

220:                                              ; preds = %205, %218, %214, %22
  ret void

221:                                              ; preds = %25, %60
  %222 = phi { ptr, i32 } [ %61, %60 ], [ %26, %25 ]
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #10
  resume { ptr, i32 } %222
}

declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1012ElemTemplateD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #5 align 2 !prof !49 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1012ElemTemplateD0Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #5 align 2 !prof !109 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #10
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1012ElemTemplate15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2) unnamed_addr #4 align 2 !prof !110 {
  tail call void @_ZN11xalanc_1_1010Stylesheet11addTemplateEPNS_12ElemTemplateERNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

declare void @_ZN11xalanc_1_1010Stylesheet11addTemplateEPNS_12ElemTemplateERNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1012ElemTemplate16getNameAttributeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(360) %0) unnamed_addr #6 align 2 !prof !110 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplate", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1012ElemTemplate14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !110 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants36ELEMNAME_TEMPLATE_WITH_PREFIX_STRINGE, align 8, !tbaa !108
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1012ElemTemplate12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #8 align 2 !prof !111 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %4 = load ptr, ptr %1, align 8, !tbaa !50
  %5 = getelementptr inbounds ptr, ptr %4, i64 60
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0), !prof !112
  %7 = load ptr, ptr %0, align 8, !tbaa !50
  %8 = getelementptr inbounds ptr, ptr %7, i64 19
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !113
  ret ptr %10
}

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1012ElemTemplate10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #8 align 2 !prof !111 {
  %3 = load ptr, ptr %1, align 8, !tbaa !50
  %4 = getelementptr inbounds ptr, ptr %3, i64 61
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !114
  %6 = load ptr, ptr %0, align 8, !tbaa !50
  %7 = getelementptr inbounds ptr, ptr %6, i64 20
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !115
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1012ElemTemplate10getInvokerERNS_26StylesheetExecutionContextE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #8 align 2 !prof !116 {
  %3 = load ptr, ptr %1, align 8, !tbaa !50
  %4 = getelementptr inbounds ptr, ptr %3, i64 136
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !117
  ret ptr %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1012ElemTemplate8getXPathEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(360) %0, i32 noundef %1) unnamed_addr #6 align 2 !prof !109 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplate", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = select i1 %3, ptr %5, ptr null
  ret ptr %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1012ElemTemplate16childTypeAllowedEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #7 align 2 !prof !118 {
  %3 = icmp ne i32 %1, 0
  ret i1 %3
}

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare void @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb(ptr noundef nonnull align 8 dereferenceable(322), i1 noundef zeroext) unnamed_addr #1

declare void @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare void @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare void @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_ElemTemplate.cpp() #9 section ".text.startup" !prof !119 !PGOFuncName !120 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) @_ZN11xalanc_1_10L7s_emptyE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1017XalanQNameByValueD1Ev, ptr nonnull @_ZN11xalanc_1_10L7s_emptyE, ptr nonnull @__dso_handle) #10
  ret void
}

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!48}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !{ptr @_ZN11xalanc_1_1012ElemTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 30}
!36 = !{ptr @_ZN11xalanc_1_1012ElemTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 66}
!37 = !{ptr @_ZN11xalanc_1_1012ElemTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 33}
!38 = !{ptr @_ZN11xalanc_1_1012ElemTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, i64 30}
!39 = !{ptr @_ZN11xalanc_1_1012ElemTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE, i64 3}
!40 = !{ptr @_ZN11xalanc_1_1012ElemTemplateD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, i64 30}
!41 = !{ptr @_ZN11xalanc_1_1012ElemTemplate15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1010Stylesheet11addTemplateEPNS_12ElemTemplateERNS_29StylesheetConstructionContextE, i64 27}
!42 = !{ptr @_ZNK11xalanc_1_1012ElemTemplate12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, i64 22648489}
!43 = !{ptr @_ZNK11xalanc_1_1012ElemTemplate12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, i64 22648489}
!44 = !{ptr @_ZNK11xalanc_1_1012ElemTemplate10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, i64 22648489}
!45 = !{ptr @_GLOBAL__sub_I_ElemTemplate.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!46 = !{ptr @_GLOBAL__sub_I_ElemTemplate.cpp, ptr @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!47 = !{ptr @_GLOBAL__sub_I_ElemTemplate.cpp, ptr @__cxa_atexit, i64 1}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!49 = !{!"function_entry_count", i64 30}
!50 = !{!51, !51, i64 0}
!51 = !{!"vtable pointer", !52, i64 0}
!52 = !{!"Simple C++ TBAA"}
!53 = !{!54, !57, i64 328}
!54 = !{!"_ZTSN11xalanc_1_1012ElemTemplateE", !55, i64 0, !57, i64 328, !57, i64 336, !57, i64 344, !75, i64 352}
!55 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !56, i64 0, !57, i64 8, !59, i64 16, !70, i64 248, !57, i64 256, !57, i64 264, !57, i64 272, !58, i64 280, !71, i64 288, !74, i64 320}
!56 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!57 = !{!"any pointer", !58, i64 0}
!58 = !{!"omnipotent char", !52, i64 0}
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
!75 = !{!"double", !58, i64 0}
!76 = !{!54, !57, i64 336}
!77 = !{!54, !57, i64 344}
!78 = !{!58, !58, i64 0}
!79 = !{!54, !75, i64 352}
!80 = !{!"VP", i32 0, i64 30, i64 8253907953441087172, i64 27, i64 8893614577066288799, i64 3}
!81 = !{!"branch_weights", i32 1, i32 239}
!82 = !{!"branch_weights", i32 3, i32 27}
!83 = !{!"VP", i32 0, i64 30, i64 5829949526982853143, i64 27, i64 -4536921264242817666, i64 3}
!84 = !{!85, !61, i64 8}
!85 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !57, i64 0, !61, i64 8, !61, i64 16, !57, i64 24}
!86 = !{!"branch_weights", i32 0, i32 30}
!87 = !{!"branch_weights", i32 30, i32 0}
!88 = !{!"branch_weights", i32 27, i32 3}
!89 = !{!"VP", i32 0, i64 27, i64 -5610273550909442482, i64 27}
!90 = !{!"VP", i32 0, i64 27, i64 -7250213707570638104, i64 24, i64 704971646561838490, i64 3}
!91 = !{!"VP", i32 0, i64 27, i64 -4586964208986488874, i64 27}
!92 = !{!"branch_weights", i32 0, i32 3}
!93 = !{!"branch_weights", i32 3, i32 0}
!94 = !{!"VP", i32 0, i64 3, i64 -7250213707570638104, i64 3}
!95 = !{!55, !57, i64 8}
!96 = !{!"VP", i32 0, i64 3, i64 -5610273550909442482, i64 3}
!97 = !{!"VP", i32 0, i64 3, i64 7468382999542374119, i64 3}
!98 = !{!"VP", i32 0, i64 3, i64 1429807492782621726, i64 3}
!99 = !{!100, !57, i64 8}
!100 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !57, i64 8}
!101 = !{!"branch_weights", i32 239, i32 1}
!102 = distinct !{!102, !103, !104}
!103 = !{!"llvm.loop.mustprogress"}
!104 = !{!"llvm.loop.unroll.disable"}
!105 = !{!"VP", i32 0, i64 3, i64 8049669377434801377, i64 3}
!106 = !{!107, !70, i64 32}
!107 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !85, i64 0, !70, i64 32}
!108 = !{!57, !57, i64 0}
!109 = !{!"function_entry_count", i64 0}
!110 = !{!"function_entry_count", i64 27}
!111 = !{!"function_entry_count", i64 22648489}
!112 = !{!"VP", i32 0, i64 22648489, i64 -604578461294160466, i64 22648489}
!113 = !{!"VP", i32 0, i64 22648489, i64 7918534656437768524, i64 22648489}
!114 = !{!"VP", i32 0, i64 22648489, i64 -8833983005948086323, i64 22648489}
!115 = !{!"VP", i32 0, i64 22648489, i64 -2787738682491994990, i64 22648489}
!116 = !{!"function_entry_count", i64 67908415}
!117 = !{!"VP", i32 0, i64 67908415, i64 -1575212822206464878, i64 67908415}
!118 = !{!"function_entry_count", i64 42}
!119 = !{!"function_entry_count", i64 1}
!120 = !{!"ElemTemplate.cpp;_GLOBAL__sub_I_ElemTemplate.cpp"}

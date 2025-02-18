; ModuleID = 'ElemPI.cpp'
source_filename = "ElemPI.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ElemPI" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr }
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
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::AVT" = type { ptr, ptr, i64, ptr, i32, ptr }

$_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE = comdat any

@_ZTVN11xalanc_1_106ElemPIE = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_106ElemPIE, ptr @_ZN11xalanc_1_106ElemPID2Ev, ptr @_ZN11xalanc_1_106ElemPID0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_106ElemPI12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_106ElemPI10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_106ElemPI14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_106ElemPI16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_] }, align 8
@_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants30ELEMNAME_PI_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants25ATTRVAL_OUTPUT_METHOD_XMLE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_106ElemPIE = dso_local constant [23 x i8] c"N11xalanc_1_106ElemPIE\00", align 1
@_ZTIN11xalanc_1_1019ElemTemplateElementE = external constant ptr
@_ZTIN11xalanc_1_106ElemPIE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_106ElemPIE, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_106ElemPIC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_106ElemPIC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_106ElemPID1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_106ElemPID2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_106ElemPIC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, i32 noundef %4, i32 noundef %5, i32 noundef 18)
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_106ElemPIE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemPI", ptr %0, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !42
  %8 = load ptr, ptr %3, align 8, !tbaa !39
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %12 unwind label %24

12:                                               ; preds = %6
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %15, i64 0, i32 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %15, i64 0, i32 3
  %18 = load ptr, ptr @_ZN11xalanc_1_109Constants30ELEMNAME_PI_WITH_PREFIX_STRINGE, align 8
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %18, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %18, i64 0, i32 3
  br label %26

21:                                               ; preds = %78, %12
  %22 = load ptr, ptr %7, align 8, !tbaa !42
  %23 = icmp eq ptr %22, null
  br i1 %23, label %81, label %84

24:                                               ; preds = %81, %6
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %85

26:                                               ; preds = %14, %78
  %27 = phi i32 [ 0, %14 ], [ %79, %78 ]
  %28 = load ptr, ptr %3, align 8, !tbaa !39
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %27)
          to label %32 unwind label %59

32:                                               ; preds = %26
  %33 = load i64, ptr %16, align 8, !tbaa !64
  %34 = icmp eq i64 %33, 0
  %35 = load ptr, ptr %17, align 8
  %36 = select i1 %34, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %35
  %37 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %36)
          to label %38 unwind label %59

38:                                               ; preds = %32
  %39 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %31)
          to label %40 unwind label %59

40:                                               ; preds = %38
  %41 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %36, i32 noundef %37, ptr noundef %31, i32 noundef %39)
          to label %42 unwind label %59

42:                                               ; preds = %40
  %43 = load ptr, ptr %0, align 8, !tbaa !39
  br i1 %41, label %44, label %61

44:                                               ; preds = %42
  %45 = getelementptr inbounds ptr, ptr %43, i64 4
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %48 unwind label %59

48:                                               ; preds = %44
  %49 = load ptr, ptr %3, align 8, !tbaa !39
  %50 = getelementptr inbounds ptr, ptr %49, i64 5
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %27)
          to label %53 unwind label %59

53:                                               ; preds = %48
  %54 = load ptr, ptr %1, align 8, !tbaa !39
  %55 = getelementptr inbounds ptr, ptr %54, i64 35
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %47, ptr noundef %31, ptr noundef %52, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %58 unwind label %59

58:                                               ; preds = %53
  store ptr %57, ptr %7, align 8, !tbaa !42
  br label %78

59:                                               ; preds = %40, %38, %32, %73, %66, %61, %53, %48, %44, %26
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %85

61:                                               ; preds = %42
  %62 = getelementptr inbounds ptr, ptr %43, i64 5
  %63 = load ptr, ptr %62, align 8
  %64 = invoke noundef zeroext i1 %63(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %31, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %27, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %65 unwind label %59

65:                                               ; preds = %61
  br i1 %64, label %78, label %66

66:                                               ; preds = %65
  %67 = load i64, ptr %19, align 8, !tbaa !64
  %68 = icmp eq i64 %67, 0
  %69 = load ptr, ptr %20, align 8
  %70 = select i1 %68, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %69
  %71 = invoke noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %70, ptr noundef %31, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %27, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %72 unwind label %59

72:                                               ; preds = %66
  br i1 %71, label %78, label %73

73:                                               ; preds = %72
  %74 = load i64, ptr %19, align 8, !tbaa !64
  %75 = icmp eq i64 %74, 0
  %76 = load ptr, ptr %20, align 8
  %77 = select i1 %75, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %76
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 74, ptr noundef %77, ptr noundef %31)
          to label %78 unwind label %59

78:                                               ; preds = %65, %72, %73, %58
  %79 = add nuw i32 %27, 1
  %80 = icmp eq i32 %79, %11
  br i1 %80, label %21, label %26, !llvm.loop !66

81:                                               ; preds = %21
  %82 = load ptr, ptr @_ZN11xalanc_1_109Constants30ELEMNAME_PI_WITH_PREFIX_STRINGE, align 8, !tbaa !69
  %83 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8, !tbaa !69
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 63, ptr noundef nonnull align 8 dereferenceable(36) %82, ptr noundef nonnull align 8 dereferenceable(36) %83)
          to label %84 unwind label %24

84:                                               ; preds = %81, %21
  ret void

85:                                               ; preds = %59, %24
  %86 = phi { ptr, i32 } [ %60, %59 ], [ %25, %24 ]
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #7
  resume { ptr, i32 } %86
}

declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_106ElemPID2Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #4 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_106ElemPID0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #4 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #7
  tail call void @_ZdlPv(ptr noundef %0) #8
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_106ElemPI14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !38 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants30ELEMNAME_PI_WITH_PREFIX_STRINGE, align 8, !tbaa !69
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_106ElemPI12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 !prof !38 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %4 = load ptr, ptr %1, align 8, !tbaa !39
  %5 = getelementptr inbounds ptr, ptr %4, i64 163
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemPI", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  tail call void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %10 = load ptr, ptr @_ZN11xalanc_1_109Constants25ATTRVAL_OUTPUT_METHOD_XMLE, align 8, !tbaa !69
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !70
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %10, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !70
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !64
  %19 = icmp eq i64 %18, 0
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = select i1 %19, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %21
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %10, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !64
  %25 = icmp eq i64 %24, 0
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %10, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8
  %28 = select i1 %25, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %27
  %29 = tail call noundef zeroext i1 @_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtS1_j(ptr noundef %22, ptr noundef %28, i32 noundef %12)
  br i1 %29, label %32, label %30

30:                                               ; preds = %16, %2
  %31 = tail call noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %7)
  br i1 %31, label %33, label %32

32:                                               ; preds = %30, %16
  tail call void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 71, ptr noundef nonnull align 8 dereferenceable(36) %7)
  br label %33

33:                                               ; preds = %32, %30
  %34 = load ptr, ptr %1, align 8, !tbaa !39
  %35 = getelementptr inbounds ptr, ptr %34, i64 163
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef nonnull align 8 dereferenceable(36) ptr %36(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %38 = load ptr, ptr %1, align 8, !tbaa !39
  %39 = getelementptr inbounds ptr, ptr %38, i64 44
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true)
  %41 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %37)
  ret ptr %41
}

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !75

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !76
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 0, i32 noundef -1)
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %6, i32 noundef %10)
  br label %13

12:                                               ; preds = %4
  tail call void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %13

13:                                               ; preds = %12, %8
  ret void
}

declare noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_106ElemPI10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 !prof !38 {
  tail call void @_ZNK11xalanc_1_1019ElemTemplateElement19endChildrenToStringERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %3 = load ptr, ptr %1, align 8, !tbaa !39
  %4 = getelementptr inbounds ptr, ptr %3, i64 165
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %7 = load ptr, ptr %1, align 8, !tbaa !39
  %8 = getelementptr inbounds ptr, ptr %7, i64 165
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr %9(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !64
  %13 = icmp eq i64 %12, 0
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds i16, ptr %15, i64 %12
  %17 = getelementptr inbounds i16, ptr %16, i64 -1
  %18 = icmp eq ptr %17, %15
  %19 = select i1 %13, i1 true, i1 %18
  br i1 %19, label %45, label %20

20:                                               ; preds = %2, %40
  %21 = phi ptr [ %42, %40 ], [ %17, %2 ]
  %22 = phi ptr [ %43, %40 ], [ %15, %2 ]
  %23 = load i16, ptr %22, align 2, !tbaa !77
  %24 = icmp eq i16 %23, 63
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = getelementptr inbounds i16, ptr %22, i64 1
  %27 = icmp eq ptr %26, %21
  br i1 %27, label %40, label %28

28:                                               ; preds = %25
  %29 = load i16, ptr %26, align 2, !tbaa !77
  %30 = icmp eq i16 %29, 62
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = tail call noundef ptr @_ZN11xalanc_1_1014XalanDOMString6insertEPtt(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull %26, i16 noundef zeroext 32)
  %33 = load i64, ptr %11, align 8, !tbaa !64
  %34 = icmp eq i64 %33, 0
  %35 = load ptr, ptr %14, align 8
  %36 = getelementptr inbounds i16, ptr %35, i64 %33
  %37 = getelementptr inbounds i16, ptr %36, i64 -1
  %38 = select i1 %34, ptr %35, ptr %37
  %39 = getelementptr inbounds i16, ptr %32, i64 1
  br label %40

40:                                               ; preds = %25, %28, %31, %20
  %41 = phi ptr [ %22, %20 ], [ %39, %31 ], [ %22, %28 ], [ %22, %25 ]
  %42 = phi ptr [ %21, %20 ], [ %38, %31 ], [ %21, %28 ], [ %21, %25 ]
  %43 = getelementptr inbounds i16, ptr %41, i64 1
  %44 = icmp eq ptr %43, %42
  br i1 %44, label %45, label %20, !llvm.loop !78

45:                                               ; preds = %40, %2
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %10, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !64
  %48 = icmp eq i64 %47, 0
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %10, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = select i1 %48, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %50
  %52 = load i64, ptr %11, align 8, !tbaa !64
  %53 = icmp eq i64 %52, 0
  %54 = load ptr, ptr %14, align 8
  %55 = select i1 %53, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %54
  %56 = load ptr, ptr %1, align 8, !tbaa !39
  %57 = getelementptr inbounds ptr, ptr %56, i64 106
  %58 = load ptr, ptr %57, align 8
  tail call void %58(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %51, ptr noundef %55)
  %59 = load ptr, ptr %1, align 8, !tbaa !39
  %60 = getelementptr inbounds ptr, ptr %59, i64 45
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef zeroext i1 %61(ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

declare void @_ZNK11xalanc_1_1019ElemTemplateElement19endChildrenToStringERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1014XalanDOMString6insertEPtt(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_106ElemPI16childTypeAllowedEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !38 {
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

declare void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 197105}
!36 = !{ptr @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 197105}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !46, i64 328}
!43 = !{!"_ZTSN11xalanc_1_106ElemPIE", !44, i64 0, !46, i64 328}
!44 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !45, i64 0, !46, i64 8, !48, i64 16, !59, i64 248, !46, i64 256, !46, i64 264, !46, i64 272, !47, i64 280, !60, i64 288, !63, i64 320}
!45 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !41, i64 0}
!48 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !49, i64 0, !51, i64 32, !52, i64 64, !53, i64 96}
!49 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !46, i64 0, !50, i64 8, !50, i64 16, !46, i64 24}
!50 = !{!"long", !47, i64 0}
!51 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !46, i64 0, !50, i64 8, !50, i64 16, !46, i64 24}
!52 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !46, i64 0, !50, i64 8, !50, i64 16, !46, i64 24}
!53 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !54, i64 0, !55, i64 1, !46, i64 8, !56, i64 16, !50, i64 24, !50, i64 32, !57, i64 40, !57, i64 64, !58, i64 88, !50, i64 120, !50, i64 128}
!54 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!55 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!56 = !{!"float", !47, i64 0}
!57 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !46, i64 0, !46, i64 8, !46, i64 16}
!58 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !46, i64 0, !50, i64 8, !50, i64 16, !46, i64 24}
!59 = !{!"int", !47, i64 0}
!60 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !61, i64 0, !50, i64 8, !50, i64 16, !46, i64 24}
!61 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !62, i64 0}
!62 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!63 = !{!"short", !47, i64 0}
!64 = !{!65, !50, i64 8}
!65 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !46, i64 0, !50, i64 8, !50, i64 16, !46, i64 24}
!66 = distinct !{!66, !67, !68}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !{!46, !46, i64 0}
!70 = !{!71, !59, i64 32}
!71 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !65, i64 0, !59, i64 32}
!72 = !{!"function_entry_count", i64 197105}
!73 = !{!74, !46, i64 24}
!74 = !{!"_ZTSN11xalanc_1_103AVTE", !46, i64 8, !50, i64 16, !46, i64 24, !59, i64 32, !46, i64 40}
!75 = !{!"branch_weights", i32 0, i32 197105}
!76 = !{!74, !59, i64 32}
!77 = !{!63, !63, i64 0}
!78 = distinct !{!78, !67, !68}

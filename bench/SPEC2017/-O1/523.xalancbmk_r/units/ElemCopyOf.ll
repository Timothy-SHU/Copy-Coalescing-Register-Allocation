; ModuleID = 'ElemCopyOf.cpp'
source_filename = "ElemCopyOf.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ElemCopyOf" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr }
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
%"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList" = type { ptr, ptr }
%"class.xalanc_1_10::SelectionEvent" = type { ptr, ptr, ptr, ptr, ptr, ptr, %"class.xalanc_1_10::XObjectPtr", i32, i8, ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XalanVector.28" = type { ptr, i64, i64, ptr }

$_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1010ElemCopyOfD0Ev = comdat any

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1010ElemCopyOfE = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1010ElemCopyOfE, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, ptr @_ZN11xalanc_1_1010ElemCopyOfD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1010ElemCopyOf12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1010ElemCopyOf14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1010ElemCopyOf8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_] }, align 8
@_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants35ELEMNAME_COPY_OF_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1010ElemCopyOfE = dso_local constant [28 x i8] c"N11xalanc_1_1010ElemCopyOfE\00", align 1
@_ZTIN11xalanc_1_1019ElemTemplateElementE = external constant ptr
@_ZTIN11xalanc_1_1010ElemCopyOfE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1010ElemCopyOfE, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1010ElemCopyOfC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1010ElemCopyOfC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010ElemCopyOfC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %4, i32 noundef %5, i32 noundef 5)
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1010ElemCopyOfE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemCopyOf", ptr %0, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !42
  %8 = load ptr, ptr %3, align 8, !tbaa !39
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %12 unwind label %29

12:                                               ; preds = %6
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE, align 8
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %15, i64 0, i32 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %15, i64 0, i32 3
  %18 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_COPY_OF_WITH_PREFIX_STRINGE, align 8
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %18, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %18, i64 0, i32 3
  br label %31

21:                                               ; preds = %87
  %22 = and i8 %88, 1
  %23 = icmp eq i8 %22, 0
  br label %24

24:                                               ; preds = %21, %12
  %25 = phi i1 [ true, %12 ], [ %23, %21 ]
  %26 = load ptr, ptr %7, align 8
  %27 = icmp eq ptr %26, null
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %91, label %94

29:                                               ; preds = %91, %6
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %95

31:                                               ; preds = %14, %87
  %32 = phi i8 [ 0, %14 ], [ %88, %87 ]
  %33 = phi i32 [ 0, %14 ], [ %89, %87 ]
  %34 = load ptr, ptr %3, align 8, !tbaa !39
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %33)
          to label %38 unwind label %61

38:                                               ; preds = %31
  %39 = load i64, ptr %16, align 8, !tbaa !64
  %40 = icmp eq i64 %39, 0
  %41 = load ptr, ptr %17, align 8
  %42 = select i1 %40, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %41
  %43 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %42)
          to label %44 unwind label %61

44:                                               ; preds = %38
  %45 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %37)
          to label %46 unwind label %61

46:                                               ; preds = %44
  %47 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %42, i32 noundef %43, ptr noundef %37, i32 noundef %45)
          to label %48 unwind label %61

48:                                               ; preds = %46
  br i1 %47, label %49, label %76

49:                                               ; preds = %48
  %50 = load ptr, ptr %3, align 8, !tbaa !39
  %51 = getelementptr inbounds ptr, ptr %50, i64 5
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %33)
          to label %54 unwind label %63

54:                                               ; preds = %49
  %55 = load i16, ptr %53, align 2, !tbaa !66
  %56 = icmp eq i16 %55, 46
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = getelementptr inbounds i16, ptr %53, i64 1
  %59 = load i16, ptr %58, align 2, !tbaa !66
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %87, label %65

61:                                               ; preds = %46, %44, %38, %82, %76, %31
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %95

63:                                               ; preds = %70, %65, %49
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %95

65:                                               ; preds = %57, %54
  %66 = load ptr, ptr %0, align 8, !tbaa !39
  %67 = getelementptr inbounds ptr, ptr %66, i64 4
  %68 = load ptr, ptr %67, align 8
  %69 = invoke noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %70 unwind label %63

70:                                               ; preds = %65
  %71 = load ptr, ptr %1, align 8, !tbaa !39
  %72 = getelementptr inbounds ptr, ptr %71, i64 21
  %73 = load ptr, ptr %72, align 8
  %74 = invoke noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %69, ptr noundef nonnull %53, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %75 unwind label %63

75:                                               ; preds = %70
  store ptr %74, ptr %7, align 8, !tbaa !42
  br label %87

76:                                               ; preds = %48
  %77 = load ptr, ptr %0, align 8, !tbaa !39
  %78 = getelementptr inbounds ptr, ptr %77, i64 5
  %79 = load ptr, ptr %78, align 8
  %80 = invoke noundef zeroext i1 %79(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %37, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %33, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %81 unwind label %61

81:                                               ; preds = %76
  br i1 %80, label %87, label %82

82:                                               ; preds = %81
  %83 = load i64, ptr %19, align 8, !tbaa !64
  %84 = icmp eq i64 %83, 0
  %85 = load ptr, ptr %20, align 8
  %86 = select i1 %84, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %85
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 74, ptr noundef %86, ptr noundef %37)
          to label %87 unwind label %61

87:                                               ; preds = %75, %57, %81, %82
  %88 = phi i8 [ %32, %82 ], [ %32, %81 ], [ %32, %75 ], [ 1, %57 ]
  %89 = add nuw i32 %33, 1
  %90 = icmp eq i32 %89, %11
  br i1 %90, label %21, label %31, !llvm.loop !67

91:                                               ; preds = %24
  %92 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_COPY_OF_WITH_PREFIX_STRINGE, align 8, !tbaa !70
  %93 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE, align 8, !tbaa !70
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 63, ptr noundef nonnull align 8 dereferenceable(36) %92, ptr noundef nonnull align 8 dereferenceable(36) %93)
          to label %94 unwind label %29

94:                                               ; preds = %91, %24
  ret void

95:                                               ; preds = %61, %63, %29
  %96 = phi { ptr, i32 } [ %30, %29 ], [ %64, %63 ], [ %62, %61 ]
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #10
  resume { ptr, i32 } %96
}

declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010ElemCopyOf14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 !prof !38 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_COPY_OF_WITH_PREFIX_STRINGE, align 8, !tbaa !70
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1010ElemCopyOf12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  %4 = alloca %"class.xalanc_1_10::SelectionEvent", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %8 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %9 = alloca %"class.xalanc_1_10::SelectionEvent", align 8
  %10 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %11 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %12 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %13 = load ptr, ptr %1, align 8, !tbaa !39
  %14 = getelementptr inbounds ptr, ptr %13, i64 6
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %17 = getelementptr inbounds %"class.xalanc_1_10::ElemCopyOf", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %168

20:                                               ; preds = %2
  %21 = load ptr, ptr %1, align 8, !tbaa !39
  %22 = getelementptr inbounds ptr, ptr %21, i64 137
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef i64 %23(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %160, label %26

26:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  store ptr %1, ptr %3, align 8, !tbaa !71
  %27 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %3, i64 0, i32 1
  %28 = load ptr, ptr %1, align 8, !tbaa !39
  %29 = getelementptr inbounds ptr, ptr %28, i64 21
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(24) %1)
  store ptr %31, ptr %27, align 8, !tbaa !73
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %31, ptr noundef %16)
          to label %32 unwind label %95

32:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #10
  %33 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %1, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !74
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %34, i32 noundef -1)
          to label %35 unwind label %97

35:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #10
  %36 = load ptr, ptr %33, align 8, !tbaa !74
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef -1)
          to label %37 unwind label %99

37:                                               ; preds = %35
  %38 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %1, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !76
  %40 = load ptr, ptr %39, align 8, !tbaa !39
  %41 = getelementptr inbounds ptr, ptr %40, i64 4
  %42 = load ptr, ptr %41, align 8
  invoke void %42(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %43 unwind label %101

43:                                               ; preds = %37
  invoke void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringESB_NS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %16, ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull %7)
          to label %44 unwind label %103

44:                                               ; preds = %43
  %45 = load ptr, ptr %1, align 8, !tbaa !39
  %46 = getelementptr inbounds ptr, ptr %45, i64 140
  %47 = load ptr, ptr %46, align 8
  invoke void %47(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %48 unwind label %105

48:                                               ; preds = %44
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %4) #10
  %49 = load ptr, ptr %7, align 8, !tbaa !78
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %49)
          to label %53 unwind label %50

50:                                               ; preds = %48
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  call void @__clang_call_terminate(ptr %52) #11
  unreachable

53:                                               ; preds = %48
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 2
  %55 = load i64, ptr %54, align 8, !tbaa !80
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !81
  %60 = load ptr, ptr %6, align 8, !tbaa !82
  %61 = load ptr, ptr %60, align 8, !tbaa !39
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %59)
          to label %67 unwind label %64

64:                                               ; preds = %57
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #11
  unreachable

67:                                               ; preds = %53, %57
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %69 = load i64, ptr %68, align 8, !tbaa !80
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !81
  %74 = load ptr, ptr %5, align 8, !tbaa !82
  %75 = load ptr, ptr %74, align 8, !tbaa !39
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef %73)
          to label %81 unwind label %78

78:                                               ; preds = %71
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  call void @__clang_call_terminate(ptr %80) #11
  unreachable

81:                                               ; preds = %67, %71
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #10
  %82 = load ptr, ptr %27, align 8, !tbaa !73
  %83 = icmp eq ptr %82, null
  br i1 %83, label %94, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %3, align 8, !tbaa !71
  %86 = load ptr, ptr %85, align 8, !tbaa !39
  %87 = getelementptr inbounds ptr, ptr %86, i64 22
  %88 = load ptr, ptr %87, align 8
  %89 = invoke noundef zeroext i1 %88(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull %82)
          to label %90 unwind label %91

90:                                               ; preds = %84
  store ptr null, ptr %27, align 8, !tbaa !73
  br label %94

91:                                               ; preds = %84
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  call void @__clang_call_terminate(ptr %93) #11
  unreachable

94:                                               ; preds = %81, %90
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  br label %160

95:                                               ; preds = %26
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %145

97:                                               ; preds = %32
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %143

99:                                               ; preds = %35
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %128

101:                                              ; preds = %37
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %113

103:                                              ; preds = %43
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %107

105:                                              ; preds = %44
  %106 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %4) #10
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi { ptr, i32 } [ %106, %105 ], [ %104, %103 ]
  %109 = load ptr, ptr %7, align 8, !tbaa !78
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %109)
          to label %113 unwind label %110

110:                                              ; preds = %107
  %111 = landingpad { ptr, i32 }
          catch ptr null
  %112 = extractvalue { ptr, i32 } %111, 0
  call void @__clang_call_terminate(ptr %112) #11
  unreachable

113:                                              ; preds = %107, %101
  %114 = phi { ptr, i32 } [ %102, %101 ], [ %108, %107 ]
  %115 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 2
  %116 = load i64, ptr %115, align 8, !tbaa !80
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %6, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !81
  %121 = load ptr, ptr %6, align 8, !tbaa !82
  %122 = load ptr, ptr %121, align 8, !tbaa !39
  %123 = getelementptr inbounds ptr, ptr %122, i64 3
  %124 = load ptr, ptr %123, align 8
  invoke void %124(ptr noundef nonnull align 8 dereferenceable(8) %121, ptr noundef %120)
          to label %128 unwind label %125

125:                                              ; preds = %118
  %126 = landingpad { ptr, i32 }
          catch ptr null
  %127 = extractvalue { ptr, i32 } %126, 0
  call void @__clang_call_terminate(ptr %127) #11
  unreachable

128:                                              ; preds = %118, %113, %99
  %129 = phi { ptr, i32 } [ %100, %99 ], [ %114, %113 ], [ %114, %118 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10
  %130 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %131 = load i64, ptr %130, align 8, !tbaa !80
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !81
  %136 = load ptr, ptr %5, align 8, !tbaa !82
  %137 = load ptr, ptr %136, align 8, !tbaa !39
  %138 = getelementptr inbounds ptr, ptr %137, i64 3
  %139 = load ptr, ptr %138, align 8
  invoke void %139(ptr noundef nonnull align 8 dereferenceable(8) %136, ptr noundef %135)
          to label %143 unwind label %140

140:                                              ; preds = %133
  %141 = landingpad { ptr, i32 }
          catch ptr null
  %142 = extractvalue { ptr, i32 } %141, 0
  call void @__clang_call_terminate(ptr %142) #11
  unreachable

143:                                              ; preds = %133, %128, %97
  %144 = phi { ptr, i32 } [ %98, %97 ], [ %129, %128 ], [ %129, %133 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #10
  br label %145

145:                                              ; preds = %143, %95
  %146 = phi { ptr, i32 } [ %144, %143 ], [ %96, %95 ]
  %147 = load ptr, ptr %27, align 8, !tbaa !73
  %148 = icmp eq ptr %147, null
  br i1 %148, label %159, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr %3, align 8, !tbaa !71
  %151 = load ptr, ptr %150, align 8, !tbaa !39
  %152 = getelementptr inbounds ptr, ptr %151, i64 22
  %153 = load ptr, ptr %152, align 8
  %154 = invoke noundef zeroext i1 %153(ptr noundef nonnull align 8 dereferenceable(24) %150, ptr noundef nonnull %147)
          to label %155 unwind label %156

155:                                              ; preds = %149
  store ptr null, ptr %27, align 8, !tbaa !73
  br label %159

156:                                              ; preds = %149
  %157 = landingpad { ptr, i32 }
          catch ptr null
  %158 = extractvalue { ptr, i32 } %157, 0
  call void @__clang_call_terminate(ptr %158) #11
  unreachable

159:                                              ; preds = %145, %155
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  br label %308

160:                                              ; preds = %94, %20
  %161 = load ptr, ptr %0, align 8, !tbaa !39
  %162 = getelementptr inbounds ptr, ptr %161, i64 4
  %163 = load ptr, ptr %162, align 8
  %164 = call noundef ptr %163(ptr noundef nonnull align 8 dereferenceable(322) %0)
  %165 = load ptr, ptr %1, align 8, !tbaa !39
  %166 = getelementptr inbounds ptr, ptr %165, i64 108
  %167 = load ptr, ptr %166, align 8
  call void %167(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %164)
  br label %307

168:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  call void @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(129) %18, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %169 = load ptr, ptr %1, align 8, !tbaa !39
  %170 = getelementptr inbounds ptr, ptr %169, i64 137
  %171 = load ptr, ptr %170, align 8
  %172 = invoke noundef i64 %171(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %173 unwind label %206

173:                                              ; preds = %168
  %174 = icmp eq i64 %172, 0
  br i1 %174, label %239, label %175

175:                                              ; preds = %173
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #10
  %176 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %1, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !74
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %177, i32 noundef -1)
          to label %178 unwind label %208

178:                                              ; preds = %175
  %179 = load ptr, ptr %17, align 8, !tbaa !42
  %180 = load ptr, ptr %8, align 8, !tbaa !78
  store ptr %180, ptr %11, align 8, !tbaa !78
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %180)
          to label %181 unwind label %210

181:                                              ; preds = %178
  invoke void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %16, ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(129) %179, ptr noundef nonnull %11)
          to label %182 unwind label %212

182:                                              ; preds = %181
  %183 = load ptr, ptr %1, align 8, !tbaa !39
  %184 = getelementptr inbounds ptr, ptr %183, i64 140
  %185 = load ptr, ptr %184, align 8
  invoke void %185(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %186 unwind label %214

186:                                              ; preds = %182
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #10
  %187 = load ptr, ptr %11, align 8, !tbaa !78
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %187)
          to label %191 unwind label %188

188:                                              ; preds = %186
  %189 = landingpad { ptr, i32 }
          catch ptr null
  %190 = extractvalue { ptr, i32 } %189, 0
  call void @__clang_call_terminate(ptr %190) #11
  unreachable

191:                                              ; preds = %186
  %192 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %10, i64 0, i32 2
  %193 = load i64, ptr %192, align 8, !tbaa !80
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %205, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %10, i64 0, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !81
  %198 = load ptr, ptr %10, align 8, !tbaa !82
  %199 = load ptr, ptr %198, align 8, !tbaa !39
  %200 = getelementptr inbounds ptr, ptr %199, i64 3
  %201 = load ptr, ptr %200, align 8
  invoke void %201(ptr noundef nonnull align 8 dereferenceable(8) %198, ptr noundef %197)
          to label %205 unwind label %202

202:                                              ; preds = %195
  %203 = landingpad { ptr, i32 }
          catch ptr null
  %204 = extractvalue { ptr, i32 } %203, 0
  call void @__clang_call_terminate(ptr %204) #11
  unreachable

205:                                              ; preds = %191, %195
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %9) #10
  br label %239

206:                                              ; preds = %168
  %207 = landingpad { ptr, i32 }
          cleanup
  br label %300

208:                                              ; preds = %175
  %209 = landingpad { ptr, i32 }
          cleanup
  br label %237

210:                                              ; preds = %178
  %211 = landingpad { ptr, i32 }
          cleanup
  br label %222

212:                                              ; preds = %181
  %213 = landingpad { ptr, i32 }
          cleanup
  br label %216

214:                                              ; preds = %182
  %215 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #10
  br label %216

216:                                              ; preds = %214, %212
  %217 = phi { ptr, i32 } [ %215, %214 ], [ %213, %212 ]
  %218 = load ptr, ptr %11, align 8, !tbaa !78
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %218)
          to label %222 unwind label %219

219:                                              ; preds = %216
  %220 = landingpad { ptr, i32 }
          catch ptr null
  %221 = extractvalue { ptr, i32 } %220, 0
  call void @__clang_call_terminate(ptr %221) #11
  unreachable

222:                                              ; preds = %216, %210
  %223 = phi { ptr, i32 } [ %211, %210 ], [ %217, %216 ]
  %224 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %10, i64 0, i32 2
  %225 = load i64, ptr %224, align 8, !tbaa !80
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %237, label %227

227:                                              ; preds = %222
  %228 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %10, i64 0, i32 3
  %229 = load ptr, ptr %228, align 8, !tbaa !81
  %230 = load ptr, ptr %10, align 8, !tbaa !82
  %231 = load ptr, ptr %230, align 8, !tbaa !39
  %232 = getelementptr inbounds ptr, ptr %231, i64 3
  %233 = load ptr, ptr %232, align 8
  invoke void %233(ptr noundef nonnull align 8 dereferenceable(8) %230, ptr noundef %229)
          to label %237 unwind label %234

234:                                              ; preds = %227
  %235 = landingpad { ptr, i32 }
          catch ptr null
  %236 = extractvalue { ptr, i32 } %235, 0
  call void @__clang_call_terminate(ptr %236) #11
  unreachable

237:                                              ; preds = %227, %222, %208
  %238 = phi { ptr, i32 } [ %209, %208 ], [ %223, %222 ], [ %223, %227 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %9) #10
  br label %300

239:                                              ; preds = %205, %173
  %240 = load ptr, ptr %8, align 8, !tbaa !78
  %241 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %240, i64 0, i32 1
  %242 = load i32, ptr %241, align 4, !tbaa !83
  switch i32 %242, label %290 [
    i32 6, label %281
    i32 5, label %245
  ]

243:                                              ; preds = %290, %286, %281
  %244 = landingpad { ptr, i32 }
          cleanup
  br label %300

245:                                              ; preds = %239
  %246 = load ptr, ptr %240, align 8, !tbaa !39
  %247 = getelementptr inbounds ptr, ptr %246, i64 13
  %248 = load ptr, ptr %247, align 8
  %249 = invoke noundef nonnull align 8 dereferenceable(8) ptr %248(ptr noundef nonnull align 8 dereferenceable(24) %240)
          to label %250 unwind label %257

250:                                              ; preds = %245
  %251 = load ptr, ptr %249, align 8, !tbaa !39
  %252 = getelementptr inbounds ptr, ptr %251, i64 3
  %253 = load ptr, ptr %252, align 8
  %254 = invoke noundef i32 %253(ptr noundef nonnull align 8 dereferenceable(8) %249)
          to label %255 unwind label %259

255:                                              ; preds = %250
  %256 = icmp eq i32 %254, 0
  br i1 %256, label %294, label %261

257:                                              ; preds = %245
  %258 = landingpad { ptr, i32 }
          cleanup
  br label %300

259:                                              ; preds = %250
  %260 = landingpad { ptr, i32 }
          cleanup
  br label %300

261:                                              ; preds = %255, %276
  %262 = phi i32 [ %277, %276 ], [ 0, %255 ]
  %263 = load ptr, ptr %249, align 8, !tbaa !39
  %264 = getelementptr inbounds ptr, ptr %263, i64 2
  %265 = load ptr, ptr %264, align 8
  %266 = invoke noundef ptr %265(ptr noundef nonnull align 8 dereferenceable(8) %249, i32 noundef %262)
          to label %267 unwind label %279

267:                                              ; preds = %261
  %268 = load ptr, ptr %0, align 8, !tbaa !39
  %269 = getelementptr inbounds ptr, ptr %268, i64 4
  %270 = load ptr, ptr %269, align 8
  %271 = invoke noundef ptr %270(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %272 unwind label %279

272:                                              ; preds = %267
  %273 = load ptr, ptr %1, align 8, !tbaa !39
  %274 = getelementptr inbounds ptr, ptr %273, i64 108
  %275 = load ptr, ptr %274, align 8
  invoke void %275(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %266, ptr noundef %271)
          to label %276 unwind label %279

276:                                              ; preds = %272
  %277 = add nuw i32 %262, 1
  %278 = icmp eq i32 %277, %254
  br i1 %278, label %294, label %261, !llvm.loop !87

279:                                              ; preds = %272, %267, %261
  %280 = landingpad { ptr, i32 }
          cleanup
  br label %300

281:                                              ; preds = %239
  %282 = load ptr, ptr %0, align 8, !tbaa !39
  %283 = getelementptr inbounds ptr, ptr %282, i64 4
  %284 = load ptr, ptr %283, align 8
  %285 = invoke noundef ptr %284(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %286 unwind label %243

286:                                              ; preds = %281
  %287 = load ptr, ptr %1, align 8, !tbaa !39
  %288 = getelementptr inbounds ptr, ptr %287, i64 115
  %289 = load ptr, ptr %288, align 8
  invoke void %289(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %240, ptr noundef %285)
          to label %294 unwind label %243

290:                                              ; preds = %239
  %291 = load ptr, ptr %1, align 8, !tbaa !39
  %292 = getelementptr inbounds ptr, ptr %291, i64 153
  %293 = load ptr, ptr %292, align 8
  invoke void %293(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %294 unwind label %243

294:                                              ; preds = %276, %290, %255, %286
  %295 = load ptr, ptr %8, align 8, !tbaa !78
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %295)
          to label %299 unwind label %296

296:                                              ; preds = %294
  %297 = landingpad { ptr, i32 }
          catch ptr null
  %298 = extractvalue { ptr, i32 } %297, 0
  call void @__clang_call_terminate(ptr %298) #11
  unreachable

299:                                              ; preds = %294
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  br label %307

300:                                              ; preds = %243, %259, %279, %257, %237, %206
  %301 = phi { ptr, i32 } [ %238, %237 ], [ %207, %206 ], [ %244, %243 ], [ %258, %257 ], [ %280, %279 ], [ %260, %259 ]
  %302 = load ptr, ptr %8, align 8, !tbaa !78
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %302)
          to label %306 unwind label %303

303:                                              ; preds = %300
  %304 = landingpad { ptr, i32 }
          catch ptr null
  %305 = extractvalue { ptr, i32 } %304, 0
  call void @__clang_call_terminate(ptr %305) #11
  unreachable

306:                                              ; preds = %300
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  br label %308

307:                                              ; preds = %299, %160
  ret ptr null

308:                                              ; preds = %306, %159
  %309 = phi { ptr, i32 } [ %146, %159 ], [ %301, %306 ]
  resume { ptr, i32 } %309
}

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringESB_NS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %5 = load ptr, ptr %3, align 8, !tbaa !39
  %6 = getelementptr inbounds ptr, ptr %5, i64 29
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %3), !prof !89
  %9 = load ptr, ptr %3, align 8, !tbaa !39
  %10 = getelementptr inbounds ptr, ptr %9, i64 30
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %2), !prof !90
  %12 = load ptr, ptr %3, align 8, !tbaa !39
  %13 = getelementptr inbounds ptr, ptr %12, i64 6
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %16 unwind label %28, !prof !91

16:                                               ; preds = %4
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.28", ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  %19 = getelementptr inbounds i32, ptr %18, i64 2
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %15, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %20 unwind label %28, !prof !94

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 8, !tbaa !39
  %22 = getelementptr inbounds ptr, ptr %21, i64 30
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %8)
          to label %27 unwind label %24, !prof !90

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #11
  unreachable

27:                                               ; preds = %20
  ret void

28:                                               ; preds = %16, %4
  %29 = landingpad { ptr, i32 }
          cleanup
  %30 = load ptr, ptr %3, align 8, !tbaa !39
  %31 = getelementptr inbounds ptr, ptr %30, i64 30
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %8)
          to label %36 unwind label %33

33:                                               ; preds = %28
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  tail call void @__clang_call_terminate(ptr %35) #11
  unreachable

36:                                               ; preds = %28
  resume { ptr, i32 } %29
}

declare void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(129), ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1010ElemCopyOf8getXPathEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(336) %0, i32 noundef %1) unnamed_addr #7 align 2 !prof !38 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemCopyOf", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = select i1 %3, ptr %5, ptr null
  ret ptr %6
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #5

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ElemCopyOfD0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #8 comdat align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) #10
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

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

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !38 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #2

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind }

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
!35 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 44800884}
!36 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @__clang_call_terminate, i64 43}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !46, i64 328}
!43 = !{!"_ZTSN11xalanc_1_1010ElemCopyOfE", !44, i64 0, !46, i64 328}
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
!66 = !{!63, !63, i64 0}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!46, !46, i64 0}
!71 = !{!72, !46, i64 0}
!72 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListE", !46, i64 0, !46, i64 8}
!73 = !{!72, !46, i64 8}
!74 = !{!75, !46, i64 8}
!75 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !46, i64 8}
!76 = !{!77, !46, i64 16}
!77 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !75, i64 0, !46, i64 16}
!78 = !{!79, !46, i64 0}
!79 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !46, i64 0}
!80 = !{!65, !50, i64 16}
!81 = !{!65, !46, i64 24}
!82 = !{!65, !46, i64 0}
!83 = !{!84, !86, i64 12}
!84 = !{!"_ZTSN11xalanc_1_107XObjectE", !85, i64 0, !86, i64 12, !46, i64 16}
!85 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !59, i64 8}
!86 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !47, i64 0}
!87 = distinct !{!87, !68, !69}
!88 = !{!"function_entry_count", i64 44800927}
!89 = !{!"VP", i32 0, i64 44800927, i64 -6410307884929493294, i64 44800927}
!90 = !{!"VP", i32 0, i64 44800927, i64 8453500335362080052, i64 44800927}
!91 = !{!"VP", i32 0, i64 44800927, i64 -7584622325260852241, i64 44800927}
!92 = !{!93, !46, i64 24}
!93 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !46, i64 0, !50, i64 8, !50, i64 16, !46, i64 24}
!94 = !{!"branch_weights", i32 44800927, i32 0}

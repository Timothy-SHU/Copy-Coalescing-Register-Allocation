; ModuleID = 'ElemDecimalFormat.cpp'
source_filename = "ElemDecimalFormat.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanQNameByValue" = type { %"class.xalanc_1_10::XalanQName", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElemDecimalFormat" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr, ptr, ptr, %"class.xalanc_1_10::XalanDecimalFormatSymbols" }
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
%"class.xalanc_1_10::XalanDecimalFormatSymbols" = type { %"class.xalanc_1_10::XalanDOMString", i16, i16, i16, [2 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i16, i16, [4 x i8], %"class.xalanc_1_10::XalanDOMString", i16, i16, i16, i16 }
%"class.xalanc_1_10::XPathConstructionContext" = type { ptr, ptr }
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

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

@_ZN11xalanc_1_10L7s_emptyE = internal global %"class.xalanc_1_10::XalanQNameByValue" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1017ElemDecimalFormatE = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017ElemDecimalFormatE, ptr @_ZN11xalanc_1_1017ElemDecimalFormatD2Ev, ptr @_ZN11xalanc_1_1017ElemDecimalFormatD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1017ElemDecimalFormat14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1017ElemDecimalFormat8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_] }, align 8
@_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants25ATTRNAME_DECIMALSEPARATORE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants41ELEMNAME_DECIMALFORMAT_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants26ATTRNAME_GROUPINGSEPARATORE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants17ATTRNAME_INFINITYE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants18ATTRNAME_MINUSSIGNE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants12ATTRNAME_NANE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants16ATTRNAME_PERCENTE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants17ATTRNAME_PERMILLEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants18ATTRNAME_ZERODIGITE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants14ATTRNAME_DIGITE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants25ATTRNAME_PATTERNSEPARATORE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants16ATTRVAL_INFINITYE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants11ATTRVAL_NANE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1017ElemDecimalFormatE = dso_local constant [35 x i8] c"N11xalanc_1_1017ElemDecimalFormatE\00", align 1
@_ZTIN11xalanc_1_1019ElemTemplateElementE = external constant ptr
@_ZTIN11xalanc_1_1017ElemDecimalFormatE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017ElemDecimalFormatE, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ElemDecimalFormat.cpp, ptr null }]

@_ZN11xalanc_1_1017ElemDecimalFormatC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1017ElemDecimalFormatC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_1017ElemDecimalFormatD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017ElemDecimalFormatD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017ElemDecimalFormatC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %4, i32 noundef %5, i32 noundef 33)
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1017ElemDecimalFormatE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store ptr @_ZN11xalanc_1_10L7s_emptyE, ptr %10, align 8, !tbaa !51
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  invoke void @_ZN11xalanc_1_1025XalanDecimalFormatSymbolsC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(184) %11, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %14 unwind label %99

14:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #17
  %15 = load ptr, ptr %12, align 8, !tbaa !76
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %16 unwind label %101

16:                                               ; preds = %14
  %17 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 5, i32 5
  %18 = icmp eq ptr %17, %7
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %21 unwind label %103

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !78
  %24 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 5, i32 5, i32 1
  store i32 %23, ptr %24, align 8, !tbaa !78
  br label %25

25:                                               ; preds = %21, %16
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !79
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !80
  %32 = load ptr, ptr %7, align 8, !tbaa !81
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %31)
          to label %39 unwind label %36

36:                                               ; preds = %29
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  call void @__clang_call_terminate(ptr %38) #18
  unreachable

39:                                               ; preds = %25, %29
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #17
  %40 = load ptr, ptr %12, align 8, !tbaa !76
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %41 unwind label %120

41:                                               ; preds = %39
  %42 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 5, i32 10
  %43 = icmp eq ptr %42, %8
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %46 unwind label %122

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %8, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !78
  %49 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 5, i32 10, i32 1
  store i32 %48, ptr %49, align 8, !tbaa !78
  br label %50

50:                                               ; preds = %46, %41
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !79
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !80
  %57 = load ptr, ptr %8, align 8, !tbaa !81
  %58 = load ptr, ptr %57, align 8, !tbaa !48
  %59 = getelementptr inbounds ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  invoke void %60(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef %56)
          to label %64 unwind label %61

61:                                               ; preds = %54
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  call void @__clang_call_terminate(ptr %63) #18
  unreachable

64:                                               ; preds = %50, %54
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #17
  %65 = load ptr, ptr %3, align 8, !tbaa !48
  %66 = getelementptr inbounds ptr, ptr %65, i64 2
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef i32 %67(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %69 unwind label %139

69:                                               ; preds = %64
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %95, label %71

71:                                               ; preds = %69
  %72 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %72, i64 0, i32 1
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %72, i64 0, i32 3
  %75 = load ptr, ptr @_ZN11xalanc_1_109Constants25ATTRNAME_DECIMALSEPARATORE, align 8
  %76 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %75, i64 0, i32 1
  %77 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %75, i64 0, i32 3
  %78 = load ptr, ptr @_ZN11xalanc_1_109Constants26ATTRNAME_GROUPINGSEPARATORE, align 8
  %79 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %78, i64 0, i32 1
  %80 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %78, i64 0, i32 3
  %81 = load ptr, ptr @_ZN11xalanc_1_109Constants17ATTRNAME_INFINITYE, align 8
  %82 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %81, i64 0, i32 1
  %83 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %81, i64 0, i32 3
  %84 = load ptr, ptr @_ZN11xalanc_1_109Constants18ATTRNAME_MINUSSIGNE, align 8
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %84, i64 0, i32 1
  %86 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %84, i64 0, i32 3
  %87 = load ptr, ptr @_ZN11xalanc_1_109Constants41ELEMNAME_DECIMALFORMAT_WITH_PREFIX_STRINGE, align 8
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %87, i64 0, i32 1
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %87, i64 0, i32 3
  %90 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 5, i32 3
  %91 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %87, i64 0, i32 1
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %87, i64 0, i32 3
  %93 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 5, i32 1
  %94 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  br label %141

95:                                               ; preds = %586, %69
  %96 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 5, i32 5, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !78
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %589, label %597

99:                                               ; preds = %6
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %624

101:                                              ; preds = %14
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %118

103:                                              ; preds = %19
  %104 = landingpad { ptr, i32 }
          cleanup
  %105 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %106 = load i64, ptr %105, align 8, !tbaa !79
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !80
  %111 = load ptr, ptr %7, align 8, !tbaa !81
  %112 = load ptr, ptr %111, align 8, !tbaa !48
  %113 = getelementptr inbounds ptr, ptr %112, i64 3
  %114 = load ptr, ptr %113, align 8
  invoke void %114(ptr noundef nonnull align 8 dereferenceable(8) %111, ptr noundef %110)
          to label %118 unwind label %115

115:                                              ; preds = %108
  %116 = landingpad { ptr, i32 }
          catch ptr null
  %117 = extractvalue { ptr, i32 } %116, 0
  call void @__clang_call_terminate(ptr %117) #18
  unreachable

118:                                              ; preds = %108, %103, %101
  %119 = phi { ptr, i32 } [ %102, %101 ], [ %104, %103 ], [ %104, %108 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #17
  br label %622

120:                                              ; preds = %39
  %121 = landingpad { ptr, i32 }
          cleanup
  br label %137

122:                                              ; preds = %44
  %123 = landingpad { ptr, i32 }
          cleanup
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 2
  %125 = load i64, ptr %124, align 8, !tbaa !79
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %137, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !80
  %130 = load ptr, ptr %8, align 8, !tbaa !81
  %131 = load ptr, ptr %130, align 8, !tbaa !48
  %132 = getelementptr inbounds ptr, ptr %131, i64 3
  %133 = load ptr, ptr %132, align 8
  invoke void %133(ptr noundef nonnull align 8 dereferenceable(8) %130, ptr noundef %129)
          to label %137 unwind label %134

134:                                              ; preds = %127
  %135 = landingpad { ptr, i32 }
          catch ptr null
  %136 = extractvalue { ptr, i32 } %135, 0
  call void @__clang_call_terminate(ptr %136) #18
  unreachable

137:                                              ; preds = %127, %122, %120
  %138 = phi { ptr, i32 } [ %121, %120 ], [ %123, %122 ], [ %123, %127 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #17
  br label %622

139:                                              ; preds = %604, %592, %64
  %140 = landingpad { ptr, i32 }
          cleanup
  br label %622

141:                                              ; preds = %71, %586
  %142 = phi i32 [ 0, %71 ], [ %587, %586 ]
  %143 = load ptr, ptr %3, align 8, !tbaa !48
  %144 = getelementptr inbounds ptr, ptr %143, i64 3
  %145 = load ptr, ptr %144, align 8
  %146 = invoke noundef ptr %145(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %142)
          to label %147 unwind label %193

147:                                              ; preds = %141
  %148 = load i64, ptr %73, align 8, !tbaa !82
  %149 = icmp eq i64 %148, 0
  %150 = load ptr, ptr %74, align 8
  %151 = select i1 %149, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %150
  %152 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %151)
          to label %153 unwind label %193

153:                                              ; preds = %147
  %154 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %146)
          to label %155 unwind label %193

155:                                              ; preds = %153
  %156 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %151, i32 noundef %152, ptr noundef %146, i32 noundef %154)
          to label %157 unwind label %193

157:                                              ; preds = %155
  br i1 %156, label %158, label %195

158:                                              ; preds = %157
  %159 = load ptr, ptr %3, align 8, !tbaa !48
  %160 = getelementptr inbounds ptr, ptr %159, i64 5
  %161 = load ptr, ptr %160, align 8
  %162 = invoke noundef ptr %161(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %142)
          to label %163 unwind label %193

163:                                              ; preds = %158
  %164 = load ptr, ptr %94, align 8, !tbaa !83
  %165 = load ptr, ptr %0, align 8, !tbaa !48
  %166 = getelementptr inbounds ptr, ptr %165, i64 4
  %167 = load ptr, ptr %166, align 8
  %168 = invoke noundef ptr %167(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %169 unwind label %193

169:                                              ; preds = %163
  %170 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %164, i64 0, i32 8
  %171 = load ptr, ptr %1, align 8, !tbaa !48
  %172 = getelementptr inbounds ptr, ptr %171, i64 41
  %173 = load ptr, ptr %172, align 8
  %174 = invoke noundef ptr %173(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %162, ptr noundef nonnull align 8 dereferenceable(80) %170, ptr noundef %168, i1 noundef zeroext false)
          to label %175 unwind label %193

175:                                              ; preds = %169
  store ptr %174, ptr %10, align 8, !tbaa !51
  %176 = load ptr, ptr %174, align 8, !tbaa !48
  %177 = getelementptr inbounds ptr, ptr %176, i64 2
  %178 = load ptr, ptr %177, align 8
  %179 = invoke noundef nonnull align 8 dereferenceable(36) ptr %178(ptr noundef nonnull align 8 dereferenceable(8) %174)
          to label %180 unwind label %193

180:                                              ; preds = %175
  %181 = invoke noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %179)
          to label %182 unwind label %193

182:                                              ; preds = %180
  br i1 %181, label %586, label %183

183:                                              ; preds = %182
  %184 = load i64, ptr %73, align 8, !tbaa !82
  %185 = load ptr, ptr %74, align 8
  %186 = load ptr, ptr %3, align 8, !tbaa !48
  %187 = getelementptr inbounds ptr, ptr %186, i64 5
  %188 = load ptr, ptr %187, align 8
  %189 = invoke noundef ptr %188(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %142)
          to label %190 unwind label %193

190:                                              ; preds = %183
  %191 = icmp eq i64 %184, 0
  %192 = select i1 %191, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %185
  br label %582

193:                                              ; preds = %582, %348, %536, %534, %525, %493, %491, %482, %450, %448, %439, %407, %405, %396, %364, %362, %353, %346, %345, %337, %335, %326, %294, %292, %286, %284, %283, %275, %273, %267, %239, %237, %231, %203, %201, %195, %180, %175, %155, %153, %147, %568, %340, %278, %183, %169, %163, %158, %141
  %194 = landingpad { ptr, i32 }
          cleanup
  br label %622

195:                                              ; preds = %157
  %196 = load i64, ptr %76, align 8, !tbaa !82
  %197 = icmp eq i64 %196, 0
  %198 = load ptr, ptr %77, align 8
  %199 = select i1 %197, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %198
  %200 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %199)
          to label %201 unwind label %193

201:                                              ; preds = %195
  %202 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %146)
          to label %203 unwind label %193

203:                                              ; preds = %201
  %204 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %199, i32 noundef %200, ptr noundef %146, i32 noundef %202)
          to label %205 unwind label %193

205:                                              ; preds = %203
  br i1 %204, label %206, label %231

206:                                              ; preds = %205
  %207 = load ptr, ptr %3, align 8, !tbaa !48
  %208 = getelementptr inbounds ptr, ptr %207, i64 5
  %209 = load ptr, ptr %208, align 8
  %210 = invoke noundef ptr %209(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %142)
          to label %211 unwind label %224

211:                                              ; preds = %206, %211
  %212 = phi ptr [ %215, %211 ], [ %210, %206 ]
  %213 = load i16, ptr %212, align 2, !tbaa !84
  %214 = icmp eq i16 %213, 0
  %215 = getelementptr inbounds i16, ptr %212, i64 1
  br i1 %214, label %216, label %211, !llvm.loop !85

216:                                              ; preds = %211
  %217 = ptrtoint ptr %212 to i64
  %218 = ptrtoint ptr %210 to i64
  %219 = sub i64 %217, %218
  %220 = and i64 %219, 8589934590
  %221 = icmp eq i64 %220, 2
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = load i16, ptr %210, align 2, !tbaa !84
  store i16 %223, ptr %93, align 8, !tbaa !88
  br label %586

224:                                              ; preds = %226, %206
  %225 = landingpad { ptr, i32 }
          cleanup
  br label %622

226:                                              ; preds = %216
  %227 = load i64, ptr %91, align 8, !tbaa !82
  %228 = icmp eq i64 %227, 0
  %229 = load ptr, ptr %92, align 8
  %230 = select i1 %228, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %229
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 65, ptr noundef %230, ptr noundef %146, ptr noundef %210)
          to label %586 unwind label %224

231:                                              ; preds = %205
  %232 = load i64, ptr %79, align 8, !tbaa !82
  %233 = icmp eq i64 %232, 0
  %234 = load ptr, ptr %80, align 8
  %235 = select i1 %233, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %234
  %236 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %235)
          to label %237 unwind label %193

237:                                              ; preds = %231
  %238 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %146)
          to label %239 unwind label %193

239:                                              ; preds = %237
  %240 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %235, i32 noundef %236, ptr noundef %146, i32 noundef %238)
          to label %241 unwind label %193

241:                                              ; preds = %239
  br i1 %240, label %242, label %267

242:                                              ; preds = %241
  %243 = load ptr, ptr %3, align 8, !tbaa !48
  %244 = getelementptr inbounds ptr, ptr %243, i64 5
  %245 = load ptr, ptr %244, align 8
  %246 = invoke noundef ptr %245(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %142)
          to label %247 unwind label %260

247:                                              ; preds = %242, %247
  %248 = phi ptr [ %251, %247 ], [ %246, %242 ]
  %249 = load i16, ptr %248, align 2, !tbaa !84
  %250 = icmp eq i16 %249, 0
  %251 = getelementptr inbounds i16, ptr %248, i64 1
  br i1 %250, label %252, label %247, !llvm.loop !85

252:                                              ; preds = %247
  %253 = ptrtoint ptr %248 to i64
  %254 = ptrtoint ptr %246 to i64
  %255 = sub i64 %253, %254
  %256 = and i64 %255, 8589934590
  %257 = icmp eq i64 %256, 2
  br i1 %257, label %258, label %262

258:                                              ; preds = %252
  %259 = load i16, ptr %246, align 2, !tbaa !84
  store i16 %259, ptr %90, align 4, !tbaa !89
  br label %586

260:                                              ; preds = %262, %242
  %261 = landingpad { ptr, i32 }
          cleanup
  br label %622

262:                                              ; preds = %252
  %263 = load i64, ptr %88, align 8, !tbaa !82
  %264 = icmp eq i64 %263, 0
  %265 = load ptr, ptr %89, align 8
  %266 = select i1 %264, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %265
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 65, ptr noundef %266, ptr noundef %146, ptr noundef %246)
          to label %586 unwind label %260

267:                                              ; preds = %241
  %268 = load i64, ptr %82, align 8, !tbaa !82
  %269 = icmp eq i64 %268, 0
  %270 = load ptr, ptr %83, align 8
  %271 = select i1 %269, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %270
  %272 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %271)
          to label %273 unwind label %193

273:                                              ; preds = %267
  %274 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %146)
          to label %275 unwind label %193

275:                                              ; preds = %273
  %276 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %271, i32 noundef %272, ptr noundef %146, i32 noundef %274)
          to label %277 unwind label %193

277:                                              ; preds = %275
  br i1 %276, label %278, label %286

278:                                              ; preds = %277
  %279 = load ptr, ptr %3, align 8, !tbaa !48
  %280 = getelementptr inbounds ptr, ptr %279, i64 5
  %281 = load ptr, ptr %280, align 8
  %282 = invoke noundef ptr %281(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %142)
          to label %283 unwind label %193

283:                                              ; preds = %278
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %17, i32 noundef 0, i32 noundef -1)
          to label %284 unwind label %193

284:                                              ; preds = %283
  %285 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %282)
          to label %348 unwind label %193

286:                                              ; preds = %277
  %287 = load i64, ptr %85, align 8, !tbaa !82
  %288 = icmp eq i64 %287, 0
  %289 = load ptr, ptr %86, align 8
  %290 = select i1 %288, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %289
  %291 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %290)
          to label %292 unwind label %193

292:                                              ; preds = %286
  %293 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %146)
          to label %294 unwind label %193

294:                                              ; preds = %292
  %295 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %290, i32 noundef %291, ptr noundef %146, i32 noundef %293)
          to label %296 unwind label %193

296:                                              ; preds = %294
  br i1 %295, label %297, label %326

297:                                              ; preds = %296
  %298 = load ptr, ptr %3, align 8, !tbaa !48
  %299 = getelementptr inbounds ptr, ptr %298, i64 5
  %300 = load ptr, ptr %299, align 8
  %301 = invoke noundef ptr %300(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %142)
          to label %302 unwind label %316

302:                                              ; preds = %297, %302
  %303 = phi ptr [ %306, %302 ], [ %301, %297 ]
  %304 = load i16, ptr %303, align 2, !tbaa !84
  %305 = icmp eq i16 %304, 0
  %306 = getelementptr inbounds i16, ptr %303, i64 1
  br i1 %305, label %307, label %302, !llvm.loop !85

307:                                              ; preds = %302
  %308 = ptrtoint ptr %303 to i64
  %309 = ptrtoint ptr %301 to i64
  %310 = sub i64 %308, %309
  %311 = and i64 %310, 8589934590
  %312 = icmp eq i64 %311, 2
  br i1 %312, label %313, label %318

313:                                              ; preds = %307
  %314 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 5, i32 7
  %315 = load i16, ptr %301, align 2, !tbaa !84
  store i16 %315, ptr %314, align 8, !tbaa !90
  br label %586

316:                                              ; preds = %318, %297
  %317 = landingpad { ptr, i32 }
          cleanup
  br label %622

318:                                              ; preds = %307
  %319 = load ptr, ptr @_ZN11xalanc_1_109Constants41ELEMNAME_DECIMALFORMAT_WITH_PREFIX_STRINGE, align 8
  %320 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %319, i64 0, i32 1
  %321 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %319, i64 0, i32 3
  %322 = load i64, ptr %320, align 8, !tbaa !82
  %323 = icmp eq i64 %322, 0
  %324 = load ptr, ptr %321, align 8
  %325 = select i1 %323, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %324
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 65, ptr noundef %325, ptr noundef %146, ptr noundef %301)
          to label %586 unwind label %316

326:                                              ; preds = %296
  %327 = load ptr, ptr @_ZN11xalanc_1_109Constants12ATTRNAME_NANE, align 8
  %328 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %327, i64 0, i32 1
  %329 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %327, i64 0, i32 3
  %330 = load i64, ptr %328, align 8, !tbaa !82
  %331 = icmp eq i64 %330, 0
  %332 = load ptr, ptr %329, align 8
  %333 = select i1 %331, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %332
  %334 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %333)
          to label %335 unwind label %193

335:                                              ; preds = %326
  %336 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %146)
          to label %337 unwind label %193

337:                                              ; preds = %335
  %338 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %333, i32 noundef %334, ptr noundef %146, i32 noundef %336)
          to label %339 unwind label %193

339:                                              ; preds = %337
  br i1 %338, label %340, label %353

340:                                              ; preds = %339
  %341 = load ptr, ptr %3, align 8, !tbaa !48
  %342 = getelementptr inbounds ptr, ptr %341, i64 5
  %343 = load ptr, ptr %342, align 8
  %344 = invoke noundef ptr %343(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %142)
          to label %345 unwind label %193

345:                                              ; preds = %340
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %42, i32 noundef 0, i32 noundef -1)
          to label %346 unwind label %193

346:                                              ; preds = %345
  %347 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %344)
          to label %348 unwind label %193

348:                                              ; preds = %346, %284
  %349 = phi ptr [ %17, %284 ], [ %42, %346 ]
  %350 = phi ptr [ %282, %284 ], [ %344, %346 ]
  %351 = phi i32 [ %285, %284 ], [ %347, %346 ]
  %352 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %349, ptr noundef %350, i32 noundef %351)
          to label %586 unwind label %193

353:                                              ; preds = %339
  %354 = load ptr, ptr @_ZN11xalanc_1_109Constants16ATTRNAME_PERCENTE, align 8
  %355 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %354, i64 0, i32 1
  %356 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %354, i64 0, i32 3
  %357 = load i64, ptr %355, align 8, !tbaa !82
  %358 = icmp eq i64 %357, 0
  %359 = load ptr, ptr %356, align 8
  %360 = select i1 %358, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %359
  %361 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %360)
          to label %362 unwind label %193

362:                                              ; preds = %353
  %363 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %146)
          to label %364 unwind label %193

364:                                              ; preds = %362
  %365 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %360, i32 noundef %361, ptr noundef %146, i32 noundef %363)
          to label %366 unwind label %193

366:                                              ; preds = %364
  br i1 %365, label %367, label %396

367:                                              ; preds = %366
  %368 = load ptr, ptr %3, align 8, !tbaa !48
  %369 = getelementptr inbounds ptr, ptr %368, i64 5
  %370 = load ptr, ptr %369, align 8
  %371 = invoke noundef ptr %370(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %142)
          to label %372 unwind label %386

372:                                              ; preds = %367, %372
  %373 = phi ptr [ %376, %372 ], [ %371, %367 ]
  %374 = load i16, ptr %373, align 2, !tbaa !84
  %375 = icmp eq i16 %374, 0
  %376 = getelementptr inbounds i16, ptr %373, i64 1
  br i1 %375, label %377, label %372, !llvm.loop !85

377:                                              ; preds = %372
  %378 = ptrtoint ptr %373 to i64
  %379 = ptrtoint ptr %371 to i64
  %380 = sub i64 %378, %379
  %381 = and i64 %380, 8589934590
  %382 = icmp eq i64 %381, 2
  br i1 %382, label %383, label %388

383:                                              ; preds = %377
  %384 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 5, i32 12
  %385 = load i16, ptr %371, align 2, !tbaa !84
  store i16 %385, ptr %384, align 2, !tbaa !91
  br label %586

386:                                              ; preds = %388, %367
  %387 = landingpad { ptr, i32 }
          cleanup
  br label %622

388:                                              ; preds = %377
  %389 = load ptr, ptr @_ZN11xalanc_1_109Constants41ELEMNAME_DECIMALFORMAT_WITH_PREFIX_STRINGE, align 8
  %390 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %389, i64 0, i32 1
  %391 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %389, i64 0, i32 3
  %392 = load i64, ptr %390, align 8, !tbaa !82
  %393 = icmp eq i64 %392, 0
  %394 = load ptr, ptr %391, align 8
  %395 = select i1 %393, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %394
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 65, ptr noundef %395, ptr noundef %146, ptr noundef %371)
          to label %586 unwind label %386

396:                                              ; preds = %366
  %397 = load ptr, ptr @_ZN11xalanc_1_109Constants17ATTRNAME_PERMILLEE, align 8
  %398 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %397, i64 0, i32 1
  %399 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %397, i64 0, i32 3
  %400 = load i64, ptr %398, align 8, !tbaa !82
  %401 = icmp eq i64 %400, 0
  %402 = load ptr, ptr %399, align 8
  %403 = select i1 %401, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %402
  %404 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %403)
          to label %405 unwind label %193

405:                                              ; preds = %396
  %406 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %146)
          to label %407 unwind label %193

407:                                              ; preds = %405
  %408 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %403, i32 noundef %404, ptr noundef %146, i32 noundef %406)
          to label %409 unwind label %193

409:                                              ; preds = %407
  br i1 %408, label %410, label %439

410:                                              ; preds = %409
  %411 = load ptr, ptr %3, align 8, !tbaa !48
  %412 = getelementptr inbounds ptr, ptr %411, i64 5
  %413 = load ptr, ptr %412, align 8
  %414 = invoke noundef ptr %413(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %142)
          to label %415 unwind label %429

415:                                              ; preds = %410, %415
  %416 = phi ptr [ %419, %415 ], [ %414, %410 ]
  %417 = load i16, ptr %416, align 2, !tbaa !84
  %418 = icmp eq i16 %417, 0
  %419 = getelementptr inbounds i16, ptr %416, i64 1
  br i1 %418, label %420, label %415, !llvm.loop !85

420:                                              ; preds = %415
  %421 = ptrtoint ptr %416 to i64
  %422 = ptrtoint ptr %414 to i64
  %423 = sub i64 %421, %422
  %424 = and i64 %423, 8589934590
  %425 = icmp eq i64 %424, 2
  br i1 %425, label %426, label %431

426:                                              ; preds = %420
  %427 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 5, i32 13
  %428 = load i16, ptr %414, align 2, !tbaa !84
  store i16 %428, ptr %427, align 4, !tbaa !92
  br label %586

429:                                              ; preds = %431, %410
  %430 = landingpad { ptr, i32 }
          cleanup
  br label %622

431:                                              ; preds = %420
  %432 = load ptr, ptr @_ZN11xalanc_1_109Constants41ELEMNAME_DECIMALFORMAT_WITH_PREFIX_STRINGE, align 8
  %433 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %432, i64 0, i32 1
  %434 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %432, i64 0, i32 3
  %435 = load i64, ptr %433, align 8, !tbaa !82
  %436 = icmp eq i64 %435, 0
  %437 = load ptr, ptr %434, align 8
  %438 = select i1 %436, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %437
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 65, ptr noundef %438, ptr noundef %146, ptr noundef %414)
          to label %586 unwind label %429

439:                                              ; preds = %409
  %440 = load ptr, ptr @_ZN11xalanc_1_109Constants18ATTRNAME_ZERODIGITE, align 8
  %441 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %440, i64 0, i32 1
  %442 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %440, i64 0, i32 3
  %443 = load i64, ptr %441, align 8, !tbaa !82
  %444 = icmp eq i64 %443, 0
  %445 = load ptr, ptr %442, align 8
  %446 = select i1 %444, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %445
  %447 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %446)
          to label %448 unwind label %193

448:                                              ; preds = %439
  %449 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %146)
          to label %450 unwind label %193

450:                                              ; preds = %448
  %451 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %446, i32 noundef %447, ptr noundef %146, i32 noundef %449)
          to label %452 unwind label %193

452:                                              ; preds = %450
  br i1 %451, label %453, label %482

453:                                              ; preds = %452
  %454 = load ptr, ptr %3, align 8, !tbaa !48
  %455 = getelementptr inbounds ptr, ptr %454, i64 5
  %456 = load ptr, ptr %455, align 8
  %457 = invoke noundef ptr %456(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %142)
          to label %458 unwind label %472

458:                                              ; preds = %453, %458
  %459 = phi ptr [ %462, %458 ], [ %457, %453 ]
  %460 = load i16, ptr %459, align 2, !tbaa !84
  %461 = icmp eq i16 %460, 0
  %462 = getelementptr inbounds i16, ptr %459, i64 1
  br i1 %461, label %463, label %458, !llvm.loop !85

463:                                              ; preds = %458
  %464 = ptrtoint ptr %459 to i64
  %465 = ptrtoint ptr %457 to i64
  %466 = sub i64 %464, %465
  %467 = and i64 %466, 8589934590
  %468 = icmp eq i64 %467, 2
  br i1 %468, label %469, label %474

469:                                              ; preds = %463
  %470 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 5, i32 14
  %471 = load i16, ptr %457, align 2, !tbaa !84
  store i16 %471, ptr %470, align 2, !tbaa !93
  br label %586

472:                                              ; preds = %474, %453
  %473 = landingpad { ptr, i32 }
          cleanup
  br label %622

474:                                              ; preds = %463
  %475 = load ptr, ptr @_ZN11xalanc_1_109Constants41ELEMNAME_DECIMALFORMAT_WITH_PREFIX_STRINGE, align 8
  %476 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %475, i64 0, i32 1
  %477 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %475, i64 0, i32 3
  %478 = load i64, ptr %476, align 8, !tbaa !82
  %479 = icmp eq i64 %478, 0
  %480 = load ptr, ptr %477, align 8
  %481 = select i1 %479, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %480
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 65, ptr noundef %481, ptr noundef %146, ptr noundef %457)
          to label %586 unwind label %472

482:                                              ; preds = %452
  %483 = load ptr, ptr @_ZN11xalanc_1_109Constants14ATTRNAME_DIGITE, align 8
  %484 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %483, i64 0, i32 1
  %485 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %483, i64 0, i32 3
  %486 = load i64, ptr %484, align 8, !tbaa !82
  %487 = icmp eq i64 %486, 0
  %488 = load ptr, ptr %485, align 8
  %489 = select i1 %487, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %488
  %490 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %489)
          to label %491 unwind label %193

491:                                              ; preds = %482
  %492 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %146)
          to label %493 unwind label %193

493:                                              ; preds = %491
  %494 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %489, i32 noundef %490, ptr noundef %146, i32 noundef %492)
          to label %495 unwind label %193

495:                                              ; preds = %493
  br i1 %494, label %496, label %525

496:                                              ; preds = %495
  %497 = load ptr, ptr %3, align 8, !tbaa !48
  %498 = getelementptr inbounds ptr, ptr %497, i64 5
  %499 = load ptr, ptr %498, align 8
  %500 = invoke noundef ptr %499(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %142)
          to label %501 unwind label %515

501:                                              ; preds = %496, %501
  %502 = phi ptr [ %505, %501 ], [ %500, %496 ]
  %503 = load i16, ptr %502, align 2, !tbaa !84
  %504 = icmp eq i16 %503, 0
  %505 = getelementptr inbounds i16, ptr %502, i64 1
  br i1 %504, label %506, label %501, !llvm.loop !85

506:                                              ; preds = %501
  %507 = ptrtoint ptr %502 to i64
  %508 = ptrtoint ptr %500 to i64
  %509 = sub i64 %507, %508
  %510 = and i64 %509, 8589934590
  %511 = icmp eq i64 %510, 2
  br i1 %511, label %512, label %517

512:                                              ; preds = %506
  %513 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 5, i32 2
  %514 = load i16, ptr %500, align 2, !tbaa !84
  store i16 %514, ptr %513, align 2, !tbaa !94
  br label %586

515:                                              ; preds = %517, %496
  %516 = landingpad { ptr, i32 }
          cleanup
  br label %622

517:                                              ; preds = %506
  %518 = load ptr, ptr @_ZN11xalanc_1_109Constants41ELEMNAME_DECIMALFORMAT_WITH_PREFIX_STRINGE, align 8
  %519 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %518, i64 0, i32 1
  %520 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %518, i64 0, i32 3
  %521 = load i64, ptr %519, align 8, !tbaa !82
  %522 = icmp eq i64 %521, 0
  %523 = load ptr, ptr %520, align 8
  %524 = select i1 %522, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %523
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 65, ptr noundef %524, ptr noundef %146, ptr noundef %500)
          to label %586 unwind label %515

525:                                              ; preds = %495
  %526 = load ptr, ptr @_ZN11xalanc_1_109Constants25ATTRNAME_PATTERNSEPARATORE, align 8
  %527 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %526, i64 0, i32 1
  %528 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %526, i64 0, i32 3
  %529 = load i64, ptr %527, align 8, !tbaa !82
  %530 = icmp eq i64 %529, 0
  %531 = load ptr, ptr %528, align 8
  %532 = select i1 %530, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %531
  %533 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %532)
          to label %534 unwind label %193

534:                                              ; preds = %525
  %535 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %146)
          to label %536 unwind label %193

536:                                              ; preds = %534
  %537 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %532, i32 noundef %533, ptr noundef %146, i32 noundef %535)
          to label %538 unwind label %193

538:                                              ; preds = %536
  br i1 %537, label %539, label %568

539:                                              ; preds = %538
  %540 = load ptr, ptr %3, align 8, !tbaa !48
  %541 = getelementptr inbounds ptr, ptr %540, i64 5
  %542 = load ptr, ptr %541, align 8
  %543 = invoke noundef ptr %542(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %142)
          to label %544 unwind label %558

544:                                              ; preds = %539, %544
  %545 = phi ptr [ %548, %544 ], [ %543, %539 ]
  %546 = load i16, ptr %545, align 2, !tbaa !84
  %547 = icmp eq i16 %546, 0
  %548 = getelementptr inbounds i16, ptr %545, i64 1
  br i1 %547, label %549, label %544, !llvm.loop !85

549:                                              ; preds = %544
  %550 = ptrtoint ptr %545 to i64
  %551 = ptrtoint ptr %543 to i64
  %552 = sub i64 %550, %551
  %553 = and i64 %552, 8589934590
  %554 = icmp eq i64 %553, 2
  br i1 %554, label %555, label %560

555:                                              ; preds = %549
  %556 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 5, i32 11
  %557 = load i16, ptr %543, align 2, !tbaa !84
  store i16 %557, ptr %556, align 8, !tbaa !95
  br label %586

558:                                              ; preds = %560, %539
  %559 = landingpad { ptr, i32 }
          cleanup
  br label %622

560:                                              ; preds = %549
  %561 = load ptr, ptr @_ZN11xalanc_1_109Constants41ELEMNAME_DECIMALFORMAT_WITH_PREFIX_STRINGE, align 8
  %562 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %561, i64 0, i32 1
  %563 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %561, i64 0, i32 3
  %564 = load i64, ptr %562, align 8, !tbaa !82
  %565 = icmp eq i64 %564, 0
  %566 = load ptr, ptr %563, align 8
  %567 = select i1 %565, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %566
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 65, ptr noundef %567, ptr noundef %146, ptr noundef %543)
          to label %586 unwind label %558

568:                                              ; preds = %538
  %569 = load ptr, ptr %0, align 8, !tbaa !48
  %570 = getelementptr inbounds ptr, ptr %569, i64 5
  %571 = load ptr, ptr %570, align 8
  %572 = invoke noundef zeroext i1 %571(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %146, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %142, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %573 unwind label %193

573:                                              ; preds = %568
  br i1 %572, label %586, label %574

574:                                              ; preds = %573
  %575 = load ptr, ptr @_ZN11xalanc_1_109Constants41ELEMNAME_DECIMALFORMAT_WITH_PREFIX_STRINGE, align 8
  %576 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %575, i64 0, i32 1
  %577 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %575, i64 0, i32 3
  %578 = load i64, ptr %576, align 8, !tbaa !82
  %579 = icmp eq i64 %578, 0
  %580 = load ptr, ptr %577, align 8
  %581 = select i1 %579, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %580
  br label %582

582:                                              ; preds = %190, %574
  %583 = phi i32 [ 74, %574 ], [ 62, %190 ]
  %584 = phi ptr [ %581, %574 ], [ %192, %190 ]
  %585 = phi ptr [ %146, %574 ], [ %189, %190 ]
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %583, ptr noundef %584, ptr noundef %585)
          to label %586 unwind label %193

586:                                              ; preds = %582, %348, %555, %560, %512, %517, %469, %474, %426, %431, %383, %388, %313, %318, %258, %262, %222, %226, %573, %182
  %587 = add nuw i32 %142, 1
  %588 = icmp eq i32 %587, %68
  br i1 %588, label %95, label %141, !llvm.loop !96

589:                                              ; preds = %95
  %590 = load ptr, ptr @_ZN11xalanc_1_109Constants16ATTRVAL_INFINITYE, align 8, !tbaa !97
  %591 = icmp eq ptr %17, %590
  br i1 %591, label %597, label %592

592:                                              ; preds = %589
  %593 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %590)
          to label %594 unwind label %139

594:                                              ; preds = %592
  %595 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %590, i64 0, i32 1
  %596 = load i32, ptr %595, align 8, !tbaa !78
  store i32 %596, ptr %96, align 8, !tbaa !78
  br label %597

597:                                              ; preds = %594, %589, %95
  %598 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 5, i32 10, i32 1
  %599 = load i32, ptr %598, align 8, !tbaa !78
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %601, label %609

601:                                              ; preds = %597
  %602 = load ptr, ptr @_ZN11xalanc_1_109Constants11ATTRVAL_NANE, align 8, !tbaa !97
  %603 = icmp eq ptr %42, %602
  br i1 %603, label %609, label %604

604:                                              ; preds = %601
  %605 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(32) %602)
          to label %606 unwind label %139

606:                                              ; preds = %604
  %607 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %602, i64 0, i32 1
  %608 = load i32, ptr %607, align 8, !tbaa !78
  store i32 %608, ptr %598, align 8, !tbaa !78
  br label %609

609:                                              ; preds = %606, %601, %597
  %610 = load ptr, ptr %10, align 8, !tbaa !51
  %611 = invoke noundef ptr @_ZNK11xalanc_1_1010Stylesheet23getDecimalFormatSymbolsERKNS_10XalanQNameE(ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %610)
          to label %612 unwind label %619

612:                                              ; preds = %609
  %613 = icmp eq ptr %611, null
  br i1 %613, label %621, label %614

614:                                              ; preds = %612
  %615 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1025XalanDecimalFormatSymbolseqERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %611, ptr noundef nonnull align 8 dereferenceable(184) %11)
          to label %616 unwind label %619

616:                                              ; preds = %614
  br i1 %615, label %621, label %617

617:                                              ; preds = %616
  %618 = load ptr, ptr @_ZN11xalanc_1_109Constants41ELEMNAME_DECIMALFORMAT_WITH_PREFIX_STRINGE, align 8, !tbaa !97
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 66, ptr noundef nonnull align 8 dereferenceable(36) %618)
          to label %621 unwind label %619

619:                                              ; preds = %614, %617, %609
  %620 = landingpad { ptr, i32 }
          cleanup
  br label %622

621:                                              ; preds = %617, %616, %612
  ret void

622:                                              ; preds = %139, %619, %558, %515, %472, %429, %386, %316, %260, %224, %193, %137, %118
  %623 = phi { ptr, i32 } [ %138, %137 ], [ %119, %118 ], [ %620, %619 ], [ %140, %139 ], [ %194, %193 ], [ %225, %224 ], [ %261, %260 ], [ %317, %316 ], [ %387, %386 ], [ %430, %429 ], [ %473, %472 ], [ %516, %515 ], [ %559, %558 ]
  call void @_ZN11xalanc_1_1025XalanDecimalFormatSymbolsD1Ev(ptr noundef nonnull align 8 dereferenceable(184) %11) #17
  br label %624

624:                                              ; preds = %622, %99
  %625 = phi { ptr, i32 } [ %623, %622 ], [ %100, %99 ]
  call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #17
  resume { ptr, i32 } %625
}

declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1025XalanDecimalFormatSymbolsC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1010Stylesheet23getDecimalFormatSymbolsERKNS_10XalanQNameE(ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1025XalanDecimalFormatSymbolsD1Ev(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017ElemDecimalFormatD2Ev(ptr noundef nonnull align 8 dereferenceable(544) %0) unnamed_addr #6 align 2 !prof !47 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1017ElemDecimalFormatE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1025XalanDecimalFormatSymbolsD1Ev(ptr noundef nonnull align 8 dereferenceable(184) %2) #17
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #17
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017ElemDecimalFormatD0Ev(ptr noundef nonnull align 8 dereferenceable(544) %0) unnamed_addr #6 align 2 !prof !47 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1017ElemDecimalFormatE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1025XalanDecimalFormatSymbolsD1Ev(ptr noundef nonnull align 8 dereferenceable(184) %2) #17
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #17
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017ElemDecimalFormat14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !47 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants41ELEMNAME_DECIMALFORMAT_WITH_PREFIX_STRINGE, align 8, !tbaa !97
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017ElemDecimalFormat8getXPathEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(544) %0, i32 noundef %1) unnamed_addr #8 align 2 !prof !47 {
  switch i32 %1, label %12 [
    i32 0, label %3
    i32 1, label %6
    i32 2, label %9
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  br label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  br label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  br label %12

12:                                               ; preds = %2, %9, %6, %3
  %13 = phi ptr [ null, %2 ], [ %11, %9 ], [ %8, %6 ], [ %5, %3 ]
  ret ptr %13
}

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare void @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504)) unnamed_addr #1

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

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !102

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !82
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !103

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !81
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !81
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !82
  %16 = load i64, ptr %6, align 8, !tbaa !79
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !80
  %19 = load ptr, ptr %3, align 8, !tbaa !81
  store ptr %19, ptr %0, align 8, !tbaa !81
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !82
  store i64 %21, ptr %14, align 8, !tbaa !82
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !79
  store i64 %23, ptr %6, align 8, !tbaa !79
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !80
  store ptr %25, ptr %17, align 8, !tbaa !80
  store ptr %13, ptr %3, align 8, !tbaa !81
  store i64 %15, ptr %20, align 8, !tbaa !82
  store i64 %16, ptr %22, align 8, !tbaa !79
  store ptr %18, ptr %24, align 8, !tbaa !80
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !104

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !48
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !105

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #18
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !80
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !82
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !106

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !107

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !80
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !82
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !82
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !80
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !108

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !109
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !81
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !82
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !111

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !81
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !82
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !79
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !48
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !112
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !80
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !80
  %24 = load i64, ptr %9, align 8, !tbaa !82
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !113

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !81
  %28 = load i64, ptr %6, align 8, !tbaa !82
  %29 = load i64, ptr %7, align 8, !tbaa !79
  %30 = load ptr, ptr %8, align 8, !tbaa !80
  %31 = load ptr, ptr %5, align 8, !tbaa !81
  store ptr %31, ptr %0, align 8, !tbaa !81
  %32 = load i64, ptr %14, align 8, !tbaa !82
  store i64 %32, ptr %6, align 8, !tbaa !82
  %33 = load i64, ptr %15, align 8, !tbaa !79
  store i64 %33, ptr %7, align 8, !tbaa !79
  %34 = load ptr, ptr %21, align 8, !tbaa !80
  store ptr %34, ptr %8, align 8, !tbaa !80
  store ptr %27, ptr %5, align 8, !tbaa !81
  store i64 %28, ptr %14, align 8, !tbaa !82
  store i64 %29, ptr %15, align 8, !tbaa !79
  store ptr %30, ptr %21, align 8, !tbaa !80
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !113

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !48
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !79
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !80
  %50 = load ptr, ptr %5, align 8, !tbaa !81
  %51 = load ptr, ptr %50, align 8, !tbaa !48
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #18
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !114

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !48
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !115
  store ptr %65, ptr %8, align 8, !tbaa !80
  store i64 %3, ptr %7, align 8, !tbaa !79
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !116 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !117

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !82
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !80
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !79
  br i1 %18, label %21, label %39, !prof !118

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !119

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !120

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !80
  %28 = load i64, ptr %12, align 8, !tbaa !82
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !84
  store i16 %34, ptr %32, align 2, !tbaa !84
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !121, !llvm.loop !122

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !123

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !81
  store ptr %42, ptr %5, align 8, !tbaa !81
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !82
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !79
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !48
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !124
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !80
  %51 = load i64, ptr %43, align 8, !tbaa !82
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !80
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !125

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !80
  %56 = load i64, ptr %43, align 8, !tbaa !82
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !125

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !80
  %60 = load i64, ptr %43, align 8, !tbaa !82
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !80
  %63 = load i64, ptr %12, align 8, !tbaa !82
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !125

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !81
  %67 = load i64, ptr %12, align 8, !tbaa !82
  %68 = load i64, ptr %19, align 8, !tbaa !79
  %69 = load ptr, ptr %15, align 8, !tbaa !80
  %70 = load ptr, ptr %5, align 8, !tbaa !81
  store ptr %70, ptr %0, align 8, !tbaa !81
  %71 = load i64, ptr %43, align 8, !tbaa !82
  store i64 %71, ptr %12, align 8, !tbaa !82
  %72 = load i64, ptr %44, align 8, !tbaa !79
  store i64 %72, ptr %19, align 8, !tbaa !79
  %73 = load ptr, ptr %50, align 8, !tbaa !80
  store ptr %73, ptr %15, align 8, !tbaa !80
  store ptr %66, ptr %5, align 8, !tbaa !81
  store i64 %67, ptr %43, align 8, !tbaa !82
  store i64 %68, ptr %44, align 8, !tbaa !79
  store ptr %69, ptr %50, align 8, !tbaa !80
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !126

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !48
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !127

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #18
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !79
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !80
  %89 = load ptr, ptr %5, align 8, !tbaa !81
  %90 = load ptr, ptr %89, align 8, !tbaa !48
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #18
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !128

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !129

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !129

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !130, !llvm.loop !131

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !132, !llvm.loop !133

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !134
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
  br i1 %123, label %124, label %120, !llvm.loop !135

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
  store i64 %36, ptr %12, align 8, !tbaa !82
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat !prof !47 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !136 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !82
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !79
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !137

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !84
  store i16 %13, ptr %12, align 2, !tbaa !84
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !82
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !81
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !81
  %24 = load i64, ptr %4, align 8, !tbaa !82
  %25 = load i64, ptr %6, align 8, !tbaa !79
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !80
  %28 = load ptr, ptr %3, align 8, !tbaa !81
  store ptr %28, ptr %0, align 8, !tbaa !81
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !82
  store i64 %30, ptr %4, align 8, !tbaa !82
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !79
  store i64 %32, ptr %6, align 8, !tbaa !79
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !80
  store ptr %34, ptr %26, align 8, !tbaa !80
  store ptr %23, ptr %3, align 8, !tbaa !81
  store i64 %24, ptr %29, align 8, !tbaa !82
  store i64 %25, ptr %31, align 8, !tbaa !79
  store ptr %27, ptr %33, align 8, !tbaa !80
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !48
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !79
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !80
  %52 = load ptr, ptr %3, align 8, !tbaa !81
  %53 = load ptr, ptr %52, align 8, !tbaa !48
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #18
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !81
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !82
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !111

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !81
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !82
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !79
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !48
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !139
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !80
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !80
  %20 = load i64, ptr %5, align 8, !tbaa !82
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !113

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !81
  %24 = load i64, ptr %10, align 8, !tbaa !82
  %25 = load i64, ptr %11, align 8, !tbaa !79
  %26 = load ptr, ptr %17, align 8, !tbaa !80
  store ptr %4, ptr %3, align 8, !tbaa !81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !79
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !80
  %33 = load ptr, ptr %3, align 8, !tbaa !81
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #18
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !114

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !48
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !140
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !81
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !79
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !80
  store ptr %53, ptr %0, align 8, !tbaa !81
  store i64 %52, ptr %5, align 8, !tbaa !82
  store i64 %51, ptr %55, align 8, !tbaa !79
  store ptr %50, ptr %57, align 8, !tbaa !80
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !141

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !48
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !142

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #18
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xalanc_1_1025XalanDecimalFormatSymbolseqERKS0_(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_ElemDecimalFormat.cpp() #14 section ".text.startup" !prof !143 !PGOFuncName !144 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) @_ZN11xalanc_1_10L7s_emptyE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1017XalanQNameByValueD1Ev, ptr nonnull @_ZN11xalanc_1_10L7s_emptyE, ptr nonnull @__dso_handle) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }

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
!35 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!36 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!43 = !{ptr @_GLOBAL__sub_I_ElemDecimalFormat.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!44 = !{ptr @_GLOBAL__sub_I_ElemDecimalFormat.cpp, ptr @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!45 = !{ptr @_GLOBAL__sub_I_ElemDecimalFormat.cpp, ptr @__cxa_atexit, i64 1}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!52, !55, i64 352}
!52 = !{!"_ZTSN11xalanc_1_1017ElemDecimalFormatE", !53, i64 0, !55, i64 328, !55, i64 336, !55, i64 344, !55, i64 352, !73, i64 360}
!53 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !54, i64 0, !55, i64 8, !57, i64 16, !68, i64 248, !55, i64 256, !55, i64 264, !55, i64 272, !56, i64 280, !69, i64 288, !72, i64 320}
!54 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!55 = !{!"any pointer", !56, i64 0}
!56 = !{!"omnipotent char", !50, i64 0}
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
!73 = !{!"_ZTSN11xalanc_1_1025XalanDecimalFormatSymbolsE", !74, i64 0, !72, i64 40, !72, i64 42, !72, i64 44, !74, i64 48, !74, i64 88, !72, i64 128, !72, i64 130, !74, i64 136, !72, i64 176, !72, i64 178, !72, i64 180, !72, i64 182}
!74 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !75, i64 0, !68, i64 32}
!75 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !55, i64 0, !59, i64 8, !59, i64 16, !55, i64 24}
!76 = !{!77, !55, i64 8}
!77 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !55, i64 8}
!78 = !{!74, !68, i64 32}
!79 = !{!75, !59, i64 16}
!80 = !{!75, !55, i64 24}
!81 = !{!75, !55, i64 0}
!82 = !{!75, !59, i64 8}
!83 = !{!53, !55, i64 8}
!84 = !{!72, !72, i64 0}
!85 = distinct !{!85, !86, !87}
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !{!73, !72, i64 40}
!89 = !{!73, !72, i64 44}
!90 = !{!73, !72, i64 128}
!91 = !{!73, !72, i64 178}
!92 = !{!73, !72, i64 180}
!93 = !{!73, !72, i64 182}
!94 = !{!73, !72, i64 42}
!95 = !{!73, !72, i64 176}
!96 = distinct !{!96, !86, !87}
!97 = !{!55, !55, i64 0}
!98 = !{!52, !55, i64 344}
!99 = !{!52, !55, i64 328}
!100 = !{!52, !55, i64 336}
!101 = !{!"function_entry_count", i64 41614}
!102 = !{!"branch_weights", i32 0, i32 41614}
!103 = !{!"branch_weights", i32 12, i32 41602}
!104 = !{!"branch_weights", i32 5, i32 7}
!105 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!106 = !{!"branch_weights", i32 354, i32 41248}
!107 = !{!"branch_weights", i32 40889, i32 359}
!108 = !{!"branch_weights", i32 40581, i32 1021}
!109 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!110 = !{!"function_entry_count", i64 22}
!111 = !{!"branch_weights", i32 64551590, i32 18}
!112 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!113 = !{!"branch_weights", i32 18, i32 0}
!114 = !{!"branch_weights", i32 4, i32 64551586}
!115 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!116 = !{!"function_entry_count", i64 155828046}
!117 = !{!"branch_weights", i32 0, i32 155828046}
!118 = !{!"branch_weights", i32 133170777, i32 22657269}
!119 = !{!"branch_weights", i32 20, i32 133170757}
!120 = !{!"branch_weights", i32 1, i32 19024395}
!121 = !{!"branch_weights", i32 19024395, i32 -26420601}
!122 = distinct !{!122, !86, !87}
!123 = !{!"branch_weights", i32 20748786, i32 1908483}
!124 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!125 = !{!"branch_weights", i32 20748786, i32 0}
!126 = !{!"branch_weights", i32 0, i32 20748786}
!127 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!128 = !{!"branch_weights", i32 0, i32 1908483}
!129 = !{!"branch_weights", i32 1, i32 1908482}
!130 = !{!"branch_weights", i32 1908482, i32 49797853}
!131 = distinct !{!131, !86, !87}
!132 = !{!"branch_weights", i32 1908482, i32 1}
!133 = distinct !{!133, !86, !87}
!134 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!135 = distinct !{!135, !86, !87}
!136 = !{!"function_entry_count", i64 124150652}
!137 = !{!"branch_weights", i32 124150652, i32 0}
!138 = !{!"function_entry_count", i64 64551586}
!139 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!140 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!141 = !{!"branch_weights", i32 42418193, i32 22133393}
!142 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!143 = !{!"function_entry_count", i64 1}
!144 = !{!"ElemDecimalFormat.cpp;_GLOBAL__sub_I_ElemDecimalFormat.cpp"}

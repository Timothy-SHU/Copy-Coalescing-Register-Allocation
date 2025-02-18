; ModuleID = 'ElemNumber.cpp'
source_filename = "ElemNumber.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::DecimalToRoman" = type { i64, [3 x i16], i64, [3 x i16] }
%"class.xalanc_1_10::XalanNumberingResourceBundle" = type { %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.3", %"class.xalanc_1_10::XalanVector.3", i32, i32, i32, i64, %"class.xalanc_1_10::XalanVector.9", %"class.xalanc_1_10::XalanVector.9", %"class.xalanc_1_10::XalanVector.3", %"class.xalanc_1_10::XalanVector.3", %"class.xalanc_1_10::XalanVector.14", %"class.xalanc_1_10::XalanVector.9" }
%"class.xalanc_1_10::XalanVector.14" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.9" = type { ptr, i64, i64, ptr }
%"union.xalanc_1_10::DoubleSupport::NumberUnion" = type { double }
%"class.xalanc_1_10::ElemNumber" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64 }
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
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%struct.anon = type { i32, i32 }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::ElementPrefixResolverProxy" = type { %"class.xalanc_1_10::PrefixResolver", ptr, ptr, %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanSimplePrefixResolver" = type { %"class.xalanc_1_10::PrefixResolver", ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.13" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::AVT" = type { ptr, ptr, i64, ptr, i32, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.10" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanNumberFormat>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanNumberFormat>::MemMgrAutoPtrData" = type { %"struct.std::pair.11" }
%"struct.std::pair.11" = type { ptr, ptr }
%"class.xalanc_1_10::ElemNumber::NumberFormatStringTokenizer" = type { i32, i32, ptr }
%"struct.xalanc_1_10::ConstructValueWithMemoryManager.15" = type { %"class.xalanc_1_10::XalanDOMString" }
%"struct.xalanc_1_10::ConstructValueWithNoMemoryManager" = type { i16 }
%"struct.xalanc_1_10::ConstructValueWithMemoryManager" = type { %"class.xalanc_1_10::XalanVector.3" }

$_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6resizeEmRKm = comdat any

$_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE6resizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEC2EPKmS5_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE6resizeEmRKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE6insertEPS3_PKS3_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE10doPushBackERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6insertEPmPKmS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE10doPushBackERKm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEmRKS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt = comdat any

@_ZTVN11xalanc_1_1010ElemNumberE = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1010ElemNumberE, ptr @_ZN11xalanc_1_1010ElemNumberD2Ev, ptr @_ZN11xalanc_1_1010ElemNumberD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1010ElemNumber12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1010ElemNumber14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1010ElemNumber8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_] }, align 8
@_ZN11xalanc_1_109Constants34ELEMNAME_NUMBER_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants14ATTRNAME_COUNTE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants13ATTRNAME_FROME = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants14ATTRNAME_VALUEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants15ATTRNAME_FORMATE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants13ATTRNAME_LANGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants20ATTRNAME_LETTERVALUEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants26ATTRNAME_GROUPINGSEPARATORE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants21ATTRNAME_GROUPINGSIZEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1010ElemNumber12s_textStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L18s_staticTextStringE, align 8
@_ZN11xalanc_1_1010ElemNumber15s_commentStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L21s_staticCommentStringE, align 8
@_ZN11xalanc_1_1010ElemNumber13s_slashStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L19s_staticSlashStringE, align 8
@_ZN11xalanc_1_1010ElemNumber23s_elalphaResourceBundleE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L29s_staticElalphaResourceBundleE, align 8
@_ZN11xalanc_1_1010ElemNumber17s_alphaCountTableE = dso_local constant [27 x i16] [i16 90, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 0], align 16
@_ZN11xalanc_1_1010ElemNumber21s_alphaCountTableSizeE = dso_local local_unnamed_addr constant i32 26, align 4
@_ZN11xalanc_1_1010ElemNumber19s_elalphaCountTableE = dso_local constant [26 x i16] [i16 969, i16 945, i16 946, i16 947, i16 948, i16 949, i16 950, i16 951, i16 952, i16 953, i16 954, i16 955, i16 956, i16 957, i16 958, i16 959, i16 960, i16 961, i16 962, i16 963, i16 964, i16 965, i16 966, i16 967, i16 968, i16 0], align 16
@_ZN11xalanc_1_1010ElemNumber23s_elalphaCountTableSizeE = dso_local local_unnamed_addr constant i32 25, align 4
@_ZN11xalanc_1_10L18s_staticTextStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_10L21s_staticCommentStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_10L19s_staticSlashStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_1010ElemNumber10s_atStringE = dso_local constant [2 x i16] [i16 38, i16 0], align 2
@_ZN11xalanc_1_1010ElemNumber10s_piStringE = dso_local constant [24 x i16] [i16 112, i16 114, i16 111, i16 99, i16 101, i16 115, i16 115, i16 105, i16 110, i16 103, i16 45, i16 105, i16 110, i16 115, i16 116, i16 114, i16 117, i16 99, i16 116, i16 105, i16 111, i16 110, i16 40, i16 0], align 16
@_ZN11xalanc_1_1010ElemNumber13s_levelStringE = dso_local constant [6 x i16] [i16 108, i16 101, i16 118, i16 101, i16 108, i16 0], align 2
@_ZN11xalanc_1_1010ElemNumber16s_multipleStringE = dso_local constant [9 x i16] [i16 109, i16 117, i16 108, i16 116, i16 105, i16 112, i16 108, i16 101, i16 0], align 16
@_ZN11xalanc_1_1010ElemNumber11s_anyStringE = dso_local constant [4 x i16] [i16 97, i16 110, i16 121, i16 0], align 2
@_ZN11xalanc_1_1010ElemNumber14s_singleStringE = dso_local constant [7 x i16] [i16 115, i16 105, i16 110, i16 103, i16 108, i16 101, i16 0], align 2
@_ZN11xalanc_1_1010ElemNumber18s_alphabeticStringE = dso_local constant [11 x i16] [i16 97, i16 108, i16 112, i16 104, i16 97, i16 98, i16 101, i16 116, i16 105, i16 99, i16 0], align 16
@_ZN11xalanc_1_1010ElemNumber19s_traditionalStringE = dso_local constant [12 x i16] [i16 116, i16 114, i16 97, i16 100, i16 105, i16 116, i16 105, i16 111, i16 110, i16 97, i16 108, i16 0], align 16
@_ZN11xalanc_1_1010ElemNumber13s_errorStringE = dso_local constant [7 x i16] [i16 35, i16 101, i16 114, i16 114, i16 111, i16 114, i16 0], align 2
@_ZN11xalanc_1_1010ElemNumber19s_romanConvertTableE = dso_local constant [7 x %"struct.xalanc_1_10::DecimalToRoman"] [%"struct.xalanc_1_10::DecimalToRoman" { i64 1000, [3 x i16] [i16 77, i16 0, i16 0], i64 900, [3 x i16] [i16 67, i16 77, i16 0] }, %"struct.xalanc_1_10::DecimalToRoman" { i64 500, [3 x i16] [i16 68, i16 0, i16 0], i64 400, [3 x i16] [i16 67, i16 68, i16 0] }, %"struct.xalanc_1_10::DecimalToRoman" { i64 100, [3 x i16] [i16 67, i16 0, i16 0], i64 90, [3 x i16] [i16 88, i16 67, i16 0] }, %"struct.xalanc_1_10::DecimalToRoman" { i64 50, [3 x i16] [i16 76, i16 0, i16 0], i64 40, [3 x i16] [i16 88, i16 76, i16 0] }, %"struct.xalanc_1_10::DecimalToRoman" { i64 10, [3 x i16] [i16 88, i16 0, i16 0], i64 9, [3 x i16] [i16 73, i16 88, i16 0] }, %"struct.xalanc_1_10::DecimalToRoman" { i64 5, [3 x i16] [i16 86, i16 0, i16 0], i64 4, [3 x i16] [i16 73, i16 86, i16 0] }, %"struct.xalanc_1_10::DecimalToRoman" { i64 1, [3 x i16] [i16 73, i16 0, i16 0], i64 1, [3 x i16] [i16 73, i16 0, i16 0] }], align 16
@_ZN11xalanc_1_1010ElemNumber23s_romanConvertTableSizeE = dso_local local_unnamed_addr constant i64 7, align 8
@_ZN11xalanc_1_10L29s_staticElalphaResourceBundleE = internal global %"class.xalanc_1_10::XalanNumberingResourceBundle" zeroinitializer, align 8
@_ZN11xalanc_1_10L17s_textStringCharsE = internal constant [7 x i16] [i16 116, i16 101, i16 120, i16 116, i16 40, i16 41, i16 0], align 2
@_ZN11xalanc_1_10L20s_commentStringCharsE = internal constant [10 x i16] [i16 99, i16 111, i16 109, i16 109, i16 101, i16 110, i16 116, i16 40, i16 41, i16 0], align 16
@_ZN11xalanc_1_10L20s_solidusStringCharsE = internal constant [2 x i16] [i16 47, i16 0], align 2
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1010ElemNumberE = dso_local constant [28 x i8] c"N11xalanc_1_1010ElemNumberE\00", align 1
@_ZTIN11xalanc_1_1019ElemTemplateElementE = external constant ptr
@_ZTIN11xalanc_1_1010ElemNumberE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1010ElemNumberE, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZN11xalanc_1_1013DoubleSupport5s_NaNE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE = external local_unnamed_addr constant [0 x i8], align 1
@_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE15elalphaAlphabet = internal constant [26 x i16] [i16 945, i16 946, i16 947, i16 948, i16 949, i16 950, i16 951, i16 952, i16 953, i16 954, i16 955, i16 956, i16 957, i16 958, i16 959, i16 960, i16 961, i16 962, i16 963, i16 964, i16 965, i16 966, i16 967, i16 968, i16 969, i16 0], align 16
@_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE26elalphaTraditionalAlphabet = internal constant [27 x i16] [i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 0], align 16
@_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE19elalphaNumberGroups = internal constant [3 x i64] [i64 100, i64 10, i64 1], align 16
@_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE18elalphaMultipliers = internal constant [1 x i64] [i64 1000], align 8
@_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE22elalphaMultiplierChars = internal constant [2 x i16] [i16 985, i16 0], align 2
@_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE13elalphaDigits = internal constant [10 x i16] [i16 945, i16 946, i16 947, i16 948, i16 949, i16 987, i16 950, i16 951, i16 952, i16 0], align 16
@_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE11elalphaTens = internal constant [10 x i16] [i16 953, i16 954, i16 955, i16 956, i16 957, i16 958, i16 959, i16 960, i16 991, i16 0], align 16
@_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE15elalphaHundreds = internal constant [10 x i16] [i16 961, i16 962, i16 964, i16 965, i16 966, i16 967, i16 968, i16 969, i16 993, i16 0], align 16
@.str = private unnamed_addr constant [3 x i8] c"el\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ElemNumber.cpp, ptr null }]

@_ZN11xalanc_1_1010ElemNumberC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiim = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32, i64), ptr @_ZN11xalanc_1_1010ElemNumberC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiim
@_ZN11xalanc_1_1010ElemNumberD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1010ElemNumberD2Ev
@_ZN11xalanc_1_1010ElemNumber27NumberFormatStringTokenizerC1ERKNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1010ElemNumber27NumberFormatStringTokenizerC2ERKNS_14XalanDOMStringE

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010ElemNumberC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiim(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5, i64 noundef %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !115 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, i32 noundef %4, i32 noundef %5, i32 noundef 16)
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1010ElemNumberE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !116
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 6
  %14 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 7
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 8
  %16 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 9
  %17 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false)
  store i64 %6, ptr %17, align 8, !tbaa !119
  %18 = load ptr, ptr %3, align 8, !tbaa !116
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef i32 %20(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %22 unwind label %38, !prof !141

22:                                               ; preds = %7
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %37, label %24, !prof !142

24:                                               ; preds = %22
  %25 = load ptr, ptr @_ZN11xalanc_1_109Constants14ATTRNAME_COUNTE, align 8
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %25, i64 0, i32 1
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %25, i64 0, i32 3
  %28 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_FROME, align 8
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %28, i64 0, i32 1
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %28, i64 0, i32 3
  %31 = load ptr, ptr @_ZN11xalanc_1_109Constants14ATTRNAME_VALUEE, align 8
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %31, i64 0, i32 1
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %31, i64 0, i32 3
  %34 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRNAME_FORMATE, align 8
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %34, i64 0, i32 1
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %34, i64 0, i32 3
  br label %40

37:                                               ; preds = %364, %22
  ret void

38:                                               ; preds = %7
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %367

40:                                               ; preds = %24, %364
  %41 = phi i32 [ 0, %24 ], [ %365, %364 ]
  %42 = load ptr, ptr %3, align 8, !tbaa !116
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %41)
          to label %46 unwind label %82, !prof !143

46:                                               ; preds = %40, %46
  %47 = phi ptr [ %50, %46 ], [ %45, %40 ]
  %48 = load i16, ptr %47, align 2, !tbaa !144
  %49 = icmp eq i16 %48, 0
  %50 = getelementptr inbounds i16, ptr %47, i64 1
  br i1 %49, label %51, label %46, !prof !145, !llvm.loop !146

51:                                               ; preds = %46
  %52 = ptrtoint ptr %47 to i64
  %53 = ptrtoint ptr %45 to i64
  %54 = sub i64 %52, %53
  %55 = lshr exact i64 %54, 1
  %56 = trunc i64 %55 to i32
  %57 = icmp eq i32 %56, 5
  br i1 %57, label %58, label %123, !prof !149

58:                                               ; preds = %51
  %59 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %45, ptr noundef nonnull @_ZN11xalanc_1_1010ElemNumber13s_levelStringE, i32 noundef %56)
          to label %60 unwind label %82, !prof !150

60:                                               ; preds = %58
  br i1 %59, label %61, label %123, !prof !151

61:                                               ; preds = %60
  %62 = load ptr, ptr %3, align 8, !tbaa !116
  %63 = getelementptr inbounds ptr, ptr %62, i64 5
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %41)
          to label %66 unwind label %84

66:                                               ; preds = %61, %66
  %67 = phi ptr [ %70, %66 ], [ %65, %61 ]
  %68 = load i16, ptr %67, align 2, !tbaa !144
  %69 = icmp eq i16 %68, 0
  %70 = getelementptr inbounds i16, ptr %67, i64 1
  br i1 %69, label %71, label %66, !llvm.loop !146

71:                                               ; preds = %66
  %72 = ptrtoint ptr %67 to i64
  %73 = ptrtoint ptr %65 to i64
  %74 = sub i64 %72, %73
  %75 = and i64 %74, 8589934590
  %76 = icmp eq i64 %75, 16
  br i1 %76, label %78, label %77

77:                                               ; preds = %80, %71
  br label %86

78:                                               ; preds = %71
  %79 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef nonnull @_ZN11xalanc_1_1010ElemNumber16s_multipleStringE, ptr noundef %65, i32 noundef 8)
          to label %80 unwind label %84

80:                                               ; preds = %78
  br i1 %79, label %81, label %77

81:                                               ; preds = %80
  store i64 1, ptr %11, align 8, !tbaa !152
  br label %364

82:                                               ; preds = %332, %330, %321, %302, %300, %291, %272, %270, %261, %242, %240, %231, %212, %210, %204, %185, %183, %177, %158, %156, %150, %131, %129, %123, %58, %356, %351, %345, %340, %336, %315, %310, %305, %285, %280, %275, %255, %250, %245, %225, %220, %215, %198, %193, %188, %171, %166, %161, %144, %139, %134, %40
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %367

84:                                               ; preds = %111, %97, %78, %115, %61
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %367

86:                                               ; preds = %77, %86
  %87 = phi ptr [ %90, %86 ], [ %65, %77 ]
  %88 = load i16, ptr %87, align 2, !tbaa !144
  %89 = icmp eq i16 %88, 0
  %90 = getelementptr inbounds i16, ptr %87, i64 1
  br i1 %89, label %91, label %86, !llvm.loop !146

91:                                               ; preds = %86
  %92 = ptrtoint ptr %87 to i64
  %93 = sub i64 %92, %73
  %94 = and i64 %93, 8589934590
  %95 = icmp eq i64 %94, 6
  br i1 %95, label %97, label %96

96:                                               ; preds = %99, %91
  br label %101

97:                                               ; preds = %91
  %98 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef nonnull @_ZN11xalanc_1_1010ElemNumber11s_anyStringE, ptr noundef %65, i32 noundef 3)
          to label %99 unwind label %84

99:                                               ; preds = %97
  br i1 %98, label %100, label %96

100:                                              ; preds = %99
  store i64 2, ptr %11, align 8, !tbaa !152
  br label %364

101:                                              ; preds = %96, %101
  %102 = phi ptr [ %105, %101 ], [ %65, %96 ]
  %103 = load i16, ptr %102, align 2, !tbaa !144
  %104 = icmp eq i16 %103, 0
  %105 = getelementptr inbounds i16, ptr %102, i64 1
  br i1 %104, label %106, label %101, !llvm.loop !146

106:                                              ; preds = %101
  %107 = ptrtoint ptr %102 to i64
  %108 = sub i64 %107, %73
  %109 = and i64 %108, 8589934590
  %110 = icmp eq i64 %109, 12
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef nonnull @_ZN11xalanc_1_1010ElemNumber14s_singleStringE, ptr noundef %65, i32 noundef 6)
          to label %113 unwind label %84

113:                                              ; preds = %111
  br i1 %112, label %114, label %115

114:                                              ; preds = %113
  store i64 0, ptr %11, align 8, !tbaa !152
  br label %364

115:                                              ; preds = %106, %113
  %116 = load ptr, ptr @_ZN11xalanc_1_109Constants34ELEMNAME_NUMBER_WITH_PREFIX_STRINGE, align 8
  %117 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %116, i64 0, i32 1
  %118 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %116, i64 0, i32 3
  %119 = load i64, ptr %117, align 8, !tbaa !153
  %120 = icmp eq i64 %119, 0
  %121 = load ptr, ptr %118, align 8
  %122 = select i1 %120, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %121
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 65, ptr noundef %122, ptr noundef %45, ptr noundef %65)
          to label %364 unwind label %84

123:                                              ; preds = %51, %60
  %124 = load i64, ptr %26, align 8, !tbaa !153
  %125 = icmp eq i64 %124, 0
  %126 = load ptr, ptr %27, align 8
  %127 = select i1 %125, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %126, !prof !155
  %128 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %127)
          to label %129 unwind label %82, !prof !156

129:                                              ; preds = %123
  %130 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %45)
          to label %131 unwind label %82, !prof !156

131:                                              ; preds = %129
  %132 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %127, i32 noundef %128, ptr noundef %45, i32 noundef %130)
          to label %133 unwind label %82, !prof !156

133:                                              ; preds = %131
  br i1 %132, label %134, label %150, !prof !155

134:                                              ; preds = %133
  %135 = load ptr, ptr %0, align 8, !tbaa !116
  %136 = getelementptr inbounds ptr, ptr %135, i64 4
  %137 = load ptr, ptr %136, align 8
  %138 = invoke noundef ptr %137(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %139 unwind label %82

139:                                              ; preds = %134
  %140 = load ptr, ptr %3, align 8, !tbaa !116
  %141 = getelementptr inbounds ptr, ptr %140, i64 5
  %142 = load ptr, ptr %141, align 8
  %143 = invoke noundef ptr %142(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %41)
          to label %144 unwind label %82

144:                                              ; preds = %139
  %145 = load ptr, ptr %1, align 8, !tbaa !116
  %146 = getelementptr inbounds ptr, ptr %145, i64 19
  %147 = load ptr, ptr %146, align 8
  %148 = invoke noundef ptr %147(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %138, ptr noundef %143, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %149 unwind label %82

149:                                              ; preds = %144
  store ptr %148, ptr %8, align 8, !tbaa !157
  br label %364

150:                                              ; preds = %133
  %151 = load i64, ptr %29, align 8, !tbaa !153
  %152 = icmp eq i64 %151, 0
  %153 = load ptr, ptr %30, align 8
  %154 = select i1 %152, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %153, !prof !155
  %155 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %154)
          to label %156 unwind label %82, !prof !156

156:                                              ; preds = %150
  %157 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %45)
          to label %158 unwind label %82, !prof !156

158:                                              ; preds = %156
  %159 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %154, i32 noundef %155, ptr noundef %45, i32 noundef %157)
          to label %160 unwind label %82, !prof !156

160:                                              ; preds = %158
  br i1 %159, label %161, label %177, !prof !155

161:                                              ; preds = %160
  %162 = load ptr, ptr %0, align 8, !tbaa !116
  %163 = getelementptr inbounds ptr, ptr %162, i64 4
  %164 = load ptr, ptr %163, align 8
  %165 = invoke noundef ptr %164(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %166 unwind label %82

166:                                              ; preds = %161
  %167 = load ptr, ptr %3, align 8, !tbaa !116
  %168 = getelementptr inbounds ptr, ptr %167, i64 5
  %169 = load ptr, ptr %168, align 8
  %170 = invoke noundef ptr %169(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %41)
          to label %171 unwind label %82

171:                                              ; preds = %166
  %172 = load ptr, ptr %1, align 8, !tbaa !116
  %173 = getelementptr inbounds ptr, ptr %172, i64 19
  %174 = load ptr, ptr %173, align 8
  %175 = invoke noundef ptr %174(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %165, ptr noundef %170, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %176 unwind label %82

176:                                              ; preds = %171
  store ptr %175, ptr %9, align 8, !tbaa !158
  br label %364

177:                                              ; preds = %160
  %178 = load i64, ptr %32, align 8, !tbaa !153
  %179 = icmp eq i64 %178, 0
  %180 = load ptr, ptr %33, align 8
  %181 = select i1 %179, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %180, !prof !155
  %182 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %181)
          to label %183 unwind label %82, !prof !156

183:                                              ; preds = %177
  %184 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %45)
          to label %185 unwind label %82, !prof !156

185:                                              ; preds = %183
  %186 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %181, i32 noundef %182, ptr noundef %45, i32 noundef %184)
          to label %187 unwind label %82, !prof !156

187:                                              ; preds = %185
  br i1 %186, label %188, label %204, !prof !149

188:                                              ; preds = %187
  %189 = load ptr, ptr %0, align 8, !tbaa !116
  %190 = getelementptr inbounds ptr, ptr %189, i64 4
  %191 = load ptr, ptr %190, align 8
  %192 = invoke noundef ptr %191(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %193 unwind label %82, !prof !159

193:                                              ; preds = %188
  %194 = load ptr, ptr %3, align 8, !tbaa !116
  %195 = getelementptr inbounds ptr, ptr %194, i64 5
  %196 = load ptr, ptr %195, align 8
  %197 = invoke noundef ptr %196(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %41)
          to label %198 unwind label %82, !prof !160

198:                                              ; preds = %193
  %199 = load ptr, ptr %1, align 8, !tbaa !116
  %200 = getelementptr inbounds ptr, ptr %199, i64 21
  %201 = load ptr, ptr %200, align 8
  %202 = invoke noundef ptr %201(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %192, ptr noundef %197, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %203 unwind label %82, !prof !161

203:                                              ; preds = %198
  store ptr %202, ptr %10, align 8, !tbaa !162
  br label %364

204:                                              ; preds = %187
  %205 = load i64, ptr %35, align 8, !tbaa !153
  %206 = icmp eq i64 %205, 0
  %207 = load ptr, ptr %36, align 8
  %208 = select i1 %206, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %207, !prof !151
  %209 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %208)
          to label %210 unwind label %82, !prof !150

210:                                              ; preds = %204
  %211 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %45)
          to label %212 unwind label %82, !prof !150

212:                                              ; preds = %210
  %213 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %208, i32 noundef %209, ptr noundef %45, i32 noundef %211)
          to label %214 unwind label %82, !prof !150

214:                                              ; preds = %212
  br i1 %213, label %215, label %231, !prof !150

215:                                              ; preds = %214
  %216 = load ptr, ptr %0, align 8, !tbaa !116
  %217 = getelementptr inbounds ptr, ptr %216, i64 4
  %218 = load ptr, ptr %217, align 8
  %219 = invoke noundef ptr %218(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %220 unwind label %82, !prof !159

220:                                              ; preds = %215
  %221 = load ptr, ptr %3, align 8, !tbaa !116
  %222 = getelementptr inbounds ptr, ptr %221, i64 5
  %223 = load ptr, ptr %222, align 8
  %224 = invoke noundef ptr %223(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %41)
          to label %225 unwind label %82, !prof !160

225:                                              ; preds = %220
  %226 = load ptr, ptr %1, align 8, !tbaa !116
  %227 = getelementptr inbounds ptr, ptr %226, i64 35
  %228 = load ptr, ptr %227, align 8
  %229 = invoke noundef ptr %228(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %219, ptr noundef %45, ptr noundef %224, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %230 unwind label %82, !prof !163

230:                                              ; preds = %225
  store ptr %229, ptr %12, align 8, !tbaa !164
  br label %364

231:                                              ; preds = %214
  %232 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_LANGE, align 8
  %233 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %232, i64 0, i32 1
  %234 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %232, i64 0, i32 3
  %235 = load i64, ptr %233, align 8, !tbaa !153
  %236 = icmp eq i64 %235, 0
  %237 = load ptr, ptr %234, align 8
  %238 = select i1 %236, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %237
  %239 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %238)
          to label %240 unwind label %82

240:                                              ; preds = %231
  %241 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %45)
          to label %242 unwind label %82

242:                                              ; preds = %240
  %243 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %238, i32 noundef %239, ptr noundef %45, i32 noundef %241)
          to label %244 unwind label %82

244:                                              ; preds = %242
  br i1 %243, label %245, label %261

245:                                              ; preds = %244
  %246 = load ptr, ptr %0, align 8, !tbaa !116
  %247 = getelementptr inbounds ptr, ptr %246, i64 4
  %248 = load ptr, ptr %247, align 8
  %249 = invoke noundef ptr %248(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %250 unwind label %82

250:                                              ; preds = %245
  %251 = load ptr, ptr %3, align 8, !tbaa !116
  %252 = getelementptr inbounds ptr, ptr %251, i64 5
  %253 = load ptr, ptr %252, align 8
  %254 = invoke noundef ptr %253(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %41)
          to label %255 unwind label %82

255:                                              ; preds = %250
  %256 = load ptr, ptr %1, align 8, !tbaa !116
  %257 = getelementptr inbounds ptr, ptr %256, i64 35
  %258 = load ptr, ptr %257, align 8
  %259 = invoke noundef ptr %258(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %249, ptr noundef %45, ptr noundef %254, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %260 unwind label %82

260:                                              ; preds = %255
  store ptr %259, ptr %13, align 8, !tbaa !165
  br label %364

261:                                              ; preds = %244
  %262 = load ptr, ptr @_ZN11xalanc_1_109Constants20ATTRNAME_LETTERVALUEE, align 8
  %263 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %262, i64 0, i32 1
  %264 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %262, i64 0, i32 3
  %265 = load i64, ptr %263, align 8, !tbaa !153
  %266 = icmp eq i64 %265, 0
  %267 = load ptr, ptr %264, align 8
  %268 = select i1 %266, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %267
  %269 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %268)
          to label %270 unwind label %82

270:                                              ; preds = %261
  %271 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %45)
          to label %272 unwind label %82

272:                                              ; preds = %270
  %273 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %268, i32 noundef %269, ptr noundef %45, i32 noundef %271)
          to label %274 unwind label %82

274:                                              ; preds = %272
  br i1 %273, label %275, label %291

275:                                              ; preds = %274
  %276 = load ptr, ptr %0, align 8, !tbaa !116
  %277 = getelementptr inbounds ptr, ptr %276, i64 4
  %278 = load ptr, ptr %277, align 8
  %279 = invoke noundef ptr %278(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %280 unwind label %82

280:                                              ; preds = %275
  %281 = load ptr, ptr %3, align 8, !tbaa !116
  %282 = getelementptr inbounds ptr, ptr %281, i64 5
  %283 = load ptr, ptr %282, align 8
  %284 = invoke noundef ptr %283(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %41)
          to label %285 unwind label %82

285:                                              ; preds = %280
  %286 = load ptr, ptr %1, align 8, !tbaa !116
  %287 = getelementptr inbounds ptr, ptr %286, i64 35
  %288 = load ptr, ptr %287, align 8
  %289 = invoke noundef ptr %288(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %279, ptr noundef %45, ptr noundef %284, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %290 unwind label %82

290:                                              ; preds = %285
  store ptr %289, ptr %14, align 8, !tbaa !166
  br label %364

291:                                              ; preds = %274
  %292 = load ptr, ptr @_ZN11xalanc_1_109Constants26ATTRNAME_GROUPINGSEPARATORE, align 8
  %293 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %292, i64 0, i32 1
  %294 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %292, i64 0, i32 3
  %295 = load i64, ptr %293, align 8, !tbaa !153
  %296 = icmp eq i64 %295, 0
  %297 = load ptr, ptr %294, align 8
  %298 = select i1 %296, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %297
  %299 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %298)
          to label %300 unwind label %82

300:                                              ; preds = %291
  %301 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %45)
          to label %302 unwind label %82

302:                                              ; preds = %300
  %303 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %298, i32 noundef %299, ptr noundef %45, i32 noundef %301)
          to label %304 unwind label %82

304:                                              ; preds = %302
  br i1 %303, label %305, label %321

305:                                              ; preds = %304
  %306 = load ptr, ptr %0, align 8, !tbaa !116
  %307 = getelementptr inbounds ptr, ptr %306, i64 4
  %308 = load ptr, ptr %307, align 8
  %309 = invoke noundef ptr %308(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %310 unwind label %82

310:                                              ; preds = %305
  %311 = load ptr, ptr %3, align 8, !tbaa !116
  %312 = getelementptr inbounds ptr, ptr %311, i64 5
  %313 = load ptr, ptr %312, align 8
  %314 = invoke noundef ptr %313(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %41)
          to label %315 unwind label %82

315:                                              ; preds = %310
  %316 = load ptr, ptr %1, align 8, !tbaa !116
  %317 = getelementptr inbounds ptr, ptr %316, i64 35
  %318 = load ptr, ptr %317, align 8
  %319 = invoke noundef ptr %318(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %309, ptr noundef %45, ptr noundef %314, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %320 unwind label %82

320:                                              ; preds = %315
  store ptr %319, ptr %15, align 8, !tbaa !167
  br label %364

321:                                              ; preds = %304
  %322 = load ptr, ptr @_ZN11xalanc_1_109Constants21ATTRNAME_GROUPINGSIZEE, align 8
  %323 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %322, i64 0, i32 1
  %324 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %322, i64 0, i32 3
  %325 = load i64, ptr %323, align 8, !tbaa !153
  %326 = icmp eq i64 %325, 0
  %327 = load ptr, ptr %324, align 8
  %328 = select i1 %326, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %327
  %329 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %328)
          to label %330 unwind label %82

330:                                              ; preds = %321
  %331 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %45)
          to label %332 unwind label %82

332:                                              ; preds = %330
  %333 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %328, i32 noundef %329, ptr noundef %45, i32 noundef %331)
          to label %334 unwind label %82

334:                                              ; preds = %332
  %335 = load ptr, ptr %0, align 8, !tbaa !116
  br i1 %333, label %336, label %351

336:                                              ; preds = %334
  %337 = getelementptr inbounds ptr, ptr %335, i64 4
  %338 = load ptr, ptr %337, align 8
  %339 = invoke noundef ptr %338(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %340 unwind label %82

340:                                              ; preds = %336
  %341 = load ptr, ptr %3, align 8, !tbaa !116
  %342 = getelementptr inbounds ptr, ptr %341, i64 5
  %343 = load ptr, ptr %342, align 8
  %344 = invoke noundef ptr %343(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %41)
          to label %345 unwind label %82

345:                                              ; preds = %340
  %346 = load ptr, ptr %1, align 8, !tbaa !116
  %347 = getelementptr inbounds ptr, ptr %346, i64 35
  %348 = load ptr, ptr %347, align 8
  %349 = invoke noundef ptr %348(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %339, ptr noundef %45, ptr noundef %344, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %350 unwind label %82

350:                                              ; preds = %345
  store ptr %349, ptr %16, align 8, !tbaa !168
  br label %364

351:                                              ; preds = %334
  %352 = getelementptr inbounds ptr, ptr %335, i64 5
  %353 = load ptr, ptr %352, align 8
  %354 = invoke noundef zeroext i1 %353(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %45, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %41, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %355 unwind label %82

355:                                              ; preds = %351
  br i1 %354, label %364, label %356

356:                                              ; preds = %355
  %357 = load ptr, ptr @_ZN11xalanc_1_109Constants34ELEMNAME_NUMBER_WITH_PREFIX_STRINGE, align 8
  %358 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %357, i64 0, i32 1
  %359 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %357, i64 0, i32 3
  %360 = load i64, ptr %358, align 8, !tbaa !153
  %361 = icmp eq i64 %360, 0
  %362 = load ptr, ptr %359, align 8
  %363 = select i1 %361, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %362
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 74, ptr noundef %363, ptr noundef %45)
          to label %364 unwind label %82

364:                                              ; preds = %81, %114, %115, %100, %149, %203, %260, %320, %355, %356, %350, %290, %230, %176
  %365 = add nuw i32 %41, 1
  %366 = icmp eq i32 %365, %21
  br i1 %366, label %37, label %40, !prof !169, !llvm.loop !170

367:                                              ; preds = %82, %84, %38
  %368 = phi { ptr, i32 } [ %39, %38 ], [ %85, %84 ], [ %83, %82 ]
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #21
  resume { ptr, i32 } %368
}

declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1010ElemNumber6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetERKNS1_13AttributeListEiim(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5, i64 noundef %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !115 {
  %8 = load ptr, ptr %0, align 8, !tbaa !116
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 408), !prof !171
  invoke void @_ZN11xalanc_1_1010ElemNumberC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiim(ptr noundef nonnull align 8 dereferenceable(408) %11, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5, i64 noundef %6)
          to label %12 unwind label %13, !prof !150

12:                                               ; preds = %7
  ret ptr %11

13:                                               ; preds = %7
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = icmp eq ptr %11, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8, !tbaa !116
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %11)
          to label %23 unwind label %20

20:                                               ; preds = %16
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  tail call void @__clang_call_terminate(ptr %22) #22
  unreachable

23:                                               ; preds = %13, %16
  resume { ptr, i32 } %14
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1010ElemNumberD2Ev(ptr noundef nonnull align 8 dereferenceable(408) %0) unnamed_addr #5 align 2 !prof !115 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #21
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1010ElemNumberD0Ev(ptr noundef nonnull align 8 dereferenceable(408) %0) unnamed_addr #5 align 2 !prof !172 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #21
  tail call void @_ZdlPv(ptr noundef %0) #23
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010ElemNumber14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !115 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants34ELEMNAME_NUMBER_WITH_PREFIX_STRINGE, align 8, !tbaa !173
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1010ElemNumber12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %4 = load ptr, ptr %1, align 8, !tbaa !116
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !175
  invoke void @_ZNK11xalanc_1_1010ElemNumber14getCountStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %8 unwind label %22, !prof !176

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !177
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %32, label %12, !prof !179

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !153
  %15 = icmp eq i64 %14, 0
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = select i1 %15, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %17, !prof !179
  %19 = load ptr, ptr %1, align 8, !tbaa !116
  %20 = getelementptr inbounds ptr, ptr %19, i64 103
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %18, i32 noundef 0, i32 noundef %10)
          to label %32 unwind label %22, !prof !180

22:                                               ; preds = %12, %2
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = load ptr, ptr %1, align 8, !tbaa !116
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %31 unwind label %28

28:                                               ; preds = %22
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #22
  unreachable

31:                                               ; preds = %22
  resume { ptr, i32 } %23

32:                                               ; preds = %8, %12
  %33 = load ptr, ptr %1, align 8, !tbaa !116
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %40 unwind label %37, !prof !181

37:                                               ; preds = %32
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #22
  unreachable

40:                                               ; preds = %32
  ret ptr null
}

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1010ElemNumber14getCountStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [100 x i64], align 16
  %8 = alloca %"class.xalanc_1_10::XalanVector.9", align 8
  %9 = alloca i64, align 8
  %10 = load ptr, ptr %1, align 8, !tbaa !116
  %11 = getelementptr inbounds ptr, ptr %10, i64 6
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !182
  %14 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !162
  %16 = icmp eq ptr %15, null
  br i1 %16, label %83, label %17, !prof !179

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %18 = load ptr, ptr %1, align 8, !tbaa !116
  %19 = getelementptr inbounds ptr, ptr %18, i64 29
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !183
  %22 = load ptr, ptr %1, align 8, !tbaa !116
  %23 = getelementptr inbounds ptr, ptr %22, i64 30
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0), !prof !184
  %25 = load ptr, ptr %1, align 8, !tbaa !116
  %26 = getelementptr inbounds ptr, ptr %25, i64 6
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %29 unwind label %40, !prof !182

29:                                               ; preds = %17
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %15, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !185
  %32 = getelementptr inbounds i32, ptr %31, i64 2
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %15, ptr noundef %28, ptr noundef nonnull %32, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %33 unwind label %40, !prof !176

33:                                               ; preds = %29
  %34 = load ptr, ptr %1, align 8, !tbaa !116
  %35 = getelementptr inbounds ptr, ptr %34, i64 30
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %21)
          to label %50 unwind label %37, !prof !184

37:                                               ; preds = %33
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #22
  unreachable

40:                                               ; preds = %29, %17
  %41 = landingpad { ptr, i32 }
          cleanup
  %42 = load ptr, ptr %1, align 8, !tbaa !116
  %43 = getelementptr inbounds ptr, ptr %42, i64 30
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %21)
          to label %48 unwind label %45

45:                                               ; preds = %40
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #22
  unreachable

48:                                               ; preds = %205, %208, %40
  %49 = phi { ptr, i32 } [ %41, %40 ], [ %206, %208 ], [ %206, %205 ]
  resume { ptr, i32 } %49

50:                                               ; preds = %33
  %51 = load double, ptr %4, align 8, !tbaa !187
  %52 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !189
  %53 = bitcast double %51 to i64
  %54 = trunc i64 %53 to i32
  %55 = icmp eq i32 %52, %54
  %56 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %57 = lshr i64 %53, 32
  %58 = trunc i64 %57 to i32
  %59 = icmp eq i32 %56, %58
  %60 = select i1 %55, i1 %59, i1 false, !prof !176
  br i1 %60, label %75, label %61, !prof !179

61:                                               ; preds = %50
  %62 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE, align 8, !tbaa !189
  %63 = icmp eq i32 %62, %54
  %64 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE, i64 0, i32 1), align 4
  %65 = icmp eq i32 %64, %58
  %66 = select i1 %63, i1 %65, i1 false, !prof !176
  br i1 %66, label %75, label %67, !prof !179

67:                                               ; preds = %61
  %68 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE, align 8, !tbaa !189
  %69 = icmp eq i32 %68, %54
  %70 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE, i64 0, i32 1), align 4
  %71 = icmp eq i32 %70, %58
  %72 = select i1 %69, i1 %71, i1 false, !prof !176
  br i1 %72, label %75, label %73, !prof !179

73:                                               ; preds = %67
  %74 = call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd(double noundef %51, double noundef 5.000000e-01)
  br i1 %74, label %75, label %78, !prof !190

75:                                               ; preds = %73, %67, %61, %50
  %76 = load double, ptr %4, align 8, !tbaa !187
  %77 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %76, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br label %82

78:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %79 = load double, ptr %4, align 8, !tbaa !187
  %80 = call noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef %79)
  %81 = fptoui double %80 to i64
  store i64 %81, ptr %5, align 8, !tbaa !191
  call void @_ZNK11xalanc_1_1010ElemNumber16formatNumberListERNS_26StylesheetExecutionContextEPKmjRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %82

82:                                               ; preds = %78, %75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %216

83:                                               ; preds = %3
  %84 = load ptr, ptr %1, align 8, !tbaa !116
  %85 = getelementptr inbounds ptr, ptr %84, i64 151
  %86 = load ptr, ptr %85, align 8
  %87 = tail call noundef nonnull align 8 dereferenceable(64) ptr %86(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %88 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 4
  %89 = load i64, ptr %88, align 8, !tbaa !152
  %90 = icmp eq i64 %89, 2
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %92 = tail call noundef i64 @_ZN11xalanc_1_1013CountersTable9countNodeERNS_26StylesheetExecutionContextERKNS_10ElemNumberEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(64) %87, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %13)
  store i64 %92, ptr %6, align 8, !tbaa !191
  call void @_ZNK11xalanc_1_1010ElemNumber16formatNumberListERNS_26StylesheetExecutionContextEPKmjRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  br label %216

93:                                               ; preds = %83
  %94 = load ptr, ptr %1, align 8, !tbaa !116
  %95 = getelementptr inbounds ptr, ptr %94, i64 21
  %96 = load ptr, ptr %95, align 8
  %97 = tail call noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %98 = load i64, ptr %88, align 8, !tbaa !152
  %99 = icmp eq i64 %98, 0
  invoke void @_ZNK11xalanc_1_1010ElemNumber20getMatchingAncestorsERNS_26StylesheetExecutionContextEPNS_9XalanNodeEbRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %13, i1 noundef zeroext %99, ptr noundef nonnull align 8 dereferenceable(44) %97)
          to label %100 unwind label %128

100:                                              ; preds = %93
  %101 = load ptr, ptr %97, align 8, !tbaa !116
  %102 = getelementptr inbounds ptr, ptr %101, i64 3
  %103 = load ptr, ptr %102, align 8
  %104 = invoke noundef i32 %103(ptr noundef nonnull align 8 dereferenceable(40) %97)
          to label %105 unwind label %130

105:                                              ; preds = %100
  %106 = icmp eq i32 %104, 0
  br i1 %106, label %197, label %107

107:                                              ; preds = %105
  %108 = icmp ult i32 %104, 100
  br i1 %108, label %109, label %138

109:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %7) #21
  %110 = zext nneg i32 %104 to i64
  br label %112

111:                                              ; preds = %123
  invoke void @_ZNK11xalanc_1_1010ElemNumber16formatNumberListERNS_26StylesheetExecutionContextEPKmjRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %7, i32 noundef %104, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %127 unwind label %134

112:                                              ; preds = %109, %123
  %113 = phi i64 [ 0, %109 ], [ %125, %123 ]
  %114 = trunc i64 %113 to i32
  %115 = xor i32 %114, -1
  %116 = add i32 %104, %115
  %117 = load ptr, ptr %97, align 8, !tbaa !116
  %118 = getelementptr inbounds ptr, ptr %117, i64 2
  %119 = load ptr, ptr %118, align 8
  %120 = invoke noundef ptr %119(ptr noundef nonnull align 8 dereferenceable(40) %97, i32 noundef %116)
          to label %121 unwind label %132

121:                                              ; preds = %112
  %122 = invoke noundef i64 @_ZN11xalanc_1_1013CountersTable9countNodeERNS_26StylesheetExecutionContextERKNS_10ElemNumberEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(64) %87, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %120)
          to label %123 unwind label %132

123:                                              ; preds = %121
  %124 = getelementptr inbounds i64, ptr %7, i64 %113
  store i64 %122, ptr %124, align 8, !tbaa !191
  %125 = add nuw nsw i64 %113, 1
  %126 = icmp eq i64 %125, %110
  br i1 %126, label %111, label %112, !llvm.loop !192

127:                                              ; preds = %111
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %7) #21
  br label %197

128:                                              ; preds = %93
  %129 = landingpad { ptr, i32 }
          cleanup
  br label %205

130:                                              ; preds = %100
  %131 = landingpad { ptr, i32 }
          cleanup
  br label %205

132:                                              ; preds = %112, %121
  %133 = landingpad { ptr, i32 }
          cleanup
  br label %136

134:                                              ; preds = %111
  %135 = landingpad { ptr, i32 }
          cleanup
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi { ptr, i32 } [ %133, %132 ], [ %135, %134 ]
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %7) #21
  br label %205

138:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #21
  %139 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %1, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !193
  store ptr %140, ptr %8, align 8, !tbaa !195
  %141 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %8, i64 0, i32 1
  %142 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %8, i64 0, i32 2
  %143 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %8, i64 0, i32 3
  %144 = zext i32 %104 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %141, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  store i64 0, ptr %9, align 8, !tbaa !191
  invoke void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6resizeEmRKm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %144, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %145 unwind label %177

145:                                              ; preds = %138
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  %146 = load ptr, ptr %143, align 8, !tbaa !197
  %147 = zext i32 %104 to i64
  br label %149

148:                                              ; preds = %160
  invoke void @_ZNK11xalanc_1_1010ElemNumber16formatNumberListERNS_26StylesheetExecutionContextEPKmjRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %146, i32 noundef %104, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %164 unwind label %181

149:                                              ; preds = %145, %160
  %150 = phi i64 [ 0, %145 ], [ %162, %160 ]
  %151 = trunc i64 %150 to i32
  %152 = xor i32 %151, -1
  %153 = add i32 %104, %152
  %154 = load ptr, ptr %97, align 8, !tbaa !116
  %155 = getelementptr inbounds ptr, ptr %154, i64 2
  %156 = load ptr, ptr %155, align 8
  %157 = invoke noundef ptr %156(ptr noundef nonnull align 8 dereferenceable(40) %97, i32 noundef %153)
          to label %158 unwind label %179

158:                                              ; preds = %149
  %159 = invoke noundef i64 @_ZN11xalanc_1_1013CountersTable9countNodeERNS_26StylesheetExecutionContextERKNS_10ElemNumberEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(64) %87, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %157)
          to label %160 unwind label %179

160:                                              ; preds = %158
  %161 = getelementptr inbounds i64, ptr %146, i64 %150
  store i64 %159, ptr %161, align 8, !tbaa !191
  %162 = add nuw nsw i64 %150, 1
  %163 = icmp eq i64 %162, %147
  br i1 %163, label %148, label %149, !llvm.loop !192

164:                                              ; preds = %148
  %165 = load i64, ptr %142, align 8, !tbaa !198
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %176, label %167

167:                                              ; preds = %164
  %168 = load ptr, ptr %143, align 8, !tbaa !197
  %169 = load ptr, ptr %8, align 8, !tbaa !195
  %170 = load ptr, ptr %169, align 8, !tbaa !116
  %171 = getelementptr inbounds ptr, ptr %170, i64 3
  %172 = load ptr, ptr %171, align 8
  invoke void %172(ptr noundef nonnull align 8 dereferenceable(8) %169, ptr noundef %168)
          to label %176 unwind label %173

173:                                              ; preds = %167
  %174 = landingpad { ptr, i32 }
          catch ptr null
  %175 = extractvalue { ptr, i32 } %174, 0
  call void @__clang_call_terminate(ptr %175) #22
  unreachable

176:                                              ; preds = %164, %167
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  br label %197

177:                                              ; preds = %138
  %178 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  br label %183

179:                                              ; preds = %149, %158
  %180 = landingpad { ptr, i32 }
          cleanup
  br label %183

181:                                              ; preds = %148
  %182 = landingpad { ptr, i32 }
          cleanup
  br label %183

183:                                              ; preds = %179, %181, %177
  %184 = phi { ptr, i32 } [ %178, %177 ], [ %180, %179 ], [ %182, %181 ]
  %185 = load i64, ptr %142, align 8, !tbaa !198
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %196, label %187

187:                                              ; preds = %183
  %188 = load ptr, ptr %143, align 8, !tbaa !197
  %189 = load ptr, ptr %8, align 8, !tbaa !195
  %190 = load ptr, ptr %189, align 8, !tbaa !116
  %191 = getelementptr inbounds ptr, ptr %190, i64 3
  %192 = load ptr, ptr %191, align 8
  invoke void %192(ptr noundef nonnull align 8 dereferenceable(8) %189, ptr noundef %188)
          to label %196 unwind label %193

193:                                              ; preds = %187
  %194 = landingpad { ptr, i32 }
          catch ptr null
  %195 = extractvalue { ptr, i32 } %194, 0
  call void @__clang_call_terminate(ptr %195) #22
  unreachable

196:                                              ; preds = %187, %183
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  br label %205

197:                                              ; preds = %105, %176, %127
  %198 = load ptr, ptr %1, align 8, !tbaa !116
  %199 = getelementptr inbounds ptr, ptr %198, i64 22
  %200 = load ptr, ptr %199, align 8
  %201 = invoke noundef zeroext i1 %200(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %97)
          to label %216 unwind label %202

202:                                              ; preds = %197
  %203 = landingpad { ptr, i32 }
          catch ptr null
  %204 = extractvalue { ptr, i32 } %203, 0
  call void @__clang_call_terminate(ptr %204) #22
  unreachable

205:                                              ; preds = %130, %196, %136, %128
  %206 = phi { ptr, i32 } [ %129, %128 ], [ %131, %130 ], [ %137, %136 ], [ %184, %196 ]
  %207 = icmp eq ptr %97, null
  br i1 %207, label %48, label %208

208:                                              ; preds = %205
  %209 = load ptr, ptr %1, align 8, !tbaa !116
  %210 = getelementptr inbounds ptr, ptr %209, i64 22
  %211 = load ptr, ptr %210, align 8
  %212 = invoke noundef zeroext i1 %211(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %97)
          to label %48 unwind label %213

213:                                              ; preds = %208
  %214 = landingpad { ptr, i32 }
          catch ptr null
  %215 = extractvalue { ptr, i32 } %214, 0
  call void @__clang_call_terminate(ptr %215) #22
  unreachable

216:                                              ; preds = %197, %91, %82
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1010ElemNumber12findAncestorERNS_26StylesheetExecutionContextEPKNS_5XPathES5_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 align 2 !prof !172 {
  %6 = icmp eq ptr %4, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %5
  %8 = icmp eq ptr %2, null
  %9 = icmp eq ptr %3, null
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi ptr [ %4, %7 ], [ %29, %19 ]
  br i1 %8, label %15, label %12

12:                                               ; preds = %10
  %13 = tail call noundef i32 @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %2, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %12, %10
  br i1 %9, label %19, label %16

16:                                               ; preds = %15
  %17 = tail call noundef i32 @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %16, %15
  %20 = load ptr, ptr %11, align 8, !tbaa !116
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %24 = icmp eq i32 %23, 2
  %25 = load ptr, ptr %11, align 8, !tbaa !116
  %26 = select i1 %24, i64 32, i64 5
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %10, !llvm.loop !199

31:                                               ; preds = %19, %12, %16, %5
  %32 = phi ptr [ %4, %5 ], [ %29, %19 ], [ %11, %12 ], [ %11, %16 ]
  ret ptr %32
}

declare noundef i32 @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1010ElemNumber29findPrecedingOrAncestorOrSelfERNS_26StylesheetExecutionContextEPKNS_5XPathES5_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 align 2 !prof !172 {
  %6 = icmp eq ptr %4, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %5
  %8 = icmp eq ptr %2, null
  %9 = icmp eq ptr %3, null
  br label %10

10:                                               ; preds = %7, %47
  %11 = phi ptr [ %4, %7 ], [ %48, %47 ]
  br i1 %8, label %15, label %12

12:                                               ; preds = %10
  %13 = tail call noundef i32 @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %2, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %12, %10
  br i1 %9, label %19, label %16

16:                                               ; preds = %15
  %17 = tail call noundef i32 @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %16, %15
  %20 = load ptr, ptr %11, align 8, !tbaa !116
  %21 = getelementptr inbounds ptr, ptr %20, i64 9
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load ptr, ptr %11, align 8, !tbaa !116
  %27 = getelementptr inbounds ptr, ptr %26, i64 4
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef i32 %28(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %30 = icmp eq i32 %29, 2
  %31 = load ptr, ptr %11, align 8, !tbaa !116
  br i1 %30, label %32, label %36

32:                                               ; preds = %25
  %33 = getelementptr inbounds ptr, ptr %31, i64 32
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %47

36:                                               ; preds = %25
  %37 = getelementptr inbounds ptr, ptr %31, i64 5
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %47

40:                                               ; preds = %19
  %41 = load ptr, ptr %23, align 8, !tbaa !116
  %42 = getelementptr inbounds ptr, ptr %41, i64 8
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %23)
  %45 = icmp eq ptr %44, null
  %46 = select i1 %45, ptr %23, ptr %44
  br label %47

47:                                               ; preds = %36, %32, %40
  %48 = phi ptr [ %46, %40 ], [ %35, %32 ], [ %39, %36 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %10, !llvm.loop !200

50:                                               ; preds = %47, %12, %16, %5
  %51 = phi ptr [ null, %5 ], [ null, %47 ], [ null, %12 ], [ %11, %16 ]
  ret ptr %51
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1010ElemNumber20getCountMatchPatternERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !172 {
  %4 = alloca %"class.xalanc_1_10::ElementPrefixResolverProxy", align 8
  %5 = alloca %"class.xalanc_1_10::XalanSimplePrefixResolver", align 8
  %6 = alloca %"class.xalanc_1_10::ElementPrefixResolverProxy", align 8
  %7 = load ptr, ptr %2, align 8, !tbaa !116
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %2)
  switch i32 %10, label %257 [
    i32 1, label %11
    i32 2, label %137
    i32 4, label %194
    i32 3, label %194
    i32 8, label %199
    i32 9, label %204
    i32 7, label %209
  ]

11:                                               ; preds = %3
  %12 = load ptr, ptr %2, align 8, !tbaa !116
  %13 = getelementptr inbounds ptr, ptr %12, i64 22
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef nonnull align 8 dereferenceable(36) ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %16 = load ptr, ptr %2, align 8, !tbaa !116
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef nonnull align 8 dereferenceable(36) ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %15, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !177
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %11
  %24 = load ptr, ptr %1, align 8, !tbaa !116
  %25 = getelementptr inbounds ptr, ptr %24, i64 77
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %257

28:                                               ; preds = %11
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %19, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !177
  %31 = load ptr, ptr %2, align 8, !tbaa !116
  %32 = getelementptr inbounds ptr, ptr %31, i64 24
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef nonnull align 8 dereferenceable(36) ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !177
  %37 = icmp eq i32 %30, %36
  br i1 %37, label %48, label %38

38:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #21
  %39 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !193
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyC1EPKNS_12XalanElementERN11xercesc_2_713MemoryManagerEPKNS_15XPathEnvSupportE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef null)
  %41 = load ptr, ptr %1, align 8, !tbaa !116
  %42 = getelementptr inbounds ptr, ptr %41, i64 77
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %45 unwind label %46

45:                                               ; preds = %38
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #21
  br label %257

46:                                               ; preds = %38
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #21
  br label %259

48:                                               ; preds = %28
  %49 = load ptr, ptr %1, align 8, !tbaa !116
  %50 = getelementptr inbounds ptr, ptr %49, i64 23
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef nonnull align 8 dereferenceable(36) ptr %51(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %53 = load ptr, ptr %1, align 8, !tbaa !116
  %54 = getelementptr inbounds ptr, ptr %53, i64 74
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %52)
          to label %56 unwind label %107

56:                                               ; preds = %48
  %57 = load ptr, ptr %1, align 8, !tbaa !116
  %58 = getelementptr inbounds ptr, ptr %57, i64 23
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef nonnull align 8 dereferenceable(36) ptr %59(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %61 unwind label %109

61:                                               ; preds = %56
  %62 = icmp eq ptr %52, %60
  br i1 %62, label %69, label %63

63:                                               ; preds = %61
  %64 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %60, ptr noundef nonnull align 8 dereferenceable(32) %52)
          to label %65 unwind label %111

65:                                               ; preds = %63
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %52, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !177
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %60, i64 0, i32 1
  store i32 %67, ptr %68, align 8, !tbaa !177
  br label %69

69:                                               ; preds = %65, %61
  %70 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %60, i32 noundef 1, i16 noundef zeroext 58)
          to label %71 unwind label %111

71:                                               ; preds = %69
  %72 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %19, i64 0, i32 1
  %73 = load i64, ptr %72, align 8, !tbaa !153
  %74 = icmp eq i64 %73, 0
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %19, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8
  %77 = select i1 %74, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %76
  %78 = load i32, ptr %29, align 8, !tbaa !177
  %79 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %60, ptr noundef %77, i32 noundef %78)
          to label %80 unwind label %111

80:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %81 = load ptr, ptr %0, align 8, !tbaa !116
  %82 = getelementptr inbounds ptr, ptr %81, i64 3
  %83 = load ptr, ptr %82, align 8
  %84 = invoke noundef nonnull align 8 dereferenceable(36) ptr %83(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %85 unwind label %113

85:                                               ; preds = %80
  invoke void @_ZN11xalanc_1_1025XalanSimplePrefixResolverC1ERKNS_14XalanDOMStringES3_S3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(36) %52, ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef nonnull align 8 dereferenceable(36) %84)
          to label %86 unwind label %113

86:                                               ; preds = %85
  %87 = load ptr, ptr %1, align 8, !tbaa !116
  %88 = getelementptr inbounds ptr, ptr %87, i64 77
  %89 = load ptr, ptr %88, align 8
  %90 = invoke noundef ptr %89(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %60, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %91 unwind label %115

91:                                               ; preds = %86
  call void @_ZN11xalanc_1_1025XalanSimplePrefixResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  %92 = load ptr, ptr %1, align 8, !tbaa !116
  %93 = getelementptr inbounds ptr, ptr %92, i64 24
  %94 = load ptr, ptr %93, align 8
  %95 = invoke noundef zeroext i1 %94(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %60)
          to label %99 unwind label %96

96:                                               ; preds = %91
  %97 = landingpad { ptr, i32 }
          catch ptr null
  %98 = extractvalue { ptr, i32 } %97, 0
  call void @__clang_call_terminate(ptr %98) #22
  unreachable

99:                                               ; preds = %91
  %100 = load ptr, ptr %1, align 8, !tbaa !116
  %101 = getelementptr inbounds ptr, ptr %100, i64 24
  %102 = load ptr, ptr %101, align 8
  %103 = invoke noundef zeroext i1 %102(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %52)
          to label %257 unwind label %104

104:                                              ; preds = %99
  %105 = landingpad { ptr, i32 }
          catch ptr null
  %106 = extractvalue { ptr, i32 } %105, 0
  call void @__clang_call_terminate(ptr %106) #22
  unreachable

107:                                              ; preds = %48
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %128

109:                                              ; preds = %56
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %128

111:                                              ; preds = %71, %69, %63
  %112 = landingpad { ptr, i32 }
          cleanup
  br label %119

113:                                              ; preds = %85, %80
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %117

115:                                              ; preds = %86
  %116 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1025XalanSimplePrefixResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi { ptr, i32 } [ %116, %115 ], [ %114, %113 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %119

119:                                              ; preds = %111, %117
  %120 = phi { ptr, i32 } [ %118, %117 ], [ %112, %111 ]
  %121 = load ptr, ptr %1, align 8, !tbaa !116
  %122 = getelementptr inbounds ptr, ptr %121, i64 24
  %123 = load ptr, ptr %122, align 8
  %124 = invoke noundef zeroext i1 %123(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %60)
          to label %128 unwind label %125

125:                                              ; preds = %119
  %126 = landingpad { ptr, i32 }
          catch ptr null
  %127 = extractvalue { ptr, i32 } %126, 0
  call void @__clang_call_terminate(ptr %127) #22
  unreachable

128:                                              ; preds = %107, %119, %109
  %129 = phi { ptr, i32 } [ %108, %107 ], [ %110, %109 ], [ %120, %119 ]
  %130 = load ptr, ptr %1, align 8, !tbaa !116
  %131 = getelementptr inbounds ptr, ptr %130, i64 24
  %132 = load ptr, ptr %131, align 8
  %133 = invoke noundef zeroext i1 %132(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %52)
          to label %259 unwind label %134

134:                                              ; preds = %128
  %135 = landingpad { ptr, i32 }
          catch ptr null
  %136 = extractvalue { ptr, i32 } %135, 0
  call void @__clang_call_terminate(ptr %136) #22
  unreachable

137:                                              ; preds = %3
  %138 = load ptr, ptr %2, align 8, !tbaa !116
  %139 = getelementptr inbounds ptr, ptr %138, i64 2
  %140 = load ptr, ptr %139, align 8
  %141 = tail call noundef nonnull align 8 dereferenceable(36) ptr %140(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #21
  %142 = load ptr, ptr %2, align 8, !tbaa !116
  %143 = getelementptr inbounds ptr, ptr %142, i64 32
  %144 = load ptr, ptr %143, align 8
  %145 = tail call noundef ptr %144(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %146 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %1, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !193
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyC1EPKNS_12XalanElementERN11xercesc_2_713MemoryManagerEPKNS_15XPathEnvSupportE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %145, ptr noundef nonnull align 8 dereferenceable(8) %147, ptr noundef null)
  %148 = load ptr, ptr %1, align 8, !tbaa !116
  %149 = getelementptr inbounds ptr, ptr %148, i64 23
  %150 = load ptr, ptr %149, align 8
  %151 = invoke noundef nonnull align 8 dereferenceable(36) ptr %150(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %152 unwind label %181

152:                                              ; preds = %137
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %151, i32 noundef 0, i32 noundef -1)
          to label %153 unwind label %183

153:                                              ; preds = %152
  %154 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1010ElemNumber10s_atStringE)
          to label %155 unwind label %183

155:                                              ; preds = %153
  %156 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %151, ptr noundef nonnull @_ZN11xalanc_1_1010ElemNumber10s_atStringE, i32 noundef %154)
          to label %157 unwind label %183

157:                                              ; preds = %155
  %158 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %141, i64 0, i32 1
  %159 = load i64, ptr %158, align 8, !tbaa !153
  %160 = icmp eq i64 %159, 0
  %161 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %141, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8
  %163 = select i1 %160, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %162
  %164 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %141, i64 0, i32 1
  %165 = load i32, ptr %164, align 8, !tbaa !177
  %166 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %151, ptr noundef %163, i32 noundef %165)
          to label %167 unwind label %183

167:                                              ; preds = %157
  %168 = load ptr, ptr %1, align 8, !tbaa !116
  %169 = getelementptr inbounds ptr, ptr %168, i64 77
  %170 = load ptr, ptr %169, align 8
  %171 = invoke noundef ptr %170(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %151, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %172 unwind label %183

172:                                              ; preds = %167
  %173 = load ptr, ptr %1, align 8, !tbaa !116
  %174 = getelementptr inbounds ptr, ptr %173, i64 24
  %175 = load ptr, ptr %174, align 8
  %176 = invoke noundef zeroext i1 %175(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %151)
          to label %180 unwind label %177

177:                                              ; preds = %172
  %178 = landingpad { ptr, i32 }
          catch ptr null
  %179 = extractvalue { ptr, i32 } %178, 0
  call void @__clang_call_terminate(ptr %179) #22
  unreachable

180:                                              ; preds = %172
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #21
  br label %257

181:                                              ; preds = %137
  %182 = landingpad { ptr, i32 }
          cleanup
  br label %192

183:                                              ; preds = %157, %155, %153, %152, %167
  %184 = landingpad { ptr, i32 }
          cleanup
  %185 = load ptr, ptr %1, align 8, !tbaa !116
  %186 = getelementptr inbounds ptr, ptr %185, i64 24
  %187 = load ptr, ptr %186, align 8
  %188 = invoke noundef zeroext i1 %187(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %151)
          to label %192 unwind label %189

189:                                              ; preds = %183
  %190 = landingpad { ptr, i32 }
          catch ptr null
  %191 = extractvalue { ptr, i32 } %190, 0
  call void @__clang_call_terminate(ptr %191) #22
  unreachable

192:                                              ; preds = %183, %181
  %193 = phi { ptr, i32 } [ %182, %181 ], [ %184, %183 ]
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #21
  br label %259

194:                                              ; preds = %3, %3
  %195 = load ptr, ptr %1, align 8, !tbaa !116
  %196 = getelementptr inbounds ptr, ptr %195, i64 77
  %197 = load ptr, ptr %196, align 8
  %198 = tail call noundef ptr %197(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L18s_staticTextStringE, ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %257

199:                                              ; preds = %3
  %200 = load ptr, ptr %1, align 8, !tbaa !116
  %201 = getelementptr inbounds ptr, ptr %200, i64 77
  %202 = load ptr, ptr %201, align 8
  %203 = tail call noundef ptr %202(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L21s_staticCommentStringE, ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %257

204:                                              ; preds = %3
  %205 = load ptr, ptr %1, align 8, !tbaa !116
  %206 = getelementptr inbounds ptr, ptr %205, i64 77
  %207 = load ptr, ptr %206, align 8
  %208 = tail call noundef ptr %207(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L19s_staticSlashStringE, ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %257

209:                                              ; preds = %3
  %210 = load ptr, ptr %1, align 8, !tbaa !116
  %211 = getelementptr inbounds ptr, ptr %210, i64 23
  %212 = load ptr, ptr %211, align 8
  %213 = tail call noundef nonnull align 8 dereferenceable(36) ptr %212(ptr noundef nonnull align 8 dereferenceable(24) %1)
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %213, i32 noundef 0, i32 noundef -1)
          to label %214 unwind label %248

214:                                              ; preds = %209
  %215 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1010ElemNumber10s_piStringE)
          to label %216 unwind label %248

216:                                              ; preds = %214
  %217 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %213, ptr noundef nonnull @_ZN11xalanc_1_1010ElemNumber10s_piStringE, i32 noundef %215)
          to label %218 unwind label %248

218:                                              ; preds = %216
  %219 = load ptr, ptr %2, align 8, !tbaa !116
  %220 = getelementptr inbounds ptr, ptr %219, i64 2
  %221 = load ptr, ptr %220, align 8
  %222 = invoke noundef nonnull align 8 dereferenceable(36) ptr %221(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %223 unwind label %248

223:                                              ; preds = %218
  %224 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %222, i64 0, i32 1
  %225 = load i64, ptr %224, align 8, !tbaa !153
  %226 = icmp eq i64 %225, 0
  %227 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %222, i64 0, i32 3
  %228 = load ptr, ptr %227, align 8
  %229 = select i1 %226, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %228
  %230 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %222, i64 0, i32 1
  %231 = load i32, ptr %230, align 8, !tbaa !177
  %232 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %213, ptr noundef %229, i32 noundef %231)
          to label %233 unwind label %248

233:                                              ; preds = %223
  %234 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %213, i32 noundef 1, i16 noundef zeroext 41)
          to label %235 unwind label %248

235:                                              ; preds = %233
  %236 = load ptr, ptr %1, align 8, !tbaa !116
  %237 = getelementptr inbounds ptr, ptr %236, i64 77
  %238 = load ptr, ptr %237, align 8
  %239 = invoke noundef ptr %238(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %213, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %240 unwind label %248

240:                                              ; preds = %235
  %241 = load ptr, ptr %1, align 8, !tbaa !116
  %242 = getelementptr inbounds ptr, ptr %241, i64 24
  %243 = load ptr, ptr %242, align 8
  %244 = invoke noundef zeroext i1 %243(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %213)
          to label %257 unwind label %245

245:                                              ; preds = %240
  %246 = landingpad { ptr, i32 }
          catch ptr null
  %247 = extractvalue { ptr, i32 } %246, 0
  tail call void @__clang_call_terminate(ptr %247) #22
  unreachable

248:                                              ; preds = %233, %223, %216, %214, %209, %235, %218
  %249 = landingpad { ptr, i32 }
          cleanup
  %250 = load ptr, ptr %1, align 8, !tbaa !116
  %251 = getelementptr inbounds ptr, ptr %250, i64 24
  %252 = load ptr, ptr %251, align 8
  %253 = invoke noundef zeroext i1 %252(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %213)
          to label %259 unwind label %254

254:                                              ; preds = %248
  %255 = landingpad { ptr, i32 }
          catch ptr null
  %256 = extractvalue { ptr, i32 } %255, 0
  tail call void @__clang_call_terminate(ptr %256) #22
  unreachable

257:                                              ; preds = %240, %99, %23, %45, %3, %204, %199, %194, %180
  %258 = phi ptr [ null, %3 ], [ %208, %204 ], [ %203, %199 ], [ %198, %194 ], [ %171, %180 ], [ %27, %23 ], [ %44, %45 ], [ %90, %99 ], [ %239, %240 ]
  ret ptr %258

259:                                              ; preds = %248, %128, %46, %192
  %260 = phi { ptr, i32 } [ %193, %192 ], [ %47, %46 ], [ %129, %128 ], [ %249, %248 ]
  resume { ptr, i32 } %260
}

declare void @_ZN11xalanc_1_1026ElementPrefixResolverProxyC1EPKNS_12XalanElementERN11xercesc_2_713MemoryManagerEPKNS_15XPathEnvSupportE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #4

declare void @_ZN11xalanc_1_1025XalanSimplePrefixResolverC1ERKNS_14XalanDOMStringES3_S3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1025XalanSimplePrefixResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd(double noundef, double noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1010ElemNumber16formatNumberListERNS_26StylesheetExecutionContextEPKmjRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !201 {
  %6 = alloca %"class.xalanc_1_10::XalanVector.13", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  %7 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !193
  store ptr %8, ptr %6, align 8, !tbaa !202
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %6, i64 0, i32 1
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %6, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %6, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %12 = load ptr, ptr %1, align 8, !tbaa !116
  %13 = getelementptr inbounds ptr, ptr %12, i64 23
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef nonnull align 8 dereferenceable(36) ptr %14(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %16 unwind label %30, !prof !204

16:                                               ; preds = %5
  %17 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !164
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20, !prof !205

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %18, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !206
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24, !prof !208

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %18, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !209
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %15, i32 noundef 0, i32 noundef -1)
          to label %27 unwind label %32

27:                                               ; preds = %24
  %28 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef nonnull %22, i32 noundef %26)
          to label %34 unwind label %32

29:                                               ; preds = %20
  invoke void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %34 unwind label %32

30:                                               ; preds = %5
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %367

32:                                               ; preds = %29, %27, %24, %39, %38
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %183

34:                                               ; preds = %27, %29, %16
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %15, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !177
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41, !prof !205

38:                                               ; preds = %34
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %15, i32 noundef 0, i32 noundef -1)
          to label %39 unwind label %32

39:                                               ; preds = %38
  %40 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %15, i32 noundef 1, i16 noundef zeroext 49)
          to label %41 unwind label %32

41:                                               ; preds = %39, %34
  %42 = load i32, ptr %35, align 8, !tbaa !177
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %89, label %44, !prof !210

44:                                               ; preds = %41
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %15, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !211
  %47 = zext i32 %42 to i64
  br label %48

48:                                               ; preds = %85, %44
  %49 = phi i32 [ 0, %44 ], [ %86, %85 ]
  %50 = phi i32 [ 0, %44 ], [ %87, %85 ]
  %51 = zext i32 %49 to i64
  %52 = getelementptr inbounds i16, ptr %46, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !144
  %54 = zext i16 %53 to i64
  %55 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !189
  switch i8 %56, label %59 [
    i8 4, label %57
    i8 2, label %57
    i8 1, label %57
  ], !prof !212

57:                                               ; preds = %48, %48, %48
  %58 = icmp ult i32 %49, %42
  br i1 %58, label %61, label %85, !prof !213

59:                                               ; preds = %48
  %60 = icmp ult i32 %49, %42
  br i1 %60, label %71, label %85, !prof !214

61:                                               ; preds = %57, %68
  %62 = phi i64 [ %69, %68 ], [ %51, %57 ]
  %63 = getelementptr inbounds i16, ptr %46, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !144
  %65 = zext i16 %64 to i64
  %66 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !189
  switch i8 %67, label %83 [
    i8 4, label %68
    i8 2, label %68
    i8 1, label %68
  ], !prof !215

68:                                               ; preds = %61, %61, %61
  %69 = add nuw nsw i64 %62, 1
  %70 = icmp eq i64 %69, %47
  br i1 %70, label %85, label %61, !prof !216, !llvm.loop !217

71:                                               ; preds = %59, %78
  %72 = phi i64 [ %79, %78 ], [ %51, %59 ]
  %73 = getelementptr inbounds i16, ptr %46, i64 %72
  %74 = load i16, ptr %73, align 2, !tbaa !144
  %75 = zext i16 %74 to i64
  %76 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !189
  switch i8 %77, label %78 [
    i8 4, label %81
    i8 2, label %81
    i8 1, label %81
  ], !prof !218

78:                                               ; preds = %71
  %79 = add nuw nsw i64 %72, 1
  %80 = icmp eq i64 %79, %47
  br i1 %80, label %85, label %71, !prof !219, !llvm.loop !220

81:                                               ; preds = %71, %71, %71
  %82 = trunc i64 %72 to i32
  br label %85

83:                                               ; preds = %61
  %84 = trunc i64 %62 to i32
  br label %85

85:                                               ; preds = %68, %78, %83, %81, %59, %57
  %86 = phi i32 [ %49, %59 ], [ %49, %57 ], [ %82, %81 ], [ %84, %83 ], [ %42, %78 ], [ %42, %68 ]
  %87 = add i32 %50, 1
  %88 = icmp ult i32 %86, %42
  br i1 %88, label %48, label %89, !prof !221, !llvm.loop !222

89:                                               ; preds = %85, %41
  %90 = phi i32 [ 0, %41 ], [ %87, %85 ]
  %91 = zext i32 %90 to i64
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %91)
          to label %92 unwind label %112, !prof !223

92:                                               ; preds = %89
  %93 = icmp eq i32 %90, 0
  br i1 %93, label %99, label %94, !prof !210

94:                                               ; preds = %92
  %95 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %15, i64 0, i32 3
  %96 = zext i32 %42 to i64
  %97 = zext i32 %42 to i64
  %98 = zext i32 %90 to i64
  br label %114

99:                                               ; preds = %163, %92
  %100 = load ptr, ptr %1, align 8, !tbaa !116
  %101 = getelementptr inbounds ptr, ptr %100, i64 24
  %102 = load ptr, ptr %101, align 8
  %103 = invoke noundef zeroext i1 %102(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %15)
          to label %107 unwind label %104, !prof !224

104:                                              ; preds = %99
  %105 = landingpad { ptr, i32 }
          catch ptr null
  %106 = extractvalue { ptr, i32 } %105, 0
  call void @__clang_call_terminate(ptr %106) #22
  unreachable

107:                                              ; preds = %99
  %108 = load ptr, ptr %11, align 8, !tbaa !225
  %109 = load i64, ptr %9, align 8, !tbaa !226
  %110 = getelementptr %"class.xalanc_1_10::XalanDOMString", ptr %108, i64 %109
  %111 = icmp eq i64 %109, 0
  br i1 %111, label %207, label %168, !prof !205

112:                                              ; preds = %89
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %183

114:                                              ; preds = %94, %163
  %115 = phi i64 [ 0, %94 ], [ %164, %163 ]
  %116 = phi i32 [ 0, %94 ], [ %162, %163 ]
  %117 = load ptr, ptr %11, align 8, !tbaa !225
  %118 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %117, i64 %115
  %119 = icmp ult i32 %116, %42
  br i1 %119, label %127, label %120, !prof !227

120:                                              ; preds = %114
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %118, i64 0, i32 1
  %122 = load i64, ptr %121, align 8, !tbaa !153
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  store i64 0, ptr %121, align 8, !tbaa !153
  br label %125

125:                                              ; preds = %124, %120
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %117, i64 %115, i32 1
  store i32 0, ptr %126, align 8, !tbaa !177
  br label %127

127:                                              ; preds = %125, %114
  %128 = zext i32 %116 to i64
  %129 = load ptr, ptr %95, align 8, !tbaa !211
  %130 = getelementptr inbounds i16, ptr %129, i64 %128
  %131 = load i16, ptr %130, align 2, !tbaa !144
  %132 = zext i16 %131 to i64
  %133 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !189
  switch i8 %134, label %136 [
    i8 4, label %135
    i8 2, label %135
    i8 1, label %135
  ], !prof !212

135:                                              ; preds = %127, %127, %127
  br i1 %119, label %137, label %161, !prof !213

136:                                              ; preds = %127
  br i1 %119, label %147, label %161, !prof !214

137:                                              ; preds = %135, %144
  %138 = phi i64 [ %145, %144 ], [ %128, %135 ]
  %139 = getelementptr inbounds i16, ptr %129, i64 %138
  %140 = load i16, ptr %139, align 2, !tbaa !144
  %141 = zext i16 %140 to i64
  %142 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !189
  switch i8 %143, label %159 [
    i8 4, label %144
    i8 2, label %144
    i8 1, label %144
  ], !prof !215

144:                                              ; preds = %137, %137, %137
  %145 = add nuw i64 %138, 1
  %146 = icmp eq i64 %145, %96
  br i1 %146, label %161, label %137, !prof !216, !llvm.loop !228

147:                                              ; preds = %136, %154
  %148 = phi i64 [ %155, %154 ], [ %128, %136 ]
  %149 = getelementptr inbounds i16, ptr %129, i64 %148
  %150 = load i16, ptr %149, align 2, !tbaa !144
  %151 = zext i16 %150 to i64
  %152 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !189
  switch i8 %153, label %154 [
    i8 4, label %157
    i8 2, label %157
    i8 1, label %157
  ], !prof !218

154:                                              ; preds = %147
  %155 = add nuw i64 %148, 1
  %156 = icmp eq i64 %155, %97
  br i1 %156, label %161, label %147, !prof !219, !llvm.loop !229

157:                                              ; preds = %147, %147, %147
  %158 = trunc i64 %148 to i32
  br label %161

159:                                              ; preds = %137
  %160 = trunc i64 %138 to i32
  br label %161

161:                                              ; preds = %159, %144, %157, %154, %136, %135
  %162 = phi i32 [ %116, %136 ], [ %116, %135 ], [ %158, %157 ], [ %42, %154 ], [ %160, %159 ], [ %42, %144 ]
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef nonnull align 8 dereferenceable(36) %118, i32 noundef %116, i32 noundef %162)
          to label %163 unwind label %166

163:                                              ; preds = %161
  %164 = add nuw nsw i64 %115, 1
  %165 = icmp eq i64 %164, %98
  br i1 %165, label %99, label %114, !prof !230, !llvm.loop !231

166:                                              ; preds = %161
  %167 = landingpad { ptr, i32 }
          cleanup
  br label %183

168:                                              ; preds = %107
  %169 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %108, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !211
  %171 = load i16, ptr %170, align 2, !tbaa !144
  %172 = zext i16 %171 to i64
  %173 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !189
  %175 = icmp ne i8 %174, 4
  %176 = add i8 %174, -3
  %177 = icmp ult i8 %176, -2
  %178 = and i1 %175, %177
  %179 = select i1 %178, ptr %108, ptr %110, !prof !223
  %180 = zext i1 %178 to i64
  %181 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %108, i64 %180
  %182 = icmp eq i64 %109, 1
  br i1 %182, label %207, label %194, !prof !205

183:                                              ; preds = %166, %112, %32
  %184 = phi { ptr, i32 } [ %33, %32 ], [ %167, %166 ], [ %113, %112 ]
  %185 = load ptr, ptr %1, align 8, !tbaa !116
  %186 = getelementptr inbounds ptr, ptr %185, i64 24
  %187 = load ptr, ptr %186, align 8
  %188 = invoke noundef zeroext i1 %187(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %15)
          to label %367 unwind label %189

189:                                              ; preds = %183
  %190 = landingpad { ptr, i32 }
          catch ptr null
  %191 = extractvalue { ptr, i32 } %190, 0
  call void @__clang_call_terminate(ptr %191) #22
  unreachable

192:                                              ; preds = %212
  %193 = landingpad { ptr, i32 }
          cleanup
  br label %367

194:                                              ; preds = %168
  %195 = getelementptr %"class.xalanc_1_10::XalanDOMString", ptr %110, i64 -1, i32 0, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !211
  %197 = load i16, ptr %196, align 2, !tbaa !144
  %198 = zext i16 %197 to i64
  %199 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !189
  %201 = icmp ne i8 %200, 4
  %202 = add i8 %200, -3
  %203 = icmp ult i8 %202, -2
  %204 = and i1 %201, %203
  %205 = sext i1 %204 to i64
  %206 = getelementptr %"class.xalanc_1_10::XalanDOMString", ptr %110, i64 %205
  br label %207

207:                                              ; preds = %194, %168, %107
  %208 = phi ptr [ %179, %168 ], [ %110, %107 ], [ %179, %194 ]
  %209 = phi ptr [ %110, %168 ], [ %110, %107 ], [ %206, %194 ]
  %210 = phi ptr [ %181, %168 ], [ %108, %107 ], [ %181, %194 ]
  %211 = icmp eq ptr %208, %110
  br i1 %211, label %222, label %212, !prof !205

212:                                              ; preds = %207
  %213 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %208, i64 0, i32 1
  %214 = load i64, ptr %213, align 8, !tbaa !153
  %215 = icmp eq i64 %214, 0
  %216 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %208, i64 0, i32 3
  %217 = load ptr, ptr %216, align 8
  %218 = select i1 %215, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %217, !prof !205
  %219 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %208, i64 0, i32 1
  %220 = load i32, ptr %219, align 8, !tbaa !177
  %221 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %218, i32 noundef %220)
          to label %222 unwind label %192, !prof !223

222:                                              ; preds = %212, %207
  %223 = load ptr, ptr %1, align 8, !tbaa !116
  %224 = getelementptr inbounds ptr, ptr %223, i64 23
  %225 = load ptr, ptr %224, align 8
  %226 = invoke noundef nonnull align 8 dereferenceable(36) ptr %225(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %227 unwind label %238, !prof !204

227:                                              ; preds = %222
  %228 = icmp eq i32 %3, 0
  br i1 %228, label %236, label %229, !prof !210

229:                                              ; preds = %227
  %230 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %226, i64 0, i32 1
  %231 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %226, i64 0, i32 3
  %232 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %226, i64 0, i32 1
  %233 = add i32 %3, -1
  %234 = zext i32 %233 to i64
  %235 = zext i32 %3 to i64
  br label %242

236:                                              ; preds = %301, %227
  %237 = icmp eq ptr %209, %110
  br i1 %237, label %314, label %304, !prof !205

238:                                              ; preds = %222
  %239 = landingpad { ptr, i32 }
          cleanup
  br label %367

240:                                              ; preds = %304
  %241 = landingpad { ptr, i32 }
          cleanup
  br label %358

242:                                              ; preds = %229, %301
  %243 = phi i64 [ 0, %229 ], [ %302, %301 ]
  %244 = phi i16 [ 49, %229 ], [ %264, %301 ]
  %245 = phi i32 [ 1, %229 ], [ %263, %301 ]
  %246 = phi ptr [ %210, %229 ], [ %268, %301 ]
  %247 = phi ptr [ %110, %229 ], [ %266, %301 ]
  %248 = icmp eq ptr %246, %209
  br i1 %248, label %261, label %249, !prof !205

249:                                              ; preds = %242
  %250 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %246, i64 0, i32 1
  %251 = load i32, ptr %250, align 8, !tbaa !177
  %252 = add i32 %251, -1
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %246, i64 0, i32 3
  %255 = load ptr, ptr %254, align 8, !tbaa !211
  %256 = getelementptr inbounds i16, ptr %255, i64 %253
  %257 = load i16, ptr %256, align 2, !tbaa !144
  %258 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %246, i64 1
  br label %261

259:                                              ; preds = %292, %282, %271, %261
  %260 = landingpad { ptr, i32 }
          cleanup
  br label %358

261:                                              ; preds = %249, %242
  %262 = phi ptr [ %258, %249 ], [ %246, %242 ]
  %263 = phi i32 [ %251, %249 ], [ %245, %242 ]
  %264 = phi i16 [ %257, %249 ], [ %244, %242 ]
  %265 = icmp ne ptr %262, %209
  %266 = select i1 %265, ptr %262, ptr %247, !prof !205
  %267 = zext i1 %265 to i64
  %268 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %262, i64 %267
  %269 = getelementptr inbounds i64, ptr %2, i64 %243
  %270 = load i64, ptr %269, align 8, !tbaa !191
  invoke void @_ZNK11xalanc_1_1010ElemNumber18getFormattedNumberERNS_26StylesheetExecutionContextEtjmRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i16 noundef zeroext %264, i32 noundef %263, i64 noundef %270, ptr noundef nonnull align 8 dereferenceable(36) %226)
          to label %271 unwind label %259, !prof !223

271:                                              ; preds = %261
  %272 = load i64, ptr %230, align 8, !tbaa !153
  %273 = icmp eq i64 %272, 0
  %274 = load ptr, ptr %231, align 8
  %275 = select i1 %273, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %274, !prof !205
  %276 = load i32, ptr %232, align 8, !tbaa !177
  %277 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %275, i32 noundef %276)
          to label %278 unwind label %259, !prof !223

278:                                              ; preds = %271
  %279 = icmp ult i64 %243, %234
  br i1 %279, label %280, label %301, !prof !205

280:                                              ; preds = %278
  %281 = icmp eq ptr %266, %110
  br i1 %281, label %292, label %282

282:                                              ; preds = %280
  %283 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %266, i64 0, i32 1
  %284 = load i64, ptr %283, align 8, !tbaa !153
  %285 = icmp eq i64 %284, 0
  %286 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %266, i64 0, i32 3
  %287 = load ptr, ptr %286, align 8
  %288 = select i1 %285, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %287
  %289 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %266, i64 0, i32 1
  %290 = load i32, ptr %289, align 8, !tbaa !177
  %291 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %288, i32 noundef %290)
          to label %294 unwind label %259

292:                                              ; preds = %280
  %293 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef 1, i16 noundef zeroext 46)
          to label %294 unwind label %259

294:                                              ; preds = %292, %282
  %295 = load i64, ptr %230, align 8, !tbaa !153
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %300, label %297

297:                                              ; preds = %294
  %298 = load i64, ptr %230, align 8, !tbaa !153
  %299 = sub i64 %298, %295
  store i64 %299, ptr %230, align 8, !tbaa !153
  br label %300

300:                                              ; preds = %297, %294
  store i32 0, ptr %232, align 8, !tbaa !177
  br label %301

301:                                              ; preds = %300, %278
  %302 = add nuw nsw i64 %243, 1
  %303 = icmp eq i64 %302, %235
  br i1 %303, label %236, label %242, !prof !214, !llvm.loop !232

304:                                              ; preds = %236
  %305 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %209, i64 0, i32 1
  %306 = load i64, ptr %305, align 8, !tbaa !153
  %307 = icmp eq i64 %306, 0
  %308 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %209, i64 0, i32 3
  %309 = load ptr, ptr %308, align 8
  %310 = select i1 %307, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %309, !prof !205
  %311 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %209, i64 0, i32 1
  %312 = load i32, ptr %311, align 8, !tbaa !177
  %313 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %310, i32 noundef %312)
          to label %314 unwind label %240, !prof !223

314:                                              ; preds = %236, %304
  %315 = load ptr, ptr %1, align 8, !tbaa !116
  %316 = getelementptr inbounds ptr, ptr %315, i64 24
  %317 = load ptr, ptr %316, align 8
  %318 = invoke noundef zeroext i1 %317(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %226)
          to label %322 unwind label %319, !prof !224

319:                                              ; preds = %314
  %320 = landingpad { ptr, i32 }
          catch ptr null
  %321 = extractvalue { ptr, i32 } %320, 0
  call void @__clang_call_terminate(ptr %321) #22
  unreachable

322:                                              ; preds = %314
  %323 = load i64, ptr %10, align 8, !tbaa !233
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %357, label %325, !prof !234

325:                                              ; preds = %322
  %326 = load ptr, ptr %11, align 8, !tbaa !225
  %327 = load i64, ptr %9, align 8, !tbaa !226
  %328 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %326, i64 %327
  %329 = icmp eq i64 %327, 0
  br i1 %329, label %348, label %330, !prof !235

330:                                              ; preds = %325, %345
  %331 = phi ptr [ %346, %345 ], [ %326, %325 ]
  %332 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %331, i64 0, i32 2
  %333 = load i64, ptr %332, align 8, !tbaa !236
  %334 = icmp eq i64 %333, 0
  br i1 %334, label %345, label %335, !prof !237

335:                                              ; preds = %330
  %336 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %331, i64 0, i32 3
  %337 = load ptr, ptr %336, align 8, !tbaa !211
  %338 = load ptr, ptr %331, align 8, !tbaa !238
  %339 = load ptr, ptr %338, align 8, !tbaa !116
  %340 = getelementptr inbounds ptr, ptr %339, i64 3
  %341 = load ptr, ptr %340, align 8
  invoke void %341(ptr noundef nonnull align 8 dereferenceable(8) %338, ptr noundef %337)
          to label %345 unwind label %342, !prof !239

342:                                              ; preds = %335
  %343 = landingpad { ptr, i32 }
          catch ptr null
  %344 = extractvalue { ptr, i32 } %343, 0
  call void @__clang_call_terminate(ptr %344) #22
  unreachable

345:                                              ; preds = %335, %330
  %346 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %331, i64 1
  %347 = icmp eq ptr %346, %328
  br i1 %347, label %348, label %330, !prof !240, !llvm.loop !241

348:                                              ; preds = %345, %325
  %349 = load ptr, ptr %11, align 8, !tbaa !225
  %350 = load ptr, ptr %6, align 8, !tbaa !202
  %351 = load ptr, ptr %350, align 8, !tbaa !116
  %352 = getelementptr inbounds ptr, ptr %351, i64 3
  %353 = load ptr, ptr %352, align 8
  invoke void %353(ptr noundef nonnull align 8 dereferenceable(8) %350, ptr noundef %349)
          to label %357 unwind label %354, !prof !242

354:                                              ; preds = %348
  %355 = landingpad { ptr, i32 }
          catch ptr null
  %356 = extractvalue { ptr, i32 } %355, 0
  call void @__clang_call_terminate(ptr %356) #22
  unreachable

357:                                              ; preds = %322, %348
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  ret void

358:                                              ; preds = %240, %259
  %359 = phi { ptr, i32 } [ %260, %259 ], [ %241, %240 ]
  %360 = load ptr, ptr %1, align 8, !tbaa !116
  %361 = getelementptr inbounds ptr, ptr %360, i64 24
  %362 = load ptr, ptr %361, align 8
  %363 = invoke noundef zeroext i1 %362(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %226)
          to label %367 unwind label %364

364:                                              ; preds = %358
  %365 = landingpad { ptr, i32 }
          catch ptr null
  %366 = extractvalue { ptr, i32 } %365, 0
  call void @__clang_call_terminate(ptr %366) #22
  unreachable

367:                                              ; preds = %238, %358, %30, %183, %192
  %368 = phi { ptr, i32 } [ %193, %192 ], [ %31, %30 ], [ %184, %183 ], [ %239, %238 ], [ %359, %358 ]
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  resume { ptr, i32 } %368
}

declare noundef i64 @_ZN11xalanc_1_1013CountersTable9countNodeERNS_26StylesheetExecutionContextERKNS_10ElemNumberEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(408), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1010ElemNumber20getMatchingAncestorsERNS_26StylesheetExecutionContextEPNS_9XalanNodeEbRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(44) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !172 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = invoke noundef ptr @_ZNK11xalanc_1_1010ElemNumber20getCountMatchPatternERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2)
          to label %27 unwind label %13

11:                                               ; preds = %53, %37, %42, %46, %48
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %15

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %28, %11 ], [ null, %13 ]
  %17 = phi { ptr, i32 } [ %12, %11 ], [ %14, %13 ]
  %18 = icmp eq ptr %16, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %1, align 8, !tbaa !116
  %21 = getelementptr inbounds ptr, ptr %20, i64 78
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %16)
          to label %26 unwind label %23

23:                                               ; preds = %19
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #22
  unreachable

26:                                               ; preds = %15, %19
  resume { ptr, i32 } %17

27:                                               ; preds = %9, %5
  %28 = phi ptr [ null, %5 ], [ %10, %9 ]
  %29 = phi ptr [ %7, %5 ], [ %10, %9 ]
  %30 = icmp eq ptr %2, null
  br i1 %30, label %62, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 2
  br label %33

33:                                               ; preds = %31, %60
  %34 = phi ptr [ %2, %31 ], [ %59, %60 ]
  %35 = load ptr, ptr %32, align 8, !tbaa !158
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = invoke noundef i32 @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %35, ptr noundef nonnull %34, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %39 unwind label %11

39:                                               ; preds = %37
  %40 = icmp eq i32 %38, 0
  %41 = or i1 %40, %3
  br i1 %41, label %42, label %62

42:                                               ; preds = %39, %33
  %43 = invoke noundef i32 @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %29, ptr noundef nonnull %34, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %44 unwind label %11

44:                                               ; preds = %42
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %4, ptr noundef nonnull %34)
          to label %47 unwind label %11

47:                                               ; preds = %46
  br i1 %3, label %62, label %48

48:                                               ; preds = %47, %44
  %49 = load ptr, ptr %34, align 8, !tbaa !116
  %50 = getelementptr inbounds ptr, ptr %49, i64 4
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef i32 %51(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %53 unwind label %11

53:                                               ; preds = %48
  %54 = icmp eq i32 %52, 2
  %55 = load ptr, ptr %34, align 8, !tbaa !116
  %56 = select i1 %54, i64 32, i64 5
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %60 unwind label %11

60:                                               ; preds = %53
  %61 = icmp eq ptr %59, null
  br i1 %61, label %62, label %33

62:                                               ; preds = %60, %39, %47, %27
  %63 = icmp eq ptr %28, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %62
  %65 = load ptr, ptr %1, align 8, !tbaa !116
  %66 = getelementptr inbounds ptr, ptr %65, i64 78
  %67 = load ptr, ptr %66, align 8
  invoke void %67(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %28)
          to label %71 unwind label %68

68:                                               ; preds = %64
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  tail call void @__clang_call_terminate(ptr %70) #22
  unreachable

71:                                               ; preds = %62, %64
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6resizeEmRKm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !172 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !243
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = icmp ult i64 %5, %1
  br i1 %8, label %9, label %33

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !198
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !197
  %17 = getelementptr inbounds i64, ptr %16, i64 %1
  %18 = load i64, ptr %4, align 8, !tbaa !243
  %19 = icmp eq i64 %18, %1
  br i1 %19, label %33, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds i64, ptr %16, i64 %18
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi ptr [ %25, %22 ], [ %21, %20 ]
  %24 = load i64, ptr %2, align 8, !tbaa !191
  store i64 %24, ptr %23, align 8, !tbaa !191
  %25 = getelementptr inbounds i64, ptr %23, i64 1
  %26 = load i64, ptr %4, align 8, !tbaa !243
  %27 = add i64 %26, 1
  store i64 %27, ptr %4, align 8, !tbaa !243
  %28 = icmp eq ptr %25, %17
  br i1 %28, label %33, label %22, !llvm.loop !244

29:                                               ; preds = %3
  %30 = load i64, ptr %4, align 8, !tbaa !243
  %31 = add i64 %30, -1
  %32 = tail call i64 @llvm.umin.i64(i64 %1, i64 %31)
  store i64 %32, ptr %4, align 8, !tbaa !243
  br label %33

33:                                               ; preds = %22, %14, %29, %7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1010ElemNumber15getPreviousNodeERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !172 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = invoke noundef ptr @_ZNK11xalanc_1_1010ElemNumber20getCountMatchPatternERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2)
          to label %13 unwind label %11

9:                                                ; preds = %83, %92
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %109

11:                                               ; preds = %7
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %109

13:                                               ; preds = %7, %3
  %14 = phi ptr [ null, %3 ], [ %8, %7 ]
  %15 = phi ptr [ %5, %3 ], [ %8, %7 ]
  %16 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 4
  %17 = load i64, ptr %16, align 8, !tbaa !152
  %18 = icmp eq i64 %17, 2
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = icmp eq ptr %2, null
  br i1 %20, label %98, label %21

21:                                               ; preds = %19
  %22 = icmp eq ptr %15, null
  br label %83

23:                                               ; preds = %13
  %24 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !158
  %26 = icmp eq ptr %25, null
  %27 = icmp eq ptr %15, null
  br label %28

28:                                               ; preds = %80, %23
  %29 = phi ptr [ %2, %23 ], [ %81, %80 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %98, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %29, align 8, !tbaa !116
  %33 = getelementptr inbounds ptr, ptr %32, i64 9
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %36 unwind label %57

36:                                               ; preds = %31
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %59

38:                                               ; preds = %36
  %39 = load ptr, ptr %29, align 8, !tbaa !116
  %40 = getelementptr inbounds ptr, ptr %39, i64 5
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %43 unwind label %57

43:                                               ; preds = %38
  %44 = icmp eq ptr %42, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr %42, align 8, !tbaa !116
  %47 = getelementptr inbounds ptr, ptr %46, i64 4
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef i32 %48(ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %50 unwind label %57

50:                                               ; preds = %45
  %51 = icmp eq i32 %49, 9
  br i1 %51, label %80, label %52

52:                                               ; preds = %50, %43
  br i1 %26, label %71, label %53

53:                                               ; preds = %52
  %54 = invoke noundef i32 @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %25, ptr noundef %42, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %55 unwind label %57

55:                                               ; preds = %53
  %56 = icmp eq i32 %54, 0
  br i1 %56, label %71, label %80

57:                                               ; preds = %75, %53, %45, %38, %31
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %109

59:                                               ; preds = %36, %65
  %60 = phi ptr [ %67, %65 ], [ %35, %36 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !116
  %62 = getelementptr inbounds ptr, ptr %61, i64 8
  %63 = load ptr, ptr %62, align 8
  %64 = invoke noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(8) %60)
          to label %65 unwind label %69

65:                                               ; preds = %59
  %66 = icmp eq ptr %64, null
  %67 = select i1 %66, ptr %60, ptr %64
  %68 = icmp eq ptr %64, null
  br i1 %68, label %71, label %59, !llvm.loop !245

69:                                               ; preds = %59
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %109

71:                                               ; preds = %65, %55, %52
  %72 = phi ptr [ %42, %52 ], [ %42, %55 ], [ %67, %65 ]
  %73 = icmp eq ptr %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  br i1 %27, label %80, label %75

75:                                               ; preds = %74
  %76 = invoke noundef i32 @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %15, ptr noundef nonnull %72, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %77 unwind label %57

77:                                               ; preds = %75
  %78 = icmp eq i32 %76, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %77, %71
  br label %80

80:                                               ; preds = %74, %77, %50, %55, %79
  %81 = phi ptr [ %72, %79 ], [ null, %55 ], [ null, %50 ], [ %72, %77 ], [ %72, %74 ]
  %82 = phi i1 [ true, %79 ], [ false, %55 ], [ false, %50 ], [ false, %77 ], [ false, %74 ]
  br i1 %82, label %28, label %98

83:                                               ; preds = %21, %96
  %84 = phi ptr [ %2, %21 ], [ %88, %96 ]
  %85 = load ptr, ptr %84, align 8, !tbaa !116
  %86 = getelementptr inbounds ptr, ptr %85, i64 9
  %87 = load ptr, ptr %86, align 8
  %88 = invoke noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(8) %84)
          to label %89 unwind label %9

89:                                               ; preds = %83
  %90 = icmp eq ptr %88, null
  %91 = or i1 %90, %22
  br i1 %91, label %98, label %92

92:                                               ; preds = %89
  %93 = invoke noundef i32 @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %15, ptr noundef nonnull %88, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %94 unwind label %9

94:                                               ; preds = %92
  %95 = icmp eq i32 %93, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %94
  %97 = icmp eq ptr %88, null
  br i1 %97, label %98, label %83, !llvm.loop !246

98:                                               ; preds = %89, %94, %96, %80, %28, %19
  %99 = phi ptr [ null, %19 ], [ null, %28 ], [ %81, %80 ], [ %88, %89 ], [ null, %96 ], [ %88, %94 ]
  %100 = icmp eq ptr %14, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %1, align 8, !tbaa !116
  %103 = getelementptr inbounds ptr, ptr %102, i64 78
  %104 = load ptr, ptr %103, align 8
  invoke void %104(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %14)
          to label %108 unwind label %105

105:                                              ; preds = %101
  %106 = landingpad { ptr, i32 }
          catch ptr null
  %107 = extractvalue { ptr, i32 } %106, 0
  tail call void @__clang_call_terminate(ptr %107) #22
  unreachable

108:                                              ; preds = %98, %101
  ret ptr %99

109:                                              ; preds = %9, %11, %57, %69
  %110 = phi ptr [ %14, %57 ], [ %14, %69 ], [ %14, %9 ], [ null, %11 ]
  %111 = phi { ptr, i32 } [ %58, %57 ], [ %70, %69 ], [ %10, %9 ], [ %12, %11 ]
  %112 = icmp eq ptr %110, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %1, align 8, !tbaa !116
  %115 = getelementptr inbounds ptr, ptr %114, i64 78
  %116 = load ptr, ptr %115, align 8
  invoke void %116(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %110)
          to label %120 unwind label %117

117:                                              ; preds = %113
  %118 = landingpad { ptr, i32 }
          catch ptr null
  %119 = extractvalue { ptr, i32 } %118, 0
  tail call void @__clang_call_terminate(ptr %119) #22
  unreachable

120:                                              ; preds = %109, %113
  resume { ptr, i32 } %111
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1010ElemNumber13getTargetNodeERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !172 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = invoke noundef ptr @_ZNK11xalanc_1_1010ElemNumber20getCountMatchPatternERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2)
          to label %21 unwind label %9

9:                                                ; preds = %31, %29, %7
  %10 = phi ptr [ %22, %29 ], [ %22, %31 ], [ null, %7 ]
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = icmp eq ptr %10, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %1, align 8, !tbaa !116
  %15 = getelementptr inbounds ptr, ptr %14, i64 78
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %10)
          to label %20 unwind label %17

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #22
  unreachable

20:                                               ; preds = %9, %13
  resume { ptr, i32 } %11

21:                                               ; preds = %7, %3
  %22 = phi ptr [ null, %3 ], [ %8, %7 ]
  %23 = phi ptr [ %5, %3 ], [ %8, %7 ]
  %24 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !152
  %26 = icmp eq i64 %25, 2
  %27 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !158
  br i1 %26, label %29, label %31

29:                                               ; preds = %21
  %30 = invoke noundef ptr @_ZNK11xalanc_1_1010ElemNumber29findPrecedingOrAncestorOrSelfERNS_26StylesheetExecutionContextEPKNS_5XPathES5_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %28, ptr noundef %23, ptr noundef %2)
          to label %33 unwind label %9

31:                                               ; preds = %21
  %32 = invoke noundef ptr @_ZNK11xalanc_1_1010ElemNumber12findAncestorERNS_26StylesheetExecutionContextEPKNS_5XPathES5_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %28, ptr noundef %23, ptr noundef %2)
          to label %33 unwind label %9

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %30, %29 ], [ %32, %31 ]
  %35 = icmp eq ptr %22, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %1, align 8, !tbaa !116
  %38 = getelementptr inbounds ptr, ptr %37, i64 78
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %22)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  tail call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %33, %36
  ret ptr %34
}

declare void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1010ElemNumber18getNumberFormatterERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !172 {
  %3 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr.10", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %4 = load ptr, ptr %1, align 8, !tbaa !116
  %5 = getelementptr inbounds ptr, ptr %4, i64 130
  %6 = load ptr, ptr %5, align 8
  call void %6(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XalanMemMgrAutoPtr.10") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %7 = load ptr, ptr %1, align 8, !tbaa !116
  %8 = getelementptr inbounds ptr, ptr %7, i64 23
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef nonnull align 8 dereferenceable(36) ptr %9(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %11 unwind label %16

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !167
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  invoke void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %20 unwind label %18

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %122

18:                                               ; preds = %24, %15
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %113

20:                                               ; preds = %15, %11
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %10, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !177
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  invoke void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 69)
          to label %25 unwind label %18

25:                                               ; preds = %24, %20
  %26 = load ptr, ptr %1, align 8, !tbaa !116
  %27 = getelementptr inbounds ptr, ptr %26, i64 23
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef nonnull align 8 dereferenceable(36) ptr %28(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %30 unwind label %35

30:                                               ; preds = %25
  %31 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !168
  %33 = icmp eq ptr %32, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  invoke void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull align 8 dereferenceable(36) %29, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %46 unwind label %37

35:                                               ; preds = %25
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %113

37:                                               ; preds = %64, %73, %59, %53, %34
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = load ptr, ptr %1, align 8, !tbaa !116
  %40 = getelementptr inbounds ptr, ptr %39, i64 24
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef zeroext i1 %41(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %29)
          to label %113 unwind label %43

43:                                               ; preds = %37
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  call void @__clang_call_terminate(ptr %45) #22
  unreachable

46:                                               ; preds = %34, %30
  %47 = load i32, ptr %21, align 8, !tbaa !177
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %29, i64 0, i32 1
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %48, i1 true, i1 %51
  br i1 %52, label %77, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %"struct.std::pair.11", ptr %3, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !247
  %56 = load ptr, ptr %55, align 8, !tbaa !116
  %57 = getelementptr inbounds ptr, ptr %56, i64 8
  %58 = load ptr, ptr %57, align 8
  invoke void %58(ptr noundef nonnull align 8 dereferenceable(64) %55, i1 noundef zeroext true)
          to label %59 unwind label %37

59:                                               ; preds = %53
  %60 = load ptr, ptr %54, align 8, !tbaa !247
  %61 = load ptr, ptr %60, align 8, !tbaa !116
  %62 = getelementptr inbounds ptr, ptr %61, i64 10
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(64) %60, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %64 unwind label %37

64:                                               ; preds = %59
  %65 = load ptr, ptr %54, align 8, !tbaa !247
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %29, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !153
  %68 = icmp eq i64 %67, 0
  %69 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %29, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8
  %71 = select i1 %68, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %70
  %72 = invoke noundef i64 @_ZN11xalanc_1_1024WideStringToUnsignedLongEPKt(ptr noundef %71)
          to label %73 unwind label %37

73:                                               ; preds = %64
  %74 = load ptr, ptr %65, align 8, !tbaa !116
  %75 = getelementptr inbounds ptr, ptr %74, i64 9
  %76 = load ptr, ptr %75, align 8
  invoke void %76(ptr noundef nonnull align 8 dereferenceable(64) %65, i64 noundef %72)
          to label %77 unwind label %37

77:                                               ; preds = %73, %46
  %78 = getelementptr inbounds i8, ptr %3, i64 8
  %79 = load ptr, ptr %78, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %80 = load ptr, ptr %1, align 8, !tbaa !116
  %81 = getelementptr inbounds ptr, ptr %80, i64 24
  %82 = load ptr, ptr %81, align 8
  %83 = invoke noundef zeroext i1 %82(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %29)
          to label %87 unwind label %84

84:                                               ; preds = %77
  %85 = landingpad { ptr, i32 }
          catch ptr null
  %86 = extractvalue { ptr, i32 } %85, 0
  call void @__clang_call_terminate(ptr %86) #22
  unreachable

87:                                               ; preds = %77
  %88 = load ptr, ptr %1, align 8, !tbaa !116
  %89 = getelementptr inbounds ptr, ptr %88, i64 24
  %90 = load ptr, ptr %89, align 8
  %91 = invoke noundef zeroext i1 %90(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %95 unwind label %92

92:                                               ; preds = %87
  %93 = landingpad { ptr, i32 }
          catch ptr null
  %94 = extractvalue { ptr, i32 } %93, 0
  call void @__clang_call_terminate(ptr %94) #22
  unreachable

95:                                               ; preds = %87
  %96 = load ptr, ptr %3, align 8, !tbaa !249
  %97 = icmp ne ptr %96, null
  %98 = load ptr, ptr %78, align 8
  %99 = icmp ne ptr %98, null
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %101, label %112

101:                                              ; preds = %95
  %102 = load ptr, ptr %98, align 8, !tbaa !116
  %103 = load ptr, ptr %102, align 8
  call void %103(ptr noundef nonnull align 8 dereferenceable(64) %98) #21
  %104 = load ptr, ptr %3, align 8, !tbaa !249
  %105 = load ptr, ptr %78, align 8, !tbaa !247
  %106 = load ptr, ptr %104, align 8, !tbaa !116
  %107 = getelementptr inbounds ptr, ptr %106, i64 3
  %108 = load ptr, ptr %107, align 8
  invoke void %108(ptr noundef nonnull align 8 dereferenceable(8) %104, ptr noundef %105)
          to label %112 unwind label %109

109:                                              ; preds = %101
  %110 = landingpad { ptr, i32 }
          catch ptr null
  %111 = extractvalue { ptr, i32 } %110, 0
  call void @__clang_call_terminate(ptr %111) #22
  unreachable

112:                                              ; preds = %95, %101
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  ret ptr %79

113:                                              ; preds = %18, %37, %35
  %114 = phi { ptr, i32 } [ %19, %18 ], [ %36, %35 ], [ %38, %37 ]
  %115 = load ptr, ptr %1, align 8, !tbaa !116
  %116 = getelementptr inbounds ptr, ptr %115, i64 24
  %117 = load ptr, ptr %116, align 8
  %118 = invoke noundef zeroext i1 %117(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %122 unwind label %119

119:                                              ; preds = %113
  %120 = landingpad { ptr, i32 }
          catch ptr null
  %121 = extractvalue { ptr, i32 } %120, 0
  call void @__clang_call_terminate(ptr %121) #22
  unreachable

122:                                              ; preds = %113, %16
  %123 = phi { ptr, i32 } [ %17, %16 ], [ %114, %113 ]
  %124 = load ptr, ptr %3, align 8, !tbaa !249
  %125 = icmp ne ptr %124, null
  %126 = getelementptr inbounds %"struct.std::pair.11", ptr %3, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8
  %128 = icmp ne ptr %127, null
  %129 = select i1 %125, i1 %128, i1 false
  br i1 %129, label %130, label %141

130:                                              ; preds = %122
  %131 = load ptr, ptr %127, align 8, !tbaa !116
  %132 = load ptr, ptr %131, align 8
  call void %132(ptr noundef nonnull align 8 dereferenceable(64) %127) #21
  %133 = load ptr, ptr %3, align 8, !tbaa !249
  %134 = load ptr, ptr %126, align 8, !tbaa !247
  %135 = load ptr, ptr %133, align 8, !tbaa !116
  %136 = getelementptr inbounds ptr, ptr %135, i64 3
  %137 = load ptr, ptr %136, align 8
  invoke void %137(ptr noundef nonnull align 8 dereferenceable(8) %133, ptr noundef %134)
          to label %141 unwind label %138

138:                                              ; preds = %130
  %139 = landingpad { ptr, i32 }
          catch ptr null
  %140 = extractvalue { ptr, i32 } %139, 0
  call void @__clang_call_terminate(ptr %140) #22
  unreachable

141:                                              ; preds = %122, %130
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  resume { ptr, i32 } %123
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #7 comdat align 2 !prof !250 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !206
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !208

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !209
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 0, i32 noundef -1)
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %6, i32 noundef %10)
  br label %13

12:                                               ; preds = %4
  tail call void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %13

13:                                               ; preds = %12, %8
  ret void
}

declare void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1010ElemNumber27NumberFormatStringTokenizer11countTokensEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #8 align 2 !prof !172 {
  %2 = load i32, ptr %0, align 8, !tbaa !251
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber::NumberFormatStringTokenizer", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !253
  %5 = icmp ult i32 %2, %4
  br i1 %5, label %6, label %57, !prof !214

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber::NumberFormatStringTokenizer", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !254
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !211
  %11 = zext i32 %4 to i64
  br label %12

12:                                               ; preds = %6, %53
  %13 = phi i32 [ %2, %6 ], [ %54, %53 ]
  %14 = phi i32 [ 0, %6 ], [ %55, %53 ]
  %15 = zext i32 %13 to i64
  %16 = getelementptr inbounds i16, ptr %10, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !144
  %18 = zext i16 %17 to i64
  %19 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !189
  switch i8 %20, label %25 [
    i8 4, label %21
    i8 2, label %21
    i8 1, label %21
  ], !prof !212

21:                                               ; preds = %12, %12, %12
  %22 = icmp ult i32 %13, %4
  br i1 %22, label %23, label %53, !prof !213

23:                                               ; preds = %21
  %24 = zext i32 %13 to i64
  br label %29

25:                                               ; preds = %12
  %26 = icmp ult i32 %13, %4
  br i1 %26, label %27, label %53, !prof !214

27:                                               ; preds = %25
  %28 = zext i32 %13 to i64
  br label %39

29:                                               ; preds = %23, %36
  %30 = phi i64 [ %24, %23 ], [ %37, %36 ]
  %31 = getelementptr inbounds i16, ptr %10, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !144
  %33 = zext i16 %32 to i64
  %34 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !189
  switch i8 %35, label %51 [
    i8 4, label %36
    i8 2, label %36
    i8 1, label %36
  ], !prof !215

36:                                               ; preds = %29, %29, %29
  %37 = add nuw nsw i64 %30, 1
  %38 = icmp eq i64 %37, %11
  br i1 %38, label %53, label %29, !prof !216, !llvm.loop !217

39:                                               ; preds = %27, %46
  %40 = phi i64 [ %28, %27 ], [ %47, %46 ]
  %41 = getelementptr inbounds i16, ptr %10, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !144
  %43 = zext i16 %42 to i64
  %44 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !189
  switch i8 %45, label %46 [
    i8 4, label %49
    i8 2, label %49
    i8 1, label %49
  ], !prof !218

46:                                               ; preds = %39
  %47 = add nuw nsw i64 %40, 1
  %48 = icmp eq i64 %47, %11
  br i1 %48, label %53, label %39, !prof !219, !llvm.loop !220

49:                                               ; preds = %39, %39, %39
  %50 = trunc i64 %40 to i32
  br label %53

51:                                               ; preds = %29
  %52 = trunc i64 %30 to i32
  br label %53

53:                                               ; preds = %51, %36, %49, %46, %21, %25
  %54 = phi i32 [ %13, %25 ], [ %13, %21 ], [ %50, %49 ], [ %4, %46 ], [ %52, %51 ], [ %4, %36 ]
  %55 = add i32 %14, 1
  %56 = icmp ult i32 %54, %4
  br i1 %56, label %12, label %57, !prof !221, !llvm.loop !222

57:                                               ; preds = %53, %1
  %58 = phi i32 [ 0, %1 ], [ %55, %53 ]
  ret i32 %58
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !255 {
  %3 = alloca %"struct.xalanc_1_10::ConstructValueWithMemoryManager.15", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #21
  %4 = load ptr, ptr %0, align 8, !tbaa !202
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEmRKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %5 unwind label %20, !prof !256

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !236
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %19, label %9, !prof !256

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !211
  %12 = load ptr, ptr %3, align 8, !tbaa !238
  %13 = load ptr, ptr %12, align 8, !tbaa !116
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %11)
          to label %19 unwind label %16

16:                                               ; preds = %9
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  call void @__clang_call_terminate(ptr %18) #22
  unreachable

19:                                               ; preds = %5, %9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #21
  ret void

20:                                               ; preds = %2
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !236
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !211
  %28 = load ptr, ptr %3, align 8, !tbaa !238
  %29 = load ptr, ptr %28, align 8, !tbaa !116
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %27)
          to label %35 unwind label %32

32:                                               ; preds = %25
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  call void @__clang_call_terminate(ptr %34) #22
  unreachable

35:                                               ; preds = %20, %25
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #21
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010ElemNumber27NumberFormatStringTokenizer9nextTokenERNS_14XalanDOMStringE(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #7 align 2 !prof !172 {
  %3 = load i32, ptr %0, align 8, !tbaa !251
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber::NumberFormatStringTokenizer", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !253
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %16, label %7, !prof !227

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !153
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = load i64, ptr %8, align 8, !tbaa !153
  %13 = sub i64 %12, %9
  store i64 %13, ptr %8, align 8, !tbaa !153
  br label %14

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  store i32 0, ptr %15, align 8, !tbaa !177
  br label %16

16:                                               ; preds = %14, %2
  %17 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber::NumberFormatStringTokenizer", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !254
  %19 = zext i32 %3 to i64
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %18, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !211
  %22 = getelementptr inbounds i16, ptr %21, i64 %19
  %23 = load i16, ptr %22, align 2, !tbaa !144
  %24 = zext i16 %23 to i64
  %25 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !189
  switch i8 %26, label %33 [
    i8 4, label %27
    i8 2, label %27
    i8 1, label %27
  ], !prof !212

27:                                               ; preds = %16, %16, %16
  %28 = load i32, ptr %0, align 8, !tbaa !251
  %29 = icmp ult i32 %28, %5
  br i1 %29, label %30, label %61, !prof !213

30:                                               ; preds = %27
  %31 = zext i32 %28 to i64
  %32 = zext i32 %5 to i64
  br label %39

33:                                               ; preds = %16
  %34 = load i32, ptr %0, align 8, !tbaa !251
  %35 = icmp ult i32 %34, %5
  br i1 %35, label %36, label %61, !prof !214

36:                                               ; preds = %33
  %37 = zext i32 %34 to i64
  %38 = zext i32 %5 to i64
  br label %50

39:                                               ; preds = %30, %46
  %40 = phi i64 [ %31, %30 ], [ %47, %46 ]
  %41 = getelementptr inbounds i16, ptr %21, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !144
  %43 = zext i16 %42 to i64
  %44 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !189
  switch i8 %45, label %61 [
    i8 4, label %46
    i8 2, label %46
    i8 1, label %46
  ], !prof !215

46:                                               ; preds = %39, %39, %39
  %47 = add nuw nsw i64 %40, 1
  %48 = trunc i64 %47 to i32
  store i32 %48, ptr %0, align 8, !tbaa !251
  %49 = icmp eq i64 %47, %32
  br i1 %49, label %61, label %39, !prof !216, !llvm.loop !228

50:                                               ; preds = %36, %57
  %51 = phi i64 [ %37, %36 ], [ %58, %57 ]
  %52 = getelementptr inbounds i16, ptr %21, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !144
  %54 = zext i16 %53 to i64
  %55 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !189
  switch i8 %56, label %57 [
    i8 4, label %61
    i8 2, label %61
    i8 1, label %61
  ], !prof !218

57:                                               ; preds = %50
  %58 = add nuw nsw i64 %51, 1
  %59 = trunc i64 %58 to i32
  store i32 %59, ptr %0, align 8, !tbaa !251
  %60 = icmp eq i64 %58, %38
  br i1 %60, label %61, label %50, !prof !219, !llvm.loop !229

61:                                               ; preds = %46, %39, %57, %50, %50, %50, %27, %33
  %62 = load i32, ptr %0, align 8, !tbaa !251
  tail call void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %3, i32 noundef %62)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1010ElemNumber18getFormattedNumberERNS_26StylesheetExecutionContextEtjmRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i16 noundef zeroext %2, i32 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !201 {
  switch i16 %2, label %100 [
    i16 65, label %7
    i16 97, label %8
    i16 73, label %10
    i16 105, label %11
    i16 12354, label %13
    i16 12356, label %13
    i16 12450, label %13
    i16 12452, label %13
    i16 19968, label %13
    i16 22777, label %13
    i16 3665, label %13
    i16 1488, label %13
    i16 4304, label %13
    i16 1072, label %13
    i16 945, label %38
  ], !prof !257

7:                                                ; preds = %6
  tail call void @_ZN11xalanc_1_1010ElemNumber14int2alphaCountEmPKtjRNS_14XalanDOMStringE(i64 noundef %4, ptr noundef nonnull @_ZN11xalanc_1_1010ElemNumber17s_alphaCountTableE, i32 noundef 26, ptr noundef nonnull align 8 dereferenceable(36) %5)
  br label %198

8:                                                ; preds = %6
  tail call void @_ZN11xalanc_1_1010ElemNumber14int2alphaCountEmPKtjRNS_14XalanDOMStringE(i64 noundef %4, ptr noundef nonnull @_ZN11xalanc_1_1010ElemNumber17s_alphaCountTableE, i32 noundef 26, ptr noundef nonnull align 8 dereferenceable(36) %5)
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1016toLowerCaseASCIIERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %5)
  br label %198

10:                                               ; preds = %6
  tail call void @_ZN11xalanc_1_1010ElemNumber7toRomanEmbRNS_14XalanDOMStringE(i64 noundef %4, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(36) %5)
  br label %198

11:                                               ; preds = %6
  tail call void @_ZN11xalanc_1_1010ElemNumber7toRomanEmbRNS_14XalanDOMStringE(i64 noundef %4, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(36) %5)
  %12 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1016toLowerCaseASCIIERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %5)
  br label %198

13:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  %14 = load ptr, ptr %1, align 8, !tbaa !116
  %15 = getelementptr inbounds ptr, ptr %14, i64 23
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef nonnull align 8 dereferenceable(36) ptr %16(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %18 = zext i16 %2 to i64
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef %18, ptr noundef nonnull align 8 dereferenceable(36) %17)
          to label %20 unwind label %29

20:                                               ; preds = %13
  invoke void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 70, ptr noundef nonnull align 8 dereferenceable(36) %19)
          to label %21 unwind label %29

21:                                               ; preds = %20
  %22 = load ptr, ptr %1, align 8, !tbaa !116
  %23 = getelementptr inbounds ptr, ptr %22, i64 24
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %17)
          to label %198 unwind label %26

26:                                               ; preds = %21
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #22
  unreachable

29:                                               ; preds = %20, %13
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = load ptr, ptr %1, align 8, !tbaa !116
  %32 = getelementptr inbounds ptr, ptr %31, i64 24
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %17)
          to label %199 unwind label %35

35:                                               ; preds = %29
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #22
  unreachable

38:                                               ; preds = %6
  %39 = load ptr, ptr %1, align 8, !tbaa !116
  %40 = getelementptr inbounds ptr, ptr %39, i64 23
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef nonnull align 8 dereferenceable(36) ptr %41(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %43 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !166
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %42, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !153
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i64, ptr %47, align 8, !tbaa !153
  %52 = sub i64 %51, %48
  store i64 %52, ptr %47, align 8, !tbaa !153
  br label %53

53:                                               ; preds = %50, %46
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %42, i64 0, i32 1
  store i32 0, ptr %54, align 8, !tbaa !177
  br label %56

55:                                               ; preds = %38
  invoke void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %44, ptr noundef nonnull align 8 dereferenceable(36) %42, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %56 unwind label %70

56:                                               ; preds = %55, %53
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %42, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !153
  %59 = icmp eq i64 %58, 0
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %42, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8
  %62 = select i1 %59, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %61
  %63 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %62)
          to label %64 unwind label %70

64:                                               ; preds = %56
  %65 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1010ElemNumber19s_traditionalStringE)
          to label %66 unwind label %70

66:                                               ; preds = %64
  %67 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %62, i32 noundef %63, ptr noundef nonnull @_ZN11xalanc_1_1010ElemNumber19s_traditionalStringE, i32 noundef %65)
          to label %68 unwind label %70

68:                                               ; preds = %66
  br i1 %67, label %69, label %79

69:                                               ; preds = %68
  invoke void @_ZNK11xalanc_1_1010ElemNumber21traditionalAlphaCountEmRKNS_28XalanNumberingResourceBundleERNS_14XalanDOMStringE(ptr nonnull align 8 poison, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(400) @_ZN11xalanc_1_10L29s_staticElalphaResourceBundleE, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %92 unwind label %70

70:                                               ; preds = %87, %85, %79, %66, %64, %56, %55, %91, %90, %69
  %71 = landingpad { ptr, i32 }
          cleanup
  %72 = load ptr, ptr %1, align 8, !tbaa !116
  %73 = getelementptr inbounds ptr, ptr %72, i64 24
  %74 = load ptr, ptr %73, align 8
  %75 = invoke noundef zeroext i1 %74(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %42)
          to label %199 unwind label %76

76:                                               ; preds = %70
  %77 = landingpad { ptr, i32 }
          catch ptr null
  %78 = extractvalue { ptr, i32 } %77, 0
  tail call void @__clang_call_terminate(ptr %78) #22
  unreachable

79:                                               ; preds = %68
  %80 = load i64, ptr %57, align 8, !tbaa !153
  %81 = icmp eq i64 %80, 0
  %82 = load ptr, ptr %60, align 8
  %83 = select i1 %81, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %82
  %84 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %83)
          to label %85 unwind label %70

85:                                               ; preds = %79
  %86 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1010ElemNumber18s_alphabeticStringE)
          to label %87 unwind label %70

87:                                               ; preds = %85
  %88 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %83, i32 noundef %84, ptr noundef nonnull @_ZN11xalanc_1_1010ElemNumber18s_alphabeticStringE, i32 noundef %86)
          to label %89 unwind label %70

89:                                               ; preds = %87
  br i1 %88, label %90, label %91

90:                                               ; preds = %89
  invoke void @_ZN11xalanc_1_1010ElemNumber14int2alphaCountEmPKtjRNS_14XalanDOMStringE(i64 noundef %4, ptr noundef nonnull @_ZN11xalanc_1_1010ElemNumber19s_elalphaCountTableE, i32 noundef 25, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %92 unwind label %70

91:                                               ; preds = %89
  invoke void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 183)
          to label %92 unwind label %70

92:                                               ; preds = %91, %90, %69
  %93 = load ptr, ptr %1, align 8, !tbaa !116
  %94 = getelementptr inbounds ptr, ptr %93, i64 24
  %95 = load ptr, ptr %94, align 8
  %96 = invoke noundef zeroext i1 %95(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %42)
          to label %198 unwind label %97

97:                                               ; preds = %92
  %98 = landingpad { ptr, i32 }
          catch ptr null
  %99 = extractvalue { ptr, i32 } %98, 0
  tail call void @__clang_call_terminate(ptr %99) #22
  unreachable

100:                                              ; preds = %6
  %101 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %1, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !193
  %103 = tail call noundef ptr @_ZNK11xalanc_1_1010ElemNumber18getNumberFormatterERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %104 = load ptr, ptr %103, align 8, !tbaa !116
  %105 = getelementptr inbounds ptr, ptr %104, i64 6
  %106 = load ptr, ptr %105, align 8
  %107 = invoke noundef nonnull align 8 dereferenceable(36) ptr %106(ptr noundef nonnull align 8 dereferenceable(64) %103, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %108 unwind label %147

108:                                              ; preds = %100
  %109 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  %110 = load i32, ptr %109, align 8, !tbaa !177
  %111 = icmp ult i32 %110, %3
  br i1 %111, label %112, label %175

112:                                              ; preds = %108
  %113 = sub i32 %3, %110
  %114 = load ptr, ptr %1, align 8, !tbaa !116
  %115 = getelementptr inbounds ptr, ptr %114, i64 23
  %116 = load ptr, ptr %115, align 8
  %117 = invoke noundef nonnull align 8 dereferenceable(36) ptr %116(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %118 unwind label %149

118:                                              ; preds = %112
  %119 = load ptr, ptr %103, align 8, !tbaa !116
  %120 = getelementptr inbounds ptr, ptr %119, i64 3
  %121 = load ptr, ptr %120, align 8
  %122 = invoke noundef nonnull align 8 dereferenceable(36) ptr %121(ptr noundef nonnull align 8 dereferenceable(64) %103, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(36) %117)
          to label %123 unwind label %151

123:                                              ; preds = %118
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %117, i64 0, i32 1
  %125 = load i32, ptr %124, align 8, !tbaa !177
  %126 = mul i32 %125, %113
  %127 = add i32 %110, 2
  %128 = add i32 %127, %126
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %131 = load i64, ptr %130, align 8, !tbaa !236
  %132 = icmp ult i64 %131, %129
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %129)
          to label %134 unwind label %151

134:                                              ; preds = %133, %123
  %135 = icmp eq i32 %110, %3
  br i1 %135, label %139, label %136

136:                                              ; preds = %134
  %137 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %117, i64 0, i32 1
  %138 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %117, i64 0, i32 3
  br label %153

139:                                              ; preds = %161, %134
  %140 = load ptr, ptr %1, align 8, !tbaa !116
  %141 = getelementptr inbounds ptr, ptr %140, i64 24
  %142 = load ptr, ptr %141, align 8
  %143 = invoke noundef zeroext i1 %142(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %117)
          to label %175 unwind label %144

144:                                              ; preds = %139
  %145 = landingpad { ptr, i32 }
          catch ptr null
  %146 = extractvalue { ptr, i32 } %145, 0
  tail call void @__clang_call_terminate(ptr %146) #22
  unreachable

147:                                              ; preds = %100
  %148 = landingpad { ptr, i32 }
          cleanup
  br label %186

149:                                              ; preds = %112
  %150 = landingpad { ptr, i32 }
          cleanup
  br label %186

151:                                              ; preds = %133, %118
  %152 = landingpad { ptr, i32 }
          cleanup
  br label %166

153:                                              ; preds = %136, %161
  %154 = phi i32 [ 0, %136 ], [ %162, %161 ]
  %155 = load i64, ptr %137, align 8, !tbaa !153
  %156 = icmp eq i64 %155, 0
  %157 = load ptr, ptr %138, align 8
  %158 = select i1 %156, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %157
  %159 = load i32, ptr %124, align 8, !tbaa !177
  %160 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6insertEjPKtj(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 0, ptr noundef %158, i32 noundef %159)
          to label %161 unwind label %164

161:                                              ; preds = %153
  %162 = add nuw i32 %154, 1
  %163 = icmp eq i32 %162, %113
  br i1 %163, label %139, label %153, !llvm.loop !258

164:                                              ; preds = %153
  %165 = landingpad { ptr, i32 }
          cleanup
  br label %166

166:                                              ; preds = %151, %164
  %167 = phi { ptr, i32 } [ %165, %164 ], [ %152, %151 ]
  %168 = load ptr, ptr %1, align 8, !tbaa !116
  %169 = getelementptr inbounds ptr, ptr %168, i64 24
  %170 = load ptr, ptr %169, align 8
  %171 = invoke noundef zeroext i1 %170(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %117)
          to label %186 unwind label %172

172:                                              ; preds = %166
  %173 = landingpad { ptr, i32 }
          catch ptr null
  %174 = extractvalue { ptr, i32 } %173, 0
  tail call void @__clang_call_terminate(ptr %174) #22
  unreachable

175:                                              ; preds = %139, %108
  %176 = icmp eq ptr %102, null
  br i1 %176, label %198, label %177

177:                                              ; preds = %175
  %178 = load ptr, ptr %103, align 8, !tbaa !116
  %179 = load ptr, ptr %178, align 8
  tail call void %179(ptr noundef nonnull align 8 dereferenceable(64) %103) #21
  %180 = load ptr, ptr %102, align 8, !tbaa !116
  %181 = getelementptr inbounds ptr, ptr %180, i64 3
  %182 = load ptr, ptr %181, align 8
  invoke void %182(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef nonnull %103)
          to label %198 unwind label %183

183:                                              ; preds = %177
  %184 = landingpad { ptr, i32 }
          catch ptr null
  %185 = extractvalue { ptr, i32 } %184, 0
  tail call void @__clang_call_terminate(ptr %185) #22
  unreachable

186:                                              ; preds = %149, %166, %147
  %187 = phi { ptr, i32 } [ %148, %147 ], [ %150, %149 ], [ %167, %166 ]
  %188 = icmp eq ptr %102, null
  br i1 %188, label %199, label %189

189:                                              ; preds = %186
  %190 = load ptr, ptr %103, align 8, !tbaa !116
  %191 = load ptr, ptr %190, align 8
  tail call void %191(ptr noundef nonnull align 8 dereferenceable(64) %103) #21
  %192 = load ptr, ptr %102, align 8, !tbaa !116
  %193 = getelementptr inbounds ptr, ptr %192, i64 3
  %194 = load ptr, ptr %193, align 8
  invoke void %194(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef nonnull %103)
          to label %199 unwind label %195

195:                                              ; preds = %189
  %196 = landingpad { ptr, i32 }
          catch ptr null
  %197 = extractvalue { ptr, i32 } %196, 0
  tail call void @__clang_call_terminate(ptr %197) #22
  unreachable

198:                                              ; preds = %177, %175, %92, %21, %11, %10, %8, %7
  ret void

199:                                              ; preds = %70, %189, %186, %29
  %200 = phi { ptr, i32 } [ %30, %29 ], [ %187, %186 ], [ %187, %189 ], [ %71, %70 ]
  resume { ptr, i32 } %200
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !259 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !233
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %36, label %5, !prof !234

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !225
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !226
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %30, label %12, !prof !235

12:                                               ; preds = %5, %27
  %13 = phi ptr [ %28, %27 ], [ %7, %5 ]
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !236
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %27, label %17, !prof !237

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %13, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !211
  %20 = load ptr, ptr %13, align 8, !tbaa !238
  %21 = load ptr, ptr %20, align 8, !tbaa !116
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %27 unwind label %24, !prof !239

24:                                               ; preds = %17
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #22
  unreachable

27:                                               ; preds = %12, %17
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %13, i64 1
  %29 = icmp eq ptr %28, %10
  br i1 %29, label %30, label %12, !prof !240, !llvm.loop !241

30:                                               ; preds = %27, %5
  %31 = load ptr, ptr %6, align 8, !tbaa !225
  %32 = load ptr, ptr %0, align 8, !tbaa !202
  %33 = load ptr, ptr %32, align 8, !tbaa !116
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %31)
          to label %36 unwind label %37, !prof !242

36:                                               ; preds = %30, %1
  ret void

37:                                               ; preds = %30
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #22
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1010ElemNumber22evaluateLetterValueAVTERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #1 align 2 !prof !172 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !166
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %2, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !153
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = load i64, ptr %8, align 8, !tbaa !153
  %13 = sub i64 %12, %9
  store i64 %13, ptr %8, align 8, !tbaa !153
  br label %14

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  store i32 0, ptr %15, align 8, !tbaa !177
  br label %17

16:                                               ; preds = %3
  tail call void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %17

17:                                               ; preds = %16, %14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1010ElemNumber21traditionalAlphaCountEmRKNS_28XalanNumberingResourceBundleERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, i64 noundef %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(400) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !172 {
  %5 = alloca %"struct.xalanc_1_10::ConstructValueWithNoMemoryManager", align 2
  %6 = alloca %"struct.xalanc_1_10::ConstructValueWithNoMemoryManager", align 2
  %7 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %8 = alloca [100 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  %9 = load ptr, ptr %3, align 8, !tbaa !238
  store ptr %9, ptr %7, align 8, !tbaa !238
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 2
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %8) #21
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberingResourceBundle", ptr %2, i64 0, i32 9, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !243
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberingResourceBundle", ptr %2, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !260
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %162

18:                                               ; preds = %4
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberingResourceBundle", ptr %2, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !266
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberingResourceBundle", ptr %2, i64 0, i32 10, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !243
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberingResourceBundle", ptr %2, i64 0, i32 11, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !153
  %25 = icmp eq i64 %22, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberingResourceBundle", ptr %2, i64 0, i32 10, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !197
  br label %29

29:                                               ; preds = %26, %34
  %30 = phi i64 [ 0, %26 ], [ %35, %34 ]
  %31 = getelementptr inbounds i64, ptr %28, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !191
  %33 = icmp ugt i64 %32, %1
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = add nuw i64 %30, 1
  %36 = icmp eq i64 %35, %22
  br i1 %36, label %37, label %29, !llvm.loop !267

37:                                               ; preds = %29, %34, %18
  %38 = phi i64 [ 0, %18 ], [ %30, %29 ], [ %22, %34 ]
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberingResourceBundle", ptr %2, i64 0, i32 10, i32 3
  %40 = icmp eq i64 %14, 0
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberingResourceBundle", ptr %2, i64 0, i32 9, i32 3
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberingResourceBundle", ptr %2, i64 0, i32 9, i32 3
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberingResourceBundle", ptr %2, i64 0, i32 14, i32 3
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberingResourceBundle", ptr %2, i64 0, i32 13, i32 3
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberingResourceBundle", ptr %2, i64 0, i32 12, i32 3
  %46 = icmp eq i32 %20, 1
  %47 = icmp eq i64 %24, 0
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberingResourceBundle", ptr %2, i64 0, i32 11, i32 3
  br label %49

49:                                               ; preds = %153, %37
  %50 = phi i64 [ %38, %37 ], [ %157, %153 ]
  %51 = phi i32 [ 0, %37 ], [ %154, %153 ]
  %52 = phi i8 [ 0, %37 ], [ %155, %153 ]
  %53 = phi i64 [ %1, %37 ], [ %156, %153 ]
  %54 = icmp ult i64 %50, %22
  br i1 %54, label %55, label %162

55:                                               ; preds = %49
  %56 = load ptr, ptr %39, align 8, !tbaa !197
  %57 = getelementptr inbounds i64, ptr %56, i64 %50
  %58 = load i64, ptr %57, align 8, !tbaa !191
  %59 = icmp ult i64 %53, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  br i1 %47, label %153, label %61

61:                                               ; preds = %60
  %62 = add i32 %51, -1
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [100 x i16], ptr %8, i64 0, i64 %63
  %65 = load i16, ptr %64, align 2, !tbaa !144
  %66 = load ptr, ptr %48, align 8, !tbaa !211
  %67 = load i16, ptr %66, align 2, !tbaa !144
  %68 = icmp eq i16 %65, %67
  br i1 %68, label %153, label %69

69:                                               ; preds = %61
  %70 = add i32 %51, 1
  br label %146

71:                                               ; preds = %55
  %72 = udiv i64 %53, %58
  %73 = urem i64 %53, %58
  br i1 %40, label %153, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %41, align 8, !tbaa !197
  br label %76

76:                                               ; preds = %74, %81
  %77 = phi i64 [ 0, %74 ], [ %82, %81 ]
  %78 = getelementptr inbounds i64, ptr %75, i64 %77
  %79 = load i64, ptr %78, align 8, !tbaa !191
  %80 = icmp ugt i64 %79, %72
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = add nuw i64 %77, 1
  %83 = icmp eq i64 %82, %14
  br i1 %83, label %153, label %76, !llvm.loop !268

84:                                               ; preds = %76
  %85 = load ptr, ptr %43, align 8, !tbaa !197
  %86 = getelementptr inbounds i64, ptr %85, i64 %77
  %87 = load i64, ptr %86, align 8, !tbaa !191
  %88 = load ptr, ptr %44, align 8, !tbaa !269
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %88, i64 %87, i32 1
  %90 = load i64, ptr %89, align 8, !tbaa !153
  %91 = add i64 %90, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #21
  store i16 0, ptr %6, align 2, !tbaa !270
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %91, ptr noundef nonnull align 2 dereferenceable(2) %6)
          to label %92 unwind label %106

92:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #21
  %93 = load i64, ptr %10, align 8, !tbaa !153
  %94 = icmp eq i64 %90, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %88, i64 %87, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !211
  %98 = load ptr, ptr %12, align 8, !tbaa !211
  br label %99

99:                                               ; preds = %95, %99
  %100 = phi i64 [ 0, %95 ], [ %103, %99 ]
  %101 = getelementptr inbounds i16, ptr %97, i64 %100
  %102 = load i16, ptr %101, align 2, !tbaa !144
  %103 = add nuw i64 %100, 1
  %104 = getelementptr inbounds i16, ptr %98, i64 %103
  store i16 %102, ptr %104, align 2, !tbaa !144
  %105 = icmp eq i64 %103, %90
  br i1 %105, label %108, label %99, !llvm.loop !272

106:                                              ; preds = %84
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %275

108:                                              ; preds = %99, %92
  %109 = phi i64 [ 0, %92 ], [ %90, %99 ]
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %88, i64 %87, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !211
  %112 = getelementptr i16, ptr %111, i64 %109
  %113 = getelementptr i16, ptr %112, i64 -1
  %114 = load i16, ptr %113, align 2, !tbaa !144
  %115 = load ptr, ptr %12, align 8, !tbaa !211
  store i16 %114, ptr %115, align 2, !tbaa !144
  %116 = load ptr, ptr %42, align 8, !tbaa !197
  %117 = getelementptr inbounds i64, ptr %116, i64 %77
  %118 = load i64, ptr %117, align 8, !tbaa !191
  %119 = udiv i64 %72, %118
  %120 = load ptr, ptr %45, align 8, !tbaa !211
  %121 = getelementptr inbounds i16, ptr %120, i64 %50
  %122 = load i16, ptr %121, align 2, !tbaa !144
  %123 = icmp ult i64 %119, %93
  br i1 %123, label %124, label %153

124:                                              ; preds = %108
  br i1 %46, label %125, label %132

125:                                              ; preds = %124
  %126 = add i32 %51, 1
  %127 = zext i32 %51 to i64
  %128 = getelementptr inbounds [100 x i16], ptr %8, i64 0, i64 %127
  store i16 %122, ptr %128, align 2, !tbaa !144
  %129 = getelementptr inbounds i16, ptr %115, i64 %119
  %130 = load i16, ptr %129, align 2, !tbaa !144
  %131 = add i32 %51, 2
  br label %146

132:                                              ; preds = %124
  %133 = add i64 %22, -1
  %134 = icmp eq i64 %119, 1
  %135 = icmp eq i64 %50, %133
  %136 = and i1 %135, %134
  br i1 %136, label %143, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds i16, ptr %115, i64 %119
  %139 = load i16, ptr %138, align 2, !tbaa !144
  %140 = add i32 %51, 1
  %141 = zext i32 %51 to i64
  %142 = getelementptr inbounds [100 x i16], ptr %8, i64 0, i64 %141
  store i16 %139, ptr %142, align 2, !tbaa !144
  br label %143

143:                                              ; preds = %132, %137
  %144 = phi i32 [ %140, %137 ], [ %51, %132 ]
  %145 = add i32 %144, 1
  br label %146

146:                                              ; preds = %69, %125, %143
  %147 = phi i32 [ %144, %143 ], [ %126, %125 ], [ %51, %69 ]
  %148 = phi i16 [ %122, %143 ], [ %130, %125 ], [ %67, %69 ]
  %149 = phi i32 [ %145, %143 ], [ %131, %125 ], [ %70, %69 ]
  %150 = phi i64 [ %73, %143 ], [ %73, %125 ], [ %53, %69 ]
  %151 = zext i32 %147 to i64
  %152 = getelementptr inbounds [100 x i16], ptr %8, i64 0, i64 %151
  store i16 %148, ptr %152, align 2, !tbaa !144
  br label %153

153:                                              ; preds = %81, %146, %71, %108, %61, %60
  %154 = phi i32 [ %51, %60 ], [ %51, %61 ], [ %51, %108 ], [ %51, %71 ], [ %149, %146 ], [ %51, %81 ]
  %155 = phi i8 [ %52, %60 ], [ %52, %61 ], [ 1, %108 ], [ %52, %71 ], [ %52, %146 ], [ %52, %81 ]
  %156 = phi i64 [ %53, %60 ], [ %53, %61 ], [ %73, %108 ], [ %73, %71 ], [ %150, %146 ], [ %73, %81 ]
  %157 = add i64 %50, 1
  %158 = icmp ult i64 %157, %22
  %159 = and i8 %155, 1
  %160 = icmp eq i8 %159, 0
  %161 = select i1 %158, i1 %160, i1 false
  br i1 %161, label %49, label %162, !llvm.loop !273

162:                                              ; preds = %153, %49, %4
  %163 = phi i32 [ 0, %4 ], [ %51, %49 ], [ %154, %153 ]
  %164 = phi i8 [ 0, %4 ], [ %52, %49 ], [ %155, %153 ]
  %165 = phi i64 [ %1, %4 ], [ %53, %49 ], [ %156, %153 ]
  %166 = icmp eq i64 %14, 0
  br i1 %166, label %244, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberingResourceBundle", ptr %2, i64 0, i32 9, i32 3
  %169 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberingResourceBundle", ptr %2, i64 0, i32 14, i32 3
  %170 = getelementptr inbounds %"class.xalanc_1_10::XalanNumberingResourceBundle", ptr %2, i64 0, i32 13, i32 3
  br label %171

171:                                              ; preds = %167, %238
  %172 = phi i64 [ %165, %167 ], [ %242, %238 ]
  %173 = phi i8 [ %164, %167 ], [ %241, %238 ]
  %174 = phi i64 [ 0, %167 ], [ %240, %238 ]
  %175 = phi i32 [ %163, %167 ], [ %239, %238 ]
  %176 = load ptr, ptr %168, align 8, !tbaa !197
  %177 = getelementptr inbounds i64, ptr %176, i64 %174
  %178 = load i64, ptr %177, align 8, !tbaa !191
  %179 = icmp ugt i64 %178, %172
  br i1 %179, label %180, label %184

180:                                              ; preds = %171
  %181 = add i64 %174, 1
  br label %238

182:                                              ; preds = %258, %257, %255, %254, %250, %249
  %183 = landingpad { ptr, i32 }
          cleanup
  br label %275

184:                                              ; preds = %171
  %185 = load ptr, ptr %169, align 8, !tbaa !197
  %186 = getelementptr inbounds i64, ptr %185, i64 %174
  %187 = load i64, ptr %186, align 8, !tbaa !191
  %188 = load ptr, ptr %170, align 8, !tbaa !269
  %189 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %188, i64 %187, i32 1
  %190 = load i64, ptr %189, align 8, !tbaa !153
  %191 = add i64 %190, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #21
  store i16 0, ptr %5, align 2, !tbaa !270
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %191, ptr noundef nonnull align 2 dereferenceable(2) %5)
          to label %192 unwind label %206

192:                                              ; preds = %184
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #21
  %193 = load i64, ptr %10, align 8, !tbaa !153
  %194 = icmp eq i64 %190, 0
  br i1 %194, label %208, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %188, i64 %187, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !211
  %198 = load ptr, ptr %12, align 8, !tbaa !211
  br label %199

199:                                              ; preds = %195, %199
  %200 = phi i64 [ 0, %195 ], [ %203, %199 ]
  %201 = getelementptr inbounds i16, ptr %197, i64 %200
  %202 = load i16, ptr %201, align 2, !tbaa !144
  %203 = add nuw i64 %200, 1
  %204 = getelementptr inbounds i16, ptr %198, i64 %203
  store i16 %202, ptr %204, align 2, !tbaa !144
  %205 = icmp eq i64 %203, %190
  br i1 %205, label %208, label %199, !llvm.loop !274

206:                                              ; preds = %184
  %207 = landingpad { ptr, i32 }
          cleanup
  br label %275

208:                                              ; preds = %199, %192
  %209 = phi i64 [ 0, %192 ], [ %190, %199 ]
  %210 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %188, i64 %187, i32 3
  %211 = load ptr, ptr %210, align 8, !tbaa !211
  %212 = getelementptr i16, ptr %211, i64 %209
  %213 = getelementptr i16, ptr %212, i64 -1
  %214 = load i16, ptr %213, align 2, !tbaa !144
  %215 = load ptr, ptr %12, align 8, !tbaa !211
  store i16 %214, ptr %215, align 2, !tbaa !144
  %216 = load ptr, ptr %168, align 8, !tbaa !197
  %217 = getelementptr inbounds i64, ptr %216, i64 %174
  %218 = load i64, ptr %217, align 8, !tbaa !191
  %219 = udiv i64 %172, %218
  %220 = urem i64 %172, %218
  %221 = icmp ugt i64 %218, %172
  %222 = icmp eq i64 %220, 0
  %223 = and i1 %221, %222
  br i1 %223, label %233, label %224

224:                                              ; preds = %208
  %225 = icmp ult i64 %219, %193
  br i1 %225, label %226, label %233

226:                                              ; preds = %224
  %227 = getelementptr inbounds i16, ptr %215, i64 %219
  %228 = load i16, ptr %227, align 2, !tbaa !144
  %229 = add i32 %175, 1
  %230 = zext i32 %175 to i64
  %231 = getelementptr inbounds [100 x i16], ptr %8, i64 0, i64 %230
  store i16 %228, ptr %231, align 2, !tbaa !144
  %232 = add i64 %174, 1
  br label %233

233:                                              ; preds = %224, %208, %226
  %234 = phi i1 [ true, %226 ], [ false, %208 ], [ false, %224 ]
  %235 = phi i32 [ %229, %226 ], [ %175, %208 ], [ %175, %224 ]
  %236 = phi i64 [ %232, %226 ], [ %174, %208 ], [ %174, %224 ]
  %237 = phi i8 [ %173, %226 ], [ %173, %208 ], [ 1, %224 ]
  br i1 %234, label %238, label %244

238:                                              ; preds = %233, %180
  %239 = phi i32 [ %175, %180 ], [ %235, %233 ]
  %240 = phi i64 [ %181, %180 ], [ %236, %233 ]
  %241 = phi i8 [ %173, %180 ], [ %237, %233 ]
  %242 = phi i64 [ %172, %180 ], [ %220, %233 ]
  %243 = icmp ult i64 %240, %14
  br i1 %243, label %171, label %244, !llvm.loop !275

244:                                              ; preds = %238, %233, %162
  %245 = phi i32 [ %163, %162 ], [ %239, %238 ], [ %235, %233 ]
  %246 = phi i8 [ %164, %162 ], [ %241, %238 ], [ %237, %233 ]
  %247 = and i8 %246, 1
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %244
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 0, i32 noundef -1)
          to label %250 unwind label %182

250:                                              ; preds = %249
  %251 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1010ElemNumber13s_errorStringE)
          to label %258 unwind label %182

252:                                              ; preds = %244
  %253 = icmp eq i32 %245, -1
  br i1 %253, label %254, label %257

254:                                              ; preds = %252
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 0, i32 noundef -1)
          to label %255 unwind label %182

255:                                              ; preds = %254
  %256 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %8)
          to label %258 unwind label %182

257:                                              ; preds = %252
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 0, i32 noundef -1)
          to label %258 unwind label %182

258:                                              ; preds = %257, %255, %250
  %259 = phi ptr [ @_ZN11xalanc_1_1010ElemNumber13s_errorStringE, %250 ], [ %8, %255 ], [ %8, %257 ]
  %260 = phi i32 [ %251, %250 ], [ %256, %255 ], [ %245, %257 ]
  %261 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull %259, i32 noundef %260)
          to label %262 unwind label %182

262:                                              ; preds = %258
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %8) #21
  %263 = load i64, ptr %11, align 8, !tbaa !236
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %274, label %265

265:                                              ; preds = %262
  %266 = load ptr, ptr %12, align 8, !tbaa !211
  %267 = load ptr, ptr %7, align 8, !tbaa !238
  %268 = load ptr, ptr %267, align 8, !tbaa !116
  %269 = getelementptr inbounds ptr, ptr %268, i64 3
  %270 = load ptr, ptr %269, align 8
  invoke void %270(ptr noundef nonnull align 8 dereferenceable(8) %267, ptr noundef %266)
          to label %274 unwind label %271

271:                                              ; preds = %265
  %272 = landingpad { ptr, i32 }
          catch ptr null
  %273 = extractvalue { ptr, i32 } %272, 0
  call void @__clang_call_terminate(ptr %273) #22
  unreachable

274:                                              ; preds = %262, %265
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  ret void

275:                                              ; preds = %182, %206, %106
  %276 = phi { ptr, i32 } [ %107, %106 ], [ %183, %182 ], [ %207, %206 ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %8) #21
  %277 = load i64, ptr %11, align 8, !tbaa !236
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %288, label %279

279:                                              ; preds = %275
  %280 = load ptr, ptr %12, align 8, !tbaa !211
  %281 = load ptr, ptr %7, align 8, !tbaa !238
  %282 = load ptr, ptr %281, align 8, !tbaa !116
  %283 = getelementptr inbounds ptr, ptr %282, i64 3
  %284 = load ptr, ptr %283, align 8
  invoke void %284(ptr noundef nonnull align 8 dereferenceable(8) %281, ptr noundef %280)
          to label %288 unwind label %285

285:                                              ; preds = %279
  %286 = landingpad { ptr, i32 }
          catch ptr null
  %287 = extractvalue { ptr, i32 } %286, 0
  call void @__clang_call_terminate(ptr %287) #22
  unreachable

288:                                              ; preds = %275, %279
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  resume { ptr, i32 } %276
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !276 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !236
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !237

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !211
  %8 = load ptr, ptr %0, align 8, !tbaa !238
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !239

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #22
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010ElemNumber14int2alphaCountEmPKtjRNS_14XalanDOMStringE(i64 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #1 align 2 !prof !172 {
  %5 = alloca [101 x i16], align 16
  %6 = zext i32 %2 to i64
  call void @llvm.lifetime.start.p0(i64 202, ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(202) %5, i8 0, i64 202, i1 false)
  %7 = add nsw i64 %6, -1
  %8 = add nsw i64 %6, -1
  br label %9

9:                                                ; preds = %27, %4
  %10 = phi i64 [ %0, %4 ], [ %28, %27 ]
  %11 = phi i32 [ 99, %4 ], [ %31, %27 ]
  %12 = phi i64 [ 1, %4 ], [ %23, %27 ]
  %13 = phi i64 [ 0, %4 ], [ %21, %27 ]
  %14 = icmp eq i64 %12, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = icmp ne i64 %13, 0
  %17 = icmp eq i64 %12, %7
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %9
  br label %20

20:                                               ; preds = %15, %19
  %21 = phi i64 [ %8, %19 ], [ 0, %15 ]
  %22 = add i64 %21, %10
  %23 = urem i64 %22, %6
  %24 = icmp eq i64 %23, 0
  %25 = icmp ult i64 %10, %6
  %26 = and i1 %25, %24
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = udiv i64 %10, %6
  %29 = getelementptr inbounds i16, ptr %1, i64 %23
  %30 = load i16, ptr %29, align 2, !tbaa !144
  %31 = add i32 %11, -1
  %32 = zext i32 %11 to i64
  %33 = getelementptr inbounds [101 x i16], ptr %5, i64 0, i64 %32
  store i16 %30, ptr %33, align 2, !tbaa !144
  br i1 %25, label %34, label %9, !llvm.loop !277

34:                                               ; preds = %27, %20
  %35 = phi i32 [ %11, %20 ], [ %31, %27 ]
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i16, ptr %5, i64 %36
  %38 = getelementptr inbounds i16, ptr %37, i64 1
  %39 = icmp eq i32 %35, 100
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 0, i32 noundef -1)
  %41 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %38)
  br label %44

42:                                               ; preds = %34
  %43 = sub i32 99, %35
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 0, i32 noundef -1)
  br label %44

44:                                               ; preds = %40, %42
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull %38, i32 noundef %45)
  call void @llvm.lifetime.end.p0(i64 202, ptr nonnull %5) #21
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1016toLowerCaseASCIIERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010ElemNumber7toRomanEmbRNS_14XalanDOMStringE(i64 noundef %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #7 align 2 !prof !201 {
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %5, label %7, !prof !205

5:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 0, i32 noundef -1)
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 1, i16 noundef zeroext 48)
  br label %50

7:                                                ; preds = %3
  %8 = icmp ugt i64 %0, 3999
  br i1 %8, label %9, label %12, !prof !278

9:                                                ; preds = %7
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 0, i32 noundef -1)
  %10 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1010ElemNumber13s_errorStringE)
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @_ZN11xalanc_1_1010ElemNumber13s_errorStringE, i32 noundef %10)
  br label %50

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %2, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !153
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %19, label %16, !prof !279

16:                                               ; preds = %12
  %17 = load i64, ptr %13, align 8, !tbaa !153
  %18 = sub i64 %17, %14
  store i64 %18, ptr %13, align 8, !tbaa !153
  br label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  store i32 0, ptr %20, align 8, !tbaa !177
  br label %21

21:                                               ; preds = %46, %19
  %22 = phi i64 [ %0, %19 ], [ %47, %46 ]
  %23 = phi i64 [ 0, %19 ], [ %48, %46 ]
  %24 = getelementptr inbounds [0 x %"struct.xalanc_1_10::DecimalToRoman"], ptr @_ZN11xalanc_1_1010ElemNumber19s_romanConvertTableE, i64 0, i64 %23
  %25 = load i64, ptr %24, align 16, !tbaa !280
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %35, label %27, !prof !282

27:                                               ; preds = %21
  %28 = getelementptr inbounds [0 x %"struct.xalanc_1_10::DecimalToRoman"], ptr @_ZN11xalanc_1_1010ElemNumber19s_romanConvertTableE, i64 0, i64 %23, i32 1
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i64 [ %22, %27 ], [ %33, %29 ]
  %31 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %28)
  %32 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %28, i32 noundef %31)
  %33 = sub i64 %30, %25
  %34 = icmp ult i64 %33, %25
  br i1 %34, label %35, label %29, !prof !283, !llvm.loop !284

35:                                               ; preds = %29, %21
  %36 = phi i64 [ %22, %21 ], [ %33, %29 ]
  br i1 %1, label %37, label %46, !prof !285

37:                                               ; preds = %35
  %38 = getelementptr inbounds [0 x %"struct.xalanc_1_10::DecimalToRoman"], ptr @_ZN11xalanc_1_1010ElemNumber19s_romanConvertTableE, i64 0, i64 %23, i32 2
  %39 = load i64, ptr %38, align 16, !tbaa !286
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %46, label %41, !prof !287

41:                                               ; preds = %37
  %42 = getelementptr inbounds [0 x %"struct.xalanc_1_10::DecimalToRoman"], ptr @_ZN11xalanc_1_1010ElemNumber19s_romanConvertTableE, i64 0, i64 %23, i32 3
  %43 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %42)
  %44 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %42, i32 noundef %43)
  %45 = sub i64 %36, %39
  br label %46

46:                                               ; preds = %37, %41, %35
  %47 = phi i64 [ %45, %41 ], [ %36, %37 ], [ %36, %35 ]
  %48 = add i64 %23, 1
  %49 = icmp eq i64 %47, 0
  br i1 %49, label %50, label %21, !prof !288, !llvm.loop !289

50:                                               ; preds = %46, %9, %5
  ret void
}

declare void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010ElemNumber20int2singlealphaCountEmRKNS_14XalanDOMStringERS1_(i64 noundef %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #1 align 2 !prof !172 {
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !177
  %7 = zext i32 %6 to i64
  %8 = icmp ult i64 %7, %0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 0, i32 noundef -1)
  %10 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1010ElemNumber13s_errorStringE)
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @_ZN11xalanc_1_1010ElemNumber13s_errorStringE, i32 noundef %10)
  br label %20

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #21
  %13 = add i64 %0, 4294967295
  %14 = and i64 %13, 4294967295
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !211
  %17 = getelementptr inbounds i16, ptr %16, i64 %14
  %18 = load i16, ptr %17, align 2, !tbaa !144
  store i16 %18, ptr %4, align 2, !tbaa !144
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 0, i32 noundef -1)
  %19 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %4, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #21
  br label %20

20:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xalanc_1_1010ElemNumber27NumberFormatStringTokenizerC2ERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #12 align 2 !prof !172 {
  store i32 0, ptr %0, align 8, !tbaa !251
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber::NumberFormatStringTokenizer", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !177
  store i32 %5, ptr %3, align 4, !tbaa !253
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber::NumberFormatStringTokenizer", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !254
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xalanc_1_1010ElemNumber27NumberFormatStringTokenizer9setStringERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #12 align 2 !prof !172 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber::NumberFormatStringTokenizer", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !254
  store i32 0, ptr %0, align 8, !tbaa !251
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !177
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber::NumberFormatStringTokenizer", ptr %0, i64 0, i32 1
  store i32 %5, ptr %6, align 4, !tbaa !253
  ret void
}

declare void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #5 comdat align 2 !prof !172 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #21
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #13

declare void @_ZN11xalanc_1_1028XalanNumberingResourceBundleC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(400), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1028XalanNumberingResourceBundleD1Ev(ptr noundef nonnull align 8 dereferenceable(400)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010ElemNumber10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !290 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.14", align 8
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %4 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %6 = alloca %"class.xalanc_1_10::XalanVector.9", align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %11 = alloca %"class.xalanc_1_10::XalanNumberingResourceBundle", align 8
  %12 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %13 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %14 = alloca %"class.xalanc_1_10::XalanVector.9", align 8
  %15 = alloca %"class.xalanc_1_10::XalanVector.9", align 8
  %16 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %17 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L18s_staticTextStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L17s_textStringCharsE)
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L21s_staticCommentStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L20s_commentStringCharsE)
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L19s_staticSlashStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L20s_solidusStringCharsE)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #21
  store ptr %0, ptr %2, align 8, !tbaa !291
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %2, i64 0, i32 1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %2, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 3)
          to label %20 unwind label %226, !prof !213

20:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE13elalphaDigits, ptr noundef nonnull getelementptr inbounds ([10 x i16], ptr @_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE13elalphaDigits, i64 0, i64 9), ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %21 unwind label %228, !prof !213

21:                                               ; preds = %20
  %22 = load ptr, ptr %19, align 8, !tbaa !269
  %23 = load ptr, ptr %3, align 8, !tbaa !238
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !153
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !236
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !211
  %30 = load ptr, ptr %22, align 8, !tbaa !238
  store ptr %30, ptr %3, align 8, !tbaa !238
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %22, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !153
  store i64 %32, ptr %24, align 8, !tbaa !153
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %22, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !236
  store i64 %34, ptr %26, align 8, !tbaa !236
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %22, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !211
  store ptr %36, ptr %28, align 8, !tbaa !211
  store ptr %23, ptr %22, align 8, !tbaa !238
  store i64 %25, ptr %31, align 8, !tbaa !153
  store i64 %27, ptr %33, align 8, !tbaa !236
  store ptr %29, ptr %35, align 8, !tbaa !211
  %37 = load i64, ptr %26, align 8, !tbaa !236
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %48, label %39, !prof !213

39:                                               ; preds = %21
  %40 = load ptr, ptr %28, align 8, !tbaa !211
  %41 = load ptr, ptr %3, align 8, !tbaa !238
  %42 = load ptr, ptr %41, align 8, !tbaa !116
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #22
  unreachable

48:                                               ; preds = %39, %21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE11elalphaTens, ptr noundef nonnull getelementptr inbounds ([10 x i16], ptr @_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE11elalphaTens, i64 0, i64 9), ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %49 unwind label %230, !prof !213

49:                                               ; preds = %48
  %50 = load ptr, ptr %19, align 8, !tbaa !269
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %50, i64 1
  %52 = load ptr, ptr %4, align 8, !tbaa !238
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !153
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !236
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !211
  %59 = load ptr, ptr %51, align 8, !tbaa !238
  store ptr %59, ptr %4, align 8, !tbaa !238
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %50, i64 1, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !153
  store i64 %61, ptr %53, align 8, !tbaa !153
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %50, i64 1, i32 2
  %63 = load i64, ptr %62, align 8, !tbaa !236
  store i64 %63, ptr %55, align 8, !tbaa !236
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %50, i64 1, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !211
  store ptr %65, ptr %57, align 8, !tbaa !211
  store ptr %52, ptr %51, align 8, !tbaa !238
  store i64 %54, ptr %60, align 8, !tbaa !153
  store i64 %56, ptr %62, align 8, !tbaa !236
  store ptr %58, ptr %64, align 8, !tbaa !211
  %66 = icmp eq i64 %63, 0
  br i1 %66, label %74, label %67, !prof !213

67:                                               ; preds = %49
  %68 = load ptr, ptr %59, align 8, !tbaa !116
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  invoke void %70(ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef %65)
          to label %74 unwind label %71

71:                                               ; preds = %67
  %72 = landingpad { ptr, i32 }
          catch ptr null
  %73 = extractvalue { ptr, i32 } %72, 0
  call void @__clang_call_terminate(ptr %73) #22
  unreachable

74:                                               ; preds = %67, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE15elalphaHundreds, ptr noundef nonnull getelementptr inbounds ([10 x i16], ptr @_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE15elalphaHundreds, i64 0, i64 9), ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %75 unwind label %232, !prof !213

75:                                               ; preds = %74
  %76 = load ptr, ptr %19, align 8, !tbaa !269
  %77 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %76, i64 2
  %78 = load ptr, ptr %5, align 8, !tbaa !238
  %79 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  %80 = load i64, ptr %79, align 8, !tbaa !153
  %81 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %82 = load i64, ptr %81, align 8, !tbaa !236
  %83 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !211
  %85 = load ptr, ptr %77, align 8, !tbaa !238
  store ptr %85, ptr %5, align 8, !tbaa !238
  %86 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %76, i64 2, i32 1
  %87 = load i64, ptr %86, align 8, !tbaa !153
  store i64 %87, ptr %79, align 8, !tbaa !153
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %76, i64 2, i32 2
  %89 = load i64, ptr %88, align 8, !tbaa !236
  store i64 %89, ptr %81, align 8, !tbaa !236
  %90 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %76, i64 2, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !211
  store ptr %91, ptr %83, align 8, !tbaa !211
  store ptr %78, ptr %77, align 8, !tbaa !238
  store i64 %80, ptr %86, align 8, !tbaa !153
  store i64 %82, ptr %88, align 8, !tbaa !236
  store ptr %84, ptr %90, align 8, !tbaa !211
  %92 = icmp eq i64 %89, 0
  br i1 %92, label %100, label %93, !prof !213

93:                                               ; preds = %75
  %94 = load ptr, ptr %85, align 8, !tbaa !116
  %95 = getelementptr inbounds ptr, ptr %94, i64 3
  %96 = load ptr, ptr %95, align 8
  invoke void %96(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef %91)
          to label %100 unwind label %97

97:                                               ; preds = %93
  %98 = landingpad { ptr, i32 }
          catch ptr null
  %99 = extractvalue { ptr, i32 } %98, 0
  call void @__clang_call_terminate(ptr %99) #22
  unreachable

100:                                              ; preds = %93, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  store ptr %0, ptr %6, align 8, !tbaa !195
  %101 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %6, i64 0, i32 1
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %6, i64 0, i32 2
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %6, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %101, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 3)
          to label %104 unwind label %234, !prof !213

104:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  store i64 2, ptr %7, align 8, !tbaa !191
  invoke void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE10doPushBackERKm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %105 unwind label %236, !prof !213

105:                                              ; preds = %104
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  store i64 1, ptr %8, align 8, !tbaa !191
  invoke void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE10doPushBackERKm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %106 unwind label %238, !prof !213

106:                                              ; preds = %105
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  store i64 0, ptr %9, align 8, !tbaa !191
  invoke void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE10doPushBackERKm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %107 unwind label %240, !prof !213

107:                                              ; preds = %106
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #21
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef -1)
          to label %108 unwind label %242, !prof !213

108:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #21
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE15elalphaAlphabet, ptr noundef nonnull getelementptr inbounds ([26 x i16], ptr @_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE15elalphaAlphabet, i64 0, i64 25), ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %109 unwind label %244, !prof !213

109:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #21
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE26elalphaTraditionalAlphabet, ptr noundef nonnull getelementptr inbounds ([27 x i16], ptr @_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE26elalphaTraditionalAlphabet, i64 0, i64 26), ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %110 unwind label %246, !prof !213

110:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #21
  invoke void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEC2EPKmS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE19elalphaNumberGroups, ptr noundef nonnull getelementptr inbounds ([3 x i64], ptr @_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE19elalphaNumberGroups, i64 1, i64 0), ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %111 unwind label %248, !prof !213

111:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #21
  invoke void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEC2EPKmS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE18elalphaMultipliers, ptr noundef nonnull getelementptr inbounds ([1 x i64], ptr @_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE18elalphaMultipliers, i64 1, i64 0), ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %112 unwind label %250, !prof !213

112:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #21
  store ptr %0, ptr %16, align 8, !tbaa !238
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %16, i64 0, i32 1
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %16, i64 0, i32 2
  %115 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %16, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %113, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #21
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE22elalphaMultiplierChars, ptr noundef nonnull getelementptr inbounds ([2 x i16], ptr @_ZZN11xalanc_1_10L34initializeTraditionalElalphaBundleERN11xercesc_2_713MemoryManagerERNS_28XalanNumberingResourceBundleEE22elalphaMultiplierChars, i64 0, i64 1), ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %116 unwind label %252, !prof !213

116:                                              ; preds = %112
  invoke void @_ZN11xalanc_1_1028XalanNumberingResourceBundleC1ERKNS_14XalanDOMStringES3_S3_RKNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEES9_NS0_12eOrientationENS0_16eNumberingMethodENS0_16eMultiplierOrderEmRKNS4_ImNS5_ImEEEESG_S9_S9_RKNS4_IS7_NS5_IS7_EEEESG_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(400) %11, ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 0, i32 noundef 1, i32 noundef 1, i64 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %117 unwind label %254, !prof !213

117:                                              ; preds = %116
  %118 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %17, i64 0, i32 2
  %119 = load i64, ptr %118, align 8, !tbaa !236
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %131, label %121, !prof !292

121:                                              ; preds = %117
  %122 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %17, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !211
  %124 = load ptr, ptr %17, align 8, !tbaa !238
  %125 = load ptr, ptr %124, align 8, !tbaa !116
  %126 = getelementptr inbounds ptr, ptr %125, i64 3
  %127 = load ptr, ptr %126, align 8
  invoke void %127(ptr noundef nonnull align 8 dereferenceable(8) %124, ptr noundef %123)
          to label %131 unwind label %128, !prof !293

128:                                              ; preds = %121
  %129 = landingpad { ptr, i32 }
          catch ptr null
  %130 = extractvalue { ptr, i32 } %129, 0
  call void @__clang_call_terminate(ptr %130) #22
  unreachable

131:                                              ; preds = %121, %117
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #21
  %132 = load i64, ptr %114, align 8, !tbaa !236
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %143, label %134, !prof !213

134:                                              ; preds = %131
  %135 = load ptr, ptr %115, align 8, !tbaa !211
  %136 = load ptr, ptr %16, align 8, !tbaa !238
  %137 = load ptr, ptr %136, align 8, !tbaa !116
  %138 = getelementptr inbounds ptr, ptr %137, i64 3
  %139 = load ptr, ptr %138, align 8
  invoke void %139(ptr noundef nonnull align 8 dereferenceable(8) %136, ptr noundef %135)
          to label %143 unwind label %140

140:                                              ; preds = %134
  %141 = landingpad { ptr, i32 }
          catch ptr null
  %142 = extractvalue { ptr, i32 } %141, 0
  call void @__clang_call_terminate(ptr %142) #22
  unreachable

143:                                              ; preds = %134, %131
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #21
  %144 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %15, i64 0, i32 2
  %145 = load i64, ptr %144, align 8, !tbaa !198
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %157, label %147, !prof !292

147:                                              ; preds = %143
  %148 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %15, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !197
  %150 = load ptr, ptr %15, align 8, !tbaa !195
  %151 = load ptr, ptr %150, align 8, !tbaa !116
  %152 = getelementptr inbounds ptr, ptr %151, i64 3
  %153 = load ptr, ptr %152, align 8
  invoke void %153(ptr noundef nonnull align 8 dereferenceable(8) %150, ptr noundef %149)
          to label %157 unwind label %154, !prof !293

154:                                              ; preds = %147
  %155 = landingpad { ptr, i32 }
          catch ptr null
  %156 = extractvalue { ptr, i32 } %155, 0
  call void @__clang_call_terminate(ptr %156) #22
  unreachable

157:                                              ; preds = %147, %143
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #21
  %158 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %14, i64 0, i32 2
  %159 = load i64, ptr %158, align 8, !tbaa !198
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %171, label %161, !prof !292

161:                                              ; preds = %157
  %162 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %14, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !197
  %164 = load ptr, ptr %14, align 8, !tbaa !195
  %165 = load ptr, ptr %164, align 8, !tbaa !116
  %166 = getelementptr inbounds ptr, ptr %165, i64 3
  %167 = load ptr, ptr %166, align 8
  invoke void %167(ptr noundef nonnull align 8 dereferenceable(8) %164, ptr noundef %163)
          to label %171 unwind label %168, !prof !293

168:                                              ; preds = %161
  %169 = landingpad { ptr, i32 }
          catch ptr null
  %170 = extractvalue { ptr, i32 } %169, 0
  call void @__clang_call_terminate(ptr %170) #22
  unreachable

171:                                              ; preds = %161, %157
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #21
  %172 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %13, i64 0, i32 2
  %173 = load i64, ptr %172, align 8, !tbaa !236
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %185, label %175, !prof !292

175:                                              ; preds = %171
  %176 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %13, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !211
  %178 = load ptr, ptr %13, align 8, !tbaa !238
  %179 = load ptr, ptr %178, align 8, !tbaa !116
  %180 = getelementptr inbounds ptr, ptr %179, i64 3
  %181 = load ptr, ptr %180, align 8
  invoke void %181(ptr noundef nonnull align 8 dereferenceable(8) %178, ptr noundef %177)
          to label %185 unwind label %182, !prof !293

182:                                              ; preds = %175
  %183 = landingpad { ptr, i32 }
          catch ptr null
  %184 = extractvalue { ptr, i32 } %183, 0
  call void @__clang_call_terminate(ptr %184) #22
  unreachable

185:                                              ; preds = %175, %171
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #21
  %186 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %12, i64 0, i32 2
  %187 = load i64, ptr %186, align 8, !tbaa !236
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %199, label %189, !prof !292

189:                                              ; preds = %185
  %190 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %12, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8, !tbaa !211
  %192 = load ptr, ptr %12, align 8, !tbaa !238
  %193 = load ptr, ptr %192, align 8, !tbaa !116
  %194 = getelementptr inbounds ptr, ptr %193, i64 3
  %195 = load ptr, ptr %194, align 8
  invoke void %195(ptr noundef nonnull align 8 dereferenceable(8) %192, ptr noundef %191)
          to label %199 unwind label %196, !prof !293

196:                                              ; preds = %189
  %197 = landingpad { ptr, i32 }
          catch ptr null
  %198 = extractvalue { ptr, i32 } %197, 0
  call void @__clang_call_terminate(ptr %198) #22
  unreachable

199:                                              ; preds = %189, %185
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #21
  invoke void @_ZN11xalanc_1_1028XalanNumberingResourceBundle4swapERS0_(ptr noundef nonnull align 8 dereferenceable(400) @_ZN11xalanc_1_10L29s_staticElalphaResourceBundleE, ptr noundef nonnull align 8 dereferenceable(400) %11)
          to label %200 unwind label %343, !prof !213

200:                                              ; preds = %199
  call void @_ZN11xalanc_1_1028XalanNumberingResourceBundleD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %11) #21
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %11) #21
  %201 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %10, i64 0, i32 2
  %202 = load i64, ptr %201, align 8, !tbaa !236
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %214, label %204, !prof !292

204:                                              ; preds = %200
  %205 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %10, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !211
  %207 = load ptr, ptr %10, align 8, !tbaa !238
  %208 = load ptr, ptr %207, align 8, !tbaa !116
  %209 = getelementptr inbounds ptr, ptr %208, i64 3
  %210 = load ptr, ptr %209, align 8
  invoke void %210(ptr noundef nonnull align 8 dereferenceable(8) %207, ptr noundef %206)
          to label %214 unwind label %211, !prof !293

211:                                              ; preds = %204
  %212 = landingpad { ptr, i32 }
          catch ptr null
  %213 = extractvalue { ptr, i32 } %212, 0
  call void @__clang_call_terminate(ptr %213) #22
  unreachable

214:                                              ; preds = %204, %200
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #21
  %215 = load i64, ptr %102, align 8, !tbaa !198
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %378, label %217, !prof !292

217:                                              ; preds = %214
  %218 = load ptr, ptr %103, align 8, !tbaa !197
  %219 = load ptr, ptr %6, align 8, !tbaa !195
  %220 = load ptr, ptr %219, align 8, !tbaa !116
  %221 = getelementptr inbounds ptr, ptr %220, i64 3
  %222 = load ptr, ptr %221, align 8
  invoke void %222(ptr noundef nonnull align 8 dereferenceable(8) %219, ptr noundef %218)
          to label %378 unwind label %223, !prof !293

223:                                              ; preds = %217
  %224 = landingpad { ptr, i32 }
          catch ptr null
  %225 = extractvalue { ptr, i32 } %224, 0
  call void @__clang_call_terminate(ptr %225) #22
  unreachable

226:                                              ; preds = %1
  %227 = landingpad { ptr, i32 }
          cleanup
  br label %376

228:                                              ; preds = %20
  %229 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %376

230:                                              ; preds = %48
  %231 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  br label %376

232:                                              ; preds = %74
  %233 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %376

234:                                              ; preds = %100
  %235 = landingpad { ptr, i32 }
          cleanup
  br label %362

236:                                              ; preds = %104
  %237 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %362

238:                                              ; preds = %105
  %239 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  br label %362

240:                                              ; preds = %106
  %241 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  br label %362

242:                                              ; preds = %107
  %243 = landingpad { ptr, i32 }
          cleanup
  br label %360

244:                                              ; preds = %108
  %245 = landingpad { ptr, i32 }
          cleanup
  br label %341

246:                                              ; preds = %109
  %247 = landingpad { ptr, i32 }
          cleanup
  br label %326

248:                                              ; preds = %110
  %249 = landingpad { ptr, i32 }
          cleanup
  br label %311

250:                                              ; preds = %111
  %251 = landingpad { ptr, i32 }
          cleanup
  br label %296

252:                                              ; preds = %112
  %253 = landingpad { ptr, i32 }
          cleanup
  br label %269

254:                                              ; preds = %116
  %255 = landingpad { ptr, i32 }
          cleanup
  %256 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %17, i64 0, i32 2
  %257 = load i64, ptr %256, align 8, !tbaa !236
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %269, label %259

259:                                              ; preds = %254
  %260 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %17, i64 0, i32 3
  %261 = load ptr, ptr %260, align 8, !tbaa !211
  %262 = load ptr, ptr %17, align 8, !tbaa !238
  %263 = load ptr, ptr %262, align 8, !tbaa !116
  %264 = getelementptr inbounds ptr, ptr %263, i64 3
  %265 = load ptr, ptr %264, align 8
  invoke void %265(ptr noundef nonnull align 8 dereferenceable(8) %262, ptr noundef %261)
          to label %269 unwind label %266

266:                                              ; preds = %259
  %267 = landingpad { ptr, i32 }
          catch ptr null
  %268 = extractvalue { ptr, i32 } %267, 0
  call void @__clang_call_terminate(ptr %268) #22
  unreachable

269:                                              ; preds = %259, %254, %252
  %270 = phi { ptr, i32 } [ %253, %252 ], [ %255, %254 ], [ %255, %259 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #21
  %271 = load i64, ptr %114, align 8, !tbaa !236
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %282, label %273

273:                                              ; preds = %269
  %274 = load ptr, ptr %115, align 8, !tbaa !211
  %275 = load ptr, ptr %16, align 8, !tbaa !238
  %276 = load ptr, ptr %275, align 8, !tbaa !116
  %277 = getelementptr inbounds ptr, ptr %276, i64 3
  %278 = load ptr, ptr %277, align 8
  invoke void %278(ptr noundef nonnull align 8 dereferenceable(8) %275, ptr noundef %274)
          to label %282 unwind label %279

279:                                              ; preds = %273
  %280 = landingpad { ptr, i32 }
          catch ptr null
  %281 = extractvalue { ptr, i32 } %280, 0
  call void @__clang_call_terminate(ptr %281) #22
  unreachable

282:                                              ; preds = %273, %269
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #21
  %283 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %15, i64 0, i32 2
  %284 = load i64, ptr %283, align 8, !tbaa !198
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %296, label %286

286:                                              ; preds = %282
  %287 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %15, i64 0, i32 3
  %288 = load ptr, ptr %287, align 8, !tbaa !197
  %289 = load ptr, ptr %15, align 8, !tbaa !195
  %290 = load ptr, ptr %289, align 8, !tbaa !116
  %291 = getelementptr inbounds ptr, ptr %290, i64 3
  %292 = load ptr, ptr %291, align 8
  invoke void %292(ptr noundef nonnull align 8 dereferenceable(8) %289, ptr noundef %288)
          to label %296 unwind label %293

293:                                              ; preds = %286
  %294 = landingpad { ptr, i32 }
          catch ptr null
  %295 = extractvalue { ptr, i32 } %294, 0
  call void @__clang_call_terminate(ptr %295) #22
  unreachable

296:                                              ; preds = %286, %282, %250
  %297 = phi { ptr, i32 } [ %251, %250 ], [ %270, %282 ], [ %270, %286 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #21
  %298 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %14, i64 0, i32 2
  %299 = load i64, ptr %298, align 8, !tbaa !198
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %311, label %301

301:                                              ; preds = %296
  %302 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %14, i64 0, i32 3
  %303 = load ptr, ptr %302, align 8, !tbaa !197
  %304 = load ptr, ptr %14, align 8, !tbaa !195
  %305 = load ptr, ptr %304, align 8, !tbaa !116
  %306 = getelementptr inbounds ptr, ptr %305, i64 3
  %307 = load ptr, ptr %306, align 8
  invoke void %307(ptr noundef nonnull align 8 dereferenceable(8) %304, ptr noundef %303)
          to label %311 unwind label %308

308:                                              ; preds = %301
  %309 = landingpad { ptr, i32 }
          catch ptr null
  %310 = extractvalue { ptr, i32 } %309, 0
  call void @__clang_call_terminate(ptr %310) #22
  unreachable

311:                                              ; preds = %301, %296, %248
  %312 = phi { ptr, i32 } [ %249, %248 ], [ %297, %296 ], [ %297, %301 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #21
  %313 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %13, i64 0, i32 2
  %314 = load i64, ptr %313, align 8, !tbaa !236
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %326, label %316

316:                                              ; preds = %311
  %317 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %13, i64 0, i32 3
  %318 = load ptr, ptr %317, align 8, !tbaa !211
  %319 = load ptr, ptr %13, align 8, !tbaa !238
  %320 = load ptr, ptr %319, align 8, !tbaa !116
  %321 = getelementptr inbounds ptr, ptr %320, i64 3
  %322 = load ptr, ptr %321, align 8
  invoke void %322(ptr noundef nonnull align 8 dereferenceable(8) %319, ptr noundef %318)
          to label %326 unwind label %323

323:                                              ; preds = %316
  %324 = landingpad { ptr, i32 }
          catch ptr null
  %325 = extractvalue { ptr, i32 } %324, 0
  call void @__clang_call_terminate(ptr %325) #22
  unreachable

326:                                              ; preds = %316, %311, %246
  %327 = phi { ptr, i32 } [ %247, %246 ], [ %312, %311 ], [ %312, %316 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #21
  %328 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %12, i64 0, i32 2
  %329 = load i64, ptr %328, align 8, !tbaa !236
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %341, label %331

331:                                              ; preds = %326
  %332 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %12, i64 0, i32 3
  %333 = load ptr, ptr %332, align 8, !tbaa !211
  %334 = load ptr, ptr %12, align 8, !tbaa !238
  %335 = load ptr, ptr %334, align 8, !tbaa !116
  %336 = getelementptr inbounds ptr, ptr %335, i64 3
  %337 = load ptr, ptr %336, align 8
  invoke void %337(ptr noundef nonnull align 8 dereferenceable(8) %334, ptr noundef %333)
          to label %341 unwind label %338

338:                                              ; preds = %331
  %339 = landingpad { ptr, i32 }
          catch ptr null
  %340 = extractvalue { ptr, i32 } %339, 0
  call void @__clang_call_terminate(ptr %340) #22
  unreachable

341:                                              ; preds = %331, %326, %244
  %342 = phi { ptr, i32 } [ %245, %244 ], [ %327, %326 ], [ %327, %331 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #21
  br label %345

343:                                              ; preds = %199
  %344 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1028XalanNumberingResourceBundleD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %11) #21
  br label %345

345:                                              ; preds = %343, %341
  %346 = phi { ptr, i32 } [ %344, %343 ], [ %342, %341 ]
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %11) #21
  %347 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %10, i64 0, i32 2
  %348 = load i64, ptr %347, align 8, !tbaa !236
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %360, label %350

350:                                              ; preds = %345
  %351 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %10, i64 0, i32 3
  %352 = load ptr, ptr %351, align 8, !tbaa !211
  %353 = load ptr, ptr %10, align 8, !tbaa !238
  %354 = load ptr, ptr %353, align 8, !tbaa !116
  %355 = getelementptr inbounds ptr, ptr %354, i64 3
  %356 = load ptr, ptr %355, align 8
  invoke void %356(ptr noundef nonnull align 8 dereferenceable(8) %353, ptr noundef %352)
          to label %360 unwind label %357

357:                                              ; preds = %350
  %358 = landingpad { ptr, i32 }
          catch ptr null
  %359 = extractvalue { ptr, i32 } %358, 0
  call void @__clang_call_terminate(ptr %359) #22
  unreachable

360:                                              ; preds = %350, %345, %242
  %361 = phi { ptr, i32 } [ %243, %242 ], [ %346, %345 ], [ %346, %350 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #21
  br label %362

362:                                              ; preds = %360, %240, %238, %236, %234
  %363 = phi { ptr, i32 } [ %361, %360 ], [ %241, %240 ], [ %239, %238 ], [ %237, %236 ], [ %235, %234 ]
  %364 = load i64, ptr %102, align 8, !tbaa !198
  %365 = icmp eq i64 %364, 0
  br i1 %365, label %375, label %366

366:                                              ; preds = %362
  %367 = load ptr, ptr %103, align 8, !tbaa !197
  %368 = load ptr, ptr %6, align 8, !tbaa !195
  %369 = load ptr, ptr %368, align 8, !tbaa !116
  %370 = getelementptr inbounds ptr, ptr %369, i64 3
  %371 = load ptr, ptr %370, align 8
  invoke void %371(ptr noundef nonnull align 8 dereferenceable(8) %368, ptr noundef %367)
          to label %375 unwind label %372

372:                                              ; preds = %366
  %373 = landingpad { ptr, i32 }
          catch ptr null
  %374 = extractvalue { ptr, i32 } %373, 0
  call void @__clang_call_terminate(ptr %374) #22
  unreachable

375:                                              ; preds = %366, %362
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  br label %376

376:                                              ; preds = %375, %232, %230, %228, %226
  %377 = phi { ptr, i32 } [ %363, %375 ], [ %233, %232 ], [ %231, %230 ], [ %229, %228 ], [ %227, %226 ]
  call void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  resume { ptr, i32 } %377

378:                                              ; preds = %214, %217
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  call void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  ret void
}

declare void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010ElemNumber9terminateEv() local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !290 {
  %1 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %2 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanNumberingResourceBundle", align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #21
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %6 = load ptr, ptr %3, align 8, !tbaa !238
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !153
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !236
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !211
  %13 = load ptr, ptr @_ZN11xalanc_1_10L18s_staticTextStringE, align 8, !tbaa !238
  store ptr %13, ptr %3, align 8, !tbaa !238
  %14 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticTextStringE, i64 0, i32 0, i32 1), align 8, !tbaa !153
  store i64 %14, ptr %7, align 8, !tbaa !153
  %15 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticTextStringE, i64 0, i32 0, i32 2), align 8, !tbaa !236
  store i64 %15, ptr %9, align 8, !tbaa !236
  %16 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticTextStringE, i64 0, i32 0, i32 3), align 8, !tbaa !211
  store ptr %16, ptr %11, align 8, !tbaa !211
  store ptr %6, ptr @_ZN11xalanc_1_10L18s_staticTextStringE, align 8, !tbaa !238
  store i64 %8, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticTextStringE, i64 0, i32 0, i32 1), align 8, !tbaa !153
  store i64 %10, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticTextStringE, i64 0, i32 0, i32 2), align 8, !tbaa !236
  store ptr %12, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticTextStringE, i64 0, i32 0, i32 3), align 8, !tbaa !211
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !294
  %19 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticTextStringE, i64 0, i32 1), align 8, !tbaa !294
  store i32 %19, ptr %17, align 8, !tbaa !294
  store i32 %18, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticTextStringE, i64 0, i32 1), align 8, !tbaa !294
  %20 = icmp eq i64 %15, 0
  br i1 %20, label %28, label %21, !prof !292

21:                                               ; preds = %0
  %22 = load ptr, ptr %13, align 8, !tbaa !116
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %16)
          to label %28 unwind label %25, !prof !293

25:                                               ; preds = %21
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  call void @__clang_call_terminate(ptr %27) #22
  unreachable

28:                                               ; preds = %0, %21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #21
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %29 = load ptr, ptr %2, align 8, !tbaa !238
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %2, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !153
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %2, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !236
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %2, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !211
  %36 = load ptr, ptr @_ZN11xalanc_1_10L21s_staticCommentStringE, align 8, !tbaa !238
  store ptr %36, ptr %2, align 8, !tbaa !238
  %37 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L21s_staticCommentStringE, i64 0, i32 0, i32 1), align 8, !tbaa !153
  store i64 %37, ptr %30, align 8, !tbaa !153
  %38 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L21s_staticCommentStringE, i64 0, i32 0, i32 2), align 8, !tbaa !236
  store i64 %38, ptr %32, align 8, !tbaa !236
  %39 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L21s_staticCommentStringE, i64 0, i32 0, i32 3), align 8, !tbaa !211
  store ptr %39, ptr %34, align 8, !tbaa !211
  store ptr %29, ptr @_ZN11xalanc_1_10L21s_staticCommentStringE, align 8, !tbaa !238
  store i64 %31, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L21s_staticCommentStringE, i64 0, i32 0, i32 1), align 8, !tbaa !153
  store i64 %33, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L21s_staticCommentStringE, i64 0, i32 0, i32 2), align 8, !tbaa !236
  store ptr %35, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L21s_staticCommentStringE, i64 0, i32 0, i32 3), align 8, !tbaa !211
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !294
  %42 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L21s_staticCommentStringE, i64 0, i32 1), align 8, !tbaa !294
  store i32 %42, ptr %40, align 8, !tbaa !294
  store i32 %41, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L21s_staticCommentStringE, i64 0, i32 1), align 8, !tbaa !294
  %43 = icmp eq i64 %38, 0
  br i1 %43, label %51, label %44, !prof !292

44:                                               ; preds = %28
  %45 = load ptr, ptr %36, align 8, !tbaa !116
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  invoke void %47(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %39)
          to label %51 unwind label %48, !prof !293

48:                                               ; preds = %44
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  call void @__clang_call_terminate(ptr %50) #22
  unreachable

51:                                               ; preds = %28, %44
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #21
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %52 = load ptr, ptr %1, align 8, !tbaa !238
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !153
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !236
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !211
  %59 = load ptr, ptr @_ZN11xalanc_1_10L19s_staticSlashStringE, align 8, !tbaa !238
  store ptr %59, ptr %1, align 8, !tbaa !238
  %60 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_staticSlashStringE, i64 0, i32 0, i32 1), align 8, !tbaa !153
  store i64 %60, ptr %53, align 8, !tbaa !153
  %61 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_staticSlashStringE, i64 0, i32 0, i32 2), align 8, !tbaa !236
  store i64 %61, ptr %55, align 8, !tbaa !236
  %62 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_staticSlashStringE, i64 0, i32 0, i32 3), align 8, !tbaa !211
  store ptr %62, ptr %57, align 8, !tbaa !211
  store ptr %52, ptr @_ZN11xalanc_1_10L19s_staticSlashStringE, align 8, !tbaa !238
  store i64 %54, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_staticSlashStringE, i64 0, i32 0, i32 1), align 8, !tbaa !153
  store i64 %56, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_staticSlashStringE, i64 0, i32 0, i32 2), align 8, !tbaa !236
  store ptr %58, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_staticSlashStringE, i64 0, i32 0, i32 3), align 8, !tbaa !211
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !294
  %65 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_staticSlashStringE, i64 0, i32 1), align 8, !tbaa !294
  store i32 %65, ptr %63, align 8, !tbaa !294
  store i32 %64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_staticSlashStringE, i64 0, i32 1), align 8, !tbaa !294
  %66 = icmp eq i64 %61, 0
  br i1 %66, label %74, label %67, !prof !292

67:                                               ; preds = %51
  %68 = load ptr, ptr %59, align 8, !tbaa !116
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  invoke void %70(ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef %62)
          to label %74 unwind label %71, !prof !293

71:                                               ; preds = %67
  %72 = landingpad { ptr, i32 }
          catch ptr null
  %73 = extractvalue { ptr, i32 } %72, 0
  call void @__clang_call_terminate(ptr %73) #22
  unreachable

74:                                               ; preds = %51, %67
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %4) #21
  call void @_ZN11xalanc_1_1028XalanNumberingResourceBundleC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(400) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  invoke void @_ZN11xalanc_1_1028XalanNumberingResourceBundle4swapERS0_(ptr noundef nonnull align 8 dereferenceable(400) %4, ptr noundef nonnull align 8 dereferenceable(400) @_ZN11xalanc_1_10L29s_staticElalphaResourceBundleE)
          to label %75 unwind label %76, !prof !213

75:                                               ; preds = %74
  call void @_ZN11xalanc_1_1028XalanNumberingResourceBundleD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %4) #21
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %4) #21
  ret void

76:                                               ; preds = %74
  %77 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1028XalanNumberingResourceBundleD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %4) #21
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %4) #21
  resume { ptr, i32 } %77
}

declare void @_ZN11xalanc_1_1028XalanNumberingResourceBundle4swapERS0_(ptr noundef nonnull align 8 dereferenceable(400), ptr noundef nonnull align 8 dereferenceable(400)) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1010ElemNumber8getXPathEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(408) %0, i32 noundef %1) unnamed_addr #14 align 2 !prof !172 {
  switch i32 %1, label %12 [
    i32 0, label %3
    i32 1, label %6
    i32 2, label %9
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !162
  br label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !157
  br label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !158
  br label %12

12:                                               ; preds = %2, %9, %6, %3
  %13 = phi ptr [ null, %2 ], [ %11, %9 ], [ %8, %6 ], [ %5, %3 ]
  ret ptr %13
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

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat !prof !172 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #21
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !295 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !296

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !236
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !153
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !297

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %12 = load ptr, ptr %0, align 8, !tbaa !238
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !238
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !153
  %16 = load i64, ptr %6, align 8, !tbaa !236
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !211
  %19 = load ptr, ptr %3, align 8, !tbaa !238
  store ptr %19, ptr %0, align 8, !tbaa !238
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !153
  store i64 %21, ptr %14, align 8, !tbaa !153
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !236
  store i64 %23, ptr %6, align 8, !tbaa !236
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !211
  store ptr %25, ptr %17, align 8, !tbaa !211
  store ptr %13, ptr %3, align 8, !tbaa !238
  store i64 %15, ptr %20, align 8, !tbaa !153
  store i64 %16, ptr %22, align 8, !tbaa !236
  store ptr %18, ptr %24, align 8, !tbaa !211
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !298

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !116
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !299

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #22
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !211
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !153
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !300

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !301

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !211
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !153
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !153
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !211
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !302

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !211
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !303
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  store ptr %2, ptr %0, align 8, !tbaa !238
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !153
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !305

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !238
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !153
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !236
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !116
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !306
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !211
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !211
  %24 = load i64, ptr %9, align 8, !tbaa !153
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !307

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !238
  %28 = load i64, ptr %6, align 8, !tbaa !153
  %29 = load i64, ptr %7, align 8, !tbaa !236
  %30 = load ptr, ptr %8, align 8, !tbaa !211
  %31 = load ptr, ptr %5, align 8, !tbaa !238
  store ptr %31, ptr %0, align 8, !tbaa !238
  %32 = load i64, ptr %14, align 8, !tbaa !153
  store i64 %32, ptr %6, align 8, !tbaa !153
  %33 = load i64, ptr %15, align 8, !tbaa !236
  store i64 %33, ptr %7, align 8, !tbaa !236
  %34 = load ptr, ptr %21, align 8, !tbaa !211
  store ptr %34, ptr %8, align 8, !tbaa !211
  store ptr %27, ptr %5, align 8, !tbaa !238
  store i64 %28, ptr %14, align 8, !tbaa !153
  store i64 %29, ptr %15, align 8, !tbaa !236
  store ptr %30, ptr %21, align 8, !tbaa !211
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !307

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !116
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !236
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !211
  %50 = load ptr, ptr %5, align 8, !tbaa !238
  %51 = load ptr, ptr %50, align 8, !tbaa !116
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #22
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !308

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !116
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !309
  store ptr %65, ptr %8, align 8, !tbaa !211
  store i64 %3, ptr %7, align 8, !tbaa !236
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !311

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !153
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !211
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !236
  br i1 %18, label %21, label %39, !prof !312

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !313

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !314

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !211
  %28 = load i64, ptr %12, align 8, !tbaa !153
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !144
  store i16 %34, ptr %32, align 2, !tbaa !144
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !315, !llvm.loop !316

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !317

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %42 = load ptr, ptr %0, align 8, !tbaa !238
  store ptr %42, ptr %5, align 8, !tbaa !238
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !153
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !236
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !116
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !318
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !211
  %51 = load i64, ptr %43, align 8, !tbaa !153
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !211
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !319

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !211
  %56 = load i64, ptr %43, align 8, !tbaa !153
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !319

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !211
  %60 = load i64, ptr %43, align 8, !tbaa !153
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !211
  %63 = load i64, ptr %12, align 8, !tbaa !153
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !319

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !238
  %67 = load i64, ptr %12, align 8, !tbaa !153
  %68 = load i64, ptr %19, align 8, !tbaa !236
  %69 = load ptr, ptr %15, align 8, !tbaa !211
  %70 = load ptr, ptr %5, align 8, !tbaa !238
  store ptr %70, ptr %0, align 8, !tbaa !238
  %71 = load i64, ptr %43, align 8, !tbaa !153
  store i64 %71, ptr %12, align 8, !tbaa !153
  %72 = load i64, ptr %44, align 8, !tbaa !236
  store i64 %72, ptr %19, align 8, !tbaa !236
  %73 = load ptr, ptr %50, align 8, !tbaa !211
  store ptr %73, ptr %15, align 8, !tbaa !211
  store ptr %66, ptr %5, align 8, !tbaa !238
  store i64 %67, ptr %43, align 8, !tbaa !153
  store i64 %68, ptr %44, align 8, !tbaa !236
  store ptr %69, ptr %50, align 8, !tbaa !211
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !320

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !116
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !321

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #22
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !236
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !211
  %89 = load ptr, ptr %5, align 8, !tbaa !238
  %90 = load ptr, ptr %89, align 8, !tbaa !116
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #22
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !322

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !323

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !323

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !324, !llvm.loop !325

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !326, !llvm.loop !327

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !328
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
  br i1 %123, label %124, label %120, !llvm.loop !329

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
  store i64 %36, ptr %12, align 8, !tbaa !153
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !330 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !153
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !236
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !331

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !211
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !144
  store i16 %13, ptr %12, align 2, !tbaa !144
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !153
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %21 = load ptr, ptr %0, align 8, !tbaa !238
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !238
  %24 = load i64, ptr %4, align 8, !tbaa !153
  %25 = load i64, ptr %6, align 8, !tbaa !236
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !211
  %28 = load ptr, ptr %3, align 8, !tbaa !238
  store ptr %28, ptr %0, align 8, !tbaa !238
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !153
  store i64 %30, ptr %4, align 8, !tbaa !153
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !236
  store i64 %32, ptr %6, align 8, !tbaa !236
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !211
  store ptr %34, ptr %26, align 8, !tbaa !211
  store ptr %23, ptr %3, align 8, !tbaa !238
  store i64 %24, ptr %29, align 8, !tbaa !153
  store i64 %25, ptr %31, align 8, !tbaa !236
  store ptr %27, ptr %33, align 8, !tbaa !211
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !116
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !236
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !211
  %52 = load ptr, ptr %3, align 8, !tbaa !238
  %53 = load ptr, ptr %52, align 8, !tbaa !116
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #22
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !332 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !238
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !153
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !305

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !238
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !153
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !236
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !116
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !333
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !211
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !211
  %20 = load i64, ptr %5, align 8, !tbaa !153
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !307

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !238
  %24 = load i64, ptr %10, align 8, !tbaa !153
  %25 = load i64, ptr %11, align 8, !tbaa !236
  %26 = load ptr, ptr %17, align 8, !tbaa !211
  store ptr %4, ptr %3, align 8, !tbaa !238
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !236
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !211
  %33 = load ptr, ptr %3, align 8, !tbaa !238
  %34 = load ptr, ptr %33, align 8, !tbaa !116
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #22
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !308

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !116
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !334
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !238
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !236
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !211
  store ptr %53, ptr %0, align 8, !tbaa !238
  store i64 %52, ptr %5, align 8, !tbaa !153
  store i64 %51, ptr %55, align 8, !tbaa !236
  store ptr %50, ptr %57, align 8, !tbaa !211
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !335

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !116
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !336

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #22
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #17

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #18

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i64 @_ZN11xalanc_1_1024WideStringToUnsignedLongEPKt(ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6insertEjPKtj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !290 {
  %3 = alloca %"struct.xalanc_1_10::ConstructValueWithMemoryManager", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %4 = load ptr, ptr %0, align 8, !tbaa !291
  store ptr %4, ptr %3, align 8, !tbaa !238
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE6resizeEmRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %8 unwind label %21, !prof !213

8:                                                ; preds = %2
  %9 = load i64, ptr %6, align 8, !tbaa !236
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %20, label %11, !prof !213

11:                                               ; preds = %8
  %12 = load ptr, ptr %7, align 8, !tbaa !211
  %13 = load ptr, ptr %3, align 8, !tbaa !238
  %14 = load ptr, ptr %13, align 8, !tbaa !116
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %12)
          to label %20 unwind label %17

17:                                               ; preds = %11
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  call void @__clang_call_terminate(ptr %19) #22
  unreachable

20:                                               ; preds = %8, %11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void

21:                                               ; preds = %2
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = load i64, ptr %6, align 8, !tbaa !236
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %7, align 8, !tbaa !211
  %27 = load ptr, ptr %3, align 8, !tbaa !238
  %28 = load ptr, ptr %27, align 8, !tbaa !116
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #22
  unreachable

34:                                               ; preds = %21, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %22
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !337 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  store ptr %3, ptr %0, align 8, !tbaa !238
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  store ptr %3, ptr %5, align 8, !tbaa !238
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, ptr noundef %1, ptr noundef %2)
          to label %10 unwind label %30, !prof !338

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !238
  %14 = load i64, ptr %6, align 8, !tbaa !153
  %15 = load i64, ptr %12, align 8, !tbaa !236
  %16 = load ptr, ptr %11, align 8, !tbaa !211
  %17 = load ptr, ptr %5, align 8, !tbaa !238
  store ptr %17, ptr %0, align 8, !tbaa !238
  %18 = load i64, ptr %7, align 8, !tbaa !153
  store i64 %18, ptr %6, align 8, !tbaa !153
  %19 = load i64, ptr %8, align 8, !tbaa !236
  store i64 %19, ptr %12, align 8, !tbaa !236
  %20 = load ptr, ptr %9, align 8, !tbaa !211
  store ptr %20, ptr %11, align 8, !tbaa !211
  store ptr %13, ptr %5, align 8, !tbaa !238
  store i64 %14, ptr %7, align 8, !tbaa !153
  store i64 %15, ptr %8, align 8, !tbaa !236
  store ptr %16, ptr %9, align 8, !tbaa !211
  %21 = icmp eq i64 %15, 0
  br i1 %21, label %29, label %22, !prof !338

22:                                               ; preds = %10
  %23 = load ptr, ptr %13, align 8, !tbaa !116
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %16)
          to label %29 unwind label %26

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  call void @__clang_call_terminate(ptr %28) #22
  unreachable

29:                                               ; preds = %10, %22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  ret void

30:                                               ; preds = %4
  %31 = landingpad { ptr, i32 }
          cleanup
  %32 = load i64, ptr %8, align 8, !tbaa !236
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %9, align 8, !tbaa !211
  %36 = load ptr, ptr %5, align 8, !tbaa !238
  %37 = load ptr, ptr %36, align 8, !tbaa !116
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %35)
          to label %43 unwind label %40

40:                                               ; preds = %34
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %30, %34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %31
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEC2EPKmS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !339 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.9", align 8
  store ptr %3, ptr %0, align 8, !tbaa !195
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  store ptr %3, ptr %5, align 8, !tbaa !195
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6insertEPmPKmS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, ptr noundef %1, ptr noundef %2)
          to label %10 unwind label %30, !prof !340

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !195
  %14 = load i64, ptr %6, align 8, !tbaa !243
  %15 = load i64, ptr %12, align 8, !tbaa !198
  %16 = load ptr, ptr %11, align 8, !tbaa !197
  %17 = load ptr, ptr %5, align 8, !tbaa !195
  store ptr %17, ptr %0, align 8, !tbaa !195
  %18 = load i64, ptr %7, align 8, !tbaa !243
  store i64 %18, ptr %6, align 8, !tbaa !243
  %19 = load i64, ptr %8, align 8, !tbaa !198
  store i64 %19, ptr %12, align 8, !tbaa !198
  %20 = load ptr, ptr %9, align 8, !tbaa !197
  store ptr %20, ptr %11, align 8, !tbaa !197
  store ptr %13, ptr %5, align 8, !tbaa !195
  store i64 %14, ptr %7, align 8, !tbaa !243
  store i64 %15, ptr %8, align 8, !tbaa !198
  store ptr %16, ptr %9, align 8, !tbaa !197
  %21 = icmp eq i64 %15, 0
  br i1 %21, label %29, label %22, !prof !340

22:                                               ; preds = %10
  %23 = load ptr, ptr %13, align 8, !tbaa !116
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %16)
          to label %29 unwind label %26

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  call void @__clang_call_terminate(ptr %28) #22
  unreachable

29:                                               ; preds = %10, %22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  ret void

30:                                               ; preds = %4
  %31 = landingpad { ptr, i32 }
          cleanup
  %32 = load i64, ptr %8, align 8, !tbaa !198
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %9, align 8, !tbaa !197
  %36 = load ptr, ptr %5, align 8, !tbaa !195
  %37 = load ptr, ptr %36, align 8, !tbaa !116
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %35)
          to label %43 unwind label %40

40:                                               ; preds = %34
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %30, %34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %31
}

declare void @_ZN11xalanc_1_1028XalanNumberingResourceBundleC1ERKNS_14XalanDOMStringES3_S3_RKNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEES9_NS0_12eOrientationENS0_16eNumberingMethodENS0_16eMultiplierOrderEmRKNS4_ImNS5_ImEEEESG_S9_S9_RKNS4_IS7_NS5_IS7_EEEESG_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(400), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !115 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !341
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5, !prof !342

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !269
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !343
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12, !prof !344

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #21
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !prof !345, !llvm.loop !346

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !269
  %18 = load ptr, ptr %0, align 8, !tbaa !291
  %19 = load ptr, ptr %18, align 8, !tbaa !116
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %17)
          to label %22 unwind label %23, !prof !347

22:                                               ; preds = %16, %1
  ret void

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #22
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE6resizeEmRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 !prof !290 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !343
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %7, label %16, !prof !292

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %7, %9
  %10 = load i64, ptr %4, align 8, !tbaa !343
  %11 = add i64 %10, -1
  store i64 %11, ptr %4, align 8, !tbaa !343
  %12 = load ptr, ptr %8, align 8, !tbaa !269
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %12, i64 %11
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #21
  %14 = load i64, ptr %4, align 8, !tbaa !343
  %15 = icmp ugt i64 %14, %1
  br i1 %15, label %9, label %38, !llvm.loop !348

16:                                               ; preds = %3
  %17 = icmp ult i64 %5, %1
  br i1 %17, label %18, label %38, !prof !213

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !341
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %22, label %23, !prof !213

22:                                               ; preds = %18
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !269
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %25, i64 %1
  %27 = load i64, ptr %4, align 8, !tbaa !343
  %28 = icmp eq i64 %27, %1
  br i1 %28, label %38, label %29, !prof !344

29:                                               ; preds = %23
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %25, i64 %27
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi ptr [ %34, %31 ], [ %30, %29 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !291
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %32, i64 1
  %35 = load i64, ptr %4, align 8, !tbaa !343
  %36 = add i64 %35, 1
  store i64 %36, ptr %4, align 8, !tbaa !343
  %37 = icmp eq ptr %34, %26
  br i1 %37, label %38, label %31, !prof !345, !llvm.loop !349

38:                                               ; preds = %31, %9, %23, %16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !290 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.14", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %4 = load ptr, ptr %0, align 8, !tbaa !291
  call void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !291
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !343
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !341
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !269
  %12 = load ptr, ptr %3, align 8, !tbaa !291
  store ptr %12, ptr %0, align 8, !tbaa !291
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !343
  store i64 %14, ptr %6, align 8, !tbaa !343
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !341
  store i64 %16, ptr %8, align 8, !tbaa !341
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !269
  store ptr %18, ptr %10, align 8, !tbaa !269
  store ptr %5, ptr %3, align 8, !tbaa !291
  store i64 %7, ptr %13, align 8, !tbaa !343
  store i64 %9, ptr %15, align 8, !tbaa !341
  store ptr %11, ptr %17, align 8, !tbaa !269
  call void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !339 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.14", align 8
  store ptr %2, ptr %0, align 8, !tbaa !291
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !343
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12, !prof !350

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !291
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !343
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !341
  %16 = shl i64 %13, 5
  %17 = load ptr, ptr %2, align 8, !tbaa !116
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !351
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !269
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !269
  %24 = load i64, ptr %9, align 8, !tbaa !343
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE6insertEPS3_PKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35, !prof !213

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !291
  %28 = load i64, ptr %6, align 8, !tbaa !343
  %29 = load i64, ptr %7, align 8, !tbaa !341
  %30 = load ptr, ptr %8, align 8, !tbaa !269
  %31 = load ptr, ptr %5, align 8, !tbaa !291
  store ptr %31, ptr %0, align 8, !tbaa !291
  %32 = load i64, ptr %14, align 8, !tbaa !343
  store i64 %32, ptr %6, align 8, !tbaa !343
  %33 = load i64, ptr %15, align 8, !tbaa !341
  store i64 %33, ptr %7, align 8, !tbaa !341
  %34 = load ptr, ptr %21, align 8, !tbaa !269
  store ptr %34, ptr %8, align 8, !tbaa !269
  store ptr %27, ptr %5, align 8, !tbaa !291
  store i64 %28, ptr %14, align 8, !tbaa !343
  store i64 %29, ptr %15, align 8, !tbaa !341
  store ptr %30, ptr %21, align 8, !tbaa !269
  call void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39, !prof !292

39:                                               ; preds = %37
  %40 = shl i64 %3, 5
  %41 = load ptr, ptr %2, align 8, !tbaa !116
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40), !prof !351
  store ptr %44, ptr %8, align 8, !tbaa !269
  store i64 %3, ptr %7, align 8, !tbaa !341
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE6insertEPS3_PKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !290 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.14", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %139, label %11, !prof !292

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !343
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !269
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !341
  br i1 %18, label %21, label %39, !prof !213

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !292

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %139, label %26, !prof !344

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !269
  %28 = load i64, ptr %12, align 8, !tbaa !343
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !291
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !343
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !343
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %139, label %30, !prof !345, !llvm.loop !352

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %42 = load ptr, ptr %0, align 8, !tbaa !291
  store ptr %42, ptr %5, align 8, !tbaa !291
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !343
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !341
  %45 = shl i64 %14, 5
  %46 = load ptr, ptr %42, align 8, !tbaa !116
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !269
  %51 = load i64, ptr %43, align 8, !tbaa !343
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !269
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE6insertEPS3_PKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !269
  %56 = load i64, ptr %43, align 8, !tbaa !343
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE6insertEPS3_PKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !269
  %60 = load i64, ptr %43, align 8, !tbaa !343
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !269
  %63 = load i64, ptr %12, align 8, !tbaa !343
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE6insertEPS3_PKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !291
  %67 = load i64, ptr %12, align 8, !tbaa !343
  %68 = load i64, ptr %19, align 8, !tbaa !341
  %69 = load ptr, ptr %15, align 8, !tbaa !269
  %70 = load ptr, ptr %5, align 8, !tbaa !291
  store ptr %70, ptr %0, align 8, !tbaa !291
  %71 = load i64, ptr %43, align 8, !tbaa !343
  store i64 %71, ptr %12, align 8, !tbaa !343
  %72 = load i64, ptr %44, align 8, !tbaa !341
  store i64 %72, ptr %19, align 8, !tbaa !341
  %73 = load ptr, ptr %50, align 8, !tbaa !269
  store ptr %73, ptr %15, align 8, !tbaa !269
  store ptr %66, ptr %5, align 8, !tbaa !291
  store i64 %67, ptr %43, align 8, !tbaa !343
  store i64 %68, ptr %44, align 8, !tbaa !341
  store ptr %69, ptr %50, align 8, !tbaa !269
  call void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %139

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %75

76:                                               ; preds = %39
  %77 = ptrtoint ptr %17 to i64
  %78 = ptrtoint ptr %1 to i64
  %79 = sub i64 %77, %78
  %80 = icmp ugt i64 %79, %8
  br i1 %80, label %106, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %2, i64 %79
  %83 = icmp eq ptr %82, %3
  br i1 %83, label %84, label %86

84:                                               ; preds = %86, %81
  %85 = icmp eq ptr %17, %1
  br i1 %85, label %94, label %90

86:                                               ; preds = %81, %86
  %87 = phi ptr [ %88, %86 ], [ %82, %81 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !353

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !354

94:                                               ; preds = %90, %84
  %95 = ashr exact i64 %79, 5
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %104, %97 ], [ %95, %94 ]
  %99 = phi ptr [ %103, %97 ], [ %1, %94 ]
  %100 = phi ptr [ %102, %97 ], [ %2, %94 ]
  %101 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %100, i64 1
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %99, i64 1
  %104 = add nsw i64 %98, -1
  %105 = icmp sgt i64 %98, 1
  br i1 %105, label %97, label %139, !llvm.loop !355

106:                                              ; preds = %76
  %107 = sub nsw i64 0, %9
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %17, i64 %107
  %109 = icmp eq ptr %3, %2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !356

114:                                              ; preds = %110, %106
  %115 = ptrtoint ptr %108 to i64
  %116 = sub i64 %115, %78
  %117 = ashr exact i64 %116, 5
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %121, %114
  %120 = icmp sgt i64 %9, 0
  br i1 %120, label %130, label %139

121:                                              ; preds = %114, %121
  %122 = phi i64 [ %128, %121 ], [ %117, %114 ]
  %123 = phi ptr [ %126, %121 ], [ %17, %114 ]
  %124 = phi ptr [ %125, %121 ], [ %108, %114 ]
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %124, i64 -1
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %123, i64 -1
  %127 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull align 8 dereferenceable(32) %125)
  %128 = add nsw i64 %122, -1
  %129 = icmp sgt i64 %122, 1
  br i1 %129, label %121, label %119, !llvm.loop !357

130:                                              ; preds = %119, %130
  %131 = phi i64 [ %137, %130 ], [ %9, %119 ]
  %132 = phi ptr [ %136, %130 ], [ %1, %119 ]
  %133 = phi ptr [ %135, %130 ], [ %2, %119 ]
  %134 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %133, i64 1
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %132, i64 1
  %137 = add nsw i64 %131, -1
  %138 = icmp sgt i64 %131, 1
  br i1 %138, label %130, label %139, !llvm.loop !355

139:                                              ; preds = %97, %130, %30, %94, %119, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !172 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.14", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !343
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !341
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !269
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !291
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
  %14 = load i64, ptr %4, align 8, !tbaa !343
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !343
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %22 = load ptr, ptr %0, align 8, !tbaa !291
  call void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !291
  %25 = load i64, ptr %4, align 8, !tbaa !343
  %26 = load i64, ptr %6, align 8, !tbaa !341
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !269
  %29 = load ptr, ptr %3, align 8, !tbaa !291
  store ptr %29, ptr %0, align 8, !tbaa !291
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !343
  store i64 %31, ptr %4, align 8, !tbaa !343
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !341
  store i64 %33, ptr %6, align 8, !tbaa !341
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !269
  store ptr %35, ptr %27, align 8, !tbaa !269
  store ptr %24, ptr %3, align 8, !tbaa !291
  store i64 %25, ptr %30, align 8, !tbaa !343
  store i64 %26, ptr %32, align 8, !tbaa !341
  store ptr %28, ptr %34, align 8, !tbaa !269
  call void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !358 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.9", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %4 = load ptr, ptr %0, align 8, !tbaa !195
  call void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !195
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !243
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !198
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !197
  %12 = load ptr, ptr %3, align 8, !tbaa !195
  store ptr %12, ptr %0, align 8, !tbaa !195
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !243
  store i64 %14, ptr %6, align 8, !tbaa !243
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !198
  store i64 %16, ptr %8, align 8, !tbaa !198
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !197
  store ptr %18, ptr %10, align 8, !tbaa !197
  store ptr %5, ptr %3, align 8, !tbaa !195
  store i64 %7, ptr %13, align 8, !tbaa !243
  store i64 %9, ptr %15, align 8, !tbaa !198
  store ptr %11, ptr %17, align 8, !tbaa !197
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !359

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !116
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #22
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !360 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.9", align 8
  store ptr %2, ptr %0, align 8, !tbaa !195
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !243
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !361

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !195
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !243
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !198
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !116
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !362
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !197
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !197
  %24 = load i64, ptr %9, align 8, !tbaa !243
  %25 = getelementptr inbounds i64, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6insertEPmPKmS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !359

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !195
  %28 = load i64, ptr %6, align 8, !tbaa !243
  %29 = load i64, ptr %7, align 8, !tbaa !198
  %30 = load ptr, ptr %8, align 8, !tbaa !197
  %31 = load ptr, ptr %5, align 8, !tbaa !195
  store ptr %31, ptr %0, align 8, !tbaa !195
  %32 = load i64, ptr %14, align 8, !tbaa !243
  store i64 %32, ptr %6, align 8, !tbaa !243
  %33 = load i64, ptr %15, align 8, !tbaa !198
  store i64 %33, ptr %7, align 8, !tbaa !198
  %34 = load ptr, ptr %21, align 8, !tbaa !197
  store ptr %34, ptr %8, align 8, !tbaa !197
  store ptr %27, ptr %5, align 8, !tbaa !195
  store i64 %28, ptr %14, align 8, !tbaa !243
  store i64 %29, ptr %15, align 8, !tbaa !198
  store ptr %30, ptr %21, align 8, !tbaa !197
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !359

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !116
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !198
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !197
  %50 = load ptr, ptr %5, align 8, !tbaa !195
  %51 = load ptr, ptr %50, align 8, !tbaa !116
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #22
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !363

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !116
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !362
  store ptr %65, ptr %8, align 8, !tbaa !197
  store i64 %3, ptr %7, align 8, !tbaa !198
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6insertEPmPKmS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !115 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.9", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %133, label %11, !prof !151

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !243
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !197
  %17 = getelementptr inbounds i64, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !198
  br i1 %18, label %21, label %39, !prof !150

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !364

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %133, label %26, !prof !142

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !197
  %28 = load i64, ptr %12, align 8, !tbaa !243
  %29 = getelementptr i64, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load i64, ptr %31, align 8, !tbaa !191
  store i64 %33, ptr %32, align 8, !tbaa !191
  %34 = getelementptr inbounds i64, ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !243
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !243
  %37 = getelementptr inbounds i64, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !365, !llvm.loop !366

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %42 = load ptr, ptr %0, align 8, !tbaa !195
  store ptr %42, ptr %5, align 8, !tbaa !195
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !243
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !198
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !116
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !197
  %51 = load i64, ptr %43, align 8, !tbaa !243
  %52 = getelementptr inbounds i64, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !197
  invoke void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6insertEPmPKmS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !197
  %56 = load i64, ptr %43, align 8, !tbaa !243
  %57 = getelementptr inbounds i64, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6insertEPmPKmS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !197
  %60 = load i64, ptr %43, align 8, !tbaa !243
  %61 = getelementptr inbounds i64, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !197
  %63 = load i64, ptr %12, align 8, !tbaa !243
  %64 = getelementptr inbounds i64, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6insertEPmPKmS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !195
  %67 = load i64, ptr %12, align 8, !tbaa !243
  %68 = load i64, ptr %19, align 8, !tbaa !198
  %69 = load ptr, ptr %15, align 8, !tbaa !197
  %70 = load ptr, ptr %5, align 8, !tbaa !195
  store ptr %70, ptr %0, align 8, !tbaa !195
  %71 = load i64, ptr %43, align 8, !tbaa !243
  store i64 %71, ptr %12, align 8, !tbaa !243
  %72 = load i64, ptr %44, align 8, !tbaa !198
  store i64 %72, ptr %19, align 8, !tbaa !198
  %73 = load ptr, ptr %50, align 8, !tbaa !197
  store ptr %73, ptr %15, align 8, !tbaa !197
  store ptr %66, ptr %5, align 8, !tbaa !195
  store i64 %67, ptr %43, align 8, !tbaa !243
  store i64 %68, ptr %44, align 8, !tbaa !198
  store ptr %69, ptr %50, align 8, !tbaa !197
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !116
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #22
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %133

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !198
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !197
  %89 = load ptr, ptr %5, align 8, !tbaa !195
  %90 = load ptr, ptr %89, align 8, !tbaa !116
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #22
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE10doPushBackERKm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds i64, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !367

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE10doPushBackERKm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !368

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %100, i1 false)
  br label %133

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds i64, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE10doPushBackERKm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds i64, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !369

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 3
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i64, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %131, ptr align 8 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %133

133:                                              ; preds = %30, %24, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE10doPushBackERKm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !358 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.9", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !243
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !198
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16, !prof !359

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !197
  %12 = getelementptr inbounds i64, ptr %11, i64 %5
  %13 = load i64, ptr %1, align 8, !tbaa !191
  store i64 %13, ptr %12, align 8, !tbaa !191
  %14 = load i64, ptr %4, align 8, !tbaa !243
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !243
  br label %61

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %22 = load ptr, ptr %0, align 8, !tbaa !195
  call void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE10doPushBackERKm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %23 unwind label %45

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !195
  %25 = load i64, ptr %4, align 8, !tbaa !243
  %26 = load i64, ptr %6, align 8, !tbaa !198
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !197
  %29 = load ptr, ptr %3, align 8, !tbaa !195
  store ptr %29, ptr %0, align 8, !tbaa !195
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !243
  store i64 %31, ptr %4, align 8, !tbaa !243
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !198
  store i64 %33, ptr %6, align 8, !tbaa !198
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !197
  store ptr %35, ptr %27, align 8, !tbaa !197
  store ptr %24, ptr %3, align 8, !tbaa !195
  store i64 %25, ptr %30, align 8, !tbaa !243
  store i64 %26, ptr %32, align 8, !tbaa !198
  store ptr %28, ptr %34, align 8, !tbaa !197
  %36 = icmp eq i64 %26, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %23
  %38 = load ptr, ptr %24, align 8, !tbaa !116
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  invoke void %40(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %28)
          to label %44 unwind label %41

41:                                               ; preds = %37
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  call void @__clang_call_terminate(ptr %43) #22
  unreachable

44:                                               ; preds = %23, %37
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %61

45:                                               ; preds = %16
  %46 = landingpad { ptr, i32 }
          cleanup
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !198
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !197
  %53 = load ptr, ptr %3, align 8, !tbaa !195
  %54 = load ptr, ptr %53, align 8, !tbaa !116
  %55 = getelementptr inbounds ptr, ptr %54, i64 3
  %56 = load ptr, ptr %55, align 8
  invoke void %56(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef %52)
          to label %60 unwind label %57

57:                                               ; preds = %50
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  call void @__clang_call_terminate(ptr %59) #22
  unreachable

60:                                               ; preds = %45, %50
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %46

61:                                               ; preds = %44, %9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEmRKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #7 comdat align 2 !prof !255 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !226
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %7, label %16, !prof !370

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %7, %9
  %10 = load i64, ptr %4, align 8, !tbaa !226
  %11 = add i64 %10, -1
  store i64 %11, ptr %4, align 8, !tbaa !226
  %12 = load ptr, ptr %8, align 8, !tbaa !225
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %12, i64 %11
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #21
  %14 = load i64, ptr %4, align 8, !tbaa !226
  %15 = icmp ugt i64 %14, %1
  br i1 %15, label %9, label %38, !llvm.loop !371

16:                                               ; preds = %3
  %17 = icmp ult i64 %5, %1
  br i1 %17, label %18, label %38, !prof !256

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !233
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %22, label %23, !prof !256

22:                                               ; preds = %18
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !225
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %25, i64 %1
  %27 = load i64, ptr %4, align 8, !tbaa !226
  %28 = icmp eq i64 %27, %1
  br i1 %28, label %38, label %29, !prof !372

29:                                               ; preds = %23
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %25, i64 %27
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi ptr [ %34, %31 ], [ %30, %29 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !202
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %32, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef 0, i32 noundef -1)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %32, i64 1
  %35 = load i64, ptr %4, align 8, !tbaa !226
  %36 = add i64 %35, 1
  store i64 %36, ptr %4, align 8, !tbaa !226
  %37 = icmp eq ptr %34, %26
  br i1 %37, label %38, label %31, !prof !373, !llvm.loop !374

38:                                               ; preds = %31, %9, %23, %16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !255 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.13", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %4 = load ptr, ptr %0, align 8, !tbaa !202
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !202
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !226
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !233
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = load ptr, ptr %3, align 8, !tbaa !202
  store ptr %12, ptr %0, align 8, !tbaa !202
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !226
  store i64 %14, ptr %6, align 8, !tbaa !226
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !233
  store i64 %16, ptr %8, align 8, !tbaa !233
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !225
  store ptr %18, ptr %10, align 8, !tbaa !225
  store ptr %5, ptr %3, align 8, !tbaa !202
  store i64 %7, ptr %13, align 8, !tbaa !226
  store i64 %9, ptr %15, align 8, !tbaa !233
  store ptr %11, ptr %17, align 8, !tbaa !225
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %50, label %20, !prof !234

20:                                               ; preds = %2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %11, i64 %7
  %22 = icmp eq i64 %7, 0
  br i1 %22, label %41, label %23, !prof !235

23:                                               ; preds = %20, %38
  %24 = phi ptr [ %39, %38 ], [ %11, %20 ]
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %24, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !236
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %38, label %28, !prof !237

28:                                               ; preds = %23
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %24, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !211
  %31 = load ptr, ptr %24, align 8, !tbaa !238
  %32 = load ptr, ptr %31, align 8, !tbaa !116
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  invoke void %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %30)
          to label %38 unwind label %35, !prof !239

35:                                               ; preds = %28
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  call void @__clang_call_terminate(ptr %37) #22
  unreachable

38:                                               ; preds = %28, %23
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %24, i64 1
  %40 = icmp eq ptr %39, %21
  br i1 %40, label %41, label %23, !prof !240, !llvm.loop !241

41:                                               ; preds = %38, %20
  %42 = load ptr, ptr %17, align 8, !tbaa !225
  %43 = load ptr, ptr %3, align 8, !tbaa !202
  %44 = load ptr, ptr %43, align 8, !tbaa !116
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %50 unwind label %47, !prof !242

47:                                               ; preds = %41
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  call void @__clang_call_terminate(ptr %49) #22
  unreachable

50:                                               ; preds = %2, %41
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !375 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.13", align 8
  store ptr %2, ptr %0, align 8, !tbaa !202
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !226
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12, !prof !376

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !202
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !226
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !233
  %16 = mul i64 %13, 40
  %17 = load ptr, ptr %2, align 8, !tbaa !116
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !225
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !225
  %24 = load i64, ptr %9, align 8, !tbaa !226
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !202
  %28 = load i64, ptr %6, align 8, !tbaa !226
  %29 = load i64, ptr %7, align 8, !tbaa !233
  %30 = load ptr, ptr %8, align 8, !tbaa !225
  %31 = load ptr, ptr %5, align 8, !tbaa !202
  store ptr %31, ptr %0, align 8, !tbaa !202
  %32 = load i64, ptr %14, align 8, !tbaa !226
  store i64 %32, ptr %6, align 8, !tbaa !226
  %33 = load i64, ptr %15, align 8, !tbaa !233
  store i64 %33, ptr %7, align 8, !tbaa !233
  %34 = load ptr, ptr %21, align 8, !tbaa !225
  store ptr %34, ptr %8, align 8, !tbaa !225
  store ptr %27, ptr %5, align 8, !tbaa !202
  store i64 %28, ptr %14, align 8, !tbaa !226
  store i64 %29, ptr %15, align 8, !tbaa !233
  store ptr %30, ptr %21, align 8, !tbaa !225
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39, !prof !377

39:                                               ; preds = %37
  %40 = mul i64 %3, 40
  %41 = load ptr, ptr %2, align 8, !tbaa !116
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40), !prof !378
  store ptr %44, ptr %8, align 8, !tbaa !225
  store i64 %3, ptr %7, align 8, !tbaa !233
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !172 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.13", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 40
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %159, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !226
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !225
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !233
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %159, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !225
  %28 = load i64, ptr %12, align 8, !tbaa !226
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !202
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %32, ptr noundef nonnull align 8 dereferenceable(36) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef 0, i32 noundef -1)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !226
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !226
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %159, label %30, !llvm.loop !379

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %42 = load ptr, ptr %0, align 8, !tbaa !202
  store ptr %42, ptr %5, align 8, !tbaa !202
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !226
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !233
  %45 = mul i64 %14, 40
  %46 = load ptr, ptr %42, align 8, !tbaa !116
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !225
  %51 = load i64, ptr %43, align 8, !tbaa !226
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !225
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !225
  %56 = load i64, ptr %43, align 8, !tbaa !226
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !225
  %60 = load i64, ptr %43, align 8, !tbaa !226
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !225
  %63 = load i64, ptr %12, align 8, !tbaa !226
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !202
  %67 = load i64, ptr %12, align 8, !tbaa !226
  %68 = load i64, ptr %19, align 8, !tbaa !233
  %69 = load ptr, ptr %15, align 8, !tbaa !225
  %70 = load ptr, ptr %5, align 8, !tbaa !202
  store ptr %70, ptr %0, align 8, !tbaa !202
  %71 = load i64, ptr %43, align 8, !tbaa !226
  store i64 %71, ptr %12, align 8, !tbaa !226
  %72 = load i64, ptr %44, align 8, !tbaa !233
  store i64 %72, ptr %19, align 8, !tbaa !233
  %73 = load ptr, ptr %50, align 8, !tbaa !225
  store ptr %73, ptr %15, align 8, !tbaa !225
  store ptr %66, ptr %5, align 8, !tbaa !202
  store i64 %67, ptr %43, align 8, !tbaa !226
  store i64 %68, ptr %44, align 8, !tbaa !233
  store ptr %69, ptr %50, align 8, !tbaa !225
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %159

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %75

76:                                               ; preds = %39
  %77 = ptrtoint ptr %17 to i64
  %78 = ptrtoint ptr %1 to i64
  %79 = sub i64 %77, %78
  %80 = icmp ugt i64 %79, %8
  br i1 %80, label %113, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %2, i64 %79
  %83 = icmp eq ptr %82, %3
  br i1 %83, label %84, label %86

84:                                               ; preds = %86, %81
  %85 = icmp eq ptr %17, %1
  br i1 %85, label %94, label %90

86:                                               ; preds = %81, %86
  %87 = phi ptr [ %88, %86 ], [ %82, %81 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !380

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !381

94:                                               ; preds = %90, %84
  %95 = icmp sgt i64 %79, 0
  br i1 %95, label %96, label %159

96:                                               ; preds = %94
  %97 = udiv exact i64 %79, 40
  br label %98

98:                                               ; preds = %96, %108
  %99 = phi i64 [ %111, %108 ], [ %97, %96 ]
  %100 = phi ptr [ %110, %108 ], [ %1, %96 ]
  %101 = phi ptr [ %109, %108 ], [ %2, %96 ]
  %102 = icmp eq ptr %101, %100
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %100, ptr noundef nonnull align 8 dereferenceable(32) %101)
  %105 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %101, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !177
  %107 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %100, i64 0, i32 1
  store i32 %106, ptr %107, align 8, !tbaa !177
  br label %108

108:                                              ; preds = %103, %98
  %109 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %101, i64 1
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %100, i64 1
  %111 = add nsw i64 %99, -1
  %112 = icmp sgt i64 %99, 1
  br i1 %112, label %98, label %159, !llvm.loop !382

113:                                              ; preds = %76
  %114 = sub nsw i64 0, %9
  %115 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %17, i64 %114
  %116 = icmp eq ptr %3, %2
  br i1 %116, label %121, label %117

117:                                              ; preds = %113, %117
  %118 = phi ptr [ %119, %117 ], [ %115, %113 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %118)
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %118, i64 1
  %120 = icmp eq ptr %119, %17
  br i1 %120, label %121, label %117, !llvm.loop !383

121:                                              ; preds = %117, %113
  %122 = ptrtoint ptr %115 to i64
  %123 = sub i64 %122, %78
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = udiv exact i64 %123, 40
  br label %129

127:                                              ; preds = %141, %121
  %128 = icmp sgt i64 %8, 0
  br i1 %128, label %144, label %159

129:                                              ; preds = %125, %141
  %130 = phi i64 [ %142, %141 ], [ %126, %125 ]
  %131 = phi ptr [ %134, %141 ], [ %17, %125 ]
  %132 = phi ptr [ %133, %141 ], [ %115, %125 ]
  %133 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %132, i64 -1
  %134 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %131, i64 -1
  %135 = icmp eq ptr %132, %131
  br i1 %135, label %141, label %136

136:                                              ; preds = %129
  %137 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %134, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %138 = getelementptr %"class.xalanc_1_10::XalanDOMString", ptr %132, i64 -1, i32 1
  %139 = load i32, ptr %138, align 8, !tbaa !177
  %140 = getelementptr %"class.xalanc_1_10::XalanDOMString", ptr %131, i64 -1, i32 1
  store i32 %139, ptr %140, align 8, !tbaa !177
  br label %141

141:                                              ; preds = %136, %129
  %142 = add nsw i64 %130, -1
  %143 = icmp sgt i64 %130, 1
  br i1 %143, label %129, label %127, !llvm.loop !384

144:                                              ; preds = %127, %154
  %145 = phi i64 [ %157, %154 ], [ %9, %127 ]
  %146 = phi ptr [ %156, %154 ], [ %1, %127 ]
  %147 = phi ptr [ %155, %154 ], [ %2, %127 ]
  %148 = icmp eq ptr %147, %146
  br i1 %148, label %154, label %149

149:                                              ; preds = %144
  %150 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %146, ptr noundef nonnull align 8 dereferenceable(32) %147)
  %151 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %147, i64 0, i32 1
  %152 = load i32, ptr %151, align 8, !tbaa !177
  %153 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %146, i64 0, i32 1
  store i32 %152, ptr %153, align 8, !tbaa !177
  br label %154

154:                                              ; preds = %149, %144
  %155 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %147, i64 1
  %156 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %146, i64 1
  %157 = add nsw i64 %145, -1
  %158 = icmp sgt i64 %145, 1
  br i1 %158, label %144, label %159, !llvm.loop !382

159:                                              ; preds = %108, %154, %30, %94, %127, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !385 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.13", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !226
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !233
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16, !prof !386

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !202
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0, i32 noundef -1)
  %14 = load i64, ptr %4, align 8, !tbaa !226
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !226
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20, !prof !340
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %22 = load ptr, ptr %0, align 8, !tbaa !202
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %23 unwind label %36, !prof !340

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !202
  %25 = load i64, ptr %4, align 8, !tbaa !226
  %26 = load i64, ptr %6, align 8, !tbaa !233
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !225
  %29 = load ptr, ptr %3, align 8, !tbaa !202
  store ptr %29, ptr %0, align 8, !tbaa !202
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !226
  store i64 %31, ptr %4, align 8, !tbaa !226
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !233
  store i64 %33, ptr %6, align 8, !tbaa !233
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.13", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !225
  store ptr %35, ptr %27, align 8, !tbaa !225
  store ptr %24, ptr %3, align 8, !tbaa !202
  store i64 %25, ptr %30, align 8, !tbaa !226
  store i64 %26, ptr %32, align 8, !tbaa !233
  store ptr %28, ptr %34, align 8, !tbaa !225
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #7 comdat align 2 !prof !387 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !153
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %29, label %7, !prof !388

7:                                                ; preds = %3
  %8 = icmp ult i64 %5, %1
  br i1 %8, label %9, label %35, !prof !389

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !236
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %14, !prof !389

13:                                               ; preds = %9
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !211
  %17 = getelementptr inbounds i16, ptr %16, i64 %1
  %18 = load i64, ptr %4, align 8, !tbaa !153
  %19 = icmp eq i64 %18, %1
  br i1 %19, label %35, label %20, !prof !390

20:                                               ; preds = %14
  %21 = getelementptr inbounds i16, ptr %16, i64 %18
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi ptr [ %26, %22 ], [ %21, %20 ]
  %24 = phi i64 [ %27, %22 ], [ %18, %20 ]
  %25 = load i16, ptr %2, align 2, !tbaa !144
  store i16 %25, ptr %23, align 2, !tbaa !144
  %26 = getelementptr inbounds i16, ptr %23, i64 1
  %27 = add i64 %24, 1
  %28 = icmp eq ptr %26, %17
  br i1 %28, label %33, label %22, !prof !391, !llvm.loop !392

29:                                               ; preds = %3
  %30 = load i64, ptr %4, align 8, !tbaa !153
  %31 = add i64 %30, -1
  %32 = tail call i64 @llvm.umin.i64(i64 %1, i64 %31)
  br label %33

33:                                               ; preds = %22, %29
  %34 = phi i64 [ %32, %29 ], [ %27, %22 ]
  store i64 %34, ptr %4, align 8, !tbaa !153
  br label %35

35:                                               ; preds = %33, %14, %7
  ret void
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_ElemNumber.cpp() #19 section ".text.startup" !prof !290 !PGOFuncName !393 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L18s_staticTextStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L18s_staticTextStringE, ptr nonnull @__dso_handle) #21
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L21s_staticCommentStringE, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %4 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L21s_staticCommentStringE, ptr nonnull @__dso_handle) #21
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L19s_staticSlashStringE, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %6 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L19s_staticSlashStringE, ptr nonnull @__dso_handle) #21
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1028XalanNumberingResourceBundleC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(400) @_ZN11xalanc_1_10L29s_staticElalphaResourceBundleE, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %8 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1028XalanNumberingResourceBundleD1Ev, ptr nonnull @_ZN11xalanc_1_10L29s_staticElalphaResourceBundleE, ptr nonnull @__dso_handle) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!114}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113}
!35 = !{ptr @_ZN11xalanc_1_1010ElemNumberC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiim, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 5}
!36 = !{ptr @_ZN11xalanc_1_1010ElemNumberC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiim, ptr @_ZN11xalanc_1_106equalsEPKtS1_j, i64 5}
!37 = !{ptr @_ZN11xalanc_1_1010ElemNumberC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiim, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 70}
!38 = !{ptr @_ZN11xalanc_1_1010ElemNumberC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiim, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 35}
!39 = !{ptr @_ZN11xalanc_1_1010ElemNumberC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiim, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, i64 10}
!40 = !{ptr @_ZN11xalanc_1_1010ElemNumber6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetERKNS1_13AttributeListEiim, ptr @_ZN11xalanc_1_1010ElemNumberC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiim, i64 5}
!41 = !{ptr @_ZN11xalanc_1_1010ElemNumberD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, i64 5}
!42 = !{ptr @_ZNK11xalanc_1_1010ElemNumber12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, i64 93159}
!43 = !{ptr @_ZNK11xalanc_1_1010ElemNumber12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1010ElemNumber14getCountStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, i64 93159}
!44 = !{ptr @_ZNK11xalanc_1_1010ElemNumber14getCountStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, i64 93159}
!45 = !{ptr @_ZNK11xalanc_1_1010ElemNumber14getCountStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd, i64 93159}
!46 = !{ptr @_ZNK11xalanc_1_1010ElemNumber14getCountStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE, i64 12189}
!47 = !{ptr @_ZNK11xalanc_1_1010ElemNumber14getCountStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1013DoubleSupport5roundEd, i64 80970}
!48 = !{ptr @_ZNK11xalanc_1_1010ElemNumber14getCountStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1010ElemNumber16formatNumberListERNS_26StylesheetExecutionContextEPKmjRNS_14XalanDOMStringE, i64 80970}
!49 = !{ptr @_ZNK11xalanc_1_1010ElemNumber16formatNumberListERNS_26StylesheetExecutionContextEPKmjRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 80970}
!50 = !{ptr @_ZNK11xalanc_1_1010ElemNumber16formatNumberListERNS_26StylesheetExecutionContextEPKmjRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 323877}
!51 = !{ptr @_ZNK11xalanc_1_1010ElemNumber16formatNumberListERNS_26StylesheetExecutionContextEPKmjRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm, i64 80970}
!52 = !{ptr @_ZNK11xalanc_1_1010ElemNumber16formatNumberListERNS_26StylesheetExecutionContextEPKmjRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj, i64 242909}
!53 = !{ptr @_ZNK11xalanc_1_1010ElemNumber16formatNumberListERNS_26StylesheetExecutionContextEPKmjRNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1010ElemNumber18getFormattedNumberERNS_26StylesheetExecutionContextEtjmRNS_14XalanDOMStringE, i64 80969}
!54 = !{ptr @_ZNK11xalanc_1_1010ElemNumber16formatNumberListERNS_26StylesheetExecutionContextEPKmjRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 1}
!55 = !{ptr @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 116135}
!56 = !{ptr @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 116135}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 93739}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEmRKS1_, i64 93739}
!59 = !{ptr @_ZNK11xalanc_1_1010ElemNumber18getFormattedNumberERNS_26StylesheetExecutionContextEtjmRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1010ElemNumber7toRomanEmbRNS_14XalanDOMStringE, i64 80970}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!61 = !{ptr @_ZN11xalanc_1_1010ElemNumber7toRomanEmbRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 35165}
!62 = !{ptr @_ZN11xalanc_1_1010ElemNumber7toRomanEmbRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 130478}
!63 = !{ptr @_ZN11xalanc_1_1010ElemNumber7toRomanEmbRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 130478}
!64 = !{ptr @_ZN11xalanc_1_1010ElemNumber10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt, i64 3}
!65 = !{ptr @_ZN11xalanc_1_1010ElemNumber10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE6resizeEm, i64 1}
!66 = !{ptr @_ZN11xalanc_1_1010ElemNumber10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, i64 6}
!67 = !{ptr @_ZN11xalanc_1_1010ElemNumber10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE9doReserveEm, i64 1}
!68 = !{ptr @_ZN11xalanc_1_1010ElemNumber10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE10doPushBackERKm, i64 3}
!69 = !{ptr @_ZN11xalanc_1_1010ElemNumber10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj, i64 1}
!70 = !{ptr @_ZN11xalanc_1_1010ElemNumber10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEC2EPKmS5_RN11xercesc_2_713MemoryManagerE, i64 2}
!71 = !{ptr @_ZN11xalanc_1_1010ElemNumber10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanNumberingResourceBundleC1ERKNS_14XalanDOMStringES3_S3_RKNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEES9_NS0_12eOrientationENS0_16eNumberingMethodENS0_16eMultiplierOrderEmRKNS4_ImNS5_ImEEEESG_S9_S9_RKNS4_IS7_NS5_IS7_EEEESG_RN11xercesc_2_713MemoryManagerE, i64 1}
!72 = !{ptr @_ZN11xalanc_1_1010ElemNumber10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanNumberingResourceBundle4swapERS0_, i64 1}
!73 = !{ptr @_ZN11xalanc_1_1010ElemNumber10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanNumberingResourceBundleD1Ev, i64 1}
!74 = !{ptr @_ZN11xalanc_1_1010ElemNumber10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEED2Ev, i64 1}
!75 = !{ptr @_ZN11xalanc_1_1010ElemNumber9terminateEv, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!76 = !{ptr @_ZN11xalanc_1_1010ElemNumber9terminateEv, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 3}
!77 = !{ptr @_ZN11xalanc_1_1010ElemNumber9terminateEv, ptr @_ZN11xalanc_1_1028XalanNumberingResourceBundleC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!78 = !{ptr @_ZN11xalanc_1_1010ElemNumber9terminateEv, ptr @_ZN11xalanc_1_1028XalanNumberingResourceBundle4swapERS0_, i64 1}
!79 = !{ptr @_ZN11xalanc_1_1010ElemNumber9terminateEv, ptr @_ZN11xalanc_1_1028XalanNumberingResourceBundleD1Ev, i64 1}
!80 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!81 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!82 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!83 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!84 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!85 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!86 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!87 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!88 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE6resizeEm, ptr @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE6resizeEmRKS3_, i64 1}
!89 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 12}
!90 = !{ptr @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEC2EPKmS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6insertEPmPKmS6_, i64 2}
!91 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 6}
!92 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE6resizeEmRKS3_, ptr @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE9doReserveEm, i64 1}
!93 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE6resizeEmRKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 3}
!94 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!95 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEED2Ev, i64 1}
!96 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE6insertEPS3_PKS3_S8_, i64 1}
!97 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEED2Ev, i64 1}
!98 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEE6insertEPS3_PKS3_S8_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 3}
!99 = !{ptr @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 3}
!100 = !{ptr @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6insertEPmPKmS6_, i64 3}
!101 = !{ptr @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6insertEPmPKmS6_, ptr @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE9doReserveEm, i64 2}
!102 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEmRKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, i64 93739}
!103 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEmRKS1_, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj, i64 402524}
!104 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, i64 93739}
!105 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj, i64 2}
!106 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, i64 2}
!107 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, i64 2}
!108 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 2}
!109 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 152}
!110 = !{ptr @_GLOBAL__sub_I_ElemNumber.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 4}
!111 = !{ptr @_GLOBAL__sub_I_ElemNumber.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 3}
!112 = !{ptr @_GLOBAL__sub_I_ElemNumber.cpp, ptr @__cxa_atexit, i64 4}
!113 = !{ptr @_GLOBAL__sub_I_ElemNumber.cpp, ptr @_ZN11xalanc_1_1028XalanNumberingResourceBundleC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!114 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!115 = !{!"function_entry_count", i64 5}
!116 = !{!117, !117, i64 0}
!117 = !{!"vtable pointer", !118, i64 0}
!118 = !{!"Simple C++ TBAA"}
!119 = !{!120, !127, i64 400}
!120 = !{!"_ZTSN11xalanc_1_1010ElemNumberE", !121, i64 0, !123, i64 328, !123, i64 336, !123, i64 344, !127, i64 352, !123, i64 360, !123, i64 368, !123, i64 376, !123, i64 384, !123, i64 392, !127, i64 400}
!121 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !122, i64 0, !123, i64 8, !125, i64 16, !136, i64 248, !123, i64 256, !123, i64 264, !123, i64 272, !124, i64 280, !137, i64 288, !140, i64 320}
!122 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!123 = !{!"any pointer", !124, i64 0}
!124 = !{!"omnipotent char", !118, i64 0}
!125 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !126, i64 0, !128, i64 32, !129, i64 64, !130, i64 96}
!126 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !123, i64 0, !127, i64 8, !127, i64 16, !123, i64 24}
!127 = !{!"long", !124, i64 0}
!128 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !123, i64 0, !127, i64 8, !127, i64 16, !123, i64 24}
!129 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !123, i64 0, !127, i64 8, !127, i64 16, !123, i64 24}
!130 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !131, i64 0, !132, i64 1, !123, i64 8, !133, i64 16, !127, i64 24, !127, i64 32, !134, i64 40, !134, i64 64, !135, i64 88, !127, i64 120, !127, i64 128}
!131 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!132 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!133 = !{!"float", !124, i64 0}
!134 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !123, i64 0, !123, i64 8, !123, i64 16}
!135 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !123, i64 0, !127, i64 8, !127, i64 16, !123, i64 24}
!136 = !{!"int", !124, i64 0}
!137 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !138, i64 0, !127, i64 8, !127, i64 16, !123, i64 24}
!138 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !139, i64 0}
!139 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!140 = !{!"short", !124, i64 0}
!141 = !{!"VP", i32 0, i64 5, i64 8253907953441087172, i64 5}
!142 = !{!"branch_weights", i32 1, i32 159}
!143 = !{!"VP", i32 0, i64 10, i64 5829949526982853143, i64 10}
!144 = !{!140, !140, i64 0}
!145 = !{!"branch_weights", i32 10, i32 55}
!146 = distinct !{!146, !147, !148}
!147 = !{!"llvm.loop.mustprogress"}
!148 = !{!"llvm.loop.unroll.disable"}
!149 = !{!"branch_weights", i32 5, i32 5}
!150 = !{!"branch_weights", i32 5, i32 0}
!151 = !{!"branch_weights", i32 0, i32 5}
!152 = !{!120, !127, i64 352}
!153 = !{!154, !127, i64 8}
!154 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !123, i64 0, !127, i64 8, !127, i64 16, !123, i64 24}
!155 = !{!"branch_weights", i32 0, i32 10}
!156 = !{!"branch_weights", i32 10, i32 0}
!157 = !{!120, !123, i64 328}
!158 = !{!120, !123, i64 336}
!159 = !{!"VP", i32 0, i64 5, i64 -5610273550909442482, i64 5}
!160 = !{!"VP", i32 0, i64 5, i64 -7250213707570638104, i64 5}
!161 = !{!"VP", i32 0, i64 5, i64 5056957690790192712, i64 5}
!162 = !{!120, !123, i64 344}
!163 = !{!"VP", i32 0, i64 5, i64 362171021796504155, i64 5}
!164 = !{!120, !123, i64 360}
!165 = !{!120, !123, i64 368}
!166 = !{!120, !123, i64 376}
!167 = !{!120, !123, i64 384}
!168 = !{!120, !123, i64 392}
!169 = !{!"branch_weights", i32 159, i32 161}
!170 = distinct !{!170, !147, !148}
!171 = !{!"VP", i32 0, i64 5, i64 8345045103670217670, i64 5}
!172 = !{!"function_entry_count", i64 0}
!173 = !{!123, !123, i64 0}
!174 = !{!"function_entry_count", i64 93159}
!175 = !{!"VP", i32 0, i64 93159, i64 513632834810131310, i64 93159}
!176 = !{!"branch_weights", i32 93159, i32 0}
!177 = !{!178, !136, i64 32}
!178 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !154, i64 0, !136, i64 32}
!179 = !{!"branch_weights", i32 0, i32 93159}
!180 = !{!"VP", i32 0, i64 93159, i64 8825849420807778593, i64 93159}
!181 = !{!"VP", i32 0, i64 93159, i64 1667259618122374371, i64 93159}
!182 = !{!"VP", i32 0, i64 93159, i64 -7584622325260852241, i64 93159}
!183 = !{!"VP", i32 0, i64 93159, i64 -6410307884929493294, i64 93159}
!184 = !{!"VP", i32 0, i64 93159, i64 8453500335362080052, i64 93159}
!185 = !{!186, !123, i64 24}
!186 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !123, i64 0, !127, i64 8, !127, i64 16, !123, i64 24}
!187 = !{!188, !188, i64 0}
!188 = !{!"double", !124, i64 0}
!189 = !{!124, !124, i64 0}
!190 = !{!"branch_weights", i32 12189, i32 80970}
!191 = !{!127, !127, i64 0}
!192 = distinct !{!192, !147, !148}
!193 = !{!194, !123, i64 8}
!194 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !123, i64 8}
!195 = !{!196, !123, i64 0}
!196 = !{!"_ZTSN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEE", !123, i64 0, !127, i64 8, !127, i64 16, !123, i64 24}
!197 = !{!196, !123, i64 24}
!198 = !{!196, !127, i64 16}
!199 = distinct !{!199, !147, !148}
!200 = distinct !{!200, !147, !148}
!201 = !{!"function_entry_count", i64 80970}
!202 = !{!203, !123, i64 0}
!203 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEE", !123, i64 0, !127, i64 8, !127, i64 16, !123, i64 24}
!204 = !{!"VP", i32 0, i64 80970, i64 513632834810131310, i64 80970}
!205 = !{!"branch_weights", i32 0, i32 80970}
!206 = !{!207, !123, i64 24}
!207 = !{!"_ZTSN11xalanc_1_103AVTE", !123, i64 8, !127, i64 16, !123, i64 24, !136, i64 32, !123, i64 40}
!208 = !{!"branch_weights", i32 0, i32 197105}
!209 = !{!207, !136, i64 32}
!210 = !{!"branch_weights", i32 1, i32 80969}
!211 = !{!154, !123, i64 24}
!212 = !{!"branch_weights", i32 161940, i32 0, i32 0, i32 80970}
!213 = !{!"branch_weights", i32 1, i32 0}
!214 = !{!"branch_weights", i32 80969, i32 1}
!215 = !{!"branch_weights", i32 80970, i32 0, i32 0, i32 80970}
!216 = !{!"branch_weights", i32 0, i32 161940}
!217 = distinct !{!217, !147, !148}
!218 = !{!"branch_weights", i32 242910, i32 0, i32 0, i32 80970}
!219 = !{!"branch_weights", i32 80969, i32 242911}
!220 = distinct !{!220, !147, !148}
!221 = !{!"branch_weights", i32 161941, i32 80969}
!222 = distinct !{!222, !147, !148}
!223 = !{!"branch_weights", i32 80970, i32 0}
!224 = !{!"VP", i32 0, i64 80970, i64 1667259618122374371, i64 80970}
!225 = !{!203, !123, i64 24}
!226 = !{!203, !127, i64 8}
!227 = !{!"branch_weights", i32 242910, i32 0}
!228 = distinct !{!228, !147, !148}
!229 = distinct !{!229, !147, !148}
!230 = !{!"branch_weights", i32 80969, i32 161941}
!231 = distinct !{!231, !147, !148}
!232 = distinct !{!232, !147, !148}
!233 = !{!203, !127, i64 16}
!234 = !{!"branch_weights", i32 108344, i32 93741}
!235 = !{!"branch_weights", i32 1, i32 93740}
!236 = !{!154, !127, i64 16}
!237 = !{!"branch_weights", i32 52000, i32 42418003}
!238 = !{!154, !123, i64 0}
!239 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!240 = !{!"branch_weights", i32 93740, i32 308786}
!241 = distinct !{!241, !147, !148}
!242 = !{!"VP", i32 0, i64 93741, i64 -7405368087501025645, i64 93741}
!243 = !{!196, !127, i64 8}
!244 = distinct !{!244, !147, !148}
!245 = distinct !{!245, !147, !148}
!246 = distinct !{!246, !147, !148}
!247 = !{!248, !123, i64 8}
!248 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1017XalanNumberFormatEE", !123, i64 0, !123, i64 8}
!249 = !{!248, !123, i64 0}
!250 = !{!"function_entry_count", i64 116135}
!251 = !{!252, !136, i64 0}
!252 = !{!"_ZTSN11xalanc_1_1010ElemNumber27NumberFormatStringTokenizerE", !136, i64 0, !136, i64 4, !123, i64 8}
!253 = !{!252, !136, i64 4}
!254 = !{!252, !123, i64 8}
!255 = !{!"function_entry_count", i64 93739}
!256 = !{!"branch_weights", i32 93739, i32 0}
!257 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 80970, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!258 = distinct !{!258, !147, !148}
!259 = !{!"function_entry_count", i64 27376}
!260 = !{!261, !263, i64 188}
!261 = !{!"_ZTSN11xalanc_1_1028XalanNumberingResourceBundleE", !178, i64 0, !178, i64 40, !178, i64 80, !154, i64 120, !154, i64 152, !262, i64 184, !263, i64 188, !264, i64 192, !127, i64 200, !196, i64 208, !196, i64 240, !154, i64 272, !154, i64 304, !265, i64 336, !196, i64 368}
!262 = !{!"_ZTSN11xalanc_1_1028XalanNumberingResourceBundle12eOrientationE", !124, i64 0}
!263 = !{!"_ZTSN11xalanc_1_1028XalanNumberingResourceBundle16eNumberingMethodE", !124, i64 0}
!264 = !{!"_ZTSN11xalanc_1_1028XalanNumberingResourceBundle16eMultiplierOrderE", !124, i64 0}
!265 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_ItNS_31MemoryManagedConstructionTraitsItEEEENS1_IS3_EEEE", !123, i64 0, !127, i64 8, !127, i64 16, !123, i64 24}
!266 = !{!261, !264, i64 192}
!267 = distinct !{!267, !147, !148}
!268 = distinct !{!268, !147, !148}
!269 = !{!265, !123, i64 24}
!270 = !{!271, !140, i64 0}
!271 = !{!"_ZTSN11xalanc_1_1033ConstructValueWithNoMemoryManagerItEE", !140, i64 0}
!272 = distinct !{!272, !147, !148}
!273 = distinct !{!273, !147, !148}
!274 = distinct !{!274, !147, !148}
!275 = distinct !{!275, !147, !148}
!276 = !{!"function_entry_count", i64 42067477}
!277 = distinct !{!277, !147, !148}
!278 = !{!"branch_weights", i32 35165, i32 45805}
!279 = !{!"branch_weights", i32 45805, i32 0}
!280 = !{!281, !127, i64 0}
!281 = !{!"_ZTSN11xalanc_1_1014DecimalToRomanE", !127, i64 0, !124, i64 8, !127, i64 16, !124, i64 24}
!282 = !{!"branch_weights", i32 218497, i32 88116}
!283 = !{!"branch_weights", i32 88116, i32 0}
!284 = distinct !{!284, !147, !148}
!285 = !{!"branch_weights", i32 306613, i32 0}
!286 = !{!281, !127, i64 16}
!287 = !{!"branch_weights", i32 299416, i32 7197}
!288 = !{!"branch_weights", i32 45805, i32 260808}
!289 = distinct !{!289, !147, !148}
!290 = !{!"function_entry_count", i64 1}
!291 = !{!265, !123, i64 0}
!292 = !{!"branch_weights", i32 0, i32 1}
!293 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!294 = !{!136, !136, i64 0}
!295 = !{!"function_entry_count", i64 41614}
!296 = !{!"branch_weights", i32 0, i32 41614}
!297 = !{!"branch_weights", i32 12, i32 41602}
!298 = !{!"branch_weights", i32 5, i32 7}
!299 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!300 = !{!"branch_weights", i32 354, i32 41248}
!301 = !{!"branch_weights", i32 40889, i32 359}
!302 = !{!"branch_weights", i32 40581, i32 1021}
!303 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!304 = !{!"function_entry_count", i64 22}
!305 = !{!"branch_weights", i32 64551590, i32 18}
!306 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!307 = !{!"branch_weights", i32 18, i32 0}
!308 = !{!"branch_weights", i32 4, i32 64551586}
!309 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!310 = !{!"function_entry_count", i64 155828046}
!311 = !{!"branch_weights", i32 0, i32 155828046}
!312 = !{!"branch_weights", i32 133170777, i32 22657269}
!313 = !{!"branch_weights", i32 20, i32 133170757}
!314 = !{!"branch_weights", i32 1, i32 19024395}
!315 = !{!"branch_weights", i32 19024395, i32 -26420601}
!316 = distinct !{!316, !147, !148}
!317 = !{!"branch_weights", i32 20748786, i32 1908483}
!318 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!319 = !{!"branch_weights", i32 20748786, i32 0}
!320 = !{!"branch_weights", i32 0, i32 20748786}
!321 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!322 = !{!"branch_weights", i32 0, i32 1908483}
!323 = !{!"branch_weights", i32 1, i32 1908482}
!324 = !{!"branch_weights", i32 1908482, i32 49797853}
!325 = distinct !{!325, !147, !148}
!326 = !{!"branch_weights", i32 1908482, i32 1}
!327 = distinct !{!327, !147, !148}
!328 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!329 = distinct !{!329, !147, !148}
!330 = !{!"function_entry_count", i64 124150652}
!331 = !{!"branch_weights", i32 124150652, i32 0}
!332 = !{!"function_entry_count", i64 64551586}
!333 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!334 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!335 = !{!"branch_weights", i32 42418193, i32 22133393}
!336 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!337 = !{!"function_entry_count", i64 12}
!338 = !{!"branch_weights", i32 12, i32 0}
!339 = !{!"function_entry_count", i64 2}
!340 = !{!"branch_weights", i32 2, i32 0}
!341 = !{!265, !127, i64 16}
!342 = !{!"branch_weights", i32 3, i32 2}
!343 = !{!265, !127, i64 8}
!344 = !{!"branch_weights", i32 1, i32 127}
!345 = !{!"branch_weights", i32 127, i32 257}
!346 = distinct !{!346, !147, !148}
!347 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!348 = distinct !{!348, !147, !148}
!349 = distinct !{!349, !147, !148}
!350 = !{!"branch_weights", i32 1, i32 1}
!351 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!352 = distinct !{!352, !147, !148}
!353 = distinct !{!353, !147, !148}
!354 = distinct !{!354, !147, !148}
!355 = distinct !{!355, !147, !148}
!356 = distinct !{!356, !147, !148}
!357 = distinct !{!357, !147, !148}
!358 = !{!"function_entry_count", i64 3}
!359 = !{!"branch_weights", i32 3, i32 0}
!360 = !{!"function_entry_count", i64 6}
!361 = !{!"branch_weights", i32 3, i32 3}
!362 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
!363 = !{!"branch_weights", i32 0, i32 3}
!364 = !{!"branch_weights", i32 2, i32 3}
!365 = !{!"branch_weights", i32 159, i32 193}
!366 = distinct !{!366, !147, !148}
!367 = distinct !{!367, !147, !148}
!368 = distinct !{!368, !147, !148}
!369 = distinct !{!369, !147, !148}
!370 = !{!"branch_weights", i32 0, i32 93739}
!371 = distinct !{!371, !147, !148}
!372 = !{!"branch_weights", i32 1, i32 93738}
!373 = !{!"branch_weights", i32 93738, i32 308786}
!374 = distinct !{!374, !147, !148}
!375 = !{!"function_entry_count", i64 114263}
!376 = !{!"branch_weights", i32 114263, i32 0}
!377 = !{!"branch_weights", i32 20522, i32 93741}
!378 = !{!"VP", i32 0, i64 93741, i64 8345045103670217670, i64 93741}
!379 = distinct !{!379, !147, !148}
!380 = distinct !{!380, !147, !148}
!381 = distinct !{!381, !147, !148}
!382 = distinct !{!382, !147, !148}
!383 = distinct !{!383, !147, !148}
!384 = distinct !{!384, !147, !148}
!385 = !{!"function_entry_count", i64 4}
!386 = !{!"branch_weights", i32 2, i32 2}
!387 = !{!"function_entry_count", i64 152}
!388 = !{!"branch_weights", i32 0, i32 152}
!389 = !{!"branch_weights", i32 152, i32 0}
!390 = !{!"branch_weights", i32 1, i32 151}
!391 = !{!"branch_weights", i32 151, i32 8215}
!392 = distinct !{!392, !147, !148}
!393 = !{!"ElemNumber.cpp;_GLOBAL__sub_I_ElemNumber.cpp"}

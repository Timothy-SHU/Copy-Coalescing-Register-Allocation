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

$_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1025XalanDecimalFormatSymbols11setInfinityERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1025XalanDecimalFormatSymbols6setNaNERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv = comdat any

$_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv = comdat any

$_ZNK11xalanc_1_1010XalanQName7isValidEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZN11xalanc_1_106lengthEPKt = comdat any

$_ZN11xalanc_1_1025XalanDecimalFormatSymbols19setDecimalSeparatorEt = comdat any

$_ZN11xalanc_1_1025XalanDecimalFormatSymbols20setGroupingSeparatorEt = comdat any

$_ZN11xalanc_1_1025XalanDecimalFormatSymbols11setInfinityEPKt = comdat any

$_ZN11xalanc_1_1025XalanDecimalFormatSymbols12setMinusSignEt = comdat any

$_ZN11xalanc_1_1025XalanDecimalFormatSymbols6setNaNEPKt = comdat any

$_ZN11xalanc_1_1025XalanDecimalFormatSymbols10setPercentEt = comdat any

$_ZN11xalanc_1_1025XalanDecimalFormatSymbols10setPerMillEt = comdat any

$_ZN11xalanc_1_1025XalanDecimalFormatSymbols12setZeroDigitEt = comdat any

$_ZN11xalanc_1_1025XalanDecimalFormatSymbols8setDigitEt = comdat any

$_ZN11xalanc_1_1025XalanDecimalFormatSymbols19setPatternSeparatorEt = comdat any

$_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1025XalanDecimalFormatSymbols11getInfinityEv = comdat any

$_ZNK11xalanc_1_1025XalanDecimalFormatSymbols6getNaNEv = comdat any

$_ZNK11xalanc_1_1025XalanDecimalFormatSymbolsneERKS0_ = comdat any

$_ZN11xalanc_1_1014XalanDOMStringaSERKS0_ = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignERKS0_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZSt4copyIPKtPtET0_T_S4_S3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_ = comdat any

$_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPtET_S1_ = comdat any

$_ZSt12__niter_wrapIPtET_RKS1_S1_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPtET_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_ = comdat any

$_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPKtET_S2_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKtET_S2_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_ = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZN11xalanc_1_1014XalanDOMStringaSEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6appendEPKt = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

@_ZTVN11xalanc_1_1017ElemDecimalFormatE = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017ElemDecimalFormatE, ptr @_ZN11xalanc_1_1017ElemDecimalFormatD2Ev, ptr @_ZN11xalanc_1_1017ElemDecimalFormatD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1017ElemDecimalFormat14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1017ElemDecimalFormat8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1017ElemDecimalFormatE = dso_local constant [35 x i8] c"N11xalanc_1_1017ElemDecimalFormatE\00", align 1
@_ZTIN11xalanc_1_1019ElemTemplateElementE = external constant ptr
@_ZTIN11xalanc_1_1017ElemDecimalFormatE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017ElemDecimalFormatE, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE }, align 8
@_ZN11xalanc_1_10L7s_emptyE = internal global %"class.xalanc_1_10::XalanQNameByValue" zeroinitializer, align 8
@__dso_handle = external hidden global i8
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
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ElemDecimalFormat.cpp, ptr null }]

@_ZN11xalanc_1_1017ElemDecimalFormatC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1017ElemDecimalFormatC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_1017ElemDecimalFormatD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017ElemDecimalFormatD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1017ElemDecimalFormatD0Ev(ptr noundef nonnull align 8 dereferenceable(544) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1017ElemDecimalFormatD2Ev(ptr noundef nonnull align 8 dereferenceable(544) %0) #15
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017ElemDecimalFormat14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !144 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants41ELEMNAME_DECIMALFORMAT_WITH_PREFIX_STRINGE, align 8, !tbaa !145
  ret ptr %2
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb(ptr noundef nonnull align 8 dereferenceable(322), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017ElemDecimalFormat8getXPathEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(544) %0, i32 noundef %1) unnamed_addr #3 align 2 !prof !144 {
  switch i32 %1, label %12 [
    i32 0, label %3
    i32 1, label %6
    i32 2, label %9
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !149
  br label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !172
  br label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !173
  br label %12

12:                                               ; preds = %2, %9, %6, %3
  %13 = phi ptr [ null, %2 ], [ %11, %9 ], [ %8, %6 ], [ %5, %3 ]
  ret ptr %13
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #5 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #17
  tail call void @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) @_ZN11xalanc_1_10L7s_emptyE, ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1017XalanQNameByValueD1Ev, ptr nonnull @_ZN11xalanc_1_10L7s_emptyE, ptr nonnull @__dso_handle) #18
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017ElemDecimalFormatC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !144 {
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %4, i32 noundef %5, i32 noundef 33) #17
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1017ElemDecimalFormatE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !174
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store ptr @_ZN11xalanc_1_10L7s_emptyE, ptr %10, align 8, !tbaa !176
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 5
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #17
  invoke void @_ZN11xalanc_1_1025XalanDecimalFormatSymbolsC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(184) %11, ptr noundef nonnull align 8 dereferenceable(8) %12) #17
          to label %13 unwind label %36

13:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #18
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #17
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %14) #17
          to label %15 unwind label %38

15:                                               ; preds = %13
  invoke void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols11setInfinityERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(184) %11, ptr noundef nonnull align 8 dereferenceable(36) %7) #17
          to label %16 unwind label %40

16:                                               ; preds = %15
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #18
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #17
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %17) #17
          to label %18 unwind label %44

18:                                               ; preds = %16
  invoke void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols6setNaNERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(184) %11, ptr noundef nonnull align 8 dereferenceable(36) %8) #17
          to label %19 unwind label %46

19:                                               ; preds = %18
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %8) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #18
  %20 = load ptr, ptr %3, align 8, !tbaa !174
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
          to label %24 unwind label %50

24:                                               ; preds = %19
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8
  %28 = load ptr, ptr @_ZN11xalanc_1_109Constants25ATTRNAME_DECIMALSEPARATORE, align 8
  %29 = load ptr, ptr @_ZN11xalanc_1_109Constants26ATTRNAME_GROUPINGSEPARATORE, align 8
  %30 = load ptr, ptr @_ZN11xalanc_1_109Constants17ATTRNAME_INFINITYE, align 8
  %31 = load ptr, ptr @_ZN11xalanc_1_109Constants18ATTRNAME_MINUSSIGNE, align 8
  %32 = load ptr, ptr @_ZN11xalanc_1_109Constants41ELEMNAME_DECIMALFORMAT_WITH_PREFIX_STRINGE, align 8
  br label %52

33:                                               ; preds = %270, %24
  %34 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XalanDecimalFormatSymbols11getInfinityEv(ptr noundef nonnull align 8 dereferenceable(184) %11) #17
  %35 = invoke noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %34) #17
          to label %273 unwind label %50

36:                                               ; preds = %6
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %299

38:                                               ; preds = %13
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %42

40:                                               ; preds = %15
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #15
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi { ptr, i32 } [ %41, %40 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #18
  br label %297

44:                                               ; preds = %16
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %48

46:                                               ; preds = %18
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %8) #15
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #18
  br label %297

50:                                               ; preds = %282, %277, %275, %33, %19
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %297

52:                                               ; preds = %26, %270
  %53 = phi i32 [ 0, %26 ], [ %271, %270 ]
  %54 = load ptr, ptr %3, align 8, !tbaa !174
  %55 = getelementptr inbounds ptr, ptr %54, i64 3
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %53) #17
          to label %58 unwind label %88

58:                                               ; preds = %52
  %59 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(36) %27) #17
          to label %60 unwind label %88

60:                                               ; preds = %58
  br i1 %59, label %61, label %90

61:                                               ; preds = %60
  %62 = load ptr, ptr %3, align 8, !tbaa !174
  %63 = getelementptr inbounds ptr, ptr %62, i64 5
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %53) #17
          to label %66 unwind label %88

66:                                               ; preds = %61
  %67 = call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #17
  %68 = call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %67) #17
  %69 = load ptr, ptr %0, align 8, !tbaa !174
  %70 = getelementptr inbounds ptr, ptr %69, i64 4
  %71 = load ptr, ptr %70, align 8
  %72 = invoke noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(322) %0) #17
          to label %73 unwind label %88

73:                                               ; preds = %66
  %74 = load ptr, ptr %1, align 8, !tbaa !174
  %75 = getelementptr inbounds ptr, ptr %74, i64 41
  %76 = load ptr, ptr %75, align 8
  %77 = invoke noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %65, ptr noundef nonnull align 8 dereferenceable(80) %68, ptr noundef %72, i1 noundef zeroext false) #17
          to label %78 unwind label %88

78:                                               ; preds = %73
  store ptr %77, ptr %10, align 8, !tbaa !176
  %79 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName7isValidEv(ptr noundef nonnull align 8 dereferenceable(8) %77) #17
          to label %80 unwind label %88

80:                                               ; preds = %78
  br i1 %79, label %270, label %81

81:                                               ; preds = %80
  %82 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %27) #17
          to label %83 unwind label %88

83:                                               ; preds = %81
  %84 = load ptr, ptr %3, align 8, !tbaa !174
  %85 = getelementptr inbounds ptr, ptr %84, i64 5
  %86 = load ptr, ptr %85, align 8
  %87 = invoke noundef ptr %86(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %53) #17
          to label %266 unwind label %88

88:                                               ; preds = %266, %264, %258, %239, %220, %201, %182, %163, %162, %157, %153, %135, %134, %129, %126, %108, %90, %83, %81, %78, %73, %66, %61, %58, %52
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %297

90:                                               ; preds = %60
  %91 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(36) %28) #17
          to label %92 unwind label %88

92:                                               ; preds = %90
  br i1 %91, label %93, label %108

93:                                               ; preds = %92
  %94 = load ptr, ptr %3, align 8, !tbaa !174
  %95 = getelementptr inbounds ptr, ptr %94, i64 5
  %96 = load ptr, ptr %95, align 8
  %97 = invoke noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %53) #17
          to label %98 unwind label %103

98:                                               ; preds = %93
  %99 = call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %97) #17
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i16, ptr %97, align 2, !tbaa !177
  call void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols19setDecimalSeparatorEt(ptr noundef nonnull align 8 dereferenceable(184) %11, i16 noundef zeroext %102) #17
  br label %270

103:                                              ; preds = %107, %105, %93
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %297

105:                                              ; preds = %98
  %106 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %32) #17
          to label %107 unwind label %103

107:                                              ; preds = %105
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 65, ptr noundef %106, ptr noundef %57, ptr noundef %97) #17
          to label %270 unwind label %103

108:                                              ; preds = %92
  %109 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(36) %29) #17
          to label %110 unwind label %88

110:                                              ; preds = %108
  br i1 %109, label %111, label %126

111:                                              ; preds = %110
  %112 = load ptr, ptr %3, align 8, !tbaa !174
  %113 = getelementptr inbounds ptr, ptr %112, i64 5
  %114 = load ptr, ptr %113, align 8
  %115 = invoke noundef ptr %114(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %53) #17
          to label %116 unwind label %121

116:                                              ; preds = %111
  %117 = call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %115) #17
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i16, ptr %115, align 2, !tbaa !177
  call void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols20setGroupingSeparatorEt(ptr noundef nonnull align 8 dereferenceable(184) %11, i16 noundef zeroext %120) #17
  br label %270

121:                                              ; preds = %125, %123, %111
  %122 = landingpad { ptr, i32 }
          cleanup
  br label %297

123:                                              ; preds = %116
  %124 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %32) #17
          to label %125 unwind label %121

125:                                              ; preds = %123
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 65, ptr noundef %124, ptr noundef %57, ptr noundef %115) #17
          to label %270 unwind label %121

126:                                              ; preds = %110
  %127 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(36) %30) #17
          to label %128 unwind label %88

128:                                              ; preds = %126
  br i1 %127, label %129, label %135

129:                                              ; preds = %128
  %130 = load ptr, ptr %3, align 8, !tbaa !174
  %131 = getelementptr inbounds ptr, ptr %130, i64 5
  %132 = load ptr, ptr %131, align 8
  %133 = invoke noundef ptr %132(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %53) #17
          to label %134 unwind label %88

134:                                              ; preds = %129
  invoke void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols11setInfinityEPKt(ptr noundef nonnull align 8 dereferenceable(184) %11, ptr noundef %133) #17
          to label %270 unwind label %88

135:                                              ; preds = %128
  %136 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(36) %31) #17
          to label %137 unwind label %88

137:                                              ; preds = %135
  br i1 %136, label %138, label %153

138:                                              ; preds = %137
  %139 = load ptr, ptr %3, align 8, !tbaa !174
  %140 = getelementptr inbounds ptr, ptr %139, i64 5
  %141 = load ptr, ptr %140, align 8
  %142 = invoke noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %53) #17
          to label %143 unwind label %148

143:                                              ; preds = %138
  %144 = call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %142) #17
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i16, ptr %142, align 2, !tbaa !177
  call void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols12setMinusSignEt(ptr noundef nonnull align 8 dereferenceable(184) %11, i16 noundef zeroext %147) #17
  br label %270

148:                                              ; preds = %152, %150, %138
  %149 = landingpad { ptr, i32 }
          cleanup
  br label %297

150:                                              ; preds = %143
  %151 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %32) #17
          to label %152 unwind label %148

152:                                              ; preds = %150
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 65, ptr noundef %151, ptr noundef %57, ptr noundef %142) #17
          to label %270 unwind label %148

153:                                              ; preds = %137
  %154 = load ptr, ptr @_ZN11xalanc_1_109Constants12ATTRNAME_NANE, align 8
  %155 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(36) %154) #17
          to label %156 unwind label %88

156:                                              ; preds = %153
  br i1 %155, label %157, label %163

157:                                              ; preds = %156
  %158 = load ptr, ptr %3, align 8, !tbaa !174
  %159 = getelementptr inbounds ptr, ptr %158, i64 5
  %160 = load ptr, ptr %159, align 8
  %161 = invoke noundef ptr %160(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %53) #17
          to label %162 unwind label %88

162:                                              ; preds = %157
  invoke void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols6setNaNEPKt(ptr noundef nonnull align 8 dereferenceable(184) %11, ptr noundef %161) #17
          to label %270 unwind label %88

163:                                              ; preds = %156
  %164 = load ptr, ptr @_ZN11xalanc_1_109Constants16ATTRNAME_PERCENTE, align 8
  %165 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(36) %164) #17
          to label %166 unwind label %88

166:                                              ; preds = %163
  br i1 %165, label %167, label %182

167:                                              ; preds = %166
  %168 = load ptr, ptr %3, align 8, !tbaa !174
  %169 = getelementptr inbounds ptr, ptr %168, i64 5
  %170 = load ptr, ptr %169, align 8
  %171 = invoke noundef ptr %170(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %53) #17
          to label %172 unwind label %177

172:                                              ; preds = %167
  %173 = call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %171) #17
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i16, ptr %171, align 2, !tbaa !177
  call void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols10setPercentEt(ptr noundef nonnull align 8 dereferenceable(184) %11, i16 noundef zeroext %176) #17
  br label %270

177:                                              ; preds = %181, %179, %167
  %178 = landingpad { ptr, i32 }
          cleanup
  br label %297

179:                                              ; preds = %172
  %180 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %32) #17
          to label %181 unwind label %177

181:                                              ; preds = %179
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 65, ptr noundef %180, ptr noundef %57, ptr noundef %171) #17
          to label %270 unwind label %177

182:                                              ; preds = %166
  %183 = load ptr, ptr @_ZN11xalanc_1_109Constants17ATTRNAME_PERMILLEE, align 8
  %184 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(36) %183) #17
          to label %185 unwind label %88

185:                                              ; preds = %182
  br i1 %184, label %186, label %201

186:                                              ; preds = %185
  %187 = load ptr, ptr %3, align 8, !tbaa !174
  %188 = getelementptr inbounds ptr, ptr %187, i64 5
  %189 = load ptr, ptr %188, align 8
  %190 = invoke noundef ptr %189(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %53) #17
          to label %191 unwind label %196

191:                                              ; preds = %186
  %192 = call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %190) #17
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = load i16, ptr %190, align 2, !tbaa !177
  call void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols10setPerMillEt(ptr noundef nonnull align 8 dereferenceable(184) %11, i16 noundef zeroext %195) #17
  br label %270

196:                                              ; preds = %200, %198, %186
  %197 = landingpad { ptr, i32 }
          cleanup
  br label %297

198:                                              ; preds = %191
  %199 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %32) #17
          to label %200 unwind label %196

200:                                              ; preds = %198
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 65, ptr noundef %199, ptr noundef %57, ptr noundef %190) #17
          to label %270 unwind label %196

201:                                              ; preds = %185
  %202 = load ptr, ptr @_ZN11xalanc_1_109Constants18ATTRNAME_ZERODIGITE, align 8
  %203 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(36) %202) #17
          to label %204 unwind label %88

204:                                              ; preds = %201
  br i1 %203, label %205, label %220

205:                                              ; preds = %204
  %206 = load ptr, ptr %3, align 8, !tbaa !174
  %207 = getelementptr inbounds ptr, ptr %206, i64 5
  %208 = load ptr, ptr %207, align 8
  %209 = invoke noundef ptr %208(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %53) #17
          to label %210 unwind label %215

210:                                              ; preds = %205
  %211 = call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %209) #17
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i16, ptr %209, align 2, !tbaa !177
  call void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols12setZeroDigitEt(ptr noundef nonnull align 8 dereferenceable(184) %11, i16 noundef zeroext %214) #17
  br label %270

215:                                              ; preds = %219, %217, %205
  %216 = landingpad { ptr, i32 }
          cleanup
  br label %297

217:                                              ; preds = %210
  %218 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %32) #17
          to label %219 unwind label %215

219:                                              ; preds = %217
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 65, ptr noundef %218, ptr noundef %57, ptr noundef %209) #17
          to label %270 unwind label %215

220:                                              ; preds = %204
  %221 = load ptr, ptr @_ZN11xalanc_1_109Constants14ATTRNAME_DIGITE, align 8
  %222 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(36) %221) #17
          to label %223 unwind label %88

223:                                              ; preds = %220
  br i1 %222, label %224, label %239

224:                                              ; preds = %223
  %225 = load ptr, ptr %3, align 8, !tbaa !174
  %226 = getelementptr inbounds ptr, ptr %225, i64 5
  %227 = load ptr, ptr %226, align 8
  %228 = invoke noundef ptr %227(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %53) #17
          to label %229 unwind label %234

229:                                              ; preds = %224
  %230 = call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %228) #17
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %236

232:                                              ; preds = %229
  %233 = load i16, ptr %228, align 2, !tbaa !177
  call void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols8setDigitEt(ptr noundef nonnull align 8 dereferenceable(184) %11, i16 noundef zeroext %233) #17
  br label %270

234:                                              ; preds = %238, %236, %224
  %235 = landingpad { ptr, i32 }
          cleanup
  br label %297

236:                                              ; preds = %229
  %237 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %32) #17
          to label %238 unwind label %234

238:                                              ; preds = %236
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 65, ptr noundef %237, ptr noundef %57, ptr noundef %228) #17
          to label %270 unwind label %234

239:                                              ; preds = %223
  %240 = load ptr, ptr @_ZN11xalanc_1_109Constants25ATTRNAME_PATTERNSEPARATORE, align 8
  %241 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(36) %240) #17
          to label %242 unwind label %88

242:                                              ; preds = %239
  br i1 %241, label %243, label %258

243:                                              ; preds = %242
  %244 = load ptr, ptr %3, align 8, !tbaa !174
  %245 = getelementptr inbounds ptr, ptr %244, i64 5
  %246 = load ptr, ptr %245, align 8
  %247 = invoke noundef ptr %246(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %53) #17
          to label %248 unwind label %253

248:                                              ; preds = %243
  %249 = call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %247) #17
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %255

251:                                              ; preds = %248
  %252 = load i16, ptr %247, align 2, !tbaa !177
  call void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols19setPatternSeparatorEt(ptr noundef nonnull align 8 dereferenceable(184) %11, i16 noundef zeroext %252) #17
  br label %270

253:                                              ; preds = %257, %255, %243
  %254 = landingpad { ptr, i32 }
          cleanup
  br label %297

255:                                              ; preds = %248
  %256 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %32) #17
          to label %257 unwind label %253

257:                                              ; preds = %255
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 65, ptr noundef %256, ptr noundef %57, ptr noundef %247) #17
          to label %270 unwind label %253

258:                                              ; preds = %242
  %259 = load ptr, ptr %0, align 8, !tbaa !174
  %260 = getelementptr inbounds ptr, ptr %259, i64 5
  %261 = load ptr, ptr %260, align 8
  %262 = invoke noundef zeroext i1 %261(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %53, ptr noundef nonnull align 8 dereferenceable(16) %1) #17
          to label %263 unwind label %88

263:                                              ; preds = %258
  br i1 %262, label %270, label %264

264:                                              ; preds = %263
  %265 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %32) #17
          to label %266 unwind label %88

266:                                              ; preds = %83, %264
  %267 = phi i32 [ 74, %264 ], [ 62, %83 ]
  %268 = phi ptr [ %265, %264 ], [ %82, %83 ]
  %269 = phi ptr [ %57, %264 ], [ %87, %83 ]
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %267, ptr noundef %268, ptr noundef %269) #17
          to label %270 unwind label %88

270:                                              ; preds = %266, %251, %257, %232, %238, %213, %219, %194, %200, %175, %181, %146, %152, %119, %125, %101, %107, %134, %162, %263, %80
  %271 = add nuw i32 %53, 1
  %272 = icmp eq i32 %271, %23
  br i1 %272, label %33, label %52, !llvm.loop !178

273:                                              ; preds = %33
  %274 = icmp eq i32 %35, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %273
  %276 = load ptr, ptr @_ZN11xalanc_1_109Constants16ATTRVAL_INFINITYE, align 8, !tbaa !145
  invoke void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols11setInfinityERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(184) %11, ptr noundef nonnull align 8 dereferenceable(36) %276) #17
          to label %277 unwind label %50

277:                                              ; preds = %275, %273
  %278 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XalanDecimalFormatSymbols6getNaNEv(ptr noundef nonnull align 8 dereferenceable(184) %11) #17
  %279 = invoke noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %278) #17
          to label %280 unwind label %50

280:                                              ; preds = %277
  %281 = icmp eq i32 %279, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %280
  %283 = load ptr, ptr @_ZN11xalanc_1_109Constants11ATTRVAL_NANE, align 8, !tbaa !145
  invoke void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols6setNaNERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(184) %11, ptr noundef nonnull align 8 dereferenceable(36) %283) #17
          to label %284 unwind label %50

284:                                              ; preds = %282, %280
  %285 = load ptr, ptr %10, align 8, !tbaa !176
  %286 = invoke noundef ptr @_ZNK11xalanc_1_1010Stylesheet23getDecimalFormatSymbolsERKNS_10XalanQNameE(ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %285) #17
          to label %287 unwind label %294

287:                                              ; preds = %284
  %288 = icmp eq ptr %286, null
  br i1 %288, label %296, label %289

289:                                              ; preds = %287
  %290 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1025XalanDecimalFormatSymbolsneERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %286, ptr noundef nonnull align 8 dereferenceable(184) %11) #17
          to label %291 unwind label %294

291:                                              ; preds = %289
  br i1 %290, label %292, label %296

292:                                              ; preds = %291
  %293 = load ptr, ptr @_ZN11xalanc_1_109Constants41ELEMNAME_DECIMALFORMAT_WITH_PREFIX_STRINGE, align 8, !tbaa !145
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 66, ptr noundef nonnull align 8 dereferenceable(36) %293) #17
          to label %296 unwind label %294

294:                                              ; preds = %292, %289, %284
  %295 = landingpad { ptr, i32 }
          cleanup
  br label %297

296:                                              ; preds = %292, %291, %287
  ret void

297:                                              ; preds = %50, %294, %253, %234, %215, %196, %177, %148, %121, %103, %88, %48, %42
  %298 = phi { ptr, i32 } [ %49, %48 ], [ %43, %42 ], [ %295, %294 ], [ %51, %50 ], [ %89, %88 ], [ %104, %103 ], [ %122, %121 ], [ %149, %148 ], [ %178, %177 ], [ %197, %196 ], [ %216, %215 ], [ %235, %234 ], [ %254, %253 ]
  call void @_ZN11xalanc_1_1025XalanDecimalFormatSymbolsD1Ev(ptr noundef nonnull align 8 dereferenceable(184) %11) #15
  br label %299

299:                                              ; preds = %297, %36
  %300 = phi { ptr, i32 } [ %298, %297 ], [ %37, %36 ]
  call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #15
  resume { ptr, i32 } %300
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !180 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1025XalanDecimalFormatSymbolsC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols11setInfinityERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #8 comdat align 2 !prof !144 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 5
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %1) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 !prof !183 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols6setNaNERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #8 comdat align 2 !prof !144 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 10
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #8 comdat !prof !184 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %0) #17
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #0 comdat align 2 !prof !185 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !186
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #0 comdat align 2 !prof !187 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName7isValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #8 comdat align 2 !prof !188 {
  %2 = load ptr, ptr %0, align 8, !tbaa !174
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %5) #17
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #8 comdat align 2 !prof !189 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  br i1 %2, label %5, label %3, !prof !190

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) local_unnamed_addr #0 comdat !prof !191 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !177
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !prof !192, !llvm.loop !193

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols19setDecimalSeparatorEt(ptr noundef nonnull align 8 dereferenceable(184) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !144 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 1
  store i16 %1, ptr %3, align 8, !tbaa !194
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols20setGroupingSeparatorEt(ptr noundef nonnull align 8 dereferenceable(184) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !144 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 3
  store i16 %1, ptr %3, align 4, !tbaa !195
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols11setInfinityEPKt(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 !prof !144 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 5
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols12setMinusSignEt(ptr noundef nonnull align 8 dereferenceable(184) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !144 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 7
  store i16 %1, ptr %3, align 8, !tbaa !196
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols6setNaNEPKt(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 !prof !144 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 10
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols10setPercentEt(ptr noundef nonnull align 8 dereferenceable(184) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !144 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 12
  store i16 %1, ptr %3, align 2, !tbaa !197
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols10setPerMillEt(ptr noundef nonnull align 8 dereferenceable(184) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !144 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 13
  store i16 %1, ptr %3, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols12setZeroDigitEt(ptr noundef nonnull align 8 dereferenceable(184) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !144 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 14
  store i16 %1, ptr %3, align 2, !tbaa !199
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols8setDigitEt(ptr noundef nonnull align 8 dereferenceable(184) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !144 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 2
  store i16 %1, ptr %3, align 2, !tbaa !200
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanDecimalFormatSymbols19setPatternSeparatorEt(ptr noundef nonnull align 8 dereferenceable(184) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !144 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 11
  store i16 %1, ptr %3, align 8, !tbaa !201
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #8 comdat !prof !202 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XalanDecimalFormatSymbols11getInfinityEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #0 comdat align 2 !prof !144 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 5
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XalanDecimalFormatSymbols6getNaNEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #0 comdat align 2 !prof !144 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %0, i64 0, i32 10
  ret ptr %2
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1010Stylesheet23getDecimalFormatSymbolsERKNS_10XalanQNameE(ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1025XalanDecimalFormatSymbolsneERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) local_unnamed_addr #8 comdat align 2 !prof !144 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1025XalanDecimalFormatSymbolseqERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) #17
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1025XalanDecimalFormatSymbolsD1Ev(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #8 comdat align 2 !prof !203 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #8 comdat align 2 !prof !203 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %9, label %4, !prof !204

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !205
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !205
  br label %9

9:                                                ; preds = %4, %2
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !206 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !203 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %33, label %5, !prof !204

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !207
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !208
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13, !prof !209

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %12 = load ptr, ptr %0, align 8, !tbaa !210
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0) #17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br label %33

13:                                               ; preds = %5
  %14 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !208
  %17 = load i64, ptr %8, align 8, !tbaa !208
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20, !prof !211

19:                                               ; preds = %13
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %17) #17
  br label %28

20:                                               ; preds = %13
  %21 = icmp ult i64 %16, %17
  br i1 %21, label %22, label %28, !prof !212

22:                                               ; preds = %20
  %23 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  %24 = load i64, ptr %15, align 8, !tbaa !208
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  %26 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %27 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %26, ptr noundef %25, ptr noundef %27) #17
  br label %28

28:                                               ; preds = %20, %22, %19
  %29 = phi ptr [ %14, %19 ], [ %25, %22 ], [ %14, %20 ]
  %30 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  %31 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %32 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %30, ptr noundef %29, ptr noundef %31) #17
  br label %33

33:                                               ; preds = %11, %28, %2
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !213 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !214 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !210
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !208
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !215

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #17
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #17
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !216

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #17
  store ptr %24, ptr %8, align 8, !tbaa !217
  store i64 %3, ptr %7, align 8, !tbaa !207
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !218 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %3 = load ptr, ptr %0, align 8, !tbaa !210
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !217
  %7 = load ptr, ptr %1, align 8, !tbaa !210
  store ptr %7, ptr %0, align 8, !tbaa !210
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !219
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !217
  store ptr %11, ptr %5, align 8, !tbaa !217
  store ptr %3, ptr %1, align 8, !tbaa !210
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !219
  store <2 x i64> %9, ptr %4, align 8, !tbaa !219
  store <2 x i64> %12, ptr %8, align 8, !tbaa !219
  store ptr %6, ptr %10, align 8, !tbaa !217
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !220 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !207
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5, !prof !221

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #17
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !217
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %10) #17
          to label %11 unwind label %12

11:                                               ; preds = %8, %1
  ret void

12:                                               ; preds = %8, %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 !prof !222 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 !prof !223 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %5 = load i64, ptr %3, align 8, !tbaa !208
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !224, !llvm.loop !225

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !222 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !217
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !226 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #17
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %76, label %8, !prof !227

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !228

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #17
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %75, label %16, !prof !229

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !210
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 2 dereferenceable(2) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #17
  %23 = getelementptr inbounds i16, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !208
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !208
  %26 = getelementptr inbounds i16, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %75, label %18, !prof !230, !llvm.loop !231

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %43, !prof !232

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %32 = load ptr, ptr %0, align 8, !tbaa !210
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #17
  %33 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  %34 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %34, ptr noundef %1) #17
          to label %35 unwind label %41

35:                                               ; preds = %31
  %36 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %36, ptr noundef %2, ptr noundef %3) #17
          to label %37 unwind label %41

37:                                               ; preds = %35
  %38 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  %39 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %38, ptr noundef %1, ptr noundef %39) #17
          to label %40 unwind label %41

40:                                               ; preds = %37
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %75

41:                                               ; preds = %37, %35, %31
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  resume { ptr, i32 } %42

43:                                               ; preds = %28
  %44 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %45 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %44) #17
  %46 = icmp ugt i64 %45, %6
  br i1 %46, label %62, label %47, !prof !233

47:                                               ; preds = %43
  %48 = getelementptr inbounds i16, ptr %2, i64 %45
  %49 = icmp eq ptr %48, %3
  br i1 %49, label %50, label %52, !prof !234

50:                                               ; preds = %52, %47
  %51 = icmp eq ptr %44, %1
  br i1 %51, label %60, label %56, !prof !234

52:                                               ; preds = %47, %52
  %53 = phi ptr [ %54, %52 ], [ %48, %47 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %53) #17
  %54 = getelementptr inbounds i16, ptr %53, i64 1
  %55 = icmp eq ptr %54, %3
  br i1 %55, label %50, label %52, !prof !235, !llvm.loop !236

56:                                               ; preds = %50, %56
  %57 = phi ptr [ %58, %56 ], [ %1, %50 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %57) #17
  %58 = getelementptr inbounds i16, ptr %57, i64 1
  %59 = icmp eq ptr %58, %44
  br i1 %59, label %60, label %56, !prof !237, !llvm.loop !238

60:                                               ; preds = %56, %50
  %61 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %48, ptr noundef %1) #17
  br label %75

62:                                               ; preds = %43
  %63 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %64 = sub i64 0, %6
  %65 = getelementptr inbounds i16, ptr %63, i64 %64
  %66 = icmp eq ptr %65, %44
  br i1 %66, label %71, label %67

67:                                               ; preds = %62, %67
  %68 = phi ptr [ %69, %67 ], [ %65, %62 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %68) #17
  %69 = getelementptr inbounds i16, ptr %68, i64 1
  %70 = icmp eq ptr %69, %44
  br i1 %70, label %71, label %67, !llvm.loop !239

71:                                               ; preds = %67, %62
  %72 = getelementptr inbounds i16, ptr %44, i64 %64
  %73 = tail call noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %1, ptr noundef nonnull %72, ptr noundef %44) #17
  %74 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #17
  br label %75

75:                                               ; preds = %18, %13, %60, %71, %40
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  br label %76

76:                                               ; preds = %4, %75
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !240 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat !prof !241 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) #17
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %1) #17
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !242 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !217
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !243 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #8 comdat align 2 !prof !244 {
  store ptr %1, ptr %0, align 8, !tbaa !210
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !208
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !207
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !245

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #17
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !217
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 !prof !246 {
  %3 = shl i64 %1, 1
  %4 = load ptr, ptr %0, align 8, !tbaa !210
  %5 = load ptr, ptr %4, align 8, !tbaa !174
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #17
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 !prof !246 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !247

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #17
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !248, !llvm.loop !249

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 !prof !246 {
  %3 = load ptr, ptr %0, align 8, !tbaa !210
  %4 = load ptr, ptr %3, align 8, !tbaa !174
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #0 comdat align 2 !prof !250 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !222 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !217
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !208
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !251 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !208
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !208
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !217
  %7 = getelementptr inbounds i16, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %7) #17
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 !prof !252 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #17
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !253 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !208
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 !prof !254 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !255

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #17
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !250 {
  %4 = load i16, ptr %1, align 2, !tbaa !177
  store i16 %4, ptr %0, align 2, !tbaa !177
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !256 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !207
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !257 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !208
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !207
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !258

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %11 = load ptr, ptr %0, align 8, !tbaa !210
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #17
  %13 = load i64, ptr %4, align 8, !tbaa !208
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !208
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %21 = load ptr, ptr %0, align 8, !tbaa !210
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #17
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1) #17
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat !prof !144 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #17
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #17
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 comdat !prof !252 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !145
  call void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %4 = call noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #17
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !252 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 1
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !252 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 !prof !259 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %4 = load ptr, ptr %0, align 8, !tbaa !210
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !260 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !217
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !208
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat !prof !144 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !145
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #15
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #15
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #15
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #17
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #17
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !261 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !262 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat !prof !144 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !263 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat !prof !144 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !144 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 1
  %8 = icmp eq ptr %1, %0
  %9 = sub nsw i64 0, %7
  br i1 %8, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds i16, ptr %2, i64 %9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %11, ptr align 2 %0, i64 %6, i1 false)
  br label %12

12:                                               ; preds = %3, %10
  %13 = getelementptr inbounds i16, ptr %2, i64 %9
  ret ptr %13
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat !prof !241 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !145
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) #15
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %1) #15
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #15
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #17
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #17
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !264 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat !prof !241 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !264 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat !prof !241 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !262 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !265

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %2, ptr align 2 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #8 comdat !prof !184 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #17
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 !prof !184 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %3, ptr noundef %1) #17
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 !prof !266 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #17
  %4 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #17
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef %4) #17
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !267 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !208
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !268 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !217
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 !prof !269 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 !prof !270 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #17
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #17
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 !prof !271 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #17
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3) #17
  ret ptr %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #8 comdat align 2 !prof !272 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !273 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !205
  ret i32 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1025XalanDecimalFormatSymbolseqERKS0_(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1017ElemDecimalFormatD2Ev(ptr noundef nonnull align 8 dereferenceable(544) %0) unnamed_addr #0 align 2 !prof !144 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1017ElemDecimalFormatE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !174
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemDecimalFormat", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1025XalanDecimalFormatSymbolsD1Ev(ptr noundef nonnull align 8 dereferenceable(184) %2) #15
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_ElemDecimalFormat.cpp() #5 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind optsize }
attributes #16 = { builtin nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!143}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
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
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142}
!36 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!37 = !{ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, i64 1899}
!38 = !{ptr @_ZNK11xalanc_1_1010XalanQName7isValidEv, ptr @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE, i64 300}
!39 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!40 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!41 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!42 = !{ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 66708615}
!43 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_, ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_, i64 41614}
!44 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 83228}
!45 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, i64 41613}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 83228}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 13}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 13}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 13}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 82485}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, i64 355}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 82485}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 40885}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40885}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 41600}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, i64 41600}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm, i64 19}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 19}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 19}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 19}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 19}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 19}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 64551584}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64551608}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 170601494}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300390}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300308}
!73 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 163}
!74 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!75 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 82509}
!76 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, i64 64729253}
!77 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!78 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 311656032}
!79 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 157736530}
!80 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, i64 155828045}
!81 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 240731574}
!82 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, i64 133170775}
!83 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 30012996397}
!84 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 22657270}
!85 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 20748786}
!86 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 20748786}
!87 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246298}
!88 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 20748726}
!89 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 20748785}
!90 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614813}
!91 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, i64 1908484}
!92 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_, i64 1}
!93 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!94 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!95 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt12__miter_baseIPKtET_S2_, i64 3901146}
!96 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!97 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!98 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 1}
!99 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64147281}
!100 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!101 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 2689195954}
!102 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 1344597977}
!103 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 185895030}
!104 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 156073599}
!105 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 133170778}
!106 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 22}
!107 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 133170778}
!108 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 155828047}
!109 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 248301312}
!110 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 124150655}
!111 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 124150655}
!112 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!113 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 1}
!114 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 1}
!115 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!116 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 185895030}
!117 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 185895030}
!118 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 129103172}
!119 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 64551586}
!120 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 64551586}
!121 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 64551586}
!122 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPKtET_S2_, i64 3901146}
!123 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 1950573}
!124 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!125 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 1950573}
!126 = !{ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!127 = !{ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 1950573}
!128 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, i64 1899}
!129 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 1899}
!130 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, i64 1899}
!131 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 807446}
!132 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 403723}
!133 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!134 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, i64 1084346}
!135 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 2169010}
!136 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 1084505}
!137 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, i64 1084505}
!138 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 1179818}
!139 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 1179818}
!140 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527000}
!141 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527000}
!142 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337976}
!143 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!144 = !{!"function_entry_count", i64 0}
!145 = !{!146, !146, i64 0}
!146 = !{!"any pointer", !147, i64 0}
!147 = !{!"omnipotent char", !148, i64 0}
!148 = !{!"Simple C++ TBAA"}
!149 = !{!150, !146, i64 344}
!150 = !{!"_ZTSN11xalanc_1_1017ElemDecimalFormatE", !151, i64 0, !146, i64 328, !146, i64 336, !146, i64 344, !146, i64 352, !169, i64 360}
!151 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !152, i64 0, !146, i64 8, !153, i64 16, !164, i64 248, !146, i64 256, !146, i64 264, !146, i64 272, !147, i64 280, !165, i64 288, !168, i64 320}
!152 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!153 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !154, i64 0, !156, i64 32, !157, i64 64, !158, i64 96}
!154 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !146, i64 0, !155, i64 8, !155, i64 16, !146, i64 24}
!155 = !{!"long", !147, i64 0}
!156 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !146, i64 0, !155, i64 8, !155, i64 16, !146, i64 24}
!157 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !146, i64 0, !155, i64 8, !155, i64 16, !146, i64 24}
!158 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !159, i64 0, !160, i64 1, !146, i64 8, !161, i64 16, !155, i64 24, !155, i64 32, !162, i64 40, !162, i64 64, !163, i64 88, !155, i64 120, !155, i64 128}
!159 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!160 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!161 = !{!"float", !147, i64 0}
!162 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !146, i64 0, !146, i64 8, !146, i64 16}
!163 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !146, i64 0, !155, i64 8, !155, i64 16, !146, i64 24}
!164 = !{!"int", !147, i64 0}
!165 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !166, i64 0, !155, i64 8, !155, i64 16, !146, i64 24}
!166 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !167, i64 0}
!167 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!168 = !{!"short", !147, i64 0}
!169 = !{!"_ZTSN11xalanc_1_1025XalanDecimalFormatSymbolsE", !170, i64 0, !168, i64 40, !168, i64 42, !168, i64 44, !170, i64 48, !170, i64 88, !168, i64 128, !168, i64 130, !170, i64 136, !168, i64 176, !168, i64 178, !168, i64 180, !168, i64 182}
!170 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !171, i64 0, !164, i64 32}
!171 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !146, i64 0, !155, i64 8, !155, i64 16, !146, i64 24}
!172 = !{!150, !146, i64 328}
!173 = !{!150, !146, i64 336}
!174 = !{!175, !175, i64 0}
!175 = !{!"vtable pointer", !148, i64 0}
!176 = !{!150, !146, i64 352}
!177 = !{!168, !168, i64 0}
!178 = distinct !{!178, !179}
!179 = !{!"llvm.loop.mustprogress"}
!180 = !{!"function_entry_count", i64 2273}
!181 = !{!182, !146, i64 8}
!182 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !146, i64 8}
!183 = !{!"function_entry_count", i64 43398227}
!184 = !{!"function_entry_count", i64 1899}
!185 = !{!"function_entry_count", i64 962142}
!186 = !{!151, !146, i64 8}
!187 = !{!"function_entry_count", i64 259}
!188 = !{!"function_entry_count", i64 300}
!189 = !{!"function_entry_count", i64 967143541}
!190 = !{!"branch_weights", i32 403628487, i32 563515056}
!191 = !{!"function_entry_count", i64 21552397}
!192 = !{!"branch_weights", i32 21552398, i32 128560690}
!193 = distinct !{!193, !179}
!194 = !{!169, !168, i64 40}
!195 = !{!169, !168, i64 44}
!196 = !{!169, !168, i64 128}
!197 = !{!169, !168, i64 178}
!198 = !{!169, !168, i64 180}
!199 = !{!169, !168, i64 182}
!200 = !{!169, !168, i64 42}
!201 = !{!169, !168, i64 176}
!202 = !{!"function_entry_count", i64 66708615}
!203 = !{!"function_entry_count", i64 41614}
!204 = !{!"branch_weights", i32 1, i32 41615}
!205 = !{!170, !164, i64 32}
!206 = !{!"function_entry_count", i64 3070433826}
!207 = !{!171, !155, i64 16}
!208 = !{!171, !155, i64 8}
!209 = !{!"branch_weights", i32 13, i32 41603}
!210 = !{!171, !146, i64 0}
!211 = !{!"branch_weights", i32 355, i32 41249}
!212 = !{!"branch_weights", i32 40890, i32 360}
!213 = !{!"function_entry_count", i64 6521798503}
!214 = !{!"function_entry_count", i64 64551608}
!215 = !{!"branch_weights", i32 64551591, i32 19}
!216 = !{!"branch_weights", i32 5, i32 64551587}
!217 = !{!171, !146, i64 24}
!218 = !{!"function_entry_count", i64 85300747}
!219 = !{!155, !155, i64 0}
!220 = !{!"function_entry_count", i64 128698679}
!221 = !{!"branch_weights", i32 43398290, i32 85300391}
!222 = !{!"function_entry_count", i64 82509}
!223 = !{!"function_entry_count", i64 348020}
!224 = !{!"branch_weights", i32 64381419, i32 348021}
!225 = distinct !{!225, !179}
!226 = !{!"function_entry_count", i64 155828046}
!227 = !{!"branch_weights", i32 1, i32 155828047}
!228 = !{!"branch_weights", i32 133170778, i32 22657270}
!229 = !{!"branch_weights", i32 1, i32 19024396}
!230 = !{!"branch_weights", i32 19024396, i32 -26420600}
!231 = distinct !{!231, !179}
!232 = !{!"branch_weights", i32 20748787, i32 1908484}
!233 = !{!"branch_weights", i32 1, i32 1908484}
!234 = !{!"branch_weights", i32 1, i32 1908483}
!235 = !{!"branch_weights", i32 1908483, i32 49797857}
!236 = distinct !{!236, !179}
!237 = !{!"branch_weights", i32 1908483, i32 1}
!238 = distinct !{!238, !179}
!239 = distinct !{!239, !179}
!240 = !{!"function_entry_count", i64 568333389}
!241 = !{!"function_entry_count", i64 1950573}
!242 = !{!"function_entry_count", i64 227375739}
!243 = !{!"function_entry_count", i64 18}
!244 = !{!"function_entry_count", i64 64147281}
!245 = !{!"branch_weights", i32 64147282, i32 1}
!246 = !{!"function_entry_count", i64 85300390}
!247 = !{!"branch_weights", i32 1, i32 12185770}
!248 = !{!"branch_weights", i32 12185770, i32 -193930395}
!249 = distinct !{!249, !179}
!250 = !{!"function_entry_count", i64 30137156670}
!251 = !{!"function_entry_count", i64 1344597977}
!252 = !{!"function_entry_count", i64 185895030}
!253 = !{!"function_entry_count", i64 156073599}
!254 = !{!"function_entry_count", i64 133170778}
!255 = !{!"branch_weights", i32 22, i32 133170758}
!256 = !{!"function_entry_count", i64 155828047}
!257 = !{!"function_entry_count", i64 124150656}
!258 = !{!"branch_weights", i32 124150657, i32 1}
!259 = !{!"function_entry_count", i64 64551586}
!260 = !{!"function_entry_count", i64 825654975}
!261 = !{!"function_entry_count", i64 56317002}
!262 = !{!"function_entry_count", i64 30109074}
!263 = !{!"function_entry_count", i64 86426076}
!264 = !{!"function_entry_count", i64 3901146}
!265 = !{!"branch_weights", i32 28199083, i32 1909993}
!266 = !{!"function_entry_count", i64 403723}
!267 = !{!"function_entry_count", i64 1083116306}
!268 = !{!"function_entry_count", i64 565220908}
!269 = !{!"function_entry_count", i64 1084346}
!270 = !{!"function_entry_count", i64 1084505}
!271 = !{!"function_entry_count", i64 1179818}
!272 = !{!"function_entry_count", i64 230527000}
!273 = !{!"function_entry_count", i64 1414337976}

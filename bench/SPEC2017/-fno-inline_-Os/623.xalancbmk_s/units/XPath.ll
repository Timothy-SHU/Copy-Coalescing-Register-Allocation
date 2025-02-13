; ModuleID = 'XPath.cpp'
source_filename = "XPath.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"union.xalanc_1_10::DoubleSupport::NumberUnion" = type { double }
%"class.xalanc_1_10::XPathFunctionTable" = type { ptr, [36 x ptr], ptr }
%"class.xalanc_1_10::XPath" = type <{ %"class.xalanc_1_10::XPathExpression", ptr, i8, [7 x i8] }>
%"class.xalanc_1_10::XPathExpression" = type { %"class.xalanc_1_10::XalanVector.0", i32, %"class.xalanc_1_10::XalanVector.1", i32, ptr, %"class.xalanc_1_10::XalanVector.2" }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPath, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPath, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext::CurrentNodePushAndPop" = type { ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList" = type { ptr, ptr }
%"class.xalanc_1_10::XalanQNameByReference" = type { %"class.xalanc_1_10::XalanQName", ptr, ptr }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::XalanVector.5" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::FormatterStringLengthCounter" = type { %"class.xalanc_1_10::FormatterListener", i64 }
%"class.xalanc_1_10::FormatterListener" = type { %"class.xercesc_2_7::DocumentHandler", ptr, i32, i32 }
%"class.xercesc_2_7::DocumentHandler" = type { ptr }
%struct.anon = type { i32, i32 }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XPathExecutionContext::ContextNodeListPushAndPop" = type { ptr }
%"class.xalanc_1_10::XPath::TargetData" = type { ptr, i32, i32 }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XToken" = type <{ %"class.xalanc_1_10::XObject", ptr, double, i8, [7 x i8] }>
%"class.xalanc_1_10::MutableNodeRefList" = type <{ %"class.xalanc_1_10::NodeRefList", i32, [4 x i8] }>
%"class.xalanc_1_10::NodeRefList" = type { %"class.xalanc_1_10::NodeRefListBase", %"class.xalanc_1_10::XalanVector.3" }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPath::NodeTester" = type { ptr, ptr, ptr, { i64, i64 }, { i64, i64 } }
%"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString" = type { ptr, ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_105XPathEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv = comdat any

$_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopC2ERS0_PNS_9XalanNodeE = comdat any

$_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopD2Ev = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev = comdat any

$_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv = comdat any

$_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_105XPath16functionPositionEPNS_9XalanNodeERNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_105XPath12functionLastERNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_105XPath11functionNotEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_105XPath15functionBooleanEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeE = comdat any

$_ZNK11xalanc_1_105XPath13functionFloorEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_105XPath15functionCeilingEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_105XPath13functionRoundEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeERNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE = comdat any

$_ZN11xalanc_1_1013DoubleSupport5floorEd = comdat any

$_ZN11xalanc_1_1013DoubleSupport7ceilingEd = comdat any

$_ZN11xalanc_1_107XObject7booleanEd = comdat any

$_ZNK11xalanc_1_1010XObjectPtrptEv = comdat any

$_ZN11xalanc_1_1010XObjectPtrD2Ev = comdat any

$_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb = comdat any

$_ZN11xalanc_1_107XObject7booleanERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1013DoubleSupport5isNaNEd = comdat any

$_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

$_ZN11xalanc_1_107XObject6numberEb = comdat any

$_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd = comdat any

$_ZN11xalanc_1_107XObject6numberERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1014XalanDOMString6appendERKS0_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE = comdat any

$_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE = comdat any

$_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE = comdat any

$_ZN11xalanc_1_1018stringToCharactersERKNS_14XalanDOMStringERNS_17FormatterListenerEMS3_FvPKtjE = comdat any

$_ZN11xalanc_1_1010XObjectPtraSERKS0_ = comdat any

$_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE = comdat any

$_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE = comdat any

$_ZNK11xalanc_1_1010XObjectPtr4nullEv = comdat any

$_ZN11xalanc_1_1010XObjectPtrptEv = comdat any

$_ZNK11xalanc_1_107XObject7getTypeEv = comdat any

$_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEi = comdat any

$_ZNK11xalanc_1_105XPath15doGetMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextERNS0_11eMatchScoreE = comdat any

$_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm = comdat any

$_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverES5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm = comdat any

$_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi = comdat any

$_ZN11xalanc_1_1023getStringFromTokenQueueERKNS_15XPathExpressionEPKi = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZN11xalanc_1_105XPath10TargetDataC2EPKtNS0_11eMatchScoreENS1_11eTargetTypeE = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_5XPath10TargetDataEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZSt4copyIPKN11xalanc_1_105XPath10TargetDataEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt13copy_backwardIPN11xalanc_1_105XPath10TargetDataES3_ET0_T_S5_S4_ = comdat any

$_ZSt8distanceIPKN11xalanc_1_105XPath10TargetDataEENSt15iterator_traitsIT_E15difference_typeES6_S6_ = comdat any

$_ZSt10__distanceIPKN11xalanc_1_105XPath10TargetDataEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKN11xalanc_1_105XPath10TargetDataEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZSt13__copy_move_aILb0EPKN11xalanc_1_105XPath10TargetDataEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__miter_baseIPKN11xalanc_1_105XPath10TargetDataEET_S5_ = comdat any

$_ZSt12__niter_wrapIPN11xalanc_1_105XPath10TargetDataEET_RKS4_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_105XPath10TargetDataEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__niter_baseIPKN11xalanc_1_105XPath10TargetDataEET_S5_ = comdat any

$_ZSt12__niter_baseIPN11xalanc_1_105XPath10TargetDataEET_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_105XPath10TargetDataEPS2_ET1_T0_S7_S6_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIN11xalanc_1_105XPath10TargetDataEEEPT_PKS6_S9_S7_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_105XPath10TargetDataES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPN11xalanc_1_105XPath10TargetDataEET_S4_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_105XPath10TargetDataES3_ET1_T0_S5_S4_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_105XPath10TargetDataES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIN11xalanc_1_105XPath10TargetDataEEEPT_PKS6_S9_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_ = comdat any

$_ZNK11xalanc_1_1015XPathExpression8getTokenEi = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEixEm = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_ = comdat any

$_ZNK11xalanc_1_1010XObjectPtr3getEv = comdat any

$_ZNK11xalanc_1_1015XPathExpression16getNumberLiteralEi = comdat any

$_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEixEm = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList7releaseEv = comdat any

$_ZN11xalanc_1_107XObject7booleanERKNS_15NodeRefListBaseE = comdat any

$_ZN11xalanc_1_107XObject6stringERKNS_15NodeRefListBaseERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_107XObject6stringERKNS_9XalanNodeERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_107XObject6stringERKNS_15NodeRefListBaseERNS_17FormatterListenerEMS4_FvPKtjE = comdat any

$_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_ = comdat any

$_ZNK11xalanc_1_105XPath11extfunctionEPNS_9XalanNodeEPKiRKNS_14XalanDOMStringES7_RKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS9_EEEERNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_ = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_10XObjectPtrEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_ = comdat any

$_ZN11xalanc_1_1010XObjectPtrC2ERKS0_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE14local_distanceEPKS1_S6_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE14ensureCapacityEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE8capacityEv = comdat any

$_ZSt4copyIPKN11xalanc_1_1010XObjectPtrEPS1_ET0_T_S6_S5_ = comdat any

$_ZSt13copy_backwardIPN11xalanc_1_1010XObjectPtrES2_ET0_T_S4_S3_ = comdat any

$_ZSt8distanceIPKN11xalanc_1_1010XObjectPtrEENSt15iterator_traitsIT_E15difference_typeES5_S5_ = comdat any

$_ZSt10__distanceIPKN11xalanc_1_1010XObjectPtrEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKN11xalanc_1_1010XObjectPtrEENSt15iterator_traitsIT_E17iterator_categoryERKS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm = comdat any

$_ZSt13__copy_move_aILb0EPKN11xalanc_1_1010XObjectPtrEPS1_ET1_T0_S6_S5_ = comdat any

$_ZSt12__miter_baseIPKN11xalanc_1_1010XObjectPtrEET_S4_ = comdat any

$_ZSt12__niter_wrapIPN11xalanc_1_1010XObjectPtrEET_RKS3_S3_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_1010XObjectPtrEPS1_ET1_T0_S6_S5_ = comdat any

$_ZSt12__niter_baseIPKN11xalanc_1_1010XObjectPtrEET_S4_ = comdat any

$_ZSt12__niter_baseIPN11xalanc_1_1010XObjectPtrEET_S3_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_1010XObjectPtrEPS1_ET1_T0_S6_S5_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1010XObjectPtrEPS4_EET0_T_S9_S8_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_1010XObjectPtrES2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPN11xalanc_1_1010XObjectPtrEET_S3_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_1010XObjectPtrES2_ET1_T0_S4_S3_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_1010XObjectPtrES2_ET1_T0_S4_S3_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1010XObjectPtrES5_EET0_T_S7_S6_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyEPS1_S5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10deallocateEPS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_ = comdat any

$_ZNK11xalanc_1_1018XPathFunctionTableixEi = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE7reserveEm = comdat any

$_ZNK11xalanc_1_105XPath8functionEPNS_9XalanNodeEiRKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS4_EEEERNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv = comdat any

$_ZN11xalanc_1_1011DOMServices18getLocalNameOfNodeERKNS_9XalanNodeE = comdat any

$_ZN11xalanc_1_10neERKNS_14XalanDOMStringES2_ = comdat any

$_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_ = comdat any

$_ZNK11xalanc_1_1028FormatterStringLengthCounter8getCountEv = comdat any

$_ZN11xalanc_1_105clearERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1014XalanDOMString5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_ = comdat any

$_ZSt4copyIPtS0_ET0_T_S2_S1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_ = comdat any

$_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPtET_S1_ = comdat any

$_ZSt12__niter_wrapIPtET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPtET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv = comdat any

$_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZNK11xalanc_1_105XPath13getExpressionEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopC2ERS0_RKNS_15NodeRefListBaseE = comdat any

$_ZNK11xalanc_1_1011NodeRefList5emptyEv = comdat any

$_ZN11xalanc_1_1018MutableNodeRefList4swapERS0_ = comdat any

$_ZNK11xalanc_1_1018MutableNodeRefList23getReverseDocumentOrderEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopD2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011NodeRefList4swapERS0_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_ = comdat any

$_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE = comdat any

$_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE = comdat any

$_ZNK11xalanc_1_105XPath10getLocatorEv = comdat any

$_ZNK11xalanc_1_105XPath9predicateEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1018MutableNodeRefList23setReverseDocumentOrderEv = comdat any

$_ZN11xalanc_1_1010startsWithERKNS_14XalanDOMStringES2_ = comdat any

$_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1014XalanDOMStringixEj = comdat any

$_ZN11xalanc_1_107indexOfERKNS_14XalanDOMStringEt = comdat any

$_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_ = comdat any

$_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv = comdat any

$_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev = comdat any

$_ZN11xalanc_1_107indexOfEPKtt = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5emptyEv = comdat any

$_ZN11xalanc_1_1022isNamespaceDeclarationERKNS_9XalanNodeE = comdat any

$_ZN11xalanc_1_1011DOMServices22isNamespaceDeclarationERKNS_9XalanAttrE = comdat any

$_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_ = comdat any

$_ZNK11xalanc_1_105XPath10NodeTester29matchLocalNameAndNamespaceURIERKNS_9XalanNodeE = comdat any

$_ZN11xalanc_1_1018XPathFunctionTable16setMemoryManagerERN11xercesc_2_713MemoryManagerE = comdat any

@_ZN11xalanc_1_105XPath13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_1013DoubleSupport5s_NaNE = external global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZN11xalanc_1_107XObject12s_trueStringE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_107XObject13s_falseStringE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_105XPath11s_functionsE = dso_local global %"class.xalanc_1_10::XPathFunctionTable" zeroinitializer, align 8
@_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices13s_emptyStringE = external global %"class.xalanc_1_10::XalanDOMString", align 8
@.str = private unnamed_addr constant [25 x i8] c"processing-instruction()\00", align 1
@_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE = dso_local constant [2 x i16] [i16 42, i16 0], align 2
@_ZN11xalanc_1_105XPath15PSEUDONAME_ROOTE = dso_local constant [2 x i16] [i16 47, i16 0], align 2
@_ZN11xalanc_1_105XPath15PSEUDONAME_TEXTE = dso_local constant [6 x i16] [i16 35, i16 116, i16 101, i16 120, i16 116, i16 0], align 2
@_ZN11xalanc_1_105XPath18PSEUDONAME_COMMENTE = dso_local constant [9 x i16] [i16 35, i16 99, i16 111, i16 109, i16 109, i16 101, i16 110, i16 116, i16 0], align 16
@_ZN11xalanc_1_105XPath13PSEUDONAME_PIE = dso_local constant [4 x i16] [i16 35, i16 112, i16 105, i16 0], align 2
@_ZN11xalanc_1_105XPath16PSEUDONAME_OTHERE = dso_local local_unnamed_addr constant [2 x i16] [i16 42, i16 0], align 2
@_ZN11xalanc_1_105XPath15PSEUDONAME_NODEE = dso_local constant [6 x i16] [i16 35, i16 110, i16 111, i16 100, i16 101, i16 0], align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XPath.cpp, ptr null }]

@_ZN11xalanc_1_105XPathC1ERN11xercesc_2_713MemoryManagerEPKNS1_7LocatorE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_105XPathC2ERN11xercesc_2_713MemoryManagerEPKNS1_7LocatorE
@_ZN11xalanc_1_105XPathD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_105XPathD2Ev
@_ZN11xalanc_1_105XPath10NodeTesterC1ERKS1_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS1_
@_ZN11xalanc_1_105XPath10NodeTesterC1ERKS0_RNS_21XPathExecutionContextEPKiii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii
@_ZN11xalanc_1_105XPath10NodeTesterC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_105XPath10NodeTesterC2Ev
@_ZN11xalanc_1_105XPath10NodeTesterC1ERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEPNS0_11eMatchScoreE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_105XPath10NodeTesterC2ERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEPNS0_11eMatchScoreE
@_ZN11xalanc_1_105XPath10NodeTesterC1ERKNS_14XalanDOMStringES4_PNS0_11eMatchScoreE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_105XPath10NodeTesterC2ERKNS_14XalanDOMStringES4_PNS0_11eMatchScoreE

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #15
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_105XPath13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_105XPath13s_emptyStringE, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !716 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !717 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !718
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !724

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #15
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !725
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #15
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !726 {
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !727 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !728

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #15
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !729, !llvm.loop !730

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !732 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !725
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !733 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !727 {
  %3 = load ptr, ptr %0, align 8, !tbaa !734
  %4 = load ptr, ptr %3, align 8, !tbaa !735
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #2 comdat align 2 !prof !737 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !738 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !725
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !739
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_105XPathC2ERN11xercesc_2_713MemoryManagerEPKNS1_7LocatorE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #5 align 2 !prof !740 {
  tail call void @_ZN11xalanc_1_1015XPathExpressionC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !741
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %0, i64 0, i32 2
  store i8 0, ptr %5, align 8, !tbaa !749
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1015XPathExpressionC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_105XPath6createERN11xercesc_2_713MemoryManagerEPKNS1_7LocatorE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %3 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !735
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 136) #15
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #15
  %8 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  invoke void @_ZN11xalanc_1_105XPathC2ERN11xercesc_2_713MemoryManagerEPKNS1_7LocatorE(ptr noundef nonnull align 8 dereferenceable(129) %8, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #15
          to label %9 unwind label %12

9:                                                ; preds = %2
  %10 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
          to label %11 unwind label %12

11:                                               ; preds = %9
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret ptr %8

12:                                               ; preds = %9, %2
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !750 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !750 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !751
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #15
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !750 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !753
  store ptr %2, ptr %5, align 8, !tbaa !753
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_105XPathEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_105XPathEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 comdat align 2 !prof !750 {
  %4 = load ptr, ptr %1, align 8, !tbaa !753
  store ptr %4, ptr %0, align 8, !tbaa !754
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !753
  store ptr %6, ptr %5, align 8, !tbaa !751
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !750 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !750 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
  store ptr %1, ptr %0, align 8, !tbaa !754
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !751
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !750 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !754
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !751
  %7 = load ptr, ptr %4, align 8, !tbaa !735
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #15
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_5XPathELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !750 {
  %2 = load ptr, ptr %0, align 8, !tbaa !754
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_105XPathD2Ev(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #2 align 2 !prof !740 {
  tail call void @_ZN11xalanc_1_1015XPathExpressionD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #17
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1015XPathExpressionD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  %7 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  %8 = call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %3) #15
  %9 = sext i32 %8 to i64
  %10 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(36) %7) #15
          to label %11 unwind label %22

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
          to label %12 unwind label %24

12:                                               ; preds = %11
  %13 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %14 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %13, i32 noundef 15, ptr noundef nonnull align 8 dereferenceable(36) %7) #15
          to label %15 unwind label %26

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !741
  %18 = load ptr, ptr %2, align 8, !tbaa !735
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef %1, ptr noundef %17) #15
          to label %21 unwind label %26

21:                                               ; preds = %15
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret void

22:                                               ; preds = %4
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %30

24:                                               ; preds = %11
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %28

26:                                               ; preds = %15, %12
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %23, %22 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  resume { ptr, i32 } %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 !prof !755 {
  store ptr %1, ptr %0, align 8, !tbaa !756
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !735
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  store ptr %7, ptr %3, align 8, !tbaa !758
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !759 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !758
  ret ptr %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !760 {
  %3 = load i32, ptr %1, align 4, !tbaa !761
  ret i32 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !762 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !758
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !763

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !756
  %7 = load ptr, ptr %6, align 8, !tbaa !735
  %8 = getelementptr inbounds ptr, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(36) %3) #15
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath15notNodeSetErrorEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %4 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  %5 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #15
  %6 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 11) #15
          to label %7 unwind label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !741
  %10 = load ptr, ptr %2, align 8, !tbaa !735
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef %1, ptr noundef %9) #15
          to label %13 unwind label %14

13:                                               ; preds = %7
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  ret void

14:                                               ; preds = %7, %3
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  resume { ptr, i32 } %15
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", align 8
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::CurrentNodePushAndPop", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopC2ERS0_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %2) #15
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = invoke noundef ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(129) %1) #15
          to label %10 unwind label %14

10:                                               ; preds = %8
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %11 unwind label %14

11:                                               ; preds = %10
  call void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %16

14:                                               ; preds = %10, %8
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !764 {
  store ptr %1, ptr %0, align 8, !tbaa !753
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !735
  %6 = getelementptr inbounds ptr, ptr %5, i64 29
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  store ptr %8, ptr %4, align 8, !tbaa !765
  %9 = load ptr, ptr %0, align 8, !tbaa !767
  %10 = load ptr, ptr %9, align 8, !tbaa !735
  %11 = getelementptr inbounds ptr, ptr %10, i64 30
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %2) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopC2ERS0_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !768 {
  store ptr %1, ptr %0, align 8, !tbaa !753
  %4 = load ptr, ptr %1, align 8, !tbaa !735
  %5 = getelementptr inbounds ptr, ptr %4, i64 7
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #5 align 2 !prof !769 {
  %6 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef %3) #15
  switch i32 %6, label %211 [
    i32 2, label %7
    i32 3, label %13
    i32 4, label %19
    i32 5, label %25
    i32 6, label %31
    i32 7, label %37
    i32 8, label %43
    i32 9, label %49
    i32 10, label %55
    i32 11, label %61
    i32 12, label %67
    i32 13, label %73
    i32 14, label %79
    i32 15, label %85
    i32 17, label %91
    i32 18, label %92
    i32 19, label %93
    i32 20, label %94
    i32 21, label %95
    i32 23, label %96
    i32 24, label %97
    i32 25, label %98
    i32 56, label %99
    i32 57, label %105
    i32 58, label %111
    i32 59, label %117
    i32 60, label %123
    i32 61, label %128
    i32 62, label %133
    i32 63, label %139
    i32 64, label %145
    i32 65, label %151
    i32 66, label %157
    i32 67, label %163
    i32 68, label %169
    i32 69, label %175
    i32 70, label %181
    i32 71, label %187
    i32 74, label %193
    i32 75, label %199
    i32 78, label %205
  ], !prof !770

7:                                                ; preds = %5
  %8 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %9 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2OrEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %10 = load ptr, ptr %8, align 8, !tbaa !735
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext %9) #15
  br label %212

13:                                               ; preds = %5
  %14 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %15 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3AndEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %16 = load ptr, ptr %14, align 8, !tbaa !735
  %17 = getelementptr inbounds ptr, ptr %16, i64 3
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %14, i1 noundef zeroext %15) #15
  br label %212

19:                                               ; preds = %5
  %20 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %21 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath9notequalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %22 = load ptr, ptr %20, align 8, !tbaa !735
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %20, i1 noundef zeroext %21) #15
  br label %212

25:                                               ; preds = %5
  %26 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %27 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %28 = load ptr, ptr %26, align 8, !tbaa !735
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %26, i1 noundef zeroext %27) #15
  br label %212

31:                                               ; preds = %5
  %32 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %33 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3lteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %34 = load ptr, ptr %32, align 8, !tbaa !735
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %32, i1 noundef zeroext %33) #15
  br label %212

37:                                               ; preds = %5
  %38 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %39 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2ltEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %40 = load ptr, ptr %38, align 8, !tbaa !735
  %41 = getelementptr inbounds ptr, ptr %40, i64 3
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %38, i1 noundef zeroext %39) #15
  br label %212

43:                                               ; preds = %5
  %44 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %45 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3gteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %46 = load ptr, ptr %44, align 8, !tbaa !735
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %44, i1 noundef zeroext %45) #15
  br label %212

49:                                               ; preds = %5
  %50 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %51 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2gtEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %52 = load ptr, ptr %50, align 8, !tbaa !735
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %50, i1 noundef zeroext %51) #15
  br label %212

55:                                               ; preds = %5
  %56 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %57 = tail call noundef double @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %58 = load ptr, ptr %56, align 8, !tbaa !735
  %59 = getelementptr inbounds ptr, ptr %58, i64 7
  %60 = load ptr, ptr %59, align 8
  tail call void %60(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %56, double noundef %57) #15
  br label %212

61:                                               ; preds = %5
  %62 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %63 = tail call noundef double @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %64 = load ptr, ptr %62, align 8, !tbaa !735
  %65 = getelementptr inbounds ptr, ptr %64, i64 7
  %66 = load ptr, ptr %65, align 8
  tail call void %66(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %62, double noundef %63) #15
  br label %212

67:                                               ; preds = %5
  %68 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %69 = tail call noundef double @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %70 = load ptr, ptr %68, align 8, !tbaa !735
  %71 = getelementptr inbounds ptr, ptr %70, i64 7
  %72 = load ptr, ptr %71, align 8
  tail call void %72(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %68, double noundef %69) #15
  br label %212

73:                                               ; preds = %5
  %74 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %75 = tail call noundef double @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %76 = load ptr, ptr %74, align 8, !tbaa !735
  %77 = getelementptr inbounds ptr, ptr %76, i64 7
  %78 = load ptr, ptr %77, align 8
  tail call void %78(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %74, double noundef %75) #15
  br label %212

79:                                               ; preds = %5
  %80 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %81 = tail call noundef double @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %82 = load ptr, ptr %80, align 8, !tbaa !735
  %83 = getelementptr inbounds ptr, ptr %82, i64 7
  %84 = load ptr, ptr %83, align 8
  tail call void %84(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %80, double noundef %81) #15
  br label %212

85:                                               ; preds = %5
  %86 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %87 = tail call noundef double @_ZNK11xalanc_1_105XPath3negEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %88 = load ptr, ptr %86, align 8, !tbaa !735
  %89 = getelementptr inbounds ptr, ptr %88, i64 7
  %90 = load ptr, ptr %89, align 8
  tail call void %90(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %86, double noundef %87) #15
  br label %212

91:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  br label %212

92:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath7literalEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  br label %212

93:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  br label %212

94:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  br label %212

95:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath9numberlitEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  br label %212

96:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  br label %212

97:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  br label %212

98:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  br label %212

99:                                               ; preds = %5
  %100 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %101 = tail call noundef double @_ZNK11xalanc_1_105XPath16functionPositionEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %102 = load ptr, ptr %100, align 8, !tbaa !735
  %103 = getelementptr inbounds ptr, ptr %102, i64 7
  %104 = load ptr, ptr %103, align 8
  tail call void %104(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %100, double noundef %101) #15
  br label %212

105:                                              ; preds = %5
  %106 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %107 = tail call noundef double @_ZNK11xalanc_1_105XPath12functionLastERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %108 = load ptr, ptr %106, align 8, !tbaa !735
  %109 = getelementptr inbounds ptr, ptr %108, i64 7
  %110 = load ptr, ptr %109, align 8
  tail call void %110(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %106, double noundef %107) #15
  br label %212

111:                                              ; preds = %5
  %112 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %113 = tail call noundef double @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %114 = load ptr, ptr %112, align 8, !tbaa !735
  %115 = getelementptr inbounds ptr, ptr %114, i64 7
  %116 = load ptr, ptr %115, align 8
  tail call void %116(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %112, double noundef %113) #15
  br label %212

117:                                              ; preds = %5
  %118 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %119 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath11functionNotEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %120 = load ptr, ptr %118, align 8, !tbaa !735
  %121 = getelementptr inbounds ptr, ptr %120, i64 3
  %122 = load ptr, ptr %121, align 8
  tail call void %122(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %118, i1 noundef zeroext %119) #15
  br label %212

123:                                              ; preds = %5
  %124 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %125 = load ptr, ptr %124, align 8, !tbaa !735
  %126 = getelementptr inbounds ptr, ptr %125, i64 3
  %127 = load ptr, ptr %126, align 8
  tail call void %127(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %124, i1 noundef zeroext true) #15
  br label %212

128:                                              ; preds = %5
  %129 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %130 = load ptr, ptr %129, align 8, !tbaa !735
  %131 = getelementptr inbounds ptr, ptr %130, i64 3
  %132 = load ptr, ptr %131, align 8
  tail call void %132(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %129, i1 noundef zeroext false) #15
  br label %212

133:                                              ; preds = %5
  %134 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %135 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath15functionBooleanEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %136 = load ptr, ptr %134, align 8, !tbaa !735
  %137 = getelementptr inbounds ptr, ptr %136, i64 3
  %138 = load ptr, ptr %137, align 8
  tail call void %138(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %134, i1 noundef zeroext %135) #15
  br label %212

139:                                              ; preds = %5
  %140 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %141 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2) #15
  %142 = load ptr, ptr %140, align 8, !tbaa !735
  %143 = getelementptr inbounds ptr, ptr %142, i64 13
  %144 = load ptr, ptr %143, align 8
  tail call void %144(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %140, ptr noundef nonnull align 8 dereferenceable(36) %141) #15
  br label %212

145:                                              ; preds = %5
  %146 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %147 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %148 = load ptr, ptr %146, align 8, !tbaa !735
  %149 = getelementptr inbounds ptr, ptr %148, i64 13
  %150 = load ptr, ptr %149, align 8
  tail call void %150(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %146, ptr noundef nonnull align 8 dereferenceable(36) %147) #15
  br label %212

151:                                              ; preds = %5
  %152 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %153 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %2) #15
  %154 = load ptr, ptr %152, align 8, !tbaa !735
  %155 = getelementptr inbounds ptr, ptr %154, i64 13
  %156 = load ptr, ptr %155, align 8
  tail call void %156(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %152, ptr noundef nonnull align 8 dereferenceable(36) %153) #15
  br label %212

157:                                              ; preds = %5
  %158 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %159 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %160 = load ptr, ptr %158, align 8, !tbaa !735
  %161 = getelementptr inbounds ptr, ptr %160, i64 13
  %162 = load ptr, ptr %161, align 8
  tail call void %162(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %158, ptr noundef nonnull align 8 dereferenceable(36) %159) #15
  br label %212

163:                                              ; preds = %5
  %164 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %165 = tail call noundef double @_ZNK11xalanc_1_105XPath13functionFloorEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %166 = load ptr, ptr %164, align 8, !tbaa !735
  %167 = getelementptr inbounds ptr, ptr %166, i64 7
  %168 = load ptr, ptr %167, align 8
  tail call void %168(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %164, double noundef %165) #15
  br label %212

169:                                              ; preds = %5
  %170 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %171 = tail call noundef double @_ZNK11xalanc_1_105XPath15functionCeilingEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %172 = load ptr, ptr %170, align 8, !tbaa !735
  %173 = getelementptr inbounds ptr, ptr %172, i64 7
  %174 = load ptr, ptr %173, align 8
  tail call void %174(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %170, double noundef %171) #15
  br label %212

175:                                              ; preds = %5
  %176 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %177 = tail call noundef double @_ZNK11xalanc_1_105XPath13functionRoundEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %178 = load ptr, ptr %176, align 8, !tbaa !735
  %179 = getelementptr inbounds ptr, ptr %178, i64 7
  %180 = load ptr, ptr %179, align 8
  tail call void %180(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %176, double noundef %177) #15
  br label %212

181:                                              ; preds = %5
  %182 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %183 = tail call noundef double @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %184 = load ptr, ptr %182, align 8, !tbaa !735
  %185 = getelementptr inbounds ptr, ptr %184, i64 7
  %186 = load ptr, ptr %185, align 8
  tail call void %186(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %182, double noundef %183) #15
  br label %212

187:                                              ; preds = %5
  %188 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %189 = tail call noundef double @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %190 = load ptr, ptr %188, align 8, !tbaa !735
  %191 = getelementptr inbounds ptr, ptr %190, i64 7
  %192 = load ptr, ptr %191, align 8
  tail call void %192(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %188, double noundef %189) #15
  br label %212

193:                                              ; preds = %5
  %194 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %195 = tail call noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %2) #15
  %196 = load ptr, ptr %194, align 8, !tbaa !735
  %197 = getelementptr inbounds ptr, ptr %196, i64 7
  %198 = load ptr, ptr %197, align 8
  tail call void %198(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %194, double noundef %195) #15
  br label %212

199:                                              ; preds = %5
  %200 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %201 = tail call noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %202 = load ptr, ptr %200, align 8, !tbaa !735
  %203 = getelementptr inbounds ptr, ptr %202, i64 7
  %204 = load ptr, ptr %203, align 8
  tail call void %204(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %200, double noundef %201) #15
  br label %212

205:                                              ; preds = %5
  %206 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %207 = tail call noundef double @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %208 = load ptr, ptr %206, align 8, !tbaa !735
  %209 = getelementptr inbounds ptr, ptr %208, i64 7
  %210 = load ptr, ptr %209, align 8
  tail call void %210(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %206, double noundef %207) #15
  br label %212

211:                                              ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %3) #15
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #15
  br label %212

212:                                              ; preds = %211, %205, %199, %193, %187, %181, %175, %169, %163, %157, %151, %145, %139, %133, %128, %123, %117, %111, %105, %99, %98, %97, %96, %95, %94, %93, %92, %91, %85, %79, %73, %67, %61, %55, %49, %43, %37, %31, %25, %19, %13, %7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) local_unnamed_addr #5 comdat align 2 !prof !764 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #15
  %3 = getelementptr inbounds i32, ptr %2, i64 2
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !768 {
  %2 = load ptr, ptr %0, align 8, !tbaa !771
  %3 = load ptr, ptr %2, align 8, !tbaa !735
  %4 = getelementptr inbounds ptr, ptr %3, i64 8
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(24) %2) #15
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !773 {
  %2 = load ptr, ptr %0, align 8, !tbaa !767
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !765
  %5 = load ptr, ptr %2, align 8, !tbaa !735
  %6 = getelementptr inbounds ptr, ptr %5, i64 30
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %4) #15
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #5 comdat align 2 !prof !774 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !775 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !776
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !777 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", align 8
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::CurrentNodePushAndPop", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopC2ERS0_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1) #15
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = invoke noundef ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
          to label %10 unwind label %14

10:                                               ; preds = %8
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
          to label %11 unwind label %14

11:                                               ; preds = %10
  call void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %16

14:                                               ; preds = %10, %8
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !778 {
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %8 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %9 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %2) #15
  switch i32 %9, label %161 [
    i32 2, label %10
    i32 3, label %13
    i32 4, label %16
    i32 5, label %19
    i32 6, label %22
    i32 7, label %25
    i32 8, label %28
    i32 9, label %31
    i32 10, label %34
    i32 11, label %38
    i32 12, label %42
    i32 13, label %46
    i32 14, label %50
    i32 15, label %54
    i32 17, label %58
    i32 18, label %59
    i32 19, label %60
    i32 20, label %70
    i32 21, label %71
    i32 23, label %72
    i32 24, label %82
    i32 25, label %92
    i32 56, label %93
    i32 57, label %97
    i32 58, label %101
    i32 59, label %105
    i32 60, label %108
    i32 61, label %109
    i32 62, label %110
    i32 63, label %113
    i32 64, label %117
    i32 65, label %121
    i32 66, label %125
    i32 67, label %129
    i32 68, label %133
    i32 69, label %137
    i32 70, label %141
    i32 71, label %145
    i32 74, label %149
    i32 75, label %153
    i32 78, label %157
  ], !prof !779

10:                                               ; preds = %5
  %11 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2OrEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %12 = zext i1 %11 to i8
  store i8 %12, ptr %4, align 1, !tbaa !780
  br label %162

13:                                               ; preds = %5
  %14 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3AndEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %15 = zext i1 %14 to i8
  store i8 %15, ptr %4, align 1, !tbaa !780
  br label %162

16:                                               ; preds = %5
  %17 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath9notequalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %18 = zext i1 %17 to i8
  store i8 %18, ptr %4, align 1, !tbaa !780
  br label %162

19:                                               ; preds = %5
  %20 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %21 = zext i1 %20 to i8
  store i8 %21, ptr %4, align 1, !tbaa !780
  br label %162

22:                                               ; preds = %5
  %23 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3lteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %24 = zext i1 %23 to i8
  store i8 %24, ptr %4, align 1, !tbaa !780
  br label %162

25:                                               ; preds = %5
  %26 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2ltEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %27 = zext i1 %26 to i8
  store i8 %27, ptr %4, align 1, !tbaa !780
  br label %162

28:                                               ; preds = %5
  %29 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3gteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %30 = zext i1 %29 to i8
  store i8 %30, ptr %4, align 1, !tbaa !780
  br label %162

31:                                               ; preds = %5
  %32 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2gtEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %33 = zext i1 %32 to i8
  store i8 %33, ptr %4, align 1, !tbaa !780
  br label %162

34:                                               ; preds = %5
  %35 = tail call noundef double @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %36 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %35) #15
  %37 = zext i1 %36 to i8
  store i8 %37, ptr %4, align 1, !tbaa !780
  br label %162

38:                                               ; preds = %5
  %39 = tail call noundef double @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %40 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %39) #15
  %41 = zext i1 %40 to i8
  store i8 %41, ptr %4, align 1, !tbaa !780
  br label %162

42:                                               ; preds = %5
  %43 = tail call noundef double @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %44 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %43) #15
  %45 = zext i1 %44 to i8
  store i8 %45, ptr %4, align 1, !tbaa !780
  br label %162

46:                                               ; preds = %5
  %47 = tail call noundef double @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %48 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %47) #15
  %49 = zext i1 %48 to i8
  store i8 %49, ptr %4, align 1, !tbaa !780
  br label %162

50:                                               ; preds = %5
  %51 = tail call noundef double @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %52 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %51) #15
  %53 = zext i1 %52 to i8
  store i8 %53, ptr %4, align 1, !tbaa !780
  br label %162

54:                                               ; preds = %5
  %55 = tail call noundef double @_ZNK11xalanc_1_105XPath3negEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %56 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %55) #15
  %57 = zext i1 %56 to i8
  store i8 %57, ptr %4, align 1, !tbaa !780
  br label %162

58:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  br label %162

59:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath7literalEPKiRb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  br label %162

60:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %61 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  %62 = load ptr, ptr %61, align 8, !tbaa !735
  %63 = getelementptr inbounds ptr, ptr %62, i64 7
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef zeroext i1 %64(ptr noundef nonnull align 8 dereferenceable(24) %61) #15
          to label %66 unwind label %68

66:                                               ; preds = %60
  %67 = zext i1 %65 to i8
  store i8 %67, ptr %4, align 1, !tbaa !780
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %162

68:                                               ; preds = %60
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %163

70:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  br label %162

71:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath9numberlitEPKiRb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  br label %162

72:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %73 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  %74 = load ptr, ptr %73, align 8, !tbaa !735
  %75 = getelementptr inbounds ptr, ptr %74, i64 7
  %76 = load ptr, ptr %75, align 8
  %77 = invoke noundef zeroext i1 %76(ptr noundef nonnull align 8 dereferenceable(24) %73) #15
          to label %78 unwind label %80

78:                                               ; preds = %72
  %79 = zext i1 %77 to i8
  store i8 %79, ptr %4, align 1, !tbaa !780
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %162

80:                                               ; preds = %72
  %81 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %163

82:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %83 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #15
  %84 = load ptr, ptr %83, align 8, !tbaa !735
  %85 = getelementptr inbounds ptr, ptr %84, i64 7
  %86 = load ptr, ptr %85, align 8
  %87 = invoke noundef zeroext i1 %86(ptr noundef nonnull align 8 dereferenceable(24) %83) #15
          to label %88 unwind label %90

88:                                               ; preds = %82
  %89 = zext i1 %87 to i8
  store i8 %89, ptr %4, align 1, !tbaa !780
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %162

90:                                               ; preds = %82
  %91 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %163

92:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  br label %162

93:                                               ; preds = %5
  %94 = tail call noundef double @_ZNK11xalanc_1_105XPath16functionPositionEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %95 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %94) #15
  %96 = zext i1 %95 to i8
  store i8 %96, ptr %4, align 1, !tbaa !780
  br label %162

97:                                               ; preds = %5
  %98 = tail call noundef double @_ZNK11xalanc_1_105XPath12functionLastERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %99 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %98) #15
  %100 = zext i1 %99 to i8
  store i8 %100, ptr %4, align 1, !tbaa !780
  br label %162

101:                                              ; preds = %5
  %102 = tail call noundef double @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %103 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %102) #15
  %104 = zext i1 %103 to i8
  store i8 %104, ptr %4, align 1, !tbaa !780
  br label %162

105:                                              ; preds = %5
  %106 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath11functionNotEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %107 = zext i1 %106 to i8
  store i8 %107, ptr %4, align 1, !tbaa !780
  br label %162

108:                                              ; preds = %5
  store i8 1, ptr %4, align 1, !tbaa !780
  br label %162

109:                                              ; preds = %5
  store i8 0, ptr %4, align 1, !tbaa !780
  br label %162

110:                                              ; preds = %5
  %111 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath15functionBooleanEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %112 = zext i1 %111 to i8
  store i8 %112, ptr %4, align 1, !tbaa !780
  br label %162

113:                                              ; preds = %5
  %114 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) #15
  %115 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %114) #15
  %116 = zext i1 %115 to i8
  store i8 %116, ptr %4, align 1, !tbaa !780
  br label %162

117:                                              ; preds = %5
  %118 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %119 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %118) #15
  %120 = zext i1 %119 to i8
  store i8 %120, ptr %4, align 1, !tbaa !780
  br label %162

121:                                              ; preds = %5
  %122 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %1) #15
  %123 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %122) #15
  %124 = zext i1 %123 to i8
  store i8 %124, ptr %4, align 1, !tbaa !780
  br label %162

125:                                              ; preds = %5
  %126 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %127 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %126) #15
  %128 = zext i1 %127 to i8
  store i8 %128, ptr %4, align 1, !tbaa !780
  br label %162

129:                                              ; preds = %5
  %130 = tail call noundef double @_ZNK11xalanc_1_105XPath13functionFloorEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %131 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %130) #15
  %132 = zext i1 %131 to i8
  store i8 %132, ptr %4, align 1, !tbaa !780
  br label %162

133:                                              ; preds = %5
  %134 = tail call noundef double @_ZNK11xalanc_1_105XPath15functionCeilingEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %135 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %134) #15
  %136 = zext i1 %135 to i8
  store i8 %136, ptr %4, align 1, !tbaa !780
  br label %162

137:                                              ; preds = %5
  %138 = tail call noundef double @_ZNK11xalanc_1_105XPath13functionRoundEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %139 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %138) #15
  %140 = zext i1 %139 to i8
  store i8 %140, ptr %4, align 1, !tbaa !780
  br label %162

141:                                              ; preds = %5
  %142 = tail call noundef double @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %143 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %142) #15
  %144 = zext i1 %143 to i8
  store i8 %144, ptr %4, align 1, !tbaa !780
  br label %162

145:                                              ; preds = %5
  %146 = tail call noundef double @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %147 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %146) #15
  %148 = zext i1 %147 to i8
  store i8 %148, ptr %4, align 1, !tbaa !780
  br label %162

149:                                              ; preds = %5
  %150 = tail call noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %1) #15
  %151 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %150) #15
  %152 = zext i1 %151 to i8
  store i8 %152, ptr %4, align 1, !tbaa !780
  br label %162

153:                                              ; preds = %5
  %154 = tail call noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %155 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %154) #15
  %156 = zext i1 %155 to i8
  store i8 %156, ptr %4, align 1, !tbaa !780
  br label %162

157:                                              ; preds = %5
  %158 = tail call noundef double @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %159 = tail call noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %158) #15
  %160 = zext i1 %159 to i8
  store i8 %160, ptr %4, align 1, !tbaa !780
  br label %162

161:                                              ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %2) #15
  br label %162

162:                                              ; preds = %161, %157, %153, %149, %145, %141, %137, %133, %129, %125, %121, %117, %113, %110, %109, %108, %105, %101, %97, %93, %92, %88, %78, %71, %70, %66, %59, %58, %54, %50, %46, %42, %38, %34, %31, %28, %25, %22, %19, %16, %13, %10
  ret void

163:                                              ; preds = %90, %80, %68
  %164 = phi { ptr, i32 } [ %91, %90 ], [ %81, %80 ], [ %69, %68 ]
  resume { ptr, i32 } %164
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !781 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", align 8
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::CurrentNodePushAndPop", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopC2ERS0_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1) #15
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = invoke noundef ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
          to label %10 unwind label %14

10:                                               ; preds = %8
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
          to label %11 unwind label %14

11:                                               ; preds = %10
  call void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %16

14:                                               ; preds = %10, %8
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !782 {
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %8 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %9 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %2) #15
  switch i32 %9, label %127 [
    i32 2, label %10
    i32 3, label %13
    i32 4, label %16
    i32 5, label %19
    i32 6, label %22
    i32 7, label %25
    i32 8, label %28
    i32 9, label %31
    i32 10, label %34
    i32 11, label %36
    i32 12, label %38
    i32 13, label %40
    i32 14, label %42
    i32 15, label %44
    i32 17, label %46
    i32 18, label %47
    i32 19, label %48
    i32 20, label %57
    i32 21, label %58
    i32 23, label %60
    i32 24, label %69
    i32 25, label %78
    i32 56, label %79
    i32 57, label %81
    i32 58, label %83
    i32 59, label %85
    i32 60, label %88
    i32 61, label %90
    i32 62, label %92
    i32 63, label %95
    i32 64, label %99
    i32 65, label %103
    i32 66, label %107
    i32 67, label %111
    i32 68, label %113
    i32 69, label %115
    i32 70, label %117
    i32 71, label %119
    i32 74, label %121
    i32 75, label %123
    i32 78, label %125
  ], !prof !783

10:                                               ; preds = %5
  %11 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2OrEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %12 = tail call noundef double @_ZN11xalanc_1_107XObject6numberEb(i1 noundef zeroext %11) #15
  store double %12, ptr %4, align 8, !tbaa !784
  br label %128

13:                                               ; preds = %5
  %14 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3AndEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %15 = tail call noundef double @_ZN11xalanc_1_107XObject6numberEb(i1 noundef zeroext %14) #15
  store double %15, ptr %4, align 8, !tbaa !784
  br label %128

16:                                               ; preds = %5
  %17 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath9notequalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %18 = tail call noundef double @_ZN11xalanc_1_107XObject6numberEb(i1 noundef zeroext %17) #15
  store double %18, ptr %4, align 8, !tbaa !784
  br label %128

19:                                               ; preds = %5
  %20 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %21 = tail call noundef double @_ZN11xalanc_1_107XObject6numberEb(i1 noundef zeroext %20) #15
  store double %21, ptr %4, align 8, !tbaa !784
  br label %128

22:                                               ; preds = %5
  %23 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3lteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %24 = tail call noundef double @_ZN11xalanc_1_107XObject6numberEb(i1 noundef zeroext %23) #15
  store double %24, ptr %4, align 8, !tbaa !784
  br label %128

25:                                               ; preds = %5
  %26 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2ltEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %27 = tail call noundef double @_ZN11xalanc_1_107XObject6numberEb(i1 noundef zeroext %26) #15
  store double %27, ptr %4, align 8, !tbaa !784
  br label %128

28:                                               ; preds = %5
  %29 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3gteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %30 = tail call noundef double @_ZN11xalanc_1_107XObject6numberEb(i1 noundef zeroext %29) #15
  store double %30, ptr %4, align 8, !tbaa !784
  br label %128

31:                                               ; preds = %5
  %32 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2gtEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %33 = tail call noundef double @_ZN11xalanc_1_107XObject6numberEb(i1 noundef zeroext %32) #15
  store double %33, ptr %4, align 8, !tbaa !784
  br label %128

34:                                               ; preds = %5
  %35 = tail call noundef double @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  store double %35, ptr %4, align 8, !tbaa !784
  br label %128

36:                                               ; preds = %5
  %37 = tail call noundef double @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  store double %37, ptr %4, align 8, !tbaa !784
  br label %128

38:                                               ; preds = %5
  %39 = tail call noundef double @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  store double %39, ptr %4, align 8, !tbaa !784
  br label %128

40:                                               ; preds = %5
  %41 = tail call noundef double @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  store double %41, ptr %4, align 8, !tbaa !784
  br label %128

42:                                               ; preds = %5
  %43 = tail call noundef double @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  store double %43, ptr %4, align 8, !tbaa !784
  br label %128

44:                                               ; preds = %5
  %45 = tail call noundef double @_ZNK11xalanc_1_105XPath3negEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  store double %45, ptr %4, align 8, !tbaa !784
  br label %128

46:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  br label %128

47:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath7literalEPKiRd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  br label %128

48:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %49 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  %50 = load ptr, ptr %49, align 8, !tbaa !735
  %51 = getelementptr inbounds ptr, ptr %50, i64 6
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef double %52(ptr noundef nonnull align 8 dereferenceable(24) %49) #15
          to label %54 unwind label %55

54:                                               ; preds = %48
  store double %53, ptr %4, align 8, !tbaa !784
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %128

55:                                               ; preds = %48
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %129

57:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  br label %128

58:                                               ; preds = %5
  %59 = tail call noundef double @_ZNK11xalanc_1_105XPath9numberlitEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %2) #15
  store double %59, ptr %4, align 8, !tbaa !784
  br label %128

60:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %61 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  %62 = load ptr, ptr %61, align 8, !tbaa !735
  %63 = getelementptr inbounds ptr, ptr %62, i64 6
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef double %64(ptr noundef nonnull align 8 dereferenceable(24) %61) #15
          to label %66 unwind label %67

66:                                               ; preds = %60
  store double %65, ptr %4, align 8, !tbaa !784
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %128

67:                                               ; preds = %60
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %129

69:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %70 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #15
  %71 = load ptr, ptr %70, align 8, !tbaa !735
  %72 = getelementptr inbounds ptr, ptr %71, i64 6
  %73 = load ptr, ptr %72, align 8
  %74 = invoke noundef double %73(ptr noundef nonnull align 8 dereferenceable(24) %70) #15
          to label %75 unwind label %76

75:                                               ; preds = %69
  store double %74, ptr %4, align 8, !tbaa !784
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %128

76:                                               ; preds = %69
  %77 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %129

78:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  br label %128

79:                                               ; preds = %5
  %80 = tail call noundef double @_ZNK11xalanc_1_105XPath16functionPositionEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  store double %80, ptr %4, align 8, !tbaa !784
  br label %128

81:                                               ; preds = %5
  %82 = tail call noundef double @_ZNK11xalanc_1_105XPath12functionLastERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  store double %82, ptr %4, align 8, !tbaa !784
  br label %128

83:                                               ; preds = %5
  %84 = tail call noundef double @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  store double %84, ptr %4, align 8, !tbaa !784
  br label %128

85:                                               ; preds = %5
  %86 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath11functionNotEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %87 = tail call noundef double @_ZN11xalanc_1_107XObject6numberEb(i1 noundef zeroext %86) #15
  store double %87, ptr %4, align 8, !tbaa !784
  br label %128

88:                                               ; preds = %5
  %89 = tail call noundef double @_ZN11xalanc_1_107XObject6numberEb(i1 noundef zeroext true) #15
  store double %89, ptr %4, align 8, !tbaa !784
  br label %128

90:                                               ; preds = %5
  %91 = tail call noundef double @_ZN11xalanc_1_107XObject6numberEb(i1 noundef zeroext false) #15
  store double %91, ptr %4, align 8, !tbaa !784
  br label %128

92:                                               ; preds = %5
  %93 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath15functionBooleanEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %94 = tail call noundef double @_ZN11xalanc_1_107XObject6numberEb(i1 noundef zeroext %93) #15
  store double %94, ptr %4, align 8, !tbaa !784
  br label %128

95:                                               ; preds = %5
  %96 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) #15
  %97 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  %98 = tail call noundef double @_ZN11xalanc_1_107XObject6numberERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %96, ptr noundef nonnull align 8 dereferenceable(8) %97) #15
  store double %98, ptr %4, align 8, !tbaa !784
  br label %128

99:                                               ; preds = %5
  %100 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %101 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  %102 = tail call noundef double @_ZN11xalanc_1_107XObject6numberERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %100, ptr noundef nonnull align 8 dereferenceable(8) %101) #15
  store double %102, ptr %4, align 8, !tbaa !784
  br label %128

103:                                              ; preds = %5
  %104 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %1) #15
  %105 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  %106 = tail call noundef double @_ZN11xalanc_1_107XObject6numberERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %104, ptr noundef nonnull align 8 dereferenceable(8) %105) #15
  store double %106, ptr %4, align 8, !tbaa !784
  br label %128

107:                                              ; preds = %5
  %108 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %109 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  %110 = tail call noundef double @_ZN11xalanc_1_107XObject6numberERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %108, ptr noundef nonnull align 8 dereferenceable(8) %109) #15
  store double %110, ptr %4, align 8, !tbaa !784
  br label %128

111:                                              ; preds = %5
  %112 = tail call noundef double @_ZNK11xalanc_1_105XPath13functionFloorEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  store double %112, ptr %4, align 8, !tbaa !784
  br label %128

113:                                              ; preds = %5
  %114 = tail call noundef double @_ZNK11xalanc_1_105XPath15functionCeilingEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  store double %114, ptr %4, align 8, !tbaa !784
  br label %128

115:                                              ; preds = %5
  %116 = tail call noundef double @_ZNK11xalanc_1_105XPath13functionRoundEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  store double %116, ptr %4, align 8, !tbaa !784
  br label %128

117:                                              ; preds = %5
  %118 = tail call noundef double @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  store double %118, ptr %4, align 8, !tbaa !784
  br label %128

119:                                              ; preds = %5
  %120 = tail call noundef double @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  store double %120, ptr %4, align 8, !tbaa !784
  br label %128

121:                                              ; preds = %5
  %122 = tail call noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %1) #15
  store double %122, ptr %4, align 8, !tbaa !784
  br label %128

123:                                              ; preds = %5
  %124 = tail call noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  store double %124, ptr %4, align 8, !tbaa !784
  br label %128

125:                                              ; preds = %5
  %126 = tail call noundef double @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  store double %126, ptr %4, align 8, !tbaa !784
  br label %128

127:                                              ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %2) #15
  br label %128

128:                                              ; preds = %127, %125, %123, %121, %119, %117, %115, %113, %111, %107, %103, %99, %95, %92, %90, %88, %85, %83, %81, %79, %78, %75, %66, %58, %57, %54, %47, %46, %44, %42, %40, %38, %36, %34, %31, %28, %25, %22, %19, %16, %13, %10
  ret void

129:                                              ; preds = %76, %67, %55
  %130 = phi { ptr, i32 } [ %77, %76 ], [ %68, %67 ], [ %56, %55 ]
  resume { ptr, i32 } %130
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !786 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", align 8
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::CurrentNodePushAndPop", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopC2ERS0_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1) #15
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = invoke noundef ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
          to label %10 unwind label %14

10:                                               ; preds = %8
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
          to label %11 unwind label %14

11:                                               ; preds = %10
  call void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %16

14:                                               ; preds = %10, %8
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !786 {
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %8 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %9 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %2) #15
  switch i32 %9, label %117 [
    i32 2, label %10
    i32 3, label %13
    i32 4, label %16
    i32 5, label %19
    i32 6, label %22
    i32 7, label %25
    i32 8, label %28
    i32 9, label %31
    i32 10, label %34
    i32 11, label %36
    i32 12, label %38
    i32 13, label %40
    i32 14, label %42
    i32 15, label %44
    i32 17, label %46
    i32 18, label %47
    i32 19, label %48
    i32 20, label %56
    i32 21, label %57
    i32 23, label %58
    i32 24, label %66
    i32 25, label %74
    i32 56, label %75
    i32 57, label %77
    i32 58, label %79
    i32 59, label %81
    i32 60, label %84
    i32 61, label %85
    i32 62, label %86
    i32 63, label %89
    i32 64, label %92
    i32 65, label %95
    i32 66, label %98
    i32 67, label %101
    i32 68, label %103
    i32 69, label %105
    i32 70, label %107
    i32 71, label %109
    i32 74, label %111
    i32 75, label %113
    i32 78, label %115
  ], !prof !787

10:                                               ; preds = %5
  %11 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2OrEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %12 = uitofp i1 %11 to double
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %12, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

13:                                               ; preds = %5
  %14 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3AndEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %15 = uitofp i1 %14 to double
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %15, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

16:                                               ; preds = %5
  %17 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath9notequalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %18 = uitofp i1 %17 to double
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %18, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

19:                                               ; preds = %5
  %20 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %21 = uitofp i1 %20 to double
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %21, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

22:                                               ; preds = %5
  %23 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3lteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %24 = uitofp i1 %23 to double
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %24, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

25:                                               ; preds = %5
  %26 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2ltEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %27 = uitofp i1 %26 to double
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %27, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

28:                                               ; preds = %5
  %29 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3gteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %30 = uitofp i1 %29 to double
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %30, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

31:                                               ; preds = %5
  %32 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2gtEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %33 = uitofp i1 %32 to double
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %33, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

34:                                               ; preds = %5
  %35 = tail call noundef double @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %35, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

36:                                               ; preds = %5
  %37 = tail call noundef double @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %37, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

38:                                               ; preds = %5
  %39 = tail call noundef double @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %39, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

40:                                               ; preds = %5
  %41 = tail call noundef double @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %41, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

42:                                               ; preds = %5
  %43 = tail call noundef double @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %43, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

44:                                               ; preds = %5
  %45 = tail call noundef double @_ZNK11xalanc_1_105XPath3negEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %45, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

46:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

47:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath7literalEPKiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

48:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %49 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  %50 = load ptr, ptr %49, align 8, !tbaa !735
  %51 = getelementptr inbounds ptr, ptr %50, i64 11
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
          to label %53 unwind label %54

53:                                               ; preds = %48
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %118

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %119

56:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

57:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath9numberlitEPKiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

58:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %59 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  %60 = load ptr, ptr %59, align 8, !tbaa !735
  %61 = getelementptr inbounds ptr, ptr %60, i64 11
  %62 = load ptr, ptr %61, align 8
  invoke void %62(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
          to label %63 unwind label %64

63:                                               ; preds = %58
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %118

64:                                               ; preds = %58
  %65 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %119

66:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %67 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #15
  %68 = load ptr, ptr %67, align 8, !tbaa !735
  %69 = getelementptr inbounds ptr, ptr %68, i64 11
  %70 = load ptr, ptr %69, align 8
  invoke void %70(ptr noundef nonnull align 8 dereferenceable(24) %67, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
          to label %71 unwind label %72

71:                                               ; preds = %66
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %118

72:                                               ; preds = %66
  %73 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %119

74:                                               ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

75:                                               ; preds = %5
  %76 = tail call noundef double @_ZNK11xalanc_1_105XPath16functionPositionEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %76, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

77:                                               ; preds = %5
  %78 = tail call noundef double @_ZNK11xalanc_1_105XPath12functionLastERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %78, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

79:                                               ; preds = %5
  %80 = tail call noundef double @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %80, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

81:                                               ; preds = %5
  %82 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath11functionNotEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %83 = uitofp i1 %82 to double
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %83, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

84:                                               ; preds = %5
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

85:                                               ; preds = %5
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

86:                                               ; preds = %5
  %87 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath15functionBooleanEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %88 = uitofp i1 %87 to double
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %88, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

89:                                               ; preds = %5
  %90 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) #15
  %91 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %90) #15
  br label %118

92:                                               ; preds = %5
  %93 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %94 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %93) #15
  br label %118

95:                                               ; preds = %5
  %96 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %1) #15
  %97 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %96) #15
  br label %118

98:                                               ; preds = %5
  %99 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %100 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %99) #15
  br label %118

101:                                              ; preds = %5
  %102 = tail call noundef double @_ZNK11xalanc_1_105XPath13functionFloorEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %102, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

103:                                              ; preds = %5
  %104 = tail call noundef double @_ZNK11xalanc_1_105XPath15functionCeilingEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %104, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

105:                                              ; preds = %5
  %106 = tail call noundef double @_ZNK11xalanc_1_105XPath13functionRoundEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %106, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

107:                                              ; preds = %5
  %108 = tail call noundef double @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %108, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

109:                                              ; preds = %5
  %110 = tail call noundef double @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %110, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

111:                                              ; preds = %5
  %112 = tail call noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %1) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %112, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

113:                                              ; preds = %5
  %114 = tail call noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %114, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

115:                                              ; preds = %5
  %116 = tail call noundef double @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %116, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %118

117:                                              ; preds = %5
  tail call void @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %2) #15
  br label %118

118:                                              ; preds = %117, %115, %113, %111, %109, %107, %105, %103, %101, %98, %95, %92, %89, %86, %85, %84, %81, %79, %77, %75, %74, %71, %63, %57, %56, %53, %47, %46, %44, %42, %40, %38, %36, %34, %31, %28, %25, %22, %19, %16, %13, %10
  ret void

119:                                              ; preds = %72, %64, %54
  %120 = phi { ptr, i32 } [ %73, %72 ], [ %65, %64 ], [ %55, %54 ]
  resume { ptr, i32 } %120
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_17FormatterListenerEMS8_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nocapture noundef readonly byval({ i64, i64 }) align 8 %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", align 8
  %8 = alloca %"class.xalanc_1_10::XPathExecutionContext::CurrentNodePushAndPop", align 8
  %9 = alloca { i64, i64 }, align 16
  %10 = load <2 x i64>, ptr %5, align 8, !tbaa !788
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopC2ERS0_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1) #15
          to label %11 unwind label %15

11:                                               ; preds = %6
  %12 = invoke noundef ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
          to label %13 unwind label %17

13:                                               ; preds = %11
  store <2 x i64> %10, ptr %9, align 16, !tbaa !788
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull byval({ i64, i64 }) align 8 %9) #15
          to label %14 unwind label %17

14:                                               ; preds = %13
  call void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  ret void

15:                                               ; preds = %6
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %19

17:                                               ; preds = %13, %11
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nocapture noundef readonly byval({ i64, i64 }) align 8 %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !789 {
  %7 = alloca { i64, i64 }, align 8
  %8 = alloca { i64, i64 }, align 8
  %9 = alloca { i64, i64 }, align 8
  %10 = alloca { i64, i64 }, align 8
  %11 = alloca { i64, i64 }, align 8
  %12 = alloca { i64, i64 }, align 8
  %13 = alloca { i64, i64 }, align 8
  %14 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %15 = alloca { i64, i64 }, align 8
  %16 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %17 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %18 = alloca { i64, i64 }, align 8
  %19 = load i64, ptr %5, align 8, !tbaa !788
  %20 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !788
  %22 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %2) #15
  switch i32 %22, label %119 [
    i32 2, label %23
    i32 3, label %25
    i32 4, label %27
    i32 5, label %29
    i32 6, label %31
    i32 7, label %33
    i32 8, label %35
    i32 9, label %37
    i32 10, label %39
    i32 11, label %41
    i32 12, label %43
    i32 13, label %45
    i32 14, label %47
    i32 15, label %49
    i32 17, label %51
    i32 18, label %53
    i32 19, label %54
    i32 20, label %62
    i32 21, label %64
    i32 23, label %65
    i32 24, label %73
    i32 25, label %81
    i32 56, label %83
    i32 57, label %85
    i32 58, label %87
    i32 59, label %89
    i32 60, label %91
    i32 61, label %92
    i32 62, label %93
    i32 63, label %95
    i32 64, label %97
    i32 65, label %99
    i32 66, label %101
    i32 67, label %103
    i32 68, label %105
    i32 69, label %107
    i32 70, label %109
    i32 71, label %111
    i32 74, label %113
    i32 75, label %115
    i32 78, label %117
  ], !prof !790

23:                                               ; preds = %6
  %24 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2OrEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %24, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

25:                                               ; preds = %6
  %26 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3AndEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %26, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

27:                                               ; preds = %6
  %28 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath9notequalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %28, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

29:                                               ; preds = %6
  %30 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %30, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

31:                                               ; preds = %6
  %32 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3lteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %32, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

33:                                               ; preds = %6
  %34 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2ltEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %34, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

35:                                               ; preds = %6
  %36 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3gteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %36, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

37:                                               ; preds = %6
  %38 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2gtEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %38, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

39:                                               ; preds = %6
  store i64 %19, ptr %7, align 8, !tbaa !788
  %40 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  store i64 %21, ptr %40, align 8, !tbaa !788
  tail call void @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull byval({ i64, i64 }) align 8 %7) #15
  br label %120

41:                                               ; preds = %6
  store i64 %19, ptr %8, align 8, !tbaa !788
  %42 = getelementptr inbounds { i64, i64 }, ptr %8, i64 0, i32 1
  store i64 %21, ptr %42, align 8, !tbaa !788
  tail call void @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull byval({ i64, i64 }) align 8 %8) #15
  br label %120

43:                                               ; preds = %6
  store i64 %19, ptr %9, align 8, !tbaa !788
  %44 = getelementptr inbounds { i64, i64 }, ptr %9, i64 0, i32 1
  store i64 %21, ptr %44, align 8, !tbaa !788
  tail call void @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull byval({ i64, i64 }) align 8 %9) #15
  br label %120

45:                                               ; preds = %6
  store i64 %19, ptr %10, align 8, !tbaa !788
  %46 = getelementptr inbounds { i64, i64 }, ptr %10, i64 0, i32 1
  store i64 %21, ptr %46, align 8, !tbaa !788
  tail call void @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull byval({ i64, i64 }) align 8 %10) #15
  br label %120

47:                                               ; preds = %6
  store i64 %19, ptr %11, align 8, !tbaa !788
  %48 = getelementptr inbounds { i64, i64 }, ptr %11, i64 0, i32 1
  store i64 %21, ptr %48, align 8, !tbaa !788
  tail call void @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull byval({ i64, i64 }) align 8 %11) #15
  br label %120

49:                                               ; preds = %6
  store i64 %19, ptr %12, align 8, !tbaa !788
  %50 = getelementptr inbounds { i64, i64 }, ptr %12, i64 0, i32 1
  store i64 %21, ptr %50, align 8, !tbaa !788
  tail call void @_ZNK11xalanc_1_105XPath3negEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull byval({ i64, i64 }) align 8 %12) #15
  br label %120

51:                                               ; preds = %6
  store i64 %19, ptr %13, align 8, !tbaa !788
  %52 = getelementptr inbounds { i64, i64 }, ptr %13, i64 0, i32 1
  store i64 %21, ptr %52, align 8, !tbaa !788
  tail call void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull byval({ i64, i64 }) align 8 %13) #15
  br label %120

53:                                               ; preds = %6
  tail call void @_ZNK11xalanc_1_105XPath7literalEPKiRNS_17FormatterListenerEMS3_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

54:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  call void @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %55 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #15
  %56 = load ptr, ptr %55, align 8, !tbaa !735
  %57 = getelementptr inbounds ptr, ptr %56, i64 9
  %58 = load ptr, ptr %57, align 8
  invoke void %58(ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
          to label %59 unwind label %60

59:                                               ; preds = %54
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  br label %120

60:                                               ; preds = %54
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  br label %121

62:                                               ; preds = %6
  store i64 %19, ptr %15, align 8, !tbaa !788
  %63 = getelementptr inbounds { i64, i64 }, ptr %15, i64 0, i32 1
  store i64 %21, ptr %63, align 8, !tbaa !788
  tail call void @_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull byval({ i64, i64 }) align 8 %15) #15
  br label %120

64:                                               ; preds = %6
  tail call void @_ZNK11xalanc_1_105XPath9numberlitEPKiRNS_17FormatterListenerEMS3_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

65:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #16
  call void @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %16, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %66 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #15
  %67 = load ptr, ptr %66, align 8, !tbaa !735
  %68 = getelementptr inbounds ptr, ptr %67, i64 9
  %69 = load ptr, ptr %68, align 8
  invoke void %69(ptr noundef nonnull align 8 dereferenceable(24) %66, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
          to label %70 unwind label %71

70:                                               ; preds = %65
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #16
  br label %120

71:                                               ; preds = %65
  %72 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #16
  br label %121

73:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #16
  call void @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %17, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %74 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #15
  %75 = load ptr, ptr %74, align 8, !tbaa !735
  %76 = getelementptr inbounds ptr, ptr %75, i64 9
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
          to label %78 unwind label %79

78:                                               ; preds = %73
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #16
  br label %120

79:                                               ; preds = %73
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #16
  br label %121

81:                                               ; preds = %6
  store i64 %19, ptr %18, align 8, !tbaa !788
  %82 = getelementptr inbounds { i64, i64 }, ptr %18, i64 0, i32 1
  store i64 %21, ptr %82, align 8, !tbaa !788
  tail call void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull byval({ i64, i64 }) align 8 %18) #15
  br label %120

83:                                               ; preds = %6
  %84 = tail call noundef double @_ZNK11xalanc_1_105XPath16functionPositionEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %84, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

85:                                               ; preds = %6
  %86 = tail call noundef double @_ZNK11xalanc_1_105XPath12functionLastERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %86, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

87:                                               ; preds = %6
  %88 = tail call noundef double @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %88, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

89:                                               ; preds = %6
  %90 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath11functionNotEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %90, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

91:                                               ; preds = %6
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

92:                                               ; preds = %6
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

93:                                               ; preds = %6
  %94 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath15functionBooleanEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %94, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

95:                                               ; preds = %6
  %96 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) #15
  tail call void @_ZN11xalanc_1_1018stringToCharactersERKNS_14XalanDOMStringERNS_17FormatterListenerEMS3_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(36) %96, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

97:                                               ; preds = %6
  %98 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_1018stringToCharactersERKNS_14XalanDOMStringERNS_17FormatterListenerEMS3_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(36) %98, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

99:                                               ; preds = %6
  %100 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %1) #15
  tail call void @_ZN11xalanc_1_1018stringToCharactersERKNS_14XalanDOMStringERNS_17FormatterListenerEMS3_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(36) %100, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

101:                                              ; preds = %6
  %102 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_1018stringToCharactersERKNS_14XalanDOMStringERNS_17FormatterListenerEMS3_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(36) %102, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

103:                                              ; preds = %6
  %104 = tail call noundef double @_ZNK11xalanc_1_105XPath13functionFloorEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %104, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

105:                                              ; preds = %6
  %106 = tail call noundef double @_ZNK11xalanc_1_105XPath15functionCeilingEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %106, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

107:                                              ; preds = %6
  %108 = tail call noundef double @_ZNK11xalanc_1_105XPath13functionRoundEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %108, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

109:                                              ; preds = %6
  %110 = tail call noundef double @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %110, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

111:                                              ; preds = %6
  %112 = tail call noundef double @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %112, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

113:                                              ; preds = %6
  %114 = tail call noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %1) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %114, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

115:                                              ; preds = %6
  %116 = tail call noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %116, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

117:                                              ; preds = %6
  %118 = tail call noundef double @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %118, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %19, i64 %21) #15
  br label %120

119:                                              ; preds = %6
  tail call void @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %2) #15
  br label %120

120:                                              ; preds = %119, %117, %115, %113, %111, %109, %107, %105, %103, %101, %99, %97, %95, %93, %92, %91, %89, %87, %85, %83, %81, %78, %70, %64, %62, %59, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23
  ret void

121:                                              ; preds = %79, %71, %60
  %122 = phi { ptr, i32 } [ %80, %79 ], [ %72, %71 ], [ %61, %60 ]
  resume { ptr, i32 } %122
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", align 8
  %8 = alloca %"class.xalanc_1_10::XPathExecutionContext::CurrentNodePushAndPop", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopC2ERS0_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %2) #15
          to label %9 unwind label %13

9:                                                ; preds = %6
  %10 = invoke noundef ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(129) %1) #15
          to label %11 unwind label %15

11:                                               ; preds = %9
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(44) %5) #15
          to label %12 unwind label %15

12:                                               ; preds = %11
  call void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  ret void

13:                                               ; preds = %6
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %17

15:                                               ; preds = %11, %9
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind noalias nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !791 {
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %8 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %9 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %10 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #15
  %11 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef %3) #15
  switch i32 %11, label %59 [
    i32 1, label %12
    i32 2, label %23
    i32 3, label %23
    i32 4, label %23
    i32 5, label %23
    i32 6, label %23
    i32 7, label %23
    i32 8, label %23
    i32 9, label %23
    i32 10, label %23
    i32 11, label %23
    i32 12, label %23
    i32 13, label %23
    i32 14, label %23
    i32 15, label %23
    i32 18, label %23
    i32 21, label %23
    i32 56, label %23
    i32 57, label %23
    i32 58, label %23
    i32 59, label %23
    i32 60, label %23
    i32 61, label %23
    i32 62, label %23
    i32 63, label %23
    i32 64, label %23
    i32 65, label %23
    i32 66, label %23
    i32 67, label %23
    i32 68, label %23
    i32 69, label %23
    i32 70, label %23
    i32 71, label %23
    i32 72, label %23
    i32 73, label %23
    i32 74, label %23
    i32 75, label %23
    i32 76, label %23
    i32 77, label %23
    i32 78, label %23
    i32 17, label %26
    i32 19, label %27
    i32 20, label %37
    i32 23, label %38
    i32 24, label %48
    i32 25, label %58
  ], !prof !792

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %13 = getelementptr inbounds i32, ptr %3, i64 2
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %13, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(44) %5) #15
          to label %14 unwind label %17

14:                                               ; preds = %12
  %15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #15
          to label %16 unwind label %19

16:                                               ; preds = %14
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %60

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %21

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %68

23:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  invoke void @_ZNK11xalanc_1_105XPath15notNodeSetErrorEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %60 unwind label %24

24:                                               ; preds = %66, %59, %58, %37, %26, %23
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %68

26:                                               ; preds = %6
  invoke void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(44) %5) #15
          to label %60 unwind label %24

27:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  invoke void @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %28 unwind label %31

28:                                               ; preds = %27
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #15
          to label %30 unwind label %33

30:                                               ; preds = %28
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %60

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %35

33:                                               ; preds = %28
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %68

37:                                               ; preds = %6
  invoke void @_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(44) %5) #15
          to label %60 unwind label %24

38:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  invoke void @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %39 unwind label %42

39:                                               ; preds = %38
  %40 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #15
          to label %41 unwind label %44

41:                                               ; preds = %39
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  br label %60

42:                                               ; preds = %38
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %46

44:                                               ; preds = %39
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #17
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  br label %68

48:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  invoke void @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %49 unwind label %52

49:                                               ; preds = %48
  %50 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #15
          to label %51 unwind label %54

51:                                               ; preds = %49
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %60

52:                                               ; preds = %48
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %56

54:                                               ; preds = %49
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #17
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi { ptr, i32 } [ %55, %54 ], [ %53, %52 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %68

58:                                               ; preds = %6
  invoke void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(44) %5) #15
          to label %60 unwind label %24

59:                                               ; preds = %6
  invoke void @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %3) #15
          to label %60 unwind label %24

60:                                               ; preds = %59, %58, %37, %26, %23, %51, %41, %30, %16
  %61 = call noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  br i1 %61, label %67, label %62, !prof !793

62:                                               ; preds = %60
  %63 = call noundef ptr @_ZN11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %64 = call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %63) #15
  %65 = icmp eq i32 %64, 5
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  invoke void @_ZNK11xalanc_1_105XPath15notNodeSetErrorEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %67 unwind label %24

67:                                               ; preds = %60, %62, %66
  ret void

68:                                               ; preds = %56, %46, %35, %24, %21
  %69 = phi { ptr, i32 } [ %25, %24 ], [ %57, %56 ], [ %47, %46 ], [ %36, %35 ], [ %22, %21 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  resume { ptr, i32 } %69
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !794 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !795
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath2OrEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 !prof !750 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds i32, ptr %2, i64 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
  %7 = load i8, ptr %5, align 1, !tbaa !780, !range !798, !noundef !799
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %6) #15
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
  %11 = load i8, ptr %5, align 1, !tbaa !780, !range !798
  %12 = icmp ne i8 %11, 0
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi i1 [ %12, %9 ], [ true, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  ret i1 %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath3AndEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 !prof !750 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds i32, ptr %2, i64 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
  %7 = load i8, ptr %5, align 1, !tbaa !780, !range !798, !noundef !799
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %6) #15
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
  %11 = load i8, ptr %5, align 1, !tbaa !780, !range !798
  %12 = icmp ne i8 %11, 0
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi i1 [ %12, %9 ], [ false, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  ret i1 %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath9notequalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %8 = call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %7) #15
  %9 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
          to label %10 unwind label %14

10:                                               ; preds = %4
  %11 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtr3getEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  %12 = invoke noundef zeroext i1 @_ZNK11xalanc_1_107XObject9notEqualsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
          to label %13 unwind label %16

13:                                               ; preds = %10
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i1 %12

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !800 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %8 = call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %7) #15
  %9 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
          to label %10 unwind label %14

10:                                               ; preds = %4
  %11 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtr3getEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  %12 = invoke noundef zeroext i1 @_ZNK11xalanc_1_107XObject6equalsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
          to label %13 unwind label %16

13:                                               ; preds = %10
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i1 %12

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath3lteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %8 = call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %7) #15
  %9 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
          to label %10 unwind label %14

10:                                               ; preds = %4
  %11 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtr3getEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  %12 = invoke noundef zeroext i1 @_ZNK11xalanc_1_107XObject16lessThanOrEqualsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
          to label %13 unwind label %16

13:                                               ; preds = %10
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i1 %12

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath2ltEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %8 = call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %7) #15
  %9 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
          to label %10 unwind label %14

10:                                               ; preds = %4
  %11 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtr3getEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  %12 = invoke noundef zeroext i1 @_ZNK11xalanc_1_107XObject8lessThanERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
          to label %13 unwind label %16

13:                                               ; preds = %10
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i1 %12

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath3gteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %8 = call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %7) #15
  %9 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
          to label %10 unwind label %14

10:                                               ; preds = %4
  %11 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtr3getEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  %12 = invoke noundef zeroext i1 @_ZNK11xalanc_1_107XObject19greaterThanOrEqualsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
          to label %13 unwind label %16

13:                                               ; preds = %10
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i1 %12

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath2gtEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %8 = call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %7) #15
  %9 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
          to label %10 unwind label %14

10:                                               ; preds = %4
  %11 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtr3getEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  %12 = invoke noundef zeroext i1 @_ZNK11xalanc_1_107XObject11greaterThanERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
          to label %13 unwind label %16

13:                                               ; preds = %10
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i1 %12

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 !prof !801 {
  %5 = getelementptr inbounds i32, ptr %2, i64 2
  %6 = tail call noundef double @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %7 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %5) #15
  %8 = tail call noundef double @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %9 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport3addEdd(double noundef %6, double noundef %8) #15
  ret double %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 !prof !802 {
  %5 = getelementptr inbounds i32, ptr %2, i64 2
  %6 = tail call noundef double @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %7 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %5) #15
  %8 = tail call noundef double @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %9 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8subtractEdd(double noundef %6, double noundef %8) #15
  ret double %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 !prof !801 {
  %5 = getelementptr inbounds i32, ptr %2, i64 2
  %6 = tail call noundef double @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %7 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %5) #15
  %8 = tail call noundef double @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %9 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8multiplyEdd(double noundef %6, double noundef %8) #15
  ret double %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 !prof !803 {
  %5 = getelementptr inbounds i32, ptr %2, i64 2
  %6 = tail call noundef double @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %7 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %5) #15
  %8 = tail call noundef double @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %9 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport6divideEdd(double noundef %6, double noundef %8) #15
  ret double %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 !prof !801 {
  %5 = getelementptr inbounds i32, ptr %2, i64 2
  %6 = tail call noundef double @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %7 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %5) #15
  %8 = tail call noundef double @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %9 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport7modulusEdd(double noundef %6, double noundef %8) #15
  ret double %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath3negEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 !prof !750 {
  %5 = getelementptr inbounds i32, ptr %2, i64 2
  %6 = tail call noundef double @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %7 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8negativeEd(double noundef %6) #15
  ret double %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %7 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(44) %7) #15
          to label %8 unwind label %14

8:                                                ; preds = %5
  %9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %10 = load ptr, ptr %9, align 8, !tbaa !735
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %6) #15
          to label %13 unwind label %14

13:                                               ; preds = %8
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void

14:                                               ; preds = %8, %5
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7literalEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 !prof !804 {
  %5 = getelementptr inbounds i32, ptr %2, i64 2
  %6 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull %5) #15
  %7 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi(ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef %6) #15
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !749, !range !798, !noundef !799
  %10 = icmp eq i8 %9, 0
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  br i1 %10, label %16, label %12, !prof !805

12:                                               ; preds = %4
  %13 = load ptr, ptr %11, align 8, !tbaa !735
  %14 = getelementptr inbounds ptr, ptr %13, i64 12
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(41) %7) #15
  br label %24

16:                                               ; preds = %4
  %17 = load ptr, ptr %7, align 8, !tbaa !735
  %18 = getelementptr inbounds ptr, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(36) ptr %19(ptr noundef nonnull align 8 dereferenceable(41) %7) #15
  %21 = load ptr, ptr %11, align 8, !tbaa !735
  %22 = getelementptr inbounds ptr, ptr %21, i64 9
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(36) %20) #15
  br label %24

24:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !806 {
  %5 = alloca %"class.xalanc_1_10::XalanQNameByReference", align 8
  %6 = getelementptr inbounds i32, ptr %2, i64 2
  %7 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull %6) #15
  %8 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi(ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef %7) #15
  %9 = getelementptr inbounds i32, ptr %2, i64 3
  %10 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull %9) #15
  %11 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi(ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef %10) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %12 = load ptr, ptr %8, align 8, !tbaa !735
  %13 = getelementptr inbounds ptr, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef nonnull align 8 dereferenceable(36) ptr %14(ptr noundef nonnull align 8 dereferenceable(41) %8) #15
  %16 = load ptr, ptr %11, align 8, !tbaa !735
  %17 = getelementptr inbounds ptr, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef nonnull align 8 dereferenceable(36) ptr %18(ptr noundef nonnull align 8 dereferenceable(41) %11) #15
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef nonnull align 8 dereferenceable(36) %19) #15
  %20 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !741
  %22 = load ptr, ptr %3, align 8, !tbaa !735
  %23 = getelementptr inbounds ptr, ptr %22, i64 28
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %21) #15
          to label %25 unwind label %26

25:                                               ; preds = %4
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void

26:                                               ; preds = %4
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  resume { ptr, i32 } %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %6 = getelementptr inbounds i32, ptr %3, i64 2
  tail call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath9numberlitEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 !prof !807 {
  %5 = getelementptr inbounds i32, ptr %2, i64 3
  %6 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull %5) #15
  %7 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi(ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef %6) #15
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !749, !range !798, !noundef !799
  %10 = icmp eq i8 %9, 0
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  br i1 %10, label %16, label %12, !prof !808

12:                                               ; preds = %4
  %13 = load ptr, ptr %11, align 8, !tbaa !735
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(41) %7) #15
  br label %24

16:                                               ; preds = %4
  %17 = load ptr, ptr %7, align 8, !tbaa !735
  %18 = getelementptr inbounds ptr, ptr %17, i64 6
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef double %19(ptr noundef nonnull align 8 dereferenceable(41) %7) #15
  %21 = load ptr, ptr %11, align 8, !tbaa !735
  %22 = getelementptr inbounds ptr, ptr %21, i64 7
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %11, double noundef %20) #15
  br label %24

24:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %6 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %8 = getelementptr inbounds i32, ptr %3, i64 1
  %9 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull %8) #15
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 2
  %12 = getelementptr i8, ptr %3, i64 %11
  %13 = getelementptr i8, ptr %12, i64 -4
  %14 = getelementptr inbounds i32, ptr %3, i64 2
  %15 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull %14) #15
  %16 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi(ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef %15) #15
  %17 = getelementptr inbounds i32, ptr %3, i64 3
  %18 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull %17) #15
  %19 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi(ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef %18) #15
  %20 = getelementptr inbounds i32, ptr %3, i64 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 0) #15
  %22 = icmp sgt i32 %9, 5
  br i1 %22, label %23, label %35

23:                                               ; preds = %5, %27
  %24 = phi ptr [ %25, %27 ], [ %20, %5 ]
  %25 = call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef %24) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %24, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %26 unwind label %29

26:                                               ; preds = %23
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #15
          to label %27 unwind label %31

27:                                               ; preds = %26
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  %28 = icmp ult ptr %25, %13
  br i1 %28, label %23, label %35, !llvm.loop !809

29:                                               ; preds = %23
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %33

31:                                               ; preds = %26
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %50

35:                                               ; preds = %27, %5
  %36 = phi ptr [ %20, %5 ], [ %25, %27 ]
  %37 = load ptr, ptr %16, align 8, !tbaa !735
  %38 = getelementptr inbounds ptr, ptr %37, i64 8
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef nonnull align 8 dereferenceable(36) ptr %39(ptr noundef nonnull align 8 dereferenceable(41) %16) #15
          to label %41 unwind label %48

41:                                               ; preds = %35
  %42 = load ptr, ptr %19, align 8, !tbaa !735
  %43 = getelementptr inbounds ptr, ptr %42, i64 8
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef nonnull align 8 dereferenceable(36) ptr %44(ptr noundef nonnull align 8 dereferenceable(41) %19) #15
          to label %46 unwind label %48

46:                                               ; preds = %41
  invoke void @_ZNK11xalanc_1_105XPath11extfunctionEPNS_9XalanNodeEPKiRKNS_14XalanDOMStringES7_RKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS9_EEEERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %36, ptr noundef nonnull align 8 dereferenceable(36) %40, ptr noundef nonnull align 8 dereferenceable(36) %45, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %47 unwind label %48

47:                                               ; preds = %46
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  ret void

48:                                               ; preds = %46, %41, %35
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %50

50:                                               ; preds = %48, %33
  %51 = phi { ptr, i32 } [ %34, %33 ], [ %49, %48 ]
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  resume { ptr, i32 } %51
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !810 {
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %8 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %9 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %10 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %11 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %12 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %13 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %14 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %15 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  %16 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %17 = getelementptr inbounds i32, ptr %3, i64 1
  %18 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull %17) #15
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 2
  %21 = getelementptr i8, ptr %3, i64 %20
  %22 = getelementptr i8, ptr %21, i64 -4
  %23 = getelementptr inbounds i32, ptr %3, i64 2
  %24 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull %23) #15
  %25 = getelementptr inbounds i32, ptr %3, i64 3
  %26 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull %25) #15
  %27 = getelementptr inbounds i32, ptr %3, i64 4
  switch i32 %26, label %98 [
    i32 0, label %28
    i32 1, label %35
    i32 2, label %45
    i32 3, label %66
  ], !prof !811

28:                                               ; preds = %5
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1018XPathFunctionTableixEi(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, i32 noundef %24) #15
  %30 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !741
  %32 = load ptr, ptr %29, align 8, !tbaa !735
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %2, ptr noundef %31) #15
  br label %121

35:                                               ; preds = %5
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1018XPathFunctionTableixEi(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, i32 noundef %24) #15
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %27, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %37 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !741
  %39 = load ptr, ptr %36, align 8, !tbaa !735
  %40 = getelementptr inbounds ptr, ptr %39, i64 4
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %38) #15
          to label %42 unwind label %43

42:                                               ; preds = %35
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  br label %121

43:                                               ; preds = %35
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  br label %122

45:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %27, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %46 = call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull %27) #15
  %47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1018XPathFunctionTableixEi(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, i32 noundef %24) #15
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7) #15
          to label %48 unwind label %56

48:                                               ; preds = %45
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %46, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %49 unwind label %58

49:                                               ; preds = %48
  %50 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !741
  %52 = load ptr, ptr %47, align 8, !tbaa !735
  %53 = getelementptr inbounds ptr, ptr %52, i64 5
  %54 = load ptr, ptr %53, align 8
  invoke void %54(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %51) #15
          to label %55 unwind label %60

55:                                               ; preds = %49
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #17
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %121

56:                                               ; preds = %45
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %64

58:                                               ; preds = %48
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %62

60:                                               ; preds = %49
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #17
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi { ptr, i32 } [ %61, %60 ], [ %59, %58 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  br label %64

64:                                               ; preds = %62, %56
  %65 = phi { ptr, i32 } [ %63, %62 ], [ %57, %56 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %122

66:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %27, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %67 = call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull %27) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %67, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %68 unwind label %80

68:                                               ; preds = %66
  %69 = call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef %67) #15
  %70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1018XPathFunctionTableixEi(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, i32 noundef %24) #15
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %10) #15
          to label %71 unwind label %82

71:                                               ; preds = %68
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %11) #15
          to label %72 unwind label %84

72:                                               ; preds = %71
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %69, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %73 unwind label %86

73:                                               ; preds = %72
  %74 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !741
  %76 = load ptr, ptr %70, align 8, !tbaa !735
  %77 = getelementptr inbounds ptr, ptr %76, i64 6
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %75) #15
          to label %79 unwind label %88

79:                                               ; preds = %73
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #17
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #17
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #17
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %121

80:                                               ; preds = %66
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %96

82:                                               ; preds = %68
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %94

84:                                               ; preds = %71
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %92

86:                                               ; preds = %72
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %90

88:                                               ; preds = %73
  %89 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #17
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi { ptr, i32 } [ %89, %88 ], [ %87, %86 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #17
  br label %92

92:                                               ; preds = %90, %84
  %93 = phi { ptr, i32 } [ %91, %90 ], [ %85, %84 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #17
  br label %94

94:                                               ; preds = %92, %82
  %95 = phi { ptr, i32 } [ %93, %92 ], [ %83, %82 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #17
  br label %96

96:                                               ; preds = %94, %80
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %81, %80 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %122

98:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #16
  %99 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %99, i64 noundef 0) #15
  %100 = sext i32 %26 to i64
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %100) #15
          to label %101 unwind label %109

101:                                              ; preds = %98
  %102 = icmp sgt i32 %18, 5
  br i1 %102, label %103, label %117

103:                                              ; preds = %101, %106
  %104 = phi ptr [ %107, %106 ], [ %27, %101 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #16
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %16, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %104, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %105 unwind label %111

105:                                              ; preds = %103
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %16) #15
          to label %106 unwind label %113

106:                                              ; preds = %105
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #16
  %107 = call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef %104) #15
  %108 = icmp ult ptr %107, %22
  br i1 %108, label %103, label %117, !llvm.loop !812

109:                                              ; preds = %117, %98
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %119

111:                                              ; preds = %103
  %112 = landingpad { ptr, i32 }
          cleanup
  br label %115

113:                                              ; preds = %105
  %114 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #17
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi { ptr, i32 } [ %114, %113 ], [ %112, %111 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #16
  br label %119

117:                                              ; preds = %106, %101
  invoke void @_ZNK11xalanc_1_105XPath8functionEPNS_9XalanNodeEiRKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS4_EEEERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, i32 noundef %24, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %118 unwind label %109

118:                                              ; preds = %117
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #16
  br label %121

119:                                              ; preds = %115, %109
  %120 = phi { ptr, i32 } [ %116, %115 ], [ %110, %109 ]
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #16
  br label %122

121:                                              ; preds = %118, %79, %55, %42, %28
  ret void

122:                                              ; preds = %119, %96, %64, %43
  %123 = phi { ptr, i32 } [ %44, %43 ], [ %65, %64 ], [ %97, %96 ], [ %120, %119 ]
  resume { ptr, i32 } %123
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !813 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %7 = call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(44) %7) #15
          to label %8 unwind label %14

8:                                                ; preds = %5
  %9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %10 = load ptr, ptr %9, align 8, !tbaa !735
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %6) #15
          to label %13 unwind label %14

13:                                               ; preds = %8
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void

14:                                               ; preds = %8, %5
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK11xalanc_1_105XPath16functionPositionEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 !prof !814 {
  %4 = load ptr, ptr %2, align 8, !tbaa !735
  %5 = getelementptr inbounds ptr, ptr %4, i64 14
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %8 = uitofp i32 %7 to double
  ret double %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK11xalanc_1_105XPath12functionLastERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %3 = load ptr, ptr %1, align 8, !tbaa !735
  %4 = getelementptr inbounds ptr, ptr %3, i64 13
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %7 = uitofp i32 %6 to double
  ret double %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !815 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  %8 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %8) #15
          to label %9 unwind label %22

9:                                                ; preds = %4
  %10 = call noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  br i1 %10, label %26, label %11, !prof !816

11:                                               ; preds = %9
  %12 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  %13 = load ptr, ptr %12, align 8, !tbaa !735
  %14 = getelementptr inbounds ptr, ptr %13, i64 13
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef nonnull align 8 dereferenceable(8) ptr %15(ptr noundef nonnull align 8 dereferenceable(24) %12) #15
          to label %17 unwind label %24

17:                                               ; preds = %11
  %18 = load ptr, ptr %16, align 8, !tbaa !735
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef i32 %20(ptr noundef nonnull align 8 dereferenceable(8) %16) #15
          to label %32 unwind label %24

22:                                               ; preds = %4
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %35

24:                                               ; preds = %26, %17, %11
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  br label %35

26:                                               ; preds = %9
  %27 = call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  %28 = load ptr, ptr %27, align 8, !tbaa !735
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef i32 %30(ptr noundef nonnull align 8 dereferenceable(40) %27) #15
          to label %32 unwind label %24

32:                                               ; preds = %26, %17
  %33 = phi i32 [ %21, %17 ], [ %31, %26 ]
  %34 = uitofp i32 %33 to double
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret double %34

35:                                               ; preds = %24, %22
  %36 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  resume { ptr, i32 } %36
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath11functionNotEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %5 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath15functionBooleanEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %6 = xor i1 %5, true
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath15functionBooleanEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  %6 = getelementptr inbounds i32, ptr %2, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
  %7 = load i8, ptr %5, align 1, !tbaa !780, !range !798, !noundef !799
  %8 = icmp ne i8 %7, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !817 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011DOMServices13getNameOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  %8 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %8) #15
          to label %9 unwind label %27

9:                                                ; preds = %4
  %10 = call noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  %13 = load ptr, ptr %12, align 8, !tbaa !735
  %14 = getelementptr inbounds ptr, ptr %13, i64 13
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef nonnull align 8 dereferenceable(8) ptr %15(ptr noundef nonnull align 8 dereferenceable(24) %12) #15
          to label %19 unwind label %29

17:                                               ; preds = %9
  %18 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  br label %19

19:                                               ; preds = %11, %17
  %20 = phi ptr [ %18, %17 ], [ %16, %11 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !735
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(8) %20) #15
          to label %25 unwind label %29

25:                                               ; preds = %19
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %38, label %31

27:                                               ; preds = %4
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %40

29:                                               ; preds = %36, %31, %19, %11
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  br label %40

31:                                               ; preds = %25
  %32 = load ptr, ptr %20, align 8, !tbaa !735
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 0) #15
          to label %36 unwind label %29

36:                                               ; preds = %31
  %37 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %35) #15
          to label %38 unwind label %29

38:                                               ; preds = %36, %25
  %39 = phi ptr [ @_ZN11xalanc_1_105XPath13s_emptyStringE, %25 ], [ %37, %36 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret ptr %39

40:                                               ; preds = %29, %27
  %41 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  resume { ptr, i32 } %41
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1) local_unnamed_addr #5 align 2 !prof !750 {
  %3 = load ptr, ptr %1, align 8, !tbaa !735
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  switch i32 %6, label %14 [
    i32 7, label %7
    i32 1, label %7
    i32 2, label %9
  ]

7:                                                ; preds = %2, %2
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011DOMServices18getLocalNameOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  br label %14

9:                                                ; preds = %2
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011DOMServices18getLocalNameOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %11 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !753
  %12 = tail call noundef zeroext i1 @_ZN11xalanc_1_10neERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(36) %11) #15
  %13 = select i1 %12, ptr %10, ptr @_ZN11xalanc_1_105XPath13s_emptyStringE
  br label %14

14:                                               ; preds = %2, %9, %7
  %15 = phi ptr [ %8, %7 ], [ %13, %9 ], [ @_ZN11xalanc_1_105XPath13s_emptyStringE, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  %8 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %8) #15
          to label %9 unwind label %27

9:                                                ; preds = %4
  %10 = call noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  %13 = load ptr, ptr %12, align 8, !tbaa !735
  %14 = getelementptr inbounds ptr, ptr %13, i64 13
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef nonnull align 8 dereferenceable(8) ptr %15(ptr noundef nonnull align 8 dereferenceable(24) %12) #15
          to label %19 unwind label %29

17:                                               ; preds = %9
  %18 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  br label %19

19:                                               ; preds = %11, %17
  %20 = phi ptr [ %18, %17 ], [ %16, %11 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !735
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(8) %20) #15
          to label %25 unwind label %29

25:                                               ; preds = %19
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %38, label %31

27:                                               ; preds = %4
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %40

29:                                               ; preds = %36, %31, %19, %11
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  br label %40

31:                                               ; preds = %25
  %32 = load ptr, ptr %20, align 8, !tbaa !735
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 0) #15
          to label %36 unwind label %29

36:                                               ; preds = %31
  %37 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %35) #15
          to label %38 unwind label %29

38:                                               ; preds = %36, %25
  %39 = phi ptr [ @_ZN11xalanc_1_105XPath13s_emptyStringE, %25 ], [ %37, %36 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret ptr %39

40:                                               ; preds = %29, %27
  %41 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  resume { ptr, i32 } %41
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK11xalanc_1_105XPath13functionFloorEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat align 2 !prof !801 {
  %5 = tail call noundef double @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %6 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport5floorEd(double noundef %5) #15
  ret double %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK11xalanc_1_105XPath15functionCeilingEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %5 = tail call noundef double @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %6 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport7ceilingEd(double noundef %5) #15
  ret double %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK11xalanc_1_105XPath13functionRoundEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %5 = tail call noundef double @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %6 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef %5) #15
  ret double %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 !prof !818 {
  %4 = tail call noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  ret double %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat align 2 !prof !801 {
  %5 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %6 = getelementptr inbounds i32, ptr %2, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %7 = load double, ptr %5, align 8, !tbaa !784
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret double %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %3 = alloca %"class.xalanc_1_10::FormatterStringLengthCounter", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 17, i64 0) #15
          to label %4 unwind label %7

4:                                                ; preds = %2
  %5 = call noundef i64 @_ZNK11xalanc_1_1028FormatterStringLengthCounter8getCountEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  %6 = uitofp i64 %5 to double
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret double %6

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !819 {
  %5 = alloca %"class.xalanc_1_10::FormatterStringLengthCounter", align 8
  %6 = alloca { i64, i64 }, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  store i64 17, ptr %6, align 8, !tbaa !788
  %8 = getelementptr inbounds { i64, i64 }, ptr %6, i64 0, i32 1
  store i64 0, ptr %8, align 8, !tbaa !788
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval({ i64, i64 }) align 8 %6) #15
          to label %9 unwind label %12

9:                                                ; preds = %4
  %10 = call noundef i64 @_ZNK11xalanc_1_1028FormatterStringLengthCounter8getCountEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  %11 = uitofp i64 %10 to double
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  ret double %11

12:                                               ; preds = %4
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !820 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %8 = getelementptr inbounds i32, ptr %2, i64 2
  %9 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %9) #15
          to label %10 unwind label %32

10:                                               ; preds = %4
  %11 = call noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  br i1 %11, label %18, label %12, !prof !821

12:                                               ; preds = %10
  %13 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  %14 = load ptr, ptr %13, align 8, !tbaa !735
  %15 = getelementptr inbounds ptr, ptr %14, i64 13
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr %16(ptr noundef nonnull align 8 dereferenceable(24) %13) #15
          to label %20 unwind label %34

18:                                               ; preds = %10
  %19 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  br label %20

20:                                               ; preds = %12, %18
  %21 = phi ptr [ %19, %18 ], [ %17, %12 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !735
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef i32 %24(ptr noundef nonnull align 8 dereferenceable(8) %21) #15
          to label %26 unwind label %36

26:                                               ; preds = %20
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %61, label %28, !prof !822

28:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
          to label %29 unwind label %38

29:                                               ; preds = %28
  %30 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  br label %40

31:                                               ; preds = %54
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  br label %61

32:                                               ; preds = %4
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %65

34:                                               ; preds = %12
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %63

36:                                               ; preds = %20
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %63

38:                                               ; preds = %28
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %59

40:                                               ; preds = %29, %54
  %41 = phi i32 [ 0, %29 ], [ %55, %54 ]
  %42 = phi double [ 0.000000e+00, %29 ], [ %52, %54 ]
  %43 = load ptr, ptr %21, align 8, !tbaa !735
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef %41) #15
          to label %47 unwind label %57

47:                                               ; preds = %40
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull align 8 dereferenceable(36) %30) #15
          to label %48 unwind label %57

48:                                               ; preds = %47
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  %50 = invoke noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %30, ptr noundef nonnull align 8 dereferenceable(8) %49) #15
          to label %51 unwind label %57

51:                                               ; preds = %48
  %52 = invoke noundef double @_ZN11xalanc_1_1013DoubleSupport3addEdd(double noundef %42, double noundef %50) #15
          to label %53 unwind label %57

53:                                               ; preds = %51
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %30) #15
          to label %54 unwind label %57

54:                                               ; preds = %53
  %55 = add nuw i32 %41, 1
  %56 = icmp eq i32 %55, %25
  br i1 %56, label %31, label %40, !prof !823, !llvm.loop !824

57:                                               ; preds = %53, %51, %48, %47, %40
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  br label %59

59:                                               ; preds = %57, %38
  %60 = phi { ptr, i32 } [ %58, %57 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  br label %63

61:                                               ; preds = %31, %26
  %62 = phi double [ %52, %31 ], [ 0.000000e+00, %26 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret double %62

63:                                               ; preds = %36, %59, %34
  %64 = phi { ptr, i32 } [ %35, %34 ], [ %60, %59 ], [ %37, %36 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  br label %65

65:                                               ; preds = %63, %32
  %66 = phi { ptr, i32 } [ %64, %63 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  resume { ptr, i32 } %66
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !825 {
  store ptr %1, ptr %0, align 8, !tbaa !826
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %1) #15
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011DOMServices13getNameOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport5floorEd(double noundef %0) local_unnamed_addr #2 comdat align 2 !prof !801 {
  %2 = tail call double @llvm.floor.f64(double %0)
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport7ceilingEd(double noundef %0) local_unnamed_addr #2 comdat align 2 !prof !750 {
  %2 = tail call double @llvm.ceil.f64(double %0)
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #9

; Function Attrs: optsize
declare noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanEd(double noundef %0) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %2 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) #15
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %0, double noundef 0.000000e+00) #15
  %5 = xor i1 %4, true
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i1 [ false, %1 ], [ %5, %3 ]
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %7 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %7) #15
          to label %8 unwind label %13

8:                                                ; preds = %5
  %9 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %10 = invoke noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
          to label %11 unwind label %13

11:                                               ; preds = %8
  %12 = zext i1 %10 to i8
  store i8 %12, ptr %4, align 1, !tbaa !780
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void

13:                                               ; preds = %8, %5
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7literalEPKiRb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %2) local_unnamed_addr #5 align 2 !prof !750 {
  %4 = getelementptr inbounds i32, ptr %1, i64 2
  %5 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %4) #15
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %5) #15
  %7 = load ptr, ptr %6, align 8, !tbaa !735
  %8 = getelementptr inbounds ptr, ptr %7, i64 7
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(41) %6) #15
  %11 = zext i1 %10 to i8
  store i8 %11, ptr %2, align 1, !tbaa !780
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !828 {
  %2 = load ptr, ptr %0, align 8, !tbaa !826
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !829 {
  %2 = load ptr, ptr %0, align 8, !tbaa !826
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %2) #15
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %6 = getelementptr inbounds i32, ptr %2, i64 2
  tail call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath9numberlitEPKiRb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %2) local_unnamed_addr #5 align 2 !prof !750 {
  %4 = getelementptr inbounds i32, ptr %1, i64 3
  %5 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %4) #15
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %5) #15
  %7 = load ptr, ptr %6, align 8, !tbaa !735
  %8 = getelementptr inbounds ptr, ptr %7, i64 7
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(41) %6) #15
  %11 = zext i1 %10 to i8
  store i8 %11, ptr %2, align 1, !tbaa !780
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !830 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %7 = call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %7) #15
          to label %8 unwind label %13

8:                                                ; preds = %5
  %9 = call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %10 = invoke noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
          to label %11 unwind label %13

11:                                               ; preds = %8
  %12 = zext i1 %10 to i8
  store i8 %12, ptr %4, align 1, !tbaa !780
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void

13:                                               ; preds = %8, %5
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %3 = icmp ne i32 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) local_unnamed_addr #5 comdat align 2 !prof !831 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, double noundef %0) #15
  ret i1 %2
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 !prof !832 {
  %3 = load i32, ptr %0, align 8, !tbaa !788
  %4 = bitcast double %1 to i64
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %3, %5
  %7 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = lshr i64 %4, 32
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %8, %10
  %12 = select i1 %6, i1 %11, i1 false, !prof !833
  ret i1 %12
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #5 comdat align 2 !prof !834 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !835 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !836 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !837
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_107XObject6numberEb(i1 noundef zeroext %0) local_unnamed_addr #2 comdat align 2 !prof !750 {
  %2 = select i1 %0, double 1.000000e+00, double 0.000000e+00
  ret double %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %7 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %7) #15
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %10 = invoke noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %9) #15
          to label %11 unwind label %12

11:                                               ; preds = %8
  store double %10, ptr %4, align 8, !tbaa !784
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void

12:                                               ; preds = %8, %5
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7literalEPKiRd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %2) local_unnamed_addr #5 align 2 !prof !750 {
  %4 = getelementptr inbounds i32, ptr %1, i64 2
  %5 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %4) #15
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %5) #15
  %7 = load ptr, ptr %6, align 8, !tbaa !735
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef double %9(ptr noundef nonnull align 8 dereferenceable(41) %6) #15
  store double %10, ptr %2, align 8, !tbaa !784
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #5 comdat align 2 !prof !814 {
  %6 = getelementptr inbounds i32, ptr %2, i64 2
  tail call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath9numberlitEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) local_unnamed_addr #5 align 2 !prof !750 {
  %3 = getelementptr inbounds i32, ptr %1, i64 3
  %4 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %3) #15
  %5 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %4) #15
  %6 = load ptr, ptr %5, align 8, !tbaa !735
  %7 = getelementptr inbounds ptr, ptr %6, i64 6
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef double %8(ptr noundef nonnull align 8 dereferenceable(41) %5) #15
  ret double %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !781 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %7 = call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %7) #15
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %10 = invoke noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %9) #15
          to label %11 unwind label %12

11:                                               ; preds = %8
  store double %10, ptr %4, align 8, !tbaa !784
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void

12:                                               ; preds = %8, %5
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_107XObject6numberERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !839 {
  %3 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  ret double %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !840 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !841
  ret ptr %3
}

; Function Attrs: optsize
declare noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE(double noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %7 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %7) #15
          to label %8 unwind label %11

8:                                                ; preds = %5
  %9 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZN11xalanc_1_107XObject6stringERKNS_15NodeRefListBaseERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
          to label %10 unwind label %11

10:                                               ; preds = %8
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void

11:                                               ; preds = %8, %5
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7literalEPKiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #5 align 2 !prof !750 {
  %4 = getelementptr inbounds i32, ptr %1, i64 2
  %5 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %4) #15
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %5) #15
  %7 = load ptr, ptr %6, align 8, !tbaa !735
  %8 = getelementptr inbounds ptr, ptr %7, i64 11
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr noundef nonnull align 8 dereferenceable(36) %2) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %6 = getelementptr inbounds i32, ptr %2, i64 2
  tail call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath9numberlitEPKiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #5 align 2 !prof !750 {
  %4 = getelementptr inbounds i32, ptr %1, i64 3
  %5 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %4) #15
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %5) #15
  %7 = load ptr, ptr %6, align 8, !tbaa !735
  %8 = getelementptr inbounds ptr, ptr %7, i64 11
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr noundef nonnull align 8 dereferenceable(36) %2) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !842 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %7 = call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %7) #15
          to label %8 unwind label %11

8:                                                ; preds = %5
  %9 = call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZN11xalanc_1_107XObject6stringERKNS_15NodeRefListBaseERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
          to label %10 unwind label %11

10:                                               ; preds = %8
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void

11:                                               ; preds = %8, %5
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #5 comdat align 2 !prof !843 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  %4 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %3, i32 noundef %4) #15
  ret ptr %5
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #5 comdat align 2 !prof !844 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  br i1 %2, label %5, label %3, !prof !845

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #15
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !846 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !739
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !847 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !725
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %5 = getelementptr inbounds i8, ptr %1, i64 %3
  %6 = and i64 %2, 1
  %7 = icmp eq i64 %6, 0
  br i1 %0, label %8, label %16

8:                                                ; preds = %4
  br i1 %7, label %14, label %9

9:                                                ; preds = %8
  %10 = load ptr, ptr %5, align 8, !tbaa !735
  %11 = getelementptr i8, ptr %10, i64 %2
  %12 = getelementptr i8, ptr %11, i64 -1
  %13 = load ptr, ptr %12, align 8, !nosanitize !799
  br label %24

14:                                               ; preds = %8
  %15 = inttoptr i64 %2 to ptr
  br label %24

16:                                               ; preds = %4
  br i1 %7, label %22, label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr %5, align 8, !tbaa !735
  %19 = getelementptr i8, ptr %18, i64 %2
  %20 = getelementptr i8, ptr %19, i64 -1
  %21 = load ptr, ptr %20, align 8, !nosanitize !799
  br label %24

22:                                               ; preds = %16
  %23 = inttoptr i64 %2 to ptr
  br label %24

24:                                               ; preds = %17, %22, %9, %14
  %25 = phi ptr [ @_ZN11xalanc_1_107XObject12s_trueStringE, %14 ], [ @_ZN11xalanc_1_107XObject12s_trueStringE, %9 ], [ @_ZN11xalanc_1_107XObject13s_falseStringE, %22 ], [ @_ZN11xalanc_1_107XObject13s_falseStringE, %17 ]
  %26 = phi ptr [ %15, %14 ], [ %13, %9 ], [ %23, %22 ], [ %21, %17 ]
  %27 = load ptr, ptr %25, align 8, !tbaa !753
  %28 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %27) #15
  %29 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %27) #15
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %28, i32 noundef %29) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nocapture noundef readonly byval({ i64, i64 }) align 8 %5) local_unnamed_addr #5 align 2 !prof !750 {
  %7 = load i64, ptr %5, align 8, !tbaa !788
  %8 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !788
  %10 = tail call noundef double @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %7, i64 %9) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nocapture noundef readonly byval({ i64, i64 }) align 8 %5) local_unnamed_addr #5 align 2 !prof !750 {
  %7 = load i64, ptr %5, align 8, !tbaa !788
  %8 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !788
  %10 = tail call noundef double @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %7, i64 %9) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nocapture noundef readonly byval({ i64, i64 }) align 8 %5) local_unnamed_addr #5 align 2 !prof !750 {
  %7 = load i64, ptr %5, align 8, !tbaa !788
  %8 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !788
  %10 = tail call noundef double @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %7, i64 %9) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nocapture noundef readonly byval({ i64, i64 }) align 8 %5) local_unnamed_addr #5 align 2 !prof !848 {
  %7 = load i64, ptr %5, align 8, !tbaa !788
  %8 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !788
  %10 = tail call noundef double @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %7, i64 %9) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nocapture noundef readonly byval({ i64, i64 }) align 8 %5) local_unnamed_addr #5 align 2 !prof !750 {
  %7 = load i64, ptr %5, align 8, !tbaa !788
  %8 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !788
  %10 = tail call noundef double @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %7, i64 %9) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath3negEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nocapture noundef readonly byval({ i64, i64 }) align 8 %5) local_unnamed_addr #5 align 2 !prof !750 {
  %7 = load i64, ptr %5, align 8, !tbaa !788
  %8 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !788
  %10 = tail call noundef double @_ZNK11xalanc_1_105XPath3negEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  tail call void @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %7, i64 %9) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nocapture noundef readonly byval({ i64, i64 }) align 8 %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  %8 = load i64, ptr %5, align 8, !tbaa !788
  %9 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !788
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %11 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  invoke void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %11) #15
          to label %12 unwind label %15

12:                                               ; preds = %6
  %13 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  invoke void @_ZN11xalanc_1_107XObject6stringERKNS_15NodeRefListBaseERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %8, i64 %10) #15
          to label %14 unwind label %15

14:                                               ; preds = %12
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  ret void

15:                                               ; preds = %12, %6
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7literalEPKiRNS_17FormatterListenerEMS3_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %3, i64 %4) local_unnamed_addr #5 align 2 !prof !750 {
  %6 = getelementptr inbounds i32, ptr %1, i64 2
  %7 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %6) #15
  %8 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %7) #15
  %9 = load ptr, ptr %8, align 8, !tbaa !735
  %10 = getelementptr inbounds ptr, ptr %9, i64 9
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(41) %8, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %3, i64 %4) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef byval({ i64, i64 }) align 8 %5) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %7 = alloca { i64, i64 }, align 16
  %8 = getelementptr inbounds i32, ptr %2, i64 2
  %9 = load <2 x i64>, ptr %5, align 8, !tbaa !788
  store <2 x i64> %9, ptr %7, align 16, !tbaa !788
  tail call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull byval({ i64, i64 }) align 8 %7) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath9numberlitEPKiRNS_17FormatterListenerEMS3_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %3, i64 %4) local_unnamed_addr #5 align 2 !prof !750 {
  %6 = getelementptr inbounds i32, ptr %1, i64 3
  %7 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %6) #15
  %8 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %7) #15
  %9 = load ptr, ptr %8, align 8, !tbaa !735
  %10 = getelementptr inbounds ptr, ptr %9, i64 9
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(41) %8, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %3, i64 %4) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nocapture noundef readonly byval({ i64, i64 }) align 8 %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !849 {
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  %8 = load i64, ptr %5, align 8, !tbaa !788
  %9 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !788
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %11 = call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  invoke void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %11) #15
          to label %12 unwind label %15

12:                                               ; preds = %6
  %13 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  invoke void @_ZN11xalanc_1_107XObject6stringERKNS_15NodeRefListBaseERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %8, i64 %10) #15
          to label %14 unwind label %15

14:                                               ; preds = %12
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  ret void

15:                                               ; preds = %12, %6
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) local_unnamed_addr #5 comdat align 2 !prof !850 {
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018stringToCharactersERKNS_14XalanDOMStringERNS_17FormatterListenerEMS3_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) local_unnamed_addr #5 comdat !prof !817 {
  %5 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7, !prof !851

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %1, i64 %3
  %9 = and i64 %2, 1
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %8, align 8, !tbaa !735
  %13 = getelementptr i8, ptr %12, i64 %2
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load ptr, ptr %14, align 8, !nosanitize !799
  br label %18

16:                                               ; preds = %7
  %17 = inttoptr i64 %2 to ptr
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi ptr [ %15, %11 ], [ %17, %16 ]
  %20 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %20, i32 noundef %5) #15
  br label %21

21:                                               ; preds = %18, %4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef, ptr noundef nonnull align 8 dereferenceable(24), i64, i64) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !852 {
  %3 = load ptr, ptr %0, align 8, !tbaa !826
  %4 = load ptr, ptr %1, align 8, !tbaa !826
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %8, label %6, !prof !853

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %3) #15
  %7 = load ptr, ptr %1, align 8, !tbaa !826
  store ptr %7, ptr %0, align 8, !tbaa !826
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %7) #15
  br label %8

8:                                                ; preds = %6, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %8 = getelementptr inbounds i32, ptr %2, i64 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %9 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %10 = call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %8) #15
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %35, label %12

12:                                               ; preds = %5, %29
  %13 = phi ptr [ %30, %29 ], [ %8, %5 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %9) #15
          to label %14 unwind label %23

14:                                               ; preds = %12
  %15 = call noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  br i1 %15, label %27, label %16

16:                                               ; preds = %14
  %17 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  %18 = load ptr, ptr %17, align 8, !tbaa !735
  %19 = getelementptr inbounds ptr, ptr %18, i64 13
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr %20(ptr noundef nonnull align 8 dereferenceable(24) %17) #15
          to label %22 unwind label %25

22:                                               ; preds = %16
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKNS_15NodeRefListBaseERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %4, ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
          to label %29 unwind label %25

23:                                               ; preds = %12
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %33

25:                                               ; preds = %28, %27, %22, %16
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  br label %33

27:                                               ; preds = %14
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %4, ptr noundef nonnull align 8 dereferenceable(44) %9, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
          to label %28 unwind label %25

28:                                               ; preds = %27
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList5clearEv(ptr noundef nonnull align 8 dereferenceable(44) %9) #15
          to label %29 unwind label %25

29:                                               ; preds = %28, %22
  %30 = call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %13) #15
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  %31 = call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %30) #15
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %35, label %12, !llvm.loop !854

33:                                               ; preds = %25, %23
  %34 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %34

35:                                               ; preds = %29, %5
  call void @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %4) #15
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %4) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %4) #15
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %4) local_unnamed_addr #5 comdat align 2 !prof !855 {
  %6 = getelementptr inbounds i32, ptr %2, i64 2
  tail call void @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(44) %4) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !856 {
  %2 = load ptr, ptr %0, align 8, !tbaa !826
  %3 = icmp eq ptr %2, null
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !750 {
  %2 = load ptr, ptr %0, align 8, !tbaa !826
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !857 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !858
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(44) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !862 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::ContextNodeListPushAndPop", align 8
  %8 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
  %10 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %9, ptr noundef %3) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  switch i32 %10, label %59 [
    i32 19, label %11
    i32 23, label %11
    i32 24, label %11
    i32 20, label %11
    i32 47, label %16
    i32 42, label %19
    i32 45, label %22
    i32 34, label %25
    i32 35, label %28
    i32 50, label %31
    i32 36, label %32
    i32 51, label %36
    i32 52, label %36
    i32 53, label %36
    i32 37, label %37
    i32 38, label %41
    i32 39, label %41
    i32 40, label %44
    i32 41, label %47
    i32 43, label %50
    i32 44, label %53
    i32 46, label %56
  ], !prof !863

11:                                               ; preds = %5, %5, %5, %5
  %12 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %13 = invoke noundef ptr @_ZNK11xalanc_1_105XPath11findNodeSetERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 poison, ptr noundef nonnull align 8 dereferenceable(44) %12) #15
          to label %62 unwind label %14

14:                                               ; preds = %59, %56, %53, %50, %47, %44, %41, %37, %32, %28, %25, %22, %19, %16, %11
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %144

16:                                               ; preds = %5
  %17 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %18 = invoke noundef ptr @_ZNK11xalanc_1_105XPath8findRootERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr nonnull align 8 poison, ptr noundef %2, ptr noundef %3, i32 poison, ptr noundef nonnull align 8 dereferenceable(44) %17) #15
          to label %62 unwind label %14

19:                                               ; preds = %5
  %20 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %21 = invoke noundef ptr @_ZNK11xalanc_1_105XPath10findParentERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef 42, ptr noundef nonnull align 8 dereferenceable(44) %20) #15
          to label %62 unwind label %14

22:                                               ; preds = %5
  %23 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %24 = invoke noundef ptr @_ZNK11xalanc_1_105XPath8findSelfERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef 45, ptr noundef nonnull align 8 dereferenceable(44) %23) #15
          to label %62 unwind label %14

25:                                               ; preds = %5
  %26 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %27 = invoke noundef ptr @_ZNK11xalanc_1_105XPath13findAncestorsERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef 34, ptr noundef nonnull align 8 dereferenceable(44) %26) #15
          to label %62 unwind label %14

28:                                               ; preds = %5
  %29 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %30 = invoke noundef ptr @_ZNK11xalanc_1_105XPath19findAncestorsOrSelfERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef 35, ptr noundef nonnull align 8 dereferenceable(44) %29) #15
          to label %62 unwind label %14

31:                                               ; preds = %5
  br label %32

32:                                               ; preds = %5, %31
  %33 = phi i1 [ true, %5 ], [ false, %31 ]
  %34 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %35 = invoke noundef ptr @_ZNK11xalanc_1_105XPath14findAttributesERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(44) %34) #15
          to label %62 unwind label %14

36:                                               ; preds = %5, %5, %5
  br label %37

37:                                               ; preds = %5, %36
  %38 = phi i1 [ true, %5 ], [ false, %36 ]
  %39 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %40 = invoke noundef ptr @_ZNK11xalanc_1_105XPath12findChildrenERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(44) %39) #15
          to label %62 unwind label %14

41:                                               ; preds = %5, %5
  %42 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %43 = invoke noundef ptr @_ZNK11xalanc_1_105XPath15findDescendantsERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(44) %42) #15
          to label %62 unwind label %14

44:                                               ; preds = %5
  %45 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %46 = invoke noundef ptr @_ZNK11xalanc_1_105XPath13findFollowingERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef 40, ptr noundef nonnull align 8 dereferenceable(44) %45) #15
          to label %62 unwind label %14

47:                                               ; preds = %5
  %48 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %49 = invoke noundef ptr @_ZNK11xalanc_1_105XPath21findFollowingSiblingsERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef 41, ptr noundef nonnull align 8 dereferenceable(44) %48) #15
          to label %62 unwind label %14

50:                                               ; preds = %5
  %51 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %52 = invoke noundef ptr @_ZNK11xalanc_1_105XPath14findPreceedingERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef 43, ptr noundef nonnull align 8 dereferenceable(44) %51) #15
          to label %62 unwind label %14

53:                                               ; preds = %5
  %54 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %55 = invoke noundef ptr @_ZNK11xalanc_1_105XPath22findPreceedingSiblingsERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef 44, ptr noundef nonnull align 8 dereferenceable(44) %54) #15
          to label %62 unwind label %14

56:                                               ; preds = %5
  %57 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %58 = invoke noundef ptr @_ZNK11xalanc_1_105XPath13findNamespaceERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef 46, ptr noundef nonnull align 8 dereferenceable(44) %57) #15
          to label %62 unwind label %14

59:                                               ; preds = %5
  %60 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %61 = invoke noundef ptr @_ZNK11xalanc_1_105XPath22findNodesOnUnknownAxisERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %10, ptr nonnull align 8 poison) #15
          to label %62 unwind label %14

62:                                               ; preds = %59, %56, %53, %50, %47, %44, %41, %37, %32, %28, %25, %22, %19, %16, %11
  %63 = phi i1 [ true, %11 ], [ true, %16 ], [ true, %19 ], [ true, %22 ], [ true, %25 ], [ true, %28 ], [ %33, %32 ], [ %38, %37 ], [ true, %41 ], [ true, %44 ], [ true, %47 ], [ true, %50 ], [ true, %53 ], [ true, %56 ], [ true, %59 ]
  %64 = phi ptr [ %13, %11 ], [ %18, %16 ], [ %21, %19 ], [ %24, %22 ], [ %27, %25 ], [ %30, %28 ], [ %35, %32 ], [ %40, %37 ], [ %43, %41 ], [ %46, %44 ], [ %49, %47 ], [ %52, %50 ], [ %55, %53 ], [ %58, %56 ], [ %61, %59 ]
  %65 = call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %9, ptr noundef %64) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %66 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopC2ERS0_RKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %66) #15
          to label %67 unwind label %73

67:                                               ; preds = %62
  switch i32 %65, label %77 [
    i32 55, label %68
    i32 26, label %68
  ]

68:                                               ; preds = %67, %67
  %69 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %70 = invoke noundef ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %64, ptr noundef nonnull align 8 dereferenceable(44) %69) #15
          to label %71 unwind label %75

71:                                               ; preds = %68
  %72 = call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %9, ptr noundef %70) #15
  br label %77

73:                                               ; preds = %62
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %142

75:                                               ; preds = %138, %137, %136, %131, %128, %68
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %140

77:                                               ; preds = %67, %71
  %78 = phi i32 [ %72, %71 ], [ %65, %67 ]
  %79 = phi ptr [ %70, %71 ], [ %64, %67 ]
  %80 = icmp ne i32 %78, -1
  %81 = and i1 %63, %80
  %82 = call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  br i1 %81, label %83, label %128, !prof !864

83:                                               ; preds = %77
  %84 = load ptr, ptr %82, align 8, !tbaa !735
  %85 = getelementptr inbounds ptr, ptr %84, i64 3
  %86 = load ptr, ptr %85, align 8
  %87 = invoke noundef i32 %86(ptr noundef nonnull align 8 dereferenceable(40) %82) #15
          to label %88 unwind label %92

88:                                               ; preds = %83
  %89 = icmp eq i32 %87, 0
  br i1 %89, label %139, label %94, !prof !865

90:                                               ; preds = %121
  %91 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1011NodeRefList5emptyEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #15
          to label %126 unwind label %92

92:                                               ; preds = %90, %83
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %140

94:                                               ; preds = %88, %121
  %95 = phi i32 [ %122, %121 ], [ 0, %88 ]
  %96 = call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %97 = load ptr, ptr %96, align 8, !tbaa !735
  %98 = getelementptr inbounds ptr, ptr %97, i64 2
  %99 = load ptr, ptr %98, align 8
  %100 = invoke noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(40) %96, i32 noundef %95) #15
          to label %101 unwind label %114

101:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
          to label %102 unwind label %116

102:                                              ; preds = %101
  %103 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #15
  invoke void @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %100, ptr noundef %79, ptr noundef nonnull align 8 dereferenceable(44) %103) #15
          to label %104 unwind label %118

104:                                              ; preds = %102
  %105 = call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #15
  %106 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1011NodeRefList5emptyEv(ptr noundef nonnull align 8 dereferenceable(40) %105) #15
          to label %107 unwind label %118

107:                                              ; preds = %104
  br i1 %106, label %121, label %108, !prof !866

108:                                              ; preds = %107
  %109 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1011NodeRefList5emptyEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #15
          to label %110 unwind label %118

110:                                              ; preds = %108
  %111 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #15
  br i1 %109, label %120, label %112, !prof !867

112:                                              ; preds = %110
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %4, ptr noundef nonnull align 8 dereferenceable(44) %111, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
          to label %113 unwind label %118

113:                                              ; preds = %112
  call void @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %4) #15
  br label %121

114:                                              ; preds = %94
  %115 = landingpad { ptr, i32 }
          cleanup
  br label %140

116:                                              ; preds = %101
  %117 = landingpad { ptr, i32 }
          cleanup
  br label %124

118:                                              ; preds = %120, %112, %108, %104, %102
  %119 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #17
  br label %124

120:                                              ; preds = %110
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList4swapERS0_(ptr noundef nonnull align 8 dereferenceable(44) %4, ptr noundef nonnull align 8 dereferenceable(44) %111) #15
          to label %121 unwind label %118

121:                                              ; preds = %113, %120, %107
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  %122 = add nuw i32 %95, 1
  %123 = icmp eq i32 %122, %87
  br i1 %123, label %90, label %94, !prof !868, !llvm.loop !869

124:                                              ; preds = %118, %116
  %125 = phi { ptr, i32 } [ %119, %118 ], [ %117, %116 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  br label %140

126:                                              ; preds = %90
  br i1 %91, label %127, label %139, !prof !870

127:                                              ; preds = %126
  call void @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %4) #15
  br label %139

128:                                              ; preds = %77
  %129 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1011NodeRefList5emptyEv(ptr noundef nonnull align 8 dereferenceable(40) %82) #15
          to label %130 unwind label %75

130:                                              ; preds = %128
  br i1 %129, label %131, label %132, !prof !871

131:                                              ; preds = %130
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList5clearEv(ptr noundef nonnull align 8 dereferenceable(44) %4) #15
          to label %139 unwind label %75

132:                                              ; preds = %130
  %133 = call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %134 = call noundef zeroext i1 @_ZNK11xalanc_1_1018MutableNodeRefList23getReverseDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %133) #15
  %135 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  br i1 %134, label %136, label %138, !prof !872

136:                                              ; preds = %132
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList4swapERS0_(ptr noundef nonnull align 8 dereferenceable(44) %4, ptr noundef nonnull align 8 dereferenceable(44) %135) #15
          to label %137 unwind label %75

137:                                              ; preds = %136
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList7reverseEv(ptr noundef nonnull align 8 dereferenceable(44) %4) #15
          to label %139 unwind label %75

138:                                              ; preds = %132
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList4swapERS0_(ptr noundef nonnull align 8 dereferenceable(44) %4, ptr noundef nonnull align 8 dereferenceable(44) %135) #15
          to label %139 unwind label %75

139:                                              ; preds = %88, %127, %126, %131, %138, %137
  call void @_ZN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void

140:                                              ; preds = %92, %124, %114, %75
  %141 = phi { ptr, i32 } [ %76, %75 ], [ %93, %92 ], [ %125, %124 ], [ %115, %114 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  br label %142

142:                                              ; preds = %140, %73
  %143 = phi { ptr, i32 } [ %141, %140 ], [ %74, %73 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %144

144:                                              ; preds = %142, %14
  %145 = phi { ptr, i32 } [ %143, %142 ], [ %15, %14 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %145
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !873 {
  %4 = alloca i32, align 4
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !tbaa !874
  %6 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef 0) #15
  %7 = icmp eq i32 %6, 48
  br i1 %7, label %20, label %8, !prof !876

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  %9 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  %10 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %9, i32 noundef 13) #15
          to label %11 unwind label %18

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !741
  %14 = load ptr, ptr %2, align 8, !tbaa !735
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef %1, ptr noundef %13) #15
          to label %17 unwind label %18

17:                                               ; preds = %11
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  br label %22

18:                                               ; preds = %11, %8
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  resume { ptr, i32 } %19

20:                                               ; preds = %3
  call void @_ZNK11xalanc_1_105XPath15doGetMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextERNS0_11eMatchScoreE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #15
  %21 = load i32, ptr %4, align 4, !tbaa !874
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !873 {
  %3 = sext i32 %1 to i64
  %4 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #15
  %5 = load i32, ptr %4, align 4, !tbaa !761
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_105XPath15doGetMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextERNS0_11eMatchScoreE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #5 comdat align 2 !prof !873 {
  %5 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #15
  %6 = getelementptr inbounds i32, ptr %5, i64 2
  br label %7

7:                                                ; preds = %11, %4
  %8 = phi ptr [ %6, %4 ], [ %12, %11 ]
  %9 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %8) #15
  %10 = icmp eq i32 %9, 49
  br i1 %10, label %11, label %15, !prof !876

11:                                               ; preds = %7
  %12 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %8) #15
  %13 = tail call noundef i32 @_ZNK11xalanc_1_105XPath19locationPathPatternERNS_21XPathExecutionContextERNS_9XalanNodeEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %8) #15
  store i32 %13, ptr %3, align 4, !tbaa !874
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %7, label %15

15:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !877 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !776
  %5 = getelementptr inbounds i32, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !878 {
  %3 = getelementptr inbounds i32, ptr %1, i64 1
  %4 = load i32, ptr %3, align 4, !tbaa !761
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32, ptr %1, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath19locationPathPatternERNS_21XPathExecutionContextERNS_9XalanNodeEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #5 align 2 !prof !873 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !tbaa !874
  %6 = getelementptr inbounds i32, ptr %3, i64 2
  %7 = call noundef ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull align 4 dereferenceable(4) %5) #15
  %8 = load i32, ptr %5, align 4, !tbaa !874
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !873 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", align 8
  %6 = load ptr, ptr %3, align 8, !tbaa !735
  %7 = getelementptr inbounds ptr, ptr %6, i64 29
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  %10 = icmp eq ptr %9, %2
  br i1 %10, label %11, label %13, !prof !879

11:                                               ; preds = %4
  %12 = tail call noundef i32 @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  br label %18

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverES5_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %9, ptr noundef nonnull %2) #15
  %14 = invoke noundef i32 @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
          to label %15 unwind label %16

15:                                               ; preds = %13
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  br label %18

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  resume { ptr, i32 } %17

18:                                               ; preds = %15, %11
  %19 = phi i32 [ %12, %11 ], [ %14, %15 ]
  ret i32 %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverES5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !873 {
  store ptr %1, ptr %0, align 8, !tbaa !753
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", ptr %0, i64 0, i32 1
  store ptr %2, ptr %5, align 8, !tbaa !765
  %6 = load ptr, ptr %1, align 8, !tbaa !735
  %7 = getelementptr inbounds ptr, ptr %6, i64 30
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %3) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_105XPath13getTargetDataERNS_11XalanVectorINS0_10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 align 2 !prof !880 {
  %3 = alloca %"class.xalanc_1_10::XPath::TargetData", align 8
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #15
  %5 = getelementptr inbounds i32, ptr %4, i64 2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 5) #15
  %6 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %5) #15
  %7 = icmp eq i32 %6, 49
  br i1 %7, label %11, label %75, !prof !881

8:                                                ; preds = %72, %11
  %9 = call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %13) #15
  %10 = icmp eq i32 %9, 49
  br i1 %10, label %11, label %75, !prof !882, !llvm.loop !883

11:                                               ; preds = %2, %8
  %12 = phi ptr [ %13, %8 ], [ %5, %2 ]
  %13 = call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %12) #15
  %14 = getelementptr inbounds i32, ptr %12, i64 2
  %15 = call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %14) #15
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %8, label %17, !prof !882

17:                                               ; preds = %11, %72
  %18 = phi ptr [ %21, %72 ], [ %14, %11 ]
  %19 = phi i64 [ %20, %72 ], [ 0, %11 ]
  %20 = add i64 %19, 1
  %21 = call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %18) #15
  %22 = call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %21) #15
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %72, !prof !884

24:                                               ; preds = %17
  %25 = call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %18) #15
  %26 = getelementptr inbounds i32, ptr %18, i64 3
  switch i32 %25, label %63 [
    i32 24, label %27
    i32 47, label %28
    i32 50, label %29
    i32 51, label %30
    i32 52, label %30
  ], !prof !885

27:                                               ; preds = %24
  br label %63

28:                                               ; preds = %24
  br label %63

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %24, %24, %29
  %31 = phi i32 [ 1, %24 ], [ 1, %24 ], [ 0, %29 ]
  %32 = call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %26) #15
  switch i32 %32, label %62 [
    i32 27, label %63
    i32 28, label %33
    i32 30, label %34
    i32 32, label %35
    i32 33, label %36
    i32 29, label %37
    i32 31, label %41
  ], !prof !886

33:                                               ; preds = %30
  br label %63

34:                                               ; preds = %30
  br label %63

35:                                               ; preds = %30
  br label %63

36:                                               ; preds = %30
  br label %63

37:                                               ; preds = %30
  %38 = call noundef i32 @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %18) #15
  switch i32 %38, label %40 [
    i32 1, label %63
    i32 2, label %39
  ]

39:                                               ; preds = %37
  br label %63

40:                                               ; preds = %37
  br label %63

41:                                               ; preds = %30
  %42 = getelementptr inbounds i32, ptr %18, i64 4
  %43 = call noundef ptr @_ZN11xalanc_1_1023getStringFromTokenQueueERKNS_15XPathExpressionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %42) #15
  %44 = getelementptr inbounds i32, ptr %18, i64 5
  %45 = call noundef ptr @_ZN11xalanc_1_1023getStringFromTokenQueueERKNS_15XPathExpressionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %44) #15
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47, !prof !887

47:                                               ; preds = %41
  %48 = call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %45) #15
  %49 = icmp eq ptr %48, null
  br i1 %49, label %57, label %50, !prof !888

50:                                               ; preds = %47
  %51 = icmp eq ptr %48, @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE
  br i1 %51, label %52, label %63, !prof !887

52:                                               ; preds = %50
  %53 = icmp eq ptr %43, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %52
  %55 = call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %43, ptr noundef nonnull @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE) #15
  %56 = select i1 %55, i32 1, i32 2
  br label %63

57:                                               ; preds = %41, %47
  %58 = icmp eq ptr %43, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %57
  %60 = call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %43, ptr noundef nonnull @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE) #15
  %61 = select i1 %60, i32 1, i32 2
  br label %63

62:                                               ; preds = %30
  br label %63

63:                                               ; preds = %59, %54, %33, %34, %35, %36, %62, %30, %37, %40, %39, %57, %50, %52, %24, %28, %27
  %64 = phi i32 [ 3, %24 ], [ 3, %28 ], [ 2, %27 ], [ 3, %62 ], [ 1, %36 ], [ 3, %35 ], [ 3, %34 ], [ 3, %33 ], [ 3, %30 ], [ 3, %37 ], [ 3, %40 ], [ 3, %39 ], [ %31, %57 ], [ %31, %50 ], [ %31, %52 ], [ %31, %54 ], [ %31, %59 ]
  %65 = phi ptr [ null, %24 ], [ @_ZN11xalanc_1_105XPath15PSEUDONAME_ROOTE, %28 ], [ @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE, %27 ], [ @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE, %62 ], [ @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE, %36 ], [ @_ZN11xalanc_1_105XPath15PSEUDONAME_ROOTE, %35 ], [ @_ZN11xalanc_1_105XPath15PSEUDONAME_NODEE, %34 ], [ @_ZN11xalanc_1_105XPath15PSEUDONAME_TEXTE, %33 ], [ @_ZN11xalanc_1_105XPath18PSEUDONAME_COMMENTE, %30 ], [ @_ZN11xalanc_1_105XPath13PSEUDONAME_PIE, %37 ], [ @_ZN11xalanc_1_105XPath13PSEUDONAME_PIE, %40 ], [ @_ZN11xalanc_1_105XPath13PSEUDONAME_PIE, %39 ], [ @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE, %57 ], [ %48, %50 ], [ @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE, %52 ], [ @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE, %54 ], [ @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE, %59 ]
  %66 = phi i32 [ 0, %24 ], [ 4, %28 ], [ 4, %27 ], [ 1, %62 ], [ 1, %36 ], [ 1, %35 ], [ 1, %34 ], [ 1, %33 ], [ 1, %30 ], [ %38, %37 ], [ 0, %40 ], [ 3, %39 ], [ 1, %57 ], [ 3, %50 ], [ 1, %52 ], [ %56, %54 ], [ %61, %59 ]
  %67 = icmp ugt i64 %20, 1
  %68 = getelementptr inbounds i32, ptr %18, i64 6
  %69 = icmp ult ptr %68, %21
  %70 = select i1 %67, i1 true, i1 %69
  %71 = select i1 %70, i32 4, i32 %66, !prof !889
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @_ZN11xalanc_1_105XPath10TargetDataC2EPKtNS0_11eMatchScoreENS1_11eTargetTypeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %65, i32 noundef %71, i32 noundef %64) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  br label %72

72:                                               ; preds = %63, %17
  %73 = call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %21) #15
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %8, label %17, !prof !890, !llvm.loop !891

75:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !880 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !892
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !894

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #15
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !895 {
  %3 = getelementptr inbounds i32, ptr %1, i64 2
  %4 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %3) #15
  %5 = add nsw i32 %4, -3
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1023getStringFromTokenQueueERKNS_15XPathExpressionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !896 {
  %3 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) #15
  %4 = add i32 %3, 3
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %12, label %6, !prof !897

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %3) #15
  %8 = load ptr, ptr %7, align 8, !tbaa !735
  %9 = getelementptr inbounds ptr, ptr %8, i64 8
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %7) #15
  br label %12

12:                                               ; preds = %2, %6
  %13 = phi ptr [ %11, %6 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !898 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #15
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 !prof !880 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #15
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_105XPath10TargetDataC2EPKtNS0_11eMatchScoreENS1_11eTargetTypeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 comdat align 2 !prof !880 {
  store ptr %1, ptr %0, align 8, !tbaa !899
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %0, i64 0, i32 1
  store i32 %2, ptr %5, align 8, !tbaa !902
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %0, i64 0, i32 2
  store i32 %3, ptr %6, align 4, !tbaa !903
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !904 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !880 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !905
  call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !880 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  store ptr %2, ptr %0, align 8, !tbaa !905
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !906
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !894

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #15
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #15
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #15
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !907

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #15
  store ptr %24, ptr %8, align 8, !tbaa !908
  store i64 %3, ptr %7, align 8, !tbaa !892
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 !prof !880 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %3 = load ptr, ptr %0, align 8, !tbaa !905
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !908
  %7 = load ptr, ptr %1, align 8, !tbaa !905
  store ptr %7, ptr %0, align 8, !tbaa !905
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !909
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !908
  store ptr %11, ptr %5, align 8, !tbaa !908
  store ptr %3, ptr %1, align 8, !tbaa !905
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !909
  store <2 x i64> %9, ptr %4, align 8, !tbaa !909
  store <2 x i64> %12, ptr %8, align 8, !tbaa !909
  store ptr %6, ptr %10, align 8, !tbaa !908
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !910 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !892
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !911

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %6, ptr noundef %7) #15
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !908
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #15
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !750 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #5 comdat align 2 !prof !880 {
  store ptr %1, ptr %0, align 8, !tbaa !905
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !906
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !892
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !894

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #15
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !908
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #15
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #15
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !905
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_5XPath10TargetDataEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #15
  %23 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !906
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !906
  %26 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !llvm.loop !912

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %32 = load ptr, ptr %0, align 8, !tbaa !905
  call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #15
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #15
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #15
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #15
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #15
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %57) #15
  %58 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !913

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %61) #15
  %62 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !914

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKN11xalanc_1_105XPath10TargetDataEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #15
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %72) #15
  %73 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !915

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPN11xalanc_1_105XPath10TargetDataES3_ET0_T_S5_S4_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #15
  %78 = tail call noundef ptr @_ZSt4copyIPKN11xalanc_1_105XPath10TargetDataEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #15
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !880 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !908
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !750 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !908
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !750 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !880 {
  %3 = shl i64 %1, 4
  %4 = load ptr, ptr %0, align 8, !tbaa !905
  %5 = load ptr, ptr %4, align 8, !tbaa !735
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #15
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKN11xalanc_1_105XPath10TargetDataEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %1, ptr noundef %2) #15
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !880 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !906
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !880 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #15
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_5XPath10TargetDataEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !880 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !916
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !750 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !892
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !880 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !906
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !892
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !894

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %11 = load ptr, ptr %0, align 8, !tbaa !905
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_5XPath10TargetDataEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #15
  %13 = load i64, ptr %4, align 8, !tbaa !906
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !906
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !905
  call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #15
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %1) #15
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKN11xalanc_1_105XPath10TargetDataEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !750 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_105XPath10TargetDataEET_S5_(ptr noundef %0) #15
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_105XPath10TargetDataEET_S5_(ptr noundef %1) #15
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKN11xalanc_1_105XPath10TargetDataEPS2_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPN11xalanc_1_105XPath10TargetDataES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !750 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_105XPath10TargetDataEET_S4_(ptr noundef %0) #15
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_105XPath10TargetDataEET_S4_(ptr noundef %1) #15
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_105XPath10TargetDataES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKN11xalanc_1_105XPath10TargetDataEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !750 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !753
  call void @_ZSt19__iterator_categoryIPKN11xalanc_1_105XPath10TargetDataEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %4 = call noundef i64 @_ZSt10__distanceIPKN11xalanc_1_105XPath10TargetDataEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #15
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKN11xalanc_1_105XPath10TargetDataEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !750 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 4
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKN11xalanc_1_105XPath10TargetDataEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !750 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !910 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !908
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !906
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKN11xalanc_1_105XPath10TargetDataEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !750 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !753
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_105XPath10TargetDataEET_S5_(ptr noundef %0) #17
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_105XPath10TargetDataEET_S5_(ptr noundef %1) #17
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_105XPath10TargetDataEET_S4_(ptr noundef %2) #17
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_105XPath10TargetDataEPS2_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #15
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_105XPath10TargetDataEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_105XPath10TargetDataEET_S5_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !750 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_105XPath10TargetDataEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !750 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_105XPath10TargetDataEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !750 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_105XPath10TargetDataEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_105XPath10TargetDataEET_S5_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !750 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_105XPath10TargetDataEET_S4_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !750 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_105XPath10TargetDataEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !750 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIN11xalanc_1_105XPath10TargetDataEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIN11xalanc_1_105XPath10TargetDataEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !750 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_105XPath10TargetDataES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !750 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !753
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_105XPath10TargetDataEET_S4_(ptr noundef %0) #17
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_105XPath10TargetDataEET_S4_(ptr noundef %1) #17
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_105XPath10TargetDataEET_S4_(ptr noundef %2) #17
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_105XPath10TargetDataES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #15
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_105XPath10TargetDataEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_105XPath10TargetDataEET_S4_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !750 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_105XPath10TargetDataES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !750 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_105XPath10TargetDataES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_105XPath10TargetDataES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !750 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIN11xalanc_1_105XPath10TargetDataEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIN11xalanc_1_105XPath10TargetDataEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !750 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 4
  %8 = icmp eq ptr %1, %0
  %9 = sub nsw i64 0, %7
  br i1 %8, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %2, i64 %9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %11, ptr align 8 %0, i64 %6, i1 false)
  br label %12

12:                                               ; preds = %3, %10
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %2, i64 %9
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !750 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !908
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !906
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !880 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !882

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !881, !llvm.loop !918

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !880 {
  %3 = load ptr, ptr %0, align 8, !tbaa !905
  %4 = load ptr, ptr %3, align 8, !tbaa !735
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !880 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !919 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2
  %4 = sext i32 %1 to i64
  %5 = tail call noundef nonnull align 8 dereferenceable(41) ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(41) ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !919 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !920
  %5 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !898 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %3, ptr noundef %1) #15
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !921 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #15
  %4 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #15
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef %4) #15
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_107XObject9notEqualsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1010XObjectPtr3getEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !800 {
  %2 = load ptr, ptr %0, align 8, !tbaa !826
  ret ptr %2
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_107XObject6equalsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_107XObject16lessThanOrEqualsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_107XObject8lessThanERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_107XObject19greaterThanOrEqualsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_107XObject11greaterThanERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 !prof !922 {
  %5 = alloca double, align 8
  %6 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %2) #15
  %7 = icmp eq i32 %6, 21
  br i1 %7, label %8, label %12, !prof !923

8:                                                ; preds = %4
  %9 = getelementptr inbounds i32, ptr %2, i64 2
  %10 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %9) #15
  %11 = tail call noundef double @_ZNK11xalanc_1_1015XPathExpression16getNumberLiteralEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %10) #15
  br label %14

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %13 = load double, ptr %5, align 8, !tbaa !784
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi double [ %11, %8 ], [ %13, %12 ]
  ret double %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK11xalanc_1_1015XPathExpression16getNumberLiteralEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !924 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5
  %4 = sext i32 %1 to i64
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) #15
  %6 = load double, ptr %5, align 8, !tbaa !784
  ret double %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !924 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !925
  %5 = getelementptr inbounds double, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: optsize
declare noundef double @_ZN11xalanc_1_1013DoubleSupport3addEdd(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZN11xalanc_1_1013DoubleSupport8subtractEdd(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZN11xalanc_1_1013DoubleSupport8multiplyEdd(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZN11xalanc_1_1013DoubleSupport6divideEdd(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZN11xalanc_1_1013DoubleSupport7modulusEdd(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZN11xalanc_1_1013DoubleSupport8negativeEd(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 !prof !926 {
  store ptr %1, ptr %0, align 8, !tbaa !927
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !735
  %5 = getelementptr inbounds ptr, ptr %4, i64 21
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  store ptr %7, ptr %3, align 8, !tbaa !929
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !930 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !929
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !931 {
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !932 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !929
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !933

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !927
  %7 = load ptr, ptr %6, align 8, !tbaa !735
  %8 = getelementptr inbounds ptr, ptr %7, i64 22
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %3) #15
  store ptr null, ptr %2, align 8, !tbaa !929
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_107XObject7booleanERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !830 {
  %2 = load ptr, ptr %0, align 8, !tbaa !735
  %3 = getelementptr inbounds ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %6 = icmp ne i32 %5, 0
  ret i1 %6
}

; Function Attrs: optsize
declare noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_107XObject6stringERKNS_15NodeRefListBaseERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #5 comdat align 2 !prof !842 {
  %3 = load ptr, ptr %0, align 8, !tbaa !735
  %4 = getelementptr inbounds ptr, ptr %3, i64 3
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !934

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !735
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #15
  tail call void @_ZN11xalanc_1_107XObject6stringERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  br label %13

13:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_107XObject6stringERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #5 comdat align 2 !prof !935 {
  tail call void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_107XObject6stringERKNS_15NodeRefListBaseERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) local_unnamed_addr #5 comdat align 2 !prof !849 {
  %5 = load ptr, ptr %0, align 8, !tbaa !735
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !936

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !735
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #15
  tail call void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) #15
  br label %15

15:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), i64, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKNS_15NodeRefListBaseERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018MutableNodeRefList5clearEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #2 comdat align 2 !prof !937 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  store i32 1, ptr %2, align 8, !tbaa !938
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !944 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !929
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #5 comdat align 2 !prof !817 {
  store ptr %1, ptr %0, align 8, !tbaa !945
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !947
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !948
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !949

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #15
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !950
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !951 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_105XPath11extfunctionEPNS_9XalanNodeEPKiRKNS_14XalanDOMStringES7_RKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS9_EEEERNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !741
  %11 = load ptr, ptr %7, align 8, !tbaa !735
  %12 = getelementptr inbounds ptr, ptr %11, i64 19
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %10) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !952 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !948
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5, !prof !953

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyEPS1_S5_(ptr noundef %6, ptr noundef %7) #15
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !950
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10deallocateEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %10) #15
          to label %11 unwind label %12

11:                                               ; preds = %8, %1
  ret void

12:                                               ; preds = %8, %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !817 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !945
  %5 = load ptr, ptr %4, align 8, !tbaa !735
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #15
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !954 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !955 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !947
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !948
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !956

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %11 = load ptr, ptr %0, align 8, !tbaa !945
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_10XObjectPtrEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #15
  %13 = load i64, ptr %4, align 8, !tbaa !947
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !947
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !957
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !945
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #15
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_10XObjectPtrEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 !prof !958 {
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !959 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !950
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !947
  %6 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !817 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  store ptr %2, ptr %0, align 8, !tbaa !945
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !947
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !957

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #15
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #15
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #15
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !960

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #15
  store ptr %24, ptr %8, align 8, !tbaa !950
  store i64 %3, ptr %7, align 8, !tbaa !948
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 !prof !961 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %3 = load ptr, ptr %0, align 8, !tbaa !945
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !950
  %7 = load ptr, ptr %1, align 8, !tbaa !945
  store ptr %7, ptr %0, align 8, !tbaa !945
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !909
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !950
  store ptr %11, ptr %5, align 8, !tbaa !950
  store ptr %3, ptr %1, align 8, !tbaa !945
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !909
  store <2 x i64> %9, ptr %4, align 8, !tbaa !909
  store <2 x i64> %12, ptr %8, align 8, !tbaa !909
  store ptr %6, ptr %10, align 8, !tbaa !950
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !962 {
  %3 = load ptr, ptr %1, align 8, !tbaa !826
  store ptr %3, ptr %0, align 8, !tbaa !826
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %3) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !963 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !963 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE14local_distanceEPKS1_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #15
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %76, label %8, !prof !964

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !965

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #15
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %75, label %16, !prof !966

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !945
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_10XObjectPtrEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #15
  %23 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !947
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !947
  %26 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %75, label %18, !prof !967, !llvm.loop !968

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %32 = load ptr, ptr %0, align 8, !tbaa !945
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #15
  %33 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  %34 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %34, ptr noundef %1) #15
          to label %35 unwind label %41

35:                                               ; preds = %31
  %36 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %36, ptr noundef %2, ptr noundef %3) #15
          to label %37 unwind label %41

37:                                               ; preds = %35
  %38 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  %39 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %38, ptr noundef %1, ptr noundef %39) #15
          to label %40 unwind label %41

40:                                               ; preds = %37
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %75

41:                                               ; preds = %37, %35, %31
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %42

43:                                               ; preds = %28
  %44 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %45 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE14local_distanceEPKS1_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %44) #15
  %46 = icmp ugt i64 %45, %6
  br i1 %46, label %62, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %2, i64 %45
  %49 = icmp eq ptr %48, %3
  br i1 %49, label %50, label %52

50:                                               ; preds = %52, %47
  %51 = icmp eq ptr %44, %1
  br i1 %51, label %60, label %56

52:                                               ; preds = %47, %52
  %53 = phi ptr [ %54, %52 ], [ %48, %47 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %53) #15
  %54 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %53, i64 1
  %55 = icmp eq ptr %54, %3
  br i1 %55, label %50, label %52, !llvm.loop !969

56:                                               ; preds = %50, %56
  %57 = phi ptr [ %58, %56 ], [ %1, %50 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #15
  %58 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %57, i64 1
  %59 = icmp eq ptr %58, %44
  br i1 %59, label %60, label %56, !llvm.loop !970

60:                                               ; preds = %56, %50
  %61 = tail call noundef ptr @_ZSt4copyIPKN11xalanc_1_1010XObjectPtrEPS1_ET0_T_S6_S5_(ptr noundef %2, ptr noundef %48, ptr noundef %1) #15
  br label %75

62:                                               ; preds = %43
  %63 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %64 = sub i64 0, %6
  %65 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %63, i64 %64
  %66 = icmp eq ptr %65, %44
  br i1 %66, label %71, label %67

67:                                               ; preds = %62, %67
  %68 = phi ptr [ %69, %67 ], [ %65, %62 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %68) #15
  %69 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %68, i64 1
  %70 = icmp eq ptr %69, %44
  br i1 %70, label %71, label %67, !llvm.loop !971

71:                                               ; preds = %67, %62
  %72 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %44, i64 %64
  %73 = tail call noundef ptr @_ZSt13copy_backwardIPN11xalanc_1_1010XObjectPtrES2_ET0_T_S4_S3_(ptr noundef %1, ptr noundef nonnull %72, ptr noundef %44) #15
  %74 = tail call noundef ptr @_ZSt4copyIPKN11xalanc_1_1010XObjectPtrEPS1_ET0_T_S6_S5_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #15
  br label %75

75:                                               ; preds = %18, %13, %60, %71, %40
  call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  br label %76

76:                                               ; preds = %4, %75
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !961 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !950
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !963 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !950
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !963 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE14local_distanceEPKS1_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !963 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKN11xalanc_1_1010XObjectPtrEENSt15iterator_traitsIT_E15difference_typeES5_S5_(ptr noundef %1, ptr noundef %2) #15
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !963 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !947
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !961 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !963 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !964

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #15
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !963 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !948
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKN11xalanc_1_1010XObjectPtrEPS1_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !750 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_1010XObjectPtrEET_S4_(ptr noundef %0) #15
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_1010XObjectPtrEET_S4_(ptr noundef %1) #15
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKN11xalanc_1_1010XObjectPtrEPS1_ET1_T0_S6_S5_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPN11xalanc_1_1010XObjectPtrES2_ET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !750 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_1010XObjectPtrEET_S3_(ptr noundef %0) #15
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_1010XObjectPtrEET_S3_(ptr noundef %1) #15
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_1010XObjectPtrES2_ET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKN11xalanc_1_1010XObjectPtrEENSt15iterator_traitsIT_E15difference_typeES5_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !963 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !753
  call void @_ZSt19__iterator_categoryIPKN11xalanc_1_1010XObjectPtrEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %4 = call noundef i64 @_ZSt10__distanceIPKN11xalanc_1_1010XObjectPtrEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #15
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKN11xalanc_1_1010XObjectPtrEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !963 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKN11xalanc_1_1010XObjectPtrEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !963 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !945
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKN11xalanc_1_1010XObjectPtrEPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !750 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !753
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_1010XObjectPtrEET_S4_(ptr noundef %0) #17
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_1010XObjectPtrEET_S4_(ptr noundef %1) #17
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1010XObjectPtrEET_S3_(ptr noundef %2) #17
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_1010XObjectPtrEPS1_ET1_T0_S6_S5_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #15
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_1010XObjectPtrEET_RKS3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_1010XObjectPtrEET_S4_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !750 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_1010XObjectPtrEET_RKS3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !750 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_1010XObjectPtrEPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !750 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_1010XObjectPtrEPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_1010XObjectPtrEET_S4_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !750 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1010XObjectPtrEET_S3_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !750 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_1010XObjectPtrEPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !750 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1010XObjectPtrEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1010XObjectPtrEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %11, %3
  %10 = phi ptr [ %2, %3 ], [ %17, %11 ]
  ret ptr %10

11:                                               ; preds = %3, %11
  %12 = phi i64 [ %18, %11 ], [ %7, %3 ]
  %13 = phi ptr [ %17, %11 ], [ %2, %3 ]
  %14 = phi ptr [ %16, %11 ], [ %0, %3 ]
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %14) #15
  %16 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %14, i64 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %13, i64 1
  %18 = add nsw i64 %12, -1
  %19 = icmp ugt i64 %12, 1
  br i1 %19, label %11, label %9, !llvm.loop !972
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_1010XObjectPtrES2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !750 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !753
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1010XObjectPtrEET_S3_(ptr noundef %0) #17
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1010XObjectPtrEET_S3_(ptr noundef %1) #17
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1010XObjectPtrEET_S3_(ptr noundef %2) #17
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_1010XObjectPtrES2_ET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #15
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_1010XObjectPtrEET_RKS3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_1010XObjectPtrEET_S3_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !750 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_1010XObjectPtrES2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !750 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_1010XObjectPtrES2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_1010XObjectPtrES2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !750 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1010XObjectPtrES5_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1010XObjectPtrES5_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3, %9
  %10 = phi i64 [ %16, %9 ], [ %7, %3 ]
  %11 = phi ptr [ %14, %9 ], [ %2, %3 ]
  %12 = phi ptr [ %13, %9 ], [ %1, %3 ]
  %13 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %12, i64 -1
  %14 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %11, i64 -1
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13) #15
  %16 = add nsw i64 %10, -1
  %17 = icmp ugt i64 %10, 1
  br i1 %17, label %9, label %18, !llvm.loop !973

18:                                               ; preds = %9, %3
  %19 = phi ptr [ %2, %3 ], [ %14, %9 ]
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !963 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !950
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !947
  %6 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyEPS1_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !817 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !974

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %6 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !975, !llvm.loop !976

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10deallocateEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !817 {
  %3 = load ptr, ptr %0, align 8, !tbaa !945
  %4 = load ptr, ptr %3, align 8, !tbaa !735
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !958 {
  tail call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1018XPathFunctionTableixEi(ptr noundef nonnull align 8 dereferenceable(304) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !810 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathFunctionTable", ptr %0, i64 0, i32 1, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !753
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !750 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !948
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #15
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_105XPath8functionEPNS_9XalanNodeEiRKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS4_EEEERNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #5 comdat align 2 !prof !750 {
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1018XPathFunctionTableixEi(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, i32 noundef %3) #15
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !741
  %10 = load ptr, ptr %7, align 8, !tbaa !735
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %9) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !977 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011DOMServices18getLocalNameOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !978 {
  %2 = load ptr, ptr %0, align 8, !tbaa !735
  %3 = getelementptr inbounds ptr, ptr %2, i64 24
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %6 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %5) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13, !prof !979

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !735
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(36) ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  br label %13

13:                                               ; preds = %1, %8
  %14 = phi ptr [ %12, %8 ], [ %5, %1 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10neERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #5 comdat !prof !750 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #5 comdat !prof !980 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #5 comdat !prof !981 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  ret i1 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1028FormatterStringLengthCounterC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1028FormatterStringLengthCounter8getCountEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !819 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterStringLengthCounter", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !982
  ret i64 %3
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #5 comdat !prof !988 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString5clearEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMString5clearEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #5 comdat align 2 !prof !989 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %3 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #15
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !837
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !990 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5, !prof !991

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %7 = tail call noundef ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #15
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #15
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #15
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !992 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #15
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #15
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !992 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4, !prof !993

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !prof !994, !llvm.loop !995

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !996 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #15
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !992 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !753
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #17
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #17
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #17
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #15
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !997 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !998 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !992 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !999 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !992 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !998 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !1000

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %2, ptr align 2 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !1001 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !739
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !739
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !725
  %7 = getelementptr inbounds i16, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %7) #15
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !996 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !753
  call void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %4 = call noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #15
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !996 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 1
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !996 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !1002 {
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %9 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %10 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %11 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %12 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %13 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
  %15 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef %3) #15
  %16 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef %15) #15
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %30, label %18, !prof !1003

18:                                               ; preds = %5
  %19 = tail call noundef ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %15, ptr noundef nonnull align 4 dereferenceable(4) %4) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !1004

21:                                               ; preds = %18
  store i32 0, ptr %4, align 4, !tbaa !874
  br label %262

22:                                               ; preds = %18
  %23 = load i32, ptr %4, align 4, !tbaa !874
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %262, label %25, !prof !888

25:                                               ; preds = %22
  store i32 4, ptr %4, align 4, !tbaa !874
  %26 = icmp eq i32 %16, 54
  br i1 %26, label %30, label %27, !prof !1004

27:                                               ; preds = %25
  %28 = tail call noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %19) #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %262, label %30, !prof !1005

30:                                               ; preds = %25, %27, %5
  %31 = phi ptr [ %28, %27 ], [ %2, %5 ], [ %19, %25 ]
  %32 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef %3) #15
  switch i32 %32, label %175 [
    i32 54, label %33
    i32 24, label %35
    i32 47, label %102
    i32 50, label %132
    i32 51, label %140
    i32 53, label %140
    i32 52, label %165
  ], !prof !1006

33:                                               ; preds = %30
  %34 = load i32, ptr %4, align 4, !tbaa !874
  br label %201

35:                                               ; preds = %30
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #15
  %37 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression24getOpCodeLengthFromOpMapEPKiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %36) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %31, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %38 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  %39 = load ptr, ptr %38, align 8, !tbaa !735
  %40 = getelementptr inbounds ptr, ptr %39, i64 13
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef nonnull align 8 dereferenceable(8) ptr %41(ptr noundef nonnull align 8 dereferenceable(24) %38) #15
          to label %43 unwind label %64

43:                                               ; preds = %35
  %44 = load ptr, ptr %42, align 8, !tbaa !735
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef i32 %46(ptr noundef nonnull align 8 dereferenceable(8) %42) #15
          to label %48 unwind label %66

48:                                               ; preds = %43
  %49 = icmp eq i32 %16, 54
  %50 = icmp eq i32 %47, 0
  br i1 %49, label %52, label %51

51:                                               ; preds = %48
  br i1 %50, label %97, label %87

52:                                               ; preds = %48, %78
  %53 = phi i32 [ %79, %78 ], [ 0, %48 ]
  %54 = phi i8 [ %80, %78 ], [ 0, %48 ]
  %55 = phi ptr [ %81, %78 ], [ %31, %48 ]
  %56 = icmp ne ptr %55, null
  %57 = and i8 %54, 1
  %58 = icmp eq i8 %57, 0
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %97

60:                                               ; preds = %52
  br i1 %50, label %78, label %68

61:                                               ; preds = %74
  %62 = add nuw i32 %69, 1
  %63 = icmp eq i32 %62, %47
  br i1 %63, label %78, label %68, !llvm.loop !1007

64:                                               ; preds = %35
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %100

66:                                               ; preds = %43
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %100

68:                                               ; preds = %60, %61
  %69 = phi i32 [ %62, %61 ], [ 0, %60 ]
  %70 = load ptr, ptr %42, align 8, !tbaa !735
  %71 = getelementptr inbounds ptr, ptr %70, i64 2
  %72 = load ptr, ptr %71, align 8
  %73 = invoke noundef ptr %72(ptr noundef nonnull align 8 dereferenceable(8) %42, i32 noundef %69) #15
          to label %74 unwind label %76

74:                                               ; preds = %68
  %75 = icmp eq ptr %73, %55
  br i1 %75, label %78, label %61

76:                                               ; preds = %68
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %100

78:                                               ; preds = %74, %61, %60
  %79 = phi i32 [ %53, %60 ], [ %53, %61 ], [ 4, %74 ]
  %80 = phi i8 [ %54, %60 ], [ %54, %61 ], [ 1, %74 ]
  %81 = invoke noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %55) #15
          to label %52 unwind label %82, !llvm.loop !1008

82:                                               ; preds = %78
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %100

84:                                               ; preds = %93
  %85 = add nuw i32 %88, 1
  %86 = icmp eq i32 %85, %47
  br i1 %86, label %97, label %87, !llvm.loop !1009

87:                                               ; preds = %51, %84
  %88 = phi i32 [ %85, %84 ], [ 0, %51 ]
  %89 = load ptr, ptr %42, align 8, !tbaa !735
  %90 = getelementptr inbounds ptr, ptr %89, i64 2
  %91 = load ptr, ptr %90, align 8
  %92 = invoke noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(8) %42, i32 noundef %88) #15
          to label %93 unwind label %95

93:                                               ; preds = %87
  %94 = icmp eq ptr %92, %31
  br i1 %94, label %97, label %84

95:                                               ; preds = %87
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %100

97:                                               ; preds = %84, %93, %52, %51
  %98 = phi i32 [ 0, %51 ], [ %53, %52 ], [ 0, %84 ], [ 4, %93 ]
  %99 = phi ptr [ %31, %51 ], [ %55, %52 ], [ %31, %93 ], [ %31, %84 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %201

100:                                              ; preds = %66, %95, %82, %76, %64
  %101 = phi { ptr, i32 } [ %65, %64 ], [ %96, %95 ], [ %67, %66 ], [ %83, %82 ], [ %77, %76 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %260

102:                                              ; preds = %30
  %103 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef %3) #15
  %104 = getelementptr inbounds i32, ptr %3, i64 3
  %105 = load ptr, ptr %31, align 8, !tbaa !735
  %106 = getelementptr inbounds ptr, ptr %105, i64 4
  %107 = load ptr, ptr %106, align 8
  %108 = tail call noundef i32 %107(ptr noundef nonnull align 8 dereferenceable(8) %31) #15
  %109 = and i32 %108, -3
  %110 = icmp eq i32 %109, 9
  br i1 %110, label %111, label %115, !prof !1010

111:                                              ; preds = %102
  %112 = sext i32 %103 to i64
  %113 = getelementptr inbounds i32, ptr %104, i64 %112
  %114 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef nonnull %113) #15
  br label %210

115:                                              ; preds = %102
  %116 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef %3) #15
  %117 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef %116) #15
  switch i32 %117, label %195 [
    i32 53, label %118
    i32 51, label %118
  ]

118:                                              ; preds = %115, %115
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %104, i32 noundef %103, i32 noundef 47) #15
  br label %119

119:                                              ; preds = %118, %127
  %120 = phi ptr [ %31, %118 ], [ %128, %127 ]
  %121 = load ptr, ptr %120, align 8, !tbaa !735
  %122 = getelementptr inbounds ptr, ptr %121, i64 4
  %123 = load ptr, ptr %122, align 8
  %124 = call noundef i32 %123(ptr noundef nonnull align 8 dereferenceable(8) %120) #15
  %125 = call noundef i32 @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(8) %120, i32 noundef %124) #15
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = call noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %120) #15
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %119, !llvm.loop !1011

130:                                              ; preds = %119, %127
  %131 = phi ptr [ %120, %119 ], [ null, %127 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  br label %201

132:                                              ; preds = %30
  %133 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef %3) #15
  %134 = getelementptr inbounds i32, ptr %3, i64 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #16
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %134, i32 noundef %133, i32 noundef 36) #15
  %135 = load ptr, ptr %31, align 8, !tbaa !735
  %136 = getelementptr inbounds ptr, ptr %135, i64 4
  %137 = load ptr, ptr %136, align 8
  %138 = tail call noundef i32 %137(ptr noundef nonnull align 8 dereferenceable(8) %31) #15
  %139 = call noundef i32 @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %31, i32 noundef %138) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #16
  br label %201

140:                                              ; preds = %30, %30
  %141 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef %3) #15
  %142 = load ptr, ptr %31, align 8, !tbaa !735
  %143 = getelementptr inbounds ptr, ptr %142, i64 4
  %144 = load ptr, ptr %143, align 8
  %145 = tail call noundef i32 %144(ptr noundef nonnull align 8 dereferenceable(8) %31) #15
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %195, label %147, !prof !1012

147:                                              ; preds = %140
  %148 = getelementptr inbounds i32, ptr %3, i64 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #16
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %148, i32 noundef %141, i32 noundef %32) #15
  %149 = call noundef i32 @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(8) %31, i32 noundef %145) #15
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %162, !prof !1013

151:                                              ; preds = %147, %155
  %152 = phi ptr [ %153, %155 ], [ %31, %147 ]
  %153 = call noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %152) #15
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %151
  %156 = load ptr, ptr %153, align 8, !tbaa !735
  %157 = getelementptr inbounds ptr, ptr %156, i64 4
  %158 = load ptr, ptr %157, align 8
  %159 = call noundef i32 %158(ptr noundef nonnull align 8 dereferenceable(8) %153) #15
  %160 = call noundef i32 @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(8) %153, i32 noundef %159) #15
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %151, label %162, !prof !1014, !llvm.loop !1015

162:                                              ; preds = %155, %151, %147
  %163 = phi i32 [ %149, %147 ], [ 0, %151 ], [ %160, %155 ]
  %164 = phi ptr [ %31, %147 ], [ null, %151 ], [ %153, %155 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #16
  br label %201

165:                                              ; preds = %30
  %166 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef %3) #15
  %167 = load ptr, ptr %31, align 8, !tbaa !735
  %168 = getelementptr inbounds ptr, ptr %167, i64 4
  %169 = load ptr, ptr %168, align 8
  %170 = tail call noundef i32 %169(ptr noundef nonnull align 8 dereferenceable(8) %31) #15
  %171 = icmp eq i32 %170, 2
  br i1 %171, label %195, label %172, !prof !1016

172:                                              ; preds = %165
  %173 = getelementptr inbounds i32, ptr %3, i64 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #16
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %173, i32 noundef %166, i32 noundef 52) #15
  %174 = call noundef i32 @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(8) %31, i32 noundef %170) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #16
  br label %201

175:                                              ; preds = %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
          to label %176 unwind label %189

176:                                              ; preds = %175
  %177 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #15
  %178 = sext i32 %32 to i64
  %179 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #15
  %180 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %178, ptr noundef nonnull align 8 dereferenceable(36) %179) #15
          to label %181 unwind label %191

181:                                              ; preds = %176
  %182 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %177, i32 noundef 118, ptr noundef nonnull align 8 dereferenceable(36) %180) #15
          to label %183 unwind label %191

183:                                              ; preds = %181
  %184 = call noundef ptr @_ZNK11xalanc_1_105XPath10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
  %185 = load ptr, ptr %1, align 8, !tbaa !735
  %186 = getelementptr inbounds ptr, ptr %185, i64 2
  %187 = load ptr, ptr %186, align 8
  invoke void %187(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %182, ptr noundef %31, ptr noundef %184) #15
          to label %188 unwind label %191

188:                                              ; preds = %183
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #16
  br label %195

189:                                              ; preds = %175
  %190 = landingpad { ptr, i32 }
          cleanup
  br label %193

191:                                              ; preds = %183, %181, %176
  %192 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #17
  br label %193

193:                                              ; preds = %191, %189
  %194 = phi { ptr, i32 } [ %192, %191 ], [ %190, %189 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #16
  br label %260

195:                                              ; preds = %188, %115, %140, %165
  %196 = phi i32 [ %166, %165 ], [ %141, %140 ], [ %103, %115 ], [ 0, %188 ]
  %197 = phi ptr [ %3, %165 ], [ %3, %140 ], [ %104, %115 ], [ %3, %188 ]
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i32, ptr %197, i64 %198
  %200 = call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef %199) #15
  br label %257

201:                                              ; preds = %172, %162, %130, %132, %97, %33
  %202 = phi i32 [ %139, %132 ], [ %98, %97 ], [ %34, %33 ], [ %125, %130 ], [ %163, %162 ], [ %174, %172 ]
  %203 = phi i32 [ %133, %132 ], [ %37, %97 ], [ 0, %33 ], [ %103, %130 ], [ %141, %162 ], [ %166, %172 ]
  %204 = phi ptr [ %134, %132 ], [ %3, %97 ], [ %3, %33 ], [ %104, %130 ], [ %148, %162 ], [ %173, %172 ]
  %205 = phi ptr [ %31, %132 ], [ %99, %97 ], [ %31, %33 ], [ %131, %130 ], [ %164, %162 ], [ %31, %172 ]
  %206 = sext i32 %203 to i64
  %207 = getelementptr inbounds i32, ptr %204, i64 %206
  %208 = call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef %207) #15
  %209 = icmp eq i32 %202, 0
  br i1 %209, label %257, label %210, !prof !888

210:                                              ; preds = %111, %201
  %211 = phi i32 [ %114, %111 ], [ %208, %201 ]
  %212 = phi ptr [ %113, %111 ], [ %207, %201 ]
  %213 = phi ptr [ %31, %111 ], [ %205, %201 ]
  %214 = phi i32 [ 4, %111 ], [ %202, %201 ]
  switch i32 %211, label %250 [
    i32 55, label %215
    i32 26, label %215
  ]

215:                                              ; preds = %210, %210
  br label %216

216:                                              ; preds = %215, %246
  %217 = phi i32 [ %247, %246 ], [ 4, %215 ]
  %218 = phi i32 [ %249, %246 ], [ %211, %215 ]
  %219 = phi ptr [ %248, %246 ], [ %212, %215 ]
  switch i32 %218, label %250 [
    i32 55, label %220
    i32 26, label %228
  ]

220:                                              ; preds = %216
  %221 = getelementptr inbounds i32, ptr %219, i64 2
  %222 = call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %221) #15
  %223 = icmp eq i32 %222, 21
  br i1 %223, label %224, label %226

224:                                              ; preds = %220
  %225 = call noundef i32 @_ZNK11xalanc_1_105XPath26handleFoundIndexPositionalERNS_21XPathExecutionContextEPNS_9XalanNodeEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %213, ptr noundef %3) #15, !range !1017
  br label %246

226:                                              ; preds = %220
  %227 = call noundef i32 @_ZNK11xalanc_1_105XPath16handleFoundIndexERNS_21XPathExecutionContextEPNS_9XalanNodeEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %213, ptr noundef %3) #15, !range !1017
  br label %246

228:                                              ; preds = %216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  call void @_ZNK11xalanc_1_105XPath9predicateEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %213, ptr noundef %219, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %229 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #15
  %230 = call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %229) #15
  %231 = icmp eq i32 %230, 3
  br i1 %231, label %232, label %236

232:                                              ; preds = %228
  %233 = invoke noundef i32 @_ZNK11xalanc_1_105XPath16handleFoundIndexERNS_21XPathExecutionContextEPNS_9XalanNodeEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %213, ptr noundef %3) #15
          to label %243 unwind label %234, !range !1017

234:                                              ; preds = %236, %232
  %235 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  br label %260

236:                                              ; preds = %228
  %237 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #15
  %238 = load ptr, ptr %237, align 8, !tbaa !735
  %239 = getelementptr inbounds ptr, ptr %238, i64 7
  %240 = load ptr, ptr %239, align 8
  %241 = invoke noundef zeroext i1 %240(ptr noundef nonnull align 8 dereferenceable(24) %237) #15
          to label %242 unwind label %234

242:                                              ; preds = %236
  br i1 %241, label %243, label %245

243:                                              ; preds = %232, %242
  %244 = phi i32 [ %233, %232 ], [ %217, %242 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  br label %246

245:                                              ; preds = %242
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  br label %257

246:                                              ; preds = %243, %224, %226
  %247 = phi i32 [ %225, %224 ], [ %227, %226 ], [ %244, %243 ]
  %248 = call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef %219) #15
  %249 = call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef %248) #15
  br label %216, !llvm.loop !1018

250:                                              ; preds = %216, %210
  %251 = phi i32 [ %214, %210 ], [ %217, %216 ]
  %252 = freeze i32 %251
  %253 = load i32, ptr %4, align 4, !tbaa !874
  %254 = icmp eq i32 %253, 0
  %255 = icmp eq i32 %252, 0
  %256 = or i1 %254, %255
  br i1 %256, label %258, label %262, !prof !1019

257:                                              ; preds = %201, %195, %245
  store i32 0, ptr %4, align 4, !tbaa !874
  br label %259

258:                                              ; preds = %250
  store i32 %252, ptr %4, align 4, !tbaa !874
  br i1 %255, label %259, label %262, !prof !1020

259:                                              ; preds = %257, %258
  br label %262

260:                                              ; preds = %234, %193, %100
  %261 = phi { ptr, i32 } [ %235, %234 ], [ %194, %193 ], [ %101, %100 ]
  resume { ptr, i32 } %261

262:                                              ; preds = %250, %258, %259, %21, %27, %22
  %263 = phi ptr [ null, %22 ], [ null, %27 ], [ null, %21 ], [ %213, %250 ], [ null, %259 ], [ %213, %258 ]
  ret ptr %263
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) local_unnamed_addr #2 comdat align 2 !prof !1021 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath11findNodeSetERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(44) %5) #15
  %8 = call noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  br i1 %8, label %19, label %9

9:                                                ; preds = %6
  %10 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  %11 = load ptr, ptr %10, align 8, !tbaa !735
  %12 = getelementptr inbounds ptr, ptr %11, i64 13
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef nonnull align 8 dereferenceable(8) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %10) #15
          to label %15 unwind label %17

15:                                               ; preds = %9
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKNS_15NodeRefListBaseERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
          to label %16 unwind label %17

16:                                               ; preds = %15
  call void @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %5) #15
  br label %19

17:                                               ; preds = %19, %15, %9
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  resume { ptr, i32 } %18

19:                                               ; preds = %6, %16
  %20 = call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #15
  %22 = invoke noundef i32 @_ZNK11xalanc_1_1015XPathExpression24getOpCodeLengthFromOpMapEPKiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %20, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %21) #15
          to label %23 unwind label %17

23:                                               ; preds = %19
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i32, ptr %3, i64 %24
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret ptr %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath8findRootERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef %2, ptr noundef %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #5 align 2 !prof !750 {
  %7 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
  %8 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi(ptr noundef nonnull align 8 dereferenceable(120) %7, ptr noundef %3) #15
  %9 = load ptr, ptr %2, align 8, !tbaa !735
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %13 = icmp eq i32 %12, 9
  br i1 %13, label %19, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr %2, align 8, !tbaa !735
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  br label %19

19:                                               ; preds = %6, %14
  %20 = phi ptr [ %18, %14 ], [ %2, %6 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !735
  %22 = getelementptr inbounds ptr, ptr %21, i64 38
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20) #15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = icmp eq i32 %12, 11
  br i1 %27, label %36, label %28

28:                                               ; preds = %26, %28
  %29 = phi ptr [ %30, %28 ], [ %2, %26 ]
  %30 = tail call noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %29) #15
  %31 = load ptr, ptr %30, align 8, !tbaa !735
  %32 = getelementptr inbounds ptr, ptr %31, i64 4
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef i32 %33(ptr noundef nonnull align 8 dereferenceable(8) %30) #15
  %35 = icmp eq i32 %34, 11
  br i1 %35, label %36, label %28, !llvm.loop !1022

36:                                               ; preds = %28, %26, %19
  %37 = phi ptr [ %20, %19 ], [ %2, %26 ], [ %30, %28 ]
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %37) #15
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %5) #15
  %38 = sext i32 %8 to i64
  %39 = getelementptr inbounds i32, ptr %3, i64 %38
  %40 = getelementptr inbounds i32, ptr %39, i64 3
  ret ptr %40
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath10findParentERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #5 align 2 !prof !750 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
  %9 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef %3) #15
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %11 = getelementptr inbounds i32, ptr %3, i64 3
  %12 = icmp eq ptr %10, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %6
  %14 = icmp sgt i32 %9, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %11, i32 noundef %9, i32 noundef %4) #15
  %16 = load ptr, ptr %10, align 8, !tbaa !735
  %17 = getelementptr inbounds ptr, ptr %16, i64 4
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %10) #15
  %20 = call noundef i32 @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %19) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %10) #15
  br label %23

23:                                               ; preds = %22, %15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  br label %25

24:                                               ; preds = %13
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %10) #15
  br label %25

25:                                               ; preds = %23, %24, %6
  call void @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %5) #15
  %26 = sext i32 %9 to i64
  %27 = getelementptr inbounds i32, ptr %11, i64 %26
  ret ptr %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath8findSelfERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #5 align 2 !prof !1023 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
  %9 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef %3) #15
  %10 = getelementptr inbounds i32, ptr %3, i64 3
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %12, label %13, !prof !1024

12:                                               ; preds = %6
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef %2) #15
  br label %22

13:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %10, i32 noundef %9, i32 noundef %4) #15
  %14 = load ptr, ptr %2, align 8, !tbaa !735
  %15 = getelementptr inbounds ptr, ptr %14, i64 4
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %18 = call noundef i32 @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %17) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20, !prof !1024

20:                                               ; preds = %13
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %2) #15
  br label %21

21:                                               ; preds = %20, %13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  br label %22

22:                                               ; preds = %21, %12
  call void @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %5) #15
  %23 = sext i32 %9 to i64
  %24 = getelementptr inbounds i32, ptr %10, i64 %23
  ret ptr %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath13findAncestorsERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #5 align 2 !prof !750 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %9 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
  %10 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi(ptr noundef nonnull align 8 dereferenceable(120) %9, ptr noundef %3) #15
  %11 = getelementptr inbounds i32, ptr %3, i64 3
  %12 = icmp eq ptr %8, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %11, i32 noundef %10, i32 noundef %4) #15
  br label %14

14:                                               ; preds = %23, %13
  %15 = phi ptr [ %8, %13 ], [ %24, %23 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !735
  %17 = getelementptr inbounds ptr, ptr %16, i64 4
  %18 = load ptr, ptr %17, align 8
  %19 = call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %15) #15
  %20 = call noundef i32 @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef %19) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %15) #15
  br label %23

23:                                               ; preds = %22, %14
  %24 = call noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %15) #15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %14, !llvm.loop !1025

26:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  br label %27

27:                                               ; preds = %26, %6
  call void @_ZN11xalanc_1_1018MutableNodeRefList23setReverseDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %5) #15
  %28 = sext i32 %10 to i64
  %29 = getelementptr inbounds i32, ptr %11, i64 %28
  ret ptr %29
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath19findAncestorsOrSelfERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #5 align 2 !prof !750 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
  %9 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef %3) #15
  %10 = getelementptr inbounds i32, ptr %3, i64 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %10, i32 noundef %9, i32 noundef %4) #15
  br label %11

11:                                               ; preds = %20, %6
  %12 = phi ptr [ %2, %6 ], [ %21, %20 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !735
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %12) #15
  %17 = call noundef i32 @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef %16) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %12) #15
  br label %20

20:                                               ; preds = %19, %11
  %21 = call noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %12) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %11, !llvm.loop !1026

23:                                               ; preds = %20
  call void @_ZN11xalanc_1_1018MutableNodeRefList23setReverseDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %5) #15
  %24 = sext i32 %9 to i64
  %25 = getelementptr inbounds i32, ptr %10, i64 %24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  ret ptr %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath14findAttributesERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #5 align 2 !prof !1027 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
  %9 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef %3) #15
  %10 = getelementptr inbounds i32, ptr %3, i64 3
  %11 = load ptr, ptr %2, align 8, !tbaa !735
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %42, !prof !1028

16:                                               ; preds = %6
  %17 = load ptr, ptr %2, align 8, !tbaa !735
  %18 = getelementptr inbounds ptr, ptr %17, i64 11
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22, !prof !1029

22:                                               ; preds = %16
  %23 = load ptr, ptr %20, align 8, !tbaa !735
  %24 = getelementptr inbounds ptr, ptr %23, i64 5
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef i32 %25(ptr noundef nonnull align 8 dereferenceable(8) %20) #15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %42, label %28, !prof !1029

28:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %10, i32 noundef %9, i32 noundef %4) #15
  br label %30

29:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  br label %42

30:                                               ; preds = %28, %39
  %31 = phi i32 [ 0, %28 ], [ %40, %39 ]
  %32 = load ptr, ptr %20, align 8, !tbaa !735
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef %31) #15
  %36 = call noundef i32 @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(8) %35, i32 noundef 2) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38, !prof !1030

38:                                               ; preds = %30
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %35) #15
  br label %39

39:                                               ; preds = %38, %30
  %40 = add nuw i32 %31, 1
  %41 = icmp eq i32 %40, %26
  br i1 %41, label %29, label %30, !prof !1031, !llvm.loop !1032

42:                                               ; preds = %16, %29, %22, %6
  call void @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %5) #15
  %43 = sext i32 %9 to i64
  %44 = getelementptr inbounds i32, ptr %10, i64 %43
  ret ptr %44
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath12findChildrenERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #5 align 2 !prof !1033 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = load ptr, ptr %2, align 8, !tbaa !735
  %9 = getelementptr inbounds ptr, ptr %8, i64 7
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %12 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
  %13 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi(ptr noundef nonnull align 8 dereferenceable(120) %12, ptr noundef %3) #15
  %14 = getelementptr inbounds i32, ptr %3, i64 3
  %15 = icmp eq ptr %11, null
  br i1 %15, label %33, label %16, !prof !1034

16:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %14, i32 noundef %13, i32 noundef %4) #15
  br label %17

17:                                               ; preds = %26, %16
  %18 = phi ptr [ %11, %16 ], [ %30, %26 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !735
  %20 = getelementptr inbounds ptr, ptr %19, i64 4
  %21 = load ptr, ptr %20, align 8
  %22 = call noundef i32 %21(ptr noundef nonnull align 8 dereferenceable(8) %18) #15
  %23 = call noundef i32 @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef %22) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25, !prof !1035

25:                                               ; preds = %17
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %18) #15
  br label %26

26:                                               ; preds = %25, %17
  %27 = load ptr, ptr %18, align 8, !tbaa !735
  %28 = getelementptr inbounds ptr, ptr %27, i64 10
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %18) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %17, !prof !1036, !llvm.loop !1037

32:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  br label %33

33:                                               ; preds = %32, %6
  call void @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %5) #15
  %34 = sext i32 %13 to i64
  %35 = getelementptr inbounds i32, ptr %14, i64 %34
  ret ptr %35
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath15findDescendantsERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #5 align 2 !prof !750 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
  %9 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef %3) #15
  %10 = getelementptr inbounds i32, ptr %3, i64 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %10, i32 noundef %9, i32 noundef %4) #15
  %11 = icmp ne i32 %4, 39
  br label %12

12:                                               ; preds = %30, %6
  %13 = phi ptr [ %2, %6 ], [ %31, %30 ]
  %14 = icmp eq ptr %13, %2
  %15 = and i1 %11, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %13, align 8, !tbaa !735
  %18 = getelementptr inbounds ptr, ptr %17, i64 4
  %19 = load ptr, ptr %18, align 8
  %20 = call noundef i32 %19(ptr noundef nonnull align 8 dereferenceable(8) %13) #15
  %21 = call noundef i32 @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef %20) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %13) #15
  br label %24

24:                                               ; preds = %16, %23, %12
  %25 = load ptr, ptr %13, align 8, !tbaa !735
  %26 = getelementptr inbounds ptr, ptr %25, i64 7
  %27 = load ptr, ptr %26, align 8
  %28 = call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %13) #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %35, %24
  %31 = phi ptr [ %28, %24 ], [ %39, %35 ]
  br label %12, !llvm.loop !1038

32:                                               ; preds = %24, %41
  %33 = phi ptr [ %42, %41 ], [ %13, %24 ]
  %34 = icmp eq ptr %33, %2
  br i1 %34, label %46, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %33, align 8, !tbaa !735
  %37 = getelementptr inbounds ptr, ptr %36, i64 10
  %38 = load ptr, ptr %37, align 8
  %39 = call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %33) #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %30, !llvm.loop !1038

41:                                               ; preds = %35
  %42 = call noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %33) #15
  %43 = icmp eq ptr %42, %2
  %44 = icmp eq ptr %42, null
  %45 = or i1 %43, %44
  br i1 %45, label %46, label %32, !llvm.loop !1039

46:                                               ; preds = %32, %41
  call void @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %5) #15
  %47 = sext i32 %9 to i64
  %48 = getelementptr inbounds i32, ptr %10, i64 %47
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  ret ptr %48
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath13findFollowingERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #5 align 2 !prof !750 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
  %9 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef %3) #15
  %10 = getelementptr inbounds i32, ptr %3, i64 3
  %11 = load ptr, ptr %2, align 8, !tbaa !735
  %12 = getelementptr inbounds ptr, ptr %11, i64 12
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %10, i32 noundef %9, i32 noundef %4) #15
  br label %15

15:                                               ; preds = %32, %6
  %16 = phi ptr [ %2, %6 ], [ %33, %32 ]
  %17 = icmp eq ptr %16, %2
  br i1 %17, label %34, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %16, align 8, !tbaa !735
  %20 = getelementptr inbounds ptr, ptr %19, i64 4
  %21 = load ptr, ptr %20, align 8
  %22 = call noundef i32 %21(ptr noundef nonnull align 8 dereferenceable(8) %16) #15
  %23 = call noundef i32 @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef %22) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  call void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  br label %26

26:                                               ; preds = %18, %25
  %27 = load ptr, ptr %16, align 8, !tbaa !735
  %28 = getelementptr inbounds ptr, ptr %27, i64 7
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %16) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %44, %26
  %33 = phi ptr [ %30, %26 ], [ %50, %44 ]
  br label %15, !llvm.loop !1040

34:                                               ; preds = %15, %26
  br label %35

35:                                               ; preds = %34, %52
  %36 = phi ptr [ %53, %52 ], [ %16, %34 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !735
  %38 = getelementptr inbounds ptr, ptr %37, i64 4
  %39 = load ptr, ptr %38, align 8
  %40 = call noundef i32 %39(ptr noundef nonnull align 8 dereferenceable(8) %36) #15
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %36) #15
  br label %44

44:                                               ; preds = %35, %42
  %45 = phi ptr [ %43, %42 ], [ %36, %35 ]
  %46 = phi i64 [ 7, %42 ], [ 10, %35 ]
  %47 = load ptr, ptr %45, align 8, !tbaa !735
  %48 = getelementptr inbounds ptr, ptr %47, i64 %46
  %49 = load ptr, ptr %48, align 8
  %50 = call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %45) #15
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %32, !llvm.loop !1040

52:                                               ; preds = %44
  %53 = call noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %36) #15
  %54 = icmp eq ptr %14, %53
  %55 = icmp eq ptr %53, null
  %56 = or i1 %54, %55
  br i1 %56, label %57, label %35, !llvm.loop !1041

57:                                               ; preds = %52
  call void @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %5) #15
  %58 = sext i32 %9 to i64
  %59 = getelementptr inbounds i32, ptr %10, i64 %58
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  ret ptr %59
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath21findFollowingSiblingsERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #5 align 2 !prof !750 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
  %9 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef %3) #15
  %10 = load ptr, ptr %2, align 8, !tbaa !735
  %11 = getelementptr inbounds ptr, ptr %10, i64 10
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %14 = getelementptr inbounds i32, ptr %3, i64 3
  %15 = icmp eq ptr %13, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %14, i32 noundef %9, i32 noundef %4) #15
  br label %17

17:                                               ; preds = %26, %16
  %18 = phi ptr [ %13, %16 ], [ %30, %26 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !735
  %20 = getelementptr inbounds ptr, ptr %19, i64 4
  %21 = load ptr, ptr %20, align 8
  %22 = call noundef i32 %21(ptr noundef nonnull align 8 dereferenceable(8) %18) #15
  %23 = call noundef i32 @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef %22) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %18) #15
  br label %26

26:                                               ; preds = %25, %17
  %27 = load ptr, ptr %18, align 8, !tbaa !735
  %28 = getelementptr inbounds ptr, ptr %27, i64 10
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %18) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %17, !llvm.loop !1042

32:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  br label %33

33:                                               ; preds = %32, %6
  call void @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %5) #15
  %34 = sext i32 %9 to i64
  %35 = getelementptr inbounds i32, ptr %14, i64 %34
  ret ptr %35
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath14findPreceedingERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #5 align 2 !prof !750 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
  %9 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef %3) #15
  %10 = getelementptr inbounds i32, ptr %3, i64 3
  %11 = load ptr, ptr %2, align 8, !tbaa !735
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %15 = tail call fastcc noundef ptr @_ZN11xalanc_1_10L11findTopNodeEPNS_9XalanNodeENS0_8NodeTypeE(ptr noundef nonnull %2, i32 noundef %14) #15
  %16 = icmp eq i32 %14, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = tail call noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  br label %19

19:                                               ; preds = %6, %17
  %20 = phi ptr [ %18, %17 ], [ null, %6 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %10, i32 noundef %9, i32 noundef %4) #15
  %21 = icmp eq ptr %15, null
  %22 = icmp eq ptr %15, %2
  %23 = or i1 %21, %22
  br i1 %23, label %66, label %24

24:                                               ; preds = %19, %63
  %25 = phi ptr [ %64, %63 ], [ %15, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !735
  %27 = getelementptr inbounds ptr, ptr %26, i64 4
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef i32 %28(ptr noundef nonnull align 8 dereferenceable(8) %25) #15
  %30 = call noundef i32 @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef %29) #15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %24
  %33 = call noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32, %38
  %36 = phi ptr [ %39, %38 ], [ %33, %32 ]
  %37 = icmp eq ptr %36, %25
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = call noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %36) #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %35, !llvm.loop !1043

41:                                               ; preds = %38, %32
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %25) #15
  br label %42

42:                                               ; preds = %35, %41, %24
  %43 = icmp eq ptr %25, %20
  %44 = and i1 %16, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %25, align 8, !tbaa !735
  %47 = getelementptr inbounds ptr, ptr %46, i64 7
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %25) #15
  br label %50

50:                                               ; preds = %42, %45
  %51 = phi ptr [ %49, %45 ], [ %2, %42 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %50, %60
  %54 = phi ptr [ %61, %60 ], [ %25, %50 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !735
  %56 = getelementptr inbounds ptr, ptr %55, i64 10
  %57 = load ptr, ptr %56, align 8
  %58 = call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %54) #15
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = call noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %54) #15
  %62 = icmp eq ptr %15, %61
  br i1 %62, label %66, label %53, !llvm.loop !1044

63:                                               ; preds = %53, %50
  %64 = phi ptr [ %51, %50 ], [ %58, %53 ]
  %65 = icmp eq ptr %64, %2
  br i1 %65, label %66, label %24, !llvm.loop !1045

66:                                               ; preds = %63, %60, %19
  call void @_ZN11xalanc_1_1018MutableNodeRefList7reverseEv(ptr noundef nonnull align 8 dereferenceable(44) %5) #15
  call void @_ZN11xalanc_1_1018MutableNodeRefList23setReverseDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %5) #15
  %67 = sext i32 %9 to i64
  %68 = getelementptr inbounds i32, ptr %10, i64 %67
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  ret ptr %68
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath22findPreceedingSiblingsERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #5 align 2 !prof !750 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
  %9 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef %3) #15
  %10 = getelementptr inbounds i32, ptr %3, i64 3
  %11 = load ptr, ptr %2, align 8, !tbaa !735
  %12 = getelementptr inbounds ptr, ptr %11, i64 9
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %10, i32 noundef %9, i32 noundef %4) #15
  br label %17

17:                                               ; preds = %26, %16
  %18 = phi ptr [ %14, %16 ], [ %30, %26 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !735
  %20 = getelementptr inbounds ptr, ptr %19, i64 4
  %21 = load ptr, ptr %20, align 8
  %22 = call noundef i32 %21(ptr noundef nonnull align 8 dereferenceable(8) %18) #15
  %23 = call noundef i32 @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef %22) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %18) #15
  br label %26

26:                                               ; preds = %25, %17
  %27 = load ptr, ptr %18, align 8, !tbaa !735
  %28 = getelementptr inbounds ptr, ptr %27, i64 9
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %18) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %17, !llvm.loop !1046

32:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  br label %33

33:                                               ; preds = %32, %6
  call void @_ZN11xalanc_1_1018MutableNodeRefList23setReverseDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %5) #15
  %34 = sext i32 %9 to i64
  %35 = getelementptr inbounds i32, ptr %10, i64 %34
  ret ptr %35
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath13findNamespaceERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #5 align 2 !prof !750 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
  %9 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef %3) #15
  %10 = getelementptr inbounds i32, ptr %3, i64 3
  %11 = load ptr, ptr %2, align 8, !tbaa !735
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %114

16:                                               ; preds = %6
  %17 = load ptr, ptr %2, align 8, !tbaa !735
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %10, i32 noundef %9, i32 noundef %4) #15
  %21 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE, align 8
  %22 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8
  br label %23

23:                                               ; preds = %103, %16
  %24 = phi i8 [ 0, %16 ], [ %104, %103 ]
  %25 = phi i32 [ 0, %16 ], [ %105, %103 ]
  %26 = phi ptr [ %2, %16 ], [ %109, %103 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !735
  %28 = getelementptr inbounds ptr, ptr %27, i64 11
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %26) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %103, label %32

32:                                               ; preds = %23
  %33 = load ptr, ptr %30, align 8, !tbaa !735
  %34 = getelementptr inbounds ptr, ptr %33, i64 5
  %35 = load ptr, ptr %34, align 8
  %36 = call noundef i32 %35(ptr noundef nonnull align 8 dereferenceable(8) %30) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %103, label %38

38:                                               ; preds = %32, %99
  %39 = phi i32 [ %101, %99 ], [ %25, %32 ]
  %40 = phi i8 [ %100, %99 ], [ %24, %32 ]
  %41 = phi i32 [ %42, %99 ], [ %36, %32 ]
  %42 = add i32 %41, -1
  %43 = load ptr, ptr %30, align 8, !tbaa !735
  %44 = getelementptr inbounds ptr, ptr %43, i64 3
  %45 = load ptr, ptr %44, align 8
  %46 = call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef %42) #15
  %47 = load ptr, ptr %46, align 8, !tbaa !735
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = call noundef nonnull align 8 dereferenceable(36) ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %46) #15
  %51 = call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %50, ptr noundef nonnull align 8 dereferenceable(36) %21) #15
  br i1 %51, label %54, label %52

52:                                               ; preds = %38
  %53 = call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %50, ptr noundef nonnull align 8 dereferenceable(36) %22) #15
  br i1 %53, label %54, label %99

54:                                               ; preds = %52, %38
  %55 = call noundef i32 @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(8) %46, i32 noundef 2) #15
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %99, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %46, align 8, !tbaa !735
  %59 = getelementptr inbounds ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  %61 = call noundef nonnull align 8 dereferenceable(36) ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %46) #15
  %62 = call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %50, ptr noundef nonnull align 8 dereferenceable(36) %22) #15
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = and i8 %40, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %61, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1011DOMServices13s_emptyStringE) #15
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi i1 [ true, %63 ], [ %67, %66 ]
  %70 = zext i1 %69 to i8
  br label %71

71:                                               ; preds = %68, %57
  %72 = phi i8 [ 1, %68 ], [ %40, %57 ]
  %73 = phi i8 [ %70, %68 ], [ 0, %57 ]
  %74 = icmp eq i8 %73, 0
  %75 = icmp ne i32 %39, 0
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %79, label %77

77:                                               ; preds = %79, %71
  %78 = phi i1 [ %74, %71 ], [ %94, %79 ]
  br i1 %78, label %97, label %99

79:                                               ; preds = %71, %79
  %80 = phi i32 [ %92, %79 ], [ 0, %71 ]
  %81 = phi i8 [ %91, %79 ], [ 0, %71 ]
  %82 = load ptr, ptr %5, align 8, !tbaa !735
  %83 = getelementptr inbounds ptr, ptr %82, i64 2
  %84 = load ptr, ptr %83, align 8
  %85 = call noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %80) #15
  %86 = load ptr, ptr %85, align 8, !tbaa !735
  %87 = getelementptr inbounds ptr, ptr %86, i64 2
  %88 = load ptr, ptr %87, align 8
  %89 = call noundef nonnull align 8 dereferenceable(36) ptr %88(ptr noundef nonnull align 8 dereferenceable(8) %85) #15
  %90 = call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %89, ptr noundef nonnull align 8 dereferenceable(36) %50) #15
  %91 = select i1 %90, i8 1, i8 %81
  %92 = add nuw i32 %80, 1
  %93 = and i8 %91, 1
  %94 = icmp eq i8 %93, 0
  %95 = icmp ult i32 %92, %39
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %79, label %77, !llvm.loop !1047

97:                                               ; preds = %77
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %46) #15
  %98 = add i32 %39, 1
  br label %99

99:                                               ; preds = %54, %97, %77, %52
  %100 = phi i8 [ %40, %52 ], [ %40, %54 ], [ %72, %97 ], [ %72, %77 ]
  %101 = phi i32 [ %39, %52 ], [ %39, %54 ], [ %98, %97 ], [ %39, %77 ]
  %102 = icmp eq i32 %42, 0
  br i1 %102, label %103, label %38, !llvm.loop !1048

103:                                              ; preds = %99, %32, %23
  %104 = phi i8 [ %24, %23 ], [ %24, %32 ], [ %100, %99 ]
  %105 = phi i32 [ %25, %23 ], [ %25, %32 ], [ %101, %99 ]
  %106 = load ptr, ptr %26, align 8, !tbaa !735
  %107 = getelementptr inbounds ptr, ptr %106, i64 5
  %108 = load ptr, ptr %107, align 8
  %109 = call noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(8) %26) #15
  %110 = icmp ne ptr %109, %20
  %111 = icmp ne ptr %109, null
  %112 = and i1 %110, %111
  br i1 %112, label %23, label %113, !llvm.loop !1049

113:                                              ; preds = %103
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  br label %114

114:                                              ; preds = %113, %6
  call void @_ZN11xalanc_1_1018MutableNodeRefList7reverseEv(ptr noundef nonnull align 8 dereferenceable(44) %5) #15
  call void @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %5) #15
  %115 = sext i32 %9 to i64
  %116 = getelementptr inbounds i32, ptr %10, i64 %115
  ret ptr %116
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath22findNodesOnUnknownAxisERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture nonnull readnone align 8 %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %8 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
  %10 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi(ptr noundef nonnull align 8 dereferenceable(120) %9, ptr noundef %3) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
          to label %11 unwind label %27

11:                                               ; preds = %6
  %12 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  %13 = sext i32 %4 to i64
  %14 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #15
  %15 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %13, ptr noundef nonnull align 8 dereferenceable(36) %14) #15
          to label %16 unwind label %29

16:                                               ; preds = %11
  %17 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %12, i32 noundef 12, ptr noundef nonnull align 8 dereferenceable(36) %15) #15
          to label %18 unwind label %29

18:                                               ; preds = %16
  %19 = call noundef ptr @_ZNK11xalanc_1_105XPath10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
  %20 = load ptr, ptr %1, align 8, !tbaa !735
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %17, ptr noundef %2, ptr noundef %19) #15
          to label %23 unwind label %29

23:                                               ; preds = %18
  %24 = sext i32 %10 to i64
  %25 = getelementptr inbounds i32, ptr %3, i64 %24
  %26 = getelementptr inbounds i32, ptr %25, i64 3
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  ret ptr %26

27:                                               ; preds = %6
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %31

29:                                               ; preds = %18, %16, %11
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #17
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  resume { ptr, i32 } %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopC2ERS0_RKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #5 comdat align 2 !prof !1050 {
  store ptr %1, ptr %0, align 8, !tbaa !753
  %4 = load ptr, ptr %1, align 8, !tbaa !735
  %5 = getelementptr inbounds ptr, ptr %4, i64 10
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(44) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !1051 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #15
  %7 = load ptr, ptr %3, align 8, !tbaa !735
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(40) %3) #15
  br label %11

11:                                               ; preds = %75, %4
  %12 = phi i32 [ %10, %4 ], [ %79, %75 ]
  %13 = phi ptr [ %2, %4 ], [ %73, %75 ]
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %72, label %15, !prof !1052

15:                                               ; preds = %11
  %16 = getelementptr inbounds i32, ptr %13, i64 2
  %17 = call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %16) #15
  %18 = icmp eq i32 %17, 21
  br i1 %18, label %19, label %40, !prof !1053

19:                                               ; preds = %15
  %20 = getelementptr inbounds i32, ptr %13, i64 4
  %21 = call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %20) #15
  %22 = call noundef double @_ZNK11xalanc_1_1015XPathExpression16getNumberLiteralEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %21) #15
  %23 = fcmp ugt double %22, 0.000000e+00
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = fptoui double %22 to i32
  %26 = icmp ult i32 %12, %25
  %27 = uitofp i32 %25 to double
  %28 = fcmp une double %22, %27
  %29 = or i1 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %19
  call void @_ZN11xalanc_1_1018MutableNodeRefList5clearEv(ptr noundef nonnull align 8 dereferenceable(44) %3) #15
  br label %72

31:                                               ; preds = %24
  %32 = icmp eq i32 %12, 1
  br i1 %32, label %72, label %33

33:                                               ; preds = %31
  %34 = add i32 %25, -1
  %35 = load ptr, ptr %3, align 8, !tbaa !735
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %34) #15
  call void @_ZN11xalanc_1_1018MutableNodeRefList5clearEv(ptr noundef nonnull align 8 dereferenceable(44) %3) #15
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %3, ptr noundef %38) #15
  call void @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %3) #15
  br label %72

39:                                               ; preds = %69
  call void @_ZN11xalanc_1_1018MutableNodeRefList10clearNullsEv(ptr noundef nonnull align 8 dereferenceable(44) %3) #15
  br label %72

40:                                               ; preds = %15, %69
  %41 = phi i32 [ %70, %69 ], [ 0, %15 ]
  %42 = load ptr, ptr %3, align 8, !tbaa !735
  %43 = getelementptr inbounds ptr, ptr %42, i64 2
  %44 = load ptr, ptr %43, align 8
  %45 = call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %41) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @_ZNK11xalanc_1_105XPath9predicateEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %45, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %46 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %47 = call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %46) #15
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %59, !prof !1053

49:                                               ; preds = %40
  %50 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %51 = load ptr, ptr %50, align 8, !tbaa !735
  %52 = getelementptr inbounds ptr, ptr %51, i64 6
  %53 = load ptr, ptr %52, align 8
  %54 = invoke noundef double %53(ptr noundef nonnull align 8 dereferenceable(24) %50) #15
          to label %55 unwind label %67

55:                                               ; preds = %49
  %56 = add nuw i32 %41, 1
  %57 = uitofp i32 %56 to double
  %58 = fcmp une double %54, %57
  br i1 %58, label %66, label %59

59:                                               ; preds = %55, %40
  %60 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %61 = load ptr, ptr %60, align 8, !tbaa !735
  %62 = getelementptr inbounds ptr, ptr %61, i64 7
  %63 = load ptr, ptr %62, align 8
  %64 = invoke noundef zeroext i1 %63(ptr noundef nonnull align 8 dereferenceable(24) %60) #15
          to label %65 unwind label %67

65:                                               ; preds = %59
  br i1 %64, label %69, label %66, !prof !1053

66:                                               ; preds = %65, %55
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList7setNodeEjPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %3, i32 noundef %41, ptr noundef null) #15
          to label %69 unwind label %67

67:                                               ; preds = %66, %59, %49
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  resume { ptr, i32 } %68

69:                                               ; preds = %66, %65
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  %70 = add nuw i32 %41, 1
  %71 = icmp eq i32 %70, %12
  br i1 %71, label %39, label %40, !prof !1054, !llvm.loop !1055

72:                                               ; preds = %39, %33, %31, %30, %11
  %73 = call noundef ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef %13) #15
  %74 = call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef %73) #15
  switch i32 %74, label %80 [
    i32 55, label %75
    i32 26, label %75
  ]

75:                                               ; preds = %72, %72
  %76 = load ptr, ptr %3, align 8, !tbaa !735
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  %79 = call noundef i32 %78(ptr noundef nonnull align 8 dereferenceable(40) %3) #15
  br label %11

80:                                               ; preds = %72
  ret ptr %73
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011NodeRefList5emptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !1056 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018MutableNodeRefList4swapERS0_(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(44) %1) local_unnamed_addr #5 comdat align 2 !prof !1057 {
  tail call void @_ZN11xalanc_1_1011NodeRefList4swapERS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #15
  %3 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !938
  %5 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !938
  store i32 %6, ptr %3, align 8, !tbaa !938
  store i32 %4, ptr %5, align 8, !tbaa !938
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018MutableNodeRefList23getReverseDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #2 comdat align 2 !prof !1058 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !938
  %4 = icmp eq i32 %3, 2
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018MutableNodeRefList7reverseEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !1050 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1059
  %3 = load ptr, ptr %2, align 8, !tbaa !735
  %4 = getelementptr inbounds ptr, ptr %3, i64 11
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(24) %2) #15
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !1061 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !1062
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !1063 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011NodeRefList4swapERS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #5 comdat align 2 !prof !1057 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %1, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 !prof !1064 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %3 = load ptr, ptr %0, align 8, !tbaa !1065
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !1066
  %7 = load ptr, ptr %1, align 8, !tbaa !1065
  store ptr %7, ptr %0, align 8, !tbaa !1065
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !909
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !1066
  store ptr %11, ptr %5, align 8, !tbaa !1066
  store ptr %3, ptr %1, align 8, !tbaa !1065
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !909
  store <2 x i64> %9, ptr %4, align 8, !tbaa !909
  store <2 x i64> %12, ptr %8, align 8, !tbaa !909
  store ptr %6, ptr %10, align 8, !tbaa !1066
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !1067 {
  %2 = load ptr, ptr %0, align 8, !tbaa !735
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %6 = icmp eq i32 %5, 2
  %7 = load ptr, ptr %0, align 8, !tbaa !735
  %8 = select i1 %6, i64 32, i64 5, !prof !1068
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret ptr %11
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xalanc_1_1015XPathExpression24getOpCodeLengthFromOpMapEPKiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !1069 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !1070
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !1070
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = and i64 %5, 1
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %8, align 8, !tbaa !735
  %13 = getelementptr i8, ptr %12, i64 %5
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load ptr, ptr %14, align 8, !nosanitize !799
  br label %18

16:                                               ; preds = %3
  %17 = inttoptr i64 %5 to ptr
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi ptr [ %15, %11 ], [ %17, %16 ]
  %20 = tail call noundef i32 %19(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #15
  ret i32 %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_105XPath10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(129) %0) local_unnamed_addr #2 comdat align 2 !prof !750 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !741
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath26handleFoundIndexPositionalERNS_21XPathExecutionContextEPNS_9XalanNodeEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %9 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  invoke void @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(44) %9) #15
          to label %10 unwind label %15

10:                                               ; preds = %8
  %11 = call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  %12 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1011NodeRefList5emptyEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #15
          to label %13 unwind label %15

13:                                               ; preds = %10
  %14 = select i1 %12, i32 0, i32 4
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  br label %17

15:                                               ; preds = %10, %8
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  resume { ptr, i32 } %16

17:                                               ; preds = %4, %13
  %18 = phi i32 [ %14, %13 ], [ 0, %4 ]
  ret i32 %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath16handleFoundIndexERNS_21XPathExecutionContextEPNS_9XalanNodeEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %9 = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  invoke void @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(44) %9) #15
          to label %10 unwind label %19

10:                                               ; preds = %8
  %11 = call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  %12 = load ptr, ptr %11, align 8, !tbaa !735
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull %2) #15
          to label %16 unwind label %19

16:                                               ; preds = %10
  %17 = icmp eq i32 %15, -1
  %18 = select i1 %17, i32 0, i32 4
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  br label %21

19:                                               ; preds = %10, %8
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  resume { ptr, i32 } %20

21:                                               ; preds = %4, %16
  %22 = phi i32 [ %18, %16 ], [ 0, %4 ]
  ret i32 %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_105XPath9predicateEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #5 comdat align 2 !prof !1072 {
  %6 = getelementptr inbounds i32, ptr %3, i64 2
  tail call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018MutableNodeRefList23setReverseDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #2 comdat align 2 !prof !750 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  store i32 2, ptr %2, align 8, !tbaa !938
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef ptr @_ZN11xalanc_1_10L11findTopNodeEPNS_9XalanNodeENS0_8NodeTypeE(ptr noundef %0, i32 noundef %1) unnamed_addr #5 !prof !750 !PGOFuncName !1073 {
  %3 = icmp eq i32 %1, 9
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !735
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %9 = load ptr, ptr %8, align 8, !tbaa !735
  %10 = getelementptr inbounds ptr, ptr %9, i64 38
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %4
  %15 = load ptr, ptr %0, align 8, !tbaa !735
  %16 = getelementptr inbounds ptr, ptr %15, i64 4
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef i32 %17(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %30, label %26

20:                                               ; preds = %26
  %21 = load ptr, ptr %28, align 8, !tbaa !735
  %22 = getelementptr inbounds ptr, ptr %21, i64 4
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(8) %28) #15
  %25 = icmp eq i32 %24, 9
  br i1 %25, label %30, label %26, !llvm.loop !1074

26:                                               ; preds = %14, %20
  %27 = phi ptr [ %28, %20 ], [ %0, %14 ]
  %28 = tail call noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %27) #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %20, !llvm.loop !1074

30:                                               ; preds = %20, %26, %14, %4, %2
  %31 = phi ptr [ %0, %2 ], [ %8, %4 ], [ null, %14 ], [ %27, %26 ], [ %27, %20 ]
  ret ptr %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1010startsWithERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #5 comdat !prof !1075 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %4 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %5 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  %6 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  %7 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) #15
  ret i1 %7
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #5 comdat !prof !1076 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018MutableNodeRefList7setNodeEjPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44), i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018MutableNodeRefList10clearNullsEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS1_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %1) unnamed_addr #10 align 2 !prof !750 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !753
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !753
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1077
  store ptr %6, ptr %4, align 8, !tbaa !1077
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %1, i64 0, i32 3
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !1070
  store <2 x i64> %9, ptr %7, align 8, !tbaa !1070
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %1, i64 0, i32 4
  %12 = load <2 x i64>, ptr %11, align 8, !tbaa !1078
  store <2 x i64> %12, ptr %10, align 8, !tbaa !1078
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !1079 {
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  store ptr %2, ptr %0, align 8, !tbaa !1080
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3, i32 1
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester12testDefault2ERKNS_12XalanElementE to i64), ptr %12, align 8, !tbaa !1078
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %13, align 8, !tbaa !1078
  %14 = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %1) #15
  %15 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef %3) #15
  switch i32 %15, label %74 [
    i32 27, label %16
    i32 28, label %17
    i32 29, label %18
    i32 30, label %34
    i32 32, label %35
    i32 31, label %36
  ], !prof !1081

16:                                               ; preds = %6
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester11testCommentERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %10, align 8, !tbaa !1070
  store i64 0, ptr %11, align 8, !tbaa !1070
  br label %75

17:                                               ; preds = %6
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester8testTextERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %10, align 8, !tbaa !1070
  store i64 0, ptr %11, align 8, !tbaa !1070
  br label %75

18:                                               ; preds = %6
  switch i32 %4, label %23 [
    i32 1, label %19
    i32 2, label %20
  ]

19:                                               ; preds = %18
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester6testPIERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %10, align 8, !tbaa !1070
  store i64 0, ptr %11, align 8, !tbaa !1070
  br label %75

20:                                               ; preds = %18
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester10testPINameERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %10, align 8, !tbaa !1070
  store i64 0, ptr %11, align 8, !tbaa !1070
  %21 = getelementptr inbounds i32, ptr %3, i64 1
  %22 = tail call noundef ptr @_ZN11xalanc_1_1023getStringFromTokenQueueERKNS_15XPathExpressionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef nonnull %21) #15
  store ptr %22, ptr %9, align 8, !tbaa !1077
  br label %75

23:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  %24 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  %25 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %24, i32 noundef 14, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null) #15
          to label %26 unwind label %32

26:                                               ; preds = %23
  %27 = call noundef ptr @_ZNK11xalanc_1_105XPath10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(129) %1) #15
  %28 = load ptr, ptr %2, align 8, !tbaa !735
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %25, ptr noundef null, ptr noundef %27) #15
          to label %31 unwind label %32

31:                                               ; preds = %26
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  br label %75

32:                                               ; preds = %26, %23
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  resume { ptr, i32 } %33

34:                                               ; preds = %6
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester8testNodeERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %10, align 8, !tbaa !1070
  store i64 0, ptr %11, align 8, !tbaa !1070
  br label %75

35:                                               ; preds = %6
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester8testRootERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %10, align 8, !tbaa !1070
  store i64 0, ptr %11, align 8, !tbaa !1070
  br label %75

36:                                               ; preds = %6
  %37 = getelementptr inbounds i32, ptr %3, i64 1
  %38 = tail call noundef ptr @_ZN11xalanc_1_1023getStringFromTokenQueueERKNS_15XPathExpressionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef nonnull %37) #15
  store ptr %38, ptr %8, align 8, !tbaa !1082
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %44, !prof !1083

40:                                               ; preds = %36
  %41 = getelementptr inbounds i32, ptr %3, i64 2
  %42 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef nonnull %41) #15
  %43 = icmp eq i32 %42, -3
  br i1 %43, label %47, label %44, !prof !1084

44:                                               ; preds = %40, %36
  %45 = getelementptr inbounds i32, ptr %3, i64 2
  %46 = tail call noundef ptr @_ZN11xalanc_1_1023getStringFromTokenQueueERKNS_15XPathExpressionEPKi(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef nonnull %45) #15
  store ptr %46, ptr %9, align 8, !tbaa !1077
  br label %47

47:                                               ; preds = %40, %44
  %48 = phi i1 [ false, %44 ], [ true, %40 ]
  switch i32 %5, label %63 [
    i32 36, label %49
    i32 46, label %60
  ], !prof !1085

49:                                               ; preds = %47
  br i1 %48, label %50, label %51, !prof !1086

50:                                               ; preds = %49
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester24testAttributeTotallyWildERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %10, align 8, !tbaa !1070
  store i64 0, ptr %11, align 8, !tbaa !1070
  br label %75

51:                                               ; preds = %49
  %52 = load ptr, ptr %8, align 8, !tbaa !1082
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55, !prof !1087

54:                                               ; preds = %51
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester19testAttributeNCNameERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %10, align 8, !tbaa !1070
  store i64 0, ptr %11, align 8, !tbaa !1070
  br label %75

55:                                               ; preds = %51
  %56 = load ptr, ptr %9, align 8, !tbaa !1077
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester26testAttributeNamespaceOnlyERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %10, align 8, !tbaa !1070
  store i64 0, ptr %11, align 8, !tbaa !1070
  br label %75

59:                                               ; preds = %55
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester18testAttributeQNameERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %10, align 8, !tbaa !1070
  store i64 0, ptr %11, align 8, !tbaa !1070
  br label %75

60:                                               ; preds = %47
  br i1 %48, label %61, label %62

61:                                               ; preds = %60
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester24testNamespaceTotallyWildERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %10, align 8, !tbaa !1070
  store i64 0, ptr %11, align 8, !tbaa !1070
  br label %75

62:                                               ; preds = %60
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester19testNamespaceNCNameERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %10, align 8, !tbaa !1070
  store i64 0, ptr %11, align 8, !tbaa !1070
  br label %75

63:                                               ; preds = %47
  br i1 %48, label %64, label %65, !prof !1088

64:                                               ; preds = %63
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester22testElementTotallyWildERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %10, align 8, !tbaa !1070
  store i64 0, ptr %11, align 8, !tbaa !1070
  br label %75

65:                                               ; preds = %63
  %66 = load ptr, ptr %8, align 8, !tbaa !1082
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %69, !prof !1089

68:                                               ; preds = %65
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester17testElementNCNameERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %10, align 8, !tbaa !1070
  store i64 0, ptr %11, align 8, !tbaa !1070
  br label %75

69:                                               ; preds = %65
  %70 = load ptr, ptr %9, align 8, !tbaa !1077
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %73, !prof !1090

72:                                               ; preds = %69
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester24testElementNamespaceOnlyERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %10, align 8, !tbaa !1070
  store i64 0, ptr %11, align 8, !tbaa !1070
  br label %75

73:                                               ; preds = %69
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester16testElementQNameERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %10, align 8, !tbaa !1070
  store i64 0, ptr %11, align 8, !tbaa !1070
  br label %75

74:                                               ; preds = %6
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester11testDefaultERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %10, align 8, !tbaa !1070
  store i64 0, ptr %11, align 8, !tbaa !1070
  br label %75

75:                                               ; preds = %54, %59, %58, %50, %64, %72, %73, %68, %61, %62, %19, %31, %20, %74, %35, %34, %17, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester12testDefault2ERKNS_12XalanElementE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) #11 align 2 !prof !750 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester11testCommentERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, i32 noundef %2) #11 align 2 !prof !750 {
  %4 = icmp eq i32 %2, 8
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester8testTextERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #5 align 2 !prof !750 {
  %4 = add i32 %2, -3
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester21shouldStripSourceNodeERKNS_9XalanTextE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  br i1 %7, label %8, label %9

8:                                                ; preds = %3, %6
  br label %9

9:                                                ; preds = %6, %8
  %10 = phi i32 [ 0, %8 ], [ 1, %6 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester6testPIERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, i32 noundef %2) #11 align 2 !prof !750 {
  %4 = icmp eq i32 %2, 7
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester10testPINameERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #5 align 2 !prof !750 {
  %4 = icmp eq i32 %2, 7
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 8, !tbaa !735
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1077
  %12 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(36) %11) #15
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %3
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i32 [ 0, %13 ], [ 3, %5 ]
  ret i32 %15
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester8testNodeERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #5 align 2 !prof !1091 {
  %4 = add i32 %2, -5
  %5 = icmp ult i32 %4, -2
  br i1 %5, label %9, label %6, !prof !1092

6:                                                ; preds = %3
  %7 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester21shouldStripSourceNodeERKNS_9XalanTextE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  br i1 %7, label %8, label %9, !prof !1093

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %6, %3, %8
  %10 = phi i32 [ 0, %8 ], [ 1, %3 ], [ 1, %6 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester8testRootERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, i32 noundef %2) #11 align 2 !prof !750 {
  %4 = and i32 %2, -3
  %5 = icmp eq i32 %4, 9
  %6 = select i1 %5, i32 4, i32 0
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester24testAttributeTotallyWildERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #5 align 2 !prof !750 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1022isNamespaceDeclarationERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ 0, %3 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester19testAttributeNCNameERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #5 align 2 !prof !1094 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %10, !prof !1095

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1022isNamespaceDeclarationERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  br i1 %6, label %10, label %7, !prof !1096

7:                                                ; preds = %5
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester14matchLocalNameERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %9 = select i1 %8, i32 3, i32 0, !prof !1097
  br label %10

10:                                               ; preds = %7, %3, %5
  %11 = phi i32 [ 0, %5 ], [ 0, %3 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester26testAttributeNamespaceOnlyERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #5 align 2 !prof !750 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1022isNamespaceDeclarationERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester17matchNamespaceURIERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %9 = select i1 %8, i32 2, i32 0
  br label %10

10:                                               ; preds = %7, %3, %5
  %11 = phi i32 [ 0, %5 ], [ 0, %3 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester18testAttributeQNameERKNS_9XalanNodeENS2_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #5 align 2 !prof !750 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1022isNamespaceDeclarationERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester29matchLocalNameAndNamespaceURIERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %9 = select i1 %8, i32 3, i32 0
  br label %10

10:                                               ; preds = %7, %3, %5
  %11 = phi i32 [ 0, %5 ], [ 0, %3 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester24testNamespaceTotallyWildERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #5 align 2 !prof !750 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1022isNamespaceDeclarationERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ 0, %3 ], [ %7, %5 ]
  ret i32 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester19testNamespaceNCNameERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #5 align 2 !prof !750 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1022isNamespaceDeclarationERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester14matchNamespaceERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %9 = select i1 %8, i32 3, i32 0
  br label %10

10:                                               ; preds = %7, %3, %5
  %11 = phi i32 [ 0, %5 ], [ 0, %3 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester22testElementTotallyWildERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, i32 noundef %2) #11 align 2 !prof !1098 {
  %4 = icmp eq i32 %2, 1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester17testElementNCNameERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #5 align 2 !prof !1099 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %8, !prof !1100

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester14matchLocalNameERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  br i1 %6, label %7, label %8, !prof !1101

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %3, %5, %7
  %9 = phi i32 [ 3, %7 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester24testElementNamespaceOnlyERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #5 align 2 !prof !750 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester17matchNamespaceURIERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %7 = select i1 %6, i32 2, i32 0
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ 0, %3 ], [ %7, %5 ]
  ret i32 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester16testElementQNameERKNS_9XalanNodeENS2_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #5 align 2 !prof !1102 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %8, !prof !1103

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester29matchLocalNameAndNamespaceURIERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %7 = select i1 %6, i32 3, i32 0, !prof !1104
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ 0, %3 ], [ %7, %5 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester11testDefaultERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, i32 %2) #11 align 2 !prof !750 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_105XPath10NodeTesterC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0) unnamed_addr #12 align 2 !prof !750 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester11testDefaultERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %2, align 8, !tbaa !1070
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3, i32 1
  store i64 0, ptr %3, align 8, !tbaa !1070
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester12testDefault2ERKNS_12XalanElementE to i64), ptr %4, align 8, !tbaa !1078
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %5, align 8, !tbaa !1078
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_105XPath10NodeTesterC2ERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEPNS0_11eMatchScoreE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4, ptr noundef writeonly %5) unnamed_addr #5 align 2 !prof !750 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester11testDefaultERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %7, align 8, !tbaa !1070
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3, i32 1
  store i64 0, ptr %8, align 8, !tbaa !1070
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester12testDefault2ERKNS_12XalanElementE to i64), ptr %9, align 8, !tbaa !1078
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %10, align 8, !tbaa !1078
  %11 = tail call noundef i32 @_ZN11xalanc_1_105XPath10NodeTester10initializeERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) #15
  %12 = icmp eq ptr %5, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  store i32 %11, ptr %5, align 4, !tbaa !874
  br label %14

14:                                               ; preds = %13, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xalanc_1_105XPath10NodeTester10initializeERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !750 {
  %6 = alloca %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", align 8
  %7 = alloca %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", align 8
  %8 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %2) #15
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1014XalanDOMStringixEj(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 0) #15
  %12 = load i16, ptr %11, align 2, !tbaa !1105
  %13 = icmp eq i16 %12, 42
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call noundef i32 @_ZN11xalanc_1_105XPath10NodeTester10initializeERKNS_14XalanDOMStringES4_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_105XPath13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_105XPath13s_emptyStringE) #15, !range !1107
  br label %103

16:                                               ; preds = %10, %5
  %17 = tail call noundef i32 @_ZN11xalanc_1_107indexOfERKNS_14XalanDOMStringEt(ptr noundef nonnull align 8 dereferenceable(36) %2, i16 noundef zeroext 58) #15
  %18 = icmp eq i32 %17, %8
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %2) #15
  br i1 %20, label %31, label %21

21:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1) #15
  %22 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %23 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %22, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(36) %2) #15
          to label %24 unwind label %29

24:                                               ; preds = %21
  %25 = load ptr, ptr %1, align 8, !tbaa !735
  %26 = getelementptr inbounds ptr, ptr %25, i64 7
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %23, ptr noundef null, ptr noundef %4) #15
          to label %28 unwind label %29

28:                                               ; preds = %24
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  br label %103

29:                                               ; preds = %24, %21
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  br label %101

31:                                               ; preds = %19
  %32 = load ptr, ptr %1, align 8, !tbaa !735
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef nonnull align 8 dereferenceable(36) ptr %34(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) #15
  %36 = tail call noundef i32 @_ZN11xalanc_1_105XPath10NodeTester10initializeERKNS_14XalanDOMStringES4_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_105XPath13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(36) %35) #15, !range !1107
  br label %103

37:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %1) #15
  %38 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  %39 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %38, ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 0, i32 noundef %17) #15
          to label %40 unwind label %49

40:                                               ; preds = %37
  %41 = load ptr, ptr %3, align 8, !tbaa !735
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %38) #15
          to label %45 unwind label %51

45:                                               ; preds = %40
  %46 = icmp eq ptr %44, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %45
  %48 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %38, i32 noundef 27) #15
          to label %80 unwind label %51

49:                                               ; preds = %37
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %99

51:                                               ; preds = %78, %80, %90, %85, %75, %71, %64, %53, %47, %40
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %99

53:                                               ; preds = %45
  %54 = invoke noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %38) #15
          to label %55 unwind label %51

55:                                               ; preds = %53
  br i1 %54, label %56, label %78

56:                                               ; preds = %55
  %57 = add i32 %8, -2
  %58 = icmp eq i32 %17, %57
  %59 = add i32 %17, 1
  br i1 %58, label %60, label %71

60:                                               ; preds = %56
  %61 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1014XalanDOMStringixEj(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef %59) #15
  %62 = load i16, ptr %61, align 2, !tbaa !1105
  %63 = icmp eq i16 %62, 42
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load ptr, ptr %1, align 8, !tbaa !735
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef nonnull align 8 dereferenceable(36) ptr %67(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %44) #15
          to label %69 unwind label %51

69:                                               ; preds = %64
  %70 = call noundef i32 @_ZN11xalanc_1_105XPath10NodeTester10initializeERKNS_14XalanDOMStringES4_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(36) %68, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_105XPath13s_emptyStringE) #15, !range !1107
  br label %97

71:                                               ; preds = %56, %60
  %72 = xor i32 %17, -1
  %73 = add i32 %8, %72
  %74 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %38, ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef %59, i32 noundef %73) #15
          to label %75 unwind label %51

75:                                               ; preds = %71
  %76 = invoke noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %38) #15
          to label %77 unwind label %51

77:                                               ; preds = %75
  br i1 %76, label %85, label %78

78:                                               ; preds = %77, %55
  %79 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %38, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(36) %2) #15
          to label %80 unwind label %51

80:                                               ; preds = %78, %47
  %81 = phi ptr [ %48, %47 ], [ %79, %78 ]
  %82 = load ptr, ptr %1, align 8, !tbaa !735
  %83 = getelementptr inbounds ptr, ptr %82, i64 7
  %84 = load ptr, ptr %83, align 8
  invoke void %84(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %81, ptr noundef null, ptr noundef %4) #15
          to label %97 unwind label %51

85:                                               ; preds = %77
  %86 = load ptr, ptr %1, align 8, !tbaa !735
  %87 = getelementptr inbounds ptr, ptr %86, i64 3
  %88 = load ptr, ptr %87, align 8
  %89 = invoke noundef nonnull align 8 dereferenceable(36) ptr %88(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %44) #15
          to label %90 unwind label %51

90:                                               ; preds = %85
  %91 = load ptr, ptr %1, align 8, !tbaa !735
  %92 = getelementptr inbounds ptr, ptr %91, i64 3
  %93 = load ptr, ptr %92, align 8
  %94 = invoke noundef nonnull align 8 dereferenceable(36) ptr %93(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %38) #15
          to label %95 unwind label %51

95:                                               ; preds = %90
  %96 = call noundef i32 @_ZN11xalanc_1_105XPath10NodeTester10initializeERKNS_14XalanDOMStringES4_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(36) %89, ptr noundef nonnull align 8 dereferenceable(36) %94) #15, !range !1107
  br label %97

97:                                               ; preds = %80, %69, %95
  %98 = phi i32 [ %70, %69 ], [ %96, %95 ], [ 0, %80 ]
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  br label %103

99:                                               ; preds = %51, %49
  %100 = phi { ptr, i32 } [ %52, %51 ], [ %50, %49 ]
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  br label %101

101:                                              ; preds = %99, %29
  %102 = phi { ptr, i32 } [ %30, %29 ], [ %100, %99 ]
  resume { ptr, i32 } %102

103:                                              ; preds = %97, %31, %28, %14
  %104 = phi i32 [ %15, %14 ], [ 0, %28 ], [ %36, %31 ], [ %98, %97 ]
  ret i32 %104
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKNS_14XalanDOMStringES4_PNS0_11eMatchScoreE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef writeonly %3) unnamed_addr #2 align 2 !prof !750 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester11testDefaultERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %5, align 8, !tbaa !1070
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %7 = tail call noundef i32 @_ZN11xalanc_1_105XPath10NodeTester10initializeERKNS_14XalanDOMStringES4_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) #15, !range !1107
  %8 = icmp eq ptr %3, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  store i32 %7, ptr %3, align 4, !tbaa !874
  br label %10

10:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN11xalanc_1_105XPath10NodeTester10initializeERKNS_14XalanDOMStringES4_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #2 align 2 !prof !750 {
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !1082
  %7 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %2) #15
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4, i32 1
  br i1 %7, label %10, label %11

10:                                               ; preds = %5
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester25testElementNamespaceOnly2ERKNS_12XalanElementE to i64), ptr %8, align 8, !tbaa !1078
  store i64 0, ptr %9, align 8, !tbaa !1078
  br label %20

11:                                               ; preds = %5
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester17testElementQName2ERKNS_12XalanElementE to i64), ptr %8, align 8, !tbaa !1078
  store i64 0, ptr %9, align 8, !tbaa !1078
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  store ptr %2, ptr %12, align 8, !tbaa !1077
  br label %20

13:                                               ; preds = %3
  %14 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %2) #15
  %15 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  %16 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4, i32 1
  br i1 %14, label %19, label %17

17:                                               ; preds = %13
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester18testElementNCName2ERKNS_12XalanElementE to i64), ptr %15, align 8, !tbaa !1078
  store i64 0, ptr %16, align 8, !tbaa !1078
  %18 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  store ptr %2, ptr %18, align 8, !tbaa !1077
  br label %20

19:                                               ; preds = %13
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester23testElementTotallyWild2ERKNS_12XalanElementE to i64), ptr %15, align 8, !tbaa !1078
  store i64 0, ptr %16, align 8, !tbaa !1078
  br label %20

20:                                               ; preds = %19, %17, %11, %10
  %21 = phi i32 [ 2, %10 ], [ 3, %11 ], [ 3, %17 ], [ 1, %19 ]
  ret i32 %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1014XalanDOMStringixEj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !1108 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %3 = zext i32 %1 to i64
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_107indexOfERKNS_14XalanDOMStringEt(ptr noundef nonnull align 8 dereferenceable(36) %0, i16 noundef zeroext %1) local_unnamed_addr #5 comdat !prof !1109 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !1110

5:                                                ; preds = %2
  %6 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %7 = tail call noundef i32 @_ZN11xalanc_1_107indexOfEPKtt(ptr noundef %6, i16 noundef zeroext %1) #15
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 !prof !1111 {
  store ptr %1, ptr %0, align 8, !tbaa !1112
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !735
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(16) %1) #15
  store ptr %7, ptr %3, align 8, !tbaa !1114
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !1111 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1114
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !1111 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1114
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !1115

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !1112
  %7 = load ptr, ptr %6, align 8, !tbaa !735
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(36) %3) #15
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #18
  unreachable
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_107indexOfEPKtt(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #2 comdat !prof !1116 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %9, %3 ]
  %5 = load i16, ptr %4, align 2, !tbaa !1105
  %6 = icmp eq i16 %5, %1
  %7 = icmp eq i16 %5, 0
  %8 = or i1 %6, %7
  %9 = getelementptr inbounds i16, ptr %4, i64 1
  br i1 %8, label %10, label %3, !prof !1117, !llvm.loop !1118

10:                                               ; preds = %3
  %11 = ptrtoint ptr %4 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 1
  %15 = trunc i64 %14 to i32
  ret i32 %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !1119 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !837
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester25testElementNamespaceOnly2ERKNS_12XalanElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 align 2 !prof !750 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester17matchNamespaceURIERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %4 = select i1 %3, i32 2, i32 0
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester17testElementQName2ERKNS_12XalanElementE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 align 2 !prof !750 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester29matchLocalNameAndNamespaceURIERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %4 = select i1 %3, i32 3, i32 0
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester18testElementNCName2ERKNS_12XalanElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 align 2 !prof !750 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester14matchLocalNameERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %4 = select i1 %3, i32 3, i32 0
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester23testElementTotallyWild2ERKNS_12XalanElementE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) #11 align 2 !prof !750 {
  ret i32 1
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester21shouldStripSourceNodeERKNS_9XalanTextE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 align 2 !prof !1120 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1080
  %4 = load ptr, ptr %3, align 8, !tbaa !735
  %5 = getelementptr inbounds ptr, ptr %4, i64 34
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1022isNamespaceDeclarationERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat !prof !1094 {
  %2 = tail call noundef zeroext i1 @_ZN11xalanc_1_1011DOMServices22isNamespaceDeclarationERKNS_9XalanAttrE(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester14matchLocalNameERKNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 align 2 !prof !1121 {
  %3 = load ptr, ptr %1, align 8, !tbaa !735
  %4 = getelementptr inbounds ptr, ptr %3, i64 22
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %7 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %6) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14, !prof !1122

9:                                                ; preds = %2
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011DOMServices18getLocalNameOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !1077
  %13 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(36) %12) #15
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i1 [ false, %2 ], [ %13, %9 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1011DOMServices22isNamespaceDeclarationERKNS_9XalanAttrE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !1094 {
  %2 = load ptr, ptr %0, align 8, !tbaa !735
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %6 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE, align 8, !tbaa !753
  %7 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %6) #15
  br i1 %7, label %11, label %8, !prof !1096

8:                                                ; preds = %1
  %9 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !753
  %10 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %9) #15
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i1 [ true, %1 ], [ %10, %8 ]
  ret i1 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #5 comdat !prof !1123 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester29matchLocalNameAndNamespaceURIERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !1124 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011DOMServices18getLocalNameOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !1077
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %5) #15
  br i1 %6, label %7, label %15, !prof !1104

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !735
  %9 = getelementptr inbounds ptr, ptr %8, i64 22
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1082
  %14 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(36) %13) #15
  br label %15

15:                                               ; preds = %7, %2
  %16 = phi i1 [ false, %2 ], [ %14, %7 ]
  ret i1 %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester17matchNamespaceURIERKNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 align 2 !prof !750 {
  %3 = load ptr, ptr %1, align 8, !tbaa !735
  %4 = getelementptr inbounds ptr, ptr %3, i64 22
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1082
  %9 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %8) #15
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester14matchNamespaceERKNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 align 2 !prof !750 {
  %3 = load ptr, ptr %1, align 8, !tbaa !735
  %4 = getelementptr inbounds ptr, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1077
  %9 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %8) #15
  ret i1 %9
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.7() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN11xalanc_1_1018XPathFunctionTableC1Eb(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, i1 noundef zeroext false) #15
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1018XPathFunctionTableD1Ev, ptr nonnull @_ZN11xalanc_1_105XPath11s_functionsE, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018XPathFunctionTableC1Eb(ptr noundef nonnull align 8 dereferenceable(304), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1018XPathFunctionTableD1Ev(ptr noundef nonnull align 8 dereferenceable(304)) unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_105XPath10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 align 2 !prof !1125 {
  tail call void @_ZN11xalanc_1_1018XPathFunctionTable16setMemoryManagerERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  tail call void @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XPathFunctionTable16setMemoryManagerERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !1125 {
  store ptr %1, ptr %0, align 8, !tbaa !1126
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_105XPath9terminateEv() local_unnamed_addr #5 align 2 !prof !1125 {
  tail call void @_ZN11xalanc_1_1018XPathFunctionTable12DestroyTableEv(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018XPathFunctionTable12DestroyTableEv(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XPath.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.7()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!715}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714}
!36 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!47 = !{ptr @_ZN11xalanc_1_105XPathC2ERN11xercesc_2_713MemoryManagerEPKNS1_7LocatorE, ptr @_ZN11xalanc_1_1015XPathExpressionC1ERN11xercesc_2_713MemoryManagerE, i64 164}
!48 = !{ptr @_ZN11xalanc_1_105XPathD2Ev, ptr @_ZN11xalanc_1_1015XPathExpressionD1Ev, i64 164}
!49 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, ptr @__clang_call_terminate, i64 64}
!50 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi, i64 268602606}
!51 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv, i64 44703977}
!52 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath2OrEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!53 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath3AndEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!54 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath9notequalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!55 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 19396}
!56 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath3lteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!57 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath2ltEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!58 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath3gteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!59 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath2gtEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!60 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!61 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 22323638}
!62 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!63 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!64 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!65 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath3negEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!66 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!67 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath7literalEPKiRNS_21XPathExecutionContextE, i64 103036}
!68 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE, i64 67091828}
!69 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!70 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath9numberlitEPKiRNS_21XPathExecutionContextE, i64 89504412}
!71 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!72 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 66991823}
!73 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 207524}
!74 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath16functionPositionEPNS_9XalanNodeERNS_21XPathExecutionContextE, i64 1}
!75 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath12functionLastERNS_21XPathExecutionContextE, i64 1}
!76 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!77 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11functionNotEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!78 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath15functionBooleanEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!79 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeE, i64 1}
!80 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!81 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeE, i64 1}
!82 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!83 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath13functionFloorEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!84 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath15functionCeilingEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!85 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath13functionRoundEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!86 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeERNS_21XPathExecutionContextE, i64 1}
!87 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!88 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeE, i64 1}
!89 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 22360913}
!90 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!91 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi, i64 1}
!92 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, i64 1}
!93 = !{ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv, ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv, i64 68379708}
!94 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev, ptr @__clang_call_terminate, i64 65}
!95 = !{ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv, i64 68609120}
!96 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 68609147}
!97 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi, i64 22371791}
!98 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath2OrEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!99 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath3AndEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!100 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath9notequalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!101 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 22360875}
!102 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath3lteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!103 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath2ltEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!104 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath3gteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!105 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath2gtEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!106 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!107 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZN11xalanc_1_107XObject7booleanEd, i64 17}
!108 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!109 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!110 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!111 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!112 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath3negEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!113 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, i64 1}
!114 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath7literalEPKiRb, i64 1}
!115 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE, i64 1}
!116 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_1010XObjectPtrptEv, i64 3}
!117 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 3}
!118 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, i64 1}
!119 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath9numberlitEPKiRb, i64 1}
!120 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!121 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!122 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, i64 10876}
!123 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath16functionPositionEPNS_9XalanNodeERNS_21XPathExecutionContextE, i64 1}
!124 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath12functionLastERNS_21XPathExecutionContextE, i64 1}
!125 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!126 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath11functionNotEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!127 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath15functionBooleanEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!128 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeE, i64 1}
!129 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZN11xalanc_1_107XObject7booleanERKNS_14XalanDOMStringE, i64 4}
!130 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!131 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeE, i64 1}
!132 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!133 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath13functionFloorEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!134 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath15functionCeilingEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!135 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath13functionRoundEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!136 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeERNS_21XPathExecutionContextE, i64 1}
!137 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!138 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeE, i64 1}
!139 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!140 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!141 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi, i64 1}
!142 = !{ptr @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERd, ptr @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE, i64 6000}
!143 = !{ptr @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERd, ptr @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopC2ERS0_PNS_9XalanNodeE, i64 6000}
!144 = !{ptr @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv, i64 6000}
!145 = !{ptr @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, i64 6000}
!146 = !{ptr @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERd, ptr @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopD2Ev, i64 6000}
!147 = !{ptr @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERd, ptr @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev, i64 6000}
!148 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi, i64 23253645}
!149 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath2OrEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!150 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZN11xalanc_1_107XObject6numberEb, i64 12}
!151 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath3AndEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!152 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath9notequalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!153 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!154 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath3lteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!155 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath2ltEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!156 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath3gteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!157 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath2gtEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!158 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 93160}
!159 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 85568}
!160 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 93160}
!161 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 93160}
!162 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 93160}
!163 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath3negEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!164 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, i64 1}
!165 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath7literalEPKiRd, i64 1}
!166 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE, i64 1}
!167 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_1010XObjectPtrptEv, i64 3}
!168 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 3}
!169 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, i64 186319}
!170 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath9numberlitEPKi, i64 1}
!171 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!172 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!173 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, i64 6001}
!174 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath16functionPositionEPNS_9XalanNodeERNS_21XPathExecutionContextE, i64 186319}
!175 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath12functionLastERNS_21XPathExecutionContextE, i64 1}
!176 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 4}
!177 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath11functionNotEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!178 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath15functionBooleanEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!179 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeE, i64 1}
!180 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv, i64 4}
!181 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZN11xalanc_1_107XObject6numberERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 4}
!182 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!183 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeE, i64 1}
!184 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!185 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath13functionFloorEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 93160}
!186 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath15functionCeilingEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!187 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath13functionRoundEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!188 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeERNS_21XPathExecutionContextE, i64 1}
!189 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!190 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeE, i64 1}
!191 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 22323602}
!192 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 4}
!193 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi, i64 1}
!194 = !{ptr @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE, i64 144968}
!195 = !{ptr @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopC2ERS0_PNS_9XalanNodeE, i64 144968}
!196 = !{ptr @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv, i64 144968}
!197 = !{ptr @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, i64 144968}
!198 = !{ptr @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopD2Ev, i64 144968}
!199 = !{ptr @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev, i64 144968}
!200 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi, i64 144968}
!201 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath2OrEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!202 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_107XObject6stringEdRNS_14XalanDOMStringE, i64 29}
!203 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath3AndEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!204 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath9notequalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!205 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!206 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath3lteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!207 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath2ltEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!208 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath3gteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!209 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath2gtEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!210 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!211 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!212 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!213 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!214 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!215 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath3negEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!216 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, i64 1}
!217 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath7literalEPKiRNS_14XalanDOMStringE, i64 1}
!218 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE, i64 1}
!219 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1010XObjectPtrptEv, i64 79898}
!220 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 79898}
!221 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, i64 1}
!222 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath9numberlitEPKiRNS_14XalanDOMStringE, i64 1}
!223 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!224 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 79896}
!225 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, i64 65032}
!226 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath16functionPositionEPNS_9XalanNodeERNS_21XPathExecutionContextE, i64 1}
!227 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath12functionLastERNS_21XPathExecutionContextE, i64 1}
!228 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!229 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath11functionNotEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!230 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath15functionBooleanEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!231 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeE, i64 1}
!232 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_, i64 4}
!233 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!234 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeE, i64 1}
!235 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!236 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath13functionFloorEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!237 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath15functionCeilingEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!238 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath13functionRoundEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!239 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeERNS_21XPathExecutionContextE, i64 1}
!240 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!241 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeE, i64 1}
!242 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!243 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!244 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi, i64 1}
!245 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi, i64 45307847}
!246 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath2OrEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!247 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE, i64 12}
!248 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath3AndEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!249 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath9notequalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!250 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!251 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath3lteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!252 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath2ltEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!253 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath3gteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!254 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath2gtEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!255 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, i64 1}
!256 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, i64 1}
!257 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, i64 1}
!258 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, i64 4}
!259 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, i64 1}
!260 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath3negEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, i64 1}
!261 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, i64 1}
!262 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath7literalEPKiRNS_17FormatterListenerEMS3_FvPKtjE, i64 1}
!263 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE, i64 44759067}
!264 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_1010XObjectPtrptEv, i64 44834549}
!265 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 44834549}
!266 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, i64 1}
!267 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath9numberlitEPKiRNS_17FormatterListenerEMS3_FvPKtjE, i64 1}
!268 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!269 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 75481}
!270 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, i64 395352}
!271 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath16functionPositionEPNS_9XalanNodeERNS_21XPathExecutionContextE, i64 1}
!272 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE, i64 77911}
!273 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath12functionLastERNS_21XPathExecutionContextE, i64 1}
!274 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 11}
!275 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath11functionNotEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!276 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath15functionBooleanEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!277 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeE, i64 7}
!278 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZN11xalanc_1_1018stringToCharactersERKNS_14XalanDOMStringERNS_17FormatterListenerEMS3_FvPKtjE, i64 10}
!279 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!280 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeE, i64 1}
!281 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!282 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath13functionFloorEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!283 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath15functionCeilingEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!284 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath13functionRoundEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!285 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeERNS_21XPathExecutionContextE, i64 71883}
!286 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!287 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeE, i64 1}
!288 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!289 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 6009}
!290 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi, i64 1}
!291 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, i64 345597}
!292 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi, i64 345597}
!293 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, i64 1}
!294 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_, i64 4}
!295 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 4}
!296 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath15notNodeSetErrorEPNS_9XalanNodeERNS_21XPathExecutionContextE, i64 40}
!297 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, i64 1}
!298 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE, i64 1}
!299 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, i64 1}
!300 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!301 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!302 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, i64 345551}
!303 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi, i64 1}
!304 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_1010XObjectPtr4nullEv, i64 345597}
!305 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1010XObjectPtrptEv, i64 1}
!306 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_107XObject7getTypeEv, i64 1}
!307 = !{ptr @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 44760622}
!308 = !{ptr @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi, i64 22380311}
!309 = !{ptr @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1010XObjectPtrptEv, i64 22380311}
!310 = !{ptr @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1010XObjectPtr3getEv, i64 22380290}
!311 = !{ptr @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_107XObject6equalsERKS0_RNS_21XPathExecutionContextE, i64 22380290}
!312 = !{ptr @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 44760600}
!313 = !{ptr @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 186318}
!314 = !{ptr @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi, i64 93159}
!315 = !{ptr @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1013DoubleSupport3addEdd, i64 93159}
!316 = !{ptr @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 44818416}
!317 = !{ptr @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi, i64 22409208}
!318 = !{ptr @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1013DoubleSupport8subtractEdd, i64 22409208}
!319 = !{ptr @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 186318}
!320 = !{ptr @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi, i64 93159}
!321 = !{ptr @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1013DoubleSupport8multiplyEdd, i64 93159}
!322 = !{ptr @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 186324}
!323 = !{ptr @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi, i64 93162}
!324 = !{ptr @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1013DoubleSupport6divideEdd, i64 93162}
!325 = !{ptr @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 186318}
!326 = !{ptr @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi, i64 93159}
!327 = !{ptr @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1013DoubleSupport7modulusEdd, i64 93159}
!328 = !{ptr @_ZNK11xalanc_1_105XPath7literalEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi, i64 103035}
!329 = !{ptr @_ZNK11xalanc_1_105XPath7literalEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi, i64 103035}
!330 = !{ptr @_ZNK11xalanc_1_105XPath7literalEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv, i64 103035}
!331 = !{ptr @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi, i64 223701890}
!332 = !{ptr @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi, i64 223701890}
!333 = !{ptr @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_, i64 111850945}
!334 = !{ptr @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev, i64 111850945}
!335 = !{ptr @_ZNK11xalanc_1_105XPath9numberlitEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi, i64 89504425}
!336 = !{ptr @_ZNK11xalanc_1_105XPath9numberlitEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi, i64 89504425}
!337 = !{ptr @_ZNK11xalanc_1_105XPath9numberlitEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv, i64 89504425}
!338 = !{ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi, i64 201441693}
!339 = !{ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1018XPathFunctionTableixEi, i64 67147188}
!340 = !{ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 179021520}
!341 = !{ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 290895606}
!342 = !{ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi, i64 111874399}
!343 = !{ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, i64 111874298}
!344 = !{ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv, i64 1}
!345 = !{ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!346 = !{ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE7reserveEm, i64 1}
!347 = !{ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_, i64 16}
!348 = !{ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath8functionEPNS_9XalanNodeEiRKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS4_EEEERNS_21XPathExecutionContextE, i64 1}
!349 = !{ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 1}
!350 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_, i64 207523}
!351 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv, i64 207523}
!352 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, i64 207523}
!353 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv, i64 207523}
!354 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev, i64 207523}
!355 = !{ptr @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_, i64 13}
!356 = !{ptr @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv, i64 13}
!357 = !{ptr @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, i64 13}
!358 = !{ptr @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1010XObjectPtr4nullEv, i64 13}
!359 = !{ptr @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1010XObjectPtrptEv, i64 1}
!360 = !{ptr @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv, i64 12}
!361 = !{ptr @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 13}
!362 = !{ptr @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev, i64 13}
!363 = !{ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1011DOMServices13getNameOfNodeERKNS_9XalanNodeE, i64 6}
!364 = !{ptr @_ZNK11xalanc_1_105XPath13functionFloorEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 93159}
!365 = !{ptr @_ZNK11xalanc_1_105XPath13functionFloorEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1013DoubleSupport5floorEd, i64 93159}
!366 = !{ptr @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE, i64 71882}
!367 = !{ptr @_ZNK11xalanc_1_105XPath14functionNumberEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, i64 93159}
!368 = !{ptr @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounterC1Ev, i64 44684557}
!369 = !{ptr @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, i64 44684557}
!370 = !{ptr @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1028FormatterStringLengthCounter8getCountEv, i64 44684514}
!371 = !{ptr @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev, i64 44684557}
!372 = !{ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_, i64 6011}
!373 = !{ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv, i64 12021}
!374 = !{ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, i64 6011}
!375 = !{ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1010XObjectPtr4nullEv, i64 6011}
!376 = !{ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1010XObjectPtrptEv, i64 1}
!377 = !{ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_, i64 5407}
!378 = !{ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv, i64 5407}
!379 = !{ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, i64 5407}
!380 = !{ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE, i64 64733}
!381 = !{ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv, i64 64733}
!382 = !{ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 64733}
!383 = !{ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1013DoubleSupport3addEdd, i64 64733}
!384 = !{ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE, i64 64733}
!385 = !{ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 6011}
!386 = !{ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev, i64 6011}
!387 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 292432932}
!388 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 1009440147}
!389 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @__clang_call_terminate, i64 963}
!390 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_, i64 10875}
!391 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv, i64 21750}
!392 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, i64 10875}
!393 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZN11xalanc_1_107XObject7booleanERKNS_15NodeRefListBaseE, i64 10875}
!394 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev, i64 10875}
!395 = !{ptr @_ZN11xalanc_1_1013DoubleSupport5isNaNEd, ptr @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd, i64 404042974}
!396 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527000}
!397 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527000}
!398 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337976}
!399 = !{ptr @_ZNK11xalanc_1_105XPath5groupEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, i64 186318}
!400 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_, i64 6000}
!401 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv, i64 12000}
!402 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, i64 6000}
!403 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_15NodeRefListBaseE, i64 6000}
!404 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev, i64 6000}
!405 = !{ptr @_ZN11xalanc_1_107XObject6numberERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 77882}
!406 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_, i64 65050}
!407 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv, i64 130100}
!408 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, i64 65050}
!409 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_107XObject6stringERKNS_15NodeRefListBaseERNS_14XalanDOMStringE, i64 65050}
!410 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev, i64 65050}
!411 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 45461869}
!412 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 45461869}
!413 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 45461869}
!414 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!415 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!416 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!417 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!418 = !{ptr @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 3}
!419 = !{ptr @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE, i64 3}
!420 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_, i64 395351}
!421 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv, i64 395351}
!422 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, i64 395351}
!423 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv, i64 395351}
!424 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZN11xalanc_1_107XObject6stringERKNS_15NodeRefListBaseERNS_17FormatterListenerEMS4_FvPKtjE, i64 395351}
!425 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev, i64 395351}
!426 = !{ptr @_ZN11xalanc_1_107XObject6stringEdRNS_17FormatterListenerEMS1_FvPKtjE, ptr @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE, i64 77903}
!427 = !{ptr @_ZN11xalanc_1_1018stringToCharactersERKNS_14XalanDOMStringERNS_17FormatterListenerEMS3_FvPKtjE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 6}
!428 = !{ptr @_ZN11xalanc_1_1018stringToCharactersERKNS_14XalanDOMStringERNS_17FormatterListenerEMS3_FvPKtjE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 5}
!429 = !{ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 44800926}
!430 = !{ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 44800926}
!431 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, i64 1030396}
!432 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath13getExpressionEv, i64 1493391}
!433 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi, i64 3982372}
!434 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_, i64 1956380}
!435 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv, i64 5777418}
!436 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath11findNodeSetERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, i64 4}
!437 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath8findRootERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, i64 1}
!438 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath10findParentERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, i64 1}
!439 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath8findSelfERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, i64 137388}
!440 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath13findAncestorsERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, i64 1}
!441 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath19findAncestorsOrSelfERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, i64 1}
!442 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath14findAttributesERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, i64 217912}
!443 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath12findChildrenERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, i64 1138075}
!444 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath15findDescendantsERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, i64 2}
!445 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath13findFollowingERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, i64 1}
!446 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath21findFollowingSiblingsERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, i64 1}
!447 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath14findPreceedingERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, i64 1}
!448 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath22findPreceedingSiblingsERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, i64 1}
!449 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath13findNamespaceERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, i64 1}
!450 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath22findNodesOnUnknownAxisERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, i64 1}
!451 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopC2ERS0_RKNS_15NodeRefListBaseE, i64 1493390}
!452 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE, i64 995592}
!453 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv, i64 3382858}
!454 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_1011NodeRefList5emptyEv, i64 2267768}
!455 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, i64 462989}
!456 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKS0_RNS_21XPathExecutionContextE, i64 97466}
!457 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv, i64 121900}
!458 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev, i64 1956380}
!459 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList4swapERS0_, i64 1234591}
!460 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList5clearEv, i64 177189}
!461 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_1018MutableNodeRefList23getReverseDocumentOrderEv, i64 963493}
!462 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList7reverseEv, i64 1}
!463 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopD2Ev, i64 1493388}
!464 = !{ptr @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEi, i64 229388}
!465 = !{ptr @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_, i64 1}
!466 = !{ptr @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv, i64 1}
!467 = !{ptr @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE, i64 1}
!468 = !{ptr @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, i64 1}
!469 = !{ptr @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath15doGetMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextERNS0_11eMatchScoreE, i64 229387}
!470 = !{ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEi, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm, i64 229388}
!471 = !{ptr @_ZNK11xalanc_1_105XPath15doGetMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextERNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv, i64 229388}
!472 = !{ptr @_ZNK11xalanc_1_105XPath15doGetMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextERNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi, i64 7339424}
!473 = !{ptr @_ZNK11xalanc_1_105XPath15doGetMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextERNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi, i64 7339392}
!474 = !{ptr @_ZNK11xalanc_1_105XPath15doGetMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextERNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_105XPath19locationPathPatternERNS_21XPathExecutionContextERNS_9XalanNodeEPKi, i64 7339392}
!475 = !{ptr @_ZNK11xalanc_1_105XPath19locationPathPatternERNS_21XPathExecutionContextERNS_9XalanNodeEPKi, ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, i64 229388}
!476 = !{ptr @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextE, i64 229388}
!477 = !{ptr @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverES5_, i64 229387}
!478 = !{ptr @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev, i64 229387}
!479 = !{ptr @_ZNK11xalanc_1_105XPath13getTargetDataERNS_11XalanVectorINS0_10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv, i64 24}
!480 = !{ptr @_ZNK11xalanc_1_105XPath13getTargetDataERNS_11XalanVectorINS0_10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, i64 24}
!481 = !{ptr @_ZNK11xalanc_1_105XPath13getTargetDataERNS_11XalanVectorINS0_10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi, i64 185}
!482 = !{ptr @_ZNK11xalanc_1_105XPath13getTargetDataERNS_11XalanVectorINS0_10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi, i64 59}
!483 = !{ptr @_ZNK11xalanc_1_105XPath13getTargetDataERNS_11XalanVectorINS0_10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi, i64 1}
!484 = !{ptr @_ZNK11xalanc_1_105XPath13getTargetDataERNS_11XalanVectorINS0_10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZN11xalanc_1_1023getStringFromTokenQueueERKNS_15XPathExpressionEPKi, i64 32}
!485 = !{ptr @_ZNK11xalanc_1_105XPath13getTargetDataERNS_11XalanVectorINS0_10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 15}
!486 = !{ptr @_ZNK11xalanc_1_105XPath13getTargetDataERNS_11XalanVectorINS0_10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZN11xalanc_1_105XPath10TargetDataC2EPKtNS0_11eMatchScoreENS1_11eTargetTypeE, i64 23}
!487 = !{ptr @_ZNK11xalanc_1_105XPath13getTargetDataERNS_11XalanVectorINS0_10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, i64 23}
!488 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 48}
!489 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 23}
!490 = !{ptr @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi, ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi, i64 1759322}
!491 = !{ptr @_ZN11xalanc_1_1023getStringFromTokenQueueERKNS_15XPathExpressionEPKi, ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi, i64 3017297}
!492 = !{ptr @_ZN11xalanc_1_1023getStringFromTokenQueueERKNS_15XPathExpressionEPKi, ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi, i64 2730239}
!493 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, i64 1899}
!494 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 48}
!495 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 24}
!496 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 48}
!497 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 24}
!498 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 24}
!499 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 24}
!500 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm, i64 1}
!501 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!502 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 1}
!503 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 1}
!504 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 1}
!505 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 1}
!506 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 1}
!507 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!508 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 22}
!509 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 24}
!510 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 48}
!511 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 48}
!512 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 24}
!513 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 24}
!514 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, i64 24}
!515 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_, i64 24}
!516 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 1}
!517 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 24}
!518 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 24}
!519 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 24}
!520 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 24}
!521 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 24}
!522 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 48}
!523 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 23}
!524 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_5XPath10TargetDataEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 23}
!525 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!526 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 1}
!527 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 1}
!528 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!529 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 24}
!530 = !{ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi, ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEixEm, i64 316041560}
!531 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 1899}
!532 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, i64 1899}
!533 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 807446}
!534 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 403723}
!535 = !{ptr @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi, i64 68252379}
!536 = !{ptr @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1015XPathExpression16getNumberLiteralEi, i64 22688685}
!537 = !{ptr @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, i64 22875009}
!538 = !{ptr @_ZNK11xalanc_1_1015XPathExpression16getNumberLiteralEi, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEixEm, i64 22688685}
!539 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList7releaseEv, i64 2647211}
!540 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev, ptr @__clang_call_terminate, i64 3}
!541 = !{ptr @_ZN11xalanc_1_107XObject6stringERKNS_15NodeRefListBaseERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_107XObject6stringERKNS_9XalanNodeERNS_14XalanDOMStringE, i64 65049}
!542 = !{ptr @_ZN11xalanc_1_107XObject6stringERKNS_9XalanNodeERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE, i64 136932}
!543 = !{ptr @_ZN11xalanc_1_107XObject6stringERKNS_15NodeRefListBaseERNS_17FormatterListenerEMS4_FvPKtjE, ptr @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_17FormatterListenerEMS4_FvPKtjE, i64 354005}
!544 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm, i64 1}
!545 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 6}
!546 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 679146}
!547 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, i64 339573}
!548 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 12}
!549 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv, i64 6}
!550 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv, i64 6}
!551 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyEPS1_S5_, i64 6}
!552 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10deallocateEPS1_, i64 6}
!553 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 679158}
!554 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv, i64 339572}
!555 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_10XObjectPtrEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE, i64 339572}
!556 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, i64 7}
!557 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, i64 7}
!558 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_, i64 7}
!559 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 7}
!560 = !{ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_10XObjectPtrEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, i64 339592}
!561 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE9local_maxEmm, i64 5}
!562 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 5}
!563 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv, i64 5}
!564 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv, i64 5}
!565 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv, i64 5}
!566 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_, i64 4}
!567 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_, i64 4}
!568 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 4}
!569 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm, i64 1}
!570 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 6}
!571 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 22}
!572 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 717007216}
!573 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 9}
!574 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE14local_distanceEPKS1_S6_, i64 5}
!575 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv, i64 4}
!576 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv, i64 4}
!577 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE14ensureCapacityEm, i64 4}
!578 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_10XObjectPtrEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE, i64 12}
!579 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE8capacityEv, i64 1}
!580 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, i64 9}
!581 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 11}
!582 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 5}
!583 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 5}
!584 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv, i64 5}
!585 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE14local_distanceEPKS1_S6_, ptr @_ZSt8distanceIPKN11xalanc_1_1010XObjectPtrEENSt15iterator_traitsIT_E15difference_typeES5_S5_, i64 5}
!586 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 5}
!587 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 11}
!588 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv, i64 11}
!589 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE8capacityEv, i64 5}
!590 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, i64 1}
!591 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv, i64 5}
!592 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 5}
!593 = !{ptr @_ZSt8distanceIPKN11xalanc_1_1010XObjectPtrEENSt15iterator_traitsIT_E15difference_typeES5_S5_, ptr @_ZSt19__iterator_categoryIPKN11xalanc_1_1010XObjectPtrEENSt15iterator_traitsIT_E17iterator_categoryERKS5_, i64 5}
!594 = !{ptr @_ZSt8distanceIPKN11xalanc_1_1010XObjectPtrEENSt15iterator_traitsIT_E15difference_typeES5_S5_, ptr @_ZSt10__distanceIPKN11xalanc_1_1010XObjectPtrEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag, i64 5}
!595 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyEPS1_S5_, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_, i64 17}
!596 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 339592}
!597 = !{ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv, ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv, i64 3851627}
!598 = !{ptr @_ZN11xalanc_1_1011DOMServices18getLocalNameOfNodeERKNS_9XalanNodeE, ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, i64 6340729}
!599 = !{ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 66708615}
!600 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 555646850}
!601 = !{ptr @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, i64 48076702}
!602 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 96538440}
!603 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 48269220}
!604 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 48269220}
!605 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, i64 48269220}
!606 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 241572884}
!607 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 28158502}
!608 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, i64 28158502}
!609 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 28158502}
!610 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm, i64 28158502}
!611 = !{ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, ptr @_ZSt12__miter_baseIPtET_S1_, i64 56317002}
!612 = !{ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!613 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, i64 1279868488}
!614 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 185895030}
!615 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 84475503}
!616 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!617 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 28158501}
!618 = !{ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!619 = !{ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 28158501}
!620 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 2689195954}
!621 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 1344597977}
!622 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 185895030}
!623 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 185895030}
!624 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_105XPath13getExpressionEv, i64 265931}
!625 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi, i64 7612803}
!626 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi, i64 11847023}
!627 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, i64 36544}
!628 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE, i64 36561}
!629 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv, i64 1}
!630 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_1015XPathExpression24getOpCodeLengthFromOpMapEPKiRN11xercesc_2_713MemoryManagerE, i64 1}
!631 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1}
!632 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_1010XObjectPtrptEv, i64 5553544}
!633 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 3702363}
!634 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi, i64 265927}
!635 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE, i64 265928}
!636 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii, i64 265923}
!637 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_, i64 2}
!638 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv, i64 2}
!639 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE, i64 1}
!640 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_, i64 1}
!641 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_105XPath10getLocatorEv, i64 1}
!642 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, i64 2}
!643 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_105XPath26handleFoundIndexPositionalERNS_21XPathExecutionContextEPNS_9XalanNodeEPKi, i64 1851181}
!644 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_105XPath16handleFoundIndexERNS_21XPathExecutionContextEPNS_9XalanNodeEPKi, i64 3702362}
!645 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_105XPath9predicateEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 3702362}
!646 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_107XObject7getTypeEv, i64 3702362}
!647 = !{ptr @_ZNK11xalanc_1_105XPath8findSelfERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath13getExpressionEv, i64 137389}
!648 = !{ptr @_ZNK11xalanc_1_105XPath8findSelfERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi, i64 137389}
!649 = !{ptr @_ZNK11xalanc_1_105XPath8findSelfERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE, i64 137388}
!650 = !{ptr @_ZNK11xalanc_1_105XPath8findSelfERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii, i64 137388}
!651 = !{ptr @_ZNK11xalanc_1_105XPath8findSelfERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE, i64 137388}
!652 = !{ptr @_ZNK11xalanc_1_105XPath8findSelfERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv, i64 137389}
!653 = !{ptr @_ZNK11xalanc_1_105XPath14findAttributesERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath13getExpressionEv, i64 217913}
!654 = !{ptr @_ZNK11xalanc_1_105XPath14findAttributesERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi, i64 217913}
!655 = !{ptr @_ZNK11xalanc_1_105XPath14findAttributesERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii, i64 217910}
!656 = !{ptr @_ZNK11xalanc_1_105XPath14findAttributesERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE, i64 228785}
!657 = !{ptr @_ZNK11xalanc_1_105XPath14findAttributesERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE, i64 217909}
!658 = !{ptr @_ZNK11xalanc_1_105XPath14findAttributesERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv, i64 217913}
!659 = !{ptr @_ZNK11xalanc_1_105XPath12findChildrenERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath13getExpressionEv, i64 1138089}
!660 = !{ptr @_ZNK11xalanc_1_105XPath12findChildrenERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_1015XPathExpression23getOpCodeArgumentLengthEPKi, i64 1138089}
!661 = !{ptr @_ZNK11xalanc_1_105XPath12findChildrenERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii, i64 1138088}
!662 = !{ptr @_ZNK11xalanc_1_105XPath12findChildrenERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath10NodeTesterclERKNS_9XalanNodeENS2_8NodeTypeE, i64 13067902}
!663 = !{ptr @_ZNK11xalanc_1_105XPath12findChildrenERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE, i64 1361368}
!664 = !{ptr @_ZNK11xalanc_1_105XPath12findChildrenERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv, i64 1138089}
!665 = !{ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath13getExpressionEv, i64 38250}
!666 = !{ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi, i64 3631477}
!667 = !{ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_1015XPathExpression16getNumberLiteralEi, i64 63}
!668 = !{ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList5clearEv, i64 55}
!669 = !{ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE, i64 8}
!670 = !{ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv, i64 8}
!671 = !{ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList10clearNullsEv, i64 1221746}
!672 = !{ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath9predicateEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 1221748}
!673 = !{ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_1010XObjectPtrptEv, i64 2443519}
!674 = !{ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_107XObject7getTypeEv, i64 1221748}
!675 = !{ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList7setNodeEjPNS_9XalanNodeE, i64 1221684}
!676 = !{ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 1221748}
!677 = !{ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEPKi, i64 2409603}
!678 = !{ptr @_ZNK11xalanc_1_1011NodeRefList5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv, i64 2267788}
!679 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList4swapERS0_, ptr @_ZN11xalanc_1_1011NodeRefList4swapERS0_, i64 1234600}
!680 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopD2Ev, ptr @__clang_call_terminate, i64 1}
!681 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2384650}
!682 = !{ptr @_ZN11xalanc_1_1011NodeRefList4swapERS0_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 1234600}
!683 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2679832}
!684 = !{ptr @_ZNK11xalanc_1_105XPath9predicateEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 19395}
!685 = !{ptr @_ZN11xalanc_1_1010startsWithERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, i64 700810}
!686 = !{ptr @_ZN11xalanc_1_1010startsWithERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, i64 700810}
!687 = !{ptr @_ZN11xalanc_1_1010startsWithERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_1010startsWithEPKtjS1_j, i64 350405}
!688 = !{ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 12093723}
!689 = !{ptr @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii, ptr @_ZNK11xalanc_1_105XPath13getExpressionEv, i64 1759321}
!690 = !{ptr @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii, ptr @_ZNK11xalanc_1_1015XPathExpression17getOpCodeMapValueEPKi, i64 2046376}
!691 = !{ptr @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii, ptr @_ZN11xalanc_1_1023getStringFromTokenQueueERKNS_15XPathExpressionEPKi, i64 3017240}
!692 = !{ptr @_ZNK11xalanc_1_105XPath10NodeTester8testNodeERKNS_9XalanNodeENS2_8NodeTypeE, ptr @_ZNK11xalanc_1_105XPath10NodeTester21shouldStripSourceNodeERKNS_9XalanTextE, i64 167721}
!693 = !{ptr @_ZNK11xalanc_1_105XPath10NodeTester19testAttributeNCNameERKNS_9XalanNodeENS2_8NodeTypeE, ptr @_ZN11xalanc_1_1022isNamespaceDeclarationERKNS_9XalanNodeE, i64 235252}
!694 = !{ptr @_ZNK11xalanc_1_105XPath10NodeTester19testAttributeNCNameERKNS_9XalanNodeENS2_8NodeTypeE, ptr @_ZNK11xalanc_1_105XPath10NodeTester14matchLocalNameERKNS_9XalanNodeE, i64 235251}
!695 = !{ptr @_ZNK11xalanc_1_105XPath10NodeTester17testElementNCNameERKNS_9XalanNodeENS2_8NodeTypeE, ptr @_ZNK11xalanc_1_105XPath10NodeTester14matchLocalNameERKNS_9XalanNodeE, i64 257520}
!696 = !{ptr @_ZNK11xalanc_1_105XPath10NodeTester16testElementQNameERKNS_9XalanNodeENS2_8NodeTypeE, ptr @_ZNK11xalanc_1_105XPath10NodeTester29matchLocalNameAndNamespaceURIERKNS_9XalanNodeE, i64 5876089}
!697 = !{ptr @_ZNK11xalanc_1_1014XalanDOMStringixEj, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1705853}
!698 = !{ptr @_ZNK11xalanc_1_1014XalanDOMStringixEj, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 1705853}
!699 = !{ptr @_ZN11xalanc_1_107indexOfERKNS_14XalanDOMStringEt, ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, i64 40512}
!700 = !{ptr @_ZN11xalanc_1_107indexOfERKNS_14XalanDOMStringEt, ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, i64 40510}
!701 = !{ptr @_ZN11xalanc_1_107indexOfERKNS_14XalanDOMStringEt, ptr @_ZN11xalanc_1_107indexOfEPKtt, i64 40510}
!702 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5emptyEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 6299974}
!703 = !{ptr @_ZN11xalanc_1_1022isNamespaceDeclarationERKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1011DOMServices22isNamespaceDeclarationERKNS_9XalanAttrE, i64 235253}
!704 = !{ptr @_ZNK11xalanc_1_105XPath10NodeTester14matchLocalNameERKNS_9XalanNodeE, ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, i64 492773}
!705 = !{ptr @_ZNK11xalanc_1_105XPath10NodeTester14matchLocalNameERKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1011DOMServices18getLocalNameOfNodeERKNS_9XalanNodeE, i64 235253}
!706 = !{ptr @_ZNK11xalanc_1_105XPath10NodeTester14matchLocalNameERKNS_9XalanNodeE, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_, i64 235253}
!707 = !{ptr @_ZN11xalanc_1_1011DOMServices22isNamespaceDeclarationERKNS_9XalanAttrE, ptr @_ZN11xalanc_1_1010startsWithERKNS_14XalanDOMStringES2_, i64 235253}
!708 = !{ptr @_ZN11xalanc_1_1011DOMServices22isNamespaceDeclarationERKNS_9XalanAttrE, ptr @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_, i64 235252}
!709 = !{ptr @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_, i64 4704705}
!710 = !{ptr @_ZNK11xalanc_1_105XPath10NodeTester29matchLocalNameAndNamespaceURIERKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1011DOMServices18getLocalNameOfNodeERKNS_9XalanNodeE, i64 5876089}
!711 = !{ptr @_ZNK11xalanc_1_105XPath10NodeTester29matchLocalNameAndNamespaceURIERKNS_9XalanNodeE, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_, i64 7238426}
!712 = !{ptr @_ZN11xalanc_1_105XPath10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XPathFunctionTable16setMemoryManagerERN11xercesc_2_713MemoryManagerE, i64 1}
!713 = !{ptr @_ZN11xalanc_1_105XPath10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, i64 1}
!714 = !{ptr @_ZN11xalanc_1_105XPath9terminateEv, ptr @_ZN11xalanc_1_1018XPathFunctionTable12DestroyTableEv, i64 1}
!715 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!716 = !{!"function_entry_count", i64 43398227}
!717 = !{!"function_entry_count", i64 128698679}
!718 = !{!719, !723, i64 16}
!719 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !720, i64 0, !723, i64 8, !723, i64 16, !720, i64 24}
!720 = !{!"any pointer", !721, i64 0}
!721 = !{!"omnipotent char", !722, i64 0}
!722 = !{!"Simple C++ TBAA"}
!723 = !{!"long", !721, i64 0}
!724 = !{!"branch_weights", i32 43398290, i32 85300391}
!725 = !{!719, !720, i64 24}
!726 = !{!"function_entry_count", i64 6521798503}
!727 = !{!"function_entry_count", i64 85300390}
!728 = !{!"branch_weights", i32 1, i32 12185770}
!729 = !{!"branch_weights", i32 12185770, i32 -193930395}
!730 = distinct !{!730, !731}
!731 = !{!"llvm.loop.mustprogress"}
!732 = !{!"function_entry_count", i64 227375739}
!733 = !{!"function_entry_count", i64 568333389}
!734 = !{!719, !720, i64 0}
!735 = !{!736, !736, i64 0}
!736 = !{!"vtable pointer", !722, i64 0}
!737 = !{!"function_entry_count", i64 30137156670}
!738 = !{!"function_entry_count", i64 825654975}
!739 = !{!719, !723, i64 8}
!740 = !{!"function_entry_count", i64 164}
!741 = !{!742, !720, i64 120}
!742 = !{!"_ZTSN11xalanc_1_105XPathE", !743, i64 0, !720, i64 120, !748, i64 128}
!743 = !{!"_ZTSN11xalanc_1_1015XPathExpressionE", !744, i64 0, !745, i64 32, !746, i64 40, !745, i64 72, !720, i64 80, !747, i64 88}
!744 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !720, i64 0, !723, i64 8, !723, i64 16, !720, i64 24}
!745 = !{!"int", !721, i64 0}
!746 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEE", !720, i64 0, !723, i64 8, !723, i64 16, !720, i64 24}
!747 = !{!"_ZTSN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEE", !720, i64 0, !723, i64 8, !723, i64 16, !720, i64 24}
!748 = !{!"bool", !721, i64 0}
!749 = !{!742, !748, i64 128}
!750 = !{!"function_entry_count", i64 0}
!751 = !{!752, !720, i64 8}
!752 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_105XPathEE", !720, i64 0, !720, i64 8}
!753 = !{!720, !720, i64 0}
!754 = !{!752, !720, i64 0}
!755 = !{!"function_entry_count", i64 67594463}
!756 = !{!757, !720, i64 0}
!757 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringE", !720, i64 0, !720, i64 8}
!758 = !{!757, !720, i64 8}
!759 = !{!"function_entry_count", i64 201578993}
!760 = !{!"function_entry_count", i64 953962918}
!761 = !{!745, !745, i64 0}
!762 = !{!"function_entry_count", i64 134708288}
!763 = !{!"branch_weights", i32 67113826, i32 67594464}
!764 = !{!"function_entry_count", i64 68379708}
!765 = !{!766, !720, i64 8}
!766 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreE", !720, i64 0, !720, i64 8}
!767 = !{!766, !720, i64 0}
!768 = !{!"function_entry_count", i64 150969}
!769 = !{!"function_entry_count", i64 268602606}
!770 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 19396, i32 1, i32 1, i32 1, i32 1, i32 1, i32 22323642, i32 1, i32 1, i32 1, i32 1, i32 1, i32 103036, i32 67091839, i32 1, i32 89504426, i32 1, i32 66991834, i32 207524, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 22360917, i32 1}
!771 = !{!772, !720, i64 0}
!772 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopE", !720, i64 0}
!773 = !{!"function_entry_count", i64 68609096}
!774 = !{!"function_entry_count", i64 68609120}
!775 = !{!"function_entry_count", i64 68609147}
!776 = !{!744, !720, i64 24}
!777 = !{!"function_entry_count", i64 68633739}
!778 = !{!"function_entry_count", i64 22371791}
!779 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 22360917, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 10876, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!780 = !{!748, !748, i64 0}
!781 = !{!"function_entry_count", i64 6000}
!782 = !{!"function_entry_count", i64 23253645}
!783 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 93160, i32 85568, i32 93160, i32 93160, i32 93160, i32 1, i32 1, i32 1, i32 1, i32 186319, i32 1, i32 1, i32 1, i32 6001, i32 186319, i32 1, i32 4, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 93160, i32 1, i32 1, i32 1, i32 1, i32 1, i32 22323642, i32 4}
!784 = !{!785, !785, i64 0}
!785 = !{!"double", !721, i64 0}
!786 = !{!"function_entry_count", i64 144968}
!787 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 79919, i32 65051, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!788 = !{!721, !721, i64 0}
!789 = !{!"function_entry_count", i64 45307847}
!790 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 4, i32 1, i32 1, i32 1, i32 1, i32 44759108, i32 1, i32 1, i32 1, i32 75481, i32 395352, i32 1, i32 1, i32 11, i32 1, i32 1, i32 1, i32 1, i32 7, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 71883, i32 1, i32 1, i32 1, i32 6009}
!791 = !{!"function_entry_count", i64 345597}
!792 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 345598}
!793 = !{!"branch_weights", i32 345598, i32 1}
!794 = !{!"function_entry_count", i64 201666166}
!795 = !{!796, !720, i64 16}
!796 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !797, i64 0, !720, i64 16}
!797 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !720, i64 8}
!798 = !{i8 0, i8 2}
!799 = !{}
!800 = !{!"function_entry_count", i64 22380311}
!801 = !{!"function_entry_count", i64 93159}
!802 = !{!"function_entry_count", i64 22409208}
!803 = !{!"function_entry_count", i64 93162}
!804 = !{!"function_entry_count", i64 103035}
!805 = !{!"branch_weights", i32 1, i32 103036}
!806 = !{!"function_entry_count", i64 111850945}
!807 = !{!"function_entry_count", i64 89504425}
!808 = !{!"branch_weights", i32 1, i32 89504426}
!809 = distinct !{!809, !731}
!810 = !{!"function_entry_count", i64 67147231}
!811 = !{!"branch_weights", i32 85, i32 85, i32 85, i32 1914848838, i32 -474909102}
!812 = distinct !{!812, !731}
!813 = !{!"function_entry_count", i64 207523}
!814 = !{!"function_entry_count", i64 186318}
!815 = !{!"function_entry_count", i64 13}
!816 = !{!"branch_weights", i32 14, i32 1}
!817 = !{!"function_entry_count", i64 6}
!818 = !{!"function_entry_count", i64 71882}
!819 = !{!"function_entry_count", i64 44684557}
!820 = !{!"function_entry_count", i64 6011}
!821 = !{!"branch_weights", i32 6012, i32 1}
!822 = !{!"branch_weights", i32 604, i32 5409}
!823 = !{!"branch_weights", i32 5409, i32 59349}
!824 = distinct !{!824, !731}
!825 = !{!"function_entry_count", i64 292432932}
!826 = !{!827, !720, i64 0}
!827 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !720, i64 0}
!828 = !{!"function_entry_count", i64 246321862}
!829 = !{!"function_entry_count", i64 1009440147}
!830 = !{!"function_entry_count", i64 10875}
!831 = !{!"function_entry_count", i64 404042974}
!832 = !{!"function_entry_count", i64 740164859}
!833 = !{!"branch_weights", i32 740024103, i32 140758}
!834 = !{!"function_entry_count", i64 230527000}
!835 = !{!"function_entry_count", i64 3070433826}
!836 = !{!"function_entry_count", i64 1414337976}
!837 = !{!838, !745, i64 32}
!838 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !719, i64 0, !745, i64 32}
!839 = !{!"function_entry_count", i64 77882}
!840 = !{!"function_entry_count", i64 280295}
!841 = !{!797, !720, i64 8}
!842 = !{!"function_entry_count", i64 65050}
!843 = !{!"function_entry_count", i64 45461869}
!844 = !{!"function_entry_count", i64 967143541}
!845 = !{!"branch_weights", i32 403628487, i32 563515056}
!846 = !{!"function_entry_count", i64 1083116306}
!847 = !{!"function_entry_count", i64 565220908}
!848 = !{!"function_entry_count", i64 3}
!849 = !{!"function_entry_count", i64 395351}
!850 = !{!"function_entry_count", i64 77903}
!851 = !{!"branch_weights", i32 1, i32 7}
!852 = !{!"function_entry_count", i64 45140500}
!853 = !{!"branch_weights", i32 339574, i32 44800928}
!854 = distinct !{!854, !731}
!855 = !{!"function_entry_count", i64 1030396}
!856 = !{!"function_entry_count", i64 381195133}
!857 = !{!"function_entry_count", i64 44780017}
!858 = !{!859, !861, i64 12}
!859 = !{!"_ZTSN11xalanc_1_107XObjectE", !860, i64 0, !861, i64 12, !720, i64 16}
!860 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !745, i64 8}
!861 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !721, i64 0}
!862 = !{!"function_entry_count", i64 1493391}
!863 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 137390, i32 1, i32 1, i32 1, i32 217914, i32 1, i32 1, i32 1, i32 1138090, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!864 = !{!"branch_weights", i32 971886894, i32 -1151774778}
!865 = !{!"branch_weights", i32 57169, i32 295538}
!866 = !{!"branch_weights", i32 94426, i32 368571}
!867 = !{!"branch_weights", i32 271104, i32 97468}
!868 = !{!"branch_weights", i32 295538, i32 167458}
!869 = distinct !{!869, !731}
!870 = !{!"branch_weights", i32 24435, i32 271104}
!871 = !{!"branch_weights", i32 177190, i32 963498}
!872 = !{!"branch_weights", i32 1, i32 963498}
!873 = !{!"function_entry_count", i64 229388}
!874 = !{!875, !875, i64 0}
!875 = !{!"_ZTSN11xalanc_1_105XPath11eMatchScoreE", !721, i64 0}
!876 = !{!"branch_weights", i32 229389, i32 1}
!877 = !{!"function_entry_count", i64 233670}
!878 = !{!"function_entry_count", i64 157570217}
!879 = !{!"branch_weights", i32 1, i32 229389}
!880 = !{!"function_entry_count", i64 24}
!881 = !{!"branch_weights", i32 199, i32 1}
!882 = !{!"branch_weights", i32 1, i32 199}
!883 = distinct !{!883, !731}
!884 = !{!"branch_weights", i32 25, i32 12}
!885 = !{!"branch_weights", i32 1, i32 1, i32 2, i32 2, i32 1, i32 23}
!886 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 24}
!887 = !{!"branch_weights", i32 1, i32 24}
!888 = !{!"branch_weights", i32 0, i32 -2147483648}
!889 = !{!"branch_weights", i32 194, i32 196}
!890 = !{!"branch_weights", i32 199, i32 89}
!891 = distinct !{!891, !731}
!892 = !{!893, !723, i64 16}
!893 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEE", !720, i64 0, !723, i64 8, !723, i64 16, !720, i64 24}
!894 = !{!"branch_weights", i32 25, i32 1}
!895 = !{!"function_entry_count", i64 1759322}
!896 = !{!"function_entry_count", i64 3017297}
!897 = !{!"branch_weights", i32 382684616, i32 -655210764}
!898 = !{!"function_entry_count", i64 1899}
!899 = !{!900, !720, i64 0}
!900 = !{!"_ZTSN11xalanc_1_105XPath10TargetDataE", !720, i64 0, !875, i64 8, !901, i64 12}
!901 = !{!"_ZTSN11xalanc_1_105XPath10TargetData11eTargetTypeE", !721, i64 0}
!902 = !{!900, !875, i64 8}
!903 = !{!900, !901, i64 12}
!904 = !{!"function_entry_count", i64 408}
!905 = !{!893, !720, i64 0}
!906 = !{!893, !723, i64 8}
!907 = !{!"branch_weights", i32 1, i32 25}
!908 = !{!893, !720, i64 24}
!909 = !{!723, !723, i64 0}
!910 = !{!"function_entry_count", i64 48}
!911 = !{!"branch_weights", i32 25, i32 25}
!912 = distinct !{!912, !731}
!913 = distinct !{!913, !731}
!914 = distinct !{!914, !731}
!915 = distinct !{!915, !731}
!916 = !{i64 0, i64 8, !753, i64 8, i64 4, !874, i64 12, i64 4, !917}
!917 = !{!901, !901, i64 0}
!918 = distinct !{!918, !731}
!919 = !{!"function_entry_count", i64 316041560}
!920 = !{!746, !720, i64 24}
!921 = !{!"function_entry_count", i64 403723}
!922 = !{!"function_entry_count", i64 45563694}
!923 = !{!"branch_weights", i32 22688686, i32 22875010}
!924 = !{!"function_entry_count", i64 22688685}
!925 = !{!747, !720, i64 24}
!926 = !{!"function_entry_count", i64 2647209}
!927 = !{!928, !720, i64 0}
!928 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListE", !720, i64 0, !720, i64 8}
!929 = !{!928, !720, i64 8}
!930 = !{!"function_entry_count", i64 5227480}
!931 = !{!"function_entry_count", i64 2647211}
!932 = !{!"function_entry_count", i64 3269776}
!933 = !{!"branch_weights", i32 622568, i32 2647210}
!934 = !{!"branch_weights", i32 1, i32 65051}
!935 = !{!"function_entry_count", i64 136932}
!936 = !{!"branch_weights", i32 41346, i32 354007}
!937 = !{!"function_entry_count", i64 1615292}
!938 = !{!939, !943, i64 40}
!939 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefListE", !940, i64 0, !943, i64 40}
!940 = !{!"_ZTSN11xalanc_1_1011NodeRefListE", !941, i64 0, !942, i64 8}
!941 = !{!"_ZTSN11xalanc_1_1015NodeRefListBaseE"}
!942 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !720, i64 0, !723, i64 8, !723, i64 16, !720, i64 24}
!943 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefList6eOrderE", !721, i64 0}
!944 = !{!"function_entry_count", i64 4637746}
!945 = !{!946, !720, i64 0}
!946 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEE", !720, i64 0, !723, i64 8, !723, i64 16, !720, i64 24}
!947 = !{!946, !723, i64 8}
!948 = !{!946, !723, i64 16}
!949 = !{!"branch_weights", i32 7, i32 1}
!950 = !{!946, !720, i64 24}
!951 = !{!"function_entry_count", i64 339573}
!952 = !{!"function_entry_count", i64 12}
!953 = !{!"branch_weights", i32 7, i32 7}
!954 = !{!"function_entry_count", i64 2037554}
!955 = !{!"function_entry_count", i64 339579}
!956 = !{!"branch_weights", i32 339574, i32 7}
!957 = !{!"branch_weights", i32 2, i32 6}
!958 = !{!"function_entry_count", i64 339592}
!959 = !{!"function_entry_count", i64 339589}
!960 = !{!"branch_weights", i32 1, i32 2}
!961 = !{!"function_entry_count", i64 11}
!962 = !{!"function_entry_count", i64 717007216}
!963 = !{!"function_entry_count", i64 5}
!964 = !{!"branch_weights", i32 1, i32 6}
!965 = !{!"branch_weights", i32 6, i32 1}
!966 = !{!"branch_weights", i32 1, i32 191}
!967 = !{!"branch_weights", i32 191, i32 449}
!968 = distinct !{!968, !731}
!969 = distinct !{!969, !731}
!970 = distinct !{!970, !731}
!971 = distinct !{!971, !731}
!972 = distinct !{!972, !731}
!973 = distinct !{!973, !731}
!974 = !{!"branch_weights", i32 1, i32 223}
!975 = !{!"branch_weights", i32 223, i32 417}
!976 = distinct !{!976, !731}
!977 = !{!"function_entry_count", i64 3851627}
!978 = !{!"function_entry_count", i64 6340729}
!979 = !{!"branch_weights", i32 241719, i32 6099012}
!980 = !{!"function_entry_count", i64 66708615}
!981 = !{!"function_entry_count", i64 555646850}
!982 = !{!983, !723, i64 24}
!983 = !{!"_ZTSN11xalanc_1_1028FormatterStringLengthCounterE", !984, i64 0, !723, i64 24}
!984 = !{!"_ZTSN11xalanc_1_1017FormatterListenerE", !985, i64 0, !720, i64 8, !986, i64 16, !987, i64 20}
!985 = !{!"_ZTSN11xercesc_2_715DocumentHandlerE"}
!986 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !721, i64 0}
!987 = !{!"_ZTSN11xalanc_1_1017FormatterListener11eXMLVersionE", !721, i64 0}
!988 = !{!"function_entry_count", i64 48076702}
!989 = !{!"function_entry_count", i64 48269220}
!990 = !{!"function_entry_count", i64 120786442}
!991 = !{!"branch_weights", i32 92627942, i32 28158502}
!992 = !{!"function_entry_count", i64 28158501}
!993 = !{!"branch_weights", i32 1, i32 28158501}
!994 = !{!"branch_weights", i32 28158501, i32 1251710039}
!995 = distinct !{!995, !731}
!996 = !{!"function_entry_count", i64 185895030}
!997 = !{!"function_entry_count", i64 56317002}
!998 = !{!"function_entry_count", i64 30109074}
!999 = !{!"function_entry_count", i64 86426076}
!1000 = !{!"branch_weights", i32 28199083, i32 1909993}
!1001 = !{!"function_entry_count", i64 1344597977}
!1002 = !{!"function_entry_count", i64 265931}
!1003 = !{!"branch_weights", i32 229389, i32 36544}
!1004 = !{!"branch_weights", i32 1, i32 36544}
!1005 = !{!"branch_weights", i32 58764, i32 2147424884}
!1006 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 2, i32 6466, i32 1, i32 12741, i32 246726}
!1007 = distinct !{!1007, !731}
!1008 = distinct !{!1008, !731}
!1009 = distinct !{!1009, !731}
!1010 = !{!"branch_weights", i32 5, i32 1}
!1011 = distinct !{!1011, !731}
!1012 = !{!"branch_weights", i32 1, i32 12741}
!1013 = !{!"branch_weights", i32 1, i32 12740}
!1014 = !{!"branch_weights", i32 0, i32 1}
!1015 = distinct !{!1015, !731}
!1016 = !{!"branch_weights", i32 1, i32 246726}
!1017 = !{i32 0, i32 5}
!1018 = distinct !{!1018, !731}
!1019 = !{!"branch_weights", i32 1770340668, i32 377142980}
!1020 = !{!"branch_weights", i32 711599713, i32 1435883935}
!1021 = !{!"function_entry_count", i64 5050308}
!1022 = distinct !{!1022, !731}
!1023 = !{!"function_entry_count", i64 137389}
!1024 = !{!"branch_weights", i32 1, i32 137390}
!1025 = distinct !{!1025, !731}
!1026 = distinct !{!1026, !731}
!1027 = !{!"function_entry_count", i64 217913}
!1028 = !{!"branch_weights", i32 217914, i32 1}
!1029 = !{!"branch_weights", i32 1, i32 217914}
!1030 = !{!"branch_weights", i32 10876, i32 217914}
!1031 = !{!"branch_weights", i32 217914, i32 10875}
!1032 = distinct !{!1032, !731}
!1033 = !{!"function_entry_count", i64 1138089}
!1034 = !{!"branch_weights", i32 1, i32 1138090}
!1035 = !{!"branch_weights", i32 11706555, i32 1361370}
!1036 = !{!"branch_weights", i32 1138090, i32 11929835}
!1037 = distinct !{!1037, !731}
!1038 = distinct !{!1038, !731}
!1039 = distinct !{!1039, !731}
!1040 = distinct !{!1040, !731}
!1041 = distinct !{!1041, !731}
!1042 = distinct !{!1042, !731}
!1043 = distinct !{!1043, !731}
!1044 = distinct !{!1044, !731}
!1045 = distinct !{!1045, !731}
!1046 = distinct !{!1046, !731}
!1047 = distinct !{!1047, !731}
!1048 = distinct !{!1048, !731}
!1049 = distinct !{!1049, !731}
!1050 = !{!"function_entry_count", i64 1500242}
!1051 = !{!"function_entry_count", i64 38250}
!1052 = !{!"branch_weights", i32 18856, i32 19396}
!1053 = !{!"branch_weights", i32 1, i32 19396}
!1054 = !{!"branch_weights", i32 19396, i32 0}
!1055 = distinct !{!1055, !731}
!1056 = !{!"function_entry_count", i64 2267788}
!1057 = !{!"function_entry_count", i64 1234600}
!1058 = !{!"function_entry_count", i64 963497}
!1059 = !{!1060, !720, i64 0}
!1060 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopE", !720, i64 0}
!1061 = !{!"function_entry_count", i64 2384650}
!1062 = !{!942, !723, i64 8}
!1063 = !{!"function_entry_count", i64 37841089}
!1064 = !{!"function_entry_count", i64 1339916}
!1065 = !{!942, !720, i64 0}
!1066 = !{!942, !720, i64 24}
!1067 = !{!"function_entry_count", i64 36543}
!1068 = !{!"branch_weights", i32 6466, i32 30079}
!1069 = !{!"function_entry_count", i64 13700030}
!1070 = !{!1071, !721, i64 24}
!1071 = !{!"_ZTSN11xalanc_1_105XPath10NodeTesterE", !720, i64 0, !720, i64 8, !720, i64 16, !721, i64 24, !721, i64 40}
!1072 = !{!"function_entry_count", i64 19395}
!1073 = !{!"XPath.cpp:_ZN11xalanc_1_10L11findTopNodeEPNS_9XalanNodeENS0_8NodeTypeE"}
!1074 = distinct !{!1074, !731}
!1075 = !{!"function_entry_count", i64 350405}
!1076 = !{!"function_entry_count", i64 12093723}
!1077 = !{!1071, !720, i64 16}
!1078 = !{!1071, !721, i64 40}
!1079 = !{!"function_entry_count", i64 1759321}
!1080 = !{!1071, !720, i64 0}
!1081 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 250693, i32 1, i32 1508630}
!1082 = !{!1071, !720, i64 8}
!1083 = !{!"branch_weights", i32 287056, i32 1221575}
!1084 = !{!"branch_weights", i32 8, i32 287049}
!1085 = !{!"branch_weights", i32 -1073671985, i32 562811335, i32 2508}
!1086 = !{!"branch_weights", i32 1, i32 224379}
!1087 = !{!"branch_weights", i32 224379, i32 1}
!1088 = !{!"branch_weights", i32 8, i32 1284245}
!1089 = !{!"branch_weights", i32 62671, i32 1221575}
!1090 = !{!"branch_weights", i32 1, i32 1221575}
!1091 = !{!"function_entry_count", i64 385006}
!1092 = !{!"branch_weights", i32 -1344114773, i32 -2017218676}
!1093 = !{!"branch_weights", i32 1, i32 167721}
!1094 = !{!"function_entry_count", i64 235253}
!1095 = !{!"branch_weights", i32 235254, i32 1}
!1096 = !{!"branch_weights", i32 1, i32 235254}
!1097 = !{!"branch_weights", i32 224379, i32 10876}
!1098 = !{!"function_entry_count", i64 21769}
!1099 = !{!"function_entry_count", i64 577710}
!1100 = !{!"branch_weights", i32 257521, i32 320191}
!1101 = !{!"branch_weights", i32 1, i32 257521}
!1102 = !{!"function_entry_count", i64 12480292}
!1103 = !{!"branch_weights", i32 5876090, i32 6604204}
!1104 = !{!"branch_weights", i32 1362337, i32 4513754}
!1105 = !{!1106, !1106, i64 0}
!1106 = !{!"short", !721, i64 0}
!1107 = !{i32 1, i32 4}
!1108 = !{!"function_entry_count", i64 1705853}
!1109 = !{!"function_entry_count", i64 40512}
!1110 = !{!"branch_weights", i32 2, i32 40512}
!1111 = !{!"function_entry_count", i64 1769}
!1112 = !{!1113, !720, i64 0}
!1113 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringE", !720, i64 0, !720, i64 8}
!1114 = !{!1113, !720, i64 8}
!1115 = !{!"branch_weights", i32 1, i32 1770}
!1116 = !{!"function_entry_count", i64 1963805}
!1117 = !{!"branch_weights", i32 575723646, i32 -2055874256}
!1118 = distinct !{!1118, !731}
!1119 = !{!"function_entry_count", i64 6299974}
!1120 = !{!"function_entry_count", i64 167720}
!1121 = !{!"function_entry_count", i64 492773}
!1122 = !{!"branch_weights", i32 235254, i32 257521}
!1123 = !{!"function_entry_count", i64 4704705}
!1124 = !{!"function_entry_count", i64 5876089}
!1125 = !{!"function_entry_count", i64 1}
!1126 = !{!1127, !720, i64 0}
!1127 = !{!"_ZTSN11xalanc_1_1018XPathFunctionTableE", !720, i64 0, !721, i64 8, !720, i64 296}

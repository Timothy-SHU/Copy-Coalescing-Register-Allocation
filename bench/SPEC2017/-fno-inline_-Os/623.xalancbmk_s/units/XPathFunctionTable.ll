; ModuleID = 'XPathFunctionTable.cpp'
source_filename = "XPathFunctionTable.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" = type { ptr, i32 }
%"class.xalanc_1_10::XPathFunctionTable" = type { ptr, [36 x ptr], ptr }
%"class.xalanc_1_10::FunctionID" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::Function" = type { ptr }
%"class.xalanc_1_10::FunctionNotImplemented" = type { %"class.xalanc_1_10::Function", ptr }
%"class.xalanc_1_10::FunctionLang" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::FunctionConcat" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::FunctionString" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::FunctionContains" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::FunctionSubstring" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::FunctionTranslate" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::FunctionStartsWith" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::FunctionNamespaceURI" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::FunctionNormalizeSpace" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::FunctionSubstringAfter" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::FunctionSubstringBefore" = type { %"class.xalanc_1_10::Function" }
%"struct.xalanc_1_10::DeleteFunctor" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::FunctionNotImplemented, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::FunctionNotImplemented, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"struct.xalanc_1_10::XalanDestroyFunctor" = type { i8 }

$_ZNK11xalanc_1_1019XalanXPathException7getTypeEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt = comdat any

$_ZN11xalanc_1_1022FunctionNotImplementedD0Ev = comdat any

$_ZNK11xalanc_1_1022FunctionNotImplemented5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1022FunctionNotImplemented8getErrorERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1022FunctionNotImplementedEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZSt8for_eachIPPKN11xalanc_1_108FunctionENS0_13DeleteFunctorIS1_EEET0_T_S8_S7_ = comdat any

$_ZN11xalanc_1_1013DeleteFunctorINS_8FunctionEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1013DeleteFunctorINS_8FunctionEEclEPKS1_ = comdat any

$_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_8FunctionEEENS_19XalanDestroyFunctorIT_EEPKS3_ = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_8FunctionEEclEPKS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_8FunctionEEclEPS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_8FunctionEEclERS1_ = comdat any

$_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv = comdat any

$_ZTVN11xalanc_1_1022FunctionNotImplementedE = comdat any

$_ZTSN11xalanc_1_1022FunctionNotImplementedE = comdat any

$_ZTIN11xalanc_1_1022FunctionNotImplementedE = comdat any

@_ZTVN11xalanc_1_1034XPathExceptionFunctionNotAvailableE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1034XPathExceptionFunctionNotAvailableE, ptr @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableD2Ev, ptr @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableD0Ev, ptr @_ZNK11xalanc_1_1019XalanXPathException7getTypeEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1034XPathExceptionFunctionNotAvailableE = dso_local constant [52 x i8] c"N11xalanc_1_1034XPathExceptionFunctionNotAvailableE\00", align 1
@_ZTIN11xalanc_1_1019XalanXPathExceptionE = external constant ptr
@_ZTIN11xalanc_1_1034XPathExceptionFunctionNotAvailableE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1034XPathExceptionFunctionNotAvailableE, ptr @_ZTIN11xalanc_1_1019XalanXPathExceptionE }, align 8
@_ZTVN11xalanc_1_1034XPathExceptionFunctionNotSupportedE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1034XPathExceptionFunctionNotSupportedE, ptr @_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedD2Ev, ptr @_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedD0Ev, ptr @_ZNK11xalanc_1_1019XalanXPathException7getTypeEv] }, align 8
@_ZTSN11xalanc_1_1034XPathExceptionFunctionNotSupportedE = dso_local constant [52 x i8] c"N11xalanc_1_1034XPathExceptionFunctionNotSupportedE\00", align 1
@_ZTIN11xalanc_1_1034XPathExceptionFunctionNotSupportedE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1034XPathExceptionFunctionNotSupportedE, ptr @_ZTIN11xalanc_1_1019XalanXPathExceptionE }, align 8
@_ZTVN11xalanc_1_1022FunctionNotImplementedE = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022FunctionNotImplementedE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1022FunctionNotImplementedD0Ev, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1022FunctionNotImplemented5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1022FunctionNotImplemented8getErrorERNS_14XalanDOMStringE] }, comdat, align 8
@_ZTSN11xalanc_1_1022FunctionNotImplementedE = linkonce_odr dso_local constant [40 x i8] c"N11xalanc_1_1022FunctionNotImplementedE\00", comdat, align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1022FunctionNotImplementedE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022FunctionNotImplementedE, ptr @_ZTIN11xalanc_1_108FunctionE }, comdat, align 8
@_ZN11xalanc_1_1018XPathFunctionTable4s_idE = dso_local constant [3 x i16] [i16 105, i16 100, i16 0], align 2
@_ZN11xalanc_1_1018XPathFunctionTable5s_keyE = dso_local constant [4 x i16] [i16 107, i16 101, i16 121, i16 0], align 2
@_ZN11xalanc_1_1018XPathFunctionTable5s_notE = dso_local constant [4 x i16] [i16 110, i16 111, i16 116, i16 0], align 2
@_ZN11xalanc_1_1018XPathFunctionTable5s_sumE = dso_local constant [4 x i16] [i16 115, i16 117, i16 109, i16 0], align 2
@_ZN11xalanc_1_1018XPathFunctionTable6s_langE = dso_local constant [5 x i16] [i16 108, i16 97, i16 110, i16 103, i16 0], align 2
@_ZN11xalanc_1_1018XPathFunctionTable6s_lastE = dso_local constant [5 x i16] [i16 108, i16 97, i16 115, i16 116, i16 0], align 2
@_ZN11xalanc_1_1018XPathFunctionTable6s_nameE = dso_local constant [5 x i16] [i16 110, i16 97, i16 109, i16 101, i16 0], align 2
@_ZN11xalanc_1_1018XPathFunctionTable6s_trueE = dso_local constant [5 x i16] [i16 116, i16 114, i16 117, i16 101, i16 0], align 2
@_ZN11xalanc_1_1018XPathFunctionTable7s_countE = dso_local constant [6 x i16] [i16 99, i16 111, i16 117, i16 110, i16 116, i16 0], align 2
@_ZN11xalanc_1_1018XPathFunctionTable7s_falseE = dso_local constant [6 x i16] [i16 102, i16 97, i16 108, i16 115, i16 101, i16 0], align 2
@_ZN11xalanc_1_1018XPathFunctionTable7s_floorE = dso_local constant [6 x i16] [i16 102, i16 108, i16 111, i16 111, i16 114, i16 0], align 2
@_ZN11xalanc_1_1018XPathFunctionTable7s_roundE = dso_local constant [6 x i16] [i16 114, i16 111, i16 117, i16 110, i16 100, i16 0], align 2
@_ZN11xalanc_1_1018XPathFunctionTable8s_concatE = dso_local constant [7 x i16] [i16 99, i16 111, i16 110, i16 99, i16 97, i16 116, i16 0], align 2
@_ZN11xalanc_1_1018XPathFunctionTable8s_numberE = dso_local constant [7 x i16] [i16 110, i16 117, i16 109, i16 98, i16 101, i16 114, i16 0], align 2
@_ZN11xalanc_1_1018XPathFunctionTable8s_stringE = dso_local constant [7 x i16] [i16 115, i16 116, i16 114, i16 105, i16 110, i16 103, i16 0], align 2
@_ZN11xalanc_1_1018XPathFunctionTable9s_booleanE = dso_local constant [8 x i16] [i16 98, i16 111, i16 111, i16 108, i16 101, i16 97, i16 110, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable9s_ceilingE = dso_local constant [8 x i16] [i16 99, i16 101, i16 105, i16 108, i16 105, i16 110, i16 103, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable9s_currentE = dso_local constant [8 x i16] [i16 99, i16 117, i16 114, i16 114, i16 101, i16 110, i16 116, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable10s_containsE = dso_local constant [9 x i16] [i16 99, i16 111, i16 110, i16 116, i16 97, i16 105, i16 110, i16 115, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable10s_documentE = dso_local constant [9 x i16] [i16 100, i16 111, i16 99, i16 117, i16 109, i16 101, i16 110, i16 116, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable10s_positionE = dso_local constant [9 x i16] [i16 112, i16 111, i16 115, i16 105, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable11s_substringE = dso_local constant [10 x i16] [i16 115, i16 117, i16 98, i16 115, i16 116, i16 114, i16 105, i16 110, i16 103, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable11s_translateE = dso_local constant [10 x i16] [i16 116, i16 114, i16 97, i16 110, i16 115, i16 108, i16 97, i16 116, i16 101, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable11s_localNameE = dso_local constant [11 x i16] [i16 108, i16 111, i16 99, i16 97, i16 108, i16 45, i16 110, i16 97, i16 109, i16 101, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable12s_generateIdE = dso_local constant [12 x i16] [i16 103, i16 101, i16 110, i16 101, i16 114, i16 97, i16 116, i16 101, i16 45, i16 105, i16 100, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable12s_startsWithE = dso_local constant [12 x i16] [i16 115, i16 116, i16 97, i16 114, i16 116, i16 115, i16 45, i16 119, i16 105, i16 116, i16 104, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable14s_formatNumberE = dso_local constant [14 x i16] [i16 102, i16 111, i16 114, i16 109, i16 97, i16 116, i16 45, i16 110, i16 117, i16 109, i16 98, i16 101, i16 114, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable14s_namespaceUriE = dso_local constant [14 x i16] [i16 110, i16 97, i16 109, i16 101, i16 115, i16 112, i16 97, i16 99, i16 101, i16 45, i16 117, i16 114, i16 105, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable14s_stringLengthE = dso_local constant [14 x i16] [i16 115, i16 116, i16 114, i16 105, i16 110, i16 103, i16 45, i16 108, i16 101, i16 110, i16 103, i16 116, i16 104, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable16s_normalizeSpaceE = dso_local constant [16 x i16] [i16 110, i16 111, i16 114, i16 109, i16 97, i16 108, i16 105, i16 122, i16 101, i16 45, i16 115, i16 112, i16 97, i16 99, i16 101, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable16s_substringAfterE = dso_local constant [16 x i16] [i16 115, i16 117, i16 98, i16 115, i16 116, i16 114, i16 105, i16 110, i16 103, i16 45, i16 97, i16 102, i16 116, i16 101, i16 114, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable16s_systemPropertyE = dso_local constant [16 x i16] [i16 115, i16 121, i16 115, i16 116, i16 101, i16 109, i16 45, i16 112, i16 114, i16 111, i16 112, i16 101, i16 114, i16 116, i16 121, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable17s_substringBeforeE = dso_local constant [17 x i16] [i16 115, i16 117, i16 98, i16 115, i16 116, i16 114, i16 105, i16 110, i16 103, i16 45, i16 98, i16 101, i16 102, i16 111, i16 114, i16 101, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable18s_elementAvailableE = dso_local constant [18 x i16] [i16 101, i16 108, i16 101, i16 109, i16 101, i16 110, i16 116, i16 45, i16 97, i16 118, i16 97, i16 105, i16 108, i16 97, i16 98, i16 108, i16 101, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable19s_functionAvailableE = dso_local constant [19 x i16] [i16 102, i16 117, i16 110, i16 99, i16 116, i16 105, i16 111, i16 110, i16 45, i16 97, i16 118, i16 97, i16 105, i16 108, i16 97, i16 98, i16 108, i16 101, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable19s_unparsedEntityUriE = dso_local constant [20 x i16] [i16 117, i16 110, i16 112, i16 97, i16 114, i16 115, i16 101, i16 100, i16 45, i16 101, i16 110, i16 116, i16 105, i16 116, i16 121, i16 45, i16 117, i16 114, i16 105, i16 0], align 16
@_ZN11xalanc_1_1018XPathFunctionTable15s_functionNamesE = dso_local constant [36 x %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry"] [%"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable4s_idE, i32 2 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable5s_keyE, i32 3 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable5s_notE, i32 3 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable5s_sumE, i32 3 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable6s_langE, i32 4 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable6s_lastE, i32 4 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable6s_nameE, i32 4 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable6s_trueE, i32 4 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable7s_countE, i32 5 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable7s_falseE, i32 5 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable7s_floorE, i32 5 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable7s_roundE, i32 5 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable8s_concatE, i32 6 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable8s_numberE, i32 6 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable8s_stringE, i32 6 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable9s_booleanE, i32 7 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable9s_ceilingE, i32 7 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable9s_currentE, i32 7 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable10s_containsE, i32 8 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable10s_documentE, i32 8 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable10s_positionE, i32 8 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable11s_substringE, i32 9 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable11s_translateE, i32 9 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable11s_localNameE, i32 10 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable12s_generateIdE, i32 11 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable12s_startsWithE, i32 11 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable14s_formatNumberE, i32 13 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable14s_namespaceUriE, i32 13 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable14s_stringLengthE, i32 13 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable16s_normalizeSpaceE, i32 15 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable16s_substringAfterE, i32 15 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable16s_systemPropertyE, i32 15 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable17s_substringBeforeE, i32 16 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable18s_elementAvailableE, i32 17 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable19s_functionAvailableE, i32 18 }, %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable19s_unparsedEntityUriE, i32 19 }], align 16
@_ZN11xalanc_1_1018XPathFunctionTable18s_lastFunctionNameE = dso_local local_unnamed_addr constant ptr getelementptr inbounds ([36 x %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry"], ptr @_ZN11xalanc_1_1018XPathFunctionTable15s_functionNamesE, i64 0, i64 35, i32 0), align 8
@_ZN11xalanc_1_1018XPathFunctionTable19s_functionNamesSizeE = dso_local local_unnamed_addr constant i64 36, align 8
@_ZN11xalanc_1_1019XalanXPathException6m_typeE = external constant [0 x i16], align 2

@_ZN11xalanc_1_1018XPathFunctionTableC1Eb = dso_local unnamed_addr alias void (ptr, i1), ptr @_ZN11xalanc_1_1018XPathFunctionTableC2Eb
@_ZN11xalanc_1_1018XPathFunctionTableD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1018XPathFunctionTableD2Ev
@_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableC1ERKNS_14XalanDOMStringERS1_ = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableC2ERKNS_14XalanDOMStringERS1_
@_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableC1ERKNS_14XalanDOMStringERKN11xercesc_2_77LocatorERS1_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableC2ERKNS_14XalanDOMStringERKN11xercesc_2_77LocatorERS1_
@_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableD2Ev
@_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedC1EPKtRNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedC2EPKtRNS_14XalanDOMStringE
@_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1019XalanXPathException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 comdat align 2 !prof !106 {
  ret ptr @_ZN11xalanc_1_1019XalanXPathException6m_typeE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018XPathFunctionTableC2Eb(ptr noundef nonnull align 8 dereferenceable(304) %0, i1 noundef zeroext %1) unnamed_addr #1 align 2 !prof !107 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathFunctionTable", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathFunctionTable", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathFunctionTable", ptr %0, i64 0, i32 1, i64 35
  store i64 0, ptr %0, align 8
  store ptr %5, ptr %4, align 8, !tbaa !108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %3, i8 0, i64 288, i1 false)
  br i1 %1, label %6, label %7, !prof !113

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv(ptr noundef nonnull align 8 dereferenceable(304) %0) #10
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv(ptr noundef nonnull align 8 dereferenceable(304) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %2 = alloca %"class.xalanc_1_10::FunctionID", align 8
  %3 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %4 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %5 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %6 = alloca %"class.xalanc_1_10::FunctionLang", align 8
  %7 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %8 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %9 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %10 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %11 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %12 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %13 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %14 = alloca %"class.xalanc_1_10::FunctionConcat", align 8
  %15 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %16 = alloca %"class.xalanc_1_10::FunctionString", align 8
  %17 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %18 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %19 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %20 = alloca %"class.xalanc_1_10::FunctionContains", align 8
  %21 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %22 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %23 = alloca %"class.xalanc_1_10::FunctionSubstring", align 8
  %24 = alloca %"class.xalanc_1_10::FunctionTranslate", align 8
  %25 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %26 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %27 = alloca %"class.xalanc_1_10::FunctionStartsWith", align 8
  %28 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %29 = alloca %"class.xalanc_1_10::FunctionNamespaceURI", align 8
  %30 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %31 = alloca %"class.xalanc_1_10::FunctionNormalizeSpace", align 8
  %32 = alloca %"class.xalanc_1_10::FunctionSubstringAfter", align 8
  %33 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %34 = alloca %"class.xalanc_1_10::FunctionSubstringBefore", align 8
  %35 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %36 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  %37 = alloca %"class.xalanc_1_10::FunctionNotImplemented", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  invoke void @_ZN11xalanc_1_1010FunctionIDC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
          to label %38 unwind label %110

38:                                               ; preds = %1
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable4s_idE, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
          to label %39 unwind label %112

39:                                               ; preds = %38
  call void @_ZN11xalanc_1_1010FunctionIDD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable5s_keyE) #10
          to label %40 unwind label %116

40:                                               ; preds = %39
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable5s_keyE, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
          to label %41 unwind label %118

41:                                               ; preds = %40
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable5s_notE) #10
          to label %42 unwind label %122

42:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable5s_notE, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
          to label %43 unwind label %124

43:                                               ; preds = %42
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable5s_sumE) #10
          to label %44 unwind label %128

44:                                               ; preds = %43
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable5s_sumE, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
          to label %45 unwind label %130

45:                                               ; preds = %44
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  invoke void @_ZN11xalanc_1_1012FunctionLangC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
          to label %46 unwind label %134

46:                                               ; preds = %45
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable6s_langE, ptr noundef nonnull align 8 dereferenceable(8) %6) #10
          to label %47 unwind label %136

47:                                               ; preds = %46
  call void @_ZN11xalanc_1_1012FunctionLangD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable6s_lastE) #10
          to label %48 unwind label %140

48:                                               ; preds = %47
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable6s_lastE, ptr noundef nonnull align 8 dereferenceable(8) %7) #10
          to label %49 unwind label %142

49:                                               ; preds = %48
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable6s_nameE) #10
          to label %50 unwind label %146

50:                                               ; preds = %49
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable6s_nameE, ptr noundef nonnull align 8 dereferenceable(8) %8) #10
          to label %51 unwind label %148

51:                                               ; preds = %50
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable6s_trueE) #10
          to label %52 unwind label %152

52:                                               ; preds = %51
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable6s_trueE, ptr noundef nonnull align 8 dereferenceable(8) %9) #10
          to label %53 unwind label %154

53:                                               ; preds = %52
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable7s_countE) #10
          to label %54 unwind label %158

54:                                               ; preds = %53
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable7s_countE, ptr noundef nonnull align 8 dereferenceable(8) %10) #10
          to label %55 unwind label %160

55:                                               ; preds = %54
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable7s_falseE) #10
          to label %56 unwind label %164

56:                                               ; preds = %55
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable7s_falseE, ptr noundef nonnull align 8 dereferenceable(8) %11) #10
          to label %57 unwind label %166

57:                                               ; preds = %56
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable7s_floorE) #10
          to label %58 unwind label %170

58:                                               ; preds = %57
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable7s_floorE, ptr noundef nonnull align 8 dereferenceable(8) %12) #10
          to label %59 unwind label %172

59:                                               ; preds = %58
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable7s_roundE) #10
          to label %60 unwind label %176

60:                                               ; preds = %59
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable7s_roundE, ptr noundef nonnull align 8 dereferenceable(8) %13) #10
          to label %61 unwind label %178

61:                                               ; preds = %60
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #11
  invoke void @_ZN11xalanc_1_1014FunctionConcatC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #10
          to label %62 unwind label %182

62:                                               ; preds = %61
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable8s_concatE, ptr noundef nonnull align 8 dereferenceable(8) %14) #10
          to label %63 unwind label %184

63:                                               ; preds = %62
  call void @_ZN11xalanc_1_1014FunctionConcatD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable8s_numberE) #10
          to label %64 unwind label %188

64:                                               ; preds = %63
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable8s_numberE, ptr noundef nonnull align 8 dereferenceable(8) %15) #10
          to label %65 unwind label %190

65:                                               ; preds = %64
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #11
  invoke void @_ZN11xalanc_1_1014FunctionStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #10
          to label %66 unwind label %194

66:                                               ; preds = %65
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable8s_stringE, ptr noundef nonnull align 8 dereferenceable(8) %16) #10
          to label %67 unwind label %196

67:                                               ; preds = %66
  call void @_ZN11xalanc_1_1014FunctionStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable9s_booleanE) #10
          to label %68 unwind label %200

68:                                               ; preds = %67
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable9s_booleanE, ptr noundef nonnull align 8 dereferenceable(8) %17) #10
          to label %69 unwind label %202

69:                                               ; preds = %68
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable9s_ceilingE) #10
          to label %70 unwind label %206

70:                                               ; preds = %69
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable9s_ceilingE, ptr noundef nonnull align 8 dereferenceable(8) %18) #10
          to label %71 unwind label %208

71:                                               ; preds = %70
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable9s_currentE) #10
          to label %72 unwind label %212

72:                                               ; preds = %71
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable9s_currentE, ptr noundef nonnull align 8 dereferenceable(8) %19) #10
          to label %73 unwind label %214

73:                                               ; preds = %72
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #11
  invoke void @_ZN11xalanc_1_1016FunctionContainsC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #10
          to label %74 unwind label %218

74:                                               ; preds = %73
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable10s_containsE, ptr noundef nonnull align 8 dereferenceable(8) %20) #10
          to label %75 unwind label %220

75:                                               ; preds = %74
  call void @_ZN11xalanc_1_1016FunctionContainsD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable10s_documentE) #10
          to label %76 unwind label %224

76:                                               ; preds = %75
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable10s_documentE, ptr noundef nonnull align 8 dereferenceable(8) %21) #10
          to label %77 unwind label %226

77:                                               ; preds = %76
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable10s_positionE) #10
          to label %78 unwind label %230

78:                                               ; preds = %77
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable10s_positionE, ptr noundef nonnull align 8 dereferenceable(8) %22) #10
          to label %79 unwind label %232

79:                                               ; preds = %78
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #11
  invoke void @_ZN11xalanc_1_1017FunctionSubstringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23) #10
          to label %80 unwind label %236

80:                                               ; preds = %79
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable11s_substringE, ptr noundef nonnull align 8 dereferenceable(8) %23) #10
          to label %81 unwind label %238

81:                                               ; preds = %80
  call void @_ZN11xalanc_1_1017FunctionSubstringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #11
  invoke void @_ZN11xalanc_1_1017FunctionTranslateC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24) #10
          to label %82 unwind label %242

82:                                               ; preds = %81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable11s_translateE, ptr noundef nonnull align 8 dereferenceable(8) %24) #10
          to label %83 unwind label %244

83:                                               ; preds = %82
  call void @_ZN11xalanc_1_1017FunctionTranslateD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %25) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable11s_localNameE) #10
          to label %84 unwind label %248

84:                                               ; preds = %83
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable11s_localNameE, ptr noundef nonnull align 8 dereferenceable(8) %25) #10
          to label %85 unwind label %250

85:                                               ; preds = %84
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %25) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable12s_generateIdE) #10
          to label %86 unwind label %254

86:                                               ; preds = %85
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable12s_generateIdE, ptr noundef nonnull align 8 dereferenceable(8) %26) #10
          to label %87 unwind label %256

87:                                               ; preds = %86
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #11
  invoke void @_ZN11xalanc_1_1018FunctionStartsWithC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27) #10
          to label %88 unwind label %260

88:                                               ; preds = %87
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable12s_startsWithE, ptr noundef nonnull align 8 dereferenceable(8) %27) #10
          to label %89 unwind label %262

89:                                               ; preds = %88
  call void @_ZN11xalanc_1_1018FunctionStartsWithD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %28) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable14s_formatNumberE) #10
          to label %90 unwind label %266

90:                                               ; preds = %89
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable14s_formatNumberE, ptr noundef nonnull align 8 dereferenceable(8) %28) #10
          to label %91 unwind label %268

91:                                               ; preds = %90
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %28) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %28) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #11
  invoke void @_ZN11xalanc_1_1020FunctionNamespaceURIC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29) #10
          to label %92 unwind label %272

92:                                               ; preds = %91
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable14s_namespaceUriE, ptr noundef nonnull align 8 dereferenceable(8) %29) #10
          to label %93 unwind label %274

93:                                               ; preds = %92
  call void @_ZN11xalanc_1_1020FunctionNamespaceURID1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %30) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable14s_stringLengthE) #10
          to label %94 unwind label %278

94:                                               ; preds = %93
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable14s_stringLengthE, ptr noundef nonnull align 8 dereferenceable(8) %30) #10
          to label %95 unwind label %280

95:                                               ; preds = %94
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %30) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %30) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #11
  invoke void @_ZN11xalanc_1_1022FunctionNormalizeSpaceC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31) #10
          to label %96 unwind label %284

96:                                               ; preds = %95
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable16s_normalizeSpaceE, ptr noundef nonnull align 8 dereferenceable(8) %31) #10
          to label %97 unwind label %286

97:                                               ; preds = %96
  call void @_ZN11xalanc_1_1022FunctionNormalizeSpaceD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #11
  invoke void @_ZN11xalanc_1_1022FunctionSubstringAfterC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32) #10
          to label %98 unwind label %290

98:                                               ; preds = %97
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable16s_substringAfterE, ptr noundef nonnull align 8 dereferenceable(8) %32) #10
          to label %99 unwind label %292

99:                                               ; preds = %98
  call void @_ZN11xalanc_1_1022FunctionSubstringAfterD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %33) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable16s_systemPropertyE) #10
          to label %100 unwind label %296

100:                                              ; preds = %99
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable16s_systemPropertyE, ptr noundef nonnull align 8 dereferenceable(8) %33) #10
          to label %101 unwind label %298

101:                                              ; preds = %100
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %33) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %33) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34) #11
  invoke void @_ZN11xalanc_1_1023FunctionSubstringBeforeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %34) #10
          to label %102 unwind label %302

102:                                              ; preds = %101
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable17s_substringBeforeE, ptr noundef nonnull align 8 dereferenceable(8) %34) #10
          to label %103 unwind label %304

103:                                              ; preds = %102
  call void @_ZN11xalanc_1_1023FunctionSubstringBeforeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %34) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %35) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable18s_elementAvailableE) #10
          to label %104 unwind label %308

104:                                              ; preds = %103
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable18s_elementAvailableE, ptr noundef nonnull align 8 dereferenceable(8) %35) #10
          to label %105 unwind label %310

105:                                              ; preds = %104
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %35) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %35) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %36) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable19s_functionAvailableE) #10
          to label %106 unwind label %314

106:                                              ; preds = %105
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable19s_functionAvailableE, ptr noundef nonnull align 8 dereferenceable(8) %36) #10
          to label %107 unwind label %316

107:                                              ; preds = %106
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %36) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %36) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %37) #11
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable19s_unparsedEntityUriE) #10
          to label %108 unwind label %320

108:                                              ; preds = %107
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable19s_unparsedEntityUriE, ptr noundef nonnull align 8 dereferenceable(8) %37) #10
          to label %109 unwind label %322

109:                                              ; preds = %108
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %37) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %37) #11
  ret void

110:                                              ; preds = %1
  %111 = landingpad { ptr, i32 }
          catch ptr null
  br label %114

112:                                              ; preds = %38
  %113 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1010FunctionIDD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi { ptr, i32 } [ %113, %112 ], [ %111, %110 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %326

116:                                              ; preds = %39
  %117 = landingpad { ptr, i32 }
          catch ptr null
  br label %120

118:                                              ; preds = %40
  %119 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #8
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi { ptr, i32 } [ %119, %118 ], [ %117, %116 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %326

122:                                              ; preds = %41
  %123 = landingpad { ptr, i32 }
          catch ptr null
  br label %126

124:                                              ; preds = %42
  %125 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #8
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi { ptr, i32 } [ %125, %124 ], [ %123, %122 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %326

128:                                              ; preds = %43
  %129 = landingpad { ptr, i32 }
          catch ptr null
  br label %132

130:                                              ; preds = %44
  %131 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #8
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi { ptr, i32 } [ %131, %130 ], [ %129, %128 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %326

134:                                              ; preds = %45
  %135 = landingpad { ptr, i32 }
          catch ptr null
  br label %138

136:                                              ; preds = %46
  %137 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1012FunctionLangD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi { ptr, i32 } [ %137, %136 ], [ %135, %134 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %326

140:                                              ; preds = %47
  %141 = landingpad { ptr, i32 }
          catch ptr null
  br label %144

142:                                              ; preds = %48
  %143 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #8
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi { ptr, i32 } [ %143, %142 ], [ %141, %140 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %326

146:                                              ; preds = %49
  %147 = landingpad { ptr, i32 }
          catch ptr null
  br label %150

148:                                              ; preds = %50
  %149 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #8
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi { ptr, i32 } [ %149, %148 ], [ %147, %146 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  br label %326

152:                                              ; preds = %51
  %153 = landingpad { ptr, i32 }
          catch ptr null
  br label %156

154:                                              ; preds = %52
  %155 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #8
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi { ptr, i32 } [ %155, %154 ], [ %153, %152 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  br label %326

158:                                              ; preds = %53
  %159 = landingpad { ptr, i32 }
          catch ptr null
  br label %162

160:                                              ; preds = %54
  %161 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #8
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi { ptr, i32 } [ %161, %160 ], [ %159, %158 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #11
  br label %326

164:                                              ; preds = %55
  %165 = landingpad { ptr, i32 }
          catch ptr null
  br label %168

166:                                              ; preds = %56
  %167 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #8
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi { ptr, i32 } [ %167, %166 ], [ %165, %164 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #11
  br label %326

170:                                              ; preds = %57
  %171 = landingpad { ptr, i32 }
          catch ptr null
  br label %174

172:                                              ; preds = %58
  %173 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #8
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi { ptr, i32 } [ %173, %172 ], [ %171, %170 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #11
  br label %326

176:                                              ; preds = %59
  %177 = landingpad { ptr, i32 }
          catch ptr null
  br label %180

178:                                              ; preds = %60
  %179 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #8
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi { ptr, i32 } [ %179, %178 ], [ %177, %176 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #11
  br label %326

182:                                              ; preds = %61
  %183 = landingpad { ptr, i32 }
          catch ptr null
  br label %186

184:                                              ; preds = %62
  %185 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1014FunctionConcatD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #8
  br label %186

186:                                              ; preds = %184, %182
  %187 = phi { ptr, i32 } [ %185, %184 ], [ %183, %182 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  br label %326

188:                                              ; preds = %63
  %189 = landingpad { ptr, i32 }
          catch ptr null
  br label %192

190:                                              ; preds = %64
  %191 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #8
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi { ptr, i32 } [ %191, %190 ], [ %189, %188 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #11
  br label %326

194:                                              ; preds = %65
  %195 = landingpad { ptr, i32 }
          catch ptr null
  br label %198

196:                                              ; preds = %66
  %197 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1014FunctionStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #8
  br label %198

198:                                              ; preds = %196, %194
  %199 = phi { ptr, i32 } [ %197, %196 ], [ %195, %194 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #11
  br label %326

200:                                              ; preds = %67
  %201 = landingpad { ptr, i32 }
          catch ptr null
  br label %204

202:                                              ; preds = %68
  %203 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #8
  br label %204

204:                                              ; preds = %202, %200
  %205 = phi { ptr, i32 } [ %203, %202 ], [ %201, %200 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #11
  br label %326

206:                                              ; preds = %69
  %207 = landingpad { ptr, i32 }
          catch ptr null
  br label %210

208:                                              ; preds = %70
  %209 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #8
  br label %210

210:                                              ; preds = %208, %206
  %211 = phi { ptr, i32 } [ %209, %208 ], [ %207, %206 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #11
  br label %326

212:                                              ; preds = %71
  %213 = landingpad { ptr, i32 }
          catch ptr null
  br label %216

214:                                              ; preds = %72
  %215 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #8
  br label %216

216:                                              ; preds = %214, %212
  %217 = phi { ptr, i32 } [ %215, %214 ], [ %213, %212 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #11
  br label %326

218:                                              ; preds = %73
  %219 = landingpad { ptr, i32 }
          catch ptr null
  br label %222

220:                                              ; preds = %74
  %221 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1016FunctionContainsD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #8
  br label %222

222:                                              ; preds = %220, %218
  %223 = phi { ptr, i32 } [ %221, %220 ], [ %219, %218 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #11
  br label %326

224:                                              ; preds = %75
  %225 = landingpad { ptr, i32 }
          catch ptr null
  br label %228

226:                                              ; preds = %76
  %227 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #8
  br label %228

228:                                              ; preds = %226, %224
  %229 = phi { ptr, i32 } [ %227, %226 ], [ %225, %224 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #11
  br label %326

230:                                              ; preds = %77
  %231 = landingpad { ptr, i32 }
          catch ptr null
  br label %234

232:                                              ; preds = %78
  %233 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #8
  br label %234

234:                                              ; preds = %232, %230
  %235 = phi { ptr, i32 } [ %233, %232 ], [ %231, %230 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #11
  br label %326

236:                                              ; preds = %79
  %237 = landingpad { ptr, i32 }
          catch ptr null
  br label %240

238:                                              ; preds = %80
  %239 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1017FunctionSubstringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23) #8
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi { ptr, i32 } [ %239, %238 ], [ %237, %236 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #11
  br label %326

242:                                              ; preds = %81
  %243 = landingpad { ptr, i32 }
          catch ptr null
  br label %246

244:                                              ; preds = %82
  %245 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1017FunctionTranslateD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24) #8
  br label %246

246:                                              ; preds = %244, %242
  %247 = phi { ptr, i32 } [ %245, %244 ], [ %243, %242 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #11
  br label %326

248:                                              ; preds = %83
  %249 = landingpad { ptr, i32 }
          catch ptr null
  br label %252

250:                                              ; preds = %84
  %251 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %25) #8
  br label %252

252:                                              ; preds = %250, %248
  %253 = phi { ptr, i32 } [ %251, %250 ], [ %249, %248 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #11
  br label %326

254:                                              ; preds = %85
  %255 = landingpad { ptr, i32 }
          catch ptr null
  br label %258

256:                                              ; preds = %86
  %257 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #8
  br label %258

258:                                              ; preds = %256, %254
  %259 = phi { ptr, i32 } [ %257, %256 ], [ %255, %254 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #11
  br label %326

260:                                              ; preds = %87
  %261 = landingpad { ptr, i32 }
          catch ptr null
  br label %264

262:                                              ; preds = %88
  %263 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1018FunctionStartsWithD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27) #8
  br label %264

264:                                              ; preds = %262, %260
  %265 = phi { ptr, i32 } [ %263, %262 ], [ %261, %260 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #11
  br label %326

266:                                              ; preds = %89
  %267 = landingpad { ptr, i32 }
          catch ptr null
  br label %270

268:                                              ; preds = %90
  %269 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %28) #8
  br label %270

270:                                              ; preds = %268, %266
  %271 = phi { ptr, i32 } [ %269, %268 ], [ %267, %266 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %28) #11
  br label %326

272:                                              ; preds = %91
  %273 = landingpad { ptr, i32 }
          catch ptr null
  br label %276

274:                                              ; preds = %92
  %275 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1020FunctionNamespaceURID1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29) #8
  br label %276

276:                                              ; preds = %274, %272
  %277 = phi { ptr, i32 } [ %275, %274 ], [ %273, %272 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #11
  br label %326

278:                                              ; preds = %93
  %279 = landingpad { ptr, i32 }
          catch ptr null
  br label %282

280:                                              ; preds = %94
  %281 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %30) #8
  br label %282

282:                                              ; preds = %280, %278
  %283 = phi { ptr, i32 } [ %281, %280 ], [ %279, %278 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %30) #11
  br label %326

284:                                              ; preds = %95
  %285 = landingpad { ptr, i32 }
          catch ptr null
  br label %288

286:                                              ; preds = %96
  %287 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1022FunctionNormalizeSpaceD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31) #8
  br label %288

288:                                              ; preds = %286, %284
  %289 = phi { ptr, i32 } [ %287, %286 ], [ %285, %284 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #11
  br label %326

290:                                              ; preds = %97
  %291 = landingpad { ptr, i32 }
          catch ptr null
  br label %294

292:                                              ; preds = %98
  %293 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1022FunctionSubstringAfterD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32) #8
  br label %294

294:                                              ; preds = %292, %290
  %295 = phi { ptr, i32 } [ %293, %292 ], [ %291, %290 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #11
  br label %326

296:                                              ; preds = %99
  %297 = landingpad { ptr, i32 }
          catch ptr null
  br label %300

298:                                              ; preds = %100
  %299 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %33) #8
  br label %300

300:                                              ; preds = %298, %296
  %301 = phi { ptr, i32 } [ %299, %298 ], [ %297, %296 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %33) #11
  br label %326

302:                                              ; preds = %101
  %303 = landingpad { ptr, i32 }
          catch ptr null
  br label %306

304:                                              ; preds = %102
  %305 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1023FunctionSubstringBeforeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %34) #8
  br label %306

306:                                              ; preds = %304, %302
  %307 = phi { ptr, i32 } [ %305, %304 ], [ %303, %302 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #11
  br label %326

308:                                              ; preds = %103
  %309 = landingpad { ptr, i32 }
          catch ptr null
  br label %312

310:                                              ; preds = %104
  %311 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %35) #8
  br label %312

312:                                              ; preds = %310, %308
  %313 = phi { ptr, i32 } [ %311, %310 ], [ %309, %308 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %35) #11
  br label %326

314:                                              ; preds = %105
  %315 = landingpad { ptr, i32 }
          catch ptr null
  br label %318

316:                                              ; preds = %106
  %317 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %36) #8
  br label %318

318:                                              ; preds = %316, %314
  %319 = phi { ptr, i32 } [ %317, %316 ], [ %315, %314 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %36) #11
  br label %326

320:                                              ; preds = %107
  %321 = landingpad { ptr, i32 }
          catch ptr null
  br label %324

322:                                              ; preds = %108
  %323 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %37) #8
  br label %324

324:                                              ; preds = %322, %320
  %325 = phi { ptr, i32 } [ %323, %322 ], [ %321, %320 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %37) #11
  br label %326

326:                                              ; preds = %324, %318, %312, %306, %300, %294, %288, %282, %276, %270, %264, %258, %252, %246, %240, %234, %228, %222, %216, %210, %204, %198, %192, %186, %180, %174, %168, %162, %156, %150, %144, %138, %132, %126, %120, %114
  %327 = phi { ptr, i32 } [ %325, %324 ], [ %319, %318 ], [ %313, %312 ], [ %307, %306 ], [ %301, %300 ], [ %295, %294 ], [ %289, %288 ], [ %283, %282 ], [ %277, %276 ], [ %271, %270 ], [ %265, %264 ], [ %259, %258 ], [ %253, %252 ], [ %247, %246 ], [ %241, %240 ], [ %235, %234 ], [ %229, %228 ], [ %223, %222 ], [ %217, %216 ], [ %211, %210 ], [ %205, %204 ], [ %199, %198 ], [ %193, %192 ], [ %187, %186 ], [ %181, %180 ], [ %175, %174 ], [ %169, %168 ], [ %163, %162 ], [ %157, %156 ], [ %151, %150 ], [ %145, %144 ], [ %139, %138 ], [ %133, %132 ], [ %127, %126 ], [ %121, %120 ], [ %115, %114 ]
  %328 = extractvalue { ptr, i32 } %327, 0
  %329 = call ptr @__cxa_begin_catch(ptr %328) #11
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable12DestroyTableEv(ptr noundef nonnull align 8 dereferenceable(304) %0) #10
          to label %330 unwind label %331

330:                                              ; preds = %326
  invoke void @__cxa_rethrow() #12
          to label %337 unwind label %331

331:                                              ; preds = %330, %326
  %332 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %333 unwind label %334

333:                                              ; preds = %331
  resume { ptr, i32 } %332

334:                                              ; preds = %331
  %335 = landingpad { ptr, i32 }
          catch ptr null
  %336 = extractvalue { ptr, i32 } %335, 0
  call void @__clang_call_terminate(ptr %336) #13
  unreachable

337:                                              ; preds = %330
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1018XPathFunctionTableD2Ev(ptr noundef nonnull align 8 dereferenceable(304) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable12DestroyTableEv(ptr noundef nonnull align 8 dereferenceable(304) %0) #10
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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018XPathFunctionTable12DestroyTableEv(ptr noundef nonnull align 8 dereferenceable(304) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %2 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathFunctionTable", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathFunctionTable", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %0, align 8, !tbaa !114
  call void @_ZN11xalanc_1_1013DeleteFunctorINS_8FunctionEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  %6 = load ptr, ptr %2, align 8
  %7 = invoke ptr @_ZSt8for_eachIPPKN11xalanc_1_108FunctionENS0_13DeleteFunctorIS1_EEET0_T_S8_S7_(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr %6) #10
          to label %8 unwind label %9

8:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %3, i8 0, i64 288, i1 false)
  br label %13

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = call ptr @__cxa_begin_catch(ptr %11) #11
  call void @__cxa_end_catch()
  br label %13

13:                                               ; preds = %9, %8
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr nocapture noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !115 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = tail call noundef i32 @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKt(ptr noundef %1) #10
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %17, !prof !116

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #11
  %8 = load ptr, ptr %0, align 8, !tbaa !114
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  %9 = call ptr @__cxa_allocate_exception(i64 112) #11
  invoke void @_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedC2EPKtRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %4) #10
          to label %10 unwind label %11

10:                                               ; preds = %7
  invoke void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xalanc_1_1034XPathExceptionFunctionNotSupportedE, ptr nonnull @_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedD2Ev) #12
          to label %35 unwind label %13

11:                                               ; preds = %7
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %9) #11
  br label %15

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi { ptr, i32 } [ %14, %13 ], [ %12, %11 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11
  resume { ptr, i32 } %16

17:                                               ; preds = %3
  %18 = sext i32 %5 to i64
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPathFunctionTable", ptr %0, i64 0, i32 1, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !117
  %21 = icmp eq ptr %20, null
  %22 = load ptr, ptr %0, align 8, !tbaa !114
  %23 = load ptr, ptr %2, align 8, !tbaa !118
  %24 = getelementptr inbounds ptr, ptr %23, i64 7
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %22) #10
  store ptr %26, ptr %19, align 8, !tbaa !117
  br i1 %21, label %34, label %27, !prof !120

27:                                               ; preds = %17
  %28 = load ptr, ptr %20, align 8, !tbaa !118
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %20) #8
  %30 = load ptr, ptr %0, align 8, !tbaa !114
  %31 = load ptr, ptr %30, align 8, !tbaa !118
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #10
  br label %34

34:                                               ; preds = %17, %27
  ret void

35:                                               ; preds = %10
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKt(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !121 {
  %2 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #10
  %3 = tail call noundef i32 @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKtj(ptr noundef %0, i32 noundef %2) #10
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 !prof !122 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKtj(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !123 {
  br label %3

3:                                                ; preds = %2, %28
  %4 = phi ptr [ @_ZN11xalanc_1_1018XPathFunctionTable15s_functionNamesE, %2 ], [ %30, %28 ]
  %5 = phi ptr [ getelementptr inbounds ([36 x %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry"], ptr @_ZN11xalanc_1_1018XPathFunctionTable15s_functionNamesE, i64 0, i64 35, i32 0), %2 ], [ %29, %28 ]
  %6 = ptrtoint ptr %5 to i64
  %7 = ptrtoint ptr %4 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 4
  %10 = sdiv i64 %9, 2
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry", ptr %4, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !124
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry", ptr %4, i64 %10, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !127
  %15 = tail call noundef i32 @_ZN11xalanc_1_107compareEPKtjS1_j(ptr noundef %0, i32 noundef %1, ptr noundef %12, i32 noundef %14) #10
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19, !prof !128

17:                                               ; preds = %3
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry", ptr %11, i64 -1
  br label %28

19:                                               ; preds = %3
  %20 = icmp eq i32 %15, 0
  br i1 %20, label %23, label %21, !prof !129

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry", ptr %11, i64 1
  br label %28

23:                                               ; preds = %19
  %24 = ptrtoint ptr %11 to i64
  %25 = sub i64 %24, ptrtoint (ptr @_ZN11xalanc_1_1018XPathFunctionTable15s_functionNamesE to i64)
  %26 = lshr exact i64 %25, 4
  %27 = trunc i64 %26 to i32
  br label %32

28:                                               ; preds = %17, %21
  %29 = phi ptr [ %18, %17 ], [ %5, %21 ]
  %30 = phi ptr [ %4, %17 ], [ %22, %21 ]
  %31 = icmp ugt ptr %30, %29
  br i1 %31, label %32, label %3, !prof !130, !llvm.loop !131

32:                                               ; preds = %28, %23
  %33 = phi i32 [ %27, %23 ], [ -1, %28 ]
  ret i32 %33
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !134
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !137

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #10
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !138
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #10
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !139 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !140 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !141

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #10
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !142, !llvm.loop !143

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !144 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !138
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !145 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !140 {
  %3 = load ptr, ptr %0, align 8, !tbaa !146
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #0 comdat align 2 !prof !147 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !138
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !149
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1018XPathFunctionTable17UninstallFunctionEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !150 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKt(ptr noundef %1) #10
  %4 = icmp ne i32 %3, -1
  br i1 %4, label %5, label %17, !prof !151

5:                                                ; preds = %2
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathFunctionTable", ptr %0, i64 0, i32 1, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  store ptr null, ptr %7, align 8, !tbaa !117
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10, !prof !152

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 8, !tbaa !118
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  %13 = load ptr, ptr %0, align 8, !tbaa !114
  %14 = load ptr, ptr %13, align 8, !tbaa !118
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %8) #10
  br label %17

17:                                               ; preds = %5, %10, %2
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1010FunctionIDC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1010FunctionIDD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !153 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !118
  %3 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !154
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012FunctionLangC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1012FunctionLangD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FunctionConcatC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1014FunctionConcatD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FunctionStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1014FunctionStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016FunctionContainsC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1016FunctionContainsD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017FunctionSubstringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017FunctionSubstringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017FunctionTranslateC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017FunctionTranslateD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018FunctionStartsWithC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1018FunctionStartsWithD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1020FunctionNamespaceURIC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1020FunctionNamespaceURID1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022FunctionNormalizeSpaceC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1022FunctionNormalizeSpaceD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022FunctionSubstringAfterC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1022FunctionSubstringAfterD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1023FunctionSubstringBeforeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1023FunctionSubstringBeforeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022FunctionNotImplementedD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 1, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1022FunctionNotImplemented5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %3 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %4 = load ptr, ptr %1, align 8, !tbaa !118
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 16) #10
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %7) #10
  %8 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  %9 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !154
  invoke void @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %10) #10
          to label %11 unwind label %14

11:                                               ; preds = %2
  %12 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
          to label %13 unwind label %14

13:                                               ; preds = %11
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret ptr %8

14:                                               ; preds = %11, %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022FunctionNotImplemented8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 comdat align 2 !prof !106 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !154
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 19, ptr noundef %4, ptr noundef null, ptr noundef null, ptr noundef null) #10
  ret ptr %5
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !157 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !157 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !158
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !157 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #10
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !157 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !117
  store ptr %2, ptr %5, align 8, !tbaa !117
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1022FunctionNotImplementedEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1022FunctionNotImplementedEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !157 {
  %4 = load ptr, ptr %1, align 8, !tbaa !117
  store ptr %4, ptr %0, align 8, !tbaa !160
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !117
  store ptr %6, ptr %5, align 8, !tbaa !158
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !161 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !157 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  store ptr %1, ptr %0, align 8, !tbaa !160
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !158
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !157 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  br i1 %2, label %3, label %10, !prof !162

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !160
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !158
  %7 = load ptr, ptr %4, align 8, !tbaa !118
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #10
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !157 {
  %2 = load ptr, ptr %0, align 8, !tbaa !160
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt8for_eachIPPKN11xalanc_1_108FunctionENS0_13DeleteFunctorIS1_EEET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !107 {
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  store ptr %2, ptr %4, align 8
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %13, label %6, !prof !163

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %0, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  call void @_ZNK11xalanc_1_1013DeleteFunctorINS_8FunctionEEclEPKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #10
  %9 = getelementptr inbounds ptr, ptr %7, i64 1
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %6, !prof !164, !llvm.loop !165

11:                                               ; preds = %6
  %12 = load ptr, ptr %4, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %2, %3 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013DeleteFunctorINS_8FunctionEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !107 {
  store ptr %1, ptr %0, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1013DeleteFunctorINS_8FunctionEEclEPKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !166 {
  %3 = alloca %"struct.xalanc_1_10::XalanDestroyFunctor", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  tail call void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_8FunctionEEENS_19XalanDestroyFunctorIT_EEPKS3_(ptr noundef %1) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !167
  call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8FunctionEEclEPKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_8FunctionEEENS_19XalanDestroyFunctorIT_EEPKS3_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !166 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8FunctionEEclEPKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !166 {
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8FunctionEEclEPS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8FunctionEEclEPS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !166 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5, !prof !169

5:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8FunctionEEclERS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %6 = load ptr, ptr %2, align 8, !tbaa !118
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %1) #10
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8FunctionEEclERS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !170 {
  %3 = load ptr, ptr %1, align 8, !tbaa !118
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_107compareEPKtjS1_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableC2ERKNS_14XalanDOMStringERS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !106 {
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 20, ptr noundef nonnull align 8 dereferenceable(36) %1) #10
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %2) #10
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1034XPathExceptionFunctionNotAvailableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !118
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !171 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !172 {
  %2 = load ptr, ptr %0, align 8, !tbaa !146
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableC2ERKNS_14XalanDOMStringERKN11xercesc_2_77LocatorERS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #1 align 2 !prof !106 {
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 20, ptr noundef nonnull align 8 dereferenceable(36) %1) #10
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %3) #10
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKN11xercesc_2_77LocatorERKNS_14XalanDOMStringERNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1034XPathExceptionFunctionNotAvailableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !118
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKN11xercesc_2_77LocatorERKNS_14XalanDOMStringERNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !106 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #8
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedC2EPKtRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !106 {
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 21, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #10
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %2) #10
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1034XPathExceptionFunctionNotSupportedE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !118
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !106 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #8
  ret void
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { builtin nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!105}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!36 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1010FunctionIDC1Ev, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE, i64 36}
!38 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1010FunctionIDD1Ev, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt, i64 24}
!40 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 24}
!41 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1012FunctionLangC1Ev, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1012FunctionLangD1Ev, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1014FunctionConcatC1Ev, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1014FunctionConcatD1Ev, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1014FunctionStringC1Ev, i64 1}
!46 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1014FunctionStringD1Ev, i64 1}
!47 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1016FunctionContainsC1Ev, i64 1}
!48 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1016FunctionContainsD1Ev, i64 1}
!49 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1017FunctionSubstringC1Ev, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1017FunctionSubstringD1Ev, i64 1}
!51 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1017FunctionTranslateC1Ev, i64 1}
!52 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1017FunctionTranslateD1Ev, i64 1}
!53 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1018FunctionStartsWithC1Ev, i64 1}
!54 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1018FunctionStartsWithD1Ev, i64 1}
!55 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1020FunctionNamespaceURIC1Ev, i64 1}
!56 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1020FunctionNamespaceURID1Ev, i64 1}
!57 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1022FunctionNormalizeSpaceC1Ev, i64 1}
!58 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1022FunctionNormalizeSpaceD1Ev, i64 1}
!59 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1022FunctionSubstringAfterC1Ev, i64 1}
!60 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1022FunctionSubstringAfterD1Ev, i64 1}
!61 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1023FunctionSubstringBeforeC1Ev, i64 1}
!62 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1023FunctionSubstringBeforeD1Ev, i64 1}
!63 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable12DestroyTableEv, ptr @_ZN11xalanc_1_1013DeleteFunctorINS_8FunctionEEC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!64 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable12DestroyTableEv, ptr @_ZSt8for_eachIPPKN11xalanc_1_108FunctionENS0_13DeleteFunctorIS1_EEET0_T_S8_S7_, i64 1}
!65 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE, ptr @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKt, i64 45}
!66 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!67 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE, ptr @__cxa_allocate_exception, i64 1}
!68 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE, ptr @_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedC2EPKtRNS_14XalanDOMStringE, i64 1}
!69 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 1}
!70 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 54}
!71 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKt, ptr @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKtj, i64 54}
!72 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!73 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKtj, ptr @_ZN11xalanc_1_107compareEPKtjS1_j, i64 538}
!74 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!75 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!76 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!77 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!78 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!79 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!80 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!81 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!82 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!83 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!84 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable17UninstallFunctionEPKt, ptr @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKt, i64 9}
!85 = !{ptr @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 48}
!86 = !{ptr @_ZNK11xalanc_1_1022FunctionNotImplemented5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, i64 24}
!87 = !{ptr @_ZNK11xalanc_1_1022FunctionNotImplemented5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE3getEv, i64 24}
!88 = !{ptr @_ZNK11xalanc_1_1022FunctionNotImplemented5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1022FunctionNotImplementedC2EPKt, i64 24}
!89 = !{ptr @_ZNK11xalanc_1_1022FunctionNotImplemented5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE7releaseEv, i64 24}
!90 = !{ptr @_ZNK11xalanc_1_1022FunctionNotImplemented5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EED2Ev, i64 24}
!91 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, i64 24}
!92 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE7releaseEv, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, i64 24}
!93 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EED2Ev, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData10deallocateEv, i64 24}
!94 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1022FunctionNotImplementedEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, i64 24}
!95 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData10invariantsEv, i64 24}
!96 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData10invariantsEv, i64 48}
!97 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData10invariantsEv, i64 24}
!98 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22FunctionNotImplementedELb0EE17MemMgrAutoPtrData12isInitilizedEv, i64 24}
!99 = !{ptr @_ZSt8for_eachIPPKN11xalanc_1_108FunctionENS0_13DeleteFunctorIS1_EEET0_T_S8_S7_, ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_8FunctionEEclEPKS1_, i64 18}
!100 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_8FunctionEEclEPKS1_, ptr @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_8FunctionEEENS_19XalanDestroyFunctorIT_EEPKS3_, i64 36}
!101 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_8FunctionEEclEPKS1_, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8FunctionEEclEPKS1_RN11xercesc_2_713MemoryManagerE, i64 36}
!102 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8FunctionEEclEPKS1_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8FunctionEEclEPS1_RN11xercesc_2_713MemoryManagerE, i64 36}
!103 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8FunctionEEclEPS1_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8FunctionEEclERS1_, i64 27}
!104 = !{ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv, i64 832918}
!105 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!106 = !{!"function_entry_count", i64 0}
!107 = !{!"function_entry_count", i64 1}
!108 = !{!109, !110, i64 296}
!109 = !{!"_ZTSN11xalanc_1_1018XPathFunctionTableE", !110, i64 0, !111, i64 8, !110, i64 296}
!110 = !{!"any pointer", !111, i64 0}
!111 = !{!"omnipotent char", !112, i64 0}
!112 = !{!"Simple C++ TBAA"}
!113 = !{!"branch_weights", i32 1, i32 2}
!114 = !{!109, !110, i64 0}
!115 = !{!"function_entry_count", i64 45}
!116 = !{!"branch_weights", i32 1, i32 46}
!117 = !{!110, !110, i64 0}
!118 = !{!119, !119, i64 0}
!119 = !{!"vtable pointer", !112, i64 0}
!120 = !{!"branch_weights", i32 37, i32 10}
!121 = !{!"function_entry_count", i64 54}
!122 = !{!"function_entry_count", i64 43398227}
!123 = !{!"function_entry_count", i64 134}
!124 = !{!125, !110, i64 0}
!125 = !{!"_ZTSN11xalanc_1_1018XPathFunctionTable22FunctionNameTableEntryE", !110, i64 0, !126, i64 8}
!126 = !{!"int", !111, i64 0}
!127 = !{!125, !126, i64 8}
!128 = !{!"branch_weights", i32 189, i32 349}
!129 = !{!"branch_weights", i32 129, i32 221}
!130 = !{!"branch_weights", i32 7, i32 530}
!131 = distinct !{!131, !132}
!132 = !{!"llvm.loop.mustprogress"}
!133 = !{!"function_entry_count", i64 128698679}
!134 = !{!135, !136, i64 16}
!135 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !110, i64 0, !136, i64 8, !136, i64 16, !110, i64 24}
!136 = !{!"long", !111, i64 0}
!137 = !{!"branch_weights", i32 43398290, i32 85300391}
!138 = !{!135, !110, i64 24}
!139 = !{!"function_entry_count", i64 6521798503}
!140 = !{!"function_entry_count", i64 85300390}
!141 = !{!"branch_weights", i32 1, i32 12185770}
!142 = !{!"branch_weights", i32 12185770, i32 -193930395}
!143 = distinct !{!143, !132}
!144 = !{!"function_entry_count", i64 227375739}
!145 = !{!"function_entry_count", i64 568333389}
!146 = !{!135, !110, i64 0}
!147 = !{!"function_entry_count", i64 30137156670}
!148 = !{!"function_entry_count", i64 825654975}
!149 = !{!135, !136, i64 8}
!150 = !{!"function_entry_count", i64 9}
!151 = !{!"branch_weights", i32 10, i32 1}
!152 = !{!"branch_weights", i32 1, i32 10}
!153 = !{!"function_entry_count", i64 48}
!154 = !{!155, !110, i64 8}
!155 = !{!"_ZTSN11xalanc_1_1022FunctionNotImplementedE", !156, i64 0, !110, i64 8}
!156 = !{!"_ZTSN11xalanc_1_108FunctionE"}
!157 = !{!"function_entry_count", i64 24}
!158 = !{!159, !110, i64 8}
!159 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1022FunctionNotImplementedEE", !110, i64 0, !110, i64 8}
!160 = !{!159, !110, i64 0}
!161 = !{!"function_entry_count", i64 96}
!162 = !{!"branch_weights", i32 1, i32 25}
!163 = !{!"branch_weights", i32 1, i32 127}
!164 = !{!"branch_weights", i32 127, i32 2241}
!165 = distinct !{!165, !132}
!166 = !{!"function_entry_count", i64 36}
!167 = !{!168, !110, i64 0}
!168 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_8FunctionEEE", !110, i64 0}
!169 = !{!"branch_weights", i32 10, i32 28}
!170 = !{!"function_entry_count", i64 27}
!171 = !{!"function_entry_count", i64 832918}
!172 = !{!"function_entry_count", i64 833358}

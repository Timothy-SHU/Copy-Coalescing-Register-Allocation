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
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }

$__clang_call_terminate = comdat any

$_ZNK11xalanc_1_1019XalanXPathException7getTypeEv = comdat any

$_ZN11xalanc_1_1022FunctionNotImplementedD0Ev = comdat any

$_ZNK11xalanc_1_1022FunctionNotImplemented5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1022FunctionNotImplemented8getErrorERNS_14XalanDOMStringE = comdat any

$_ZTVN11xalanc_1_1022FunctionNotImplementedE = comdat any

$_ZTSN11xalanc_1_1022FunctionNotImplementedE = comdat any

$_ZTIN11xalanc_1_1022FunctionNotImplementedE = comdat any

@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1034XPathExceptionFunctionNotSupportedE = dso_local constant [52 x i8] c"N11xalanc_1_1034XPathExceptionFunctionNotSupportedE\00", align 1
@_ZTIN11xalanc_1_1019XalanXPathExceptionE = external constant ptr
@_ZTIN11xalanc_1_1034XPathExceptionFunctionNotSupportedE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1034XPathExceptionFunctionNotSupportedE, ptr @_ZTIN11xalanc_1_1019XalanXPathExceptionE }, align 8
@_ZTVN11xalanc_1_1034XPathExceptionFunctionNotAvailableE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1034XPathExceptionFunctionNotAvailableE, ptr @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableD2Ev, ptr @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableD0Ev, ptr @_ZNK11xalanc_1_1019XalanXPathException7getTypeEv] }, align 8
@_ZTVN11xalanc_1_1034XPathExceptionFunctionNotSupportedE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1034XPathExceptionFunctionNotSupportedE, ptr @_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedD2Ev, ptr @_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedD0Ev, ptr @_ZNK11xalanc_1_1019XalanXPathException7getTypeEv] }, align 8
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
@_ZTSN11xalanc_1_1034XPathExceptionFunctionNotAvailableE = dso_local constant [52 x i8] c"N11xalanc_1_1034XPathExceptionFunctionNotAvailableE\00", align 1
@_ZTIN11xalanc_1_1034XPathExceptionFunctionNotAvailableE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1034XPathExceptionFunctionNotAvailableE, ptr @_ZTIN11xalanc_1_1019XalanXPathExceptionE }, align 8
@_ZTVN11xalanc_1_1022FunctionNotImplementedE = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022FunctionNotImplementedE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1022FunctionNotImplementedD0Ev, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1022FunctionNotImplemented5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1022FunctionNotImplemented8getErrorERNS_14XalanDOMStringE] }, comdat, align 8
@_ZTSN11xalanc_1_1022FunctionNotImplementedE = linkonce_odr dso_local constant [40 x i8] c"N11xalanc_1_1022FunctionNotImplementedE\00", comdat, align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1022FunctionNotImplementedE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022FunctionNotImplementedE, ptr @_ZTIN11xalanc_1_108FunctionE }, comdat, align 8
@_ZN11xalanc_1_1019XalanXPathException6m_typeE = external constant [0 x i16], align 2

@_ZN11xalanc_1_1018XPathFunctionTableC1Eb = dso_local unnamed_addr alias void (ptr, i1), ptr @_ZN11xalanc_1_1018XPathFunctionTableC2Eb
@_ZN11xalanc_1_1018XPathFunctionTableD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1018XPathFunctionTableD2Ev
@_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableC1ERKNS_14XalanDOMStringERS1_ = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableC2ERKNS_14XalanDOMStringERS1_
@_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableC1ERKNS_14XalanDOMStringERKN11xercesc_2_77LocatorERS1_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableC2ERKNS_14XalanDOMStringERKN11xercesc_2_77LocatorERS1_
@_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableD2Ev
@_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedC1EPKtRNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedC2EPKtRNS_14XalanDOMStringE
@_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathFunctionTableC2Eb(ptr noundef nonnull align 8 dereferenceable(304) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathFunctionTable", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathFunctionTable", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathFunctionTable", ptr %0, i64 0, i32 1, i64 35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %0, i8 0, i64 296, i1 false)
  store ptr %5, ptr %4, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %3, i8 0, i64 288, i1 false)
  br i1 %1, label %6, label %7, !prof !77

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv(ptr noundef nonnull align 8 dereferenceable(304) %0)
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv(ptr nocapture noundef nonnull align 8 dereferenceable(304) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  invoke void @_ZN11xalanc_1_1010FunctionIDC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %38 unwind label %134, !prof !78

38:                                               ; preds = %1
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable4s_idE, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %39 unwind label %136, !prof !78

39:                                               ; preds = %38
  call void @_ZN11xalanc_1_1010FunctionIDD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %40 unwind label %140, !prof !78

40:                                               ; preds = %39
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !79
  %41 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %3, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable5s_keyE, ptr %41, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable5s_keyE, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %42 unwind label %142, !prof !78

42:                                               ; preds = %40
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %43 unwind label %146, !prof !78

43:                                               ; preds = %42
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !79
  %44 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %4, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable5s_notE, ptr %44, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable5s_notE, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %45 unwind label %148, !prof !78

45:                                               ; preds = %43
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %46 unwind label %152, !prof !78

46:                                               ; preds = %45
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !79
  %47 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %5, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable5s_sumE, ptr %47, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable5s_sumE, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %48 unwind label %154, !prof !78

48:                                               ; preds = %46
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  invoke void @_ZN11xalanc_1_1012FunctionLangC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %49 unwind label %158, !prof !78

49:                                               ; preds = %48
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable6s_langE, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %50 unwind label %160, !prof !78

50:                                               ; preds = %49
  call void @_ZN11xalanc_1_1012FunctionLangD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %51 unwind label %164, !prof !78

51:                                               ; preds = %50
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !79
  %52 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %7, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable6s_lastE, ptr %52, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable6s_lastE, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %53 unwind label %166, !prof !78

53:                                               ; preds = %51
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %54 unwind label %170, !prof !78

54:                                               ; preds = %53
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %8, align 8, !tbaa !79
  %55 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %8, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable6s_nameE, ptr %55, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable6s_nameE, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %56 unwind label %172, !prof !78

56:                                               ; preds = %54
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %57 unwind label %176, !prof !78

57:                                               ; preds = %56
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %9, align 8, !tbaa !79
  %58 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %9, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable6s_trueE, ptr %58, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable6s_trueE, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %59 unwind label %178, !prof !78

59:                                               ; preds = %57
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %60 unwind label %182, !prof !78

60:                                               ; preds = %59
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %10, align 8, !tbaa !79
  %61 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %10, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable7s_countE, ptr %61, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable7s_countE, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %62 unwind label %184, !prof !78

62:                                               ; preds = %60
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %63 unwind label %188, !prof !78

63:                                               ; preds = %62
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %11, align 8, !tbaa !79
  %64 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %11, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable7s_falseE, ptr %64, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable7s_falseE, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %65 unwind label %190, !prof !78

65:                                               ; preds = %63
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %66 unwind label %194, !prof !78

66:                                               ; preds = %65
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %12, align 8, !tbaa !79
  %67 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %12, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable7s_floorE, ptr %67, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable7s_floorE, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %68 unwind label %196, !prof !78

68:                                               ; preds = %66
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %69 unwind label %200, !prof !78

69:                                               ; preds = %68
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %13, align 8, !tbaa !79
  %70 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %13, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable7s_roundE, ptr %70, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable7s_roundE, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %71 unwind label %202, !prof !78

71:                                               ; preds = %69
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  invoke void @_ZN11xalanc_1_1014FunctionConcatC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %72 unwind label %206, !prof !78

72:                                               ; preds = %71
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable8s_concatE, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %73 unwind label %208, !prof !78

73:                                               ; preds = %72
  call void @_ZN11xalanc_1_1014FunctionConcatD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %74 unwind label %212, !prof !78

74:                                               ; preds = %73
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %15, align 8, !tbaa !79
  %75 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %15, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable8s_numberE, ptr %75, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable8s_numberE, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %76 unwind label %214, !prof !78

76:                                               ; preds = %74
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #9
  invoke void @_ZN11xalanc_1_1014FunctionStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %77 unwind label %218, !prof !78

77:                                               ; preds = %76
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable8s_stringE, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %78 unwind label %220, !prof !78

78:                                               ; preds = %77
  call void @_ZN11xalanc_1_1014FunctionStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %79 unwind label %224, !prof !78

79:                                               ; preds = %78
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %17, align 8, !tbaa !79
  %80 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %17, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable9s_booleanE, ptr %80, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable9s_booleanE, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %81 unwind label %226, !prof !78

81:                                               ; preds = %79
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %82 unwind label %230, !prof !78

82:                                               ; preds = %81
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %18, align 8, !tbaa !79
  %83 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %18, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable9s_ceilingE, ptr %83, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable9s_ceilingE, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %84 unwind label %232, !prof !78

84:                                               ; preds = %82
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %85 unwind label %236, !prof !78

85:                                               ; preds = %84
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %19, align 8, !tbaa !79
  %86 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %19, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable9s_currentE, ptr %86, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable9s_currentE, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %87 unwind label %238, !prof !78

87:                                               ; preds = %85
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #9
  invoke void @_ZN11xalanc_1_1016FunctionContainsC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %88 unwind label %242, !prof !78

88:                                               ; preds = %87
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable10s_containsE, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %89 unwind label %244, !prof !78

89:                                               ; preds = %88
  call void @_ZN11xalanc_1_1016FunctionContainsD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %90 unwind label %248, !prof !78

90:                                               ; preds = %89
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %21, align 8, !tbaa !79
  %91 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %21, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable10s_documentE, ptr %91, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable10s_documentE, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %92 unwind label %250, !prof !78

92:                                               ; preds = %90
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %93 unwind label %254, !prof !78

93:                                               ; preds = %92
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %22, align 8, !tbaa !79
  %94 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %22, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable10s_positionE, ptr %94, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable10s_positionE, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %95 unwind label %256, !prof !78

95:                                               ; preds = %93
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #9
  invoke void @_ZN11xalanc_1_1017FunctionSubstringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %96 unwind label %260, !prof !78

96:                                               ; preds = %95
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable11s_substringE, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %97 unwind label %262, !prof !78

97:                                               ; preds = %96
  call void @_ZN11xalanc_1_1017FunctionSubstringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #9
  invoke void @_ZN11xalanc_1_1017FunctionTranslateC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %98 unwind label %266, !prof !78

98:                                               ; preds = %97
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable11s_translateE, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %99 unwind label %268, !prof !78

99:                                               ; preds = %98
  call void @_ZN11xalanc_1_1017FunctionTranslateD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %25) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %100 unwind label %272, !prof !78

100:                                              ; preds = %99
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %25, align 8, !tbaa !79
  %101 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %25, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable11s_localNameE, ptr %101, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable11s_localNameE, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %102 unwind label %274, !prof !78

102:                                              ; preds = %100
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %25) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %103 unwind label %278, !prof !78

103:                                              ; preds = %102
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %26, align 8, !tbaa !79
  %104 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %26, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable12s_generateIdE, ptr %104, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable12s_generateIdE, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %105 unwind label %280, !prof !78

105:                                              ; preds = %103
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #9
  invoke void @_ZN11xalanc_1_1018FunctionStartsWithC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %106 unwind label %284, !prof !78

106:                                              ; preds = %105
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable12s_startsWithE, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %107 unwind label %286, !prof !78

107:                                              ; preds = %106
  call void @_ZN11xalanc_1_1018FunctionStartsWithD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %28) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %108 unwind label %290, !prof !78

108:                                              ; preds = %107
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %28, align 8, !tbaa !79
  %109 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %28, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable14s_formatNumberE, ptr %109, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable14s_formatNumberE, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %110 unwind label %292, !prof !78

110:                                              ; preds = %108
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %28) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %28) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #9
  invoke void @_ZN11xalanc_1_1020FunctionNamespaceURIC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %111 unwind label %296, !prof !78

111:                                              ; preds = %110
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable14s_namespaceUriE, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %112 unwind label %298, !prof !78

112:                                              ; preds = %111
  call void @_ZN11xalanc_1_1020FunctionNamespaceURID1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %30) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %113 unwind label %302, !prof !78

113:                                              ; preds = %112
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %30, align 8, !tbaa !79
  %114 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %30, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable14s_stringLengthE, ptr %114, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable14s_stringLengthE, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %115 unwind label %304, !prof !78

115:                                              ; preds = %113
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %30) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %30) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #9
  invoke void @_ZN11xalanc_1_1022FunctionNormalizeSpaceC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %116 unwind label %308, !prof !78

116:                                              ; preds = %115
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable16s_normalizeSpaceE, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %117 unwind label %310, !prof !78

117:                                              ; preds = %116
  call void @_ZN11xalanc_1_1022FunctionNormalizeSpaceD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #9
  invoke void @_ZN11xalanc_1_1022FunctionSubstringAfterC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %118 unwind label %314, !prof !78

118:                                              ; preds = %117
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable16s_substringAfterE, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %119 unwind label %316, !prof !78

119:                                              ; preds = %118
  call void @_ZN11xalanc_1_1022FunctionSubstringAfterD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %33) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %120 unwind label %320, !prof !78

120:                                              ; preds = %119
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %33, align 8, !tbaa !79
  %121 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %33, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable16s_systemPropertyE, ptr %121, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable16s_systemPropertyE, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %122 unwind label %322, !prof !78

122:                                              ; preds = %120
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %33) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %33) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34) #9
  invoke void @_ZN11xalanc_1_1023FunctionSubstringBeforeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %123 unwind label %326, !prof !78

123:                                              ; preds = %122
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable17s_substringBeforeE, ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %124 unwind label %328, !prof !78

124:                                              ; preds = %123
  call void @_ZN11xalanc_1_1023FunctionSubstringBeforeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %34) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %35) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %125 unwind label %332, !prof !78

125:                                              ; preds = %124
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %35, align 8, !tbaa !79
  %126 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %35, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable18s_elementAvailableE, ptr %126, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable18s_elementAvailableE, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %127 unwind label %334, !prof !78

127:                                              ; preds = %125
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %35) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %35) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %36) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %128 unwind label %338, !prof !78

128:                                              ; preds = %127
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %36, align 8, !tbaa !79
  %129 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %36, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable19s_functionAvailableE, ptr %129, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable19s_functionAvailableE, ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %130 unwind label %340, !prof !78

130:                                              ; preds = %128
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %36) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %36) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %37) #9
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %131 unwind label %344, !prof !78

131:                                              ; preds = %130
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %37, align 8, !tbaa !79
  %132 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %37, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1018XPathFunctionTable19s_unparsedEntityUriE, ptr %132, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable19s_unparsedEntityUriE, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %133 unwind label %346, !prof !78

133:                                              ; preds = %131
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %37) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %37) #9
  ret void

134:                                              ; preds = %1
  %135 = landingpad { ptr, i32 }
          catch ptr null
  br label %138

136:                                              ; preds = %38
  %137 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1010FunctionIDD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi { ptr, i32 } [ %137, %136 ], [ %135, %134 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br label %350

140:                                              ; preds = %39
  %141 = landingpad { ptr, i32 }
          catch ptr null
  br label %144

142:                                              ; preds = %40
  %143 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi { ptr, i32 } [ %143, %142 ], [ %141, %140 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %350

146:                                              ; preds = %42
  %147 = landingpad { ptr, i32 }
          catch ptr null
  br label %150

148:                                              ; preds = %43
  %149 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #9
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi { ptr, i32 } [ %149, %148 ], [ %147, %146 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  br label %350

152:                                              ; preds = %45
  %153 = landingpad { ptr, i32 }
          catch ptr null
  br label %156

154:                                              ; preds = %46
  %155 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #9
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi { ptr, i32 } [ %155, %154 ], [ %153, %152 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  br label %350

158:                                              ; preds = %48
  %159 = landingpad { ptr, i32 }
          catch ptr null
  br label %162

160:                                              ; preds = %49
  %161 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1012FunctionLangD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi { ptr, i32 } [ %161, %160 ], [ %159, %158 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %350

164:                                              ; preds = %50
  %165 = landingpad { ptr, i32 }
          catch ptr null
  br label %168

166:                                              ; preds = %51
  %167 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #9
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi { ptr, i32 } [ %167, %166 ], [ %165, %164 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  br label %350

170:                                              ; preds = %53
  %171 = landingpad { ptr, i32 }
          catch ptr null
  br label %174

172:                                              ; preds = %54
  %173 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #9
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi { ptr, i32 } [ %173, %172 ], [ %171, %170 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  br label %350

176:                                              ; preds = %56
  %177 = landingpad { ptr, i32 }
          catch ptr null
  br label %180

178:                                              ; preds = %57
  %179 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #9
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi { ptr, i32 } [ %179, %178 ], [ %177, %176 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9
  br label %350

182:                                              ; preds = %59
  %183 = landingpad { ptr, i32 }
          catch ptr null
  br label %186

184:                                              ; preds = %60
  %185 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #9
  br label %186

186:                                              ; preds = %184, %182
  %187 = phi { ptr, i32 } [ %185, %184 ], [ %183, %182 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9
  br label %350

188:                                              ; preds = %62
  %189 = landingpad { ptr, i32 }
          catch ptr null
  br label %192

190:                                              ; preds = %63
  %191 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #9
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi { ptr, i32 } [ %191, %190 ], [ %189, %188 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9
  br label %350

194:                                              ; preds = %65
  %195 = landingpad { ptr, i32 }
          catch ptr null
  br label %198

196:                                              ; preds = %66
  %197 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #9
  br label %198

198:                                              ; preds = %196, %194
  %199 = phi { ptr, i32 } [ %197, %196 ], [ %195, %194 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #9
  br label %350

200:                                              ; preds = %68
  %201 = landingpad { ptr, i32 }
          catch ptr null
  br label %204

202:                                              ; preds = %69
  %203 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #9
  br label %204

204:                                              ; preds = %202, %200
  %205 = phi { ptr, i32 } [ %203, %202 ], [ %201, %200 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #9
  br label %350

206:                                              ; preds = %71
  %207 = landingpad { ptr, i32 }
          catch ptr null
  br label %210

208:                                              ; preds = %72
  %209 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1014FunctionConcatD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  br label %210

210:                                              ; preds = %208, %206
  %211 = phi { ptr, i32 } [ %209, %208 ], [ %207, %206 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  br label %350

212:                                              ; preds = %73
  %213 = landingpad { ptr, i32 }
          catch ptr null
  br label %216

214:                                              ; preds = %74
  %215 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #9
  br label %216

216:                                              ; preds = %214, %212
  %217 = phi { ptr, i32 } [ %215, %214 ], [ %213, %212 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #9
  br label %350

218:                                              ; preds = %76
  %219 = landingpad { ptr, i32 }
          catch ptr null
  br label %222

220:                                              ; preds = %77
  %221 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1014FunctionStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #9
  br label %222

222:                                              ; preds = %220, %218
  %223 = phi { ptr, i32 } [ %221, %220 ], [ %219, %218 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #9
  br label %350

224:                                              ; preds = %78
  %225 = landingpad { ptr, i32 }
          catch ptr null
  br label %228

226:                                              ; preds = %79
  %227 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #9
  br label %228

228:                                              ; preds = %226, %224
  %229 = phi { ptr, i32 } [ %227, %226 ], [ %225, %224 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #9
  br label %350

230:                                              ; preds = %81
  %231 = landingpad { ptr, i32 }
          catch ptr null
  br label %234

232:                                              ; preds = %82
  %233 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #9
  br label %234

234:                                              ; preds = %232, %230
  %235 = phi { ptr, i32 } [ %233, %232 ], [ %231, %230 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #9
  br label %350

236:                                              ; preds = %84
  %237 = landingpad { ptr, i32 }
          catch ptr null
  br label %240

238:                                              ; preds = %85
  %239 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #9
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi { ptr, i32 } [ %239, %238 ], [ %237, %236 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #9
  br label %350

242:                                              ; preds = %87
  %243 = landingpad { ptr, i32 }
          catch ptr null
  br label %246

244:                                              ; preds = %88
  %245 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1016FunctionContainsD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #9
  br label %246

246:                                              ; preds = %244, %242
  %247 = phi { ptr, i32 } [ %245, %244 ], [ %243, %242 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #9
  br label %350

248:                                              ; preds = %89
  %249 = landingpad { ptr, i32 }
          catch ptr null
  br label %252

250:                                              ; preds = %90
  %251 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #9
  br label %252

252:                                              ; preds = %250, %248
  %253 = phi { ptr, i32 } [ %251, %250 ], [ %249, %248 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #9
  br label %350

254:                                              ; preds = %92
  %255 = landingpad { ptr, i32 }
          catch ptr null
  br label %258

256:                                              ; preds = %93
  %257 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #9
  br label %258

258:                                              ; preds = %256, %254
  %259 = phi { ptr, i32 } [ %257, %256 ], [ %255, %254 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #9
  br label %350

260:                                              ; preds = %95
  %261 = landingpad { ptr, i32 }
          catch ptr null
  br label %264

262:                                              ; preds = %96
  %263 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1017FunctionSubstringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23) #9
  br label %264

264:                                              ; preds = %262, %260
  %265 = phi { ptr, i32 } [ %263, %262 ], [ %261, %260 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #9
  br label %350

266:                                              ; preds = %97
  %267 = landingpad { ptr, i32 }
          catch ptr null
  br label %270

268:                                              ; preds = %98
  %269 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1017FunctionTranslateD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24) #9
  br label %270

270:                                              ; preds = %268, %266
  %271 = phi { ptr, i32 } [ %269, %268 ], [ %267, %266 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #9
  br label %350

272:                                              ; preds = %99
  %273 = landingpad { ptr, i32 }
          catch ptr null
  br label %276

274:                                              ; preds = %100
  %275 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %25) #9
  br label %276

276:                                              ; preds = %274, %272
  %277 = phi { ptr, i32 } [ %275, %274 ], [ %273, %272 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #9
  br label %350

278:                                              ; preds = %102
  %279 = landingpad { ptr, i32 }
          catch ptr null
  br label %282

280:                                              ; preds = %103
  %281 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #9
  br label %282

282:                                              ; preds = %280, %278
  %283 = phi { ptr, i32 } [ %281, %280 ], [ %279, %278 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #9
  br label %350

284:                                              ; preds = %105
  %285 = landingpad { ptr, i32 }
          catch ptr null
  br label %288

286:                                              ; preds = %106
  %287 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1018FunctionStartsWithD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27) #9
  br label %288

288:                                              ; preds = %286, %284
  %289 = phi { ptr, i32 } [ %287, %286 ], [ %285, %284 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #9
  br label %350

290:                                              ; preds = %107
  %291 = landingpad { ptr, i32 }
          catch ptr null
  br label %294

292:                                              ; preds = %108
  %293 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %28) #9
  br label %294

294:                                              ; preds = %292, %290
  %295 = phi { ptr, i32 } [ %293, %292 ], [ %291, %290 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %28) #9
  br label %350

296:                                              ; preds = %110
  %297 = landingpad { ptr, i32 }
          catch ptr null
  br label %300

298:                                              ; preds = %111
  %299 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1020FunctionNamespaceURID1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29) #9
  br label %300

300:                                              ; preds = %298, %296
  %301 = phi { ptr, i32 } [ %299, %298 ], [ %297, %296 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #9
  br label %350

302:                                              ; preds = %112
  %303 = landingpad { ptr, i32 }
          catch ptr null
  br label %306

304:                                              ; preds = %113
  %305 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %30) #9
  br label %306

306:                                              ; preds = %304, %302
  %307 = phi { ptr, i32 } [ %305, %304 ], [ %303, %302 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %30) #9
  br label %350

308:                                              ; preds = %115
  %309 = landingpad { ptr, i32 }
          catch ptr null
  br label %312

310:                                              ; preds = %116
  %311 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1022FunctionNormalizeSpaceD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31) #9
  br label %312

312:                                              ; preds = %310, %308
  %313 = phi { ptr, i32 } [ %311, %310 ], [ %309, %308 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #9
  br label %350

314:                                              ; preds = %117
  %315 = landingpad { ptr, i32 }
          catch ptr null
  br label %318

316:                                              ; preds = %118
  %317 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1022FunctionSubstringAfterD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32) #9
  br label %318

318:                                              ; preds = %316, %314
  %319 = phi { ptr, i32 } [ %317, %316 ], [ %315, %314 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #9
  br label %350

320:                                              ; preds = %119
  %321 = landingpad { ptr, i32 }
          catch ptr null
  br label %324

322:                                              ; preds = %120
  %323 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %33) #9
  br label %324

324:                                              ; preds = %322, %320
  %325 = phi { ptr, i32 } [ %323, %322 ], [ %321, %320 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %33) #9
  br label %350

326:                                              ; preds = %122
  %327 = landingpad { ptr, i32 }
          catch ptr null
  br label %330

328:                                              ; preds = %123
  %329 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_1023FunctionSubstringBeforeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %34) #9
  br label %330

330:                                              ; preds = %328, %326
  %331 = phi { ptr, i32 } [ %329, %328 ], [ %327, %326 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #9
  br label %350

332:                                              ; preds = %124
  %333 = landingpad { ptr, i32 }
          catch ptr null
  br label %336

334:                                              ; preds = %125
  %335 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %35) #9
  br label %336

336:                                              ; preds = %334, %332
  %337 = phi { ptr, i32 } [ %335, %334 ], [ %333, %332 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %35) #9
  br label %350

338:                                              ; preds = %127
  %339 = landingpad { ptr, i32 }
          catch ptr null
  br label %342

340:                                              ; preds = %128
  %341 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %36) #9
  br label %342

342:                                              ; preds = %340, %338
  %343 = phi { ptr, i32 } [ %341, %340 ], [ %339, %338 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %36) #9
  br label %350

344:                                              ; preds = %130
  %345 = landingpad { ptr, i32 }
          catch ptr null
  br label %348

346:                                              ; preds = %131
  %347 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %37) #9
  br label %348

348:                                              ; preds = %346, %344
  %349 = phi { ptr, i32 } [ %347, %346 ], [ %345, %344 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %37) #9
  br label %350

350:                                              ; preds = %348, %342, %336, %330, %324, %318, %312, %306, %300, %294, %288, %282, %276, %270, %264, %258, %252, %246, %240, %234, %228, %222, %216, %210, %204, %198, %192, %186, %180, %174, %168, %162, %156, %150, %144, %138
  %351 = phi { ptr, i32 } [ %349, %348 ], [ %343, %342 ], [ %337, %336 ], [ %331, %330 ], [ %325, %324 ], [ %319, %318 ], [ %313, %312 ], [ %307, %306 ], [ %301, %300 ], [ %295, %294 ], [ %289, %288 ], [ %283, %282 ], [ %277, %276 ], [ %271, %270 ], [ %265, %264 ], [ %259, %258 ], [ %253, %252 ], [ %247, %246 ], [ %241, %240 ], [ %235, %234 ], [ %229, %228 ], [ %223, %222 ], [ %217, %216 ], [ %211, %210 ], [ %205, %204 ], [ %199, %198 ], [ %193, %192 ], [ %187, %186 ], [ %181, %180 ], [ %175, %174 ], [ %169, %168 ], [ %163, %162 ], [ %157, %156 ], [ %151, %150 ], [ %145, %144 ], [ %139, %138 ]
  %352 = extractvalue { ptr, i32 } %351, 0
  %353 = call ptr @__cxa_begin_catch(ptr %352) #9
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable12DestroyTableEv(ptr noundef nonnull align 8 dereferenceable(304) %0)
          to label %354 unwind label %355

354:                                              ; preds = %350
  invoke void @__cxa_rethrow() #10
          to label %361 unwind label %355

355:                                              ; preds = %354, %350
  %356 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %357 unwind label %358

357:                                              ; preds = %355
  resume { ptr, i32 } %356

358:                                              ; preds = %355
  %359 = landingpad { ptr, i32 }
          catch ptr null
  %360 = extractvalue { ptr, i32 } %359, 0
  call void @__clang_call_terminate(ptr %360) #11
  unreachable

361:                                              ; preds = %354
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1018XPathFunctionTableD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(304) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable12DestroyTableEv(ptr noundef nonnull align 8 dereferenceable(304) %0)
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #11
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathFunctionTable12DestroyTableEv(ptr nocapture noundef nonnull align 8 dereferenceable(304) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %0, align 8, !tbaa !85
  br label %4

4:                                                ; preds = %1, %15
  %5 = phi i64 [ 8, %1 ], [ %16, %15 ]
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9, !prof !87

9:                                                ; preds = %4
  %10 = load ptr, ptr %7, align 8, !tbaa !79
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %7) #9, !prof !88
  %12 = load ptr, ptr %3, align 8, !tbaa !79
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %7)
          to label %15 unwind label %19, !prof !89

15:                                               ; preds = %9, %4
  %16 = add nuw nsw i64 %5, 8
  %17 = icmp eq i64 %16, 296
  br i1 %17, label %18, label %4, !prof !90, !llvm.loop !91

18:                                               ; preds = %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %2, i8 0, i64 288, i1 false)
  br label %23

19:                                               ; preds = %9
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = tail call ptr @__cxa_begin_catch(ptr %21) #9
  tail call void @__cxa_end_catch()
  br label %23

23:                                               ; preds = %19, %18
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat !prof !84 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr nocapture noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  %6 = tail call noundef i32 @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKtj(ptr noundef %1, i32 noundef %5)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %35, !prof !95

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #9
  %9 = load ptr, ptr %0, align 8, !tbaa !85
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %10 = call ptr @__cxa_allocate_exception(i64 112) #9
  %11 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef 21, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %12 unwind label %15

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8, !tbaa !96
  invoke void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %10, ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %14 unwind label %15

14:                                               ; preds = %12
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1034XPathExceptionFunctionNotSupportedE, i64 0, inrange i32 0, i64 2), ptr %10, align 8, !tbaa !79
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xalanc_1_1034XPathExceptionFunctionNotSupportedE, ptr nonnull @_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedD2Ev) #10
          to label %53 unwind label %17

15:                                               ; preds = %12, %8
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %10) #9
  br label %19

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !99
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !100
  %27 = load ptr, ptr %4, align 8, !tbaa !96
  %28 = load ptr, ptr %27, align 8, !tbaa !79
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %24
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #11
  unreachable

34:                                               ; preds = %19, %24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #9
  resume { ptr, i32 } %20

35:                                               ; preds = %3
  %36 = sext i32 %6 to i64
  %37 = getelementptr inbounds %"class.xalanc_1_10::XPathFunctionTable", ptr %0, i64 0, i32 1, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !86
  %39 = icmp eq ptr %38, null
  %40 = load ptr, ptr %0, align 8, !tbaa !85
  %41 = load ptr, ptr %2, align 8, !tbaa !79
  %42 = getelementptr inbounds ptr, ptr %41, i64 7
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %40)
  store ptr %44, ptr %37, align 8, !tbaa !86
  br i1 %39, label %52, label %45, !prof !101

45:                                               ; preds = %35
  %46 = load ptr, ptr %38, align 8, !tbaa !79
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(8) %38) #9, !prof !102
  %48 = load ptr, ptr %0, align 8, !tbaa !85
  %49 = load ptr, ptr %48, align 8, !tbaa !79
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull %38), !prof !103
  br label %52

52:                                               ; preds = %35, %45
  ret void

53:                                               ; preds = %14
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1018XPathFunctionTable17UninstallFunctionEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !104 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  %4 = tail call noundef i32 @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKtj(ptr noundef %1, i32 noundef %3)
  %5 = icmp ne i32 %4, -1
  br i1 %5, label %6, label %18, !prof !105

6:                                                ; preds = %2
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathFunctionTable", ptr %0, i64 0, i32 1, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  store ptr null, ptr %8, align 8, !tbaa !86
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11, !prof !106

11:                                               ; preds = %6
  %12 = load ptr, ptr %9, align 8, !tbaa !79
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %9) #9, !prof !107
  %14 = load ptr, ptr %0, align 8, !tbaa !85
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %9), !prof !103
  br label %18

18:                                               ; preds = %6, %11, %2
  ret i1 %5
}

declare void @_ZN11xalanc_1_1010FunctionIDC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1010FunctionIDD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN11xalanc_1_1012FunctionLangC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1012FunctionLangD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN11xalanc_1_1014FunctionConcatC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014FunctionConcatD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN11xalanc_1_1014FunctionStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014FunctionStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN11xalanc_1_1016FunctionContainsC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1016FunctionContainsD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN11xalanc_1_1017FunctionSubstringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017FunctionSubstringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN11xalanc_1_1017FunctionTranslateC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017FunctionTranslateD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN11xalanc_1_1018FunctionStartsWithC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1018FunctionStartsWithD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN11xalanc_1_1020FunctionNamespaceURIC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1020FunctionNamespaceURID1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN11xalanc_1_1022FunctionNormalizeSpaceC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1022FunctionNormalizeSpaceD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN11xalanc_1_1022FunctionSubstringAfterC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1022FunctionSubstringAfterD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN11xalanc_1_1023FunctionSubstringBeforeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1023FunctionSubstringBeforeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKtj(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !108 {
  br label %3

3:                                                ; preds = %31, %2
  %4 = phi ptr [ getelementptr inbounds ([36 x %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry"], ptr @_ZN11xalanc_1_1018XPathFunctionTable15s_functionNamesE, i64 0, i64 35, i32 0), %2 ], [ %32, %31 ]
  %5 = phi ptr [ @_ZN11xalanc_1_1018XPathFunctionTable15s_functionNamesE, %2 ], [ %33, %31 ]
  %6 = phi i32 [ undef, %2 ], [ %34, %31 ]
  %7 = icmp ugt ptr %5, %4
  br i1 %7, label %36, label %8, !prof !109

8:                                                ; preds = %3
  %9 = ptrtoint ptr %4 to i64
  %10 = ptrtoint ptr %5 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 4
  %13 = sdiv i64 %12, 2
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry", ptr %5, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !110
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry", ptr %5, i64 %13, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !113
  %18 = tail call noundef i32 @_ZN11xalanc_1_107compareEPKtjS1_j(ptr noundef %0, i32 noundef %1, ptr noundef %15, i32 noundef %17)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22, !prof !114

20:                                               ; preds = %8
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry", ptr %14, i64 -1
  br label %31

22:                                               ; preds = %8
  %23 = icmp eq i32 %18, 0
  br i1 %23, label %26, label %24, !prof !115

24:                                               ; preds = %22
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XPathFunctionTable::FunctionNameTableEntry", ptr %14, i64 1
  br label %31

26:                                               ; preds = %22
  %27 = ptrtoint ptr %14 to i64
  %28 = sub i64 %27, ptrtoint (ptr @_ZN11xalanc_1_1018XPathFunctionTable15s_functionNamesE to i64)
  %29 = lshr exact i64 %28, 4
  %30 = trunc i64 %29 to i32
  br label %31

31:                                               ; preds = %20, %24, %26
  %32 = phi ptr [ %4, %26 ], [ %21, %20 ], [ %4, %24 ]
  %33 = phi ptr [ %5, %26 ], [ %5, %20 ], [ %25, %24 ]
  %34 = phi i32 [ %30, %26 ], [ %6, %20 ], [ %6, %24 ]
  %35 = phi i1 [ false, %26 ], [ true, %20 ], [ true, %24 ]
  br i1 %35, label %3, label %36, !prof !116, !llvm.loop !117

36:                                               ; preds = %31, %3
  %37 = phi i32 [ -1, %3 ], [ %34, %31 ]
  ret i32 %37
}

declare noundef i32 @_ZN11xalanc_1_107compareEPKtjS1_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableC2ERKNS_14XalanDOMStringERS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #0 align 2 !prof !84 {
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 20, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %5 = load ptr, ptr %2, align 8, !tbaa !96
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1034XPathExceptionFunctionNotAvailableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

declare void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableC2ERKNS_14XalanDOMStringERKN11xercesc_2_77LocatorERS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #0 align 2 !prof !84 {
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 20, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %6 = load ptr, ptr %3, align 8, !tbaa !96
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKN11xercesc_2_77LocatorERKNS_14XalanDOMStringERNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1034XPathExceptionFunctionNotAvailableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  ret void
}

declare void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKN11xercesc_2_77LocatorERKNS_14XalanDOMStringERNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #2 align 2 !prof !84 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #2 align 2 !prof !84 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedC2EPKtRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #0 align 2 !prof !84 {
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 21, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  %5 = load ptr, ptr %2, align 8, !tbaa !96
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1034XPathExceptionFunctionNotSupportedE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #2 align 2 !prof !84 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1034XPathExceptionFunctionNotSupportedD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #2 align 2 !prof !84 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1019XalanXPathException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #2 comdat align 2 !prof !84 {
  ret ptr @_ZN11xalanc_1_1019XalanXPathException6m_typeE
}

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #5

declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022FunctionNotImplementedD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 !prof !84 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 1, ptr noundef) unnamed_addr #5

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1022FunctionNotImplemented5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = load ptr, ptr %1, align 8, !tbaa !79
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 16), !prof !119
  %7 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %9 unwind label %11, !prof !120

9:                                                ; preds = %2
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !79
  %10 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %6, i64 0, i32 1
  store ptr %8, ptr %10, align 8, !tbaa !81
  ret ptr %6

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = icmp eq ptr %6, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %1, align 8, !tbaa !79
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %6)
          to label %21 unwind label %18

18:                                               ; preds = %14
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #11
  unreachable

21:                                               ; preds = %11, %14
  resume { ptr, i32 } %12
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022FunctionNotImplemented8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 comdat align 2 !prof !84 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FunctionNotImplemented", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 19, ptr noundef %4, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %5
}

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!70}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!35 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1010FunctionIDC1Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE, i64 36}
!37 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1010FunctionIDD1Ev, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 24}
!39 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 24}
!40 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1012FunctionLangC1Ev, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1012FunctionLangD1Ev, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1014FunctionConcatC1Ev, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1014FunctionConcatD1Ev, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1014FunctionStringC1Ev, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1014FunctionStringD1Ev, i64 1}
!46 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1016FunctionContainsC1Ev, i64 1}
!47 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1016FunctionContainsD1Ev, i64 1}
!48 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1017FunctionSubstringC1Ev, i64 1}
!49 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1017FunctionSubstringD1Ev, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1017FunctionTranslateC1Ev, i64 1}
!51 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1017FunctionTranslateD1Ev, i64 1}
!52 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1018FunctionStartsWithC1Ev, i64 1}
!53 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1018FunctionStartsWithD1Ev, i64 1}
!54 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1020FunctionNamespaceURIC1Ev, i64 1}
!55 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1020FunctionNamespaceURID1Ev, i64 1}
!56 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1022FunctionNormalizeSpaceC1Ev, i64 1}
!57 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1022FunctionNormalizeSpaceD1Ev, i64 1}
!58 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1022FunctionSubstringAfterC1Ev, i64 1}
!59 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1022FunctionSubstringAfterD1Ev, i64 1}
!60 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1023FunctionSubstringBeforeC1Ev, i64 1}
!61 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, ptr @_ZN11xalanc_1_1023FunctionSubstringBeforeD1Ev, i64 1}
!62 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable12DestroyTableEv, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 15}
!63 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 45}
!64 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE, ptr @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKtj, i64 45}
!65 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 9}
!66 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable17UninstallFunctionEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 9}
!67 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable17UninstallFunctionEPKt, ptr @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKtj, i64 9}
!68 = !{ptr @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKtj, ptr @_ZN11xalanc_1_107compareEPKtjS1_j, i64 536}
!69 = !{ptr @_ZNK11xalanc_1_1022FunctionNotImplemented5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 24}
!70 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!71 = !{!"function_entry_count", i64 1}
!72 = !{!73, !74, i64 296}
!73 = !{!"_ZTSN11xalanc_1_1018XPathFunctionTableE", !74, i64 0, !75, i64 8, !74, i64 296}
!74 = !{!"any pointer", !75, i64 0}
!75 = !{!"omnipotent char", !76, i64 0}
!76 = !{!"Simple C++ TBAA"}
!77 = !{!"branch_weights", i32 0, i32 1}
!78 = !{!"branch_weights", i32 1, i32 0}
!79 = !{!80, !80, i64 0}
!80 = !{!"vtable pointer", !76, i64 0}
!81 = !{!82, !74, i64 8}
!82 = !{!"_ZTSN11xalanc_1_1022FunctionNotImplementedE", !83, i64 0, !74, i64 8}
!83 = !{!"_ZTSN11xalanc_1_108FunctionE"}
!84 = !{!"function_entry_count", i64 0}
!85 = !{!73, !74, i64 0}
!86 = !{!74, !74, i64 0}
!87 = !{!"branch_weights", i32 9, i32 27}
!88 = !{!"VP", i32 0, i64 27, i64 7696932249515872727, i64 15, i64 6953364219912387099, i64 1, i64 -2646120387493070312, i64 1}
!89 = !{!"VP", i32 0, i64 27, i64 -7405368087501025645, i64 27}
!90 = !{!"branch_weights", i32 1, i32 35}
!91 = distinct !{!91, !92, !93}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!"llvm.loop.unroll.disable"}
!94 = !{!"function_entry_count", i64 45}
!95 = !{!"branch_weights", i32 0, i32 45}
!96 = !{!97, !74, i64 0}
!97 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !74, i64 0, !98, i64 8, !98, i64 16, !74, i64 24}
!98 = !{!"long", !75, i64 0}
!99 = !{!97, !98, i64 16}
!100 = !{!97, !74, i64 24}
!101 = !{!"branch_weights", i32 36, i32 9}
!102 = !{!"VP", i32 0, i64 9, i64 7696932249515872727, i64 9}
!103 = !{!"VP", i32 0, i64 9, i64 -7405368087501025645, i64 9}
!104 = !{!"function_entry_count", i64 9}
!105 = !{!"branch_weights", i32 9, i32 0}
!106 = !{!"branch_weights", i32 0, i32 9}
!107 = !{!"VP", i32 0, i64 9, i64 -3161142303095414717, i64 1, i64 7897531471901678409, i64 1, i64 -3432259581049138640, i64 1}
!108 = !{!"function_entry_count", i64 134}
!109 = !{!"branch_weights", i32 6, i32 536}
!110 = !{!111, !74, i64 0}
!111 = !{!"_ZTSN11xalanc_1_1018XPathFunctionTable22FunctionNameTableEntryE", !74, i64 0, !112, i64 8}
!112 = !{!"int", !75, i64 0}
!113 = !{!111, !112, i64 8}
!114 = !{!"branch_weights", i32 188, i32 348}
!115 = !{!"branch_weights", i32 128, i32 220}
!116 = !{!"branch_weights", i32 408, i32 128}
!117 = distinct !{!117, !92, !93}
!118 = !{!"function_entry_count", i64 24}
!119 = !{!"VP", i32 0, i64 24, i64 8345045103670217670, i64 24}
!120 = !{!"branch_weights", i32 24, i32 0}

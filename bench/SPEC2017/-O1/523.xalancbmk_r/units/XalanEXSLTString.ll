; ModuleID = 'XalanEXSLTString.cpp'
source_filename = "XalanEXSLTString.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.0", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanEXSLTFunctionAlign" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::Function" = type { ptr }
%"class.xalanc_1_10::XalanEXSLTFunctionConcat" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionPadding" = type { %"class.xalanc_1_10::Function", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanEXSLTFunctionEncodeURI" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionDecodeURI" = type { %"class.xalanc_1_10::Function" }
%"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" = type { ptr, ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1025XalanEXSLTFunctionPaddingC2ERN11xercesc_2_713MemoryManagerEi = comdat any

$_ZN11xalanc_1_1025XalanEXSLTFunctionPaddingD2Ev = comdat any

$_ZN11xalanc_1_1023XalanEXSLTFunctionAlignD0Ev = comdat any

$_ZNK11xalanc_1_1023XalanEXSLTFunctionAlign5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1023XalanEXSLTFunctionAlign8getErrorERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1024XalanEXSLTFunctionConcatD0Ev = comdat any

$_ZNK11xalanc_1_1024XalanEXSLTFunctionConcat5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1024XalanEXSLTFunctionConcat8getErrorERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1025XalanEXSLTFunctionPaddingD0Ev = comdat any

$_ZNK11xalanc_1_1025XalanEXSLTFunctionPadding5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1025XalanEXSLTFunctionPadding8getErrorERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1027XalanEXSLTFunctionEncodeURID0Ev = comdat any

$_ZNK11xalanc_1_1027XalanEXSLTFunctionEncodeURI5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1027XalanEXSLTFunctionEncodeURI8getErrorERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1027XalanEXSLTFunctionDecodeURID0Ev = comdat any

$_ZNK11xalanc_1_1027XalanEXSLTFunctionDecodeURI5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1027XalanEXSLTFunctionDecodeURI8getErrorERNS_14XalanDOMStringE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionPaddingEN11xercesc_2_713MemoryManagerEEEPT_RS3_RKS4_RT0_ = comdat any

@_ZN11xalanc_1_1023XalanEXSLTFunctionAlign14s_centerStringE = dso_local constant [7 x i16] [i16 99, i16 101, i16 110, i16 116, i16 101, i16 114, i16 0], align 2
@_ZN11xalanc_1_1023XalanEXSLTFunctionAlign13s_rightStringE = dso_local constant [6 x i16] [i16 114, i16 105, i16 103, i16 104, i16 116, i16 0], align 2
@_ZN11xalanc_1_10L13s_emptyStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_1025XalanEXSLTFunctionPadding13s_spaceStringE = dso_local constant [2 x i16] [i16 32, i16 0], align 2
@_ZN11xalanc_1_1027XalanEXSLTFunctionEncodeURI15s_reservedCharsE = dso_local constant [12 x i16] [i16 36, i16 38, i16 43, i16 44, i16 47, i16 58, i16 59, i16 61, i16 63, i16 64, i16 91, i16 93], align 16
@_ZN11xalanc_1_1027XalanEXSLTFunctionEncodeURI19s_reservedCharsSizeE = dso_local local_unnamed_addr constant i32 12, align 4
@_ZN11xalanc_1_1027XalanEXSLTFunctionEncodeURI15s_excludedCharsE = dso_local constant [12 x i16] [i16 32, i16 34, i16 35, i16 37, i16 60, i16 62, i16 92, i16 94, i16 96, i16 123, i16 124, i16 125], align 16
@_ZN11xalanc_1_1027XalanEXSLTFunctionEncodeURI19s_excludedCharsSizeE = dso_local local_unnamed_addr constant i32 12, align 4
@_ZN11xalanc_1_1027XalanEXSLTFunctionDecodeURI11s_octetSizeE = dso_local local_unnamed_addr constant i32 3, align 4
@_ZN11xalanc_1_10L15s_alignFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionAlign" zeroinitializer, align 8
@_ZN11xalanc_1_10L16s_concatFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionConcat" zeroinitializer, align 8
@_ZN11xalanc_1_10L17s_paddingFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionPadding" zeroinitializer, align 8
@_ZN11xalanc_1_10L19s_encodeUriFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionEncodeURI" zeroinitializer, align 8
@_ZN11xalanc_1_10L19s_decodeUriFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionDecodeURI" zeroinitializer, align 8
@_ZN11xalanc_1_10L17s_stringNamespaceE = internal constant [25 x i16] [i16 104, i16 116, i16 116, i16 112, i16 58, i16 47, i16 47, i16 101, i16 120, i16 115, i16 108, i16 116, i16 46, i16 111, i16 114, i16 103, i16 47, i16 115, i16 116, i16 114, i16 105, i16 110, i16 103, i16 115, i16 0], align 16
@_ZN11xalanc_1_10L16theFunctionTableE = internal constant [6 x %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry"] [%"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L19s_alignFunctionNameE, ptr @_ZN11xalanc_1_10L15s_alignFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L20s_concatFunctionNameE, ptr @_ZN11xalanc_1_10L16s_concatFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L21s_paddingFunctionNameE, ptr @_ZN11xalanc_1_10L17s_paddingFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L23s_encodeUriFunctionNameE, ptr @_ZN11xalanc_1_10L19s_encodeUriFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L23s_decodeUriFunctionNameE, ptr @_ZN11xalanc_1_10L19s_decodeUriFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" zeroinitializer], align 16
@_ZTVN11xalanc_1_1023XalanEXSLTFunctionAlignE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1023XalanEXSLTFunctionAlignE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1023XalanEXSLTFunctionAlignD0Ev, ptr @_ZNK11xalanc_1_1023XalanEXSLTFunctionAlign7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1023XalanEXSLTFunctionAlign5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1023XalanEXSLTFunctionAlign8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1023XalanEXSLTFunctionAlignE = dso_local constant [41 x i8] c"N11xalanc_1_1023XalanEXSLTFunctionAlignE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1023XalanEXSLTFunctionAlignE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1023XalanEXSLTFunctionAlignE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1024XalanEXSLTFunctionConcatE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1024XalanEXSLTFunctionConcatE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1024XalanEXSLTFunctionConcatD0Ev, ptr @_ZNK11xalanc_1_1024XalanEXSLTFunctionConcat7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1024XalanEXSLTFunctionConcat5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1024XalanEXSLTFunctionConcat8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1024XalanEXSLTFunctionConcatE = dso_local constant [42 x i8] c"N11xalanc_1_1024XalanEXSLTFunctionConcatE\00", align 1
@_ZTIN11xalanc_1_1024XalanEXSLTFunctionConcatE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1024XalanEXSLTFunctionConcatE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1025XalanEXSLTFunctionPaddingE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1025XalanEXSLTFunctionPaddingE, ptr @_ZN11xalanc_1_1025XalanEXSLTFunctionPaddingD2Ev, ptr @_ZN11xalanc_1_1025XalanEXSLTFunctionPaddingD0Ev, ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionPadding7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionPadding5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionPadding8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1025XalanEXSLTFunctionPaddingE = dso_local constant [43 x i8] c"N11xalanc_1_1025XalanEXSLTFunctionPaddingE\00", align 1
@_ZTIN11xalanc_1_1025XalanEXSLTFunctionPaddingE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1025XalanEXSLTFunctionPaddingE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1027XalanEXSLTFunctionEncodeURIE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1027XalanEXSLTFunctionEncodeURIE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1027XalanEXSLTFunctionEncodeURID0Ev, ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionEncodeURI7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionEncodeURI5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionEncodeURI8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1027XalanEXSLTFunctionEncodeURIE = dso_local constant [45 x i8] c"N11xalanc_1_1027XalanEXSLTFunctionEncodeURIE\00", align 1
@_ZTIN11xalanc_1_1027XalanEXSLTFunctionEncodeURIE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1027XalanEXSLTFunctionEncodeURIE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1027XalanEXSLTFunctionDecodeURIE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1027XalanEXSLTFunctionDecodeURIE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1027XalanEXSLTFunctionDecodeURID0Ev, ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionDecodeURI7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionDecodeURI5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionDecodeURI8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1027XalanEXSLTFunctionDecodeURIE = dso_local constant [45 x i8] c"N11xalanc_1_1027XalanEXSLTFunctionDecodeURIE\00", align 1
@_ZTIN11xalanc_1_1027XalanEXSLTFunctionDecodeURIE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1027XalanEXSLTFunctionDecodeURIE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZN11xalanc_1_10L19s_alignFunctionNameE = internal constant [6 x i16] [i16 97, i16 108, i16 105, i16 103, i16 110, i16 0], align 2
@_ZN11xalanc_1_10L20s_concatFunctionNameE = internal constant [7 x i16] [i16 99, i16 111, i16 110, i16 99, i16 97, i16 116, i16 0], align 2
@_ZN11xalanc_1_10L21s_paddingFunctionNameE = internal constant [8 x i16] [i16 112, i16 97, i16 100, i16 100, i16 105, i16 110, i16 103, i16 0], align 16
@_ZN11xalanc_1_10L23s_encodeUriFunctionNameE = internal constant [11 x i16] [i16 101, i16 110, i16 99, i16 111, i16 100, i16 101, i16 45, i16 117, i16 114, i16 105, i16 0], align 16
@_ZN11xalanc_1_10L23s_decodeUriFunctionNameE = internal constant [11 x i16] [i16 100, i16 101, i16 99, i16 111, i16 100, i16 101, i16 45, i16 117, i16 114, i16 105, i16 0], align 16
@.str = private unnamed_addr constant [8 x i8] c"align()\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"concat()\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"padding()\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"encode-uri()\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"decode-uri()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanEXSLTString.cpp, ptr null }]

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1023XalanEXSLTFunctionAlign7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !59
  %9 = add i64 %8, -4
  %10 = icmp ult i64 %9, -2
  br i1 %10, label %11, label %41

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8, !tbaa !65
  %13 = getelementptr inbounds ptr, ptr %12, i64 23
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef nonnull align 8 dereferenceable(36) ptr %14(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %16 = load ptr, ptr %1, align 8, !tbaa !65
  %17 = getelementptr inbounds ptr, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %15)
          to label %20 unwind label %32

20:                                               ; preds = %11
  %21 = load ptr, ptr %2, align 8, !tbaa !65
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef %3, ptr noundef %5)
          to label %24 unwind label %32

24:                                               ; preds = %20
  %25 = load ptr, ptr %2, align 8, !tbaa !65
  %26 = getelementptr inbounds ptr, ptr %25, i64 24
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %15)
          to label %41 unwind label %29

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #16
  unreachable

32:                                               ; preds = %20, %11
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = load ptr, ptr %2, align 8, !tbaa !65
  %35 = getelementptr inbounds ptr, ptr %34, i64 24
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %15)
          to label %198 unwind label %38

38:                                               ; preds = %32
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #16
  unreachable

41:                                               ; preds = %24, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !67
  %44 = load ptr, ptr %43, align 8, !tbaa !68
  %45 = load ptr, ptr %44, align 8, !tbaa !65
  %46 = getelementptr inbounds ptr, ptr %45, i64 8
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef nonnull align 8 dereferenceable(36) ptr %47(ptr noundef nonnull align 8 dereferenceable(24) %44)
  %49 = load ptr, ptr %42, align 8, !tbaa !67
  %50 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %49, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !68
  %52 = load ptr, ptr %51, align 8, !tbaa !65
  %53 = getelementptr inbounds ptr, ptr %52, i64 8
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef nonnull align 8 dereferenceable(36) ptr %54(ptr noundef nonnull align 8 dereferenceable(24) %51)
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %48, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !70
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %55, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !70
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %41
  %62 = load ptr, ptr %42, align 8, !tbaa !67
  %63 = load ptr, ptr %62, align 8, !tbaa !68
  store ptr %63, ptr %0, align 8, !tbaa !68
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %63)
  br label %197

64:                                               ; preds = %41
  %65 = load ptr, ptr %2, align 8, !tbaa !65
  %66 = getelementptr inbounds ptr, ptr %65, i64 23
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef nonnull align 8 dereferenceable(36) ptr %67(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %69 = icmp ugt i32 %57, %59
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %68, ptr noundef nonnull align 8 dereferenceable(36) %48, i32 noundef 0, i32 noundef %59)
          to label %174 unwind label %72

72:                                               ; preds = %80, %174, %70
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %188

74:                                               ; preds = %64
  %75 = add i32 %59, 1
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %68, i64 0, i32 2
  %78 = load i64, ptr %77, align 8, !tbaa !74
  %79 = icmp ult i64 %78, %76
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %68, i64 noundef %76)
          to label %81 unwind label %72

81:                                               ; preds = %74, %80
  %82 = icmp eq i64 %8, 3
  br i1 %82, label %83, label %110

83:                                               ; preds = %81
  %84 = load ptr, ptr %42, align 8, !tbaa !67
  %85 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %84, i64 2
  %86 = load ptr, ptr %85, align 8, !tbaa !68
  %87 = load ptr, ptr %86, align 8, !tbaa !65
  %88 = getelementptr inbounds ptr, ptr %87, i64 8
  %89 = load ptr, ptr %88, align 8
  %90 = invoke noundef nonnull align 8 dereferenceable(36) ptr %89(ptr noundef nonnull align 8 dereferenceable(24) %86)
          to label %91 unwind label %100

91:                                               ; preds = %83
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %90, i64 0, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !75
  %94 = icmp eq i64 %93, 0
  %95 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %90, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8
  %97 = select i1 %94, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %96
  %98 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef nonnull @_ZN11xalanc_1_1023XalanEXSLTFunctionAlign14s_centerStringE, ptr noundef %97, i32 noundef 6)
          to label %99 unwind label %100

99:                                               ; preds = %91
  br i1 %98, label %110, label %102

100:                                              ; preds = %102, %91, %83
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %188

102:                                              ; preds = %99
  %103 = load i64, ptr %92, align 8, !tbaa !75
  %104 = icmp eq i64 %103, 0
  %105 = load ptr, ptr %95, align 8
  %106 = select i1 %104, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %105
  %107 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef nonnull @_ZN11xalanc_1_1023XalanEXSLTFunctionAlign13s_rightStringE, ptr noundef %106, i32 noundef 5)
          to label %108 unwind label %100

108:                                              ; preds = %102
  %109 = select i1 %107, i32 2, i32 1
  br label %110

110:                                              ; preds = %108, %99, %81
  %111 = phi i32 [ 1, %81 ], [ 0, %99 ], [ %109, %108 ]
  switch i32 %111, label %173 [
    i32 1, label %112
    i32 2, label %131
    i32 0, label %146
  ]

112:                                              ; preds = %110
  %113 = icmp eq ptr %48, %68
  br i1 %113, label %119, label %114

114:                                              ; preds = %112
  %115 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull align 8 dereferenceable(32) %48)
          to label %116 unwind label %129

116:                                              ; preds = %114
  %117 = load i32, ptr %56, align 8, !tbaa !70
  %118 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %68, i64 0, i32 1
  store i32 %117, ptr %118, align 8, !tbaa !70
  br label %119

119:                                              ; preds = %116, %112
  %120 = sub i32 %59, %57
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %55, i64 0, i32 1
  %122 = load i64, ptr %121, align 8, !tbaa !75
  %123 = icmp eq i64 %122, 0
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %55, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8
  %126 = select i1 %123, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %125
  %127 = zext i32 %57 to i64
  %128 = getelementptr inbounds i16, ptr %126, i64 %127
  br label %142

129:                                              ; preds = %142, %114, %131
  %130 = landingpad { ptr, i32 }
          cleanup
  br label %188

131:                                              ; preds = %110
  %132 = sub i32 %59, %57
  %133 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %68, ptr noundef nonnull align 8 dereferenceable(36) %55, i32 noundef 0, i32 noundef %132)
          to label %134 unwind label %129

134:                                              ; preds = %131
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %48, i64 0, i32 1
  %136 = load i64, ptr %135, align 8, !tbaa !75
  %137 = icmp eq i64 %136, 0
  %138 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %48, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8
  %140 = select i1 %137, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %139
  %141 = load i32, ptr %56, align 8, !tbaa !70
  br label %142

142:                                              ; preds = %119, %134
  %143 = phi ptr [ %140, %134 ], [ %128, %119 ]
  %144 = phi i32 [ %141, %134 ], [ %120, %119 ]
  %145 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %68, ptr noundef %143, i32 noundef %144)
          to label %174 unwind label %129

146:                                              ; preds = %110
  %147 = sub i32 %59, %57
  %148 = lshr i32 %147, 1
  %149 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %68, ptr noundef nonnull align 8 dereferenceable(36) %55, i32 noundef 0, i32 noundef %148)
          to label %150 unwind label %171

150:                                              ; preds = %146
  %151 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %48, i64 0, i32 1
  %152 = load i64, ptr %151, align 8, !tbaa !75
  %153 = icmp eq i64 %152, 0
  %154 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %48, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8
  %156 = select i1 %153, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %155
  %157 = load i32, ptr %56, align 8, !tbaa !70
  %158 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %68, ptr noundef %156, i32 noundef %157)
          to label %159 unwind label %171

159:                                              ; preds = %150
  %160 = add i32 %148, %57
  %161 = sub i32 %147, %148
  %162 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %55, i64 0, i32 1
  %163 = load i64, ptr %162, align 8, !tbaa !75
  %164 = icmp eq i64 %163, 0
  %165 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %55, i64 0, i32 3
  %166 = load ptr, ptr %165, align 8
  %167 = select i1 %164, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %166
  %168 = zext i32 %160 to i64
  %169 = getelementptr inbounds i16, ptr %167, i64 %168
  %170 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %68, ptr noundef %169, i32 noundef %161)
          to label %174 unwind label %171

171:                                              ; preds = %159, %150, %146
  %172 = landingpad { ptr, i32 }
          cleanup
  br label %188

173:                                              ; preds = %110
  unreachable

174:                                              ; preds = %142, %70, %159
  %175 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !76
  %177 = load ptr, ptr %176, align 8, !tbaa !65
  %178 = getelementptr inbounds ptr, ptr %177, i64 9
  %179 = load ptr, ptr %178, align 8
  invoke void %179(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %176, ptr noundef nonnull align 8 dereferenceable(36) %68)
          to label %180 unwind label %72

180:                                              ; preds = %174
  %181 = load ptr, ptr %2, align 8, !tbaa !65
  %182 = getelementptr inbounds ptr, ptr %181, i64 24
  %183 = load ptr, ptr %182, align 8
  %184 = invoke noundef zeroext i1 %183(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %68)
          to label %197 unwind label %185

185:                                              ; preds = %180
  %186 = landingpad { ptr, i32 }
          catch ptr null
  %187 = extractvalue { ptr, i32 } %186, 0
  tail call void @__clang_call_terminate(ptr %187) #16
  unreachable

188:                                              ; preds = %72, %171, %129, %100
  %189 = phi { ptr, i32 } [ %73, %72 ], [ %130, %129 ], [ %172, %171 ], [ %101, %100 ]
  %190 = load ptr, ptr %2, align 8, !tbaa !65
  %191 = getelementptr inbounds ptr, ptr %190, i64 24
  %192 = load ptr, ptr %191, align 8
  %193 = invoke noundef zeroext i1 %192(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %68)
          to label %198 unwind label %194

194:                                              ; preds = %188
  %195 = landingpad { ptr, i32 }
          catch ptr null
  %196 = extractvalue { ptr, i32 } %195, 0
  tail call void @__clang_call_terminate(ptr %196) #16
  unreachable

197:                                              ; preds = %180, %61
  ret void

198:                                              ; preds = %188, %32
  %199 = phi { ptr, i32 } [ %33, %32 ], [ %189, %188 ]
  resume { ptr, i32 } %199
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #3 comdat align 2 !prof !58 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1024XalanEXSLTFunctionConcat7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !59
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %40, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8, !tbaa !65
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %15 = load ptr, ptr %1, align 8, !tbaa !65
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %31

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !65
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !65
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %40 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #16
  unreachable

31:                                               ; preds = %19, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %2, align 8, !tbaa !65
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %102 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #16
  unreachable

40:                                               ; preds = %23, %6
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !67
  %43 = load ptr, ptr %42, align 8, !tbaa !68
  %44 = load ptr, ptr %43, align 8, !tbaa !65
  %45 = getelementptr inbounds ptr, ptr %44, i64 13
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef nonnull align 8 dereferenceable(8) ptr %46(ptr noundef nonnull align 8 dereferenceable(24) %43)
  %48 = load ptr, ptr %47, align 8, !tbaa !65
  %49 = getelementptr inbounds ptr, ptr %48, i64 3
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef i32 %50(ptr noundef nonnull align 8 dereferenceable(8) %47)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %40
  %54 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !76
  %56 = load ptr, ptr %55, align 8, !tbaa !65
  %57 = getelementptr inbounds ptr, ptr %56, i64 13
  %58 = load ptr, ptr %57, align 8
  tail call void %58(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE)
  br label %101

59:                                               ; preds = %40
  %60 = load ptr, ptr %2, align 8, !tbaa !65
  %61 = getelementptr inbounds ptr, ptr %60, i64 23
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef nonnull align 8 dereferenceable(36) ptr %62(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %72

64:                                               ; preds = %79
  %65 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !76
  %67 = load ptr, ptr %66, align 8, !tbaa !65
  %68 = getelementptr inbounds ptr, ptr %67, i64 9
  %69 = load ptr, ptr %68, align 8
  invoke void %69(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %66, ptr noundef nonnull align 8 dereferenceable(36) %63)
          to label %84 unwind label %70

70:                                               ; preds = %64
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %92

72:                                               ; preds = %59, %79
  %73 = phi i32 [ 0, %59 ], [ %80, %79 ]
  %74 = load ptr, ptr %47, align 8, !tbaa !65
  %75 = getelementptr inbounds ptr, ptr %74, i64 2
  %76 = load ptr, ptr %75, align 8
  %77 = invoke noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(8) %47, i32 noundef %73)
          to label %78 unwind label %82

78:                                               ; preds = %72
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %77, ptr noundef nonnull align 8 dereferenceable(36) %63)
          to label %79 unwind label %82

79:                                               ; preds = %78
  %80 = add nuw i32 %73, 1
  %81 = icmp eq i32 %80, %51
  br i1 %81, label %64, label %72, !llvm.loop !79

82:                                               ; preds = %78, %72
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %92

84:                                               ; preds = %64
  %85 = load ptr, ptr %2, align 8, !tbaa !65
  %86 = getelementptr inbounds ptr, ptr %85, i64 24
  %87 = load ptr, ptr %86, align 8
  %88 = invoke noundef zeroext i1 %87(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %63)
          to label %101 unwind label %89

89:                                               ; preds = %84
  %90 = landingpad { ptr, i32 }
          catch ptr null
  %91 = extractvalue { ptr, i32 } %90, 0
  tail call void @__clang_call_terminate(ptr %91) #16
  unreachable

92:                                               ; preds = %70, %82
  %93 = phi { ptr, i32 } [ %83, %82 ], [ %71, %70 ]
  %94 = load ptr, ptr %2, align 8, !tbaa !65
  %95 = getelementptr inbounds ptr, ptr %94, i64 24
  %96 = load ptr, ptr %95, align 8
  %97 = invoke noundef zeroext i1 %96(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %63)
          to label %102 unwind label %98

98:                                               ; preds = %92
  %99 = landingpad { ptr, i32 }
          catch ptr null
  %100 = extractvalue { ptr, i32 } %99, 0
  tail call void @__clang_call_terminate(ptr %100) #16
  unreachable

101:                                              ; preds = %84, %53
  ret void

102:                                              ; preds = %92, %31
  %103 = phi { ptr, i32 } [ %32, %31 ], [ %93, %92 ]
  resume { ptr, i32 } %103
}

declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1025XalanEXSLTFunctionPadding7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !59
  %9 = add i64 %8, -3
  %10 = icmp ult i64 %9, -2
  br i1 %10, label %11, label %41

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8, !tbaa !65
  %13 = getelementptr inbounds ptr, ptr %12, i64 23
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef nonnull align 8 dereferenceable(36) ptr %14(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %16 = load ptr, ptr %1, align 8, !tbaa !65
  %17 = getelementptr inbounds ptr, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr %18(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(36) %15)
          to label %20 unwind label %32

20:                                               ; preds = %11
  %21 = load ptr, ptr %2, align 8, !tbaa !65
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef %3, ptr noundef %5)
          to label %24 unwind label %32

24:                                               ; preds = %20
  %25 = load ptr, ptr %2, align 8, !tbaa !65
  %26 = getelementptr inbounds ptr, ptr %25, i64 24
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %15)
          to label %41 unwind label %29

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #16
  unreachable

32:                                               ; preds = %20, %11
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = load ptr, ptr %2, align 8, !tbaa !65
  %35 = getelementptr inbounds ptr, ptr %34, i64 24
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %15)
          to label %143 unwind label %38

38:                                               ; preds = %32
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #16
  unreachable

41:                                               ; preds = %24, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !67
  %44 = load ptr, ptr %43, align 8, !tbaa !68
  %45 = load ptr, ptr %44, align 8, !tbaa !65
  %46 = getelementptr inbounds ptr, ptr %45, i64 6
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef double %47(ptr noundef nonnull align 8 dereferenceable(24) %44)
  %49 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef %48)
  %50 = icmp eq i64 %8, 2
  br i1 %50, label %51, label %59

51:                                               ; preds = %41
  %52 = load ptr, ptr %42, align 8, !tbaa !67
  %53 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %52, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !68
  %55 = load ptr, ptr %54, align 8, !tbaa !65
  %56 = getelementptr inbounds ptr, ptr %55, i64 8
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef nonnull align 8 dereferenceable(36) ptr %57(ptr noundef nonnull align 8 dereferenceable(24) %54)
  br label %61

59:                                               ; preds = %41
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionPadding", ptr %1, i64 0, i32 1
  br label %61

61:                                               ; preds = %59, %51
  %62 = phi ptr [ %58, %51 ], [ %60, %59 ]
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %62, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !70
  %65 = fcmp oeq double %49, 0.000000e+00
  %66 = icmp eq i32 %64, 0
  %67 = or i1 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !76
  %71 = load ptr, ptr %70, align 8, !tbaa !65
  %72 = getelementptr inbounds ptr, ptr %71, i64 13
  %73 = load ptr, ptr %72, align 8
  tail call void %73(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %70, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE)
  br label %142

74:                                               ; preds = %61
  %75 = load ptr, ptr %2, align 8, !tbaa !65
  %76 = getelementptr inbounds ptr, ptr %75, i64 23
  %77 = load ptr, ptr %76, align 8
  %78 = tail call noundef nonnull align 8 dereferenceable(36) ptr %77(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %79 = icmp eq i32 %64, 1
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %62, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !82
  %83 = load i16, ptr %82, align 2, !tbaa !83
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %78, i32 noundef 0, i32 noundef -1)
          to label %84 unwind label %87

84:                                               ; preds = %80
  %85 = fptoui double %49 to i32
  %86 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %78, i32 noundef %85, i16 noundef zeroext %83)
          to label %119 unwind label %87

87:                                               ; preds = %84, %80, %119
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %133

89:                                               ; preds = %74
  %90 = fptoui double %49 to i32
  %91 = icmp ult i32 %64, %90
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %62, i64 0, i32 1
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %62, i64 0, i32 3
  br label %95

95:                                               ; preds = %92, %103
  %96 = phi i32 [ %90, %92 ], [ %104, %103 ]
  %97 = load i64, ptr %93, align 8, !tbaa !75
  %98 = icmp eq i64 %97, 0
  %99 = load ptr, ptr %94, align 8
  %100 = select i1 %98, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %99
  %101 = load i32, ptr %63, align 8, !tbaa !70
  %102 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %78, ptr noundef %100, i32 noundef %101)
          to label %103 unwind label %106

103:                                              ; preds = %95
  %104 = sub i32 %96, %64
  %105 = icmp ugt i32 %104, %64
  br i1 %105, label %95, label %110, !llvm.loop !85

106:                                              ; preds = %95
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %133

108:                                              ; preds = %110
  %109 = landingpad { ptr, i32 }
          cleanup
  br label %133

110:                                              ; preds = %103, %89
  %111 = phi i32 [ %90, %89 ], [ %104, %103 ]
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %62, i64 0, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !75
  %114 = icmp eq i64 %113, 0
  %115 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %62, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8
  %117 = select i1 %114, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %116
  %118 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %78, ptr noundef %117, i32 noundef %111)
          to label %119 unwind label %108

119:                                              ; preds = %84, %110
  %120 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !76
  %122 = load ptr, ptr %121, align 8, !tbaa !65
  %123 = getelementptr inbounds ptr, ptr %122, i64 9
  %124 = load ptr, ptr %123, align 8
  invoke void %124(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %121, ptr noundef nonnull align 8 dereferenceable(36) %78)
          to label %125 unwind label %87

125:                                              ; preds = %119
  %126 = load ptr, ptr %2, align 8, !tbaa !65
  %127 = getelementptr inbounds ptr, ptr %126, i64 24
  %128 = load ptr, ptr %127, align 8
  %129 = invoke noundef zeroext i1 %128(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %78)
          to label %142 unwind label %130

130:                                              ; preds = %125
  %131 = landingpad { ptr, i32 }
          catch ptr null
  %132 = extractvalue { ptr, i32 } %131, 0
  tail call void @__clang_call_terminate(ptr %132) #16
  unreachable

133:                                              ; preds = %106, %108, %87
  %134 = phi { ptr, i32 } [ %88, %87 ], [ %107, %106 ], [ %109, %108 ]
  %135 = load ptr, ptr %2, align 8, !tbaa !65
  %136 = getelementptr inbounds ptr, ptr %135, i64 24
  %137 = load ptr, ptr %136, align 8
  %138 = invoke noundef zeroext i1 %137(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %78)
          to label %143 unwind label %139

139:                                              ; preds = %133
  %140 = landingpad { ptr, i32 }
          catch ptr null
  %141 = extractvalue { ptr, i32 } %140, 0
  tail call void @__clang_call_terminate(ptr %141) #16
  unreachable

142:                                              ; preds = %125, %68
  ret void

143:                                              ; preds = %133, %32
  %144 = phi { ptr, i32 } [ %33, %32 ], [ %134, %133 ]
  resume { ptr, i32 } %144
}

declare noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1027XalanEXSLTFunctionEncodeURI7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !59
  %9 = add i64 %8, -4
  %10 = icmp ult i64 %9, -2
  br i1 %10, label %11, label %41

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8, !tbaa !65
  %13 = getelementptr inbounds ptr, ptr %12, i64 23
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef nonnull align 8 dereferenceable(36) ptr %14(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %16 = load ptr, ptr %1, align 8, !tbaa !65
  %17 = getelementptr inbounds ptr, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %15)
          to label %20 unwind label %32

20:                                               ; preds = %11
  %21 = load ptr, ptr %2, align 8, !tbaa !65
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef %3, ptr noundef %5)
          to label %24 unwind label %32

24:                                               ; preds = %20
  %25 = load ptr, ptr %2, align 8, !tbaa !65
  %26 = getelementptr inbounds ptr, ptr %25, i64 24
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %15)
          to label %41 unwind label %29

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #16
  unreachable

32:                                               ; preds = %20, %11
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = load ptr, ptr %2, align 8, !tbaa !65
  %35 = getelementptr inbounds ptr, ptr %34, i64 24
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %15)
          to label %380 unwind label %38

38:                                               ; preds = %32
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #16
  unreachable

41:                                               ; preds = %24, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !67
  %44 = load ptr, ptr %43, align 8, !tbaa !68
  %45 = load ptr, ptr %44, align 8, !tbaa !65
  %46 = getelementptr inbounds ptr, ptr %45, i64 8
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef nonnull align 8 dereferenceable(36) ptr %47(ptr noundef nonnull align 8 dereferenceable(24) %44)
  %49 = load ptr, ptr %42, align 8, !tbaa !67
  %50 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %49, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !68
  %52 = load ptr, ptr %51, align 8, !tbaa !65
  %53 = getelementptr inbounds ptr, ptr %52, i64 7
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef zeroext i1 %54(ptr noundef nonnull align 8 dereferenceable(24) %51)
  %56 = icmp eq i64 %8, 2
  br i1 %56, label %66, label %57

57:                                               ; preds = %41
  %58 = load ptr, ptr %42, align 8, !tbaa !67
  %59 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %58, i64 2
  %60 = load ptr, ptr %59, align 8, !tbaa !68
  %61 = load ptr, ptr %60, align 8, !tbaa !65
  %62 = getelementptr inbounds ptr, ptr %61, i64 8
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef nonnull align 8 dereferenceable(36) ptr %63(ptr noundef nonnull align 8 dereferenceable(24) %60)
  %65 = tail call noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %64)
  br label %66

66:                                               ; preds = %57, %41
  %67 = phi i1 [ true, %41 ], [ %65, %57 ]
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %48, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !70
  %70 = icmp ne i32 %69, 0
  %71 = and i1 %67, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !76
  %75 = load ptr, ptr %74, align 8, !tbaa !65
  %76 = getelementptr inbounds ptr, ptr %75, i64 13
  %77 = load ptr, ptr %76, align 8
  tail call void %77(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %74, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE)
  br label %379

78:                                               ; preds = %66
  %79 = load ptr, ptr %2, align 8, !tbaa !65
  %80 = getelementptr inbounds ptr, ptr %79, i64 23
  %81 = load ptr, ptr %80, align 8
  %82 = tail call noundef nonnull align 8 dereferenceable(36) ptr %81(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %83 = load ptr, ptr %2, align 8, !tbaa !65
  %84 = getelementptr inbounds ptr, ptr %83, i64 23
  %85 = load ptr, ptr %84, align 8
  %86 = invoke noundef nonnull align 8 dereferenceable(36) ptr %85(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %87 unwind label %98

87:                                               ; preds = %78
  %88 = load i32, ptr %68, align 8, !tbaa !70
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %48, i64 0, i32 3
  br label %102

92:                                               ; preds = %340, %87
  %93 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !76
  %95 = load ptr, ptr %94, align 8, !tbaa !65
  %96 = getelementptr inbounds ptr, ptr %95, i64 9
  %97 = load ptr, ptr %96, align 8
  invoke void %97(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %94, ptr noundef nonnull align 8 dereferenceable(36) %82)
          to label %345 unwind label %100

98:                                               ; preds = %78
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %370

100:                                              ; preds = %92
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %361

102:                                              ; preds = %90, %340
  %103 = phi i32 [ 0, %90 ], [ %342, %340 ]
  %104 = zext i32 %103 to i64
  %105 = load ptr, ptr %91, align 8, !tbaa !82
  %106 = getelementptr inbounds i16, ptr %105, i64 %104
  %107 = load i16, ptr %106, align 2, !tbaa !83
  %108 = icmp ult i16 %107, 128
  br i1 %108, label %109, label %190

109:                                              ; preds = %102
  %110 = icmp ult i16 %107, 32
  %111 = icmp eq i16 %107, 127
  %112 = or i1 %110, %111
  br i1 %112, label %174, label %113

113:                                              ; preds = %109, %130
  %114 = phi i64 [ %132, %130 ], [ 3, %109 ]
  %115 = phi ptr [ %131, %130 ], [ @_ZN11xalanc_1_1027XalanEXSLTFunctionEncodeURI15s_excludedCharsE, %109 ]
  %116 = load i16, ptr %115, align 2, !tbaa !83
  %117 = icmp eq i16 %116, %107
  br i1 %117, label %140, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds i16, ptr %115, i64 1
  %120 = load i16, ptr %119, align 2, !tbaa !83
  %121 = icmp eq i16 %120, %107
  br i1 %121, label %134, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds i16, ptr %115, i64 2
  %124 = load i16, ptr %123, align 2, !tbaa !83
  %125 = icmp eq i16 %124, %107
  br i1 %125, label %136, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds i16, ptr %115, i64 3
  %128 = load i16, ptr %127, align 2, !tbaa !83
  %129 = icmp eq i16 %128, %107
  br i1 %129, label %138, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds i16, ptr %115, i64 4
  %132 = add nsw i64 %114, -1
  %133 = icmp ugt i64 %114, 1
  br i1 %133, label %113, label %140, !llvm.loop !86

134:                                              ; preds = %118
  %135 = getelementptr inbounds i16, ptr %115, i64 1
  br label %140

136:                                              ; preds = %122
  %137 = getelementptr inbounds i16, ptr %115, i64 2
  br label %140

138:                                              ; preds = %126
  %139 = getelementptr inbounds i16, ptr %115, i64 3
  br label %140

140:                                              ; preds = %130, %113, %138, %136, %134
  %141 = phi ptr [ %135, %134 ], [ %137, %136 ], [ %139, %138 ], [ getelementptr inbounds ([12 x i16], ptr @_ZN11xalanc_1_1027XalanEXSLTFunctionEncodeURI15s_excludedCharsE, i64 1, i64 0), %130 ], [ %115, %113 ]
  %142 = icmp eq ptr %141, getelementptr inbounds ([12 x i16], ptr @_ZN11xalanc_1_1027XalanEXSLTFunctionEncodeURI15s_excludedCharsE, i64 1, i64 0)
  br i1 %142, label %143, label %174

143:                                              ; preds = %140
  br i1 %55, label %144, label %188

144:                                              ; preds = %143, %161
  %145 = phi i64 [ %163, %161 ], [ 3, %143 ]
  %146 = phi ptr [ %162, %161 ], [ @_ZN11xalanc_1_1027XalanEXSLTFunctionEncodeURI15s_reservedCharsE, %143 ]
  %147 = load i16, ptr %146, align 2, !tbaa !83
  %148 = icmp eq i16 %147, %107
  br i1 %148, label %171, label %149

149:                                              ; preds = %144
  %150 = getelementptr inbounds i16, ptr %146, i64 1
  %151 = load i16, ptr %150, align 2, !tbaa !83
  %152 = icmp eq i16 %151, %107
  br i1 %152, label %165, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds i16, ptr %146, i64 2
  %155 = load i16, ptr %154, align 2, !tbaa !83
  %156 = icmp eq i16 %155, %107
  br i1 %156, label %167, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds i16, ptr %146, i64 3
  %159 = load i16, ptr %158, align 2, !tbaa !83
  %160 = icmp eq i16 %159, %107
  br i1 %160, label %169, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds i16, ptr %146, i64 4
  %163 = add nsw i64 %145, -1
  %164 = icmp ugt i64 %145, 1
  br i1 %164, label %144, label %171, !llvm.loop !86

165:                                              ; preds = %149
  %166 = getelementptr inbounds i16, ptr %146, i64 1
  br label %171

167:                                              ; preds = %153
  %168 = getelementptr inbounds i16, ptr %146, i64 2
  br label %171

169:                                              ; preds = %157
  %170 = getelementptr inbounds i16, ptr %146, i64 3
  br label %171

171:                                              ; preds = %161, %144, %169, %167, %165
  %172 = phi ptr [ %166, %165 ], [ %168, %167 ], [ %170, %169 ], [ getelementptr inbounds ([12 x i16], ptr @_ZN11xalanc_1_1027XalanEXSLTFunctionEncodeURI15s_reservedCharsE, i64 1, i64 0), %161 ], [ %146, %144 ]
  %173 = icmp eq ptr %172, getelementptr inbounds ([12 x i16], ptr @_ZN11xalanc_1_1027XalanEXSLTFunctionEncodeURI15s_reservedCharsE, i64 1, i64 0)
  br i1 %173, label %188, label %174

174:                                              ; preds = %171, %140, %109
  %175 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionEncodeURI12escapedOctetEtRNS_14XalanDOMStringE(ptr nonnull align 8 poison, i16 noundef zeroext %107, ptr noundef nonnull align 8 dereferenceable(36) %86)
          to label %176 unwind label %186

176:                                              ; preds = %174
  %177 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %175, i64 0, i32 1
  %178 = load i64, ptr %177, align 8, !tbaa !75
  %179 = icmp eq i64 %178, 0
  %180 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %175, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8
  %182 = select i1 %179, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %181
  %183 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %175, i64 0, i32 1
  %184 = load i32, ptr %183, align 8, !tbaa !70
  %185 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %82, ptr noundef %182, i32 noundef %184)
          to label %340 unwind label %186

186:                                              ; preds = %188, %176, %174
  %187 = landingpad { ptr, i32 }
          cleanup
  br label %361

188:                                              ; preds = %171, %143
  %189 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %82, i32 noundef 1, i16 noundef zeroext %107)
          to label %340 unwind label %186

190:                                              ; preds = %102
  %191 = icmp ult i16 %107, 2048
  br i1 %191, label %192, label %222

192:                                              ; preds = %190
  %193 = lshr i16 %107, 6
  %194 = or disjoint i16 %193, 192
  %195 = and i16 %107, 63
  %196 = or disjoint i16 %195, 128
  %197 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionEncodeURI12escapedOctetEtRNS_14XalanDOMStringE(ptr nonnull align 8 poison, i16 noundef zeroext %194, ptr noundef nonnull align 8 dereferenceable(36) %86)
          to label %198 unwind label %220

198:                                              ; preds = %192
  %199 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %197, i64 0, i32 1
  %200 = load i64, ptr %199, align 8, !tbaa !75
  %201 = icmp eq i64 %200, 0
  %202 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %197, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8
  %204 = select i1 %201, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %203
  %205 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %197, i64 0, i32 1
  %206 = load i32, ptr %205, align 8, !tbaa !70
  %207 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %82, ptr noundef %204, i32 noundef %206)
          to label %208 unwind label %220

208:                                              ; preds = %198
  %209 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionEncodeURI12escapedOctetEtRNS_14XalanDOMStringE(ptr nonnull align 8 poison, i16 noundef zeroext %196, ptr noundef nonnull align 8 dereferenceable(36) %86)
          to label %210 unwind label %220

210:                                              ; preds = %208
  %211 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %209, i64 0, i32 1
  %212 = load i64, ptr %211, align 8, !tbaa !75
  %213 = icmp eq i64 %212, 0
  %214 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %209, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8
  %216 = select i1 %213, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %215
  %217 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %209, i64 0, i32 1
  %218 = load i32, ptr %217, align 8, !tbaa !70
  %219 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %82, ptr noundef %216, i32 noundef %218)
          to label %340 unwind label %220

220:                                              ; preds = %210, %198, %208, %192
  %221 = landingpad { ptr, i32 }
          cleanup
  br label %361

222:                                              ; preds = %190
  %223 = and i16 %107, -1024
  %224 = icmp eq i16 %223, -10240
  br i1 %224, label %225, label %295

225:                                              ; preds = %222
  %226 = and i16 %107, 1023
  %227 = add nuw nsw i16 %226, 64
  %228 = add i32 %103, 1
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds i16, ptr %105, i64 %229
  %231 = load i16, ptr %230, align 2, !tbaa !83
  %232 = lshr i16 %227, 8
  %233 = and i16 %232, 3
  %234 = or disjoint i16 %233, 240
  %235 = lshr i16 %227, 2
  %236 = and i16 %235, 63
  %237 = or disjoint i16 %236, 128
  %238 = shl i16 %107, 4
  %239 = and i16 %238, 48
  %240 = lshr i16 %231, 6
  %241 = and i16 %240, 15
  %242 = or disjoint i16 %239, %241
  %243 = or disjoint i16 %242, 128
  %244 = and i16 %231, 63
  %245 = or disjoint i16 %244, 128
  %246 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionEncodeURI12escapedOctetEtRNS_14XalanDOMStringE(ptr nonnull align 8 poison, i16 noundef zeroext %234, ptr noundef nonnull align 8 dereferenceable(36) %86)
          to label %247 unwind label %293

247:                                              ; preds = %225
  %248 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %246, i64 0, i32 1
  %249 = load i64, ptr %248, align 8, !tbaa !75
  %250 = icmp eq i64 %249, 0
  %251 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %246, i64 0, i32 3
  %252 = load ptr, ptr %251, align 8
  %253 = select i1 %250, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %252
  %254 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %246, i64 0, i32 1
  %255 = load i32, ptr %254, align 8, !tbaa !70
  %256 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %82, ptr noundef %253, i32 noundef %255)
          to label %257 unwind label %293

257:                                              ; preds = %247
  %258 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionEncodeURI12escapedOctetEtRNS_14XalanDOMStringE(ptr nonnull align 8 poison, i16 noundef zeroext %237, ptr noundef nonnull align 8 dereferenceable(36) %86)
          to label %259 unwind label %293

259:                                              ; preds = %257
  %260 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %258, i64 0, i32 1
  %261 = load i64, ptr %260, align 8, !tbaa !75
  %262 = icmp eq i64 %261, 0
  %263 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %258, i64 0, i32 3
  %264 = load ptr, ptr %263, align 8
  %265 = select i1 %262, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %264
  %266 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %258, i64 0, i32 1
  %267 = load i32, ptr %266, align 8, !tbaa !70
  %268 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %82, ptr noundef %265, i32 noundef %267)
          to label %269 unwind label %293

269:                                              ; preds = %259
  %270 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionEncodeURI12escapedOctetEtRNS_14XalanDOMStringE(ptr nonnull align 8 poison, i16 noundef zeroext %243, ptr noundef nonnull align 8 dereferenceable(36) %86)
          to label %271 unwind label %293

271:                                              ; preds = %269
  %272 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %270, i64 0, i32 1
  %273 = load i64, ptr %272, align 8, !tbaa !75
  %274 = icmp eq i64 %273, 0
  %275 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %270, i64 0, i32 3
  %276 = load ptr, ptr %275, align 8
  %277 = select i1 %274, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %276
  %278 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %270, i64 0, i32 1
  %279 = load i32, ptr %278, align 8, !tbaa !70
  %280 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %82, ptr noundef %277, i32 noundef %279)
          to label %281 unwind label %293

281:                                              ; preds = %271
  %282 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionEncodeURI12escapedOctetEtRNS_14XalanDOMStringE(ptr nonnull align 8 poison, i16 noundef zeroext %245, ptr noundef nonnull align 8 dereferenceable(36) %86)
          to label %283 unwind label %293

283:                                              ; preds = %281
  %284 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %282, i64 0, i32 1
  %285 = load i64, ptr %284, align 8, !tbaa !75
  %286 = icmp eq i64 %285, 0
  %287 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %282, i64 0, i32 3
  %288 = load ptr, ptr %287, align 8
  %289 = select i1 %286, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %288
  %290 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %282, i64 0, i32 1
  %291 = load i32, ptr %290, align 8, !tbaa !70
  %292 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %82, ptr noundef %289, i32 noundef %291)
          to label %340 unwind label %293

293:                                              ; preds = %283, %271, %259, %247, %281, %269, %257, %225
  %294 = landingpad { ptr, i32 }
          cleanup
  br label %361

295:                                              ; preds = %222
  %296 = lshr i16 %107, 12
  %297 = or disjoint i16 %296, 224
  %298 = lshr i16 %107, 6
  %299 = and i16 %298, 63
  %300 = or disjoint i16 %299, 128
  %301 = and i16 %107, 63
  %302 = or disjoint i16 %301, 128
  %303 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionEncodeURI12escapedOctetEtRNS_14XalanDOMStringE(ptr nonnull align 8 poison, i16 noundef zeroext %297, ptr noundef nonnull align 8 dereferenceable(36) %86)
          to label %304 unwind label %338

304:                                              ; preds = %295
  %305 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %303, i64 0, i32 1
  %306 = load i64, ptr %305, align 8, !tbaa !75
  %307 = icmp eq i64 %306, 0
  %308 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %303, i64 0, i32 3
  %309 = load ptr, ptr %308, align 8
  %310 = select i1 %307, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %309
  %311 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %303, i64 0, i32 1
  %312 = load i32, ptr %311, align 8, !tbaa !70
  %313 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %82, ptr noundef %310, i32 noundef %312)
          to label %314 unwind label %338

314:                                              ; preds = %304
  %315 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionEncodeURI12escapedOctetEtRNS_14XalanDOMStringE(ptr nonnull align 8 poison, i16 noundef zeroext %300, ptr noundef nonnull align 8 dereferenceable(36) %86)
          to label %316 unwind label %338

316:                                              ; preds = %314
  %317 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %315, i64 0, i32 1
  %318 = load i64, ptr %317, align 8, !tbaa !75
  %319 = icmp eq i64 %318, 0
  %320 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %315, i64 0, i32 3
  %321 = load ptr, ptr %320, align 8
  %322 = select i1 %319, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %321
  %323 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %315, i64 0, i32 1
  %324 = load i32, ptr %323, align 8, !tbaa !70
  %325 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %82, ptr noundef %322, i32 noundef %324)
          to label %326 unwind label %338

326:                                              ; preds = %316
  %327 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionEncodeURI12escapedOctetEtRNS_14XalanDOMStringE(ptr nonnull align 8 poison, i16 noundef zeroext %302, ptr noundef nonnull align 8 dereferenceable(36) %86)
          to label %328 unwind label %338

328:                                              ; preds = %326
  %329 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %327, i64 0, i32 1
  %330 = load i64, ptr %329, align 8, !tbaa !75
  %331 = icmp eq i64 %330, 0
  %332 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %327, i64 0, i32 3
  %333 = load ptr, ptr %332, align 8
  %334 = select i1 %331, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %333
  %335 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %327, i64 0, i32 1
  %336 = load i32, ptr %335, align 8, !tbaa !70
  %337 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %82, ptr noundef %334, i32 noundef %336)
          to label %340 unwind label %338

338:                                              ; preds = %328, %316, %304, %326, %314, %295
  %339 = landingpad { ptr, i32 }
          cleanup
  br label %361

340:                                              ; preds = %188, %328, %283, %210, %176
  %341 = phi i32 [ %103, %176 ], [ %103, %210 ], [ %228, %283 ], [ %103, %328 ], [ %103, %188 ]
  %342 = add i32 %341, 1
  %343 = load i32, ptr %68, align 8, !tbaa !70
  %344 = icmp ult i32 %342, %343
  br i1 %344, label %102, label %92, !llvm.loop !87

345:                                              ; preds = %92
  %346 = load ptr, ptr %2, align 8, !tbaa !65
  %347 = getelementptr inbounds ptr, ptr %346, i64 24
  %348 = load ptr, ptr %347, align 8
  %349 = invoke noundef zeroext i1 %348(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %86)
          to label %353 unwind label %350

350:                                              ; preds = %345
  %351 = landingpad { ptr, i32 }
          catch ptr null
  %352 = extractvalue { ptr, i32 } %351, 0
  tail call void @__clang_call_terminate(ptr %352) #16
  unreachable

353:                                              ; preds = %345
  %354 = load ptr, ptr %2, align 8, !tbaa !65
  %355 = getelementptr inbounds ptr, ptr %354, i64 24
  %356 = load ptr, ptr %355, align 8
  %357 = invoke noundef zeroext i1 %356(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %82)
          to label %379 unwind label %358

358:                                              ; preds = %353
  %359 = landingpad { ptr, i32 }
          catch ptr null
  %360 = extractvalue { ptr, i32 } %359, 0
  tail call void @__clang_call_terminate(ptr %360) #16
  unreachable

361:                                              ; preds = %186, %220, %293, %338, %100
  %362 = phi { ptr, i32 } [ %101, %100 ], [ %187, %186 ], [ %221, %220 ], [ %294, %293 ], [ %339, %338 ]
  %363 = load ptr, ptr %2, align 8, !tbaa !65
  %364 = getelementptr inbounds ptr, ptr %363, i64 24
  %365 = load ptr, ptr %364, align 8
  %366 = invoke noundef zeroext i1 %365(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %86)
          to label %370 unwind label %367

367:                                              ; preds = %361
  %368 = landingpad { ptr, i32 }
          catch ptr null
  %369 = extractvalue { ptr, i32 } %368, 0
  tail call void @__clang_call_terminate(ptr %369) #16
  unreachable

370:                                              ; preds = %98, %361
  %371 = phi { ptr, i32 } [ %99, %98 ], [ %362, %361 ]
  %372 = load ptr, ptr %2, align 8, !tbaa !65
  %373 = getelementptr inbounds ptr, ptr %372, i64 24
  %374 = load ptr, ptr %373, align 8
  %375 = invoke noundef zeroext i1 %374(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %82)
          to label %380 unwind label %376

376:                                              ; preds = %370
  %377 = landingpad { ptr, i32 }
          catch ptr null
  %378 = extractvalue { ptr, i32 } %377, 0
  tail call void @__clang_call_terminate(ptr %378) #16
  unreachable

379:                                              ; preds = %353, %72
  ret void

380:                                              ; preds = %370, %32
  %381 = phi { ptr, i32 } [ %33, %32 ], [ %371, %370 ]
  resume { ptr, i32 } %381
}

declare noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionEncodeURI12escapedOctetEtRNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, i16 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #0 align 2 !prof !58 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 0, i32 noundef -1)
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 1, i16 noundef zeroext 37)
  %5 = icmp ult i16 %1, 16
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 1, i16 noundef zeroext 48)
  br label %8

8:                                                ; preds = %6, %3
  %9 = zext i16 %1 to i64
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret ptr %10
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1027XalanEXSLTFunctionDecodeURI7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !59
  %9 = add i64 %8, -3
  %10 = icmp ult i64 %9, -2
  br i1 %10, label %11, label %41

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8, !tbaa !65
  %13 = getelementptr inbounds ptr, ptr %12, i64 23
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef nonnull align 8 dereferenceable(36) ptr %14(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %16 = load ptr, ptr %1, align 8, !tbaa !65
  %17 = getelementptr inbounds ptr, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %15)
          to label %20 unwind label %32

20:                                               ; preds = %11
  %21 = load ptr, ptr %2, align 8, !tbaa !65
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef %3, ptr noundef %5)
          to label %24 unwind label %32

24:                                               ; preds = %20
  %25 = load ptr, ptr %2, align 8, !tbaa !65
  %26 = getelementptr inbounds ptr, ptr %25, i64 24
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %15)
          to label %41 unwind label %29

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #16
  unreachable

32:                                               ; preds = %20, %11
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = load ptr, ptr %2, align 8, !tbaa !65
  %35 = getelementptr inbounds ptr, ptr %34, i64 24
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %15)
          to label %316 unwind label %38

38:                                               ; preds = %32
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #16
  unreachable

41:                                               ; preds = %24, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !67
  %44 = load ptr, ptr %43, align 8, !tbaa !68
  %45 = load ptr, ptr %44, align 8, !tbaa !65
  %46 = getelementptr inbounds ptr, ptr %45, i64 8
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef nonnull align 8 dereferenceable(36) ptr %47(ptr noundef nonnull align 8 dereferenceable(24) %44)
  %49 = icmp eq i64 %8, 1
  br i1 %49, label %59, label %50

50:                                               ; preds = %41
  %51 = load ptr, ptr %42, align 8, !tbaa !67
  %52 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %51, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !68
  %54 = load ptr, ptr %53, align 8, !tbaa !65
  %55 = getelementptr inbounds ptr, ptr %54, i64 8
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef nonnull align 8 dereferenceable(36) ptr %56(ptr noundef nonnull align 8 dereferenceable(24) %53)
  %58 = tail call noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %57)
  br label %59

59:                                               ; preds = %50, %41
  %60 = phi i1 [ true, %41 ], [ %58, %50 ]
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %48, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !70
  %63 = icmp ne i32 %62, 0
  %64 = and i1 %60, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !76
  %68 = load ptr, ptr %67, align 8, !tbaa !65
  %69 = getelementptr inbounds ptr, ptr %68, i64 13
  %70 = load ptr, ptr %69, align 8
  tail call void %70(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %67, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE)
  br label %315

71:                                               ; preds = %59
  %72 = load ptr, ptr %2, align 8, !tbaa !65
  %73 = getelementptr inbounds ptr, ptr %72, i64 23
  %74 = load ptr, ptr %73, align 8
  %75 = tail call noundef nonnull align 8 dereferenceable(36) ptr %74(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %76 = load i32, ptr %61, align 8, !tbaa !70
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %292, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %48, i64 0, i32 3
  br label %82

80:                                               ; preds = %292
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %306

82:                                               ; preds = %78, %288
  %83 = phi i32 [ %76, %78 ], [ %290, %288 ]
  %84 = phi i32 [ 0, %78 ], [ %289, %288 ]
  %85 = zext i32 %84 to i64
  %86 = load ptr, ptr %79, align 8, !tbaa !82
  %87 = getelementptr inbounds i16, ptr %86, i64 %85
  %88 = load i16, ptr %87, align 2, !tbaa !83
  %89 = icmp eq i16 %88, 37
  br i1 %89, label %90, label %98

90:                                               ; preds = %82
  %91 = zext i32 %84 to i64
  %92 = getelementptr inbounds i16, ptr %86, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !83
  %94 = icmp eq i16 %93, 37
  %95 = add i32 %84, 2
  %96 = icmp ult i32 %95, %83
  %97 = and i1 %96, %94
  br i1 %97, label %102, label %114

98:                                               ; preds = %82
  %99 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %75, i32 noundef 1, i16 noundef zeroext %88)
          to label %285 unwind label %100

100:                                              ; preds = %98
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %306

102:                                              ; preds = %90, %102
  %103 = phi i32 [ %105, %102 ], [ 0, %90 ]
  %104 = phi i32 [ %106, %102 ], [ %84, %90 ]
  %105 = add i32 %103, 1
  %106 = add i32 %104, 3
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i16, ptr %86, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !83
  %110 = icmp eq i16 %109, 37
  %111 = add i32 %104, 5
  %112 = icmp ult i32 %111, %83
  %113 = and i1 %112, %110
  br i1 %113, label %102, label %114, !llvm.loop !88

114:                                              ; preds = %102, %90
  %115 = phi i32 [ 0, %90 ], [ %105, %102 ]
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %285, label %117

117:                                              ; preds = %114
  %118 = add i32 %84, 1
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i16, ptr %86, i64 %119
  %121 = load i16, ptr %120, align 2, !tbaa !83
  %122 = add i32 %84, 2
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i16, ptr %86, i64 %123
  %125 = load i16, ptr %124, align 2, !tbaa !83
  %126 = invoke noundef zeroext i16 @_ZNK11xalanc_1_1027XalanEXSLTFunctionDecodeURI14hexCharsToByteERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorEtt(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %5, i16 noundef zeroext %121, i16 noundef zeroext %125)
          to label %127 unwind label %133

127:                                              ; preds = %117
  %128 = zext i16 %126 to i32
  %129 = and i32 %128, 128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %75, i32 noundef 1, i16 noundef zeroext %126)
          to label %285 unwind label %133

133:                                              ; preds = %131, %117
  %134 = landingpad { ptr, i32 }
          cleanup
  br label %306

135:                                              ; preds = %127
  %136 = and i32 %128, 224
  %137 = icmp eq i32 %136, 192
  %138 = icmp ne i32 %115, 1
  %139 = and i1 %137, %138
  br i1 %139, label %140, label %165

140:                                              ; preds = %135
  %141 = add i32 %84, 4
  %142 = zext i32 %141 to i64
  %143 = load ptr, ptr %79, align 8, !tbaa !82
  %144 = getelementptr inbounds i16, ptr %143, i64 %142
  %145 = load i16, ptr %144, align 2, !tbaa !83
  %146 = add i32 %84, 5
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i16, ptr %143, i64 %147
  %149 = load i16, ptr %148, align 2, !tbaa !83
  %150 = invoke noundef zeroext i16 @_ZNK11xalanc_1_1027XalanEXSLTFunctionDecodeURI14hexCharsToByteERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorEtt(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %5, i16 noundef zeroext %145, i16 noundef zeroext %149)
          to label %151 unwind label %163

151:                                              ; preds = %140
  %152 = and i16 %150, 128
  %153 = icmp eq i16 %152, 0
  %154 = mul i32 %115, 3
  %155 = add i32 %154, -6
  %156 = select i1 %153, i32 %155, i32 0
  %157 = add i32 %156, %146
  %158 = shl i16 %126, 6
  %159 = and i16 %158, 1984
  %160 = and i16 %150, 63
  %161 = or disjoint i16 %160, %159
  %162 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %75, i32 noundef 1, i16 noundef zeroext %161)
          to label %285 unwind label %163

163:                                              ; preds = %151, %140
  %164 = landingpad { ptr, i32 }
          cleanup
  br label %306

165:                                              ; preds = %135
  %166 = and i32 %128, 240
  %167 = icmp eq i32 %166, 224
  %168 = icmp ugt i32 %115, 2
  %169 = and i1 %167, %168
  br i1 %169, label %170, label %211

170:                                              ; preds = %165
  %171 = add i32 %84, 4
  %172 = zext i32 %171 to i64
  %173 = load ptr, ptr %79, align 8, !tbaa !82
  %174 = getelementptr inbounds i16, ptr %173, i64 %172
  %175 = load i16, ptr %174, align 2, !tbaa !83
  %176 = add i32 %84, 5
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i16, ptr %173, i64 %177
  %179 = load i16, ptr %178, align 2, !tbaa !83
  %180 = invoke noundef zeroext i16 @_ZNK11xalanc_1_1027XalanEXSLTFunctionDecodeURI14hexCharsToByteERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorEtt(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %5, i16 noundef zeroext %175, i16 noundef zeroext %179)
          to label %181 unwind label %207

181:                                              ; preds = %170
  %182 = add i32 %84, 7
  %183 = zext i32 %182 to i64
  %184 = load ptr, ptr %79, align 8, !tbaa !82
  %185 = getelementptr inbounds i16, ptr %184, i64 %183
  %186 = load i16, ptr %185, align 2, !tbaa !83
  %187 = add i32 %84, 8
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i16, ptr %184, i64 %188
  %190 = load i16, ptr %189, align 2, !tbaa !83
  %191 = invoke noundef zeroext i16 @_ZNK11xalanc_1_1027XalanEXSLTFunctionDecodeURI14hexCharsToByteERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorEtt(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %5, i16 noundef zeroext %186, i16 noundef zeroext %190)
          to label %192 unwind label %209

192:                                              ; preds = %181
  %193 = and i16 %180, 128
  %194 = and i16 %193, %191
  %195 = icmp eq i16 %194, 0
  %196 = mul i32 %115, 3
  %197 = add i32 %196, -9
  %198 = select i1 %195, i32 %197, i32 0
  %199 = add i32 %198, %187
  %200 = shl i16 %126, 12
  %201 = shl i16 %180, 6
  %202 = and i16 %201, 4032
  %203 = or disjoint i16 %202, %200
  %204 = and i16 %191, 63
  %205 = or disjoint i16 %204, %203
  %206 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %75, i32 noundef 1, i16 noundef zeroext %205)
          to label %285 unwind label %209

207:                                              ; preds = %170
  %208 = landingpad { ptr, i32 }
          cleanup
  br label %306

209:                                              ; preds = %192, %181
  %210 = landingpad { ptr, i32 }
          cleanup
  br label %306

211:                                              ; preds = %165
  %212 = and i32 %128, 248
  %213 = icmp eq i32 %212, 240
  %214 = icmp ugt i32 %115, 3
  %215 = and i1 %213, %214
  br i1 %215, label %216, label %281

216:                                              ; preds = %211
  %217 = add i32 %84, 4
  %218 = zext i32 %217 to i64
  %219 = load ptr, ptr %79, align 8, !tbaa !82
  %220 = getelementptr inbounds i16, ptr %219, i64 %218
  %221 = load i16, ptr %220, align 2, !tbaa !83
  %222 = add i32 %84, 5
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds i16, ptr %219, i64 %223
  %225 = load i16, ptr %224, align 2, !tbaa !83
  %226 = invoke noundef zeroext i16 @_ZNK11xalanc_1_1027XalanEXSLTFunctionDecodeURI14hexCharsToByteERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorEtt(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %5, i16 noundef zeroext %221, i16 noundef zeroext %225)
          to label %227 unwind label %260

227:                                              ; preds = %216
  %228 = add i32 %84, 7
  %229 = zext i32 %228 to i64
  %230 = load ptr, ptr %79, align 8, !tbaa !82
  %231 = getelementptr inbounds i16, ptr %230, i64 %229
  %232 = load i16, ptr %231, align 2, !tbaa !83
  %233 = add i32 %84, 8
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds i16, ptr %230, i64 %234
  %236 = load i16, ptr %235, align 2, !tbaa !83
  %237 = invoke noundef zeroext i16 @_ZNK11xalanc_1_1027XalanEXSLTFunctionDecodeURI14hexCharsToByteERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorEtt(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %5, i16 noundef zeroext %232, i16 noundef zeroext %236)
          to label %238 unwind label %262

238:                                              ; preds = %227
  %239 = add i32 %84, 10
  %240 = zext i32 %239 to i64
  %241 = load ptr, ptr %79, align 8, !tbaa !82
  %242 = getelementptr inbounds i16, ptr %241, i64 %240
  %243 = load i16, ptr %242, align 2, !tbaa !83
  %244 = add i32 %84, 11
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i16, ptr %241, i64 %245
  %247 = load i16, ptr %246, align 2, !tbaa !83
  %248 = invoke noundef zeroext i16 @_ZNK11xalanc_1_1027XalanEXSLTFunctionDecodeURI14hexCharsToByteERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorEtt(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %5, i16 noundef zeroext %243, i16 noundef zeroext %247)
          to label %249 unwind label %264

249:                                              ; preds = %238
  %250 = shl i16 %126, 8
  %251 = and i16 %250, 1792
  %252 = shl i16 %226, 2
  %253 = and i16 %252, 252
  %254 = or disjoint i16 %251, %253
  %255 = lshr i16 %237, 4
  %256 = and i16 %255, 3
  %257 = add nuw nsw i16 %254, -10304
  %258 = or disjoint i16 %257, %256
  %259 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %75, i32 noundef 1, i16 noundef zeroext %258)
          to label %266 unwind label %264

260:                                              ; preds = %216
  %261 = landingpad { ptr, i32 }
          cleanup
  br label %306

262:                                              ; preds = %227
  %263 = landingpad { ptr, i32 }
          cleanup
  br label %306

264:                                              ; preds = %266, %249, %238
  %265 = landingpad { ptr, i32 }
          cleanup
  br label %306

266:                                              ; preds = %249
  %267 = and i16 %226, 128
  %268 = and i16 %267, %237
  %269 = and i16 %268, %248
  %270 = icmp eq i16 %269, 0
  %271 = mul i32 %115, 3
  %272 = add i32 %271, -12
  %273 = select i1 %270, i32 %272, i32 0
  %274 = add i32 %273, %244
  %275 = shl i16 %237, 6
  %276 = and i16 %275, 960
  %277 = and i16 %248, 63
  %278 = or disjoint i16 %276, %277
  %279 = or disjoint i16 %278, -9216
  %280 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %75, i32 noundef 1, i16 noundef zeroext %279)
          to label %285 unwind label %264

281:                                              ; preds = %211
  %282 = mul i32 %115, 3
  %283 = add i32 %84, -1
  %284 = add i32 %283, %282
  br label %285

285:                                              ; preds = %266, %192, %151, %131, %98, %114, %281
  %286 = phi i32 [ %84, %114 ], [ %284, %281 ], [ %84, %98 ], [ %122, %131 ], [ %157, %151 ], [ %199, %192 ], [ %274, %266 ]
  %287 = phi i32 [ 2, %114 ], [ 0, %281 ], [ 4, %98 ], [ 0, %131 ], [ 0, %151 ], [ 0, %192 ], [ 0, %266 ]
  switch i32 %287, label %292 [
    i32 0, label %288
    i32 4, label %288
  ]

288:                                              ; preds = %285, %285
  %289 = add i32 %286, 1
  %290 = load i32, ptr %61, align 8, !tbaa !70
  %291 = icmp ult i32 %289, %290
  br i1 %291, label %82, label %292, !llvm.loop !89

292:                                              ; preds = %285, %288, %71
  %293 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %294 = load ptr, ptr %293, align 8, !tbaa !76
  %295 = load ptr, ptr %294, align 8, !tbaa !65
  %296 = getelementptr inbounds ptr, ptr %295, i64 9
  %297 = load ptr, ptr %296, align 8
  invoke void %297(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %294, ptr noundef nonnull align 8 dereferenceable(36) %75)
          to label %298 unwind label %80

298:                                              ; preds = %292
  %299 = load ptr, ptr %2, align 8, !tbaa !65
  %300 = getelementptr inbounds ptr, ptr %299, i64 24
  %301 = load ptr, ptr %300, align 8
  %302 = invoke noundef zeroext i1 %301(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %75)
          to label %315 unwind label %303

303:                                              ; preds = %298
  %304 = landingpad { ptr, i32 }
          catch ptr null
  %305 = extractvalue { ptr, i32 } %304, 0
  tail call void @__clang_call_terminate(ptr %305) #16
  unreachable

306:                                              ; preds = %80, %100, %133, %163, %209, %207, %262, %264, %260
  %307 = phi { ptr, i32 } [ %81, %80 ], [ %101, %100 ], [ %134, %133 ], [ %164, %163 ], [ %210, %209 ], [ %208, %207 ], [ %261, %260 ], [ %265, %264 ], [ %263, %262 ]
  %308 = load ptr, ptr %2, align 8, !tbaa !65
  %309 = getelementptr inbounds ptr, ptr %308, i64 24
  %310 = load ptr, ptr %309, align 8
  %311 = invoke noundef zeroext i1 %310(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %75)
          to label %316 unwind label %312

312:                                              ; preds = %306
  %313 = landingpad { ptr, i32 }
          catch ptr null
  %314 = extractvalue { ptr, i32 } %313, 0
  tail call void @__clang_call_terminate(ptr %314) #16
  unreachable

315:                                              ; preds = %298, %65
  ret void

316:                                              ; preds = %306, %32
  %317 = phi { ptr, i32 } [ %33, %32 ], [ %307, %306 ]
  resume { ptr, i32 } %317
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i16 @_ZNK11xalanc_1_1027XalanEXSLTFunctionDecodeURI14hexCharsToByteERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorEtt(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i16 noundef zeroext %4, i16 noundef zeroext %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  br label %8

7:                                                ; preds = %69
  ret i16 %70

8:                                                ; preds = %6, %69
  %9 = phi i16 [ 0, %6 ], [ %70, %69 ]
  %10 = phi i16 [ %5, %6 ], [ %4, %69 ]
  %11 = phi i32 [ 0, %6 ], [ %71, %69 ]
  %12 = zext i16 %10 to i32
  %13 = add i16 %10, -48
  %14 = icmp ult i16 %13, 10
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = add nuw nsw i32 %12, 208
  %17 = shl nuw nsw i32 %11, 2
  %18 = shl nuw nsw i32 %16, %17
  %19 = trunc i32 %18 to i16
  %20 = and i16 %19, 255
  %21 = add i16 %20, %9
  br label %69

22:                                               ; preds = %8
  %23 = add i16 %10, -65
  %24 = icmp ult i16 %23, 6
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = add nuw nsw i32 %12, 457
  %27 = shl nuw nsw i32 %11, 2
  %28 = shl nuw nsw i32 %26, %27
  %29 = trunc i32 %28 to i16
  %30 = and i16 %29, 511
  %31 = add i16 %30, %9
  br label %69

32:                                               ; preds = %22
  %33 = add i16 %10, -97
  %34 = icmp ult i16 %33, 6
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = add nuw nsw i32 %12, 41
  %37 = shl nuw nsw i32 %36, %11
  %38 = trunc i32 %37 to i16
  %39 = and i16 %38, 63
  %40 = add i16 %39, %9
  br label %69

41:                                               ; preds = %32
  %42 = load ptr, ptr %1, align 8, !tbaa !65
  %43 = getelementptr inbounds ptr, ptr %42, i64 23
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef nonnull align 8 dereferenceable(36) ptr %44(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %46 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %45, i32 noundef 184)
          to label %47 unwind label %59

47:                                               ; preds = %41
  %48 = load ptr, ptr %1, align 8, !tbaa !65
  %49 = getelementptr inbounds ptr, ptr %48, i64 2
  %50 = load ptr, ptr %49, align 8
  invoke void %50(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %46, ptr noundef %2, ptr noundef %3)
          to label %51 unwind label %59

51:                                               ; preds = %47
  %52 = load ptr, ptr %1, align 8, !tbaa !65
  %53 = getelementptr inbounds ptr, ptr %52, i64 24
  %54 = load ptr, ptr %53, align 8
  %55 = invoke noundef zeroext i1 %54(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %45)
          to label %69 unwind label %56

56:                                               ; preds = %51
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  tail call void @__clang_call_terminate(ptr %58) #16
  unreachable

59:                                               ; preds = %47, %41
  %60 = landingpad { ptr, i32 }
          cleanup
  %61 = load ptr, ptr %1, align 8, !tbaa !65
  %62 = getelementptr inbounds ptr, ptr %61, i64 24
  %63 = load ptr, ptr %62, align 8
  %64 = invoke noundef zeroext i1 %63(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %45)
          to label %68 unwind label %65

65:                                               ; preds = %59
  %66 = landingpad { ptr, i32 }
          catch ptr null
  %67 = extractvalue { ptr, i32 } %66, 0
  tail call void @__clang_call_terminate(ptr %67) #16
  unreachable

68:                                               ; preds = %59
  resume { ptr, i32 } %60

69:                                               ; preds = %51, %25, %35, %15
  %70 = phi i16 [ %21, %15 ], [ %31, %25 ], [ %40, %35 ], [ %9, %51 ]
  %71 = add nuw nsw i32 %11, 1
  %72 = icmp eq i32 %11, 0
  br i1 %72, label %8, label %7, !llvm.loop !90
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanEXSLTFunctionPaddingC2ERN11xercesc_2_713MemoryManagerEi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1025XalanEXSLTFunctionPaddingE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionPadding", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %5 unwind label %6, !prof !92

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanEXSLTFunctionPaddingD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !91 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1025XalanEXSLTFunctionPaddingE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionPadding", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1034XalanEXSLTStringFunctionsInstaller12installLocalERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #0 align 2 !prof !58 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller14doInstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull @_ZN11xalanc_1_10L17s_stringNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE, ptr noundef nonnull align 8 dereferenceable(280) %0)
  ret void
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller14doInstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1034XalanEXSLTStringFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !91 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L17s_stringNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE)
  ret void
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1034XalanEXSLTStringFunctionsInstaller14uninstallLocalERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #0 align 2 !prof !58 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller16doUninstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull @_ZN11xalanc_1_10L17s_stringNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE, ptr noundef nonnull align 8 dereferenceable(280) %0)
  ret void
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller16doUninstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1034XalanEXSLTStringFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !91 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L17s_stringNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE)
  ret void
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanEXSLTFunctionAlignD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !58 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  tail call void @_ZdlPv(ptr noundef %0) #18
  ret void
}

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1023XalanEXSLTFunctionAlign5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %3 = load ptr, ptr %1, align 8, !tbaa !65
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !93
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1023XalanEXSLTFunctionAlignE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !65
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1023XalanEXSLTFunctionAlign8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 comdat align 2 !prof !58 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 148, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1024XalanEXSLTFunctionConcatD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !58 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  tail call void @_ZdlPv(ptr noundef %0) #18
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1024XalanEXSLTFunctionConcat5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %3 = load ptr, ptr %1, align 8, !tbaa !65
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !93
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1024XalanEXSLTFunctionConcatE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !65
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XalanEXSLTFunctionConcat8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 comdat align 2 !prof !58 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanEXSLTFunctionPaddingD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !58 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1025XalanEXSLTFunctionPaddingE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionPadding", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  tail call void @_ZdlPv(ptr noundef %0) #18
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionPadding5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !91 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionPaddingEN11xercesc_2_713MemoryManagerEEEPT_RS3_RKS4_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionPadding8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 comdat align 2 !prof !58 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 149, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1027XalanEXSLTFunctionEncodeURID0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !58 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  tail call void @_ZdlPv(ptr noundef %0) #18
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionEncodeURI5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %3 = load ptr, ptr %1, align 8, !tbaa !65
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !93
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1027XalanEXSLTFunctionEncodeURIE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !65
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionEncodeURI8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 comdat align 2 !prof !58 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 148, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1027XalanEXSLTFunctionDecodeURID0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !58 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  tail call void @_ZdlPv(ptr noundef %0) #18
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionDecodeURI5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %3 = load ptr, ptr %1, align 8, !tbaa !65
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !93
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1027XalanEXSLTFunctionDecodeURIE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !65
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1027XalanEXSLTFunctionDecodeURI8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 comdat align 2 !prof !58 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 149, ptr noundef nonnull @.str.9, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !58 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !95
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !75
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !96

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !95
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !75
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !74
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !65
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !97
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !82
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !82
  %20 = load i64, ptr %5, align 8, !tbaa !75
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !98

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !95
  %24 = load i64, ptr %10, align 8, !tbaa !75
  %25 = load i64, ptr %11, align 8, !tbaa !74
  %26 = load ptr, ptr %17, align 8, !tbaa !82
  store ptr %4, ptr %3, align 8, !tbaa !95
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !74
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !82
  %33 = load ptr, ptr %3, align 8, !tbaa !95
  %34 = load ptr, ptr %33, align 8, !tbaa !65
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #16
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !99

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !65
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !100
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !95
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !74
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !82
  store ptr %53, ptr %0, align 8, !tbaa !95
  store i64 %52, ptr %5, align 8, !tbaa !75
  store i64 %51, ptr %55, align 8, !tbaa !74
  store ptr %50, ptr %57, align 8, !tbaa !82
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !101

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !65
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !102

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #16
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !103 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !95
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !75
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !96

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !95
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !75
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !74
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !65
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !104
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !82
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !82
  %24 = load i64, ptr %9, align 8, !tbaa !75
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !98

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !95
  %28 = load i64, ptr %6, align 8, !tbaa !75
  %29 = load i64, ptr %7, align 8, !tbaa !74
  %30 = load ptr, ptr %8, align 8, !tbaa !82
  %31 = load ptr, ptr %5, align 8, !tbaa !95
  store ptr %31, ptr %0, align 8, !tbaa !95
  %32 = load i64, ptr %14, align 8, !tbaa !75
  store i64 %32, ptr %6, align 8, !tbaa !75
  %33 = load i64, ptr %15, align 8, !tbaa !74
  store i64 %33, ptr %7, align 8, !tbaa !74
  %34 = load ptr, ptr %21, align 8, !tbaa !82
  store ptr %34, ptr %8, align 8, !tbaa !82
  store ptr %27, ptr %5, align 8, !tbaa !95
  store i64 %28, ptr %14, align 8, !tbaa !75
  store i64 %29, ptr %15, align 8, !tbaa !74
  store ptr %30, ptr %21, align 8, !tbaa !82
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !98

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !65
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #16
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !74
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !82
  %50 = load ptr, ptr %5, align 8, !tbaa !95
  %51 = load ptr, ptr %50, align 8, !tbaa !65
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #16
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !99

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !65
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !105
  store ptr %65, ptr %8, align 8, !tbaa !82
  store i64 %3, ptr %7, align 8, !tbaa !74
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !74
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !107

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = load ptr, ptr %0, align 8, !tbaa !95
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !108

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #16
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !109 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !110

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !75
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !74
  br i1 %18, label %21, label %39, !prof !111

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !112

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !113

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !82
  %28 = load i64, ptr %12, align 8, !tbaa !75
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !83
  store i16 %34, ptr %32, align 2, !tbaa !83
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !114, !llvm.loop !115

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !116

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !95
  store ptr %42, ptr %5, align 8, !tbaa !95
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !75
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !74
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !65
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !117
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !82
  %51 = load i64, ptr %43, align 8, !tbaa !75
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !82
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !118

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !82
  %56 = load i64, ptr %43, align 8, !tbaa !75
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !118

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !82
  %60 = load i64, ptr %43, align 8, !tbaa !75
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !82
  %63 = load i64, ptr %12, align 8, !tbaa !75
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !118

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !95
  %67 = load i64, ptr %12, align 8, !tbaa !75
  %68 = load i64, ptr %19, align 8, !tbaa !74
  %69 = load ptr, ptr %15, align 8, !tbaa !82
  %70 = load ptr, ptr %5, align 8, !tbaa !95
  store ptr %70, ptr %0, align 8, !tbaa !95
  %71 = load i64, ptr %43, align 8, !tbaa !75
  store i64 %71, ptr %12, align 8, !tbaa !75
  %72 = load i64, ptr %44, align 8, !tbaa !74
  store i64 %72, ptr %19, align 8, !tbaa !74
  %73 = load ptr, ptr %50, align 8, !tbaa !82
  store ptr %73, ptr %15, align 8, !tbaa !82
  store ptr %66, ptr %5, align 8, !tbaa !95
  store i64 %67, ptr %43, align 8, !tbaa !75
  store i64 %68, ptr %44, align 8, !tbaa !74
  store ptr %69, ptr %50, align 8, !tbaa !82
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !119

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !65
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !120

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #16
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !74
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !82
  %89 = load ptr, ptr %5, align 8, !tbaa !95
  %90 = load ptr, ptr %89, align 8, !tbaa !65
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #16
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !121

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !122

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !122

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !123, !llvm.loop !124

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !125, !llvm.loop !126

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !127
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
  br i1 %123, label %124, label %120, !llvm.loop !128

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
  store i64 %36, ptr %12, align 8, !tbaa !75
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !75
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !74
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !130

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !83
  store i16 %13, ptr %12, align 2, !tbaa !83
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !75
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !95
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !95
  %24 = load i64, ptr %4, align 8, !tbaa !75
  %25 = load i64, ptr %6, align 8, !tbaa !74
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !82
  %28 = load ptr, ptr %3, align 8, !tbaa !95
  store ptr %28, ptr %0, align 8, !tbaa !95
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !75
  store i64 %30, ptr %4, align 8, !tbaa !75
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !74
  store i64 %32, ptr %6, align 8, !tbaa !74
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !82
  store ptr %34, ptr %26, align 8, !tbaa !82
  store ptr %23, ptr %3, align 8, !tbaa !95
  store i64 %24, ptr %29, align 8, !tbaa !75
  store i64 %25, ptr %31, align 8, !tbaa !74
  store ptr %27, ptr %33, align 8, !tbaa !82
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !65
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #16
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !74
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !82
  %52 = load ptr, ptr %3, align 8, !tbaa !95
  %53 = load ptr, ptr %52, align 8, !tbaa !65
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #16
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !132

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !74
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !75
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !133

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !95
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !95
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !75
  %16 = load i64, ptr %6, align 8, !tbaa !74
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !82
  %19 = load ptr, ptr %3, align 8, !tbaa !95
  store ptr %19, ptr %0, align 8, !tbaa !95
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !75
  store i64 %21, ptr %14, align 8, !tbaa !75
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !74
  store i64 %23, ptr %6, align 8, !tbaa !74
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !82
  store ptr %25, ptr %17, align 8, !tbaa !82
  store ptr %13, ptr %3, align 8, !tbaa !95
  store i64 %15, ptr %20, align 8, !tbaa !75
  store i64 %16, ptr %22, align 8, !tbaa !74
  store ptr %18, ptr %24, align 8, !tbaa !82
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !134

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !65
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !135

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #16
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !82
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !75
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !136

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !137

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !82
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !75
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !75
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !82
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !138

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !82
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !139
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionPaddingEN11xercesc_2_713MemoryManagerEEEPT_RS3_RKS4_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !91 {
  %4 = load ptr, ptr %0, align 8, !tbaa !65
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 48), !prof !93
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1025XalanEXSLTFunctionPaddingE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !65
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionPadding", ptr %7, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull @_ZN11xalanc_1_1025XalanEXSLTFunctionPadding13s_spaceStringE, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef -1)
          to label %14 unwind label %9, !prof !92

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  %11 = load ptr, ptr %0, align 8, !tbaa !65
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %7)
          to label %18 unwind label %15

14:                                               ; preds = %3
  ret ptr %7

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  tail call void @__clang_call_terminate(ptr %17) #16
  unreachable

18:                                               ; preds = %9
  resume { ptr, i32 } %10
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XalanEXSLTString.cpp() #13 section ".text.startup" !prof !91 !PGOFuncName !140 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_emptyStringE, ptr nonnull @__dso_handle) #17
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L15s_alignFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1023XalanEXSLTFunctionAlignE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L15s_alignFunctionE, align 8, !tbaa !65
  %3 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L15s_alignFunctionE, ptr nonnull @__dso_handle) #17
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L16s_concatFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1024XalanEXSLTFunctionConcatE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L16s_concatFunctionE, align 8, !tbaa !65
  %4 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L16s_concatFunctionE, ptr nonnull @__dso_handle) #17
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1025XalanEXSLTFunctionPaddingC2ERN11xercesc_2_713MemoryManagerEi(ptr noundef nonnull align 8 dereferenceable(48) @_ZN11xalanc_1_10L17s_paddingFunctionE, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1)
  %6 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1025XalanEXSLTFunctionPaddingD2Ev, ptr nonnull @_ZN11xalanc_1_10L17s_paddingFunctionE, ptr nonnull @__dso_handle) #17
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L19s_encodeUriFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1027XalanEXSLTFunctionEncodeURIE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L19s_encodeUriFunctionE, align 8, !tbaa !65
  %7 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L19s_encodeUriFunctionE, ptr nonnull @__dso_handle) #17
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L19s_decodeUriFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1027XalanEXSLTFunctionDecodeURIE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L19s_decodeUriFunctionE, align 8, !tbaa !65
  %8 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L19s_decodeUriFunctionE, ptr nonnull @__dso_handle) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!57}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!35 = !{ptr @_ZN11xalanc_1_1025XalanEXSLTFunctionPaddingC2ERN11xercesc_2_713MemoryManagerEi, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1025XalanEXSLTFunctionPaddingC2ERN11xercesc_2_713MemoryManagerEi, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1025XalanEXSLTFunctionPaddingD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1025XalanEXSLTFunctionPaddingD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1034XalanEXSLTStringFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1034XalanEXSLTStringFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, i64 1}
!41 = !{ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionPadding5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionPaddingEN11xercesc_2_713MemoryManagerEEEPT_RS3_RKS4_RT0_, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!51 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionPaddingEN11xercesc_2_713MemoryManagerEEEPT_RS3_RKS4_RT0_, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj, i64 1}
!52 = !{ptr @_GLOBAL__sub_I_XalanEXSLTString.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 2}
!53 = !{ptr @_GLOBAL__sub_I_XalanEXSLTString.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!54 = !{ptr @_GLOBAL__sub_I_XalanEXSLTString.cpp, ptr @__cxa_atexit, i64 6}
!55 = !{ptr @_GLOBAL__sub_I_XalanEXSLTString.cpp, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 4}
!56 = !{ptr @_GLOBAL__sub_I_XalanEXSLTString.cpp, ptr @_ZN11xalanc_1_1025XalanEXSLTFunctionPaddingC2ERN11xercesc_2_713MemoryManagerEi, i64 1}
!57 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!58 = !{!"function_entry_count", i64 0}
!59 = !{!60, !64, i64 8}
!60 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEE", !61, i64 0, !64, i64 8, !64, i64 16, !61, i64 24}
!61 = !{!"any pointer", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C++ TBAA"}
!64 = !{!"long", !62, i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"vtable pointer", !63, i64 0}
!67 = !{!60, !61, i64 24}
!68 = !{!69, !61, i64 0}
!69 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !61, i64 0}
!70 = !{!71, !73, i64 32}
!71 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !72, i64 0, !73, i64 32}
!72 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !61, i64 0, !64, i64 8, !64, i64 16, !61, i64 24}
!73 = !{!"int", !62, i64 0}
!74 = !{!72, !64, i64 16}
!75 = !{!72, !64, i64 8}
!76 = !{!77, !61, i64 16}
!77 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !78, i64 0, !61, i64 16}
!78 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !61, i64 8}
!79 = distinct !{!79, !80, !81}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!72, !61, i64 24}
!83 = !{!84, !84, i64 0}
!84 = !{!"short", !62, i64 0}
!85 = distinct !{!85, !80, !81}
!86 = distinct !{!86, !80, !81}
!87 = distinct !{!87, !80, !81}
!88 = distinct !{!88, !80, !81}
!89 = distinct !{!89, !80, !81}
!90 = distinct !{!90, !80, !81}
!91 = !{!"function_entry_count", i64 1}
!92 = !{!"branch_weights", i32 1, i32 0}
!93 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!94 = !{!"function_entry_count", i64 64551586}
!95 = !{!72, !61, i64 0}
!96 = !{!"branch_weights", i32 64551590, i32 18}
!97 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!98 = !{!"branch_weights", i32 18, i32 0}
!99 = !{!"branch_weights", i32 4, i32 64551586}
!100 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!101 = !{!"branch_weights", i32 42418193, i32 22133393}
!102 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!103 = !{!"function_entry_count", i64 22}
!104 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!105 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!106 = !{!"function_entry_count", i64 42470003}
!107 = !{!"branch_weights", i32 52000, i32 42418003}
!108 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!109 = !{!"function_entry_count", i64 155828046}
!110 = !{!"branch_weights", i32 0, i32 155828046}
!111 = !{!"branch_weights", i32 133170777, i32 22657269}
!112 = !{!"branch_weights", i32 20, i32 133170757}
!113 = !{!"branch_weights", i32 1, i32 19024395}
!114 = !{!"branch_weights", i32 19024395, i32 -26420601}
!115 = distinct !{!115, !80, !81}
!116 = !{!"branch_weights", i32 20748786, i32 1908483}
!117 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!118 = !{!"branch_weights", i32 20748786, i32 0}
!119 = !{!"branch_weights", i32 0, i32 20748786}
!120 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!121 = !{!"branch_weights", i32 0, i32 1908483}
!122 = !{!"branch_weights", i32 1, i32 1908482}
!123 = !{!"branch_weights", i32 1908482, i32 49797853}
!124 = distinct !{!124, !80, !81}
!125 = !{!"branch_weights", i32 1908482, i32 1}
!126 = distinct !{!126, !80, !81}
!127 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!128 = distinct !{!128, !80, !81}
!129 = !{!"function_entry_count", i64 124150652}
!130 = !{!"branch_weights", i32 124150652, i32 0}
!131 = !{!"function_entry_count", i64 41614}
!132 = !{!"branch_weights", i32 0, i32 41614}
!133 = !{!"branch_weights", i32 12, i32 41602}
!134 = !{!"branch_weights", i32 5, i32 7}
!135 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!136 = !{!"branch_weights", i32 354, i32 41248}
!137 = !{!"branch_weights", i32 40889, i32 359}
!138 = !{!"branch_weights", i32 40581, i32 1021}
!139 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!140 = !{!"XalanEXSLTString.cpp;_GLOBAL__sub_I_XalanEXSLTString.cpp"}

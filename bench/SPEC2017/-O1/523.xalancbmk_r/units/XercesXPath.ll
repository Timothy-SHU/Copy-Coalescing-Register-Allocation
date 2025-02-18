; ModuleID = 'XercesXPath.cpp'
source_filename = "XercesXPath.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XercesNodeTest" = type { %"class.xercesc_2_7::XSerializable", i16, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XercesStep" = type { %"class.xercesc_2_7::XSerializable", i16, ptr }
%"class.xercesc_2_7::XercesLocationPath" = type { %"class.xercesc_2_7::XSerializable", ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XercesXPath" = type { %"class.xercesc_2_7::XSerializable", i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XPathScannerForSchema" = type { %"class.xercesc_2_7::XPathScanner" }
%"class.xercesc_2_7::XPathScanner" = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::NamespaceScope" = type { i32, i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_712XPathScanner8addTokenEPNS_13ValueVectorOfIiEEi = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj = comdat any

$_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj = comdat any

$_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714XercesNodeTestD2Ev = comdat any

$_ZN11xercesc_2_714XercesNodeTestD0Ev = comdat any

$_ZN11xercesc_2_710XercesStepD2Ev = comdat any

$_ZN11xercesc_2_710XercesStepD0Ev = comdat any

$_ZN11xercesc_2_718XercesLocationPathD2Ev = comdat any

$_ZN11xercesc_2_718XercesLocationPathD0Ev = comdat any

$_ZN11xercesc_2_712XPathScannerD2Ev = comdat any

$_ZN11xercesc_2_712XPathScannerD0Ev = comdat any

$_ZN11xercesc_2_721XPathScannerForSchemaD0Ev = comdat any

$_ZN11xercesc_2_714XPathExceptionD0Ev = comdat any

$_ZNK11xercesc_2_714XPathException7getTypeEv = comdat any

$_ZNK11xercesc_2_714XPathException9duplicateEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKtj = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEED0Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_714XPathExceptionE = comdat any

$_ZTIN11xercesc_2_714XPathExceptionE = comdat any

$_ZTVN11xercesc_2_712XPathScannerE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_712XPathScannerE = comdat any

$_ZTIN11xercesc_2_712XPathScannerE = comdat any

$_ZTVN11xercesc_2_714XPathExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_10XercesStepEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_10XercesStepEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_10XercesStepEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEE = comdat any

@_ZN11xercesc_2_712XPathScanner13fASCIICharMapE = dso_local local_unnamed_addr constant [128 x i8] c"\00\00\00\00\00\00\00\00\00\02\02\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\03\04\01\05\01\01\04\06\07\08\09\0A\0B\0C\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\01\10\11\12\01\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\01\16\01\17\01\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\01\18\01\01\01", align 16
@_ZTVN11xercesc_2_714XercesNodeTestE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714XercesNodeTestE, ptr @_ZN11xercesc_2_714XercesNodeTestD2Ev, ptr @_ZN11xercesc_2_714XercesNodeTestD0Ev, ptr @_ZNK11xercesc_2_714XercesNodeTest14isSerializableEv, ptr @_ZN11xercesc_2_714XercesNodeTest9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_714XercesNodeTest12getProtoTypeEv] }, align 8
@.str = private unnamed_addr constant [15 x i8] c"XercesNodeTest\00", align 1
@_ZN11xercesc_2_714XercesNodeTest19classXercesNodeTestE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_714XercesNodeTest12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN11xercesc_2_710XercesStepE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710XercesStepE, ptr @_ZN11xercesc_2_710XercesStepD2Ev, ptr @_ZN11xercesc_2_710XercesStepD0Ev, ptr @_ZNK11xercesc_2_710XercesStep14isSerializableEv, ptr @_ZN11xercesc_2_710XercesStep9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_710XercesStep12getProtoTypeEv] }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"XercesStep\00", align 1
@_ZN11xercesc_2_710XercesStep15classXercesStepE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_710XercesStep12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN11xercesc_2_718XercesLocationPathE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718XercesLocationPathE, ptr @_ZN11xercesc_2_718XercesLocationPathD2Ev, ptr @_ZN11xercesc_2_718XercesLocationPathD0Ev, ptr @_ZNK11xercesc_2_718XercesLocationPath14isSerializableEv, ptr @_ZN11xercesc_2_718XercesLocationPath9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_718XercesLocationPath12getProtoTypeEv] }, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"XercesLocationPath\00", align 1
@_ZN11xercesc_2_718XercesLocationPath23classXercesLocationPathE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.2, ptr @_ZN11xercesc_2_718XercesLocationPath12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN11xercesc_2_711XercesXPathE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711XercesXPathE, ptr @_ZN11xercesc_2_711XercesXPathD2Ev, ptr @_ZN11xercesc_2_711XercesXPathD0Ev, ptr @_ZNK11xercesc_2_711XercesXPath14isSerializableEv, ptr @_ZN11xercesc_2_711XercesXPath9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_711XercesXPath12getProtoTypeEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"XercesXPath.cpp\00", align 1
@_ZTSN11xercesc_2_714XPathExceptionE = linkonce_odr dso_local constant [32 x i8] c"N11xercesc_2_714XPathExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_714XPathExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714XPathExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@.str.4 = private unnamed_addr constant [12 x i8] c"XercesXPath\00", align 1
@_ZN11xercesc_2_711XercesXPath16classXercesXPathE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.4, ptr @_ZN11xercesc_2_711XercesXPath12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN11xercesc_2_712XPathScannerE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712XPathScannerE, ptr @_ZN11xercesc_2_712XPathScannerD2Ev, ptr @_ZN11xercesc_2_712XPathScannerD0Ev, ptr @_ZN11xercesc_2_712XPathScanner8addTokenEPNS_13ValueVectorOfIiEEi] }, comdat, align 8
@_ZN11xercesc_2_712XPathSymbols12fgSYMBOL_ANDE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XPathSymbols11fgSYMBOL_ORE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XPathSymbols12fgSYMBOL_MODE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XPathSymbols12fgSYMBOL_DIVE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XPathSymbols16fgSYMBOL_COMMENTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XPathSymbols13fgSYMBOL_TEXTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XPathSymbols11fgSYMBOL_PIE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XPathSymbols13fgSYMBOL_NODEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XPathSymbols17fgSYMBOL_ANCESTORE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XPathSymbols25fgSYMBOL_ANCESTOR_OR_SELFE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XPathSymbols18fgSYMBOL_ATTRIBUTEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XPathSymbols14fgSYMBOL_CHILDE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XPathSymbols19fgSYMBOL_DESCENDANTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XPathSymbols27fgSYMBOL_DESCENDANT_OR_SELFE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XPathSymbols18fgSYMBOL_FOLLOWINGE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XPathSymbols26fgSYMBOL_FOLLOWING_SIBLINGE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XPathSymbols18fgSYMBOL_NAMESPACEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XPathSymbols15fgSYMBOL_PARENTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XPathSymbols18fgSYMBOL_PRECEDINGE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XPathSymbols26fgSYMBOL_PRECEDING_SIBLINGE = external constant [0 x i16], align 2
@_ZN11xercesc_2_712XPathSymbols13fgSYMBOL_SELFE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_721XPathScannerForSchemaE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721XPathScannerForSchemaE, ptr @_ZN11xercesc_2_712XPathScannerD2Ev, ptr @_ZN11xercesc_2_721XPathScannerForSchemaD0Ev, ptr @_ZN11xercesc_2_721XPathScannerForSchema8addTokenEPNS_13ValueVectorOfIiEEi] }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_714XercesNodeTestE = dso_local constant [32 x i8] c"N11xercesc_2_714XercesNodeTestE\00", align 1
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTIN11xercesc_2_714XercesNodeTestE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714XercesNodeTestE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@_ZTSN11xercesc_2_710XercesStepE = dso_local constant [28 x i8] c"N11xercesc_2_710XercesStepE\00", align 1
@_ZTIN11xercesc_2_710XercesStepE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710XercesStepE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@_ZTSN11xercesc_2_718XercesLocationPathE = dso_local constant [36 x i8] c"N11xercesc_2_718XercesLocationPathE\00", align 1
@_ZTIN11xercesc_2_718XercesLocationPathE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718XercesLocationPathE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@_ZTSN11xercesc_2_712XPathScannerE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_712XPathScannerE\00", comdat, align 1
@_ZTIN11xercesc_2_712XPathScannerE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712XPathScannerE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_721XPathScannerForSchemaE = dso_local constant [39 x i8] c"N11xercesc_2_721XPathScannerForSchemaE\00", align 1
@_ZTIN11xercesc_2_721XPathScannerForSchemaE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721XPathScannerForSchemaE, ptr @_ZTIN11xercesc_2_712XPathScannerE }, align 8
@_ZTSN11xercesc_2_711XercesXPathE = dso_local constant [29 x i8] c"N11xercesc_2_711XercesXPathE\00", align 1
@_ZTIN11xercesc_2_711XercesXPathE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711XercesXPathE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@_ZN11xercesc_2_75QName10classQNameE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZTVN11xercesc_2_714XPathExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714XPathExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_714XPathExceptionD0Ev, ptr @_ZNK11xercesc_2_714XPathException7getTypeEv, ptr @_ZNK11xercesc_2_714XPathException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni21fgXPathException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E = external local_unnamed_addr global [65536 x i8], align 16
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@.str.5 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_10XercesStepEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_10XercesStepEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_10XercesStepEEE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_711RefVectorOfINS_10XercesStepEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEE = linkonce_odr dso_local constant [51 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_10XercesStepEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_10XercesStepEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE7cleanupEv] }, comdat, align 8
@_ZTVN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEEE = linkonce_odr dso_local constant [55 x i8] c"N11xercesc_2_711RefVectorOfINS_18XercesLocationPathEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEE = linkonce_odr dso_local constant [59 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE7cleanupEv] }, comdat, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1

@_ZN11xercesc_2_714XercesNodeTestC1EsPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i16, ptr), ptr @_ZN11xercesc_2_714XercesNodeTestC2EsPNS_13MemoryManagerE
@_ZN11xercesc_2_714XercesNodeTestC1EPKNS_5QNameE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_714XercesNodeTestC2EPKNS_5QNameE
@_ZN11xercesc_2_714XercesNodeTestC1EPKtjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_714XercesNodeTestC2EPKtjPNS_13MemoryManagerE
@_ZN11xercesc_2_714XercesNodeTestC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_714XercesNodeTestC2ERKS0_
@_ZN11xercesc_2_714XercesNodeTestC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_714XercesNodeTestC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_710XercesStepC1EtPNS_14XercesNodeTestE = dso_local unnamed_addr alias void (ptr, i16, ptr), ptr @_ZN11xercesc_2_710XercesStepC2EtPNS_14XercesNodeTestE
@_ZN11xercesc_2_710XercesStepC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_710XercesStepC2ERKS0_
@_ZN11xercesc_2_710XercesStepC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_710XercesStepC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_718XercesLocationPathC1EPNS_11RefVectorOfINS_10XercesStepEEE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_718XercesLocationPathC2EPNS_11RefVectorOfINS_10XercesStepEEE
@_ZN11xercesc_2_718XercesLocationPathC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_718XercesLocationPathC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_711XercesXPathC1EPKtPNS_13XMLStringPoolEPNS_14NamespaceScopeEjbPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i1, ptr), ptr @_ZN11xercesc_2_711XercesXPathC2EPKtPNS_13XMLStringPoolEPNS_14NamespaceScopeEjbPNS_13MemoryManagerE
@_ZN11xercesc_2_711XercesXPathD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_711XercesXPathD2Ev
@_ZN11xercesc_2_711XercesXPathC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_711XercesXPathC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_712XPathScannerC1EPNS_13XMLStringPoolE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712XPathScannerC2EPNS_13XMLStringPoolE
@_ZN11xercesc_2_721XPathScannerForSchemaC1EPNS_13XMLStringPoolE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_721XPathScannerForSchemaC2EPNS_13XMLStringPoolE

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712XPathScanner8addTokenEPNS_13ValueVectorOfIiEEi(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !75 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1)
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !83
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %5, i64 %8
  store i32 %2, ptr %9, align 4, !tbaa !84
  %10 = load i32, ptr %6, align 4, !tbaa !83
  %11 = add i32 %10, 1
  store i32 %11, ptr %6, align 4, !tbaa !83
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat !prof !75 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714XercesNodeTestC2EsPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, i16 noundef signext %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_714XercesNodeTestE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 1
  store i16 %1, ptr %4, align 8, !tbaa !88
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %2)
  invoke void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %2)
          to label %6 unwind label %8, !prof !92

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  store ptr %5, ptr %7, align 8, !tbaa !93
  ret void

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %2) #15
  resume { ptr, i32 } %9
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714XercesNodeTestC2EPKNS_5QNameE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_714XercesNodeTestE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 1
  store i16 1, ptr %3, align 8, !tbaa !88
  %4 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5)
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %7 unwind label %9, !prof !97

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  store ptr %6, ptr %8, align 8, !tbaa !93
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %5) #15
  resume { ptr, i32 } %10
}

declare void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714XercesNodeTestC2EPKtjPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_714XercesNodeTestE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 1
  store i16 4, ptr %5, align 8, !tbaa !88
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %3)
  invoke void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %3)
          to label %7 unwind label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  store ptr %6, ptr %8, align 8, !tbaa !93
  %9 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %6, i64 0, i32 4
  store i32 %2, ptr %9, align 4, !tbaa !98
  tail call void @_ZN11xercesc_2_75QName9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %1)
  ret void

10:                                               ; preds = %4
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %3) #15
  resume { ptr, i32 } %11
}

declare void @_ZN11xercesc_2_75QName9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714XercesNodeTestC2ERKS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_714XercesNodeTestE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %1, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !88
  store i16 %5, ptr %3, align 8, !tbaa !88
  %6 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %9)
  %11 = load ptr, ptr %6, align 8, !tbaa !93
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %11)
          to label %12 unwind label %14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  store ptr %10, ptr %13, align 8, !tbaa !93
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #15
  resume { ptr, i32 } %15
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714XercesNodeTest12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #3 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %0)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_714XercesNodeTestE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %2, i64 0, i32 1
  store i16 5, ptr %3, align 8, !tbaa !88
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %2, i64 0, i32 2
  store ptr null, ptr %4, align 8, !tbaa !93
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714XercesNodeTest14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !75 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_714XercesNodeTest12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !75 {
  ret ptr @_ZN11xercesc_2_714XercesNodeTest19classXercesNodeTestE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714XercesNodeTest9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #3 align 2 !prof !75 {
  %3 = load i16, ptr %1, align 8, !tbaa !99
  %4 = icmp eq i16 %3, 0
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 1
  br i1 %4, label %6, label %11

6:                                                ; preds = %2
  %7 = load i16, ptr %5, align 8, !tbaa !88
  %8 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEs(ptr noundef nonnull align 8 dereferenceable(100) %1, i16 noundef signext %7)
  %9 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %10)
  br label %15

11:                                               ; preds = %2
  %12 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERs(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 2 dereferenceable(2) %5)
  %13 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  %14 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_75QName10classQNameE)
  store ptr %14, ptr %13, align 8, !tbaa !102
  br label %15

15:                                               ; preds = %11, %6
  ret void
}

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEs(ptr noundef nonnull align 8 dereferenceable(100), i16 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERs(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_714XercesNodeTestC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr nocapture readnone %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_714XercesNodeTestE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 1
  store i16 5, ptr %3, align 8, !tbaa !88
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  store ptr null, ptr %4, align 8, !tbaa !93
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xercesc_2_714XercesNodeTestaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1) local_unnamed_addr #3 align 2 !prof !75 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %1, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !88
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 1
  store i16 %6, ptr %7, align 8, !tbaa !88
  %8 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  tail call void @_ZN11xercesc_2_75QName9setValuesERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %11)
  br label %12

12:                                               ; preds = %2, %4
  ret ptr %0
}

declare void @_ZN11xercesc_2_75QName9setValuesERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714XercesNodeTesteqERKS0_(ptr noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1) local_unnamed_addr #3 align 2 !prof !75 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !88
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %1, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !88
  %9 = icmp eq i16 %6, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !93
  %15 = tail call noundef zeroext i1 @_ZNK11xercesc_2_75QNameeqERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %14)
  br label %16

16:                                               ; preds = %4, %2, %10
  %17 = phi i1 [ %15, %10 ], [ true, %2 ], [ false, %4 ]
  ret i1 %17
}

declare noundef zeroext i1 @_ZNK11xercesc_2_75QNameeqERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714XercesNodeTestneERKS0_(ptr noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1) local_unnamed_addr #3 align 2 !prof !75 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !88
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %1, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !88
  %9 = icmp eq i16 %6, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !93
  %15 = tail call noundef zeroext i1 @_ZNK11xercesc_2_75QNameeqERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %14)
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %2, %4, %10
  %18 = phi i1 [ %16, %10 ], [ false, %2 ], [ true, %4 ]
  ret i1 %18
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_710XercesStepC2EtPNS_14XercesNodeTestE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XercesStepE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 1
  store i16 %1, ptr %4, align 8, !tbaa !103
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !105
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XercesStepC2ERKS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XercesStepE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %1, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !103
  store i16 %5, ptr %3, align 8, !tbaa !103
  %6 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !105
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !105
  %9 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  %11 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %10, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %12)
  %14 = load ptr, ptr %7, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_714XercesNodeTestC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %15 unwind label %16

15:                                               ; preds = %2
  store ptr %13, ptr %6, align 8, !tbaa !105
  ret void

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #15
  resume { ptr, i32 } %17
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xercesc_2_710XercesStepaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1) local_unnamed_addr #3 align 2 !prof !75 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %1, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !103
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 1
  store i16 %6, ptr %7, align 8, !tbaa !103
  %8 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  %10 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !105
  %12 = icmp eq ptr %11, %9
  br i1 %12, label %21, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %9, i64 0, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !88
  %16 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %11, i64 0, i32 1
  store i16 %15, ptr %16, align 8, !tbaa !88
  %17 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %11, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  %19 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %9, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !93
  tail call void @_ZN11xercesc_2_75QName9setValuesERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull align 8 dereferenceable(56) %20)
  br label %21

21:                                               ; preds = %13, %4, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XercesStepeqERKS0_(ptr noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1) local_unnamed_addr #3 align 2 !prof !75 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %31, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !103
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %1, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !103
  %9 = icmp eq i16 %6, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %4
  %11 = add i16 %6, -1
  %12 = icmp ult i16 %11, 2
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !105
  %16 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !105
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %15, i64 0, i32 1
  %21 = load i16, ptr %20, align 8, !tbaa !88
  %22 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %17, i64 0, i32 1
  %23 = load i16, ptr %22, align 8, !tbaa !88
  %24 = icmp eq i16 %21, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %15, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !93
  %28 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %17, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !93
  %30 = tail call noundef zeroext i1 @_ZNK11xercesc_2_75QNameeqERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %27, ptr noundef nonnull align 8 dereferenceable(56) %29)
  br label %31

31:                                               ; preds = %25, %19, %13, %10, %4, %2
  %32 = phi i1 [ true, %2 ], [ false, %4 ], [ true, %10 ], [ %30, %25 ], [ true, %13 ], [ false, %19 ]
  ret i1 %32
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XercesStepneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 align 2 !prof !75 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XercesStepeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710XercesStep12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #3 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %0)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XercesStepE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %2, i64 0, i32 1
  store i16 5, ptr %3, align 8, !tbaa !103
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %2, i64 0, i32 2
  store ptr null, ptr %4, align 8, !tbaa !105
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XercesStep14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !75 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_710XercesStep12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !75 {
  ret ptr @_ZN11xercesc_2_710XercesStep15classXercesStepE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XercesStep9serializeERNS_16XSerializeEngineE(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #3 align 2 !prof !75 {
  %3 = alloca i32, align 4
  %4 = load i16, ptr %1, align 8, !tbaa !99
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !103
  %9 = zext i16 %8 to i32
  %10 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %9)
  %11 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %12)
  br label %20

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %14 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %15 = load i32, ptr %3, align 4, !tbaa !84
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 1
  store i16 %16, ptr %17, align 8, !tbaa !103
  %18 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 2
  %19 = call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_714XercesNodeTest19classXercesNodeTestE)
  store ptr %19, ptr %18, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %20

20:                                               ; preds = %13, %6
  ret void
}

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_710XercesStepC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr nocapture readnone %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XercesStepE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 1
  store i16 5, ptr %3, align 8, !tbaa !103
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 2
  store ptr null, ptr %4, align 8, !tbaa !105
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_718XercesLocationPathC2EPNS_11RefVectorOfINS_10XercesStepEEE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XercesLocationPathE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !106
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_718XercesLocationPatheqERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %1) local_unnamed_addr #3 align 2 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !108
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !108
  %11 = icmp eq i32 %6, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %3, align 8, !tbaa !106
  %16 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef 0)
  %17 = load ptr, ptr %7, align 8, !tbaa !106
  %18 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %17, i32 noundef 0)
  %19 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XercesStepeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %18)
  br i1 %19, label %20, label %32

20:                                               ; preds = %14, %24
  %21 = phi i32 [ %22, %24 ], [ 0, %14 ]
  %22 = add nuw i32 %21, 1
  %23 = icmp eq i32 %22, %6
  br i1 %23, label %30, label %24, !llvm.loop !110

24:                                               ; preds = %20
  %25 = load ptr, ptr %3, align 8, !tbaa !106
  %26 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %25, i32 noundef %22)
  %27 = load ptr, ptr %7, align 8, !tbaa !106
  %28 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %27, i32 noundef %22)
  %29 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XercesStepeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %28)
  br i1 %29, label %20, label %30, !llvm.loop !110

30:                                               ; preds = %24, %20
  %31 = icmp uge i32 %22, %6
  br label %32

32:                                               ; preds = %30, %14, %12, %2
  %33 = phi i1 [ false, %2 ], [ %13, %12 ], [ %13, %14 ], [ %31, %30 ]
  ret i1 %33
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !108
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !114

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !116
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !102
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_718XercesLocationPathneERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %1) local_unnamed_addr #3 align 2 !prof !75 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_718XercesLocationPatheqERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718XercesLocationPath12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #3 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 16, ptr noundef %0)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XercesLocationPathE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %2, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !106
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_718XercesLocationPath14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !75 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_718XercesLocationPath12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !75 {
  ret ptr @_ZN11xercesc_2_718XercesLocationPath23classXercesLocationPathE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_718XercesLocationPath9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #3 align 2 !prof !75 {
  %3 = load i16, ptr %1, align 8, !tbaa !99
  %4 = icmp eq i16 %3, 0
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %0, i64 0, i32 1
  br i1 %4, label %6, label %8

6:                                                ; preds = %2
  %7 = load ptr, ptr %5, align 8, !tbaa !106
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_10XercesStepEEERNS_16XSerializeEngineE(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(100) %1)
  br label %9

8:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_10XercesStepEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %5, i32 noundef 8, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1)
  br label %9

9:                                                ; preds = %8, %6
  ret void
}

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_10XercesStepEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_10XercesStepEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_718XercesLocationPathC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr nocapture readnone %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XercesLocationPathE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XercesXPathC2EPKtPNS_13XMLStringPoolEPNS_14NamespaceScopeEjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5, ptr noundef %6) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_711XercesXPathE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %8 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 1
  store i32 %4, ptr %8, align 8, !tbaa !118
  %9 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store ptr %6, ptr %10, align 8, !tbaa !120
  %11 = icmp eq ptr %1, null
  br i1 %11, label %33, label %12, !prof !121

12:                                               ; preds = %7
  %13 = load i16, ptr %1, align 2, !tbaa !122
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %26, label %15, !prof !121

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %17, %15 ], [ %1, %12 ]
  %17 = getelementptr inbounds i16, ptr %16, i64 1
  %18 = load i16, ptr %17, align 2, !tbaa !122
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %15, !prof !123, !llvm.loop !124

20:                                               ; preds = %15
  %21 = ptrtoint ptr %17 to i64
  %22 = ptrtoint ptr %1 to i64
  %23 = sub i64 %21, %22
  %24 = add i64 %23, 2
  %25 = and i64 %24, 8589934590
  br label %26

26:                                               ; preds = %20, %12
  %27 = phi i64 [ %25, %20 ], [ 2, %12 ]
  %28 = load ptr, ptr %6, align 8, !tbaa !86
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %27)
          to label %32 unwind label %37, !prof !125

32:                                               ; preds = %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %31, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !126
  br label %33

33:                                               ; preds = %32, %7
  %34 = phi ptr [ %31, %32 ], [ null, %7 ]
  store ptr %34, ptr %9, align 8, !tbaa !127
  invoke void @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %2, ptr noundef %3)
          to label %35 unwind label %37, !prof !128

35:                                               ; preds = %33
  br i1 %5, label %36, label %47, !prof !129

36:                                               ; preds = %35
  invoke void @_ZN11xercesc_2_711XercesXPath26checkForSelectedAttributesEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %47 unwind label %37, !prof !130

37:                                               ; preds = %26, %36, %33
  %38 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %39 = extractvalue { ptr, i32 } %38, 1
  %40 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = extractvalue { ptr, i32 } %38, 0
  %44 = tail call ptr @__cxa_begin_catch(ptr %43) #15
  invoke void @__cxa_rethrow() #17
          to label %62 unwind label %45

45:                                               ; preds = %42
  %46 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %48 unwind label %59

47:                                               ; preds = %36, %35
  ret void

48:                                               ; preds = %45, %37
  %49 = phi ptr [ null, %45 ], [ @_ZN11xercesc_2_711XercesXPath7cleanUpEv, %37 ]
  %50 = phi ptr [ null, %45 ], [ %0, %37 ]
  %51 = phi { ptr, i32 } [ %46, %45 ], [ %38, %37 ]
  %52 = icmp eq ptr %50, null
  %53 = or i1 %41, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(40) %50)
          to label %58 unwind label %55

55:                                               ; preds = %54
  %56 = landingpad { ptr, i32 }
          catch ptr null
  %57 = extractvalue { ptr, i32 } %56, 0
  tail call void @__clang_call_terminate(ptr %57) #16
  unreachable

58:                                               ; preds = %48, %54
  resume { ptr, i32 } %51

59:                                               ; preds = %45
  %60 = landingpad { ptr, i32 }
          catch ptr null
  %61 = extractvalue { ptr, i32 } %60, 0
  tail call void @__clang_call_terminate(ptr %61) #16
  unreachable

62:                                               ; preds = %42
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XercesXPath7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) local_unnamed_addr #3 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  %6 = load ptr, ptr %3, align 8, !tbaa !86
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
  %9 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !131
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %10, align 8, !tbaa !86
  %14 = getelementptr inbounds ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(40) %10) #15
  br label %16

16:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  %4 = alloca %"class.xercesc_2_7::ValueVectorOf", align 8
  %5 = alloca %"class.xercesc_2_7::XPathScannerForSchema", align 8
  %6 = alloca %"class.xercesc_2_7::QName", align 8
  %7 = alloca %"class.xercesc_2_7::QName", align 8
  %8 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !127
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11, !prof !121

11:                                               ; preds = %3
  %12 = load i16, ptr %9, align 2, !tbaa !122
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %25, label %14, !prof !121

14:                                               ; preds = %11, %14
  %15 = phi ptr [ %16, %14 ], [ %9, %11 ]
  %16 = getelementptr inbounds i16, ptr %15, i64 1
  %17 = load i16, ptr %16, align 2, !tbaa !122
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %14, !prof !123, !llvm.loop !124

19:                                               ; preds = %14
  %20 = ptrtoint ptr %16 to i64
  %21 = ptrtoint ptr %9 to i64
  %22 = sub i64 %20, %21
  %23 = lshr exact i64 %22, 1
  %24 = trunc i64 %23 to i32
  br label %25

25:                                               ; preds = %3, %11, %19
  %26 = phi i32 [ %24, %19 ], [ 0, %11 ], [ 0, %3 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %656, label %28, !prof !121

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  %29 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !120
  store i8 0, ptr %4, align 8, !tbaa !132
  %31 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 1
  store i32 0, ptr %31, align 4, !tbaa !83
  %32 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 2
  store i32 16, ptr %32, align 8, !tbaa !133
  %33 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 3
  store ptr null, ptr %33, align 8, !tbaa !76
  %34 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 4
  store ptr %30, ptr %34, align 8, !tbaa !134
  %35 = load ptr, ptr %30, align 8, !tbaa !86
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 64), !prof !125
  store ptr %38, ptr %33, align 8, !tbaa !76
  %39 = load i32, ptr %32, align 8, !tbaa !133
  %40 = zext i32 %39 to i64
  %41 = shl nuw nsw i64 %40, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %38, i8 0, i64 %41, i1 false), !prof !135
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %5) #15
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712XPathScannerE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !86
  %42 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %5, i64 0, i32 1
  %43 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %5, i64 0, i32 22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %42, i8 0, i64 84, i1 false)
  store ptr %1, ptr %43, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_712XPathScanner4initEv(ptr noundef nonnull align 8 dereferenceable(104) %5)
          to label %44 unwind label %98

44:                                               ; preds = %28
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_721XPathScannerForSchemaE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !86
  %45 = load ptr, ptr %8, align 8, !tbaa !127
  %46 = invoke noundef zeroext i1 @_ZN11xercesc_2_712XPathScanner14scanExpressionEPKtiiPNS_13ValueVectorOfIiEE(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef %45, i32 noundef 0, i32 noundef %26, ptr noundef nonnull %4)
          to label %47 unwind label %100, !prof !128

47:                                               ; preds = %44
  %48 = load i32, ptr %31, align 4, !tbaa !83
  %49 = load ptr, ptr %29, align 8, !tbaa !120
  %50 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %49)
          to label %51 unwind label %102, !prof !128

51:                                               ; preds = %47
  %52 = load ptr, ptr %29, align 8, !tbaa !120
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEE, i64 0, inrange i32 0, i64 2), ptr %50, align 8, !tbaa !86
  %53 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %50, i64 0, i32 1
  store i8 1, ptr %53, align 8, !tbaa !138
  %54 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %50, i64 0, i32 2
  store i32 0, ptr %54, align 4, !tbaa !108
  %55 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %50, i64 0, i32 3
  store i32 16, ptr %55, align 8, !tbaa !139
  %56 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %50, i64 0, i32 4
  store ptr null, ptr %56, align 8, !tbaa !116
  %57 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %50, i64 0, i32 5
  store ptr %52, ptr %57, align 8, !tbaa !115
  %58 = load ptr, ptr %52, align 8, !tbaa !86
  %59 = getelementptr inbounds ptr, ptr %58, i64 2
  %60 = load ptr, ptr %59, align 8
  %61 = invoke noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %52, i64 noundef 128)
          to label %62 unwind label %104, !prof !125

62:                                               ; preds = %51
  store ptr %61, ptr %56, align 8, !tbaa !116
  br label %63

63:                                               ; preds = %62, %63
  %64 = phi i64 [ 0, %62 ], [ %67, %63 ]
  %65 = load ptr, ptr %56, align 8, !tbaa !116
  %66 = getelementptr inbounds ptr, ptr %65, i64 %64
  store ptr null, ptr %66, align 8, !tbaa !102
  %67 = add nuw nsw i64 %64, 1
  %68 = icmp eq i64 %67, 16
  br i1 %68, label %69, label %63, !prof !140, !llvm.loop !141

69:                                               ; preds = %63
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_10XercesStepEEE, i64 0, inrange i32 0, i64 2), ptr %50, align 8, !tbaa !86
  %70 = icmp eq i32 %48, 0
  br i1 %70, label %110, label %71, !prof !121

71:                                               ; preds = %69
  %72 = load ptr, ptr %29, align 8, !tbaa !120
  %73 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %72)
          to label %74 unwind label %106, !prof !128

74:                                               ; preds = %71
  %75 = load ptr, ptr %29, align 8, !tbaa !120
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEE, i64 0, inrange i32 0, i64 2), ptr %73, align 8, !tbaa !86
  %76 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %73, i64 0, i32 1
  store i8 1, ptr %76, align 8, !tbaa !142
  %77 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %73, i64 0, i32 2
  store i32 0, ptr %77, align 4, !tbaa !144
  %78 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %73, i64 0, i32 3
  store i32 8, ptr %78, align 8, !tbaa !145
  %79 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %73, i64 0, i32 4
  store ptr null, ptr %79, align 8, !tbaa !146
  %80 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %73, i64 0, i32 5
  store ptr %75, ptr %80, align 8, !tbaa !147
  %81 = load ptr, ptr %75, align 8, !tbaa !86
  %82 = getelementptr inbounds ptr, ptr %81, i64 2
  %83 = load ptr, ptr %82, align 8
  %84 = invoke noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %75, i64 noundef 64)
          to label %85 unwind label %108, !prof !125

85:                                               ; preds = %74
  store ptr %84, ptr %79, align 8, !tbaa !146
  br label %86

86:                                               ; preds = %85, %86
  %87 = phi i64 [ 0, %85 ], [ %90, %86 ]
  %88 = load ptr, ptr %79, align 8, !tbaa !146
  %89 = getelementptr inbounds ptr, ptr %88, i64 %87
  store ptr null, ptr %89, align 8, !tbaa !102
  %90 = add nuw nsw i64 %87, 1
  %91 = icmp eq i64 %90, 8
  br i1 %91, label %92, label %86, !prof !148, !llvm.loop !149

92:                                               ; preds = %86
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEEE, i64 0, inrange i32 0, i64 2), ptr %73, align 8, !tbaa !86
  %93 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 3
  store ptr %73, ptr %93, align 8, !tbaa !131
  %94 = add i32 %48, -1
  %95 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 1
  %96 = icmp ne ptr %2, null
  %97 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %2, i64 0, i32 2
  br label %118

98:                                               ; preds = %28
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %665

100:                                              ; preds = %44
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %665

102:                                              ; preds = %47
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %665

104:                                              ; preds = %51
  %105 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %50, ptr noundef %49) #15
  br label %665

106:                                              ; preds = %71
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %657

108:                                              ; preds = %74
  %109 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %73, ptr noundef %72) #15
  br label %657

110:                                              ; preds = %606, %69
  %111 = phi ptr [ %50, %69 ], [ %607, %606 ]
  %112 = phi ptr [ %50, %69 ], [ %609, %606 ]
  %113 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %112, i64 0, i32 2
  %114 = load i32, ptr %113, align 4, !tbaa !108
  %115 = icmp eq i32 %114, 0
  %116 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !131
  br i1 %115, label %613, label %634, !prof !121

118:                                              ; preds = %92, %606
  %119 = phi i8 [ 1, %92 ], [ %610, %606 ]
  %120 = phi ptr [ %50, %92 ], [ %609, %606 ]
  %121 = phi i32 [ 0, %92 ], [ %611, %606 ]
  %122 = phi ptr [ %50, %92 ], [ %607, %606 ]
  %123 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %121)
          to label %124 unwind label %126, !prof !150

124:                                              ; preds = %118
  %125 = load i32, ptr %123, align 4, !tbaa !84
  switch i32 %125, label %606 [
    i32 23, label %128
    i32 35, label %196
    i32 6, label %198
    i32 8, label %353
    i32 36, label %358
    i32 9, label %368
    i32 10, label %393
    i32 11, label %394
    i32 4, label %499
    i32 22, label %579
    i32 21, label %584
  ], !prof !151

126:                                              ; preds = %118
  %127 = landingpad { ptr, i32 }
          cleanup
  br label %657

128:                                              ; preds = %124
  %129 = icmp eq i32 %121, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %128
  %131 = call ptr @__cxa_allocate_exception(i64 48) #15
  %132 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %131, ptr noundef nonnull @.str.3, i32 noundef 411, i32 noundef 303, ptr noundef %132)
          to label %133 unwind label %136

133:                                              ; preds = %130, %601, %594, %586, %579, %361, %353, %212, %202
  %134 = phi ptr [ %203, %202 ], [ %213, %212 ], [ %354, %353 ], [ %362, %361 ], [ %580, %579 ], [ %587, %586 ], [ %595, %594 ], [ %602, %601 ], [ %131, %130 ]
  invoke void @__cxa_throw(ptr nonnull %134, ptr nonnull @_ZTIN11xercesc_2_714XPathExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %135 unwind label %140

135:                                              ; preds = %133
  unreachable

136:                                              ; preds = %130
  %137 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %131) #15
  br label %657

138:                                              ; preds = %207, %394
  %139 = landingpad { ptr, i32 }
          cleanup
  br label %657

140:                                              ; preds = %133
  %141 = landingpad { ptr, i32 }
          cleanup
  br label %657

142:                                              ; preds = %128
  %143 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %120, i64 0, i32 2
  %144 = load i32, ptr %143, align 4, !tbaa !108
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %142
  %147 = call ptr @__cxa_allocate_exception(i64 48) #15
  %148 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %147, ptr noundef nonnull @.str.3, i32 noundef 417, i32 noundef 304, ptr noundef %148)
          to label %149 unwind label %156

149:                                              ; preds = %146
  invoke void @__cxa_throw(ptr nonnull %147, ptr nonnull @_ZTIN11xercesc_2_714XPathExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %150 unwind label %154

150:                                              ; preds = %149
  unreachable

151:                                              ; preds = %158, %165, %163
  %152 = phi ptr [ %122, %158 ], [ %122, %163 ], [ null, %165 ]
  %153 = landingpad { ptr, i32 }
          cleanup
  br label %657

154:                                              ; preds = %149
  %155 = landingpad { ptr, i32 }
          cleanup
  br label %657

156:                                              ; preds = %146
  %157 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %147) #15
  br label %657

158:                                              ; preds = %142
  %159 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !131
  %161 = load ptr, ptr %29, align 8, !tbaa !120
  %162 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 16, ptr noundef %161)
          to label %163 unwind label %151

163:                                              ; preds = %158
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XercesLocationPathE, i64 0, inrange i32 0, i64 2), ptr %162, align 8, !tbaa !86
  %164 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %162, i64 0, i32 1
  store ptr %120, ptr %164, align 8, !tbaa !106
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %160, i32 noundef 1)
          to label %165 unwind label %151

165:                                              ; preds = %163
  %166 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %160, i64 0, i32 4
  %167 = load ptr, ptr %166, align 8, !tbaa !146
  %168 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %160, i64 0, i32 2
  %169 = load i32, ptr %168, align 4, !tbaa !144
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds ptr, ptr %167, i64 %170
  store ptr %162, ptr %171, align 8, !tbaa !102
  %172 = add i32 %169, 1
  store i32 %172, ptr %168, align 4, !tbaa !144
  %173 = load ptr, ptr %29, align 8, !tbaa !120
  %174 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %173)
          to label %175 unwind label %151

175:                                              ; preds = %165
  %176 = load ptr, ptr %29, align 8, !tbaa !120
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEE, i64 0, inrange i32 0, i64 2), ptr %174, align 8, !tbaa !86
  %177 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %174, i64 0, i32 1
  store i8 1, ptr %177, align 8, !tbaa !138
  %178 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %174, i64 0, i32 2
  store i32 0, ptr %178, align 4, !tbaa !108
  %179 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %174, i64 0, i32 3
  store i32 16, ptr %179, align 8, !tbaa !139
  %180 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %174, i64 0, i32 4
  store ptr null, ptr %180, align 8, !tbaa !116
  %181 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %174, i64 0, i32 5
  store ptr %176, ptr %181, align 8, !tbaa !115
  %182 = load ptr, ptr %176, align 8, !tbaa !86
  %183 = getelementptr inbounds ptr, ptr %182, i64 2
  %184 = load ptr, ptr %183, align 8
  %185 = invoke noundef ptr %184(ptr noundef nonnull align 8 dereferenceable(8) %176, i64 noundef 128)
          to label %186 unwind label %194

186:                                              ; preds = %175
  store ptr %185, ptr %180, align 8, !tbaa !116
  br label %187

187:                                              ; preds = %186, %187
  %188 = phi i64 [ 0, %186 ], [ %191, %187 ]
  %189 = load ptr, ptr %180, align 8, !tbaa !116
  %190 = getelementptr inbounds ptr, ptr %189, i64 %188
  store ptr null, ptr %190, align 8, !tbaa !102
  %191 = add nuw nsw i64 %188, 1
  %192 = icmp eq i64 %191, 16
  br i1 %192, label %193, label %187, !llvm.loop !141

193:                                              ; preds = %187
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_10XercesStepEEE, i64 0, inrange i32 0, i64 2), ptr %174, align 8, !tbaa !86
  br label %606

194:                                              ; preds = %175
  %195 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %174, ptr noundef %173) #15
  br label %657

196:                                              ; preds = %124
  %197 = add i32 %121, 1
  br label %198

198:                                              ; preds = %124, %196
  %199 = phi i32 [ %121, %124 ], [ %197, %196 ]
  %200 = add i32 %48, -1
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %207, !prof !152

202:                                              ; preds = %198
  %203 = call ptr @__cxa_allocate_exception(i64 48) #15
  %204 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %203, ptr noundef nonnull @.str.3, i32 noundef 436, i32 noundef 305, ptr noundef %204)
          to label %133 unwind label %205

205:                                              ; preds = %202
  %206 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %203) #15
  br label %657

207:                                              ; preds = %198
  %208 = add i32 %199, 1
  %209 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %208)
          to label %210 unwind label %138, !prof !130

210:                                              ; preds = %207
  %211 = load i32, ptr %209, align 4, !tbaa !84
  switch i32 %211, label %212 [
    i32 9, label %217
    i32 10, label %242
    i32 11, label %243
  ], !prof !153

212:                                              ; preds = %210
  %213 = call ptr @__cxa_allocate_exception(i64 48) #15
  %214 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %213, ptr noundef nonnull @.str.3, i32 noundef 444, i32 noundef 306, ptr noundef %214)
          to label %133 unwind label %215

215:                                              ; preds = %212
  %216 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %213) #15
  br label %657

217:                                              ; preds = %210
  %218 = load ptr, ptr %29, align 8, !tbaa !120
  %219 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %218)
          to label %220 unwind label %236

220:                                              ; preds = %217
  %221 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XercesNodeTestC2EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %219, i16 noundef signext 2, ptr noundef %221)
          to label %222 unwind label %238

222:                                              ; preds = %220
  %223 = load ptr, ptr %29, align 8, !tbaa !120
  %224 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %223)
          to label %225 unwind label %240

225:                                              ; preds = %222
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XercesStepE, i64 0, inrange i32 0, i64 2), ptr %224, align 8, !tbaa !86
  %226 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %224, i64 0, i32 1
  store i16 2, ptr %226, align 8, !tbaa !103
  %227 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %224, i64 0, i32 2
  store ptr %219, ptr %227, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %120, i32 noundef 1)
          to label %228 unwind label %240

228:                                              ; preds = %225
  %229 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %120, i64 0, i32 4
  %230 = load ptr, ptr %229, align 8, !tbaa !116
  %231 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %120, i64 0, i32 2
  %232 = load i32, ptr %231, align 4, !tbaa !108
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds ptr, ptr %230, i64 %233
  store ptr %224, ptr %234, align 8, !tbaa !102
  %235 = add i32 %232, 1
  store i32 %235, ptr %231, align 4, !tbaa !108
  br label %606

236:                                              ; preds = %217
  %237 = landingpad { ptr, i32 }
          cleanup
  br label %657

238:                                              ; preds = %220
  %239 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %219, ptr noundef %218) #15
  br label %657

240:                                              ; preds = %225, %222
  %241 = landingpad { ptr, i32 }
          cleanup
  br label %657

242:                                              ; preds = %210
  br label %243

243:                                              ; preds = %210, %242
  %244 = phi i1 [ true, %242 ], [ false, %210 ]
  %245 = add i32 %199, 2
  %246 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %245)
          to label %247 unwind label %264, !prof !130

247:                                              ; preds = %243
  %248 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 1
  %249 = icmp ne ptr %2, null
  %250 = load i32, ptr %246, align 4, !tbaa !84
  %251 = load i32, ptr %248, align 8, !tbaa !118
  %252 = icmp ne i32 %250, -1
  %253 = select i1 %249, i1 %252, i1 false, !prof !130
  br i1 %253, label %254, label %270, !prof !152

254:                                              ; preds = %247
  %255 = load ptr, ptr %1, align 8, !tbaa !86
  %256 = getelementptr inbounds ptr, ptr %255, i64 10
  %257 = load ptr, ptr %256, align 8
  %258 = invoke noundef ptr %257(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %250)
          to label %259 unwind label %266

259:                                              ; preds = %254
  %260 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %2, i64 0, i32 2
  %261 = load i32, ptr %260, align 8, !tbaa !154
  %262 = add i32 %261, -1
  %263 = invoke noundef i32 @_ZNK11xercesc_2_714NamespaceScope21getNamespaceForPrefixEPKti(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %258, i32 noundef %262)
          to label %270 unwind label %266

264:                                              ; preds = %243
  %265 = landingpad { ptr, i32 }
          cleanup
  br label %657

266:                                              ; preds = %254, %310, %259
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %657

268:                                              ; preds = %280
  %269 = landingpad { ptr, i32 }
          cleanup
  br label %657

270:                                              ; preds = %259, %247
  %271 = phi i32 [ %251, %247 ], [ %263, %259 ]
  %272 = phi ptr [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %247 ], [ %258, %259 ]
  %273 = and i1 %249, %252
  %274 = load i32, ptr %248, align 8
  %275 = icmp eq i32 %271, %274
  %276 = select i1 %273, i1 %275, i1 false, !prof !152
  br i1 %276, label %277, label %284, !prof !152

277:                                              ; preds = %270
  %278 = call ptr @__cxa_allocate_exception(i64 48) #15
  %279 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %278, ptr noundef nonnull @.str.3, i32 noundef 476, i32 noundef 307, ptr noundef %272, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %279)
          to label %280 unwind label %282

280:                                              ; preds = %277
  invoke void @__cxa_throw(ptr nonnull %278, ptr nonnull @_ZTIN11xercesc_2_714XPathExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %281 unwind label %268

281:                                              ; preds = %280
  unreachable

282:                                              ; preds = %277
  %283 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %278) #15
  br label %657

284:                                              ; preds = %270
  br i1 %244, label %285, label %310, !prof !152

285:                                              ; preds = %284
  %286 = load ptr, ptr %29, align 8, !tbaa !120
  %287 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %286)
          to label %288 unwind label %304

288:                                              ; preds = %285
  %289 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XercesNodeTestC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %287, ptr noundef %272, i32 noundef %271, ptr noundef %289)
          to label %290 unwind label %306

290:                                              ; preds = %288
  %291 = load ptr, ptr %29, align 8, !tbaa !120
  %292 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %291)
          to label %293 unwind label %308

293:                                              ; preds = %290
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XercesStepE, i64 0, inrange i32 0, i64 2), ptr %292, align 8, !tbaa !86
  %294 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %292, i64 0, i32 1
  store i16 2, ptr %294, align 8, !tbaa !103
  %295 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %292, i64 0, i32 2
  store ptr %287, ptr %295, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %120, i32 noundef 1)
          to label %296 unwind label %308

296:                                              ; preds = %293
  %297 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %120, i64 0, i32 4
  %298 = load ptr, ptr %297, align 8, !tbaa !116
  %299 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %120, i64 0, i32 2
  %300 = load i32, ptr %299, align 4, !tbaa !108
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds ptr, ptr %298, i64 %301
  store ptr %292, ptr %302, align 8, !tbaa !102
  %303 = add i32 %300, 1
  store i32 %303, ptr %299, align 4, !tbaa !108
  br label %606

304:                                              ; preds = %285
  %305 = landingpad { ptr, i32 }
          cleanup
  br label %657

306:                                              ; preds = %288
  %307 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %287, ptr noundef %286) #15
  br label %657

308:                                              ; preds = %293, %290
  %309 = landingpad { ptr, i32 }
          cleanup
  br label %657

310:                                              ; preds = %284
  %311 = add i32 %199, 3
  %312 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %311)
          to label %313 unwind label %266, !prof !130

313:                                              ; preds = %310
  %314 = load i32, ptr %312, align 4, !tbaa !84
  %315 = load ptr, ptr %1, align 8, !tbaa !86
  %316 = getelementptr inbounds ptr, ptr %315, i64 10
  %317 = load ptr, ptr %316, align 8
  %318 = invoke noundef ptr %317(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %314)
          to label %319 unwind label %339, !prof !157

319:                                              ; preds = %313
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #15
  %320 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %272, ptr noundef %318, i32 noundef %271, ptr noundef %320)
          to label %321 unwind label %341, !prof !130

321:                                              ; preds = %319
  %322 = load ptr, ptr %29, align 8, !tbaa !120
  %323 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %322)
          to label %324 unwind label %343, !prof !130

324:                                              ; preds = %321
  invoke void @_ZN11xercesc_2_714XercesNodeTestC2EPKNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(24) %323, ptr noundef nonnull %6)
          to label %325 unwind label %345, !prof !130

325:                                              ; preds = %324
  %326 = load ptr, ptr %29, align 8, !tbaa !120
  %327 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %326)
          to label %328 unwind label %347, !prof !130

328:                                              ; preds = %325
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XercesStepE, i64 0, inrange i32 0, i64 2), ptr %327, align 8, !tbaa !86
  %329 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %327, i64 0, i32 1
  store i16 2, ptr %329, align 8, !tbaa !103
  %330 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %327, i64 0, i32 2
  store ptr %323, ptr %330, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %120, i32 noundef 1)
          to label %331 unwind label %347, !prof !130

331:                                              ; preds = %328
  %332 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %120, i64 0, i32 4
  %333 = load ptr, ptr %332, align 8, !tbaa !116
  %334 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %120, i64 0, i32 2
  %335 = load i32, ptr %334, align 4, !tbaa !108
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds ptr, ptr %333, i64 %336
  store ptr %327, ptr %337, align 8, !tbaa !102
  %338 = add i32 %335, 1
  store i32 %338, ptr %334, align 4, !tbaa !108
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #15
  br label %606

339:                                              ; preds = %313
  %340 = landingpad { ptr, i32 }
          cleanup
  br label %657

341:                                              ; preds = %319
  %342 = landingpad { ptr, i32 }
          cleanup
  br label %351

343:                                              ; preds = %321
  %344 = landingpad { ptr, i32 }
          cleanup
  br label %349

345:                                              ; preds = %324
  %346 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %323, ptr noundef %322) #15
  br label %349

347:                                              ; preds = %328, %325
  %348 = landingpad { ptr, i32 }
          cleanup
  br label %349

349:                                              ; preds = %347, %345, %343
  %350 = phi { ptr, i32 } [ %346, %345 ], [ %344, %343 ], [ %348, %347 ]
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #15
  br label %351

351:                                              ; preds = %349, %341
  %352 = phi { ptr, i32 } [ %350, %349 ], [ %342, %341 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #15
  br label %657

353:                                              ; preds = %124
  %354 = call ptr @__cxa_allocate_exception(i64 48) #15
  %355 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %354, ptr noundef nonnull @.str.3, i32 noundef 507, i32 noundef 308, ptr noundef %355)
          to label %133 unwind label %356

356:                                              ; preds = %353
  %357 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %354) #15
  br label %657

358:                                              ; preds = %124
  %359 = add i32 %48, -2
  %360 = icmp eq i32 %121, %359
  br i1 %360, label %361, label %366

361:                                              ; preds = %358
  %362 = call ptr @__cxa_allocate_exception(i64 48) #15
  %363 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %362, ptr noundef nonnull @.str.3, i32 noundef 515, i32 noundef 309, ptr noundef %363)
          to label %133 unwind label %364

364:                                              ; preds = %361
  %365 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %362) #15
  br label %657

366:                                              ; preds = %358
  %367 = add i32 %121, 1
  br label %606

368:                                              ; preds = %124
  %369 = load ptr, ptr %29, align 8, !tbaa !120
  %370 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %369)
          to label %371 unwind label %387, !prof !158

371:                                              ; preds = %368
  %372 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XercesNodeTestC2EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %370, i16 noundef signext 2, ptr noundef %372)
          to label %373 unwind label %389, !prof !158

373:                                              ; preds = %371
  %374 = load ptr, ptr %29, align 8, !tbaa !120
  %375 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %374)
          to label %376 unwind label %391, !prof !158

376:                                              ; preds = %373
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XercesStepE, i64 0, inrange i32 0, i64 2), ptr %375, align 8, !tbaa !86
  %377 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %375, i64 0, i32 1
  store i16 1, ptr %377, align 8, !tbaa !103
  %378 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %375, i64 0, i32 2
  store ptr %370, ptr %378, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %120, i32 noundef 1)
          to label %379 unwind label %391, !prof !158

379:                                              ; preds = %376
  %380 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %120, i64 0, i32 4
  %381 = load ptr, ptr %380, align 8, !tbaa !116
  %382 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %120, i64 0, i32 2
  %383 = load i32, ptr %382, align 4, !tbaa !108
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds ptr, ptr %381, i64 %384
  store ptr %375, ptr %385, align 8, !tbaa !102
  %386 = add i32 %383, 1
  store i32 %386, ptr %382, align 4, !tbaa !108
  br label %606

387:                                              ; preds = %368
  %388 = landingpad { ptr, i32 }
          cleanup
  br label %657

389:                                              ; preds = %371
  %390 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %370, ptr noundef %369) #15
  br label %657

391:                                              ; preds = %376, %373
  %392 = landingpad { ptr, i32 }
          cleanup
  br label %657

393:                                              ; preds = %124
  br label %394

394:                                              ; preds = %124, %393
  %395 = phi i1 [ false, %124 ], [ true, %393 ]
  %396 = add i32 %121, 1
  %397 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %396)
          to label %398 unwind label %138, !prof !159

398:                                              ; preds = %394
  %399 = load i32, ptr %397, align 4, !tbaa !84
  %400 = load i32, ptr %95, align 8, !tbaa !118
  %401 = icmp ne i32 %399, -1
  %402 = select i1 %96, i1 %401, i1 false, !prof !159
  br i1 %402, label %403, label %416, !prof !159

403:                                              ; preds = %398
  %404 = load ptr, ptr %1, align 8, !tbaa !86
  %405 = getelementptr inbounds ptr, ptr %404, i64 10
  %406 = load ptr, ptr %405, align 8
  %407 = invoke noundef ptr %406(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %399)
          to label %408 unwind label %412, !prof !160

408:                                              ; preds = %403
  %409 = load i32, ptr %97, align 8, !tbaa !154
  %410 = add i32 %409, -1
  %411 = invoke noundef i32 @_ZNK11xercesc_2_714NamespaceScope21getNamespaceForPrefixEPKti(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %407, i32 noundef %410)
          to label %416 unwind label %412, !prof !159

412:                                              ; preds = %403, %456, %408
  %413 = landingpad { ptr, i32 }
          cleanup
  br label %657

414:                                              ; preds = %426
  %415 = landingpad { ptr, i32 }
          cleanup
  br label %657

416:                                              ; preds = %408, %398
  %417 = phi ptr [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %398 ], [ %407, %408 ]
  %418 = phi i32 [ %400, %398 ], [ %411, %408 ]
  %419 = and i1 %96, %401
  %420 = load i32, ptr %95, align 8
  %421 = icmp eq i32 %418, %420
  %422 = select i1 %419, i1 %421, i1 false, !prof !159
  br i1 %422, label %423, label %430, !prof !161

423:                                              ; preds = %416
  %424 = call ptr @__cxa_allocate_exception(i64 48) #15
  %425 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %424, ptr noundef nonnull @.str.3, i32 noundef 548, i32 noundef 307, ptr noundef %417, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %425)
          to label %426 unwind label %428

426:                                              ; preds = %423
  invoke void @__cxa_throw(ptr nonnull %424, ptr nonnull @_ZTIN11xercesc_2_714XPathExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %427 unwind label %414

427:                                              ; preds = %426
  unreachable

428:                                              ; preds = %423
  %429 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %424) #15
  br label %657

430:                                              ; preds = %416
  br i1 %395, label %431, label %456, !prof !161

431:                                              ; preds = %430
  %432 = load ptr, ptr %29, align 8, !tbaa !120
  %433 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %432)
          to label %434 unwind label %450

434:                                              ; preds = %431
  %435 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XercesNodeTestC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %433, ptr noundef %417, i32 noundef %418, ptr noundef %435)
          to label %436 unwind label %452

436:                                              ; preds = %434
  %437 = load ptr, ptr %29, align 8, !tbaa !120
  %438 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %437)
          to label %439 unwind label %454

439:                                              ; preds = %436
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XercesStepE, i64 0, inrange i32 0, i64 2), ptr %438, align 8, !tbaa !86
  %440 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %438, i64 0, i32 1
  store i16 1, ptr %440, align 8, !tbaa !103
  %441 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %438, i64 0, i32 2
  store ptr %433, ptr %441, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %120, i32 noundef 1)
          to label %442 unwind label %454

442:                                              ; preds = %439
  %443 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %120, i64 0, i32 4
  %444 = load ptr, ptr %443, align 8, !tbaa !116
  %445 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %120, i64 0, i32 2
  %446 = load i32, ptr %445, align 4, !tbaa !108
  %447 = zext i32 %446 to i64
  %448 = getelementptr inbounds ptr, ptr %444, i64 %447
  store ptr %438, ptr %448, align 8, !tbaa !102
  %449 = add i32 %446, 1
  store i32 %449, ptr %445, align 4, !tbaa !108
  br label %606

450:                                              ; preds = %431
  %451 = landingpad { ptr, i32 }
          cleanup
  br label %657

452:                                              ; preds = %434
  %453 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %433, ptr noundef %432) #15
  br label %657

454:                                              ; preds = %439, %436
  %455 = landingpad { ptr, i32 }
          cleanup
  br label %657

456:                                              ; preds = %430
  %457 = add i32 %121, 2
  %458 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %457)
          to label %459 unwind label %412, !prof !159

459:                                              ; preds = %456
  %460 = load i32, ptr %458, align 4, !tbaa !84
  %461 = load ptr, ptr %1, align 8, !tbaa !86
  %462 = getelementptr inbounds ptr, ptr %461, i64 10
  %463 = load ptr, ptr %462, align 8
  %464 = invoke noundef ptr %463(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %460)
          to label %465 unwind label %485, !prof !160

465:                                              ; preds = %459
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #15
  %466 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %417, ptr noundef %464, i32 noundef %418, ptr noundef %466)
          to label %467 unwind label %487, !prof !159

467:                                              ; preds = %465
  %468 = load ptr, ptr %29, align 8, !tbaa !120
  %469 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %468)
          to label %470 unwind label %489, !prof !159

470:                                              ; preds = %467
  invoke void @_ZN11xercesc_2_714XercesNodeTestC2EPKNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(24) %469, ptr noundef nonnull %7)
          to label %471 unwind label %491, !prof !159

471:                                              ; preds = %470
  %472 = load ptr, ptr %29, align 8, !tbaa !120
  %473 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %472)
          to label %474 unwind label %493, !prof !159

474:                                              ; preds = %471
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XercesStepE, i64 0, inrange i32 0, i64 2), ptr %473, align 8, !tbaa !86
  %475 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %473, i64 0, i32 1
  store i16 1, ptr %475, align 8, !tbaa !103
  %476 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %473, i64 0, i32 2
  store ptr %469, ptr %476, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %120, i32 noundef 1)
          to label %477 unwind label %493, !prof !159

477:                                              ; preds = %474
  %478 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %120, i64 0, i32 4
  %479 = load ptr, ptr %478, align 8, !tbaa !116
  %480 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %120, i64 0, i32 2
  %481 = load i32, ptr %480, align 4, !tbaa !108
  %482 = zext i32 %481 to i64
  %483 = getelementptr inbounds ptr, ptr %479, i64 %482
  store ptr %473, ptr %483, align 8, !tbaa !102
  %484 = add i32 %481, 1
  store i32 %484, ptr %480, align 4, !tbaa !108
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #15
  br label %606

485:                                              ; preds = %459
  %486 = landingpad { ptr, i32 }
          cleanup
  br label %657

487:                                              ; preds = %465
  %488 = landingpad { ptr, i32 }
          cleanup
  br label %497

489:                                              ; preds = %467
  %490 = landingpad { ptr, i32 }
          cleanup
  br label %495

491:                                              ; preds = %470
  %492 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %469, ptr noundef %468) #15
  br label %495

493:                                              ; preds = %474, %471
  %494 = landingpad { ptr, i32 }
          cleanup
  br label %495

495:                                              ; preds = %493, %491, %489
  %496 = phi { ptr, i32 } [ %492, %491 ], [ %490, %489 ], [ %494, %493 ]
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #15
  br label %497

497:                                              ; preds = %495, %487
  %498 = phi { ptr, i32 } [ %496, %495 ], [ %488, %487 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #15
  br label %657

499:                                              ; preds = %124
  %500 = load ptr, ptr %29, align 8, !tbaa !120
  %501 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %500)
          to label %502 unwind label %537, !prof !128

502:                                              ; preds = %499
  %503 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XercesNodeTestC2EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %501, i16 noundef signext 3, ptr noundef %503)
          to label %504 unwind label %539, !prof !128

504:                                              ; preds = %502
  %505 = load ptr, ptr %29, align 8, !tbaa !120
  %506 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %505)
          to label %507 unwind label %541, !prof !128

507:                                              ; preds = %504
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XercesStepE, i64 0, inrange i32 0, i64 2), ptr %506, align 8, !tbaa !86
  %508 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %506, i64 0, i32 1
  store i16 3, ptr %508, align 8, !tbaa !103
  %509 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %506, i64 0, i32 2
  store ptr %501, ptr %509, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %120, i32 noundef 1)
          to label %510 unwind label %541, !prof !128

510:                                              ; preds = %507
  %511 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %120, i64 0, i32 4
  %512 = load ptr, ptr %511, align 8, !tbaa !116
  %513 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %120, i64 0, i32 2
  %514 = load i32, ptr %513, align 4, !tbaa !108
  %515 = zext i32 %514 to i64
  %516 = getelementptr inbounds ptr, ptr %512, i64 %515
  store ptr %506, ptr %516, align 8, !tbaa !102
  %517 = add i32 %514, 1
  store i32 %517, ptr %513, align 4, !tbaa !108
  %518 = and i8 %119, 1
  %519 = icmp eq i8 %518, 0
  br i1 %519, label %606, label %520, !prof !121

520:                                              ; preds = %510
  %521 = add i32 %121, 1
  %522 = icmp ult i32 %521, %48
  br i1 %522, label %523, label %606, !prof !128

523:                                              ; preds = %520
  %524 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %521)
          to label %525 unwind label %541, !prof !128

525:                                              ; preds = %523
  %526 = load i32, ptr %524, align 4, !tbaa !84
  %527 = icmp eq i32 %526, 22
  br i1 %527, label %528, label %606, !prof !121

528:                                              ; preds = %525
  %529 = add i32 %48, -2
  %530 = icmp eq i32 %121, %529
  br i1 %530, label %531, label %547

531:                                              ; preds = %528
  %532 = call ptr @__cxa_allocate_exception(i64 48) #15
  %533 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %532, ptr noundef nonnull @.str.3, i32 noundef 585, i32 noundef 310, ptr noundef %533)
          to label %534 unwind label %545

534:                                              ; preds = %531, %555
  %535 = phi ptr [ %556, %555 ], [ %532, %531 ]
  invoke void @__cxa_throw(ptr nonnull %535, ptr nonnull @_ZTIN11xercesc_2_714XPathExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %536 unwind label %543

536:                                              ; preds = %534
  unreachable

537:                                              ; preds = %499
  %538 = landingpad { ptr, i32 }
          cleanup
  br label %657

539:                                              ; preds = %502
  %540 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %501, ptr noundef %500) #15
  br label %657

541:                                              ; preds = %504, %523, %550, %560, %565, %507, %568
  %542 = landingpad { ptr, i32 }
          cleanup
  br label %657

543:                                              ; preds = %534
  %544 = landingpad { ptr, i32 }
          cleanup
  br label %657

545:                                              ; preds = %531
  %546 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %532) #15
  br label %657

547:                                              ; preds = %528
  %548 = add i32 %121, 2
  %549 = icmp ult i32 %548, %48
  br i1 %549, label %550, label %560

550:                                              ; preds = %547
  %551 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %548)
          to label %552 unwind label %541

552:                                              ; preds = %550
  %553 = load i32, ptr %551, align 4, !tbaa !84
  %554 = icmp eq i32 %553, 21
  br i1 %554, label %555, label %560

555:                                              ; preds = %552
  %556 = call ptr @__cxa_allocate_exception(i64 48) #15
  %557 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %556, ptr noundef nonnull @.str.3, i32 noundef 593, i32 noundef 312, ptr noundef %557)
          to label %534 unwind label %558

558:                                              ; preds = %555
  %559 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %556) #15
  br label %657

560:                                              ; preds = %552, %547
  %561 = load ptr, ptr %29, align 8, !tbaa !120
  %562 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %561)
          to label %563 unwind label %541

563:                                              ; preds = %560
  %564 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XercesNodeTestC2EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %562, i16 noundef signext 3, ptr noundef %564)
          to label %565 unwind label %577

565:                                              ; preds = %563
  %566 = load ptr, ptr %29, align 8, !tbaa !120
  %567 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %566)
          to label %568 unwind label %541

568:                                              ; preds = %565
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XercesStepE, i64 0, inrange i32 0, i64 2), ptr %567, align 8, !tbaa !86
  %569 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %567, i64 0, i32 1
  store i16 4, ptr %569, align 8, !tbaa !103
  %570 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %567, i64 0, i32 2
  store ptr %562, ptr %570, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %120, i32 noundef 1)
          to label %571 unwind label %541

571:                                              ; preds = %568
  %572 = load ptr, ptr %511, align 8, !tbaa !116
  %573 = load i32, ptr %513, align 4, !tbaa !108
  %574 = zext i32 %573 to i64
  %575 = getelementptr inbounds ptr, ptr %572, i64 %574
  store ptr %567, ptr %575, align 8, !tbaa !102
  %576 = add i32 %573, 1
  store i32 %576, ptr %513, align 4, !tbaa !108
  br label %606

577:                                              ; preds = %563
  %578 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %562, ptr noundef %561) #15
  br label %657

579:                                              ; preds = %124
  %580 = call ptr @__cxa_allocate_exception(i64 48) #15
  %581 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %580, ptr noundef nonnull @.str.3, i32 noundef 607, i32 noundef 313, ptr noundef %581)
          to label %133 unwind label %582

582:                                              ; preds = %579
  %583 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %580) #15
  br label %657

584:                                              ; preds = %124
  %585 = icmp eq i32 %121, 0
  br i1 %585, label %586, label %591, !prof !162

586:                                              ; preds = %584
  %587 = call ptr @__cxa_allocate_exception(i64 48) #15
  %588 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %587, ptr noundef nonnull @.str.3, i32 noundef 612, i32 noundef 314, ptr noundef %588)
          to label %133 unwind label %589

589:                                              ; preds = %586
  %590 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %587) #15
  br label %657

591:                                              ; preds = %584
  %592 = and i8 %119, 1
  %593 = icmp eq i8 %592, 0
  br i1 %593, label %599, label %594, !prof !163

594:                                              ; preds = %591
  %595 = call ptr @__cxa_allocate_exception(i64 48) #15
  %596 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %595, ptr noundef nonnull @.str.3, i32 noundef 617, i32 noundef 315, ptr noundef %596)
          to label %133 unwind label %597

597:                                              ; preds = %594
  %598 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %595) #15
  br label %657

599:                                              ; preds = %591
  %600 = icmp eq i32 %121, %94
  br i1 %600, label %601, label %606, !prof !162

601:                                              ; preds = %599
  %602 = call ptr @__cxa_allocate_exception(i64 48) #15
  %603 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %602, ptr noundef nonnull @.str.3, i32 noundef 621, i32 noundef 311, ptr noundef %603)
          to label %133 unwind label %604

604:                                              ; preds = %601
  %605 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %602) #15
  br label %657

606:                                              ; preds = %571, %442, %379, %296, %228, %124, %599, %510, %520, %525, %477, %331, %366, %193
  %607 = phi ptr [ %122, %124 ], [ %122, %599 ], [ %122, %510 ], [ %122, %571 ], [ %122, %525 ], [ %122, %520 ], [ %122, %442 ], [ %122, %477 ], [ %122, %379 ], [ %122, %366 ], [ %122, %296 ], [ %122, %331 ], [ %122, %228 ], [ %174, %193 ]
  %608 = phi i32 [ %121, %124 ], [ %121, %599 ], [ %121, %510 ], [ %521, %571 ], [ %121, %525 ], [ %121, %520 ], [ %396, %442 ], [ %457, %477 ], [ %121, %379 ], [ %367, %366 ], [ %245, %296 ], [ %311, %331 ], [ %208, %228 ], [ %121, %193 ]
  %609 = phi ptr [ %120, %124 ], [ %120, %599 ], [ %120, %510 ], [ %120, %571 ], [ %120, %525 ], [ %120, %520 ], [ %120, %442 ], [ %120, %477 ], [ %120, %379 ], [ %120, %366 ], [ %120, %296 ], [ %120, %331 ], [ %120, %228 ], [ %174, %193 ]
  %610 = phi i8 [ 0, %124 ], [ 0, %599 ], [ 0, %510 ], [ 0, %571 ], [ 0, %525 ], [ 0, %520 ], [ %119, %442 ], [ 0, %477 ], [ 0, %379 ], [ 0, %366 ], [ 0, %296 ], [ 0, %331 ], [ 0, %228 ], [ 1, %193 ]
  %611 = add i32 %608, 1
  %612 = icmp ult i32 %611, %48
  br i1 %612, label %118, label %110, !prof !164, !llvm.loop !165

613:                                              ; preds = %110
  %614 = icmp eq ptr %117, null
  br i1 %614, label %619, label %615

615:                                              ; preds = %613
  %616 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %117, i64 0, i32 2
  %617 = load i32, ptr %616, align 4, !tbaa !144
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %626

619:                                              ; preds = %615, %613
  %620 = call ptr @__cxa_allocate_exception(i64 48) #15
  %621 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %620, ptr noundef nonnull @.str.3, i32 noundef 636, i32 noundef 316, ptr noundef %621)
          to label %629 unwind label %624

622:                                              ; preds = %629, %637, %634
  %623 = landingpad { ptr, i32 }
          cleanup
  br label %657

624:                                              ; preds = %619
  %625 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %620) #15
  br label %657

626:                                              ; preds = %615
  %627 = call ptr @__cxa_allocate_exception(i64 48) #15
  %628 = load ptr, ptr %29, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %627, ptr noundef nonnull @.str.3, i32 noundef 639, i32 noundef 317, ptr noundef %628)
          to label %629 unwind label %632

629:                                              ; preds = %619, %626
  %630 = phi ptr [ %627, %626 ], [ %620, %619 ]
  invoke void @__cxa_throw(ptr nonnull %630, ptr nonnull @_ZTIN11xercesc_2_714XPathExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %631 unwind label %622

631:                                              ; preds = %629
  unreachable

632:                                              ; preds = %626
  %633 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %627) #15
  br label %657

634:                                              ; preds = %110
  %635 = load ptr, ptr %29, align 8, !tbaa !120
  %636 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 16, ptr noundef %635)
          to label %637 unwind label %622, !prof !128

637:                                              ; preds = %634
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XercesLocationPathE, i64 0, inrange i32 0, i64 2), ptr %636, align 8, !tbaa !86
  %638 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %636, i64 0, i32 1
  store ptr %112, ptr %638, align 8, !tbaa !106
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %117, i32 noundef 1)
          to label %639 unwind label %622, !prof !128

639:                                              ; preds = %637
  %640 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %117, i64 0, i32 4
  %641 = load ptr, ptr %640, align 8, !tbaa !146
  %642 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %117, i64 0, i32 2
  %643 = load i32, ptr %642, align 4, !tbaa !144
  %644 = zext i32 %643 to i64
  %645 = getelementptr inbounds ptr, ptr %641, i64 %644
  store ptr %636, ptr %645, align 8, !tbaa !102
  %646 = add i32 %643, 1
  store i32 %646, ptr %642, align 4, !tbaa !144
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %5) #15
  %647 = load ptr, ptr %34, align 8, !tbaa !134
  %648 = load ptr, ptr %33, align 8, !tbaa !76
  %649 = load ptr, ptr %647, align 8, !tbaa !86
  %650 = getelementptr inbounds ptr, ptr %649, i64 3
  %651 = load ptr, ptr %650, align 8
  invoke void %651(ptr noundef nonnull align 8 dereferenceable(8) %647, ptr noundef %648)
          to label %655 unwind label %652, !prof !166

652:                                              ; preds = %639
  %653 = landingpad { ptr, i32 }
          catch ptr null
  %654 = extractvalue { ptr, i32 } %653, 0
  call void @__clang_call_terminate(ptr %654) #16
  unreachable

655:                                              ; preds = %639
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  br label %656

656:                                              ; preds = %25, %655
  ret void

657:                                              ; preds = %541, %543, %412, %414, %266, %268, %151, %154, %138, %140, %622, %624, %632, %126, %537, %539, %577, %558, %545, %428, %454, %452, %450, %497, %485, %387, %389, %391, %264, %240, %238, %236, %339, %351, %304, %306, %308, %282, %156, %194, %604, %597, %589, %582, %364, %356, %215, %205, %136, %108, %106
  %658 = phi ptr [ %122, %589 ], [ %122, %604 ], [ %122, %597 ], [ %122, %582 ], [ %122, %545 ], [ %122, %558 ], [ %122, %577 ], [ %122, %539 ], [ %122, %537 ], [ %122, %428 ], [ %122, %454 ], [ %122, %452 ], [ %122, %450 ], [ %122, %497 ], [ %122, %485 ], [ %122, %391 ], [ %122, %389 ], [ %122, %387 ], [ %122, %364 ], [ %122, %356 ], [ %122, %205 ], [ %122, %215 ], [ %122, %282 ], [ %122, %308 ], [ %122, %306 ], [ %122, %304 ], [ %122, %351 ], [ %122, %339 ], [ %122, %264 ], [ %122, %240 ], [ %122, %238 ], [ %122, %236 ], [ %122, %136 ], [ %122, %156 ], [ null, %194 ], [ %122, %126 ], [ %111, %622 ], [ %111, %624 ], [ %111, %632 ], [ %50, %108 ], [ %50, %106 ], [ %122, %138 ], [ %122, %140 ], [ %152, %151 ], [ %122, %154 ], [ %122, %266 ], [ %122, %268 ], [ %122, %412 ], [ %122, %414 ], [ %122, %541 ], [ %122, %543 ]
  %659 = phi { ptr, i32 } [ %590, %589 ], [ %605, %604 ], [ %598, %597 ], [ %583, %582 ], [ %546, %545 ], [ %559, %558 ], [ %578, %577 ], [ %540, %539 ], [ %538, %537 ], [ %429, %428 ], [ %455, %454 ], [ %453, %452 ], [ %451, %450 ], [ %498, %497 ], [ %486, %485 ], [ %392, %391 ], [ %390, %389 ], [ %388, %387 ], [ %365, %364 ], [ %357, %356 ], [ %206, %205 ], [ %216, %215 ], [ %283, %282 ], [ %309, %308 ], [ %307, %306 ], [ %305, %304 ], [ %352, %351 ], [ %340, %339 ], [ %265, %264 ], [ %241, %240 ], [ %239, %238 ], [ %237, %236 ], [ %137, %136 ], [ %157, %156 ], [ %195, %194 ], [ %127, %126 ], [ %623, %622 ], [ %625, %624 ], [ %633, %632 ], [ %109, %108 ], [ %107, %106 ], [ %139, %138 ], [ %141, %140 ], [ %153, %151 ], [ %155, %154 ], [ %267, %266 ], [ %269, %268 ], [ %413, %412 ], [ %415, %414 ], [ %542, %541 ], [ %544, %543 ]
  %660 = icmp eq ptr %658, null
  br i1 %660, label %665, label %661

661:                                              ; preds = %657
  %662 = load ptr, ptr %658, align 8, !tbaa !86
  %663 = getelementptr inbounds ptr, ptr %662, i64 1
  %664 = load ptr, ptr %663, align 8
  call void %664(ptr noundef nonnull align 8 dereferenceable(40) %658) #15
  br label %665

665:                                              ; preds = %100, %104, %102, %657, %661, %98
  %666 = phi { ptr, i32 } [ %99, %98 ], [ %101, %100 ], [ %105, %104 ], [ %103, %102 ], [ %659, %657 ], [ %659, %661 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %5) #15
  %667 = load ptr, ptr %34, align 8, !tbaa !134
  %668 = load ptr, ptr %33, align 8, !tbaa !76
  %669 = load ptr, ptr %667, align 8, !tbaa !86
  %670 = getelementptr inbounds ptr, ptr %669, i64 3
  %671 = load ptr, ptr %670, align 8
  invoke void %671(ptr noundef nonnull align 8 dereferenceable(8) %667, ptr noundef %668)
          to label %675 unwind label %672

672:                                              ; preds = %665
  %673 = landingpad { ptr, i32 }
          catch ptr null
  %674 = extractvalue { ptr, i32 } %673, 0
  call void @__clang_call_terminate(ptr %674) #16
  unreachable

675:                                              ; preds = %665
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  resume { ptr, i32 } %666
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XercesXPath26checkForSelectedAttributesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !167 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !131
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !152

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !144
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ]
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !168

11:                                               ; preds = %38, %8
  ret void

12:                                               ; preds = %8, %38
  %13 = phi i32 [ %39, %38 ], [ 0, %8 ]
  %14 = load ptr, ptr %2, align 8, !tbaa !131
  %15 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef %13)
  %16 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !106
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19, !prof !152

19:                                               ; preds = %12
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %17, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !108
  br label %22

22:                                               ; preds = %12, %19
  %23 = phi i32 [ %21, %19 ], [ 0, %12 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25, !prof !152

25:                                               ; preds = %22
  %26 = add i32 %23, -1
  %27 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %17, i32 noundef %26)
  %28 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %27, i64 0, i32 1
  %29 = load i16, ptr %28, align 8, !tbaa !103
  %30 = icmp eq i16 %29, 2
  br i1 %30, label %31, label %38, !prof !152

31:                                               ; preds = %25
  %32 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %33 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !120
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull @.str.3, i32 noundef 375, i32 noundef 302, ptr noundef %34)
          to label %35 unwind label %36

35:                                               ; preds = %31
  tail call void @__cxa_throw(ptr nonnull %32, ptr nonnull @_ZTIN11xercesc_2_714XPathExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

36:                                               ; preds = %31
  %37 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %32) #15
  resume { ptr, i32 } %37

38:                                               ; preds = %25, %22
  %39 = add nuw i32 %13, 1
  %40 = icmp eq i32 %39, %9
  br i1 %40, label %11, label %12, !prof !169, !llvm.loop !170
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #9

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_711XercesXPathD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_711XercesXPathE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  %6 = load ptr, ptr %3, align 8, !tbaa !86
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %18, !prof !166

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !131
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !121

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !86
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(40) %11) #15, !prof !171
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #16
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_711XercesXPathD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 align 2 !prof !117 {
  tail call void @_ZN11xercesc_2_711XercesXPathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711XercesXPatheqERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %1) local_unnamed_addr #3 align 2 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !131
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !144
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !131
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !144
  %11 = icmp eq i32 %6, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %3, align 8, !tbaa !131
  %16 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef 0)
  %17 = load ptr, ptr %7, align 8, !tbaa !131
  %18 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %17, i32 noundef 0)
  %19 = tail call noundef zeroext i1 @_ZNK11xercesc_2_718XercesLocationPatheqERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %18)
  br i1 %19, label %20, label %32

20:                                               ; preds = %14, %24
  %21 = phi i32 [ %22, %24 ], [ 0, %14 ]
  %22 = add nuw i32 %21, 1
  %23 = icmp eq i32 %22, %6
  br i1 %23, label %30, label %24, !llvm.loop !172

24:                                               ; preds = %20
  %25 = load ptr, ptr %3, align 8, !tbaa !131
  %26 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %25, i32 noundef %22)
  %27 = load ptr, ptr %7, align 8, !tbaa !131
  %28 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %27, i32 noundef %22)
  %29 = tail call noundef zeroext i1 @_ZNK11xercesc_2_718XercesLocationPatheqERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %28)
  br i1 %29, label %20, label %30, !llvm.loop !172

30:                                               ; preds = %24, %20
  %31 = icmp uge i32 %22, %6
  br label %32

32:                                               ; preds = %30, %14, %12, %2
  %33 = phi i1 [ false, %2 ], [ %13, %12 ], [ %13, %14 ], [ %31, %30 ]
  ret i1 %33
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !173 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !144
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !174

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !147
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !146
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !102
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711XercesXPathneERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %1) local_unnamed_addr #3 align 2 !prof !75 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711XercesXPatheqERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %4 = xor i1 %3, true
  ret i1 %4
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714XPathExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712XPathScanner14scanExpressionEPKtiiPNS_13ValueVectorOfIiEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  %6 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #15
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  store i32 0, ptr %6, align 8, !tbaa !175
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 1
  store i32 128, ptr %9, align 4, !tbaa !177
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 2
  store i32 0, ptr %10, align 8, !tbaa !178
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 3
  store i8 0, ptr %11, align 4, !tbaa !179
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 4
  store ptr %8, ptr %12, align 8, !tbaa !180
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 5
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %15 = load ptr, ptr %8, align 8, !tbaa !86
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 258), !prof !125
  store ptr %18, ptr %14, align 8, !tbaa !181
  store i16 0, ptr %18, align 2, !tbaa !122
  %19 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 22
  %20 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 3
  %21 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 1
  %22 = sext i32 %3 to i64
  %23 = sext i32 %3 to i64
  br label %24

24:                                               ; preds = %827, %5
  %25 = phi i8 [ 0, %5 ], [ %828, %827 ]
  %26 = phi i32 [ %2, %5 ], [ %830, %827 ]
  %27 = icmp eq i32 %26, %3
  br i1 %27, label %842, label %28, !prof !182

28:                                               ; preds = %24
  %29 = sext i32 %26 to i64
  br label %30

30:                                               ; preds = %28, %38
  %31 = phi i64 [ %29, %28 ], [ %39, %38 ]
  %32 = getelementptr inbounds i16, ptr %1, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !122
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !183
  %37 = icmp slt i8 %36, 0
  br i1 %37, label %38, label %42, !prof !184

38:                                               ; preds = %30
  %39 = add nsw i64 %31, 1
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %40, %3
  br i1 %41, label %44, label %30, !llvm.loop !185

42:                                               ; preds = %30
  %43 = trunc i64 %31 to i32
  br label %44

44:                                               ; preds = %38, %42
  %45 = phi i32 [ %43, %42 ], [ %3, %38 ]
  %46 = icmp eq i32 %45, %3
  br i1 %46, label %842, label %47, !prof !184

47:                                               ; preds = %44
  %48 = icmp ugt i16 %33, 127
  br i1 %48, label %52, label %49, !prof !184

49:                                               ; preds = %47
  %50 = getelementptr inbounds [128 x i8], ptr @_ZN11xercesc_2_712XPathScanner13fASCIICharMapE, i64 0, i64 %34
  %51 = load i8, ptr %50, align 1, !tbaa !183
  br label %52

52:                                               ; preds = %47, %49
  %53 = phi i8 [ %51, %49 ], [ 25, %47 ]
  switch i8 %53, label %824 [
    i8 6, label %54
    i8 7, label %64
    i8 21, label %70
    i8 22, label %76
    i8 12, label %82
    i8 19, label %157
    i8 10, label %163
    i8 15, label %169
    i8 13, label %183
    i8 24, label %201
    i8 9, label %207
    i8 11, label %213
    i8 17, label %219
    i8 3, label %225
    i8 16, label %239
    i8 18, label %257
    i8 4, label %275
    i8 14, label %103
    i8 5, label %335
    i8 8, label %465
    i8 25, label %476
    i8 20, label %476
    i8 23, label %476
  ], !prof !186

54:                                               ; preds = %52
  %55 = load ptr, ptr %0, align 8, !tbaa !86
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  %57 = load ptr, ptr %56, align 8
  invoke void %57(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 0)
          to label %58 unwind label %60

58:                                               ; preds = %54
  %59 = add nsw i32 %45, 1
  br label %824

60:                                               ; preds = %103, %260, %242, %186, %107, %85, %54, %64, %70, %76, %94, %147, %157, %163, %177, %195, %201, %207, %213, %219, %233, %251, %269, %380, %431, %441, %471, %472, %517, %377, %429, %448, %449, %514
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %831

62:                                               ; preds = %154
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %831

64:                                               ; preds = %52
  %65 = load ptr, ptr %0, align 8, !tbaa !86
  %66 = getelementptr inbounds ptr, ptr %65, i64 2
  %67 = load ptr, ptr %66, align 8
  invoke void %67(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 1)
          to label %68 unwind label %60

68:                                               ; preds = %64
  %69 = add nsw i32 %45, 1
  br label %824

70:                                               ; preds = %52
  %71 = load ptr, ptr %0, align 8, !tbaa !86
  %72 = getelementptr inbounds ptr, ptr %71, i64 2
  %73 = load ptr, ptr %72, align 8
  invoke void %73(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 2)
          to label %74 unwind label %60

74:                                               ; preds = %70
  %75 = add nsw i32 %45, 1
  br label %824

76:                                               ; preds = %52
  %77 = load ptr, ptr %0, align 8, !tbaa !86
  %78 = getelementptr inbounds ptr, ptr %77, i64 2
  %79 = load ptr, ptr %78, align 8
  invoke void %79(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 3)
          to label %80 unwind label %60

80:                                               ; preds = %76
  %81 = add nsw i32 %45, 1
  br label %824

82:                                               ; preds = %52
  %83 = add nsw i32 %45, 1
  %84 = icmp eq i32 %83, %3
  br i1 %84, label %85, label %89, !prof !121

85:                                               ; preds = %82, %109, %109
  %86 = load ptr, ptr %0, align 8, !tbaa !86
  %87 = getelementptr inbounds ptr, ptr %86, i64 2
  %88 = load ptr, ptr %87, align 8
  invoke void %88(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 4)
          to label %824 unwind label %60

89:                                               ; preds = %82
  %90 = sext i32 %83 to i64
  %91 = getelementptr inbounds i16, ptr %1, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !122
  %93 = icmp eq i16 %92, 46
  br i1 %93, label %94, label %100, !prof !121

94:                                               ; preds = %89
  %95 = load ptr, ptr %0, align 8, !tbaa !86
  %96 = getelementptr inbounds ptr, ptr %95, i64 2
  %97 = load ptr, ptr %96, align 8
  invoke void %97(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 5)
          to label %98 unwind label %60

98:                                               ; preds = %94
  %99 = add nsw i32 %45, 2
  br label %824

100:                                              ; preds = %89
  %101 = add i16 %92, -48
  %102 = icmp ult i16 %101, 10
  br i1 %102, label %103, label %109, !prof !121

103:                                              ; preds = %100, %52
  %104 = load ptr, ptr %0, align 8, !tbaa !86
  %105 = getelementptr inbounds ptr, ptr %104, i64 2
  %106 = load ptr, ptr %105, align 8
  invoke void %106(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 47)
          to label %107 unwind label %60

107:                                              ; preds = %103
  %108 = invoke noundef i32 @_ZN11xercesc_2_712XPathScanner10scanNumberEPKtiiPNS_13ValueVectorOfIiEE(ptr nonnull align 8 poison, ptr noundef %1, i32 noundef %3, i32 noundef %45, ptr noundef nonnull %4)
          to label %824 unwind label %60

109:                                              ; preds = %100
  switch i16 %92, label %110 [
    i16 47, label %85
    i16 124, label %85
  ], !prof !187

110:                                              ; preds = %109
  %111 = zext i16 %92 to i64
  %112 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !183
  %114 = icmp slt i8 %113, 0
  br i1 %114, label %115, label %151

115:                                              ; preds = %110
  %116 = add nsw i32 %45, 1
  %117 = icmp eq i32 %116, %3
  br i1 %117, label %141, label %118

118:                                              ; preds = %115
  %119 = sext i32 %116 to i64
  %120 = getelementptr inbounds i16, ptr %1, i64 %119
  %121 = load i16, ptr %120, align 2, !tbaa !122
  %122 = zext i16 %121 to i64
  %123 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !183
  %125 = icmp slt i8 %124, 0
  br i1 %125, label %126, label %141, !llvm.loop !188

126:                                              ; preds = %118, %132
  %127 = phi i16 [ %134, %132 ], [ %121, %118 ]
  %128 = phi i64 [ %129, %132 ], [ %119, %118 ]
  %129 = add nsw i64 %128, 1
  %130 = trunc i64 %129 to i32
  %131 = icmp eq i32 %130, %3
  br i1 %131, label %141, label %132, !llvm.loop !188

132:                                              ; preds = %126
  %133 = getelementptr inbounds i16, ptr %1, i64 %129
  %134 = load i16, ptr %133, align 2, !tbaa !122
  %135 = zext i16 %134 to i64
  %136 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !183
  %138 = icmp slt i8 %137, 0
  br i1 %138, label %126, label %139, !llvm.loop !188

139:                                              ; preds = %132
  %140 = trunc i64 %129 to i32
  br label %141

141:                                              ; preds = %126, %118, %139, %115
  %142 = phi i32 [ %116, %115 ], [ %140, %139 ], [ %116, %118 ], [ %3, %126 ]
  %143 = phi i1 [ %117, %115 ], [ %131, %139 ], [ %117, %118 ], [ %131, %126 ]
  %144 = phi i16 [ %92, %115 ], [ %134, %139 ], [ %121, %118 ], [ %127, %126 ]
  %145 = icmp eq i16 %144, 124
  %146 = or i1 %143, %145
  br i1 %146, label %147, label %824

147:                                              ; preds = %141
  %148 = load ptr, ptr %0, align 8, !tbaa !86
  %149 = getelementptr inbounds ptr, ptr %148, i64 2
  %150 = load ptr, ptr %149, align 8
  invoke void %150(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 4)
          to label %824 unwind label %60

151:                                              ; preds = %110
  %152 = call ptr @__cxa_allocate_exception(i64 48) #15
  %153 = load ptr, ptr %7, align 8, !tbaa !134
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %152, ptr noundef nonnull @.str.3, i32 noundef 852, i32 noundef 318, ptr noundef %153)
          to label %154 unwind label %155

154:                                              ; preds = %151
  invoke void @__cxa_throw(ptr nonnull %152, ptr nonnull @_ZTIN11xercesc_2_714XPathExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %853 unwind label %62

155:                                              ; preds = %151
  %156 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %152) #15
  br label %831

157:                                              ; preds = %52
  %158 = load ptr, ptr %0, align 8, !tbaa !86
  %159 = getelementptr inbounds ptr, ptr %158, i64 2
  %160 = load ptr, ptr %159, align 8
  invoke void %160(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 6)
          to label %161 unwind label %60, !prof !189

161:                                              ; preds = %157
  %162 = add nsw i32 %45, 1
  br label %824

163:                                              ; preds = %52
  %164 = load ptr, ptr %0, align 8, !tbaa !86
  %165 = getelementptr inbounds ptr, ptr %164, i64 2
  %166 = load ptr, ptr %165, align 8
  invoke void %166(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 7)
          to label %167 unwind label %60

167:                                              ; preds = %163
  %168 = add nsw i32 %45, 1
  br label %824

169:                                              ; preds = %52
  %170 = add nsw i32 %45, 1
  %171 = icmp eq i32 %170, %3
  br i1 %171, label %827, label %172

172:                                              ; preds = %169
  %173 = sext i32 %170 to i64
  %174 = getelementptr inbounds i16, ptr %1, i64 %173
  %175 = load i16, ptr %174, align 2, !tbaa !122
  %176 = icmp eq i16 %175, 58
  br i1 %176, label %177, label %827

177:                                              ; preds = %172
  %178 = load ptr, ptr %0, align 8, !tbaa !86
  %179 = getelementptr inbounds ptr, ptr %178, i64 2
  %180 = load ptr, ptr %179, align 8
  invoke void %180(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 8)
          to label %181 unwind label %60

181:                                              ; preds = %177
  %182 = add nsw i32 %45, 2
  br label %824

183:                                              ; preds = %52
  %184 = add nsw i32 %45, 1
  %185 = icmp eq i32 %184, %3
  br i1 %185, label %186, label %190, !prof !162

186:                                              ; preds = %183, %190
  %187 = load ptr, ptr %0, align 8, !tbaa !86
  %188 = getelementptr inbounds ptr, ptr %187, i64 2
  %189 = load ptr, ptr %188, align 8
  invoke void %189(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 21)
          to label %824 unwind label %60

190:                                              ; preds = %183
  %191 = sext i32 %184 to i64
  %192 = getelementptr inbounds i16, ptr %1, i64 %191
  %193 = load i16, ptr %192, align 2, !tbaa !122
  %194 = icmp eq i16 %193, 47
  br i1 %194, label %195, label %186, !prof !162

195:                                              ; preds = %190
  %196 = load ptr, ptr %0, align 8, !tbaa !86
  %197 = getelementptr inbounds ptr, ptr %196, i64 2
  %198 = load ptr, ptr %197, align 8
  invoke void %198(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 22)
          to label %199 unwind label %60

199:                                              ; preds = %195
  %200 = add nsw i32 %45, 2
  br label %824

201:                                              ; preds = %52
  %202 = load ptr, ptr %0, align 8, !tbaa !86
  %203 = getelementptr inbounds ptr, ptr %202, i64 2
  %204 = load ptr, ptr %203, align 8
  invoke void %204(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 23)
          to label %205 unwind label %60

205:                                              ; preds = %201
  %206 = add nsw i32 %45, 1
  br label %824

207:                                              ; preds = %52
  %208 = load ptr, ptr %0, align 8, !tbaa !86
  %209 = getelementptr inbounds ptr, ptr %208, i64 2
  %210 = load ptr, ptr %209, align 8
  invoke void %210(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 24)
          to label %211 unwind label %60

211:                                              ; preds = %207
  %212 = add nsw i32 %45, 1
  br label %824

213:                                              ; preds = %52
  %214 = load ptr, ptr %0, align 8, !tbaa !86
  %215 = getelementptr inbounds ptr, ptr %214, i64 2
  %216 = load ptr, ptr %215, align 8
  invoke void %216(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 25)
          to label %217 unwind label %60

217:                                              ; preds = %213
  %218 = add nsw i32 %45, 1
  br label %824

219:                                              ; preds = %52
  %220 = load ptr, ptr %0, align 8, !tbaa !86
  %221 = getelementptr inbounds ptr, ptr %220, i64 2
  %222 = load ptr, ptr %221, align 8
  invoke void %222(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 26)
          to label %223 unwind label %60

223:                                              ; preds = %219
  %224 = add nsw i32 %45, 1
  br label %824

225:                                              ; preds = %52
  %226 = add nsw i32 %45, 1
  %227 = icmp eq i32 %226, %3
  br i1 %227, label %827, label %228

228:                                              ; preds = %225
  %229 = sext i32 %226 to i64
  %230 = getelementptr inbounds i16, ptr %1, i64 %229
  %231 = load i16, ptr %230, align 2, !tbaa !122
  %232 = icmp eq i16 %231, 61
  br i1 %232, label %233, label %827

233:                                              ; preds = %228
  %234 = load ptr, ptr %0, align 8, !tbaa !86
  %235 = getelementptr inbounds ptr, ptr %234, i64 2
  %236 = load ptr, ptr %235, align 8
  invoke void %236(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 27)
          to label %237 unwind label %60

237:                                              ; preds = %233
  %238 = add nsw i32 %45, 2
  br label %824

239:                                              ; preds = %52
  %240 = add nsw i32 %45, 1
  %241 = icmp eq i32 %240, %3
  br i1 %241, label %242, label %246

242:                                              ; preds = %239, %246
  %243 = load ptr, ptr %0, align 8, !tbaa !86
  %244 = getelementptr inbounds ptr, ptr %243, i64 2
  %245 = load ptr, ptr %244, align 8
  invoke void %245(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 28)
          to label %824 unwind label %60

246:                                              ; preds = %239
  %247 = sext i32 %240 to i64
  %248 = getelementptr inbounds i16, ptr %1, i64 %247
  %249 = load i16, ptr %248, align 2, !tbaa !122
  %250 = icmp eq i16 %249, 61
  br i1 %250, label %251, label %242

251:                                              ; preds = %246
  %252 = load ptr, ptr %0, align 8, !tbaa !86
  %253 = getelementptr inbounds ptr, ptr %252, i64 2
  %254 = load ptr, ptr %253, align 8
  invoke void %254(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 29)
          to label %255 unwind label %60

255:                                              ; preds = %251
  %256 = add nsw i32 %45, 2
  br label %824

257:                                              ; preds = %52
  %258 = add nsw i32 %45, 1
  %259 = icmp eq i32 %258, %3
  br i1 %259, label %260, label %264

260:                                              ; preds = %257, %264
  %261 = load ptr, ptr %0, align 8, !tbaa !86
  %262 = getelementptr inbounds ptr, ptr %261, i64 2
  %263 = load ptr, ptr %262, align 8
  invoke void %263(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 30)
          to label %824 unwind label %60

264:                                              ; preds = %257
  %265 = sext i32 %258 to i64
  %266 = getelementptr inbounds i16, ptr %1, i64 %265
  %267 = load i16, ptr %266, align 2, !tbaa !122
  %268 = icmp eq i16 %267, 61
  br i1 %268, label %269, label %260

269:                                              ; preds = %264
  %270 = load ptr, ptr %0, align 8, !tbaa !86
  %271 = getelementptr inbounds ptr, ptr %270, i64 2
  %272 = load ptr, ptr %271, align 8
  invoke void %272(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 31)
          to label %273 unwind label %60

273:                                              ; preds = %269
  %274 = add nsw i32 %45, 2
  br label %824

275:                                              ; preds = %52
  %276 = add nsw i32 %45, 1
  %277 = icmp eq i32 %276, %3
  br i1 %277, label %331, label %278

278:                                              ; preds = %275
  %279 = sext i32 %276 to i64
  %280 = getelementptr inbounds i16, ptr %1, i64 %279
  %281 = load i16, ptr %280, align 2, !tbaa !122
  %282 = icmp eq i16 %281, %33
  br i1 %282, label %296, label %283

283:                                              ; preds = %278
  %284 = sext i32 %276 to i64
  br label %285

285:                                              ; preds = %283, %290
  %286 = phi i64 [ %284, %283 ], [ %287, %290 ]
  %287 = add nsw i64 %286, 1
  %288 = trunc i64 %287 to i32
  %289 = icmp eq i32 %288, %3
  br i1 %289, label %329, label %290

290:                                              ; preds = %285
  %291 = getelementptr inbounds i16, ptr %1, i64 %287
  %292 = load i16, ptr %291, align 2, !tbaa !122
  %293 = icmp eq i16 %292, %33
  br i1 %293, label %294, label %285, !llvm.loop !190

294:                                              ; preds = %290
  %295 = trunc i64 %287 to i32
  br label %296

296:                                              ; preds = %294, %278
  %297 = phi i32 [ %276, %278 ], [ %295, %294 ]
  %298 = load ptr, ptr %0, align 8, !tbaa !86
  %299 = getelementptr inbounds ptr, ptr %298, i64 2
  %300 = load ptr, ptr %299, align 8
  invoke void %300(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 46)
          to label %301 unwind label %325

301:                                              ; preds = %296
  %302 = sub nsw i32 %297, %276
  store i32 0, ptr %6, align 8, !tbaa !175
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull %280, i32 noundef %302)
          to label %303 unwind label %325

303:                                              ; preds = %301
  %304 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 22
  %305 = load ptr, ptr %304, align 8, !tbaa !136
  %306 = load ptr, ptr %14, align 8, !tbaa !181
  %307 = load i32, ptr %6, align 8, !tbaa !175
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds i16, ptr %306, i64 %308
  store i16 0, ptr %309, align 2, !tbaa !122
  %310 = load ptr, ptr %305, align 8, !tbaa !86
  %311 = getelementptr inbounds ptr, ptr %310, i64 5
  %312 = load ptr, ptr %311, align 8
  %313 = invoke noundef i32 %312(ptr noundef nonnull align 8 dereferenceable(40) %305, ptr noundef %306)
          to label %314 unwind label %327

314:                                              ; preds = %303
  invoke void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1)
          to label %315 unwind label %327

315:                                              ; preds = %314
  %316 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 3
  %317 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 1
  %318 = load ptr, ptr %316, align 8, !tbaa !76
  %319 = load i32, ptr %317, align 4, !tbaa !83
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds i32, ptr %318, i64 %320
  store i32 %313, ptr %321, align 4, !tbaa !84
  %322 = load i32, ptr %317, align 4, !tbaa !83
  %323 = add i32 %322, 1
  store i32 %323, ptr %317, align 4, !tbaa !83
  %324 = add nsw i32 %297, 1
  br label %331

325:                                              ; preds = %301, %296
  %326 = landingpad { ptr, i32 }
          cleanup
  br label %831

327:                                              ; preds = %314, %303
  %328 = landingpad { ptr, i32 }
          cleanup
  br label %831

329:                                              ; preds = %285
  %330 = trunc i64 %287 to i32
  br label %331

331:                                              ; preds = %329, %315, %275
  %332 = phi i8 [ %25, %275 ], [ 1, %315 ], [ %25, %329 ]
  %333 = phi i1 [ false, %275 ], [ true, %315 ], [ false, %329 ]
  %334 = phi i32 [ %276, %275 ], [ %324, %315 ], [ %330, %329 ]
  br i1 %333, label %824, label %827

335:                                              ; preds = %52
  %336 = add nsw i32 %45, 1
  %337 = icmp eq i32 %336, %3
  br i1 %337, label %827, label %338

338:                                              ; preds = %335
  %339 = sext i32 %336 to i64
  %340 = getelementptr inbounds i16, ptr %1, i64 %339
  %341 = load i16, ptr %340, align 2, !tbaa !122
  %342 = zext i16 %341 to i64
  %343 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %342
  %344 = load i8, ptr %343, align 1, !tbaa !183
  %345 = and i8 %344, 2
  %346 = icmp ne i8 %345, 0
  %347 = icmp ne i16 %341, 58
  %348 = and i1 %347, %346
  br i1 %348, label %349, label %368

349:                                              ; preds = %338
  %350 = sext i32 %3 to i64
  %351 = sext i32 %336 to i64
  %352 = add i32 %45, 2
  %353 = call i32 @llvm.smax.i32(i32 %3, i32 %352)
  br label %354

354:                                              ; preds = %349, %358
  %355 = phi i64 [ %351, %349 ], [ %356, %358 ]
  %356 = add nsw i64 %355, 1
  %357 = icmp slt i64 %356, %350
  br i1 %357, label %358, label %368

358:                                              ; preds = %354
  %359 = getelementptr inbounds i16, ptr %1, i64 %356
  %360 = load i16, ptr %359, align 2, !tbaa !122
  %361 = zext i16 %360 to i64
  %362 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %361
  %363 = load i8, ptr %362, align 1, !tbaa !183
  %364 = and i8 %363, 1
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %366, label %354, !llvm.loop !191

366:                                              ; preds = %358
  %367 = trunc i64 %356 to i32
  br label %368

368:                                              ; preds = %366, %354, %338
  %369 = phi i32 [ %336, %338 ], [ %367, %366 ], [ %353, %354 ]
  %370 = icmp eq i32 %369, %336
  br i1 %370, label %827, label %371

371:                                              ; preds = %368
  %372 = icmp slt i32 %369, %3
  br i1 %372, label %373, label %377

373:                                              ; preds = %371
  %374 = sext i32 %369 to i64
  %375 = getelementptr inbounds i16, ptr %1, i64 %374
  %376 = load i16, ptr %375, align 2, !tbaa !122
  br label %377

377:                                              ; preds = %371, %373
  %378 = phi i16 [ %376, %373 ], [ 0, %371 ]
  %379 = sub nsw i32 %369, %336
  store i32 0, ptr %6, align 8, !tbaa !175
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull %340, i32 noundef %379)
          to label %380 unwind label %60

380:                                              ; preds = %377
  %381 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 22
  %382 = load ptr, ptr %381, align 8, !tbaa !136
  %383 = load ptr, ptr %14, align 8, !tbaa !181
  %384 = load i32, ptr %6, align 8, !tbaa !175
  %385 = zext i32 %384 to i64
  %386 = getelementptr inbounds i16, ptr %383, i64 %385
  store i16 0, ptr %386, align 2, !tbaa !122
  %387 = load ptr, ptr %382, align 8, !tbaa !86
  %388 = getelementptr inbounds ptr, ptr %387, i64 5
  %389 = load ptr, ptr %388, align 8
  %390 = invoke noundef i32 %389(ptr noundef nonnull align 8 dereferenceable(40) %382, ptr noundef %383)
          to label %391 unwind label %60

391:                                              ; preds = %380
  %392 = icmp eq i16 %378, 58
  br i1 %392, label %393, label %441

393:                                              ; preds = %391
  %394 = add nsw i32 %369, 1
  %395 = icmp eq i32 %394, %3
  br i1 %395, label %827, label %396

396:                                              ; preds = %393
  %397 = sext i32 %394 to i64
  %398 = getelementptr inbounds i16, ptr %1, i64 %397
  %399 = load i16, ptr %398, align 2, !tbaa !122
  %400 = zext i16 %399 to i64
  %401 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %400
  %402 = load i8, ptr %401, align 1, !tbaa !183
  %403 = and i8 %402, 2
  %404 = icmp ne i8 %403, 0
  %405 = icmp ne i16 %399, 58
  %406 = and i1 %405, %404
  br i1 %406, label %407, label %426

407:                                              ; preds = %396
  %408 = sext i32 %3 to i64
  %409 = sext i32 %394 to i64
  %410 = add i32 %369, 2
  %411 = call i32 @llvm.smax.i32(i32 %3, i32 %410)
  br label %412

412:                                              ; preds = %407, %416
  %413 = phi i64 [ %409, %407 ], [ %414, %416 ]
  %414 = add nsw i64 %413, 1
  %415 = icmp slt i64 %414, %408
  br i1 %415, label %416, label %426

416:                                              ; preds = %412
  %417 = getelementptr inbounds i16, ptr %1, i64 %414
  %418 = load i16, ptr %417, align 2, !tbaa !122
  %419 = zext i16 %418 to i64
  %420 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %419
  %421 = load i8, ptr %420, align 1, !tbaa !183
  %422 = and i8 %421, 1
  %423 = icmp eq i8 %422, 0
  br i1 %423, label %424, label %412, !llvm.loop !191

424:                                              ; preds = %416
  %425 = trunc i64 %414 to i32
  br label %426

426:                                              ; preds = %424, %412, %396
  %427 = phi i32 [ %394, %396 ], [ %425, %424 ], [ %411, %412 ]
  %428 = icmp eq i32 %427, %394
  br i1 %428, label %827, label %429

429:                                              ; preds = %426
  %430 = sub nsw i32 %427, %394
  store i32 0, ptr %6, align 8, !tbaa !175
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull %398, i32 noundef %430)
          to label %431 unwind label %60

431:                                              ; preds = %429
  %432 = load ptr, ptr %381, align 8, !tbaa !136
  %433 = load ptr, ptr %14, align 8, !tbaa !181
  %434 = load i32, ptr %6, align 8, !tbaa !175
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds i16, ptr %433, i64 %435
  store i16 0, ptr %436, align 2, !tbaa !122
  %437 = load ptr, ptr %432, align 8, !tbaa !86
  %438 = getelementptr inbounds ptr, ptr %437, i64 5
  %439 = load ptr, ptr %438, align 8
  %440 = invoke noundef i32 %439(ptr noundef nonnull align 8 dereferenceable(40) %432, ptr noundef %433)
          to label %441 unwind label %60

441:                                              ; preds = %431, %391
  %442 = phi i32 [ -1, %391 ], [ %390, %431 ]
  %443 = phi i32 [ %390, %391 ], [ %440, %431 ]
  %444 = phi i32 [ %369, %391 ], [ %427, %431 ]
  %445 = load ptr, ptr %0, align 8, !tbaa !86
  %446 = getelementptr inbounds ptr, ptr %445, i64 2
  %447 = load ptr, ptr %446, align 8
  invoke void %447(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 48)
          to label %448 unwind label %60

448:                                              ; preds = %441
  invoke void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1)
          to label %449 unwind label %60

449:                                              ; preds = %448
  %450 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 3
  %451 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 1
  %452 = load ptr, ptr %450, align 8, !tbaa !76
  %453 = load i32, ptr %451, align 4, !tbaa !83
  %454 = zext i32 %453 to i64
  %455 = getelementptr inbounds i32, ptr %452, i64 %454
  store i32 %442, ptr %455, align 4, !tbaa !84
  %456 = load i32, ptr %451, align 4, !tbaa !83
  %457 = add i32 %456, 1
  store i32 %457, ptr %451, align 4, !tbaa !83
  invoke void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1)
          to label %458 unwind label %60

458:                                              ; preds = %449
  %459 = load ptr, ptr %450, align 8, !tbaa !76
  %460 = load i32, ptr %451, align 4, !tbaa !83
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds i32, ptr %459, i64 %461
  store i32 %443, ptr %462, align 4, !tbaa !84
  %463 = load i32, ptr %451, align 4, !tbaa !83
  %464 = add i32 %463, 1
  store i32 %464, ptr %451, align 4, !tbaa !83
  br label %824

465:                                              ; preds = %52
  %466 = and i8 %25, 1
  %467 = icmp eq i8 %466, 0
  %468 = load ptr, ptr %0, align 8, !tbaa !86
  %469 = getelementptr inbounds ptr, ptr %468, i64 2
  %470 = load ptr, ptr %469, align 8
  br i1 %467, label %472, label %471, !prof !158

471:                                              ; preds = %465
  invoke void %470(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 20)
          to label %473 unwind label %60

472:                                              ; preds = %465
  invoke void %470(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 9)
          to label %473 unwind label %60, !prof !192

473:                                              ; preds = %472, %471
  %474 = phi i8 [ 0, %471 ], [ 1, %472 ]
  %475 = add nsw i32 %45, 1
  br label %824

476:                                              ; preds = %52, %52, %52
  %477 = sext i32 %45 to i64
  %478 = getelementptr inbounds i16, ptr %1, i64 %477
  %479 = load i16, ptr %478, align 2, !tbaa !122
  %480 = zext i16 %479 to i64
  %481 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %480
  %482 = load i8, ptr %481, align 1, !tbaa !183
  %483 = and i8 %482, 2
  %484 = icmp ne i8 %483, 0
  %485 = icmp ne i16 %479, 58
  %486 = and i1 %485, %484
  br i1 %486, label %487, label %505, !prof !97

487:                                              ; preds = %476
  %488 = sext i32 %45 to i64
  %489 = add i32 %45, 1
  %490 = call i32 @llvm.smax.i32(i32 %3, i32 %489)
  br label %491

491:                                              ; preds = %487, %495
  %492 = phi i64 [ %488, %487 ], [ %493, %495 ]
  %493 = add nsw i64 %492, 1
  %494 = icmp slt i64 %493, %22
  br i1 %494, label %495, label %505, !prof !193

495:                                              ; preds = %491
  %496 = getelementptr inbounds i16, ptr %1, i64 %493
  %497 = load i16, ptr %496, align 2, !tbaa !122
  %498 = zext i16 %497 to i64
  %499 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %498
  %500 = load i8, ptr %499, align 1, !tbaa !183
  %501 = and i8 %500, 1
  %502 = icmp eq i8 %501, 0
  br i1 %502, label %503, label %491, !prof !194, !llvm.loop !191

503:                                              ; preds = %495
  %504 = trunc i64 %493 to i32
  br label %505

505:                                              ; preds = %503, %491, %476
  %506 = phi i32 [ %45, %476 ], [ %504, %503 ], [ %490, %491 ]
  %507 = icmp eq i32 %506, %45
  br i1 %507, label %827, label %508, !prof !195

508:                                              ; preds = %505
  %509 = icmp slt i32 %506, %3
  br i1 %509, label %510, label %514, !prof !196

510:                                              ; preds = %508
  %511 = sext i32 %506 to i64
  %512 = getelementptr inbounds i16, ptr %1, i64 %511
  %513 = load i16, ptr %512, align 2, !tbaa !122
  br label %514

514:                                              ; preds = %508, %510
  %515 = phi i16 [ %513, %510 ], [ 0, %508 ]
  %516 = sub nsw i32 %506, %45
  store i32 0, ptr %6, align 8, !tbaa !175
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull %478, i32 noundef %516)
          to label %517 unwind label %60, !prof !97

517:                                              ; preds = %514
  %518 = load ptr, ptr %19, align 8, !tbaa !136
  %519 = load ptr, ptr %14, align 8, !tbaa !181
  %520 = load i32, ptr %6, align 8, !tbaa !175
  %521 = zext i32 %520 to i64
  %522 = getelementptr inbounds i16, ptr %519, i64 %521
  store i16 0, ptr %522, align 2, !tbaa !122
  %523 = load ptr, ptr %518, align 8, !tbaa !86
  %524 = getelementptr inbounds ptr, ptr %523, i64 5
  %525 = load ptr, ptr %524, align 8
  %526 = invoke noundef i32 %525(ptr noundef nonnull align 8 dereferenceable(40) %518, ptr noundef %519)
          to label %527 unwind label %60, !prof !197

527:                                              ; preds = %517
  %528 = icmp eq i16 %515, 58
  br i1 %528, label %529, label %599, !prof !196

529:                                              ; preds = %527
  %530 = add nsw i32 %506, 1
  %531 = icmp eq i32 %530, %3
  br i1 %531, label %820, label %532, !prof !161

532:                                              ; preds = %529
  %533 = sext i32 %530 to i64
  %534 = getelementptr inbounds i16, ptr %1, i64 %533
  %535 = load i16, ptr %534, align 2, !tbaa !122
  switch i16 %535, label %542 [
    i16 42, label %536
    i16 58, label %539
  ], !prof !198

536:                                              ; preds = %532
  %537 = add nsw i32 %506, 2
  %538 = icmp slt i32 %537, %3
  br i1 %538, label %592, label %599

539:                                              ; preds = %532
  %540 = add nsw i32 %506, 2
  %541 = icmp slt i32 %540, %3
  br i1 %541, label %592, label %599

542:                                              ; preds = %532
  %543 = zext i16 %535 to i64
  %544 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %543
  %545 = load i8, ptr %544, align 1, !tbaa !183
  %546 = and i8 %545, 2
  %547 = icmp ne i8 %546, 0
  %548 = icmp ne i16 %535, 58
  %549 = and i1 %548, %547
  br i1 %549, label %550, label %568, !prof !159

550:                                              ; preds = %542
  %551 = sext i32 %530 to i64
  %552 = add i32 %506, 2
  %553 = call i32 @llvm.smax.i32(i32 %3, i32 %552)
  br label %554

554:                                              ; preds = %550, %558
  %555 = phi i64 [ %551, %550 ], [ %556, %558 ]
  %556 = add nsw i64 %555, 1
  %557 = icmp slt i64 %556, %23
  br i1 %557, label %558, label %568, !prof !199

558:                                              ; preds = %554
  %559 = getelementptr inbounds i16, ptr %1, i64 %556
  %560 = load i16, ptr %559, align 2, !tbaa !122
  %561 = zext i16 %560 to i64
  %562 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %561
  %563 = load i8, ptr %562, align 1, !tbaa !183
  %564 = and i8 %563, 1
  %565 = icmp eq i8 %564, 0
  br i1 %565, label %566, label %554, !prof !200, !llvm.loop !191

566:                                              ; preds = %558
  %567 = trunc i64 %556 to i32
  br label %568

568:                                              ; preds = %566, %554, %542
  %569 = phi i32 [ %530, %542 ], [ %567, %566 ], [ %553, %554 ]
  %570 = icmp eq i32 %569, %530
  br i1 %570, label %820, label %573, !prof !161

571:                                              ; preds = %650, %686, %776, %806, %805, %794, %693, %692, %579, %804, %793, %782, %707, %689, %582
  %572 = landingpad { ptr, i32 }
          cleanup
  br label %831

573:                                              ; preds = %568
  %574 = icmp slt i32 %569, %3
  br i1 %574, label %575, label %579, !prof !201

575:                                              ; preds = %573
  %576 = sext i32 %569 to i64
  %577 = getelementptr inbounds i16, ptr %1, i64 %576
  %578 = load i16, ptr %577, align 2, !tbaa !122
  br label %579

579:                                              ; preds = %573, %575
  %580 = phi i16 [ %578, %575 ], [ 0, %573 ]
  %581 = sub nsw i32 %569, %530
  store i32 0, ptr %6, align 8, !tbaa !175
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull %534, i32 noundef %581)
          to label %582 unwind label %571, !prof !159

582:                                              ; preds = %579
  %583 = load ptr, ptr %19, align 8, !tbaa !136
  %584 = load ptr, ptr %14, align 8, !tbaa !181
  %585 = load i32, ptr %6, align 8, !tbaa !175
  %586 = zext i32 %585 to i64
  %587 = getelementptr inbounds i16, ptr %584, i64 %586
  store i16 0, ptr %587, align 2, !tbaa !122
  %588 = load ptr, ptr %583, align 8, !tbaa !86
  %589 = getelementptr inbounds ptr, ptr %588, i64 5
  %590 = load ptr, ptr %589, align 8
  %591 = invoke noundef i32 %590(ptr noundef nonnull align 8 dereferenceable(40) %583, ptr noundef %584)
          to label %599 unwind label %571, !prof !202

592:                                              ; preds = %539, %536
  %593 = phi i32 [ %537, %536 ], [ %540, %539 ]
  %594 = phi i1 [ true, %536 ], [ false, %539 ]
  %595 = phi i1 [ false, %536 ], [ true, %539 ]
  %596 = sext i32 %593 to i64
  %597 = getelementptr inbounds i16, ptr %1, i64 %596
  %598 = load i16, ptr %597, align 2, !tbaa !122
  br label %599

599:                                              ; preds = %592, %582, %539, %536, %527
  %600 = phi i32 [ -1, %539 ], [ -1, %536 ], [ -1, %527 ], [ %526, %582 ], [ -1, %592 ]
  %601 = phi i32 [ %526, %539 ], [ %526, %536 ], [ %526, %527 ], [ %591, %582 ], [ %526, %592 ]
  %602 = phi i16 [ %535, %539 ], [ %535, %536 ], [ %515, %527 ], [ %580, %582 ], [ %598, %592 ]
  %603 = phi i32 [ %540, %539 ], [ %537, %536 ], [ %506, %527 ], [ %569, %582 ], [ %593, %592 ]
  %604 = phi i1 [ false, %539 ], [ true, %536 ], [ false, %527 ], [ false, %582 ], [ %594, %592 ]
  %605 = phi i1 [ true, %539 ], [ false, %536 ], [ false, %527 ], [ false, %582 ], [ %595, %592 ]
  %606 = zext i16 %602 to i64
  %607 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %606
  %608 = load i8, ptr %607, align 1, !tbaa !183
  %609 = icmp slt i8 %608, 0
  br i1 %609, label %610, label %629, !prof !203

610:                                              ; preds = %599
  %611 = sext i32 %603 to i64
  %612 = add nsw i64 %611, 1
  %613 = trunc i64 %612 to i32
  %614 = icmp eq i32 %613, %3
  br i1 %614, label %629, label %619

615:                                              ; preds = %619
  %616 = add nsw i64 %620, 1
  %617 = trunc i64 %616 to i32
  %618 = icmp eq i32 %617, %3
  br i1 %618, label %629, label %619, !llvm.loop !204

619:                                              ; preds = %610, %615
  %620 = phi i64 [ %616, %615 ], [ %612, %610 ]
  %621 = getelementptr inbounds i16, ptr %1, i64 %620
  %622 = load i16, ptr %621, align 2, !tbaa !122
  %623 = zext i16 %622 to i64
  %624 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %623
  %625 = load i8, ptr %624, align 1, !tbaa !183
  %626 = icmp slt i8 %625, 0
  br i1 %626, label %615, label %627, !prof !203, !llvm.loop !204

627:                                              ; preds = %619
  %628 = trunc i64 %620 to i32
  br label %629

629:                                              ; preds = %615, %610, %627, %599
  %630 = phi i16 [ %602, %599 ], [ %622, %627 ], [ %602, %610 ], [ %622, %615 ]
  %631 = phi i32 [ %603, %599 ], [ %628, %627 ], [ %3, %610 ], [ %3, %615 ]
  %632 = and i8 %25, 1
  %633 = icmp eq i8 %632, 0
  br i1 %633, label %658, label %634, !prof !97

634:                                              ; preds = %629
  %635 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 1
  %636 = load i32, ptr %635, align 8, !tbaa !205
  %637 = icmp eq i32 %601, %636
  br i1 %637, label %650, label %638

638:                                              ; preds = %634
  %639 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 2
  %640 = load i32, ptr %639, align 4, !tbaa !206
  %641 = icmp eq i32 %601, %640
  br i1 %641, label %650, label %642

642:                                              ; preds = %638
  %643 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 3
  %644 = load i32, ptr %643, align 8, !tbaa !207
  %645 = icmp eq i32 %601, %644
  br i1 %645, label %650, label %646

646:                                              ; preds = %642
  %647 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 4
  %648 = load i32, ptr %647, align 4, !tbaa !208
  %649 = icmp eq i32 %601, %648
  br i1 %649, label %650, label %820

650:                                              ; preds = %646, %642, %638, %634
  %651 = phi i32 [ 16, %634 ], [ 17, %638 ], [ 18, %642 ], [ 19, %646 ]
  %652 = load ptr, ptr %0, align 8, !tbaa !86
  %653 = getelementptr inbounds ptr, ptr %652, i64 2
  %654 = load ptr, ptr %653, align 8
  invoke void %654(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef %651)
          to label %655 unwind label %571

655:                                              ; preds = %650
  %656 = or i1 %604, %605
  %657 = xor i1 %656, true
  br label %820

658:                                              ; preds = %629
  %659 = icmp ne i16 %630, 40
  %660 = or i1 %604, %659
  %661 = or i1 %605, %660
  br i1 %661, label %713, label %662, !prof !97

662:                                              ; preds = %658
  %663 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 5
  %664 = load i32, ptr %663, align 8, !tbaa !209
  %665 = icmp eq i32 %601, %664
  br i1 %665, label %681, label %666

666:                                              ; preds = %662
  %667 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 6
  %668 = load i32, ptr %667, align 4, !tbaa !210
  %669 = icmp eq i32 %601, %668
  br i1 %669, label %681, label %670

670:                                              ; preds = %666
  %671 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 7
  %672 = load i32, ptr %671, align 8, !tbaa !211
  %673 = icmp eq i32 %601, %672
  br i1 %673, label %681, label %674

674:                                              ; preds = %670
  %675 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 8
  %676 = load i32, ptr %675, align 4, !tbaa !212
  %677 = icmp eq i32 %601, %676
  %678 = load ptr, ptr %0, align 8, !tbaa !86
  %679 = getelementptr inbounds ptr, ptr %678, i64 2
  %680 = load ptr, ptr %679, align 8
  br i1 %677, label %686, label %689

681:                                              ; preds = %670, %666, %662
  %682 = phi i32 [ 12, %662 ], [ 13, %666 ], [ 14, %670 ]
  %683 = load ptr, ptr %0, align 8, !tbaa !86
  %684 = getelementptr inbounds ptr, ptr %683, i64 2
  %685 = load ptr, ptr %684, align 8
  br label %686

686:                                              ; preds = %681, %674
  %687 = phi i32 [ 15, %674 ], [ %682, %681 ]
  %688 = phi ptr [ %680, %674 ], [ %685, %681 ]
  invoke void %688(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef %687)
          to label %707 unwind label %571

689:                                              ; preds = %674
  %690 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 3
  %691 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 1
  invoke void %680(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 32)
          to label %692 unwind label %571

692:                                              ; preds = %689
  invoke void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1)
          to label %693 unwind label %571

693:                                              ; preds = %692
  %694 = load ptr, ptr %690, align 8, !tbaa !76
  %695 = load i32, ptr %691, align 4, !tbaa !83
  %696 = zext i32 %695 to i64
  %697 = getelementptr inbounds i32, ptr %694, i64 %696
  store i32 %600, ptr %697, align 4, !tbaa !84
  %698 = load i32, ptr %691, align 4, !tbaa !83
  %699 = add i32 %698, 1
  store i32 %699, ptr %691, align 4, !tbaa !83
  invoke void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1)
          to label %700 unwind label %571

700:                                              ; preds = %693
  %701 = load ptr, ptr %690, align 8, !tbaa !76
  %702 = load i32, ptr %691, align 4, !tbaa !83
  %703 = zext i32 %702 to i64
  %704 = getelementptr inbounds i32, ptr %701, i64 %703
  store i32 %601, ptr %704, align 4, !tbaa !84
  %705 = load i32, ptr %691, align 4, !tbaa !83
  %706 = add i32 %705, 1
  store i32 %706, ptr %691, align 4, !tbaa !83
  br label %707

707:                                              ; preds = %686, %700
  %708 = load ptr, ptr %0, align 8, !tbaa !86
  %709 = getelementptr inbounds ptr, ptr %708, i64 2
  %710 = load ptr, ptr %709, align 8
  invoke void %710(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 0)
          to label %711 unwind label %571

711:                                              ; preds = %707
  %712 = add nsw i32 %631, 1
  br label %820

713:                                              ; preds = %658
  br i1 %605, label %724, label %714, !prof !195

714:                                              ; preds = %713
  %715 = icmp eq i16 %630, 58
  br i1 %715, label %716, label %789, !prof !195

716:                                              ; preds = %714
  %717 = add nsw i32 %631, 1
  %718 = icmp slt i32 %717, %3
  br i1 %718, label %719, label %789

719:                                              ; preds = %716
  %720 = sext i32 %717 to i64
  %721 = getelementptr inbounds i16, ptr %1, i64 %720
  %722 = load i16, ptr %721, align 2, !tbaa !122
  %723 = icmp eq i16 %722, 58
  br i1 %723, label %724, label %789

724:                                              ; preds = %719, %713
  %725 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 9
  %726 = load i32, ptr %725, align 8, !tbaa !213
  %727 = icmp eq i32 %601, %726
  br i1 %727, label %776, label %728

728:                                              ; preds = %724
  %729 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 10
  %730 = load i32, ptr %729, align 4, !tbaa !214
  %731 = icmp eq i32 %601, %730
  br i1 %731, label %776, label %732

732:                                              ; preds = %728
  %733 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 11
  %734 = load i32, ptr %733, align 8, !tbaa !215
  %735 = icmp eq i32 %601, %734
  br i1 %735, label %776, label %736

736:                                              ; preds = %732
  %737 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 12
  %738 = load i32, ptr %737, align 4, !tbaa !216
  %739 = icmp eq i32 %601, %738
  br i1 %739, label %776, label %740

740:                                              ; preds = %736
  %741 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 13
  %742 = load i32, ptr %741, align 8, !tbaa !217
  %743 = icmp eq i32 %601, %742
  br i1 %743, label %776, label %744

744:                                              ; preds = %740
  %745 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 14
  %746 = load i32, ptr %745, align 4, !tbaa !218
  %747 = icmp eq i32 %601, %746
  br i1 %747, label %776, label %748

748:                                              ; preds = %744
  %749 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 15
  %750 = load i32, ptr %749, align 8, !tbaa !219
  %751 = icmp eq i32 %601, %750
  br i1 %751, label %776, label %752

752:                                              ; preds = %748
  %753 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 16
  %754 = load i32, ptr %753, align 4, !tbaa !220
  %755 = icmp eq i32 %601, %754
  br i1 %755, label %776, label %756

756:                                              ; preds = %752
  %757 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 17
  %758 = load i32, ptr %757, align 8, !tbaa !221
  %759 = icmp eq i32 %601, %758
  br i1 %759, label %776, label %760

760:                                              ; preds = %756
  %761 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 18
  %762 = load i32, ptr %761, align 4, !tbaa !222
  %763 = icmp eq i32 %601, %762
  br i1 %763, label %776, label %764

764:                                              ; preds = %760
  %765 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 19
  %766 = load i32, ptr %765, align 8, !tbaa !223
  %767 = icmp eq i32 %601, %766
  br i1 %767, label %776, label %768

768:                                              ; preds = %764
  %769 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 20
  %770 = load i32, ptr %769, align 4, !tbaa !224
  %771 = icmp eq i32 %601, %770
  br i1 %771, label %776, label %772

772:                                              ; preds = %768
  %773 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 21
  %774 = load i32, ptr %773, align 8, !tbaa !225
  %775 = icmp eq i32 %601, %774
  br i1 %775, label %776, label %820

776:                                              ; preds = %772, %768, %764, %760, %756, %752, %748, %744, %740, %736, %732, %728, %724
  %777 = phi i32 [ 33, %724 ], [ 34, %728 ], [ 35, %732 ], [ 36, %736 ], [ 37, %740 ], [ 38, %744 ], [ 39, %748 ], [ 40, %752 ], [ 41, %756 ], [ 42, %760 ], [ 43, %764 ], [ 44, %768 ], [ 45, %772 ]
  %778 = load ptr, ptr %0, align 8, !tbaa !86
  %779 = getelementptr inbounds ptr, ptr %778, i64 2
  %780 = load ptr, ptr %779, align 8
  invoke void %780(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef %777)
          to label %781 unwind label %571

781:                                              ; preds = %776
  br i1 %604, label %820, label %782

782:                                              ; preds = %781
  %783 = load ptr, ptr %0, align 8, !tbaa !86
  %784 = getelementptr inbounds ptr, ptr %783, i64 2
  %785 = load ptr, ptr %784, align 8
  invoke void %785(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 8)
          to label %786 unwind label %571

786:                                              ; preds = %782
  %787 = add nsw i32 %631, 2
  %788 = select i1 %605, i32 %631, i32 %787
  br label %820

789:                                              ; preds = %719, %716, %714
  %790 = load ptr, ptr %0, align 8, !tbaa !86
  %791 = getelementptr inbounds ptr, ptr %790, i64 2
  %792 = load ptr, ptr %791, align 8
  br i1 %604, label %793, label %804, !prof !195

793:                                              ; preds = %789
  invoke void %792(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 10)
          to label %794 unwind label %571

794:                                              ; preds = %793
  invoke void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1)
          to label %795 unwind label %571

795:                                              ; preds = %794
  %796 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 3
  %797 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 1
  %798 = load ptr, ptr %796, align 8, !tbaa !76
  %799 = load i32, ptr %797, align 4, !tbaa !83
  %800 = zext i32 %799 to i64
  %801 = getelementptr inbounds i32, ptr %798, i64 %800
  store i32 %601, ptr %801, align 4, !tbaa !84
  %802 = load i32, ptr %797, align 4, !tbaa !83
  %803 = add i32 %802, 1
  store i32 %803, ptr %797, align 4, !tbaa !83
  br label %820

804:                                              ; preds = %789
  invoke void %792(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 11)
          to label %805 unwind label %571, !prof !226

805:                                              ; preds = %804
  invoke void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1)
          to label %806 unwind label %571, !prof !97

806:                                              ; preds = %805
  %807 = load ptr, ptr %20, align 8, !tbaa !76
  %808 = load i32, ptr %21, align 4, !tbaa !83
  %809 = zext i32 %808 to i64
  %810 = getelementptr inbounds i32, ptr %807, i64 %809
  store i32 %600, ptr %810, align 4, !tbaa !84
  %811 = load i32, ptr %21, align 4, !tbaa !83
  %812 = add i32 %811, 1
  store i32 %812, ptr %21, align 4, !tbaa !83
  invoke void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1)
          to label %813 unwind label %571, !prof !97

813:                                              ; preds = %806
  %814 = load ptr, ptr %20, align 8, !tbaa !76
  %815 = load i32, ptr %21, align 4, !tbaa !83
  %816 = zext i32 %815 to i64
  %817 = getelementptr inbounds i32, ptr %814, i64 %816
  store i32 %601, ptr %817, align 4, !tbaa !84
  %818 = load i32, ptr %21, align 4, !tbaa !83
  %819 = add i32 %818, 1
  store i32 %819, ptr %21, align 4, !tbaa !83
  br label %820

820:                                              ; preds = %813, %795, %655, %781, %772, %646, %568, %529, %786, %711
  %821 = phi i8 [ 0, %786 ], [ 0, %711 ], [ %25, %529 ], [ %25, %568 ], [ %25, %646 ], [ %25, %772 ], [ %25, %781 ], [ 1, %813 ], [ 1, %795 ], [ 0, %655 ]
  %822 = phi i1 [ true, %786 ], [ true, %711 ], [ false, %529 ], [ false, %568 ], [ false, %646 ], [ false, %772 ], [ false, %781 ], [ true, %813 ], [ true, %795 ], [ %657, %655 ]
  %823 = phi i32 [ %788, %786 ], [ %712, %711 ], [ %530, %529 ], [ %569, %568 ], [ %631, %646 ], [ %631, %772 ], [ %631, %781 ], [ %631, %813 ], [ %631, %795 ], [ %631, %655 ]
  br i1 %822, label %824, label %827, !prof !97

824:                                              ; preds = %260, %242, %186, %107, %85, %147, %458, %273, %255, %199, %98, %141, %331, %820, %52, %473, %237, %223, %217, %211, %205, %181, %167, %161, %80, %74, %68, %58
  %825 = phi i8 [ %25, %52 ], [ %821, %820 ], [ %474, %473 ], [ 1, %458 ], [ %332, %331 ], [ 0, %273 ], [ 0, %255 ], [ 0, %237 ], [ 0, %223 ], [ 0, %217 ], [ 0, %211 ], [ 0, %205 ], [ 0, %199 ], [ 0, %181 ], [ 0, %167 ], [ 0, %161 ], [ 1, %98 ], [ %25, %141 ], [ 1, %80 ], [ 0, %74 ], [ 1, %68 ], [ 0, %58 ], [ 1, %147 ], [ 1, %85 ], [ 1, %107 ], [ 0, %186 ], [ 0, %242 ], [ 0, %260 ]
  %826 = phi i32 [ %45, %52 ], [ %823, %820 ], [ %475, %473 ], [ %444, %458 ], [ %334, %331 ], [ %274, %273 ], [ %256, %255 ], [ %238, %237 ], [ %224, %223 ], [ %218, %217 ], [ %212, %211 ], [ %206, %205 ], [ %200, %199 ], [ %182, %181 ], [ %168, %167 ], [ %162, %161 ], [ %99, %98 ], [ %142, %141 ], [ %81, %80 ], [ %75, %74 ], [ %69, %68 ], [ %59, %58 ], [ %142, %147 ], [ %83, %85 ], [ %108, %107 ], [ %184, %186 ], [ %240, %242 ], [ %258, %260 ]
  br label %827

827:                                              ; preds = %820, %331, %505, %426, %393, %368, %335, %228, %225, %172, %169, %824
  %828 = phi i8 [ %825, %824 ], [ %25, %169 ], [ %25, %172 ], [ %25, %225 ], [ %25, %228 ], [ %25, %335 ], [ %25, %368 ], [ %25, %393 ], [ %25, %426 ], [ %25, %505 ], [ %332, %331 ], [ %821, %820 ]
  %829 = phi i1 [ true, %824 ], [ false, %169 ], [ false, %172 ], [ false, %225 ], [ false, %228 ], [ false, %335 ], [ false, %368 ], [ false, %393 ], [ false, %426 ], [ false, %505 ], [ false, %331 ], [ false, %820 ]
  %830 = phi i32 [ %826, %824 ], [ %170, %169 ], [ %170, %172 ], [ %226, %225 ], [ %226, %228 ], [ %336, %335 ], [ %369, %368 ], [ %394, %393 ], [ %427, %426 ], [ %506, %505 ], [ %334, %331 ], [ %823, %820 ]
  br i1 %829, label %24, label %842, !prof !227, !llvm.loop !228

831:                                              ; preds = %60, %62, %325, %327, %571, %155
  %832 = phi { ptr, i32 } [ %572, %571 ], [ %156, %155 ], [ %328, %327 ], [ %326, %325 ], [ %61, %60 ], [ %63, %62 ]
  %833 = load ptr, ptr %12, align 8, !tbaa !180
  %834 = load ptr, ptr %14, align 8, !tbaa !181
  %835 = load ptr, ptr %833, align 8, !tbaa !86
  %836 = getelementptr inbounds ptr, ptr %835, i64 3
  %837 = load ptr, ptr %836, align 8
  invoke void %837(ptr noundef nonnull align 8 dereferenceable(8) %833, ptr noundef %834)
          to label %841 unwind label %838

838:                                              ; preds = %831
  %839 = landingpad { ptr, i32 }
          catch ptr null
  %840 = extractvalue { ptr, i32 } %839, 0
  call void @__clang_call_terminate(ptr %840) #16
  unreachable

841:                                              ; preds = %831
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #15
  resume { ptr, i32 } %832

842:                                              ; preds = %827, %44, %24
  %843 = phi i1 [ true, %24 ], [ true, %44 ], [ false, %827 ]
  %844 = load ptr, ptr %12, align 8, !tbaa !180
  %845 = load ptr, ptr %14, align 8, !tbaa !181
  %846 = load ptr, ptr %844, align 8, !tbaa !86
  %847 = getelementptr inbounds ptr, ptr %846, i64 3
  %848 = load ptr, ptr %847, align 8
  invoke void %848(ptr noundef nonnull align 8 dereferenceable(8) %844, ptr noundef %845)
          to label %852 unwind label %849, !prof !166

849:                                              ; preds = %842
  %850 = landingpad { ptr, i32 }
          catch ptr null
  %851 = extractvalue { ptr, i32 } %850, 0
  call void @__clang_call_terminate(ptr %851) #16
  unreachable

852:                                              ; preds = %842
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #15
  ret i1 %843

853:                                              ; preds = %154
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !229 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !83
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !230

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !134
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.6, i32 noundef 206, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714XPathExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %12
}

declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711XercesXPath12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #3 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %0)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_711XercesXPathE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %2, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %2, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %2, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr %0, ptr %5, align 8, !tbaa !120
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711XercesXPath14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !75 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_711XercesXPath12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !75 {
  ret ptr @_ZN11xercesc_2_711XercesXPath16classXercesXPathE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XercesXPath9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #3 align 2 !prof !75 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i16, ptr %1, align 8, !tbaa !99
  %6 = icmp eq i16 %5, 0
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 1
  br i1 %6, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, ptr %7, align 8, !tbaa !118
  %10 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %9)
  %11 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !127
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %12, i32 noundef 0, i1 noundef zeroext false)
  %13 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !131
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_18XercesLocationPathEEERNS_16XSerializeEngineE(ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(100) %1)
  br label %19

15:                                               ; preds = %2
  %16 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %17 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %18 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 3
  call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_18XercesLocationPathEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %18, i32 noundef 8, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1)
  br label %19

19:                                               ; preds = %15, %8
  ret void
}

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_18XercesLocationPathEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_18XercesLocationPathEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_711XercesXPathC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_711XercesXPathE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr %1, ptr %5, align 8, !tbaa !120
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XPathScannerC2EPNS_13XMLStringPoolE(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !75 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712XPathScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %3 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %3, i8 0, i64 84, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_712XPathScanner4initEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XPathScanner4initEv(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 align 2 !prof !117 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols12fgSYMBOL_ANDE), !prof !231
  %8 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !205
  %9 = load ptr, ptr %2, align 8, !tbaa !136
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  %11 = getelementptr inbounds ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols11fgSYMBOL_ORE), !prof !231
  %14 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 2
  store i32 %13, ptr %14, align 4, !tbaa !206
  %15 = load ptr, ptr %2, align 8, !tbaa !136
  %16 = load ptr, ptr %15, align 8, !tbaa !86
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols12fgSYMBOL_MODE), !prof !231
  %20 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 3
  store i32 %19, ptr %20, align 8, !tbaa !207
  %21 = load ptr, ptr %2, align 8, !tbaa !136
  %22 = load ptr, ptr %21, align 8, !tbaa !86
  %23 = getelementptr inbounds ptr, ptr %22, i64 5
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef i32 %24(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols12fgSYMBOL_DIVE), !prof !231
  %26 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 4
  store i32 %25, ptr %26, align 4, !tbaa !208
  %27 = load ptr, ptr %2, align 8, !tbaa !136
  %28 = load ptr, ptr %27, align 8, !tbaa !86
  %29 = getelementptr inbounds ptr, ptr %28, i64 5
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef i32 %30(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols16fgSYMBOL_COMMENTE), !prof !231
  %32 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 5
  store i32 %31, ptr %32, align 8, !tbaa !209
  %33 = load ptr, ptr %2, align 8, !tbaa !136
  %34 = load ptr, ptr %33, align 8, !tbaa !86
  %35 = getelementptr inbounds ptr, ptr %34, i64 5
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef i32 %36(ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols13fgSYMBOL_TEXTE), !prof !231
  %38 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 6
  store i32 %37, ptr %38, align 4, !tbaa !210
  %39 = load ptr, ptr %2, align 8, !tbaa !136
  %40 = load ptr, ptr %39, align 8, !tbaa !86
  %41 = getelementptr inbounds ptr, ptr %40, i64 5
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef i32 %42(ptr noundef nonnull align 8 dereferenceable(40) %39, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols11fgSYMBOL_PIE), !prof !231
  %44 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 7
  store i32 %43, ptr %44, align 8, !tbaa !211
  %45 = load ptr, ptr %2, align 8, !tbaa !136
  %46 = load ptr, ptr %45, align 8, !tbaa !86
  %47 = getelementptr inbounds ptr, ptr %46, i64 5
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef i32 %48(ptr noundef nonnull align 8 dereferenceable(40) %45, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols13fgSYMBOL_NODEE), !prof !231
  %50 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 8
  store i32 %49, ptr %50, align 4, !tbaa !212
  %51 = load ptr, ptr %2, align 8, !tbaa !136
  %52 = load ptr, ptr %51, align 8, !tbaa !86
  %53 = getelementptr inbounds ptr, ptr %52, i64 5
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef i32 %54(ptr noundef nonnull align 8 dereferenceable(40) %51, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols17fgSYMBOL_ANCESTORE), !prof !231
  %56 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 9
  store i32 %55, ptr %56, align 8, !tbaa !213
  %57 = load ptr, ptr %2, align 8, !tbaa !136
  %58 = load ptr, ptr %57, align 8, !tbaa !86
  %59 = getelementptr inbounds ptr, ptr %58, i64 5
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef i32 %60(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols25fgSYMBOL_ANCESTOR_OR_SELFE), !prof !231
  %62 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 10
  store i32 %61, ptr %62, align 4, !tbaa !214
  %63 = load ptr, ptr %2, align 8, !tbaa !136
  %64 = load ptr, ptr %63, align 8, !tbaa !86
  %65 = getelementptr inbounds ptr, ptr %64, i64 5
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef i32 %66(ptr noundef nonnull align 8 dereferenceable(40) %63, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols18fgSYMBOL_ATTRIBUTEE), !prof !231
  %68 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 11
  store i32 %67, ptr %68, align 8, !tbaa !215
  %69 = load ptr, ptr %2, align 8, !tbaa !136
  %70 = load ptr, ptr %69, align 8, !tbaa !86
  %71 = getelementptr inbounds ptr, ptr %70, i64 5
  %72 = load ptr, ptr %71, align 8
  %73 = tail call noundef i32 %72(ptr noundef nonnull align 8 dereferenceable(40) %69, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols14fgSYMBOL_CHILDE), !prof !231
  %74 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 12
  store i32 %73, ptr %74, align 4, !tbaa !216
  %75 = load ptr, ptr %2, align 8, !tbaa !136
  %76 = load ptr, ptr %75, align 8, !tbaa !86
  %77 = getelementptr inbounds ptr, ptr %76, i64 5
  %78 = load ptr, ptr %77, align 8
  %79 = tail call noundef i32 %78(ptr noundef nonnull align 8 dereferenceable(40) %75, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols19fgSYMBOL_DESCENDANTE), !prof !231
  %80 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 13
  store i32 %79, ptr %80, align 8, !tbaa !217
  %81 = load ptr, ptr %2, align 8, !tbaa !136
  %82 = load ptr, ptr %81, align 8, !tbaa !86
  %83 = getelementptr inbounds ptr, ptr %82, i64 5
  %84 = load ptr, ptr %83, align 8
  %85 = tail call noundef i32 %84(ptr noundef nonnull align 8 dereferenceable(40) %81, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols27fgSYMBOL_DESCENDANT_OR_SELFE), !prof !231
  %86 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 14
  store i32 %85, ptr %86, align 4, !tbaa !218
  %87 = load ptr, ptr %2, align 8, !tbaa !136
  %88 = load ptr, ptr %87, align 8, !tbaa !86
  %89 = getelementptr inbounds ptr, ptr %88, i64 5
  %90 = load ptr, ptr %89, align 8
  %91 = tail call noundef i32 %90(ptr noundef nonnull align 8 dereferenceable(40) %87, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols18fgSYMBOL_FOLLOWINGE), !prof !231
  %92 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 15
  store i32 %91, ptr %92, align 8, !tbaa !219
  %93 = load ptr, ptr %2, align 8, !tbaa !136
  %94 = load ptr, ptr %93, align 8, !tbaa !86
  %95 = getelementptr inbounds ptr, ptr %94, i64 5
  %96 = load ptr, ptr %95, align 8
  %97 = tail call noundef i32 %96(ptr noundef nonnull align 8 dereferenceable(40) %93, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols26fgSYMBOL_FOLLOWING_SIBLINGE), !prof !231
  %98 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 16
  store i32 %97, ptr %98, align 4, !tbaa !220
  %99 = load ptr, ptr %2, align 8, !tbaa !136
  %100 = load ptr, ptr %99, align 8, !tbaa !86
  %101 = getelementptr inbounds ptr, ptr %100, i64 5
  %102 = load ptr, ptr %101, align 8
  %103 = tail call noundef i32 %102(ptr noundef nonnull align 8 dereferenceable(40) %99, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols18fgSYMBOL_NAMESPACEE), !prof !231
  %104 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 17
  store i32 %103, ptr %104, align 8, !tbaa !221
  %105 = load ptr, ptr %2, align 8, !tbaa !136
  %106 = load ptr, ptr %105, align 8, !tbaa !86
  %107 = getelementptr inbounds ptr, ptr %106, i64 5
  %108 = load ptr, ptr %107, align 8
  %109 = tail call noundef i32 %108(ptr noundef nonnull align 8 dereferenceable(40) %105, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols15fgSYMBOL_PARENTE), !prof !231
  %110 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 18
  store i32 %109, ptr %110, align 4, !tbaa !222
  %111 = load ptr, ptr %2, align 8, !tbaa !136
  %112 = load ptr, ptr %111, align 8, !tbaa !86
  %113 = getelementptr inbounds ptr, ptr %112, i64 5
  %114 = load ptr, ptr %113, align 8
  %115 = tail call noundef i32 %114(ptr noundef nonnull align 8 dereferenceable(40) %111, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols18fgSYMBOL_PRECEDINGE), !prof !231
  %116 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 19
  store i32 %115, ptr %116, align 8, !tbaa !223
  %117 = load ptr, ptr %2, align 8, !tbaa !136
  %118 = load ptr, ptr %117, align 8, !tbaa !86
  %119 = getelementptr inbounds ptr, ptr %118, i64 5
  %120 = load ptr, ptr %119, align 8
  %121 = tail call noundef i32 %120(ptr noundef nonnull align 8 dereferenceable(40) %117, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols26fgSYMBOL_PRECEDING_SIBLINGE), !prof !231
  %122 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 20
  store i32 %121, ptr %122, align 4, !tbaa !224
  %123 = load ptr, ptr %2, align 8, !tbaa !136
  %124 = load ptr, ptr %123, align 8, !tbaa !86
  %125 = getelementptr inbounds ptr, ptr %124, i64 5
  %126 = load ptr, ptr %125, align 8
  %127 = tail call noundef i32 %126(ptr noundef nonnull align 8 dereferenceable(40) %123, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols13fgSYMBOL_SELFE), !prof !231
  %128 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 21
  store i32 %127, ptr %128, align 8, !tbaa !225
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712XPathScanner10scanNumberEPKtiiPNS_13ValueVectorOfIiEE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %14, %5
  %8 = phi i64 [ %19, %14 ], [ %6, %5 ]
  %9 = phi i32 [ %18, %14 ], [ 0, %5 ]
  %10 = getelementptr inbounds i16, ptr %1, i64 %8
  %11 = load i16, ptr %10, align 2, !tbaa !122
  %12 = add i16 %11, -48
  %13 = icmp ult i16 %12, 10
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = zext nneg i16 %11 to i32
  %16 = mul nsw i32 %9, 10
  %17 = add i32 %16, -48
  %18 = add i32 %17, %15
  %19 = add nsw i64 %8, 1
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %24, label %7, !llvm.loop !232

22:                                               ; preds = %7
  %23 = trunc i64 %8 to i32
  br label %24

24:                                               ; preds = %14, %22
  %25 = phi i32 [ %9, %22 ], [ %18, %14 ]
  %26 = phi i32 [ %23, %22 ], [ %2, %14 ]
  %27 = icmp eq i16 %11, 46
  br i1 %27, label %28, label %61

28:                                               ; preds = %24
  %29 = add nsw i32 %26, 1
  %30 = icmp slt i32 %29, %2
  br i1 %30, label %31, label %61

31:                                               ; preds = %28
  %32 = sext i32 %29 to i64
  br label %33

33:                                               ; preds = %31, %40
  %34 = phi i64 [ %32, %31 ], [ %45, %40 ]
  %35 = phi i32 [ 0, %31 ], [ %44, %40 ]
  %36 = getelementptr inbounds i16, ptr %1, i64 %34
  %37 = load i16, ptr %36, align 2, !tbaa !122
  %38 = add i16 %37, -48
  %39 = icmp ult i16 %38, 10
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = zext nneg i16 %37 to i32
  %42 = mul nsw i32 %35, 10
  %43 = add i32 %42, -48
  %44 = add i32 %43, %41
  %45 = add nsw i64 %34, 1
  %46 = trunc i64 %45 to i32
  %47 = icmp eq i32 %46, %2
  br i1 %47, label %50, label %33, !llvm.loop !233

48:                                               ; preds = %33
  %49 = trunc i64 %34 to i32
  br label %50

50:                                               ; preds = %40, %48
  %51 = phi i32 [ %35, %48 ], [ %44, %40 ]
  %52 = phi i32 [ %49, %48 ], [ %2, %40 ]
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %56 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !134
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %55, ptr noundef nonnull @.str.3, i32 noundef 1360, i32 noundef 320, ptr noundef %57)
          to label %58 unwind label %59

58:                                               ; preds = %54
  tail call void @__cxa_throw(ptr nonnull %55, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

59:                                               ; preds = %54
  %60 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %55) #15
  resume { ptr, i32 } %60

61:                                               ; preds = %28, %50, %24
  %62 = phi i32 [ %51, %50 ], [ 0, %28 ], [ 0, %24 ]
  %63 = phi i32 [ %52, %50 ], [ %29, %28 ], [ %26, %24 ]
  tail call void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1)
  %64 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !76
  %66 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !83
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, ptr %65, i64 %68
  store i32 %25, ptr %69, align 4, !tbaa !84
  %70 = load i32, ptr %66, align 4, !tbaa !83
  %71 = add i32 %70, 1
  store i32 %71, ptr %66, align 4, !tbaa !83
  tail call void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1)
  %72 = load ptr, ptr %64, align 8, !tbaa !76
  %73 = load i32, ptr %66, align 4, !tbaa !83
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %72, i64 %74
  store i32 %62, ptr %75, align 4, !tbaa !84
  %76 = load i32, ptr %66, align 4, !tbaa !83
  %77 = add i32 %76, 1
  store i32 %77, ptr %66, align 4, !tbaa !83
  ret i32 %63
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712XPathScanner10scanNCNameEPKtii(ptr nocapture noundef nonnull readnone align 8 dereferenceable(104) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #11 align 2 !prof !75 {
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds i16, ptr %1, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !122
  %8 = zext i16 %7 to i64
  %9 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !183
  %11 = and i8 %10, 2
  %12 = icmp ne i8 %11, 0
  %13 = icmp ne i16 %7, 58
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %34

15:                                               ; preds = %4
  %16 = sext i32 %3 to i64
  %17 = sext i32 %2 to i64
  %18 = add i32 %3, 1
  %19 = tail call i32 @llvm.smax.i32(i32 %2, i32 %18)
  br label %20

20:                                               ; preds = %15, %24
  %21 = phi i64 [ %16, %15 ], [ %22, %24 ]
  %22 = add nsw i64 %21, 1
  %23 = icmp slt i64 %22, %17
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = getelementptr inbounds i16, ptr %1, i64 %22
  %26 = load i16, ptr %25, align 2, !tbaa !122
  %27 = zext i16 %26 to i64
  %28 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !183
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %20, !llvm.loop !191

32:                                               ; preds = %24
  %33 = trunc i64 %22 to i32
  br label %34

34:                                               ; preds = %32, %20, %4
  %35 = phi i32 [ %3, %4 ], [ %33, %32 ], [ %19, %20 ]
  ret i32 %35
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721XPathScannerForSchemaC2EPNS_13XMLStringPoolE(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !75 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712XPathScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %3 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %3, i8 0, i64 84, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_712XPathScanner4initEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_721XPathScannerForSchemaE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721XPathScannerForSchema8addTokenEPNS_13ValueVectorOfIiEEi(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !234 {
  switch i32 %2, label %13 [
    i32 36, label %4
    i32 35, label %4
    i32 23, label %4
    i32 22, label %4
    i32 21, label %4
    i32 11, label %4
    i32 10, label %4
    i32 9, label %4
    i32 8, label %4
    i32 6, label %4
    i32 4, label %4
  ], !prof !235

4:                                                ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  tail call void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1)
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !83
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %6, i64 %9
  store i32 %2, ptr %10, align 4, !tbaa !84
  %11 = load i32, ptr %7, align 4, !tbaa !83
  %12 = add i32 %11, 1
  store i32 %12, ptr %7, align 4, !tbaa !83
  ret void

13:                                               ; preds = %3
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %15 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !134
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str.3, i32 noundef 1405, i32 noundef 319, ptr noundef %16)
          to label %17 unwind label %18

17:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_714XPathExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #15
  resume { ptr, i32 } %19
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XercesNodeTestD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 !prof !75 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_714XercesNodeTestE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !86
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(56) %3) #15
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XercesNodeTestD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 !prof !236 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_714XercesNodeTestE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !237

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !86
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(56) %3) #15, !prof !238
  br label %9

9:                                                ; preds = %1, %5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XercesStepD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 !prof !75 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XercesStepE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !86
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XercesStepD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 !prof !236 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XercesStepE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !237

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !86
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %3) #15, !prof !239
  br label %9

9:                                                ; preds = %1, %5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XercesLocationPathD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 !prof !75 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XercesLocationPathE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !86
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #15
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XercesLocationPathD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 !prof !117 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XercesLocationPathE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !121

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !86
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #15, !prof !240
  br label %9

9:                                                ; preds = %1, %5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712XPathScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #10 comdat align 2 !prof !75 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712XPathScannerD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #10 comdat align 2 !prof !75 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721XPathScannerForSchemaD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #10 comdat align 2 !prof !75 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XPathExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 !prof !75 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XPathException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 !prof !75 {
  ret ptr @_ZN11xercesc_2_76XMLUni21fgXPathException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XPathException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !241
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714XPathExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !86
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare noundef i32 @_ZNK11xercesc_2_714NamespaceScope21getNamespaceForPrefixEPKti(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 comdat align 2 !prof !244 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %22, label %5, !prof !245

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !175
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !177
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %12, label %11, !prof !246

11:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2)
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !181
  %15 = load i32, ptr %0, align 8, !tbaa !175
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i16, ptr %14, i64 %16
  %18 = zext i32 %2 to i64
  %19 = shl nuw nsw i64 %18, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %17, ptr align 2 %1, i64 %19, i1 false), !prof !247
  %20 = load i32, ptr %0, align 8, !tbaa !175
  %21 = add i32 %20, %2
  store i32 %21, ptr %0, align 8, !tbaa !175
  br label %23

22:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1)
  br label %23

23:                                               ; preds = %22, %12
  ret void
}

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 !prof !248 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !249

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !122
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !250

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !122
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !251, !llvm.loop !252

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !175
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !177
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !253

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !181
  %24 = load i32, ptr %0, align 8, !tbaa !175
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !254
  %28 = load i32, ptr %0, align 8, !tbaa !175
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !175
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 !prof !75 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 !prof !75 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !241
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !86
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !236 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !108
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !139
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !237

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !115
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !86
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !108
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !102
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !116
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !102
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !102
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !255

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !115
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !116
  %52 = load ptr, ptr %49, align 8, !tbaa !86
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !116
  store i32 %12, ptr %6, align 8, !tbaa !139
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 !prof !75 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 !prof !75 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !241
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !86
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 !prof !256 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !83
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !133
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %43, !prof !257

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !134
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 2
  %18 = load ptr, ptr %15, align 8, !tbaa !86
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17), !prof !258
  %22 = load i32, ptr %3, align 4, !tbaa !83
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24, !prof !259

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !76
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !134
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !76
  %31 = load ptr, ptr %28, align 8, !tbaa !86
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30), !prof !260
  store ptr %21, ptr %29, align 8, !tbaa !76
  store i32 %13, ptr %6, align 8, !tbaa !133
  br label %43

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %39, %34 ]
  %36 = getelementptr inbounds i32, ptr %26, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !84
  %38 = getelementptr inbounds i32, ptr %21, i64 %35
  store i32 %37, ptr %38, align 4, !tbaa !84
  %39 = add nuw nsw i64 %35, 1
  %40 = load i32, ptr %3, align 4, !tbaa !83
  %41 = zext i32 %40 to i64
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %34, label %27, !prof !261, !llvm.loop !262

43:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_10XercesStepEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !138, !range !263, !noundef !264
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !121

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !168

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !116
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !237

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !86
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(24) %15) #15, !prof !265
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !108
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !prof !266, !llvm.loop !267

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !115
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !116
  %31 = load ptr, ptr %28, align 8, !tbaa !86
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35, !prof !166

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #16
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 !prof !117 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.5, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #15
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !138, !range !263, !noundef !264
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !116
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !102
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !86
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(24) %23) #15
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !116
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !102
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !108
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !108
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !138, !range !263, !noundef !264
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !116
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !102
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !86
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(24) %18) #15
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !116
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !102
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !108
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !268
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !108
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !138, !range !263, !noundef !264
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !116
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !102
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !86
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(24) %22) #15
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !108
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !116
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !102
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !102
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !269

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !116
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !102
  store i32 %30, ptr %3, align 4, !tbaa !108
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !108
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !108
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !138, !range !263, !noundef !264
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !116
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !86
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(24) %15) #15
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !138, !range !263, !noundef !264
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !116
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !86
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(24) %15) #15
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !108
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !270

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !115
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !116
  %31 = load ptr, ptr %28, align 8, !tbaa !86
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 !prof !75 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 !prof !75 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !142, !range !263, !noundef !264
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !121

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !144
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !168

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !146
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !121

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !86
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(16) %15) #15, !prof !271
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !144
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !prof !168, !llvm.loop !272

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !147
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !146
  %31 = load ptr, ptr %28, align 8, !tbaa !86
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35, !prof !166

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #16
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 !prof !117 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !144
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !147
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.5, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #15
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !142, !range !263, !noundef !264
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !146
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !102
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !86
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(16) %23) #15
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !146
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !102
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !144
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !144
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !142, !range !263, !noundef !264
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !146
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !102
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !86
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(16) %18) #15
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !146
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !102
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !144
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !273
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !144
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !147
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !142, !range !263, !noundef !264
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !146
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !102
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !86
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(16) %22) #15
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !144
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !146
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !102
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !102
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !274

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !146
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !102
  store i32 %30, ptr %3, align 4, !tbaa !144
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !144
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !144
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !142, !range !263, !noundef !264
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !146
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !86
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(16) %15) #15
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !142, !range !263, !noundef !264
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !144
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !146
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !86
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(16) %15) #15
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !144
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !275

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !147
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !146
  %31 = load ptr, ptr %28, align 8, !tbaa !86
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 !prof !75 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 !prof !75 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !117 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !144
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !145
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !121

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !147
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !86
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !144
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !102
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !146
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !102
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !102
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !276

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !147
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !146
  %52 = load ptr, ptr %49, align 8, !tbaa !86
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !146
  store i32 %12, ptr %6, align 8, !tbaa !145
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(none) }
attributes #10 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!74}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!35 = !{ptr @_ZN11xercesc_2_714XercesNodeTestC2EsPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 34}
!36 = !{ptr @_ZN11xercesc_2_714XercesNodeTestC2EsPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE, i64 34}
!37 = !{ptr @_ZN11xercesc_2_714XercesNodeTestC2EPKNS_5QNameE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 62}
!38 = !{ptr @_ZN11xercesc_2_714XercesNodeTestC2EPKNS_5QNameE, ptr @_ZN11xercesc_2_75QNameC1ERKS0_, i64 62}
!39 = !{ptr @_ZN11xercesc_2_711XercesXPathC2EPKtPNS_13XMLStringPoolEPNS_14NamespaceScopeEjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, i64 32}
!40 = !{ptr @_ZN11xercesc_2_711XercesXPathC2EPKtPNS_13XMLStringPoolEPNS_14NamespaceScopeEjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_711XercesXPath26checkForSelectedAttributesEv, i64 16}
!41 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_712XPathScanner4initEv, i64 32}
!42 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_712XPathScanner14scanExpressionEPKtiiPNS_13ValueVectorOfIiEE, i64 32}
!43 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 288}
!44 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, i64 333}
!45 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE, i64 62}
!46 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_714XercesNodeTestC2EPKNS_5QNameE, i64 62}
!47 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE19ensureExtraCapacityEj, i64 96}
!48 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_75QNameD1Ev, i64 62}
!49 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_714XercesNodeTestC2EsPNS_13MemoryManagerE, i64 34}
!50 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZNK11xercesc_2_714NamespaceScope21getNamespaceForPrefixEPKti, i64 46}
!51 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE19ensureExtraCapacityEj, i64 32}
!52 = !{ptr @_ZN11xercesc_2_711XercesXPath26checkForSelectedAttributesEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj, i64 16}
!53 = !{ptr @_ZN11xercesc_2_711XercesXPath26checkForSelectedAttributesEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj, i64 16}
!54 = !{ptr @_ZN11xercesc_2_711XercesXPathD2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEED0Ev, i64 32}
!55 = !{ptr @_ZN11xercesc_2_711XercesXPathD0Ev, ptr @_ZN11xercesc_2_711XercesXPathD2Ev, i64 32}
!56 = !{ptr @_ZN11xercesc_2_711XercesXPathD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 32}
!57 = !{ptr @_ZN11xercesc_2_712XPathScanner14scanExpressionEPKtiiPNS_13ValueVectorOfIiEE, ptr @_ZN11xercesc_2_721XPathScannerForSchema8addTokenEPNS_13ValueVectorOfIiEEi, i64 80}
!58 = !{ptr @_ZN11xercesc_2_712XPathScanner14scanExpressionEPKtiiPNS_13ValueVectorOfIiEE, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, i64 108}
!59 = !{ptr @_ZN11xercesc_2_712XPathScanner14scanExpressionEPKtiiPNS_13ValueVectorOfIiEE, ptr @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj, i64 124}
!60 = !{ptr @_ZN11xercesc_2_721XPathScannerForSchema8addTokenEPNS_13ValueVectorOfIiEEi, ptr @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj, i64 176}
!61 = !{ptr @_ZN11xercesc_2_714XercesNodeTestD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 96}
!62 = !{ptr @_ZN11xercesc_2_710XercesStepD0Ev, ptr @_ZN11xercesc_2_714XercesNodeTestD0Ev, i64 96}
!63 = !{ptr @_ZN11xercesc_2_710XercesStepD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 96}
!64 = !{ptr @_ZN11xercesc_2_718XercesLocationPathD0Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEED0Ev, i64 32}
!65 = !{ptr @_ZN11xercesc_2_718XercesLocationPathD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 32}
!66 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 4}
!67 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!68 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEED2Ev, ptr @_ZN11xercesc_2_710XercesStepD0Ev, i64 96}
!69 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEED0Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEED2Ev, i64 32}
!70 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 32}
!71 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEED2Ev, ptr @_ZN11xercesc_2_718XercesLocationPathD0Ev, i64 32}
!72 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEED0Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEED2Ev, i64 32}
!73 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 32}
!74 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!75 = !{!"function_entry_count", i64 0}
!76 = !{!77, !82, i64 16}
!77 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIiEE", !78, i64 0, !81, i64 4, !81, i64 8, !82, i64 16, !82, i64 24}
!78 = !{!"bool", !79, i64 0}
!79 = !{!"omnipotent char", !80, i64 0}
!80 = !{!"Simple C++ TBAA"}
!81 = !{!"int", !79, i64 0}
!82 = !{!"any pointer", !79, i64 0}
!83 = !{!77, !81, i64 4}
!84 = !{!81, !81, i64 0}
!85 = !{!"function_entry_count", i64 34}
!86 = !{!87, !87, i64 0}
!87 = !{!"vtable pointer", !80, i64 0}
!88 = !{!89, !91, i64 8}
!89 = !{!"_ZTSN11xercesc_2_714XercesNodeTestE", !90, i64 0, !91, i64 8, !82, i64 16}
!90 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!91 = !{!"short", !79, i64 0}
!92 = !{!"branch_weights", i32 34, i32 0}
!93 = !{!89, !82, i64 16}
!94 = !{!"function_entry_count", i64 62}
!95 = !{!96, !82, i64 48}
!96 = !{!"_ZTSN11xercesc_2_75QNameE", !90, i64 0, !81, i64 8, !81, i64 12, !81, i64 16, !81, i64 20, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48}
!97 = !{!"branch_weights", i32 62, i32 0}
!98 = !{!96, !81, i64 20}
!99 = !{!100, !91, i64 0}
!100 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !91, i64 0, !91, i64 2, !82, i64 8, !82, i64 16, !82, i64 24, !101, i64 32, !101, i64 40, !82, i64 48, !82, i64 56, !82, i64 64, !82, i64 72, !82, i64 80, !82, i64 88, !81, i64 96}
!101 = !{!"long", !79, i64 0}
!102 = !{!82, !82, i64 0}
!103 = !{!104, !91, i64 8}
!104 = !{!"_ZTSN11xercesc_2_710XercesStepE", !90, i64 0, !91, i64 8, !82, i64 16}
!105 = !{!104, !82, i64 16}
!106 = !{!107, !82, i64 8}
!107 = !{!"_ZTSN11xercesc_2_718XercesLocationPathE", !90, i64 0, !82, i64 8}
!108 = !{!109, !81, i64 12}
!109 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEE", !78, i64 8, !81, i64 12, !81, i64 16, !82, i64 24, !82, i64 32}
!110 = distinct !{!110, !111, !112}
!111 = !{!"llvm.loop.mustprogress"}
!112 = !{!"llvm.loop.unroll.disable"}
!113 = !{!"function_entry_count", i64 4691883}
!114 = !{!"branch_weights", i32 4691883, i32 0}
!115 = !{!109, !82, i64 32}
!116 = !{!109, !82, i64 24}
!117 = !{!"function_entry_count", i64 32}
!118 = !{!119, !81, i64 8}
!119 = !{!"_ZTSN11xercesc_2_711XercesXPathE", !90, i64 0, !81, i64 8, !82, i64 16, !82, i64 24, !82, i64 32}
!120 = !{!119, !82, i64 32}
!121 = !{!"branch_weights", i32 0, i32 32}
!122 = !{!91, !91, i64 0}
!123 = !{!"branch_weights", i32 32, i32 774}
!124 = distinct !{!124, !111, !112}
!125 = !{!"VP", i32 0, i64 32, i64 8345045103670217670, i64 32}
!126 = !{!"VP", i32 1, i64 32, i64 65, i64 10, i64 17, i64 7, i64 33, i64 5, i64 9, i64 5}
!127 = !{!119, !82, i64 16}
!128 = !{!"branch_weights", i32 32, i32 0}
!129 = !{!"branch_weights", i32 16, i32 16}
!130 = !{!"branch_weights", i32 16, i32 0}
!131 = !{!119, !82, i64 24}
!132 = !{!77, !78, i64 0}
!133 = !{!77, !81, i64 8}
!134 = !{!77, !82, i64 24}
!135 = !{!"VP", i32 1, i64 32, i64 64, i64 32}
!136 = !{!137, !82, i64 96}
!137 = !{!"_ZTSN11xercesc_2_712XPathScannerE", !81, i64 8, !81, i64 12, !81, i64 16, !81, i64 20, !81, i64 24, !81, i64 28, !81, i64 32, !81, i64 36, !81, i64 40, !81, i64 44, !81, i64 48, !81, i64 52, !81, i64 56, !81, i64 60, !81, i64 64, !81, i64 68, !81, i64 72, !81, i64 76, !81, i64 80, !81, i64 84, !81, i64 88, !82, i64 96}
!138 = !{!109, !78, i64 8}
!139 = !{!109, !81, i64 16}
!140 = !{!"branch_weights", i32 32, i32 480}
!141 = distinct !{!141, !111, !112}
!142 = !{!143, !78, i64 8}
!143 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEE", !78, i64 8, !81, i64 12, !81, i64 16, !82, i64 24, !82, i64 32}
!144 = !{!143, !81, i64 12}
!145 = !{!143, !81, i64 16}
!146 = !{!143, !82, i64 24}
!147 = !{!143, !82, i64 32}
!148 = !{!"branch_weights", i32 32, i32 224}
!149 = distinct !{!149, !111, !112}
!150 = !{!"branch_weights", i32 160, i32 0}
!151 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 16, i32 0, i32 0, i32 2, i32 0, i32 46, i32 32, i32 0, i32 64}
!152 = !{!"branch_weights", i32 0, i32 16}
!153 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 16}
!154 = !{!155, !81, i64 8}
!155 = !{!"_ZTSN11xercesc_2_714NamespaceScopeE", !81, i64 0, !81, i64 4, !81, i64 8, !156, i64 16, !82, i64 56, !82, i64 64}
!156 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !90, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !81, i64 32, !81, i64 36}
!157 = !{!"VP", i32 0, i64 16, i64 4099110260104020874, i64 16}
!158 = !{!"branch_weights", i32 2, i32 0}
!159 = !{!"branch_weights", i32 46, i32 0}
!160 = !{!"VP", i32 0, i64 46, i64 4099110260104020874, i64 46}
!161 = !{!"branch_weights", i32 0, i32 46}
!162 = !{!"branch_weights", i32 0, i32 64}
!163 = !{!"branch_weights", i32 64, i32 0}
!164 = !{!"branch_weights", i32 513, i32 127}
!165 = distinct !{!165, !111, !112}
!166 = !{!"VP", i32 0, i64 32, i64 -7405368087501025645, i64 32}
!167 = !{!"function_entry_count", i64 16}
!168 = !{!"branch_weights", i32 1, i32 127}
!169 = !{!"branch_weights", i32 127, i32 1}
!170 = distinct !{!170, !111, !112}
!171 = !{!"VP", i32 0, i64 32, i64 1512908685719036065, i64 32}
!172 = distinct !{!172, !111, !112}
!173 = !{!"function_entry_count", i64 1104825}
!174 = !{!"branch_weights", i32 1104825, i32 0}
!175 = !{!176, !81, i64 0}
!176 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !81, i64 0, !81, i64 4, !81, i64 8, !78, i64 12, !82, i64 16, !82, i64 24, !82, i64 32}
!177 = !{!176, !81, i64 4}
!178 = !{!176, !81, i64 8}
!179 = !{!176, !78, i64 12}
!180 = !{!176, !82, i64 16}
!181 = !{!176, !82, i64 32}
!182 = !{!"branch_weights", i32 32, i32 176}
!183 = !{!79, !79, i64 0}
!184 = !{!"branch_weights", i32 0, i32 176}
!185 = distinct !{!185, !111, !112}
!186 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 16, i32 0, i32 0, i32 64, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 62, i32 0}
!187 = !{!"branch_weights", i32 0, i32 32, i32 0}
!188 = distinct !{!188, !111, !112}
!189 = !{!"VP", i32 0, i64 16, i64 -6799934837700578604, i64 16}
!190 = distinct !{!190, !111, !112}
!191 = distinct !{!191, !111, !112}
!192 = !{!"VP", i32 0, i64 2, i64 -6799934837700578604, i64 2}
!193 = !{!"branch_weights", i32 200, i32 16}
!194 = !{!"branch_weights", i32 46, i32 154}
!195 = !{!"branch_weights", i32 0, i32 62}
!196 = !{!"branch_weights", i32 46, i32 16}
!197 = !{!"VP", i32 0, i64 62, i64 8828421665688538749, i64 62}
!198 = !{!"branch_weights", i32 46, i32 0, i32 0}
!199 = !{!"branch_weights", i32 414, i32 16}
!200 = !{!"branch_weights", i32 30, i32 384}
!201 = !{!"branch_weights", i32 30, i32 16}
!202 = !{!"VP", i32 0, i64 46, i64 8828421665688538749, i64 46}
!203 = !{!"branch_weights", i32 0, i32 1}
!204 = distinct !{!204, !111, !112}
!205 = !{!137, !81, i64 8}
!206 = !{!137, !81, i64 12}
!207 = !{!137, !81, i64 16}
!208 = !{!137, !81, i64 20}
!209 = !{!137, !81, i64 24}
!210 = !{!137, !81, i64 28}
!211 = !{!137, !81, i64 32}
!212 = !{!137, !81, i64 36}
!213 = !{!137, !81, i64 40}
!214 = !{!137, !81, i64 44}
!215 = !{!137, !81, i64 48}
!216 = !{!137, !81, i64 52}
!217 = !{!137, !81, i64 56}
!218 = !{!137, !81, i64 60}
!219 = !{!137, !81, i64 64}
!220 = !{!137, !81, i64 68}
!221 = !{!137, !81, i64 72}
!222 = !{!137, !81, i64 76}
!223 = !{!137, !81, i64 80}
!224 = !{!137, !81, i64 84}
!225 = !{!137, !81, i64 88}
!226 = !{!"VP", i32 0, i64 62, i64 -6799934837700578604, i64 62}
!227 = !{!"branch_weights", i32 176, i32 0}
!228 = distinct !{!228, !111, !112}
!229 = !{!"function_entry_count", i64 15025182}
!230 = !{!"branch_weights", i32 15025182, i32 0}
!231 = !{!"VP", i32 0, i64 32, i64 8828421665688538749, i64 32}
!232 = distinct !{!232, !111, !112}
!233 = distinct !{!233, !111, !112}
!234 = !{!"function_entry_count", i64 176}
!235 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 62, i32 0, i32 2, i32 0, i32 16, i32 32}
!236 = !{!"function_entry_count", i64 96}
!237 = !{!"branch_weights", i32 0, i32 96}
!238 = !{!"VP", i32 0, i64 96, i64 7173745605608799217, i64 96}
!239 = !{!"VP", i32 0, i64 96, i64 3839352385985864182, i64 96}
!240 = !{!"VP", i32 0, i64 32, i64 -6117564399979377777, i64 32}
!241 = !{!242, !82, i64 40}
!242 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !243, i64 8, !82, i64 16, !81, i64 24, !82, i64 32, !82, i64 40}
!243 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !79, i64 0}
!244 = !{!"function_entry_count", i64 2718768}
!245 = !{!"branch_weights", i32 0, i32 2718768}
!246 = !{!"branch_weights", i32 2718764, i32 4}
!247 = !{!"VP", i32 1, i64 2718768, i64 33, i64 658811, i64 9, i64 435444, i64 17, i64 410031, i64 8, i64 320017}
!248 = !{!"function_entry_count", i64 789922}
!249 = !{!"branch_weights", i32 0, i32 789922}
!250 = !{!"branch_weights", i32 284, i32 789638}
!251 = !{!"branch_weights", i32 789638, i32 41628303}
!252 = distinct !{!252, !111, !112}
!253 = !{!"branch_weights", i32 789636, i32 2}
!254 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!255 = distinct !{!255, !111, !112}
!256 = !{!"function_entry_count", i64 15025150}
!257 = !{!"branch_weights", i32 1580, i32 15023570}
!258 = !{!"VP", i32 0, i64 1580, i64 8345045103670217670, i64 1580}
!259 = !{!"branch_weights", i32 1, i32 1579}
!260 = !{!"VP", i32 0, i64 1580, i64 -7405368087501025645, i64 1580}
!261 = !{!"branch_weights", i32 11127, i32 1579}
!262 = distinct !{!262, !111, !112}
!263 = !{i8 0, i8 2}
!264 = !{}
!265 = !{!"VP", i32 0, i64 96, i64 7498626737529532319, i64 96}
!266 = !{!"branch_weights", i32 257, i32 127}
!267 = distinct !{!267, !111, !112}
!268 = distinct !{!268, !111, !112}
!269 = distinct !{!269, !111, !112}
!270 = distinct !{!270, !111, !112}
!271 = !{!"VP", i32 0, i64 32, i64 8873212196773948237, i64 32}
!272 = distinct !{!272, !111, !112}
!273 = distinct !{!273, !111, !112}
!274 = distinct !{!274, !111, !112}
!275 = distinct !{!275, !111, !112}
!276 = distinct !{!276, !111, !112}

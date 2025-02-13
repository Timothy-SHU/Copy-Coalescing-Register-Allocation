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
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::XercesXPath" = type { %"class.xercesc_2_7::XSerializable", i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XPathScannerForSchema" = type { %"class.xercesc_2_7::XPathScanner" }
%"class.xercesc_2_7::XPathScanner" = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%"class.xercesc_2_7::Janitor" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::NamespaceScope" = type { i32, i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_712XPathScanner8addTokenEPNS_13ValueVectorOfIiEEi = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZNK11xercesc_2_75QName16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_75QName6setURIEj = comdat any

$_ZN11xercesc_2_713XSerializableC2ERKS0_ = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_5QNameE = comdat any

$_ZNK11xercesc_2_714XercesNodeTest7getNameEv = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_14XercesNodeTestE = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_11XercesXPathEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_11XercesXPathEE7releaseEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_11XercesXPathEED2Ev = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj = comdat any

$_ZNK11xercesc_2_718XercesLocationPath11getStepSizeEv = comdat any

$_ZNK11xercesc_2_718XercesLocationPath7getStepEj = comdat any

$_ZNK11xercesc_2_710XercesStep11getAxisTypeEv = comdat any

$_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiEC2EjPNS_13MemoryManagerEb = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIiE4sizeEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEEC2EPS3_ = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEE6orphanEv = comdat any

$_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEE5resetEPS3_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE10addElementEPS1_ = comdat any

$_ZNK11xercesc_2_714NamespaceScope21getNamespaceForPrefixEPKt = comdat any

$_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEED2Ev = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiED2Ev = comdat any

$_ZN11xercesc_2_716XSerializeEngine10readStringERPt = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIiE16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKtj = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$_ZN11xercesc_2_710XMLChar1_017isFirstNCNameCharEtt = comdat any

$_ZN11xercesc_2_710XMLChar1_012isNCNameCharEtt = comdat any

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

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZN11xercesc_2_714XPathExceptionD0Ev = comdat any

$_ZNK11xercesc_2_714XPathException7getTypeEv = comdat any

$_ZNK11xercesc_2_714XPathException9duplicateEv = comdat any

$_ZN11xercesc_2_714XPathExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKtj = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEC2EjbPNS_13MemoryManagerE = comdat any

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

$_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEE7releaseEv = comdat any

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

$_ZTVN11xercesc_2_713XSerializableE = comdat any

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
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712XPathScanner8addTokenEPNS_13ValueVectorOfIiEEi(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !149 {
  %4 = alloca i32, align 4
  store i32 %2, ptr %4, align 4, !tbaa !150
  call void @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 !prof !154 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #12
  %3 = load i32, ptr %1, align 4, !tbaa !150
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !155
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !159
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %5, i64 %8
  store i32 %3, ptr %9, align 4, !tbaa !150
  %10 = load i32, ptr %6, align 4, !tbaa !159
  %11 = add i32 %10, 1
  store i32 %11, ptr %6, align 4, !tbaa !159
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XercesNodeTestC2EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, i16 noundef signext %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_714XercesNodeTestE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 1
  store i16 %1, ptr %4, align 8, !tbaa !163
  %5 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %2) #12
          to label %6 unwind label %9

6:                                                ; preds = %3
  invoke void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %2) #12
          to label %7 unwind label %11

7:                                                ; preds = %6
  %8 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  store ptr %5, ptr %8, align 8, !tbaa !167
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %13

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %2) #15
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi { ptr, i32 } [ %12, %11 ], [ %10, %9 ]
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !168 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !169 {
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XercesNodeTestC2EPKNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !170 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_714XercesNodeTestE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 1
  store i16 1, ptr %3, align 8, !tbaa !163
  %4 = tail call noundef ptr @_ZNK11xercesc_2_75QName16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #12
  %5 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %4) #12
          to label %6 unwind label %9

6:                                                ; preds = %2
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %1) #12
          to label %7 unwind label %11

7:                                                ; preds = %6
  %8 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  store ptr %5, ptr %8, align 8, !tbaa !167
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %13

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #15
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi { ptr, i32 } [ %12, %11 ], [ %10, %9 ]
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_75QName16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !170 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XercesNodeTestC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_714XercesNodeTestE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 1
  store i16 4, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  %7 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %3) #12
          to label %8 unwind label %12

8:                                                ; preds = %4
  invoke void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %3) #12
          to label %9 unwind label %14

9:                                                ; preds = %8
  store ptr %7, ptr %6, align 8, !tbaa !167
  tail call void @_ZN11xercesc_2_75QName6setURIEj(ptr noundef nonnull align 8 dereferenceable(56) %7, i32 noundef %2) #12
  %10 = load ptr, ptr %6, align 8, !tbaa !167
  invoke void @_ZN11xercesc_2_75QName9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %1) #12
          to label %11 unwind label %12

11:                                               ; preds = %9
  ret void

12:                                               ; preds = %9, %4
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %16

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %7, ptr noundef %3) #15
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %13, %12 ], [ %15, %14 ]
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75QName6setURIEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !173 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 4, !tbaa !174
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QName9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XercesNodeTestC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  tail call void @_ZN11xercesc_2_713XSerializableC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_714XercesNodeTestE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %1, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !163
  store i16 %5, ptr %3, align 8, !tbaa !163
  %6 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !167
  %8 = tail call noundef ptr @_ZNK11xercesc_2_75QName16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #12
  %9 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %8) #12
          to label %10 unwind label %14

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !167
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %11) #12
          to label %12 unwind label %16

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  store ptr %9, ptr %13, align 8, !tbaa !167
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %8) #15
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !prof !175 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714XercesNodeTest12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %0) #12
  tail call void @_ZN11xercesc_2_714XercesNodeTestC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr poison) #12
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714XercesNodeTest14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !149 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_714XercesNodeTest12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !149 {
  ret ptr @_ZN11xercesc_2_714XercesNodeTest19classXercesNodeTestE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XercesNodeTest9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !149 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #12
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 1
  br i1 %3, label %5, label %11

5:                                                ; preds = %2
  %6 = load i16, ptr %4, align 8, !tbaa !163
  %7 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEs(ptr noundef nonnull align 8 dereferenceable(100) %1, i16 noundef signext %6) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !167
  %10 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %9) #12
  br label %15

11:                                               ; preds = %2
  %12 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERs(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 2 dereferenceable(2) %4) #12
  %13 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  %14 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %13) #12
  br label %15

15:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #4 comdat align 2 !prof !149 {
  %2 = load i16, ptr %0, align 8, !tbaa !176
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEs(ptr noundef nonnull align 8 dereferenceable(100), i16 noundef signext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !149 {
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) #12
  ret ptr %0
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERs(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !149 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_75QName10classQNameE) #12
  store ptr %3, ptr %1, align 8, !tbaa !179
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714XercesNodeTestC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nocapture readnone %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_714XercesNodeTestE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 1
  store i16 5, ptr %3, align 8, !tbaa !163
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  store ptr null, ptr %4, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xercesc_2_714XercesNodeTestaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 !prof !149 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %1, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !163
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 1
  store i16 %6, ptr %7, align 8, !tbaa !163
  %8 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !167
  %10 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !167
  tail call void @_ZN11xercesc_2_75QName9setValuesERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %11) #12
  br label %12

12:                                               ; preds = %2, %4
  ret ptr %0
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QName9setValuesERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714XercesNodeTesteqERKS0_(ptr noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 !prof !149 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !163
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %1, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !163
  %9 = icmp eq i16 %6, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !167
  %13 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !167
  %15 = tail call noundef zeroext i1 @_ZNK11xercesc_2_75QNameeqERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %14) #12
  br label %16

16:                                               ; preds = %4, %2, %10
  %17 = phi i1 [ %15, %10 ], [ true, %2 ], [ false, %4 ]
  ret i1 %17
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_75QNameeqERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714XercesNodeTestneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 !prof !149 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714XercesNodeTesteqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710XercesStepC2EtPNS_14XercesNodeTestE(ptr noundef nonnull align 8 dereferenceable(24) %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !180 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XercesStepE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 1
  store i16 %1, ptr %4, align 8, !tbaa !181
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !183
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XercesStepC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  tail call void @_ZN11xercesc_2_713XSerializableC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XercesStepE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %1, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !181
  store i16 %5, ptr %3, align 8, !tbaa !181
  %6 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !183
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !183
  %9 = tail call noundef ptr @_ZNK11xercesc_2_714XercesNodeTest7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #12
  %10 = tail call noundef ptr @_ZNK11xercesc_2_75QName16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(56) %9) #12
  %11 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %10) #12
          to label %12 unwind label %15

12:                                               ; preds = %2
  %13 = load ptr, ptr %7, align 8, !tbaa !183
  invoke void @_ZN11xercesc_2_714XercesNodeTestC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %13) #12
          to label %14 unwind label %17

14:                                               ; preds = %12
  store ptr %11, ptr %6, align 8, !tbaa !183
  ret void

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %19

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #15
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XercesNodeTest7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 !prof !184 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !167
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xercesc_2_710XercesStepaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 !prof !149 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %1, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !181
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 1
  store i16 %6, ptr %7, align 8, !tbaa !181
  %8 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !183
  %10 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !183
  %12 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xercesc_2_714XercesNodeTestaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %9) #12
  br label %13

13:                                               ; preds = %2, %4
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XercesStepeqERKS0_(ptr noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 !prof !149 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !181
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %1, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !181
  %9 = icmp eq i16 %6, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = add i16 %6, -1
  %12 = icmp ult i16 %11, 2
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !183
  %16 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !183
  %18 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714XercesNodeTesteqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %17) #12
  br label %19

19:                                               ; preds = %10, %4, %2, %13
  %20 = phi i1 [ %18, %13 ], [ true, %2 ], [ false, %4 ], [ true, %10 ]
  ret i1 %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XercesStepneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 !prof !149 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XercesStepeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710XercesStep12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %0) #12
  tail call void @_ZN11xercesc_2_710XercesStepC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr poison) #12
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XercesStep14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !149 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_710XercesStep12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !149 {
  ret ptr @_ZN11xercesc_2_710XercesStep15classXercesStepE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XercesStep9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !149 {
  %3 = alloca i32, align 4
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #12
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !181
  %8 = zext i16 %7 to i32
  %9 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %8) #12
  %10 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !183
  %12 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %11) #12
  br label %20

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %14 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #12
  %15 = load i32, ptr %3, align 4, !tbaa !150
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 1
  store i16 %16, ptr %17, align 8, !tbaa !181
  %18 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 2
  %19 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_14XercesNodeTestE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %18) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %20

20:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_14XercesNodeTestE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !149 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_714XercesNodeTest19classXercesNodeTestE) #12
  store ptr %3, ptr %1, align 8, !tbaa !179
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710XercesStepC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nocapture readnone %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XercesStepE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 1
  store i16 5, ptr %3, align 8, !tbaa !181
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 2
  store ptr null, ptr %4, align 8, !tbaa !183
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718XercesLocationPathC2EPNS_11RefVectorOfINS_10XercesStepEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XercesLocationPathE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !186
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_718XercesLocationPatheqERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 !prof !149 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !186
  %5 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #12
  %6 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !186
  %8 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #12
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = icmp eq i32 %5, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ 0, %10 ], [ %19, %12 ]
  %14 = load ptr, ptr %3, align 8, !tbaa !186
  %15 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef %13) #12
  %16 = load ptr, ptr %6, align 8, !tbaa !186
  %17 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef %13) #12
  %18 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XercesStepneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %17) #12
  %19 = add nuw i32 %13, 1
  %20 = icmp eq i32 %19, %5
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %12, !llvm.loop !188

22:                                               ; preds = %12
  %23 = xor i1 %18, true
  br label %24

24:                                               ; preds = %22, %10, %2
  %25 = phi i1 [ false, %2 ], [ true, %10 ], [ %23, %22 ]
  ret i1 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !190 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !191
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !193 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !191
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !194

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !195
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 249, i32 noundef 116, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !196
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !179
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_718XercesLocationPathneERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 !prof !149 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_718XercesLocationPatheqERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718XercesLocationPath12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 16, ptr noundef %0) #12
  tail call void @_ZN11xercesc_2_718XercesLocationPathC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr poison) #12
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_718XercesLocationPath14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !149 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_718XercesLocationPath12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !149 {
  ret ptr @_ZN11xercesc_2_718XercesLocationPath23classXercesLocationPathE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718XercesLocationPath9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !149 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #12
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %0, i64 0, i32 1
  br i1 %3, label %5, label %7

5:                                                ; preds = %2
  %6 = load ptr, ptr %4, align 8, !tbaa !186
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_10XercesStepEEERNS_16XSerializeEngineE(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(100) %1) #12
  br label %8

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_10XercesStepEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %4, i32 noundef 8, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #12
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_10XercesStepEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_10XercesStepEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718XercesLocationPathC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nocapture readnone %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XercesLocationPathE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !186
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XercesXPathC2EPKtPNS_13XMLStringPoolEPNS_14NamespaceScopeEjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5, ptr noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  %8 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_711XercesXPathE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  %9 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 1
  store i32 %4, ptr %9, align 8, !tbaa !197
  %10 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store ptr %6, ptr %11, align 8, !tbaa !199
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_11XercesXPathEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_711XercesXPath7cleanUpEv to i64), i64 0) #12
  %12 = load ptr, ptr %11, align 8, !tbaa !199
  %13 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %12) #12
          to label %14 unwind label %17

14:                                               ; preds = %7
  store ptr %13, ptr %10, align 8, !tbaa !200
  invoke void @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %2, ptr noundef %3) #12
          to label %15 unwind label %17

15:                                               ; preds = %14
  br i1 %5, label %16, label %27, !prof !201

16:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_711XercesXPath26checkForSelectedAttributesEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #12
          to label %27 unwind label %17

17:                                               ; preds = %16, %14, %7
  %18 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %19 = extractvalue { ptr, i32 } %18, 1
  %20 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #13
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = extractvalue { ptr, i32 } %18, 0
  %24 = call ptr @__cxa_begin_catch(ptr %23) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_11XercesXPathEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #12
  invoke void @__cxa_rethrow() #16
          to label %33 unwind label %25

25:                                               ; preds = %22
  %26 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %28 unwind label %30

27:                                               ; preds = %15, %16
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_11XercesXPathEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_11XercesXPathEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  ret void

28:                                               ; preds = %25, %17
  %29 = phi { ptr, i32 } [ %18, %17 ], [ %26, %25 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_11XercesXPathEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %29

30:                                               ; preds = %25
  %31 = landingpad { ptr, i32 }
          catch ptr null
  %32 = extractvalue { ptr, i32 } %31, 0
  call void @__clang_call_terminate(ptr %32) #14
  unreachable

33:                                               ; preds = %22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XercesXPath7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) #0 align 2 !prof !185 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !199
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !200
  %6 = load ptr, ptr %3, align 8, !tbaa !161
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !202
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %10, align 8, !tbaa !161
  %14 = getelementptr inbounds ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(40) %10) #15
  br label %16

16:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_11XercesXPathEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #4 comdat align 2 !prof !185 {
  store ptr %1, ptr %0, align 8, !tbaa !203
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !205
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !205
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !206 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !207

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #12
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !161
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  %4 = alloca %"class.xercesc_2_7::ValueVectorOf", align 8
  %5 = alloca %"class.xercesc_2_7::XPathScannerForSchema", align 8
  %6 = alloca %"class.xercesc_2_7::Janitor", align 8
  %7 = alloca %"class.xercesc_2_7::QName", align 8
  %8 = alloca %"class.xercesc_2_7::QName", align 8
  %9 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !200
  %11 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %10) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %467, label %13, !prof !208

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  %14 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !199
  call void @_ZN11xercesc_2_713ValueVectorOfIiEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 16, ptr noundef %15, i1 noundef zeroext false) #12
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %5) #13
  invoke void @_ZN11xercesc_2_721XPathScannerForSchemaC2EPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef %1) #12
          to label %16 unwind label %32

16:                                               ; preds = %13
  %17 = load ptr, ptr %9, align 8, !tbaa !200
  %18 = invoke noundef zeroext i1 @_ZN11xercesc_2_712XPathScanner14scanExpressionEPKtiiPNS_13ValueVectorOfIiEE(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef %17, i32 noundef 0, i32 noundef %11, ptr noundef nonnull %4) #12
          to label %19 unwind label %34

19:                                               ; preds = %16
  %20 = call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIiE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  %21 = load ptr, ptr %14, align 8, !tbaa !199
  %22 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %21) #12
          to label %23 unwind label %36

23:                                               ; preds = %19
  %24 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %22, i32 noundef 16, i1 noundef zeroext true, ptr noundef %24) #12
          to label %25 unwind label %38

25:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEEC2EPS3_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %22) #12
  %26 = icmp eq i32 %20, 0
  br i1 %26, label %49, label %27, !prof !208

27:                                               ; preds = %25
  %28 = load ptr, ptr %14, align 8, !tbaa !199
  %29 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %28) #12
          to label %30 unwind label %40

30:                                               ; preds = %27
  %31 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %29, i32 noundef 8, i1 noundef zeroext true, ptr noundef %31) #12
          to label %44 unwind label %42

32:                                               ; preds = %13
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %472

34:                                               ; preds = %16
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %470

36:                                               ; preds = %19
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %470

38:                                               ; preds = %23
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %22, ptr noundef %21) #15
  br label %470

40:                                               ; preds = %27
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %468

42:                                               ; preds = %30
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %29, ptr noundef %28) #15
  br label %468

44:                                               ; preds = %30
  %45 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 3
  store ptr %29, ptr %45, align 8, !tbaa !202
  %46 = add i32 %20, -1
  %47 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 1
  %48 = icmp ne ptr %2, null
  br label %55

49:                                               ; preds = %435, %25
  %50 = phi ptr [ %22, %25 ], [ %437, %435 ]
  %51 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %50) #12
  %52 = icmp eq i32 %51, 0
  %53 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !202
  br i1 %52, label %441, label %461, !prof !208

55:                                               ; preds = %44, %435
  %56 = phi i8 [ 1, %44 ], [ %438, %435 ]
  %57 = phi ptr [ %22, %44 ], [ %437, %435 ]
  %58 = phi i32 [ 0, %44 ], [ %439, %435 ]
  %59 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %58) #12
          to label %60 unwind label %62

60:                                               ; preds = %55
  %61 = load i32, ptr %59, align 4, !tbaa !150
  switch i32 %61, label %435 [
    i32 23, label %64
    i32 35, label %106
    i32 6, label %108
    i32 8, label %229
    i32 36, label %234
    i32 9, label %244
    i32 10, label %259
    i32 11, label %260
    i32 4, label %345
    i32 22, label %408
    i32 21, label %413
  ], !prof !209

62:                                               ; preds = %55
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %468

64:                                               ; preds = %60
  %65 = icmp eq i32 %58, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %64
  %67 = call ptr @__cxa_allocate_exception(i64 48) #13
  %68 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %67, ptr noundef nonnull @.str.3, i32 noundef 411, i32 noundef 303, ptr noundef %68) #12
          to label %69 unwind label %72

69:                                               ; preds = %66, %430, %423, %415, %408, %237, %229, %121, %111
  %70 = phi ptr [ %112, %111 ], [ %122, %121 ], [ %230, %229 ], [ %238, %237 ], [ %409, %408 ], [ %416, %415 ], [ %424, %423 ], [ %431, %430 ], [ %67, %66 ]
  invoke void @__cxa_throw(ptr nonnull %70, ptr nonnull @_ZTIN11xercesc_2_714XPathExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %71 unwind label %76

71:                                               ; preds = %69
  unreachable

72:                                               ; preds = %66
  %73 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %67) #13
  br label %468

74:                                               ; preds = %116, %260
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %468

76:                                               ; preds = %69
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %468

78:                                               ; preds = %64
  %79 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %57) #12
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = call ptr @__cxa_allocate_exception(i64 48) #13
  %83 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %82, ptr noundef nonnull @.str.3, i32 noundef 417, i32 noundef 304, ptr noundef %83) #12
          to label %84 unwind label %89

84:                                               ; preds = %81
  invoke void @__cxa_throw(ptr nonnull %82, ptr nonnull @_ZTIN11xercesc_2_714XPathExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %474 unwind label %87

85:                                               ; preds = %91, %96, %97, %98
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %468

87:                                               ; preds = %84
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %468

89:                                               ; preds = %81
  %90 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %82) #13
  br label %468

91:                                               ; preds = %78
  %92 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !202
  %94 = load ptr, ptr %14, align 8, !tbaa !199
  %95 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 16, ptr noundef %94) #12
          to label %96 unwind label %85

96:                                               ; preds = %91
  call void @_ZN11xercesc_2_718XercesLocationPathC2EPNS_11RefVectorOfINS_10XercesStepEEE(ptr noundef nonnull align 8 dereferenceable(16) %95, ptr noundef nonnull %57) #12
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %93, ptr noundef nonnull %95) #12
          to label %97 unwind label %85

97:                                               ; preds = %96
  invoke void @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEE6orphanEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
          to label %98 unwind label %85

98:                                               ; preds = %97
  %99 = load ptr, ptr %14, align 8, !tbaa !199
  %100 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %99) #12
          to label %101 unwind label %85

101:                                              ; preds = %98
  %102 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %100, i32 noundef 16, i1 noundef zeroext true, ptr noundef %102) #12
          to label %103 unwind label %104

103:                                              ; preds = %101
  call void @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %100) #12
  br label %435

104:                                              ; preds = %101
  %105 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %100, ptr noundef %99) #15
  br label %468

106:                                              ; preds = %60
  %107 = add nuw i32 %58, 1
  br label %108

108:                                              ; preds = %60, %106
  %109 = phi i32 [ %58, %60 ], [ %107, %106 ]
  %110 = icmp eq i32 %109, %46
  br i1 %110, label %111, label %116, !prof !210

111:                                              ; preds = %108
  %112 = call ptr @__cxa_allocate_exception(i64 48) #13
  %113 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %112, ptr noundef nonnull @.str.3, i32 noundef 436, i32 noundef 305, ptr noundef %113) #12
          to label %69 unwind label %114

114:                                              ; preds = %111
  %115 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %112) #13
  br label %468

116:                                              ; preds = %108
  %117 = add i32 %109, 1
  %118 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %117) #12
          to label %119 unwind label %74

119:                                              ; preds = %116
  %120 = load i32, ptr %118, align 4, !tbaa !150
  switch i32 %120, label %121 [
    i32 9, label %126
    i32 10, label %141
    i32 11, label %142
  ], !prof !211

121:                                              ; preds = %119
  %122 = call ptr @__cxa_allocate_exception(i64 48) #13
  %123 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %122, ptr noundef nonnull @.str.3, i32 noundef 444, i32 noundef 306, ptr noundef %123) #12
          to label %69 unwind label %124

124:                                              ; preds = %121
  %125 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %122) #13
  br label %468

126:                                              ; preds = %119
  %127 = load ptr, ptr %14, align 8, !tbaa !199
  %128 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %127) #12
          to label %129 unwind label %135

129:                                              ; preds = %126
  %130 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XercesNodeTestC2EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %128, i16 noundef signext 2, ptr noundef %130) #12
          to label %131 unwind label %137

131:                                              ; preds = %129
  %132 = load ptr, ptr %14, align 8, !tbaa !199
  %133 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %132) #12
          to label %134 unwind label %139

134:                                              ; preds = %131
  call void @_ZN11xercesc_2_710XercesStepC2EtPNS_14XercesNodeTestE(ptr noundef nonnull align 8 dereferenceable(24) %133, i16 noundef zeroext 2, ptr noundef nonnull %128) #12
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull %133) #12
          to label %435 unwind label %139

135:                                              ; preds = %126
  %136 = landingpad { ptr, i32 }
          cleanup
  br label %468

137:                                              ; preds = %129
  %138 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %128, ptr noundef %127) #15
  br label %468

139:                                              ; preds = %134, %131
  %140 = landingpad { ptr, i32 }
          cleanup
  br label %468

141:                                              ; preds = %119
  br label %142

142:                                              ; preds = %119, %141
  %143 = phi i1 [ true, %141 ], [ false, %119 ]
  %144 = add i32 %109, 2
  %145 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %144) #12
          to label %146 unwind label %160

146:                                              ; preds = %142
  %147 = load i32, ptr %145, align 4, !tbaa !150
  %148 = load i32, ptr %47, align 8
  %149 = icmp ne i32 %147, -1
  %150 = select i1 %48, i1 %149, i1 false
  br i1 %150, label %151, label %166, !prof !212

151:                                              ; preds = %146
  %152 = load ptr, ptr %1, align 8, !tbaa !161
  %153 = getelementptr inbounds ptr, ptr %152, i64 10
  %154 = load ptr, ptr %153, align 8
  %155 = invoke noundef ptr %154(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %147) #12
          to label %156 unwind label %162

156:                                              ; preds = %151
  %157 = invoke noundef i32 @_ZNK11xercesc_2_714NamespaceScope21getNamespaceForPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %155) #12
          to label %158 unwind label %162

158:                                              ; preds = %156
  %159 = load i32, ptr %47, align 8
  br label %166

160:                                              ; preds = %142
  %161 = landingpad { ptr, i32 }
          cleanup
  br label %468

162:                                              ; preds = %151, %156, %195
  %163 = landingpad { ptr, i32 }
          cleanup
  br label %468

164:                                              ; preds = %176
  %165 = landingpad { ptr, i32 }
          cleanup
  br label %468

166:                                              ; preds = %158, %146
  %167 = phi i32 [ %148, %146 ], [ %159, %158 ]
  %168 = phi i32 [ %148, %146 ], [ %157, %158 ]
  %169 = phi ptr [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %146 ], [ %155, %158 ]
  %170 = and i1 %48, %149
  %171 = icmp eq i32 %168, %167
  %172 = select i1 %170, i1 %171, i1 false
  br i1 %172, label %173, label %179, !prof !213

173:                                              ; preds = %166
  %174 = call ptr @__cxa_allocate_exception(i64 48) #13
  %175 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %174, ptr noundef nonnull @.str.3, i32 noundef 476, i32 noundef 307, ptr noundef %169, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %175) #12
          to label %176 unwind label %177

176:                                              ; preds = %173
  invoke void @__cxa_throw(ptr nonnull %174, ptr nonnull @_ZTIN11xercesc_2_714XPathExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %474 unwind label %164

177:                                              ; preds = %173
  %178 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %174) #13
  br label %468

179:                                              ; preds = %166
  br i1 %143, label %180, label %195, !prof !210

180:                                              ; preds = %179
  %181 = load ptr, ptr %14, align 8, !tbaa !199
  %182 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %181) #12
          to label %183 unwind label %189

183:                                              ; preds = %180
  %184 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XercesNodeTestC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %182, ptr noundef %169, i32 noundef %168, ptr noundef %184) #12
          to label %185 unwind label %191

185:                                              ; preds = %183
  %186 = load ptr, ptr %14, align 8, !tbaa !199
  %187 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %186) #12
          to label %188 unwind label %193

188:                                              ; preds = %185
  call void @_ZN11xercesc_2_710XercesStepC2EtPNS_14XercesNodeTestE(ptr noundef nonnull align 8 dereferenceable(24) %187, i16 noundef zeroext 2, ptr noundef nonnull %182) #12
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull %187) #12
          to label %435 unwind label %193

189:                                              ; preds = %180
  %190 = landingpad { ptr, i32 }
          cleanup
  br label %468

191:                                              ; preds = %183
  %192 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %182, ptr noundef %181) #15
  br label %468

193:                                              ; preds = %188, %185
  %194 = landingpad { ptr, i32 }
          cleanup
  br label %468

195:                                              ; preds = %179
  %196 = add i32 %109, 3
  %197 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %196) #12
          to label %198 unwind label %162

198:                                              ; preds = %195
  %199 = load i32, ptr %197, align 4, !tbaa !150
  %200 = load ptr, ptr %1, align 8, !tbaa !161
  %201 = getelementptr inbounds ptr, ptr %200, i64 10
  %202 = load ptr, ptr %201, align 8
  %203 = invoke noundef ptr %202(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %199) #12
          to label %204 unwind label %215

204:                                              ; preds = %198
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #13
  %205 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %169, ptr noundef %203, i32 noundef %168, ptr noundef %205) #12
          to label %206 unwind label %217

206:                                              ; preds = %204
  %207 = load ptr, ptr %14, align 8, !tbaa !199
  %208 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %207) #12
          to label %209 unwind label %219

209:                                              ; preds = %206
  invoke void @_ZN11xercesc_2_714XercesNodeTestC2EPKNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(24) %208, ptr noundef nonnull %7) #12
          to label %210 unwind label %221

210:                                              ; preds = %209
  %211 = load ptr, ptr %14, align 8, !tbaa !199
  %212 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %211) #12
          to label %213 unwind label %223

213:                                              ; preds = %210
  call void @_ZN11xercesc_2_710XercesStepC2EtPNS_14XercesNodeTestE(ptr noundef nonnull align 8 dereferenceable(24) %212, i16 noundef zeroext 2, ptr noundef nonnull %208) #12
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull %212) #12
          to label %214 unwind label %223

214:                                              ; preds = %213
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #13
  br label %435

215:                                              ; preds = %198
  %216 = landingpad { ptr, i32 }
          cleanup
  br label %468

217:                                              ; preds = %204
  %218 = landingpad { ptr, i32 }
          cleanup
  br label %227

219:                                              ; preds = %206
  %220 = landingpad { ptr, i32 }
          cleanup
  br label %225

221:                                              ; preds = %209
  %222 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %208, ptr noundef %207) #15
  br label %225

223:                                              ; preds = %213, %210
  %224 = landingpad { ptr, i32 }
          cleanup
  br label %225

225:                                              ; preds = %223, %221, %219
  %226 = phi { ptr, i32 } [ %222, %221 ], [ %220, %219 ], [ %224, %223 ]
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #15
  br label %227

227:                                              ; preds = %225, %217
  %228 = phi { ptr, i32 } [ %226, %225 ], [ %218, %217 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #13
  br label %468

229:                                              ; preds = %60
  %230 = call ptr @__cxa_allocate_exception(i64 48) #13
  %231 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %230, ptr noundef nonnull @.str.3, i32 noundef 507, i32 noundef 308, ptr noundef %231) #12
          to label %69 unwind label %232

232:                                              ; preds = %229
  %233 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %230) #13
  br label %468

234:                                              ; preds = %60
  %235 = add i32 %20, -2
  %236 = icmp eq i32 %58, %235
  br i1 %236, label %237, label %242

237:                                              ; preds = %234
  %238 = call ptr @__cxa_allocate_exception(i64 48) #13
  %239 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %238, ptr noundef nonnull @.str.3, i32 noundef 515, i32 noundef 309, ptr noundef %239) #12
          to label %69 unwind label %240

240:                                              ; preds = %237
  %241 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %238) #13
  br label %468

242:                                              ; preds = %234
  %243 = add i32 %58, 1
  br label %435

244:                                              ; preds = %60
  %245 = load ptr, ptr %14, align 8, !tbaa !199
  %246 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %245) #12
          to label %247 unwind label %253

247:                                              ; preds = %244
  %248 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XercesNodeTestC2EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %246, i16 noundef signext 2, ptr noundef %248) #12
          to label %249 unwind label %255

249:                                              ; preds = %247
  %250 = load ptr, ptr %14, align 8, !tbaa !199
  %251 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %250) #12
          to label %252 unwind label %257

252:                                              ; preds = %249
  call void @_ZN11xercesc_2_710XercesStepC2EtPNS_14XercesNodeTestE(ptr noundef nonnull align 8 dereferenceable(24) %251, i16 noundef zeroext 1, ptr noundef nonnull %246) #12
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull %251) #12
          to label %435 unwind label %257

253:                                              ; preds = %244
  %254 = landingpad { ptr, i32 }
          cleanup
  br label %468

255:                                              ; preds = %247
  %256 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %246, ptr noundef %245) #15
  br label %468

257:                                              ; preds = %252, %249
  %258 = landingpad { ptr, i32 }
          cleanup
  br label %468

259:                                              ; preds = %60
  br label %260

260:                                              ; preds = %60, %259
  %261 = phi i1 [ false, %60 ], [ true, %259 ]
  %262 = add nuw i32 %58, 1
  %263 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %262) #12
          to label %264 unwind label %74

264:                                              ; preds = %260
  %265 = load i32, ptr %263, align 4, !tbaa !150
  %266 = load i32, ptr %47, align 8
  %267 = icmp ne i32 %265, -1
  %268 = select i1 %48, i1 %267, i1 false
  br i1 %268, label %269, label %282, !prof !214

269:                                              ; preds = %264
  %270 = load ptr, ptr %1, align 8, !tbaa !161
  %271 = getelementptr inbounds ptr, ptr %270, i64 10
  %272 = load ptr, ptr %271, align 8
  %273 = invoke noundef ptr %272(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %265) #12
          to label %274 unwind label %278

274:                                              ; preds = %269
  %275 = invoke noundef i32 @_ZNK11xercesc_2_714NamespaceScope21getNamespaceForPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %273) #12
          to label %276 unwind label %278

276:                                              ; preds = %274
  %277 = load i32, ptr %47, align 8
  br label %282

278:                                              ; preds = %269, %274, %311
  %279 = landingpad { ptr, i32 }
          cleanup
  br label %468

280:                                              ; preds = %292
  %281 = landingpad { ptr, i32 }
          cleanup
  br label %468

282:                                              ; preds = %276, %264
  %283 = phi i32 [ %266, %264 ], [ %277, %276 ]
  %284 = phi ptr [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %264 ], [ %273, %276 ]
  %285 = phi i32 [ %266, %264 ], [ %275, %276 ]
  %286 = and i1 %48, %267
  %287 = icmp eq i32 %285, %283
  %288 = select i1 %286, i1 %287, i1 false
  br i1 %288, label %289, label %295, !prof !215

289:                                              ; preds = %282
  %290 = call ptr @__cxa_allocate_exception(i64 48) #13
  %291 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %290, ptr noundef nonnull @.str.3, i32 noundef 548, i32 noundef 307, ptr noundef %284, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %291) #12
          to label %292 unwind label %293

292:                                              ; preds = %289
  invoke void @__cxa_throw(ptr nonnull %290, ptr nonnull @_ZTIN11xercesc_2_714XPathExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %474 unwind label %280

293:                                              ; preds = %289
  %294 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %290) #13
  br label %468

295:                                              ; preds = %282
  br i1 %261, label %296, label %311, !prof !216

296:                                              ; preds = %295
  %297 = load ptr, ptr %14, align 8, !tbaa !199
  %298 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %297) #12
          to label %299 unwind label %305

299:                                              ; preds = %296
  %300 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XercesNodeTestC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %298, ptr noundef %284, i32 noundef %285, ptr noundef %300) #12
          to label %301 unwind label %307

301:                                              ; preds = %299
  %302 = load ptr, ptr %14, align 8, !tbaa !199
  %303 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %302) #12
          to label %304 unwind label %309

304:                                              ; preds = %301
  call void @_ZN11xercesc_2_710XercesStepC2EtPNS_14XercesNodeTestE(ptr noundef nonnull align 8 dereferenceable(24) %303, i16 noundef zeroext 1, ptr noundef nonnull %298) #12
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull %303) #12
          to label %435 unwind label %309

305:                                              ; preds = %296
  %306 = landingpad { ptr, i32 }
          cleanup
  br label %468

307:                                              ; preds = %299
  %308 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %298, ptr noundef %297) #15
  br label %468

309:                                              ; preds = %304, %301
  %310 = landingpad { ptr, i32 }
          cleanup
  br label %468

311:                                              ; preds = %295
  %312 = add i32 %58, 2
  %313 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %312) #12
          to label %314 unwind label %278

314:                                              ; preds = %311
  %315 = load i32, ptr %313, align 4, !tbaa !150
  %316 = load ptr, ptr %1, align 8, !tbaa !161
  %317 = getelementptr inbounds ptr, ptr %316, i64 10
  %318 = load ptr, ptr %317, align 8
  %319 = invoke noundef ptr %318(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %315) #12
          to label %320 unwind label %331

320:                                              ; preds = %314
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #13
  %321 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef %284, ptr noundef %319, i32 noundef %285, ptr noundef %321) #12
          to label %322 unwind label %333

322:                                              ; preds = %320
  %323 = load ptr, ptr %14, align 8, !tbaa !199
  %324 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %323) #12
          to label %325 unwind label %335

325:                                              ; preds = %322
  invoke void @_ZN11xercesc_2_714XercesNodeTestC2EPKNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(24) %324, ptr noundef nonnull %8) #12
          to label %326 unwind label %337

326:                                              ; preds = %325
  %327 = load ptr, ptr %14, align 8, !tbaa !199
  %328 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %327) #12
          to label %329 unwind label %339

329:                                              ; preds = %326
  call void @_ZN11xercesc_2_710XercesStepC2EtPNS_14XercesNodeTestE(ptr noundef nonnull align 8 dereferenceable(24) %328, i16 noundef zeroext 1, ptr noundef nonnull %324) #12
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull %328) #12
          to label %330 unwind label %339

330:                                              ; preds = %329
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %8) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #13
  br label %435

331:                                              ; preds = %314
  %332 = landingpad { ptr, i32 }
          cleanup
  br label %468

333:                                              ; preds = %320
  %334 = landingpad { ptr, i32 }
          cleanup
  br label %343

335:                                              ; preds = %322
  %336 = landingpad { ptr, i32 }
          cleanup
  br label %341

337:                                              ; preds = %325
  %338 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %324, ptr noundef %323) #15
  br label %341

339:                                              ; preds = %329, %326
  %340 = landingpad { ptr, i32 }
          cleanup
  br label %341

341:                                              ; preds = %339, %337, %335
  %342 = phi { ptr, i32 } [ %338, %337 ], [ %336, %335 ], [ %340, %339 ]
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %8) #15
  br label %343

343:                                              ; preds = %341, %333
  %344 = phi { ptr, i32 } [ %342, %341 ], [ %334, %333 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #13
  br label %468

345:                                              ; preds = %60
  %346 = load ptr, ptr %14, align 8, !tbaa !199
  %347 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %346) #12
          to label %348 unwind label %374

348:                                              ; preds = %345
  %349 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XercesNodeTestC2EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %347, i16 noundef signext 3, ptr noundef %349) #12
          to label %350 unwind label %376

350:                                              ; preds = %348
  %351 = load ptr, ptr %14, align 8, !tbaa !199
  %352 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %351) #12
          to label %353 unwind label %378

353:                                              ; preds = %350
  call void @_ZN11xercesc_2_710XercesStepC2EtPNS_14XercesNodeTestE(ptr noundef nonnull align 8 dereferenceable(24) %352, i16 noundef zeroext 3, ptr noundef nonnull %347) #12
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull %352) #12
          to label %354 unwind label %378

354:                                              ; preds = %353
  %355 = and i8 %56, 1
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %435, label %357, !prof !208

357:                                              ; preds = %354
  %358 = add i32 %58, 1
  %359 = icmp ult i32 %358, %20
  br i1 %359, label %360, label %435, !prof !217

360:                                              ; preds = %357
  %361 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %358) #12
          to label %362 unwind label %378

362:                                              ; preds = %360
  %363 = load i32, ptr %361, align 4, !tbaa !150
  %364 = icmp eq i32 %363, 22
  br i1 %364, label %365, label %435, !prof !208

365:                                              ; preds = %362
  %366 = add i32 %20, -2
  %367 = icmp eq i32 %58, %366
  br i1 %367, label %368, label %384

368:                                              ; preds = %365
  %369 = call ptr @__cxa_allocate_exception(i64 48) #13
  %370 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %369, ptr noundef nonnull @.str.3, i32 noundef 585, i32 noundef 310, ptr noundef %370) #12
          to label %371 unwind label %382

371:                                              ; preds = %368, %392
  %372 = phi ptr [ %393, %392 ], [ %369, %368 ]
  invoke void @__cxa_throw(ptr nonnull %372, ptr nonnull @_ZTIN11xercesc_2_714XPathExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %373 unwind label %380

373:                                              ; preds = %371
  unreachable

374:                                              ; preds = %345
  %375 = landingpad { ptr, i32 }
          cleanup
  br label %468

376:                                              ; preds = %348
  %377 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %347, ptr noundef %346) #15
  br label %468

378:                                              ; preds = %350, %353, %360, %387, %397, %402, %405
  %379 = landingpad { ptr, i32 }
          cleanup
  br label %468

380:                                              ; preds = %371
  %381 = landingpad { ptr, i32 }
          cleanup
  br label %468

382:                                              ; preds = %368
  %383 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %369) #13
  br label %468

384:                                              ; preds = %365
  %385 = add i32 %58, 2
  %386 = icmp ult i32 %385, %20
  br i1 %386, label %387, label %397

387:                                              ; preds = %384
  %388 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %385) #12
          to label %389 unwind label %378

389:                                              ; preds = %387
  %390 = load i32, ptr %388, align 4, !tbaa !150
  %391 = icmp eq i32 %390, 21
  br i1 %391, label %392, label %397

392:                                              ; preds = %389
  %393 = call ptr @__cxa_allocate_exception(i64 48) #13
  %394 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %393, ptr noundef nonnull @.str.3, i32 noundef 593, i32 noundef 312, ptr noundef %394) #12
          to label %371 unwind label %395

395:                                              ; preds = %392
  %396 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %393) #13
  br label %468

397:                                              ; preds = %389, %384
  %398 = load ptr, ptr %14, align 8, !tbaa !199
  %399 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %398) #12
          to label %400 unwind label %378

400:                                              ; preds = %397
  %401 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XercesNodeTestC2EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %399, i16 noundef signext 3, ptr noundef %401) #12
          to label %402 unwind label %406

402:                                              ; preds = %400
  %403 = load ptr, ptr %14, align 8, !tbaa !199
  %404 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %403) #12
          to label %405 unwind label %378

405:                                              ; preds = %402
  call void @_ZN11xercesc_2_710XercesStepC2EtPNS_14XercesNodeTestE(ptr noundef nonnull align 8 dereferenceable(24) %404, i16 noundef zeroext 4, ptr noundef nonnull %399) #12
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull %404) #12
          to label %435 unwind label %378

406:                                              ; preds = %400
  %407 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %399, ptr noundef %398) #15
  br label %468

408:                                              ; preds = %60
  %409 = call ptr @__cxa_allocate_exception(i64 48) #13
  %410 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %409, ptr noundef nonnull @.str.3, i32 noundef 607, i32 noundef 313, ptr noundef %410) #12
          to label %69 unwind label %411

411:                                              ; preds = %408
  %412 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %409) #13
  br label %468

413:                                              ; preds = %60
  %414 = icmp eq i32 %58, 0
  br i1 %414, label %415, label %420, !prof !218

415:                                              ; preds = %413
  %416 = call ptr @__cxa_allocate_exception(i64 48) #13
  %417 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %416, ptr noundef nonnull @.str.3, i32 noundef 612, i32 noundef 314, ptr noundef %417) #12
          to label %69 unwind label %418

418:                                              ; preds = %415
  %419 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %416) #13
  br label %468

420:                                              ; preds = %413
  %421 = and i8 %56, 1
  %422 = icmp eq i8 %421, 0
  br i1 %422, label %428, label %423, !prof !219

423:                                              ; preds = %420
  %424 = call ptr @__cxa_allocate_exception(i64 48) #13
  %425 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %424, ptr noundef nonnull @.str.3, i32 noundef 617, i32 noundef 315, ptr noundef %425) #12
          to label %69 unwind label %426

426:                                              ; preds = %423
  %427 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %424) #13
  br label %468

428:                                              ; preds = %420
  %429 = icmp eq i32 %58, %46
  br i1 %429, label %430, label %435, !prof !218

430:                                              ; preds = %428
  %431 = call ptr @__cxa_allocate_exception(i64 48) #13
  %432 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %431, ptr noundef nonnull @.str.3, i32 noundef 621, i32 noundef 311, ptr noundef %432) #12
          to label %69 unwind label %433

433:                                              ; preds = %430
  %434 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %431) #13
  br label %468

435:                                              ; preds = %60, %428, %354, %357, %405, %362, %330, %304, %252, %134, %188, %214, %242, %103
  %436 = phi i32 [ %243, %242 ], [ %58, %103 ], [ %117, %134 ], [ %196, %214 ], [ %144, %188 ], [ %58, %252 ], [ %312, %330 ], [ %262, %304 ], [ %358, %405 ], [ %58, %362 ], [ %58, %357 ], [ %58, %354 ], [ %58, %428 ], [ %58, %60 ]
  %437 = phi ptr [ %57, %242 ], [ %100, %103 ], [ %57, %134 ], [ %57, %214 ], [ %57, %188 ], [ %57, %252 ], [ %57, %330 ], [ %57, %304 ], [ %57, %405 ], [ %57, %362 ], [ %57, %357 ], [ %57, %354 ], [ %57, %428 ], [ %57, %60 ]
  %438 = phi i8 [ 0, %242 ], [ 1, %103 ], [ 0, %134 ], [ 0, %214 ], [ 0, %188 ], [ 0, %252 ], [ 0, %330 ], [ %56, %304 ], [ 0, %405 ], [ 0, %362 ], [ 0, %357 ], [ 0, %354 ], [ 0, %428 ], [ 0, %60 ]
  %439 = add i32 %436, 1
  %440 = icmp ult i32 %439, %20
  br i1 %440, label %55, label %49, !prof !220, !llvm.loop !221

441:                                              ; preds = %49
  %442 = icmp eq ptr %54, null
  br i1 %442, label %446, label %443

443:                                              ; preds = %441
  %444 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %54) #12
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %453

446:                                              ; preds = %443, %441
  %447 = call ptr @__cxa_allocate_exception(i64 48) #13
  %448 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %447, ptr noundef nonnull @.str.3, i32 noundef 636, i32 noundef 316, ptr noundef %448) #12
          to label %456 unwind label %451

449:                                              ; preds = %456, %465, %464, %461
  %450 = landingpad { ptr, i32 }
          cleanup
  br label %468

451:                                              ; preds = %446
  %452 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %447) #13
  br label %468

453:                                              ; preds = %443
  %454 = call ptr @__cxa_allocate_exception(i64 48) #13
  %455 = load ptr, ptr %14, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %454, ptr noundef nonnull @.str.3, i32 noundef 639, i32 noundef 317, ptr noundef %455) #12
          to label %456 unwind label %459

456:                                              ; preds = %446, %453
  %457 = phi ptr [ %454, %453 ], [ %447, %446 ]
  invoke void @__cxa_throw(ptr nonnull %457, ptr nonnull @_ZTIN11xercesc_2_714XPathExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %458 unwind label %449

458:                                              ; preds = %456
  unreachable

459:                                              ; preds = %453
  %460 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %454) #13
  br label %468

461:                                              ; preds = %49
  %462 = load ptr, ptr %14, align 8, !tbaa !199
  %463 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 16, ptr noundef %462) #12
          to label %464 unwind label %449

464:                                              ; preds = %461
  call void @_ZN11xercesc_2_718XercesLocationPathC2EPNS_11RefVectorOfINS_10XercesStepEEE(ptr noundef nonnull align 8 dereferenceable(16) %463, ptr noundef nonnull %50) #12
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %54, ptr noundef nonnull %463) #12
          to label %465 unwind label %449

465:                                              ; preds = %464
  invoke void @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEE6orphanEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
          to label %466 unwind label %449

466:                                              ; preds = %465
  call void @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @_ZN11xercesc_2_712XPathScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %5) #15
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %5) #13
  call void @_ZN11xercesc_2_713ValueVectorOfIiED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  br label %467

467:                                              ; preds = %3, %466
  ret void

468:                                              ; preds = %378, %380, %278, %280, %162, %164, %85, %87, %74, %76, %449, %451, %459, %62, %374, %376, %406, %395, %382, %293, %309, %307, %305, %343, %331, %253, %255, %257, %160, %139, %137, %135, %215, %227, %189, %191, %193, %177, %89, %104, %433, %426, %418, %411, %240, %232, %124, %114, %72, %42, %40
  %469 = phi { ptr, i32 } [ %43, %42 ], [ %41, %40 ], [ %63, %62 ], [ %419, %418 ], [ %427, %426 ], [ %434, %433 ], [ %412, %411 ], [ %241, %240 ], [ %233, %232 ], [ %115, %114 ], [ %125, %124 ], [ %73, %72 ], [ %90, %89 ], [ %105, %104 ], [ %161, %160 ], [ %138, %137 ], [ %136, %135 ], [ %140, %139 ], [ %178, %177 ], [ %192, %191 ], [ %190, %189 ], [ %194, %193 ], [ %228, %227 ], [ %216, %215 ], [ %256, %255 ], [ %254, %253 ], [ %258, %257 ], [ %294, %293 ], [ %308, %307 ], [ %306, %305 ], [ %310, %309 ], [ %344, %343 ], [ %332, %331 ], [ %377, %376 ], [ %375, %374 ], [ %383, %382 ], [ %396, %395 ], [ %407, %406 ], [ %450, %449 ], [ %452, %451 ], [ %460, %459 ], [ %75, %74 ], [ %77, %76 ], [ %86, %85 ], [ %88, %87 ], [ %163, %162 ], [ %165, %164 ], [ %279, %278 ], [ %281, %280 ], [ %379, %378 ], [ %381, %380 ]
  call void @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  br label %470

470:                                              ; preds = %36, %38, %468, %34
  %471 = phi { ptr, i32 } [ %35, %34 ], [ %469, %468 ], [ %39, %38 ], [ %37, %36 ]
  call void @_ZN11xercesc_2_712XPathScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %5) #15
  br label %472

472:                                              ; preds = %470, %32
  %473 = phi { ptr, i32 } [ %471, %470 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %5) #13
  call void @_ZN11xercesc_2_713ValueVectorOfIiED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  resume { ptr, i32 } %473

474:                                              ; preds = %292, %176, %84
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XercesXPath26checkForSelectedAttributesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !222 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !202
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !210

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !223

8:                                                ; preds = %27, %1, %5
  ret void

9:                                                ; preds = %5, %27
  %10 = phi i32 [ %28, %27 ], [ 0, %5 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !202
  %12 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef %10) #12
  %13 = tail call noundef i32 @_ZNK11xercesc_2_718XercesLocationPath11getStepSizeEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15, !prof !210

15:                                               ; preds = %9
  %16 = add i32 %13, -1
  %17 = tail call noundef ptr @_ZNK11xercesc_2_718XercesLocationPath7getStepEj(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef %16) #12
  %18 = tail call noundef zeroext i16 @_ZNK11xercesc_2_710XercesStep11getAxisTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %17) #12
  %19 = icmp eq i16 %18, 2
  br i1 %19, label %20, label %27, !prof !210

20:                                               ; preds = %15
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %22 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.3, i32 noundef 375, i32 noundef 302, ptr noundef %23) #12
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_714XPathExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %21) #13
  resume { ptr, i32 } %26

27:                                               ; preds = %15, %9
  %28 = add nuw i32 %10, 1
  %29 = icmp eq i32 %28, %6
  br i1 %29, label %8, label %9, !prof !224, !llvm.loop !225
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_11XercesXPathEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 !prof !185 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_11XercesXPathEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  %2 = load ptr, ptr %0, align 8, !tbaa !203
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !217

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !205
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !205
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !161
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !226
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(40) %11) #12
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711XercesXPathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_711XercesXPathE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  invoke void @_ZN11xercesc_2_711XercesXPath7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #12
          to label %2 unwind label %3

2:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711XercesXPathD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xercesc_2_711XercesXPathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711XercesXPatheqERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 !prof !149 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !202
  %5 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #12
  %6 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !202
  %8 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #12
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = icmp eq i32 %5, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ 0, %10 ], [ %19, %12 ]
  %14 = load ptr, ptr %3, align 8, !tbaa !202
  %15 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef %13) #12
  %16 = load ptr, ptr %6, align 8, !tbaa !202
  %17 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef %13) #12
  %18 = tail call noundef zeroext i1 @_ZNK11xercesc_2_718XercesLocationPathneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %17) #12
  %19 = add nuw i32 %13, 1
  %20 = icmp eq i32 %19, %5
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %12, !llvm.loop !227

22:                                               ; preds = %12
  %23 = xor i1 %18, true
  br label %24

24:                                               ; preds = %22, %10, %2
  %25 = phi i1 [ false, %2 ], [ true, %10 ], [ %23, %22 ]
  ret i1 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !228 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !229
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !231 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !229
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !232

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !233
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 249, i32 noundef 116, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !234
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !179
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711XercesXPathneERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 !prof !149 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711XercesXPatheqERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #12
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_718XercesLocationPath11getStepSizeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !231 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !186
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !235

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #12
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_718XercesLocationPath7getStepEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !193 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !186
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !236

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #12
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZNK11xercesc_2_710XercesStep11getAxisTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 !prof !237 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !181
  ret i16 %3
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714XPathExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #12
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #4 comdat align 2 !prof !238 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !239

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !240
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !241

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !240
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !242, !llvm.loop !243

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIiEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 !prof !244 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store i8 %5, ptr %0, align 8, !tbaa !245
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !159
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !246
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !155
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !247
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 2
  %12 = load ptr, ptr %2, align 8, !tbaa !161
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %11) #12
  store ptr %15, ptr %8, align 8, !tbaa !155
  %16 = load i32, ptr %7, align 8, !tbaa !246
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %15, i8 0, i64 %18, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712XPathScanner14scanExpressionEPKtiiPNS_13ValueVectorOfIiEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 -1, ptr %6, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 -1, ptr %7, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #13
  %10 = tail call noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIiE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  call void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 128, ptr noundef %10) #12
  %11 = icmp eq i32 %2, %3
  br i1 %11, label %583, label %12, !prof !248

12:                                               ; preds = %5
  %13 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 22
  br label %14

14:                                               ; preds = %12, %577
  %15 = phi i32 [ %2, %12 ], [ %579, %577 ]
  %16 = phi i8 [ 0, %12 ], [ %578, %577 ]
  %17 = sext i32 %15 to i64
  br label %18

18:                                               ; preds = %14, %23
  %19 = phi i64 [ %17, %14 ], [ %24, %23 ]
  %20 = getelementptr inbounds i16, ptr %1, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !240
  %22 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %21) #12
  br i1 %22, label %23, label %27, !prof !249

23:                                               ; preds = %18
  %24 = add nsw i64 %19, 1
  %25 = trunc i64 %24 to i32
  %26 = icmp eq i32 %25, %3
  br i1 %26, label %583, label %18, !llvm.loop !250

27:                                               ; preds = %18
  %28 = trunc i64 %19 to i32
  %29 = icmp eq i32 %28, %3
  br i1 %29, label %583, label %30, !prof !251

30:                                               ; preds = %27
  %31 = icmp ugt i16 %21, 127
  br i1 %31, label %334, label %32, !prof !249

32:                                               ; preds = %30
  %33 = zext nneg i16 %21 to i64
  %34 = getelementptr inbounds [128 x i8], ptr @_ZN11xercesc_2_712XPathScanner13fASCIICharMapE, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !252
  switch i8 %35, label %577 [
    i8 6, label %36
    i8 7, label %48
    i8 21, label %54
    i8 22, label %60
    i8 12, label %66
    i8 19, label %114
    i8 10, label %120
    i8 15, label %126
    i8 13, label %140
    i8 24, label %155
    i8 9, label %161
    i8 11, label %167
    i8 17, label %173
    i8 3, label %179
    i8 16, label %193
    i8 18, label %208
    i8 4, label %228
    i8 14, label %266
    i8 5, label %272
    i8 8, label %323
    i8 25, label %334
    i8 20, label %334
    i8 23, label %334
  ], !prof !253

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 8, !tbaa !161
  %38 = getelementptr inbounds ptr, ptr %37, i64 2
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 0) #12
          to label %40 unwind label %42

40:                                               ; preds = %36
  %41 = add nsw i32 %28, 1
  br label %577

42:                                               ; preds = %266, %84, %270, %349, %343, %330, %329, %322, %321, %316, %308, %304, %289, %284, %227, %224, %207, %204, %187, %173, %167, %161, %155, %154, %151, %134, %120, %114, %104, %74, %60, %54, %48, %36
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %581

44:                                               ; preds = %211
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %581

46:                                               ; preds = %111
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %581

48:                                               ; preds = %32
  %49 = load ptr, ptr %0, align 8, !tbaa !161
  %50 = getelementptr inbounds ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8
  invoke void %51(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 1) #12
          to label %52 unwind label %42

52:                                               ; preds = %48
  %53 = add nsw i32 %28, 1
  br label %577

54:                                               ; preds = %32
  %55 = load ptr, ptr %0, align 8, !tbaa !161
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  %57 = load ptr, ptr %56, align 8
  invoke void %57(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 2) #12
          to label %58 unwind label %42

58:                                               ; preds = %54
  %59 = add nsw i32 %28, 1
  br label %577

60:                                               ; preds = %32
  %61 = load ptr, ptr %0, align 8, !tbaa !161
  %62 = getelementptr inbounds ptr, ptr %61, i64 2
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 3) #12
          to label %64 unwind label %42

64:                                               ; preds = %60
  %65 = add nsw i32 %28, 1
  br label %577

66:                                               ; preds = %32
  %67 = add nsw i32 %28, 1
  %68 = icmp eq i32 %67, %3
  br i1 %68, label %211, label %69, !prof !208

69:                                               ; preds = %66
  %70 = sext i32 %67 to i64
  %71 = getelementptr inbounds i16, ptr %1, i64 %70
  %72 = load i16, ptr %71, align 2, !tbaa !240
  %73 = icmp eq i16 %72, 46
  br i1 %73, label %74, label %80, !prof !208

74:                                               ; preds = %69
  %75 = load ptr, ptr %0, align 8, !tbaa !161
  %76 = getelementptr inbounds ptr, ptr %75, i64 2
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 5) #12
          to label %78 unwind label %42

78:                                               ; preds = %74
  %79 = add nsw i32 %28, 2
  br label %577

80:                                               ; preds = %69
  %81 = add i16 %72, -48
  %82 = icmp ult i16 %81, 10
  br i1 %82, label %266, label %83, !prof !254

83:                                               ; preds = %80
  switch i16 %72, label %88 [
    i16 47, label %84
    i16 124, label %84
  ], !prof !255

84:                                               ; preds = %83, %83
  %85 = load ptr, ptr %0, align 8, !tbaa !161
  %86 = getelementptr inbounds ptr, ptr %85, i64 2
  %87 = load ptr, ptr %86, align 8
  invoke void %87(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 4) #12
          to label %577 unwind label %42

88:                                               ; preds = %83
  %89 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %72) #12
  br i1 %89, label %90, label %108

90:                                               ; preds = %88
  %91 = shl i64 %19, 32
  %92 = ashr exact i64 %91, 32
  br label %93

93:                                               ; preds = %90, %98
  %94 = phi i64 [ %92, %90 ], [ %95, %98 ]
  %95 = add nsw i64 %94, 1
  %96 = trunc i64 %95 to i32
  %97 = icmp eq i32 %96, %3
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds i16, ptr %1, i64 %95
  %100 = load i16, ptr %99, align 2, !tbaa !240
  %101 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %100) #12
  br i1 %101, label %93, label %102, !llvm.loop !256

102:                                              ; preds = %98
  %103 = icmp eq i16 %100, 124
  br i1 %103, label %104, label %577

104:                                              ; preds = %93, %102
  %105 = load ptr, ptr %0, align 8, !tbaa !161
  %106 = getelementptr inbounds ptr, ptr %105, i64 2
  %107 = load ptr, ptr %106, align 8
  invoke void %107(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 4) #12
          to label %577 unwind label %42

108:                                              ; preds = %88
  %109 = call ptr @__cxa_allocate_exception(i64 48) #13
  %110 = call noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIiE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %109, ptr noundef nonnull @.str.3, i32 noundef 852, i32 noundef 318, ptr noundef %110) #12
          to label %111 unwind label %112

111:                                              ; preds = %108
  invoke void @__cxa_throw(ptr nonnull %109, ptr nonnull @_ZTIN11xercesc_2_714XPathExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %585 unwind label %46

112:                                              ; preds = %108
  %113 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %109) #13
  br label %581

114:                                              ; preds = %32
  %115 = load ptr, ptr %0, align 8, !tbaa !161
  %116 = getelementptr inbounds ptr, ptr %115, i64 2
  %117 = load ptr, ptr %116, align 8
  invoke void %117(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 6) #12
          to label %118 unwind label %42

118:                                              ; preds = %114
  %119 = add nsw i32 %28, 1
  br label %577

120:                                              ; preds = %32
  %121 = load ptr, ptr %0, align 8, !tbaa !161
  %122 = getelementptr inbounds ptr, ptr %121, i64 2
  %123 = load ptr, ptr %122, align 8
  invoke void %123(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 7) #12
          to label %124 unwind label %42

124:                                              ; preds = %120
  %125 = add nsw i32 %28, 1
  br label %577

126:                                              ; preds = %32
  %127 = add nsw i32 %28, 1
  %128 = icmp eq i32 %127, %3
  br i1 %128, label %583, label %129

129:                                              ; preds = %126
  %130 = sext i32 %127 to i64
  %131 = getelementptr inbounds i16, ptr %1, i64 %130
  %132 = load i16, ptr %131, align 2, !tbaa !240
  %133 = icmp eq i16 %132, 58
  br i1 %133, label %134, label %583

134:                                              ; preds = %129
  %135 = load ptr, ptr %0, align 8, !tbaa !161
  %136 = getelementptr inbounds ptr, ptr %135, i64 2
  %137 = load ptr, ptr %136, align 8
  invoke void %137(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 8) #12
          to label %138 unwind label %42

138:                                              ; preds = %134
  %139 = add nsw i32 %28, 2
  br label %577

140:                                              ; preds = %32
  %141 = add nsw i32 %28, 1
  %142 = icmp eq i32 %141, %3
  br i1 %142, label %211, label %143, !prof !218

143:                                              ; preds = %140
  %144 = sext i32 %141 to i64
  %145 = getelementptr inbounds i16, ptr %1, i64 %144
  %146 = load i16, ptr %145, align 2, !tbaa !240
  %147 = icmp eq i16 %146, 47
  %148 = load ptr, ptr %0, align 8, !tbaa !161
  %149 = getelementptr inbounds ptr, ptr %148, i64 2
  %150 = load ptr, ptr %149, align 8
  br i1 %147, label %151, label %154, !prof !218

151:                                              ; preds = %143
  invoke void %150(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 22) #12
          to label %152 unwind label %42

152:                                              ; preds = %151
  %153 = add nsw i32 %28, 2
  br label %577

154:                                              ; preds = %143
  invoke void %150(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 21) #12
          to label %577 unwind label %42

155:                                              ; preds = %32
  %156 = load ptr, ptr %0, align 8, !tbaa !161
  %157 = getelementptr inbounds ptr, ptr %156, i64 2
  %158 = load ptr, ptr %157, align 8
  invoke void %158(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 23) #12
          to label %159 unwind label %42

159:                                              ; preds = %155
  %160 = add nsw i32 %28, 1
  br label %577

161:                                              ; preds = %32
  %162 = load ptr, ptr %0, align 8, !tbaa !161
  %163 = getelementptr inbounds ptr, ptr %162, i64 2
  %164 = load ptr, ptr %163, align 8
  invoke void %164(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 24) #12
          to label %165 unwind label %42

165:                                              ; preds = %161
  %166 = add nsw i32 %28, 1
  br label %577

167:                                              ; preds = %32
  %168 = load ptr, ptr %0, align 8, !tbaa !161
  %169 = getelementptr inbounds ptr, ptr %168, i64 2
  %170 = load ptr, ptr %169, align 8
  invoke void %170(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 25) #12
          to label %171 unwind label %42

171:                                              ; preds = %167
  %172 = add nsw i32 %28, 1
  br label %577

173:                                              ; preds = %32
  %174 = load ptr, ptr %0, align 8, !tbaa !161
  %175 = getelementptr inbounds ptr, ptr %174, i64 2
  %176 = load ptr, ptr %175, align 8
  invoke void %176(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 26) #12
          to label %177 unwind label %42

177:                                              ; preds = %173
  %178 = add nsw i32 %28, 1
  br label %577

179:                                              ; preds = %32
  %180 = add nsw i32 %28, 1
  %181 = icmp eq i32 %180, %3
  br i1 %181, label %583, label %182

182:                                              ; preds = %179
  %183 = sext i32 %180 to i64
  %184 = getelementptr inbounds i16, ptr %1, i64 %183
  %185 = load i16, ptr %184, align 2, !tbaa !240
  %186 = icmp eq i16 %185, 61
  br i1 %186, label %187, label %583

187:                                              ; preds = %182
  %188 = load ptr, ptr %0, align 8, !tbaa !161
  %189 = getelementptr inbounds ptr, ptr %188, i64 2
  %190 = load ptr, ptr %189, align 8
  invoke void %190(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 27) #12
          to label %191 unwind label %42

191:                                              ; preds = %187
  %192 = add nsw i32 %28, 2
  br label %577

193:                                              ; preds = %32
  %194 = add nsw i32 %28, 1
  %195 = icmp eq i32 %194, %3
  br i1 %195, label %211, label %196

196:                                              ; preds = %193
  %197 = sext i32 %194 to i64
  %198 = getelementptr inbounds i16, ptr %1, i64 %197
  %199 = load i16, ptr %198, align 2, !tbaa !240
  %200 = icmp eq i16 %199, 61
  %201 = load ptr, ptr %0, align 8, !tbaa !161
  %202 = getelementptr inbounds ptr, ptr %201, i64 2
  %203 = load ptr, ptr %202, align 8
  br i1 %200, label %204, label %207

204:                                              ; preds = %196
  invoke void %203(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 29) #12
          to label %205 unwind label %42

205:                                              ; preds = %204
  %206 = add nsw i32 %28, 2
  br label %577

207:                                              ; preds = %196
  invoke void %203(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 28) #12
          to label %577 unwind label %42

208:                                              ; preds = %32
  %209 = add nsw i32 %28, 1
  %210 = icmp eq i32 %209, %3
  br i1 %210, label %211, label %216

211:                                              ; preds = %208, %193, %140, %66
  %212 = phi i32 [ 4, %66 ], [ 21, %140 ], [ 28, %193 ], [ 30, %208 ]
  %213 = load ptr, ptr %0, align 8, !tbaa !161
  %214 = getelementptr inbounds ptr, ptr %213, i64 2
  %215 = load ptr, ptr %214, align 8
  invoke void %215(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef %212) #12
          to label %583 unwind label %44

216:                                              ; preds = %208
  %217 = sext i32 %209 to i64
  %218 = getelementptr inbounds i16, ptr %1, i64 %217
  %219 = load i16, ptr %218, align 2, !tbaa !240
  %220 = icmp eq i16 %219, 61
  %221 = load ptr, ptr %0, align 8, !tbaa !161
  %222 = getelementptr inbounds ptr, ptr %221, i64 2
  %223 = load ptr, ptr %222, align 8
  br i1 %220, label %224, label %227

224:                                              ; preds = %216
  invoke void %223(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 31) #12
          to label %225 unwind label %42

225:                                              ; preds = %224
  %226 = add nsw i32 %28, 2
  br label %577

227:                                              ; preds = %216
  invoke void %223(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 30) #12
          to label %577 unwind label %42

228:                                              ; preds = %32
  %229 = add nsw i32 %28, 1
  %230 = icmp eq i32 %229, %3
  br i1 %230, label %583, label %231

231:                                              ; preds = %228
  %232 = sext i32 %229 to i64
  %233 = getelementptr inbounds i16, ptr %1, i64 %232
  %234 = load i16, ptr %233, align 2, !tbaa !240
  %235 = icmp eq i16 %234, %21
  br i1 %235, label %245, label %236

236:                                              ; preds = %231, %241
  %237 = phi i64 [ %238, %241 ], [ %232, %231 ]
  %238 = add nsw i64 %237, 1
  %239 = trunc i64 %238 to i32
  %240 = icmp eq i32 %239, %3
  br i1 %240, label %583, label %241

241:                                              ; preds = %236
  %242 = getelementptr inbounds i16, ptr %1, i64 %238
  %243 = load i16, ptr %242, align 2, !tbaa !240
  %244 = icmp eq i16 %243, %21
  br i1 %244, label %245, label %236, !llvm.loop !257

245:                                              ; preds = %241, %231
  %246 = phi i32 [ %229, %231 ], [ %239, %241 ]
  %247 = load ptr, ptr %0, align 8, !tbaa !161
  %248 = getelementptr inbounds ptr, ptr %247, i64 2
  %249 = load ptr, ptr %248, align 8
  invoke void %249(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 46) #12
          to label %250 unwind label %260

250:                                              ; preds = %245
  %251 = sub nsw i32 %246, %229
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %233, i32 noundef %251) #12
          to label %252 unwind label %260

252:                                              ; preds = %250
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  %253 = load ptr, ptr %13, align 8, !tbaa !258
  %254 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #12
  %255 = load ptr, ptr %253, align 8, !tbaa !161
  %256 = getelementptr inbounds ptr, ptr %255, i64 5
  %257 = load ptr, ptr %256, align 8
  %258 = invoke noundef i32 %257(ptr noundef nonnull align 8 dereferenceable(40) %253, ptr noundef %254) #12
          to label %259 unwind label %262

259:                                              ; preds = %252
  store i32 %258, ptr %9, align 4, !tbaa !150
  invoke void @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %9) #12
          to label %264 unwind label %262

260:                                              ; preds = %250, %245
  %261 = landingpad { ptr, i32 }
          cleanup
  br label %581

262:                                              ; preds = %259, %252
  %263 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  br label %581

264:                                              ; preds = %259
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  %265 = add nsw i32 %246, 1
  br label %577

266:                                              ; preds = %32, %80
  %267 = load ptr, ptr %0, align 8, !tbaa !161
  %268 = getelementptr inbounds ptr, ptr %267, i64 2
  %269 = load ptr, ptr %268, align 8
  invoke void %269(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 47) #12
          to label %270 unwind label %42

270:                                              ; preds = %266
  %271 = invoke noundef i32 @_ZN11xercesc_2_712XPathScanner10scanNumberEPKtiiPNS_13ValueVectorOfIiEE(ptr nonnull align 8 poison, ptr noundef nonnull %1, i32 noundef %3, i32 noundef %28, ptr noundef nonnull %4) #12
          to label %577 unwind label %42

272:                                              ; preds = %32
  %273 = add nsw i32 %28, 1
  %274 = icmp eq i32 %273, %3
  br i1 %274, label %583, label %275

275:                                              ; preds = %272
  %276 = call noundef i32 @_ZN11xercesc_2_712XPathScanner10scanNCNameEPKtii(ptr nonnull align 8 poison, ptr noundef nonnull %1, i32 noundef %3, i32 noundef %273) #12
  %277 = icmp eq i32 %276, %273
  br i1 %277, label %583, label %278

278:                                              ; preds = %275
  %279 = icmp slt i32 %276, %3
  br i1 %279, label %280, label %284

280:                                              ; preds = %278
  %281 = sext i32 %276 to i64
  %282 = getelementptr inbounds i16, ptr %1, i64 %281
  %283 = load i16, ptr %282, align 2, !tbaa !240
  br label %284

284:                                              ; preds = %278, %280
  %285 = phi i16 [ %283, %280 ], [ 0, %278 ]
  %286 = sext i32 %273 to i64
  %287 = getelementptr inbounds i16, ptr %1, i64 %286
  %288 = sub nsw i32 %276, %273
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %287, i32 noundef %288) #12
          to label %289 unwind label %42

289:                                              ; preds = %284
  %290 = load ptr, ptr %13, align 8, !tbaa !258
  %291 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #12
  %292 = load ptr, ptr %290, align 8, !tbaa !161
  %293 = getelementptr inbounds ptr, ptr %292, i64 5
  %294 = load ptr, ptr %293, align 8
  %295 = invoke noundef i32 %294(ptr noundef nonnull align 8 dereferenceable(40) %290, ptr noundef %291) #12
          to label %296 unwind label %42

296:                                              ; preds = %289
  store i32 %295, ptr %6, align 4, !tbaa !150
  store i32 -1, ptr %7, align 4, !tbaa !150
  %297 = icmp eq i16 %285, 58
  br i1 %297, label %298, label %316

298:                                              ; preds = %296
  store i32 %295, ptr %7, align 4, !tbaa !150
  %299 = add nsw i32 %276, 1
  %300 = icmp eq i32 %299, %3
  br i1 %300, label %583, label %301

301:                                              ; preds = %298
  %302 = call noundef i32 @_ZN11xercesc_2_712XPathScanner10scanNCNameEPKtii(ptr nonnull align 8 poison, ptr noundef nonnull %1, i32 noundef %3, i32 noundef %299) #12
  %303 = icmp eq i32 %302, %299
  br i1 %303, label %583, label %304

304:                                              ; preds = %301
  %305 = sext i32 %299 to i64
  %306 = getelementptr inbounds i16, ptr %1, i64 %305
  %307 = sub nsw i32 %302, %299
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %306, i32 noundef %307) #12
          to label %308 unwind label %42

308:                                              ; preds = %304
  %309 = load ptr, ptr %13, align 8, !tbaa !258
  %310 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #12
  %311 = load ptr, ptr %309, align 8, !tbaa !161
  %312 = getelementptr inbounds ptr, ptr %311, i64 5
  %313 = load ptr, ptr %312, align 8
  %314 = invoke noundef i32 %313(ptr noundef nonnull align 8 dereferenceable(40) %309, ptr noundef %310) #12
          to label %315 unwind label %42

315:                                              ; preds = %308
  store i32 %314, ptr %6, align 4, !tbaa !150
  br label %316

316:                                              ; preds = %315, %296
  %317 = phi i32 [ %302, %315 ], [ %276, %296 ]
  %318 = load ptr, ptr %0, align 8, !tbaa !161
  %319 = getelementptr inbounds ptr, ptr %318, i64 2
  %320 = load ptr, ptr %319, align 8
  invoke void %320(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 48) #12
          to label %321 unwind label %42

321:                                              ; preds = %316
  invoke void @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %7) #12
          to label %322 unwind label %42

322:                                              ; preds = %321
  invoke void @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %6) #12
          to label %577 unwind label %42

323:                                              ; preds = %32
  %324 = and i8 %16, 1
  %325 = icmp eq i8 %324, 0
  %326 = load ptr, ptr %0, align 8, !tbaa !161
  %327 = getelementptr inbounds ptr, ptr %326, i64 2
  %328 = load ptr, ptr %327, align 8
  br i1 %325, label %330, label %329, !prof !260

329:                                              ; preds = %323
  invoke void %328(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 20) #12
          to label %331 unwind label %42

330:                                              ; preds = %323
  invoke void %328(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 9) #12
          to label %331 unwind label %42

331:                                              ; preds = %330, %329
  %332 = phi i8 [ 0, %329 ], [ 1, %330 ]
  %333 = add nsw i32 %28, 1
  br label %577

334:                                              ; preds = %30, %32, %32, %32
  %335 = call noundef i32 @_ZN11xercesc_2_712XPathScanner10scanNCNameEPKtii(ptr nonnull align 8 poison, ptr noundef nonnull %1, i32 noundef %3, i32 noundef %28) #12
  %336 = icmp eq i32 %335, %28
  br i1 %336, label %583, label %337, !prof !261

337:                                              ; preds = %334
  %338 = icmp slt i32 %335, %3
  br i1 %338, label %339, label %343, !prof !262

339:                                              ; preds = %337
  %340 = sext i32 %335 to i64
  %341 = getelementptr inbounds i16, ptr %1, i64 %340
  %342 = load i16, ptr %341, align 2, !tbaa !240
  br label %343

343:                                              ; preds = %337, %339
  %344 = phi i16 [ %342, %339 ], [ 0, %337 ]
  %345 = shl i64 %19, 32
  %346 = ashr exact i64 %345, 32
  %347 = getelementptr inbounds i16, ptr %1, i64 %346
  %348 = sub nsw i32 %335, %28
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %347, i32 noundef %348) #12
          to label %349 unwind label %42

349:                                              ; preds = %343
  %350 = load ptr, ptr %13, align 8, !tbaa !258
  %351 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #12
  %352 = load ptr, ptr %350, align 8, !tbaa !161
  %353 = getelementptr inbounds ptr, ptr %352, i64 5
  %354 = load ptr, ptr %353, align 8
  %355 = invoke noundef i32 %354(ptr noundef nonnull align 8 dereferenceable(40) %350, ptr noundef %351) #12
          to label %356 unwind label %42

356:                                              ; preds = %349
  store i32 %355, ptr %6, align 4, !tbaa !150
  store i32 -1, ptr %7, align 4, !tbaa !150
  %357 = icmp eq i16 %344, 58
  br i1 %357, label %358, label %401, !prof !262

358:                                              ; preds = %356
  %359 = add nsw i32 %335, 1
  %360 = icmp eq i32 %359, %3
  br i1 %360, label %583, label %361, !prof !216

361:                                              ; preds = %358
  %362 = sext i32 %359 to i64
  %363 = getelementptr inbounds i16, ptr %1, i64 %362
  %364 = load i16, ptr %363, align 2, !tbaa !240
  switch i16 %364, label %379 [
    i16 42, label %365
    i16 58, label %372
  ], !prof !263

365:                                              ; preds = %361
  %366 = add nsw i32 %335, 2
  %367 = icmp slt i32 %366, %3
  br i1 %367, label %368, label %401

368:                                              ; preds = %365
  %369 = sext i32 %366 to i64
  %370 = getelementptr inbounds i16, ptr %1, i64 %369
  %371 = load i16, ptr %370, align 2, !tbaa !240
  br label %401

372:                                              ; preds = %361
  %373 = add nsw i32 %335, 2
  %374 = icmp slt i32 %373, %3
  br i1 %374, label %375, label %401

375:                                              ; preds = %372
  %376 = sext i32 %373 to i64
  %377 = getelementptr inbounds i16, ptr %1, i64 %376
  %378 = load i16, ptr %377, align 2, !tbaa !240
  br label %401

379:                                              ; preds = %361
  store i32 %355, ptr %7, align 4, !tbaa !150
  %380 = call noundef i32 @_ZN11xercesc_2_712XPathScanner10scanNCNameEPKtii(ptr nonnull align 8 poison, ptr noundef nonnull %1, i32 noundef %3, i32 noundef %359) #12
  %381 = icmp eq i32 %380, %359
  br i1 %381, label %583, label %384, !prof !216

382:                                              ; preds = %444, %478, %554, %574, %573, %572, %571, %560, %484, %483, %482, %481, %393, %390
  %383 = landingpad { ptr, i32 }
          cleanup
  br label %581

384:                                              ; preds = %379
  %385 = icmp slt i32 %380, %3
  br i1 %385, label %386, label %390, !prof !264

386:                                              ; preds = %384
  %387 = sext i32 %380 to i64
  %388 = getelementptr inbounds i16, ptr %1, i64 %387
  %389 = load i16, ptr %388, align 2, !tbaa !240
  br label %390

390:                                              ; preds = %384, %386
  %391 = phi i16 [ %389, %386 ], [ 0, %384 ]
  %392 = sub nsw i32 %380, %359
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %363, i32 noundef %392) #12
          to label %393 unwind label %382

393:                                              ; preds = %390
  %394 = load ptr, ptr %13, align 8, !tbaa !258
  %395 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #12
  %396 = load ptr, ptr %394, align 8, !tbaa !161
  %397 = getelementptr inbounds ptr, ptr %396, i64 5
  %398 = load ptr, ptr %397, align 8
  %399 = invoke noundef i32 %398(ptr noundef nonnull align 8 dereferenceable(40) %394, ptr noundef %395) #12
          to label %400 unwind label %382

400:                                              ; preds = %393
  store i32 %399, ptr %6, align 4, !tbaa !150
  br label %401

401:                                              ; preds = %372, %375, %365, %368, %400, %356
  %402 = phi i16 [ %391, %400 ], [ %344, %356 ], [ %371, %368 ], [ 42, %365 ], [ %378, %375 ], [ 58, %372 ]
  %403 = phi i32 [ %380, %400 ], [ %335, %356 ], [ %366, %368 ], [ %366, %365 ], [ %373, %375 ], [ %373, %372 ]
  %404 = phi i1 [ false, %400 ], [ false, %356 ], [ true, %368 ], [ true, %365 ], [ false, %375 ], [ false, %372 ]
  %405 = phi i1 [ false, %400 ], [ false, %356 ], [ false, %368 ], [ false, %365 ], [ true, %375 ], [ true, %372 ]
  %406 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %402) #12
  br i1 %406, label %407, label %422, !prof !265

407:                                              ; preds = %401
  %408 = sext i32 %403 to i64
  %409 = add nsw i64 %408, 1
  %410 = trunc i64 %409 to i32
  %411 = icmp eq i32 %410, %3
  br i1 %411, label %422, label %416

412:                                              ; preds = %416
  %413 = add nsw i64 %418, 1
  %414 = trunc i64 %413 to i32
  %415 = icmp eq i32 %414, %3
  br i1 %415, label %422, label %416, !llvm.loop !266

416:                                              ; preds = %407, %412
  %417 = phi i32 [ %414, %412 ], [ %410, %407 ]
  %418 = phi i64 [ %413, %412 ], [ %409, %407 ]
  %419 = getelementptr inbounds i16, ptr %1, i64 %418
  %420 = load i16, ptr %419, align 2, !tbaa !240
  %421 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %420) #12
  br i1 %421, label %412, label %422, !prof !267, !llvm.loop !266

422:                                              ; preds = %412, %416, %407, %401
  %423 = phi i16 [ %402, %401 ], [ %402, %407 ], [ %420, %416 ], [ %420, %412 ]
  %424 = phi i32 [ %403, %401 ], [ %3, %407 ], [ %417, %416 ], [ %3, %412 ]
  %425 = and i8 %16, 1
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %449, label %427, !prof !268

427:                                              ; preds = %422
  %428 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 1
  %429 = load i32, ptr %6, align 4, !tbaa !150
  %430 = load i32, ptr %428, align 8, !tbaa !269
  %431 = icmp eq i32 %429, %430
  br i1 %431, label %444, label %432

432:                                              ; preds = %427
  %433 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 2
  %434 = load i32, ptr %433, align 4, !tbaa !270
  %435 = icmp eq i32 %429, %434
  br i1 %435, label %444, label %436

436:                                              ; preds = %432
  %437 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 3
  %438 = load i32, ptr %437, align 8, !tbaa !271
  %439 = icmp eq i32 %429, %438
  br i1 %439, label %444, label %440

440:                                              ; preds = %436
  %441 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 4
  %442 = load i32, ptr %441, align 4, !tbaa !272
  %443 = icmp eq i32 %429, %442
  br i1 %443, label %444, label %583

444:                                              ; preds = %440, %436, %432, %427
  %445 = phi i32 [ 16, %427 ], [ 17, %432 ], [ 18, %436 ], [ 19, %440 ]
  %446 = load ptr, ptr %0, align 8, !tbaa !161
  %447 = getelementptr inbounds ptr, ptr %446, i64 2
  %448 = load ptr, ptr %447, align 8
  invoke void %448(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef %445) #12
          to label %575 unwind label %382

449:                                              ; preds = %422
  %450 = icmp ne i16 %423, 40
  %451 = or i1 %404, %450
  br i1 %451, label %490, label %452, !prof !273

452:                                              ; preds = %449
  br i1 %405, label %501, label %453

453:                                              ; preds = %452
  %454 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 5
  %455 = load i32, ptr %6, align 4, !tbaa !150
  %456 = load i32, ptr %454, align 8, !tbaa !274
  %457 = icmp eq i32 %455, %456
  br i1 %457, label %473, label %458

458:                                              ; preds = %453
  %459 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 6
  %460 = load i32, ptr %459, align 4, !tbaa !275
  %461 = icmp eq i32 %455, %460
  br i1 %461, label %473, label %462

462:                                              ; preds = %458
  %463 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 7
  %464 = load i32, ptr %463, align 8, !tbaa !276
  %465 = icmp eq i32 %455, %464
  br i1 %465, label %473, label %466

466:                                              ; preds = %462
  %467 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 8
  %468 = load i32, ptr %467, align 4, !tbaa !277
  %469 = icmp eq i32 %455, %468
  %470 = load ptr, ptr %0, align 8, !tbaa !161
  %471 = getelementptr inbounds ptr, ptr %470, i64 2
  %472 = load ptr, ptr %471, align 8
  br i1 %469, label %478, label %481

473:                                              ; preds = %462, %458, %453
  %474 = phi i32 [ 12, %453 ], [ 13, %458 ], [ 14, %462 ]
  %475 = load ptr, ptr %0, align 8, !tbaa !161
  %476 = getelementptr inbounds ptr, ptr %475, i64 2
  %477 = load ptr, ptr %476, align 8
  br label %478

478:                                              ; preds = %473, %466
  %479 = phi i32 [ 15, %466 ], [ %474, %473 ]
  %480 = phi ptr [ %472, %466 ], [ %477, %473 ]
  invoke void %480(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef %479) #12
          to label %484 unwind label %382

481:                                              ; preds = %466
  invoke void %472(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 32) #12
          to label %482 unwind label %382

482:                                              ; preds = %481
  invoke void @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %7) #12
          to label %483 unwind label %382

483:                                              ; preds = %482
  invoke void @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %6) #12
          to label %484 unwind label %382

484:                                              ; preds = %478, %483
  %485 = load ptr, ptr %0, align 8, !tbaa !161
  %486 = getelementptr inbounds ptr, ptr %485, i64 2
  %487 = load ptr, ptr %486, align 8
  invoke void %487(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 0) #12
          to label %488 unwind label %382

488:                                              ; preds = %484
  %489 = add nsw i32 %424, 1
  br label %577

490:                                              ; preds = %449
  br i1 %405, label %501, label %491, !prof !261

491:                                              ; preds = %490
  %492 = icmp eq i16 %423, 58
  br i1 %492, label %493, label %567, !prof !261

493:                                              ; preds = %491
  %494 = add nsw i32 %424, 1
  %495 = icmp slt i32 %494, %3
  br i1 %495, label %496, label %567

496:                                              ; preds = %493
  %497 = sext i32 %494 to i64
  %498 = getelementptr inbounds i16, ptr %1, i64 %497
  %499 = load i16, ptr %498, align 2, !tbaa !240
  %500 = icmp eq i16 %499, 58
  br i1 %500, label %501, label %567

501:                                              ; preds = %452, %496, %490
  %502 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 9
  %503 = load i32, ptr %6, align 4, !tbaa !150
  %504 = load i32, ptr %502, align 8, !tbaa !278
  %505 = icmp eq i32 %503, %504
  br i1 %505, label %554, label %506

506:                                              ; preds = %501
  %507 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 10
  %508 = load i32, ptr %507, align 4, !tbaa !279
  %509 = icmp eq i32 %503, %508
  br i1 %509, label %554, label %510

510:                                              ; preds = %506
  %511 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 11
  %512 = load i32, ptr %511, align 8, !tbaa !280
  %513 = icmp eq i32 %503, %512
  br i1 %513, label %554, label %514

514:                                              ; preds = %510
  %515 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 12
  %516 = load i32, ptr %515, align 4, !tbaa !281
  %517 = icmp eq i32 %503, %516
  br i1 %517, label %554, label %518

518:                                              ; preds = %514
  %519 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 13
  %520 = load i32, ptr %519, align 8, !tbaa !282
  %521 = icmp eq i32 %503, %520
  br i1 %521, label %554, label %522

522:                                              ; preds = %518
  %523 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 14
  %524 = load i32, ptr %523, align 4, !tbaa !283
  %525 = icmp eq i32 %503, %524
  br i1 %525, label %554, label %526

526:                                              ; preds = %522
  %527 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 15
  %528 = load i32, ptr %527, align 8, !tbaa !284
  %529 = icmp eq i32 %503, %528
  br i1 %529, label %554, label %530

530:                                              ; preds = %526
  %531 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 16
  %532 = load i32, ptr %531, align 4, !tbaa !285
  %533 = icmp eq i32 %503, %532
  br i1 %533, label %554, label %534

534:                                              ; preds = %530
  %535 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 17
  %536 = load i32, ptr %535, align 8, !tbaa !286
  %537 = icmp eq i32 %503, %536
  br i1 %537, label %554, label %538

538:                                              ; preds = %534
  %539 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 18
  %540 = load i32, ptr %539, align 4, !tbaa !287
  %541 = icmp eq i32 %503, %540
  br i1 %541, label %554, label %542

542:                                              ; preds = %538
  %543 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 19
  %544 = load i32, ptr %543, align 8, !tbaa !288
  %545 = icmp eq i32 %503, %544
  br i1 %545, label %554, label %546

546:                                              ; preds = %542
  %547 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 20
  %548 = load i32, ptr %547, align 4, !tbaa !289
  %549 = icmp eq i32 %503, %548
  br i1 %549, label %554, label %550

550:                                              ; preds = %546
  %551 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 21
  %552 = load i32, ptr %551, align 8, !tbaa !290
  %553 = icmp eq i32 %503, %552
  br i1 %553, label %554, label %583

554:                                              ; preds = %550, %546, %542, %538, %534, %530, %526, %522, %518, %514, %510, %506, %501
  %555 = phi i32 [ 33, %501 ], [ 34, %506 ], [ 35, %510 ], [ 36, %514 ], [ 37, %518 ], [ 38, %522 ], [ 39, %526 ], [ 40, %530 ], [ 41, %534 ], [ 42, %538 ], [ 43, %542 ], [ 44, %546 ], [ 45, %550 ]
  %556 = load ptr, ptr %0, align 8, !tbaa !161
  %557 = getelementptr inbounds ptr, ptr %556, i64 2
  %558 = load ptr, ptr %557, align 8
  invoke void %558(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef %555) #12
          to label %559 unwind label %382

559:                                              ; preds = %554
  br i1 %404, label %583, label %560

560:                                              ; preds = %559
  %561 = load ptr, ptr %0, align 8, !tbaa !161
  %562 = getelementptr inbounds ptr, ptr %561, i64 2
  %563 = load ptr, ptr %562, align 8
  invoke void %563(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 8) #12
          to label %564 unwind label %382

564:                                              ; preds = %560
  %565 = add nsw i32 %424, 2
  %566 = select i1 %405, i32 %424, i32 %565
  br label %577

567:                                              ; preds = %496, %493, %491
  %568 = load ptr, ptr %0, align 8, !tbaa !161
  %569 = getelementptr inbounds ptr, ptr %568, i64 2
  %570 = load ptr, ptr %569, align 8
  br i1 %404, label %571, label %572, !prof !261

571:                                              ; preds = %567
  invoke void %570(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 10) #12
          to label %574 unwind label %382

572:                                              ; preds = %567
  invoke void %570(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, i32 noundef 11) #12
          to label %573 unwind label %382

573:                                              ; preds = %572
  invoke void @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %7) #12
          to label %574 unwind label %382

574:                                              ; preds = %573, %571
  invoke void @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %6) #12
          to label %577 unwind label %382

575:                                              ; preds = %444
  %576 = or i1 %404, %405
  br i1 %576, label %583, label %577

577:                                              ; preds = %574, %84, %270, %575, %488, %564, %40, %52, %58, %64, %118, %124, %138, %159, %165, %171, %177, %191, %331, %32, %102, %78, %152, %205, %225, %322, %104, %154, %207, %227, %264
  %578 = phi i8 [ %16, %32 ], [ %332, %331 ], [ 1, %322 ], [ 1, %264 ], [ 0, %225 ], [ 0, %205 ], [ 0, %191 ], [ 0, %177 ], [ 0, %171 ], [ 0, %165 ], [ 0, %159 ], [ 0, %152 ], [ 0, %138 ], [ 0, %124 ], [ 0, %118 ], [ 1, %78 ], [ %16, %102 ], [ 1, %64 ], [ 0, %58 ], [ 1, %52 ], [ 0, %40 ], [ 1, %104 ], [ 0, %154 ], [ 0, %207 ], [ 0, %227 ], [ 0, %488 ], [ 0, %564 ], [ 0, %575 ], [ 1, %270 ], [ 1, %84 ], [ 1, %574 ]
  %579 = phi i32 [ %28, %32 ], [ %333, %331 ], [ %317, %322 ], [ %265, %264 ], [ %226, %225 ], [ %206, %205 ], [ %192, %191 ], [ %178, %177 ], [ %172, %171 ], [ %166, %165 ], [ %160, %159 ], [ %153, %152 ], [ %139, %138 ], [ %125, %124 ], [ %119, %118 ], [ %79, %78 ], [ %96, %102 ], [ %65, %64 ], [ %59, %58 ], [ %53, %52 ], [ %41, %40 ], [ %96, %104 ], [ %141, %154 ], [ %194, %207 ], [ %209, %227 ], [ %489, %488 ], [ %566, %564 ], [ %424, %575 ], [ %271, %270 ], [ %67, %84 ], [ %424, %574 ]
  %580 = icmp eq i32 %579, %3
  br i1 %580, label %583, label %14, !prof !291, !llvm.loop !292

581:                                              ; preds = %42, %44, %46, %260, %262, %382, %112
  %582 = phi { ptr, i32 } [ %383, %382 ], [ %113, %112 ], [ %263, %262 ], [ %261, %260 ], [ %47, %46 ], [ %43, %42 ], [ %45, %44 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  resume { ptr, i32 } %582

583:                                              ; preds = %27, %577, %575, %126, %129, %179, %182, %272, %275, %298, %301, %334, %228, %358, %379, %440, %550, %559, %23, %236, %211, %5
  %584 = phi i1 [ true, %5 ], [ true, %211 ], [ false, %236 ], [ true, %23 ], [ true, %27 ], [ true, %577 ], [ false, %575 ], [ false, %126 ], [ false, %129 ], [ false, %179 ], [ false, %182 ], [ false, %272 ], [ false, %275 ], [ false, %298 ], [ false, %301 ], [ false, %334 ], [ false, %228 ], [ false, %358 ], [ false, %379 ], [ false, %440 ], [ false, %550 ], [ false, %559 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i1 %584

585:                                              ; preds = %111
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIiE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !293 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !159
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !185 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #12
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_10XercesStepEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEEC2EPS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !185 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr %1, ptr %0, align 8, !tbaa !294
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !185 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #12
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !296 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !159
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !297

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !247
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.6, i32 noundef 206, i32 noundef 116, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !155
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !185 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !234
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !229
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !179
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !229
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEE6orphanEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !185 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !185 {
  %3 = load ptr, ptr %0, align 8, !tbaa !294
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !217

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !161
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #15
  br label %9

9:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !294
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !180 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !196
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !191
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !179
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !191
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714NamespaceScope21getNamespaceForPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !298 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !299
  %5 = add i32 %4, -1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_714NamespaceScope21getNamespaceForPrefixEPKti(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %5) #12
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714XPathExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %12
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  tail call void @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIiED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !244 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !247
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !155
  %6 = load ptr, ptr %3, align 8, !tbaa !161
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #12
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711XercesXPath12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %0) #12
  tail call void @_ZN11xercesc_2_711XercesXPathC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711XercesXPath14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !149 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_711XercesXPath12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !149 {
  ret ptr @_ZN11xercesc_2_711XercesXPath16classXercesXPathE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XercesXPath9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !149 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #12
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 1
  br i1 %3, label %5, label %12

5:                                                ; preds = %2
  %6 = load i32, ptr %4, align 8, !tbaa !197
  %7 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %6) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !200
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %9, i32 noundef 0, i1 noundef zeroext false) #12
  %10 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !202
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_18XercesLocationPathEEERNS_16XSerializeEngineE(ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(100) %1) #12
  br label %16

12:                                               ; preds = %2
  %13 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #12
  %14 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %14) #12
  %15 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_18XercesLocationPathEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %15, i32 noundef 8, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #12
  br label %16

16:                                               ; preds = %12, %5
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_18XercesLocationPathEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !149 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_18XercesLocationPathEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711XercesXPathC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_711XercesXPathE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !197
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr %1, ptr %5, align 8, !tbaa !199
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XPathScannerC2EPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !185 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712XPathScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  %3 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %3, i8 0, i64 84, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !258
  tail call void @_ZN11xercesc_2_712XPathScanner4initEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XPathScanner4initEv(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 !prof !185 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !258
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols12fgSYMBOL_ANDE) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !269
  %9 = load ptr, ptr %2, align 8, !tbaa !258
  %10 = load ptr, ptr %9, align 8, !tbaa !161
  %11 = getelementptr inbounds ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols11fgSYMBOL_ORE) #12
  %14 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 2
  store i32 %13, ptr %14, align 4, !tbaa !270
  %15 = load ptr, ptr %2, align 8, !tbaa !258
  %16 = load ptr, ptr %15, align 8, !tbaa !161
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols12fgSYMBOL_MODE) #12
  %20 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 3
  store i32 %19, ptr %20, align 8, !tbaa !271
  %21 = load ptr, ptr %2, align 8, !tbaa !258
  %22 = load ptr, ptr %21, align 8, !tbaa !161
  %23 = getelementptr inbounds ptr, ptr %22, i64 5
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef i32 %24(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols12fgSYMBOL_DIVE) #12
  %26 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 4
  store i32 %25, ptr %26, align 4, !tbaa !272
  %27 = load ptr, ptr %2, align 8, !tbaa !258
  %28 = load ptr, ptr %27, align 8, !tbaa !161
  %29 = getelementptr inbounds ptr, ptr %28, i64 5
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef i32 %30(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols16fgSYMBOL_COMMENTE) #12
  %32 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 5
  store i32 %31, ptr %32, align 8, !tbaa !274
  %33 = load ptr, ptr %2, align 8, !tbaa !258
  %34 = load ptr, ptr %33, align 8, !tbaa !161
  %35 = getelementptr inbounds ptr, ptr %34, i64 5
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef i32 %36(ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols13fgSYMBOL_TEXTE) #12
  %38 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 6
  store i32 %37, ptr %38, align 4, !tbaa !275
  %39 = load ptr, ptr %2, align 8, !tbaa !258
  %40 = load ptr, ptr %39, align 8, !tbaa !161
  %41 = getelementptr inbounds ptr, ptr %40, i64 5
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef i32 %42(ptr noundef nonnull align 8 dereferenceable(40) %39, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols11fgSYMBOL_PIE) #12
  %44 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 7
  store i32 %43, ptr %44, align 8, !tbaa !276
  %45 = load ptr, ptr %2, align 8, !tbaa !258
  %46 = load ptr, ptr %45, align 8, !tbaa !161
  %47 = getelementptr inbounds ptr, ptr %46, i64 5
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef i32 %48(ptr noundef nonnull align 8 dereferenceable(40) %45, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols13fgSYMBOL_NODEE) #12
  %50 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 8
  store i32 %49, ptr %50, align 4, !tbaa !277
  %51 = load ptr, ptr %2, align 8, !tbaa !258
  %52 = load ptr, ptr %51, align 8, !tbaa !161
  %53 = getelementptr inbounds ptr, ptr %52, i64 5
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef i32 %54(ptr noundef nonnull align 8 dereferenceable(40) %51, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols17fgSYMBOL_ANCESTORE) #12
  %56 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 9
  store i32 %55, ptr %56, align 8, !tbaa !278
  %57 = load ptr, ptr %2, align 8, !tbaa !258
  %58 = load ptr, ptr %57, align 8, !tbaa !161
  %59 = getelementptr inbounds ptr, ptr %58, i64 5
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef i32 %60(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols25fgSYMBOL_ANCESTOR_OR_SELFE) #12
  %62 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 10
  store i32 %61, ptr %62, align 4, !tbaa !279
  %63 = load ptr, ptr %2, align 8, !tbaa !258
  %64 = load ptr, ptr %63, align 8, !tbaa !161
  %65 = getelementptr inbounds ptr, ptr %64, i64 5
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef i32 %66(ptr noundef nonnull align 8 dereferenceable(40) %63, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols18fgSYMBOL_ATTRIBUTEE) #12
  %68 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 11
  store i32 %67, ptr %68, align 8, !tbaa !280
  %69 = load ptr, ptr %2, align 8, !tbaa !258
  %70 = load ptr, ptr %69, align 8, !tbaa !161
  %71 = getelementptr inbounds ptr, ptr %70, i64 5
  %72 = load ptr, ptr %71, align 8
  %73 = tail call noundef i32 %72(ptr noundef nonnull align 8 dereferenceable(40) %69, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols14fgSYMBOL_CHILDE) #12
  %74 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 12
  store i32 %73, ptr %74, align 4, !tbaa !281
  %75 = load ptr, ptr %2, align 8, !tbaa !258
  %76 = load ptr, ptr %75, align 8, !tbaa !161
  %77 = getelementptr inbounds ptr, ptr %76, i64 5
  %78 = load ptr, ptr %77, align 8
  %79 = tail call noundef i32 %78(ptr noundef nonnull align 8 dereferenceable(40) %75, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols19fgSYMBOL_DESCENDANTE) #12
  %80 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 13
  store i32 %79, ptr %80, align 8, !tbaa !282
  %81 = load ptr, ptr %2, align 8, !tbaa !258
  %82 = load ptr, ptr %81, align 8, !tbaa !161
  %83 = getelementptr inbounds ptr, ptr %82, i64 5
  %84 = load ptr, ptr %83, align 8
  %85 = tail call noundef i32 %84(ptr noundef nonnull align 8 dereferenceable(40) %81, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols27fgSYMBOL_DESCENDANT_OR_SELFE) #12
  %86 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 14
  store i32 %85, ptr %86, align 4, !tbaa !283
  %87 = load ptr, ptr %2, align 8, !tbaa !258
  %88 = load ptr, ptr %87, align 8, !tbaa !161
  %89 = getelementptr inbounds ptr, ptr %88, i64 5
  %90 = load ptr, ptr %89, align 8
  %91 = tail call noundef i32 %90(ptr noundef nonnull align 8 dereferenceable(40) %87, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols18fgSYMBOL_FOLLOWINGE) #12
  %92 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 15
  store i32 %91, ptr %92, align 8, !tbaa !284
  %93 = load ptr, ptr %2, align 8, !tbaa !258
  %94 = load ptr, ptr %93, align 8, !tbaa !161
  %95 = getelementptr inbounds ptr, ptr %94, i64 5
  %96 = load ptr, ptr %95, align 8
  %97 = tail call noundef i32 %96(ptr noundef nonnull align 8 dereferenceable(40) %93, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols26fgSYMBOL_FOLLOWING_SIBLINGE) #12
  %98 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 16
  store i32 %97, ptr %98, align 4, !tbaa !285
  %99 = load ptr, ptr %2, align 8, !tbaa !258
  %100 = load ptr, ptr %99, align 8, !tbaa !161
  %101 = getelementptr inbounds ptr, ptr %100, i64 5
  %102 = load ptr, ptr %101, align 8
  %103 = tail call noundef i32 %102(ptr noundef nonnull align 8 dereferenceable(40) %99, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols18fgSYMBOL_NAMESPACEE) #12
  %104 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 17
  store i32 %103, ptr %104, align 8, !tbaa !286
  %105 = load ptr, ptr %2, align 8, !tbaa !258
  %106 = load ptr, ptr %105, align 8, !tbaa !161
  %107 = getelementptr inbounds ptr, ptr %106, i64 5
  %108 = load ptr, ptr %107, align 8
  %109 = tail call noundef i32 %108(ptr noundef nonnull align 8 dereferenceable(40) %105, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols15fgSYMBOL_PARENTE) #12
  %110 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 18
  store i32 %109, ptr %110, align 4, !tbaa !287
  %111 = load ptr, ptr %2, align 8, !tbaa !258
  %112 = load ptr, ptr %111, align 8, !tbaa !161
  %113 = getelementptr inbounds ptr, ptr %112, i64 5
  %114 = load ptr, ptr %113, align 8
  %115 = tail call noundef i32 %114(ptr noundef nonnull align 8 dereferenceable(40) %111, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols18fgSYMBOL_PRECEDINGE) #12
  %116 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 19
  store i32 %115, ptr %116, align 8, !tbaa !288
  %117 = load ptr, ptr %2, align 8, !tbaa !258
  %118 = load ptr, ptr %117, align 8, !tbaa !161
  %119 = getelementptr inbounds ptr, ptr %118, i64 5
  %120 = load ptr, ptr %119, align 8
  %121 = tail call noundef i32 %120(ptr noundef nonnull align 8 dereferenceable(40) %117, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols26fgSYMBOL_PRECEDING_SIBLINGE) #12
  %122 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 20
  store i32 %121, ptr %122, align 4, !tbaa !289
  %123 = load ptr, ptr %2, align 8, !tbaa !258
  %124 = load ptr, ptr %123, align 8, !tbaa !161
  %125 = getelementptr inbounds ptr, ptr %124, i64 5
  %126 = load ptr, ptr %125, align 8
  %127 = tail call noundef i32 %126(ptr noundef nonnull align 8 dereferenceable(40) %123, ptr noundef nonnull @_ZN11xercesc_2_712XPathSymbols13fgSYMBOL_SELFE) #12
  %128 = getelementptr inbounds %"class.xercesc_2_7::XPathScanner", ptr %0, i64 0, i32 21
  store i32 %127, ptr %128, align 8, !tbaa !290
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIiE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !185 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !247
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !302 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store i32 0, ptr %0, align 8, !tbaa !303
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !305
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !306
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !307
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !308
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !161
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #12
  store ptr %16, ptr %9, align 8, !tbaa !309
  store i16 0, ptr %16, align 2, !tbaa !240
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %0) local_unnamed_addr #4 comdat align 2 !prof !310 {
  %2 = zext i16 %0 to i64
  %3 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !252
  %5 = icmp slt i8 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712XPathScanner10scanNumberEPKtiiPNS_13ValueVectorOfIiEE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds i16, ptr %1, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !240
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !tbaa !150
  %11 = add i16 %10, -48
  %12 = icmp ult i16 %11, 10
  br i1 %12, label %13, label %29

13:                                               ; preds = %5, %24
  %14 = phi i64 [ %21, %24 ], [ %8, %5 ]
  %15 = phi i16 [ %26, %24 ], [ %10, %5 ]
  %16 = phi i32 [ %20, %24 ], [ 0, %5 ]
  %17 = zext nneg i16 %15 to i32
  %18 = mul nsw i32 %16, 10
  %19 = add nsw i32 %17, -48
  %20 = add nsw i32 %19, %18
  %21 = add nsw i64 %14, 1
  %22 = trunc i64 %21 to i32
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %66, label %24

24:                                               ; preds = %13
  %25 = getelementptr inbounds i16, ptr %1, i64 %21
  %26 = load i16, ptr %25, align 2, !tbaa !240
  %27 = add i16 %26, -48
  %28 = icmp ult i16 %27, 10
  br i1 %28, label %13, label %29, !llvm.loop !311

29:                                               ; preds = %24, %5
  %30 = phi i32 [ 0, %5 ], [ %20, %24 ]
  %31 = phi i16 [ %10, %5 ], [ %26, %24 ]
  %32 = phi i32 [ %3, %5 ], [ %22, %24 ]
  store i32 %30, ptr %6, align 4, !tbaa !150
  %33 = icmp eq i16 %31, 46
  br i1 %33, label %34, label %67

34:                                               ; preds = %29
  %35 = add nsw i32 %32, 1
  %36 = icmp slt i32 %35, %2
  br i1 %36, label %37, label %67

37:                                               ; preds = %34
  %38 = sext i32 %35 to i64
  br label %39

39:                                               ; preds = %37, %46
  %40 = phi i64 [ %38, %37 ], [ %51, %46 ]
  %41 = phi i32 [ 0, %37 ], [ %50, %46 ]
  %42 = getelementptr inbounds i16, ptr %1, i64 %40
  %43 = load i16, ptr %42, align 2, !tbaa !240
  %44 = add i16 %43, -48
  %45 = icmp ult i16 %44, 10
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = zext nneg i16 %43 to i32
  %48 = mul nsw i32 %41, 10
  %49 = add nsw i32 %47, -48
  %50 = add nsw i32 %49, %48
  %51 = add nsw i64 %40, 1
  %52 = trunc i64 %51 to i32
  %53 = icmp eq i32 %52, %2
  br i1 %53, label %56, label %39, !llvm.loop !312

54:                                               ; preds = %39
  %55 = trunc i64 %40 to i32
  br label %56

56:                                               ; preds = %46, %54
  %57 = phi i32 [ %41, %54 ], [ %50, %46 ]
  %58 = phi i32 [ %55, %54 ], [ %2, %46 ]
  store i32 %57, ptr %7, align 4, !tbaa !150
  %59 = icmp eq i32 %57, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %62 = tail call noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIiE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %61, ptr noundef nonnull @.str.3, i32 noundef 1360, i32 noundef 320, ptr noundef %62) #12
          to label %63 unwind label %64

63:                                               ; preds = %60
  tail call void @__cxa_throw(ptr nonnull %61, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %61) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  resume { ptr, i32 } %65

66:                                               ; preds = %13
  store i32 %20, ptr %6, align 4, !tbaa !150
  br label %67

67:                                               ; preds = %66, %34, %56, %29
  %68 = phi i32 [ %58, %56 ], [ %35, %34 ], [ %32, %29 ], [ %2, %66 ]
  call void @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %6) #12
  call void @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 %68
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !313 {
  store i32 0, ptr %0, align 8, !tbaa !303
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !314 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !309
  %4 = load i32, ptr %0, align 8, !tbaa !303
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !240
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712XPathScanner10scanNCNameEPKtii(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 !prof !315 {
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds i16, ptr %1, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !240
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_017isFirstNCNameCharEtt(i16 noundef zeroext %7, i16 noundef zeroext 0) #12
  br i1 %8, label %9, label %23, !prof !316

9:                                                ; preds = %4
  %10 = sext i32 %2 to i64
  %11 = add i32 %3, 1
  %12 = tail call i32 @llvm.smax.i32(i32 %2, i32 %11)
  br label %13

13:                                               ; preds = %9, %17
  %14 = phi i64 [ %5, %9 ], [ %15, %17 ]
  %15 = add nsw i64 %14, 1
  %16 = icmp slt i64 %15, %10
  br i1 %16, label %17, label %23, !prof !317

17:                                               ; preds = %13
  %18 = getelementptr inbounds i16, ptr %1, i64 %15
  %19 = load i16, ptr %18, align 2, !tbaa !240
  %20 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isNCNameCharEtt(i16 noundef zeroext %19, i16 noundef zeroext 0) #12
  br i1 %20, label %13, label %21, !prof !318, !llvm.loop !319

21:                                               ; preds = %17
  %22 = trunc i64 %15 to i32
  br label %23

23:                                               ; preds = %13, %21, %4
  %24 = phi i32 [ %3, %4 ], [ %22, %21 ], [ %12, %13 ]
  ret i32 %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !302 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !308
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !309
  %6 = load ptr, ptr %3, align 8, !tbaa !161
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #12
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_017isFirstNCNameCharEtt(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !315 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %4, label %12, !prof !316

4:                                                ; preds = %2
  %5 = zext i16 %0 to i64
  %6 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !252
  %8 = and i8 %7, 2
  %9 = icmp ne i8 %8, 0
  %10 = icmp ne i16 %0, 58
  %11 = and i1 %10, %9
  br label %12

12:                                               ; preds = %2, %4
  %13 = phi i1 [ %11, %4 ], [ false, %2 ]
  ret i1 %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isNCNameCharEtt(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !320 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %4, label %10, !prof !321

4:                                                ; preds = %2
  %5 = zext i16 %0 to i64
  %6 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !252
  %8 = and i8 %7, 1
  %9 = icmp ne i8 %8, 0
  br label %10

10:                                               ; preds = %2, %4
  %11 = phi i1 [ %9, %4 ], [ false, %2 ]
  ret i1 %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #12
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721XPathScannerForSchemaC2EPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !185 {
  tail call void @_ZN11xercesc_2_712XPathScannerC2EPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) #12
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_721XPathScannerForSchemaE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721XPathScannerForSchema8addTokenEPNS_13ValueVectorOfIiEEi(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !322 {
  %4 = alloca i32, align 4
  store i32 %2, ptr %4, align 4, !tbaa !150
  switch i32 %2, label %6 [
    i32 36, label %5
    i32 35, label %5
    i32 21, label %5
    i32 11, label %5
    i32 9, label %5
    i32 8, label %5
    i32 6, label %5
    i32 4, label %5
    i32 23, label %5
    i32 22, label %5
    i32 10, label %5
  ]

5:                                                ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  call void @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #12
  ret void

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = tail call noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIiE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #12
  invoke void @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 1405, i32 noundef 319, ptr noundef %8) #12
          to label %9 unwind label %10

9:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_714XPathExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XercesNodeTestD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !prof !180 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_714XercesNodeTestE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesNodeTest", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !167
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !161
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(56) %3) #15
  br label %9

9:                                                ; preds = %5, %1
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XercesNodeTestD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_714XercesNodeTestD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XercesStepD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !prof !180 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710XercesStepE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesStep", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !183
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !161
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  br label %9

9:                                                ; preds = %5, %1
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XercesStepD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_710XercesStepD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XercesLocationPathD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 !prof !185 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XercesLocationPathE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesLocationPath", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !186
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !161
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #15
  br label %9

9:                                                ; preds = %5, %1
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XercesLocationPathD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_718XercesLocationPathD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712XPathScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 comdat align 2 !prof !185 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712XPathScannerD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XPathScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721XPathScannerForSchemaD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XPathScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !323 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XPathExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XPathException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !149 {
  ret ptr @_ZN11xercesc_2_76XMLUni21fgXPathException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XPathException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !324
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_714XPathExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XPathExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !149 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714XPathExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_714NamespaceScope21getNamespaceForPrefixEPKti(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !327 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %23, label %5, !prof !328

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !303
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !305
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %13, label %11, !prof !329

11:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2) #12
  %12 = load i32, ptr %0, align 8, !tbaa !303
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %12, %11 ], [ %6, %5 ]
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !309
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds i16, ptr %16, i64 %17
  %19 = zext i32 %2 to i64
  %20 = shl nuw nsw i64 %19, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %18, ptr align 2 %1, i64 %20, i1 false)
  %21 = load i32, ptr %0, align 8, !tbaa !303
  %22 = add i32 %21, %2
  store i32 %22, ptr %0, align 8, !tbaa !303
  br label %24

23:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #12
  br label %24

24:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !330 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !331

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !240
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !332

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !240
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !333, !llvm.loop !334

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !303
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !305
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !335

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #12
  %21 = load i32, ptr %0, align 8, !tbaa !303
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !309
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !303
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !303
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !149 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !324
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !149 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !180 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !191
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !336
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !337

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !195
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !161
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #12
  %21 = load i32, ptr %3, align 4, !tbaa !191
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !179
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !196
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !179
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !179
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !338

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !195
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !196
  %49 = load ptr, ptr %46, align 8, !tbaa !161
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #12
  store ptr %20, ptr %47, align 8, !tbaa !196
  store i32 %12, ptr %6, align 8, !tbaa !336
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #12
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !149 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !324
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !149 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !154 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !159
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !246
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %41, !prof !339

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !247
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 2
  %18 = load ptr, ptr %15, align 8, !tbaa !161
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #12
  %22 = load i32, ptr %3, align 4, !tbaa !159
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !155
  br i1 %23, label %26, label %32, !prof !340

26:                                               ; preds = %32, %9
  %27 = load ptr, ptr %14, align 8, !tbaa !247
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %27, align 8, !tbaa !161
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %25) #12
  store ptr %21, ptr %28, align 8, !tbaa !155
  store i32 %13, ptr %6, align 8, !tbaa !246
  br label %41

32:                                               ; preds = %9, %32
  %33 = phi i64 [ %37, %32 ], [ 0, %9 ]
  %34 = getelementptr inbounds i32, ptr %25, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !150
  %36 = getelementptr inbounds i32, ptr %21, i64 %33
  store i32 %35, ptr %36, align 4, !tbaa !150
  %37 = add nuw nsw i64 %33, 1
  %38 = load i32, ptr %3, align 4, !tbaa !159
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %32, label %26, !prof !341, !llvm.loop !342

41:                                               ; preds = %2, %26
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !185 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !343
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !191
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !336
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !196
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !195
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !161
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #12
  store ptr %16, ptr %9, align 8, !tbaa !196
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19, !prof !248

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !196
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !179
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !prof !344, !llvm.loop !345
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_10XercesStepEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !343, !range !346, !noundef !226
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5, !prof !208

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !191
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9, !prof !248

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !196
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !179
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !161
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(24) %16) #15
  %22 = load i32, ptr %6, align 4, !tbaa !191
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !prof !347, !llvm.loop !348

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !195
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !196
  %33 = load ptr, ptr %30, align 8, !tbaa !161
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #12
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !191
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !195
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.5, i32 noundef 67, i32 noundef 116, ptr noundef %10) #12
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !343, !range !346, !noundef !226
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !196
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !179
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !161
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(24) %25) #15
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !196
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !149 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !191
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !191
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !343, !range !346, !noundef !226
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !196
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !179
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !161
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(24) %17) #15
  %23 = load ptr, ptr %7, align 8, !tbaa !196
  %24 = load i32, ptr %2, align 4, !tbaa !191
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !179
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !349
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !191
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !195
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 144, i32 noundef 116, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !343, !range !346, !noundef !226
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !196
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !179
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !161
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(24) %22) #15
  %28 = load i32, ptr %3, align 4, !tbaa !191
  br label %29

29:                                               ; preds = %17, %24, %13
  %30 = phi i32 [ %4, %17 ], [ %28, %24 ], [ %4, %13 ]
  %31 = add i32 %30, -1
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = icmp ugt i32 %31, %1
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = zext i32 %31 to i64
  br label %46

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !196
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !196
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !196
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !179
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !179
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !350

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !179
  store i32 %31, ptr %3, align 4, !tbaa !191
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !149 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !191
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !191
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !343, !range !346, !noundef !226
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !196
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !179
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !161
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(24) %15) #15
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !149 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !343, !range !346, !noundef !226
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !191
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !196
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !179
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !161
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(24) %16) #15
  %22 = load i32, ptr %6, align 4, !tbaa !191
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !351

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !195
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !196
  %33 = load ptr, ptr %30, align 8, !tbaa !161
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !185 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !185 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !352
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !229
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !353
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !234
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !233
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !161
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #12
  store ptr %16, ptr %9, align 8, !tbaa !234
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19, !prof !248

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !234
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !179
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !prof !354, !llvm.loop !355
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !161
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !352, !range !346, !noundef !226
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5, !prof !208

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !229
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9, !prof !248

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !234
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !179
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !161
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(16) %16) #15
  %22 = load i32, ptr %6, align 4, !tbaa !229
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !prof !248, !llvm.loop !356

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !233
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !234
  %33 = load ptr, ptr %30, align 8, !tbaa !161
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #12
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !229
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !233
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.5, i32 noundef 67, i32 noundef 116, ptr noundef %10) #12
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !352, !range !346, !noundef !226
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !234
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !179
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !161
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(16) %25) #15
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !234
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !149 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !229
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !229
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !352, !range !346, !noundef !226
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !234
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !179
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !161
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(16) %17) #15
  %23 = load ptr, ptr %7, align 8, !tbaa !234
  %24 = load i32, ptr %2, align 4, !tbaa !229
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !179
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !357
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !229
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !233
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 144, i32 noundef 116, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !352, !range !346, !noundef !226
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !234
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !179
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !161
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(16) %22) #15
  %28 = load i32, ptr %3, align 4, !tbaa !229
  br label %29

29:                                               ; preds = %17, %24, %13
  %30 = phi i32 [ %4, %17 ], [ %28, %24 ], [ %4, %13 ]
  %31 = add i32 %30, -1
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = icmp ugt i32 %31, %1
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = zext i32 %31 to i64
  br label %46

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !234
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !234
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !234
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !179
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !179
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !358

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !179
  store i32 %31, ptr %3, align 4, !tbaa !229
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !149 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !229
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !229
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !352, !range !346, !noundef !226
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !234
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !179
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !161
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(16) %15) #15
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !149 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !352, !range !346, !noundef !226
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !229
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !234
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !179
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !161
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(16) %16) #15
  %22 = load i32, ptr %6, align 4, !tbaa !229
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !359

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !233
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !234
  %33 = load ptr, ptr %30, align 8, !tbaa !161
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !185 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !185 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !229
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !353
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !208

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !233
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !161
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #12
  %21 = load i32, ptr %3, align 4, !tbaa !229
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !179
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !234
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !179
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !179
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !360

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !233
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !234
  %49 = load ptr, ptr %46, align 8, !tbaa !161
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #12
  store ptr %20, ptr %47, align 8, !tbaa !234
  store i32 %12, ptr %6, align 8, !tbaa !353
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 !prof !185 {
  %2 = load ptr, ptr %0, align 8, !tbaa !294
  store ptr null, ptr %0, align 8, !tbaa !294
  ret ptr %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!148}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
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
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
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
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147}
!35 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi, ptr @_ZN11xercesc_2_713ValueVectorOfIiE19ensureExtraCapacityEj, i64 15025150}
!36 = !{ptr @_ZN11xercesc_2_714XercesNodeTestC2EsPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 34}
!37 = !{ptr @_ZN11xercesc_2_714XercesNodeTestC2EsPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 34}
!38 = !{ptr @_ZN11xercesc_2_714XercesNodeTestC2EsPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 34}
!39 = !{ptr @_ZN11xercesc_2_714XercesNodeTestC2EsPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE, i64 34}
!40 = !{ptr @_ZN11xercesc_2_714XercesNodeTestC2EPKNS_5QNameE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 62}
!41 = !{ptr @_ZN11xercesc_2_714XercesNodeTestC2EPKNS_5QNameE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 62}
!42 = !{ptr @_ZN11xercesc_2_714XercesNodeTestC2EPKNS_5QNameE, ptr @_ZNK11xercesc_2_75QName16getMemoryManagerEv, i64 62}
!43 = !{ptr @_ZN11xercesc_2_714XercesNodeTestC2EPKNS_5QNameE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 62}
!44 = !{ptr @_ZN11xercesc_2_714XercesNodeTestC2EPKNS_5QNameE, ptr @_ZN11xercesc_2_75QNameC1ERKS0_, i64 62}
!45 = !{ptr @_ZN11xercesc_2_710XercesStepC2EtPNS_14XercesNodeTestE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 96}
!46 = !{ptr @_ZN11xercesc_2_710XercesStepC2EtPNS_14XercesNodeTestE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 96}
!47 = !{ptr @_ZN11xercesc_2_718XercesLocationPathC2EPNS_11RefVectorOfINS_10XercesStepEEE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 32}
!48 = !{ptr @_ZN11xercesc_2_718XercesLocationPathC2EPNS_11RefVectorOfINS_10XercesStepEEE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 32}
!49 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!50 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!51 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj, ptr @__cxa_throw, i64 1}
!52 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!53 = !{ptr @_ZN11xercesc_2_711XercesXPathC2EPKtPNS_13XMLStringPoolEPNS_14NamespaceScopeEjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 32}
!54 = !{ptr @_ZN11xercesc_2_711XercesXPathC2EPKtPNS_13XMLStringPoolEPNS_14NamespaceScopeEjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 32}
!55 = !{ptr @_ZN11xercesc_2_711XercesXPathC2EPKtPNS_13XMLStringPoolEPNS_14NamespaceScopeEjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_11XercesXPathEEC2EPS1_MS1_FvvE, i64 32}
!56 = !{ptr @_ZN11xercesc_2_711XercesXPathC2EPKtPNS_13XMLStringPoolEPNS_14NamespaceScopeEjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 32}
!57 = !{ptr @_ZN11xercesc_2_711XercesXPathC2EPKtPNS_13XMLStringPoolEPNS_14NamespaceScopeEjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, i64 32}
!58 = !{ptr @_ZN11xercesc_2_711XercesXPathC2EPKtPNS_13XMLStringPoolEPNS_14NamespaceScopeEjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_711XercesXPath26checkForSelectedAttributesEv, i64 16}
!59 = !{ptr @_ZN11xercesc_2_711XercesXPathC2EPKtPNS_13XMLStringPoolEPNS_14NamespaceScopeEjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_11XercesXPathEE7releaseEv, i64 32}
!60 = !{ptr @_ZN11xercesc_2_711XercesXPathC2EPKtPNS_13XMLStringPoolEPNS_14NamespaceScopeEjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_11XercesXPathEED2Ev, i64 32}
!61 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!62 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 32}
!63 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_713ValueVectorOfIiEC2EjPNS_13MemoryManagerEb, i64 31}
!64 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_721XPathScannerForSchemaC2EPNS_13XMLStringPoolE, i64 31}
!65 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_712XPathScanner14scanExpressionEPKtiiPNS_13ValueVectorOfIiEE, i64 31}
!66 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZNK11xercesc_2_713ValueVectorOfIiE4sizeEv, i64 31}
!67 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 220}
!68 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEEC2EjbPNS_13MemoryManagerE, i64 32}
!69 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEEC2EPS3_, i64 31}
!70 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEEC2EjbPNS_13MemoryManagerE, i64 30}
!71 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE4sizeEv, i64 24}
!72 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, i64 227}
!73 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @__cxa_throw, i64 3}
!74 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_718XercesLocationPathC2EPNS_11RefVectorOfINS_10XercesStepEEE, i64 24}
!75 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE10addElementEPS1_, i64 24}
!76 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEE6orphanEv, i64 24}
!77 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEE5resetEPS3_, i64 1}
!78 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @__cxa_allocate_exception, i64 11}
!79 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 10}
!80 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @__cxa_free_exception, i64 1}
!81 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_714XercesNodeTestC2EsPNS_13MemoryManagerE, i64 29}
!82 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_710XercesStepC2EtPNS_14XercesNodeTestE, i64 67}
!83 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE10addElementEPS1_, i64 67}
!84 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE, i64 37}
!85 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_714XercesNodeTestC2EPKNS_5QNameE, i64 37}
!86 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_75QNameD1Ev, i64 37}
!87 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZNK11xercesc_2_714NamespaceScope21getNamespaceForPrefixEPKt, i64 32}
!88 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE, i64 1}
!89 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_714XercesNodeTestC2EPKtjPNS_13MemoryManagerE, i64 1}
!90 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEED2Ev, i64 31}
!91 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_712XPathScannerD2Ev, i64 31}
!92 = !{ptr @_ZN11xercesc_2_711XercesXPath15parseExpressionEPNS_13XMLStringPoolEPNS_14NamespaceScopeE, ptr @_ZN11xercesc_2_713ValueVectorOfIiED2Ev, i64 31}
!93 = !{ptr @_ZN11xercesc_2_711XercesXPath26checkForSelectedAttributesEv, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE4sizeEv, i64 15}
!94 = !{ptr @_ZN11xercesc_2_711XercesXPath26checkForSelectedAttributesEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj, i64 15}
!95 = !{ptr @_ZN11xercesc_2_711XercesXPath26checkForSelectedAttributesEv, ptr @_ZNK11xercesc_2_718XercesLocationPath11getStepSizeEv, i64 15}
!96 = !{ptr @_ZN11xercesc_2_711XercesXPath26checkForSelectedAttributesEv, ptr @_ZNK11xercesc_2_718XercesLocationPath7getStepEj, i64 14}
!97 = !{ptr @_ZN11xercesc_2_711XercesXPath26checkForSelectedAttributesEv, ptr @_ZNK11xercesc_2_710XercesStep11getAxisTypeEv, i64 14}
!98 = !{ptr @_ZN11xercesc_2_711XercesXPath26checkForSelectedAttributesEv, ptr @__cxa_allocate_exception, i64 1}
!99 = !{ptr @_ZN11xercesc_2_711XercesXPath26checkForSelectedAttributesEv, ptr @_ZN11xercesc_2_714XPathExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!100 = !{ptr @_ZN11xercesc_2_711XercesXPathD2Ev, ptr @_ZN11xercesc_2_711XercesXPath7cleanUpEv, i64 32}
!101 = !{ptr @_ZN11xercesc_2_711XercesXPathD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 32}
!102 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!103 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!104 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj, ptr @__cxa_throw, i64 1}
!105 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!106 = !{ptr @_ZNK11xercesc_2_718XercesLocationPath11getStepSizeEv, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE4sizeEv, i64 1104824}
!107 = !{ptr @_ZNK11xercesc_2_718XercesLocationPath7getStepEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE9elementAtEj, i64 4691882}
!108 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 158644}
!109 = !{ptr @_ZN11xercesc_2_712XPathScanner14scanExpressionEPKtiiPNS_13ValueVectorOfIiEE, ptr @_ZNK11xercesc_2_713ValueVectorOfIiE16getMemoryManagerEv, i64 32}
!110 = !{ptr @_ZN11xercesc_2_712XPathScanner14scanExpressionEPKtiiPNS_13ValueVectorOfIiEE, ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, i64 32}
!111 = !{ptr @_ZN11xercesc_2_712XPathScanner14scanExpressionEPKtiiPNS_13ValueVectorOfIiEE, ptr @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt, i64 240}
!112 = !{ptr @_ZN11xercesc_2_712XPathScanner14scanExpressionEPKtiiPNS_13ValueVectorOfIiEE, ptr @_ZN11xercesc_2_712XPathScanner10scanNumberEPKtiiPNS_13ValueVectorOfIiEE, i64 1}
!113 = !{ptr @_ZN11xercesc_2_712XPathScanner14scanExpressionEPKtiiPNS_13ValueVectorOfIiEE, ptr @_ZN11xercesc_2_712XPathScanner10scanNCNameEPKtii, i64 148}
!114 = !{ptr @_ZN11xercesc_2_712XPathScanner14scanExpressionEPKtiiPNS_13ValueVectorOfIiEE, ptr @_ZN11xercesc_2_79XMLBuffer3setEPKtj, i64 146}
!115 = !{ptr @_ZN11xercesc_2_712XPathScanner14scanExpressionEPKtiiPNS_13ValueVectorOfIiEE, ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv, i64 146}
!116 = !{ptr @_ZN11xercesc_2_712XPathScanner14scanExpressionEPKtiiPNS_13ValueVectorOfIiEE, ptr @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi, i64 161}
!117 = !{ptr @_ZN11xercesc_2_712XPathScanner14scanExpressionEPKtiiPNS_13ValueVectorOfIiEE, ptr @_ZN11xercesc_2_79XMLBufferD2Ev, i64 32}
!118 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEC2EjbPNS_13MemoryManagerE, i64 32}
!119 = !{ptr @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEEC2EPS3_, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 32}
!120 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEC2EjbPNS_13MemoryManagerE, i64 32}
!121 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!122 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!123 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, ptr @__cxa_throw, i64 1}
!124 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIiE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!125 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE10addElementEPS1_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEE19ensureExtraCapacityEj, i64 32}
!126 = !{ptr @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEE6orphanEv, ptr @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEE7releaseEv, i64 32}
!127 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE10addElementEPS1_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEE19ensureExtraCapacityEj, i64 96}
!128 = !{ptr @_ZNK11xercesc_2_714NamespaceScope21getNamespaceForPrefixEPKt, ptr @_ZNK11xercesc_2_714NamespaceScope21getNamespaceForPrefixEPKti, i64 46}
!129 = !{ptr @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEED2Ev, ptr @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEE5resetEPS3_, i64 32}
!130 = !{ptr @_ZN11xercesc_2_712XPathScannerC2EPNS_13XMLStringPoolE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 32}
!131 = !{ptr @_ZN11xercesc_2_712XPathScannerC2EPNS_13XMLStringPoolE, ptr @_ZN11xercesc_2_712XPathScanner4initEv, i64 32}
!132 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!133 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, i64 695}
!134 = !{ptr @_ZN11xercesc_2_712XPathScanner10scanNCNameEPKtii, ptr @_ZN11xercesc_2_710XMLChar1_017isFirstNCNameCharEtt, i64 108}
!135 = !{ptr @_ZN11xercesc_2_712XPathScanner10scanNCNameEPKtii, ptr @_ZN11xercesc_2_710XMLChar1_012isNCNameCharEtt, i64 599}
!136 = !{ptr @_ZN11xercesc_2_721XPathScannerForSchemaC2EPNS_13XMLStringPoolE, ptr @_ZN11xercesc_2_712XPathScannerC2EPNS_13XMLStringPoolE, i64 32}
!137 = !{ptr @_ZN11xercesc_2_721XPathScannerForSchema8addTokenEPNS_13ValueVectorOfIiEEi, ptr @_ZN11xercesc_2_713ValueVectorOfIiE10addElementERKi, i64 176}
!138 = !{ptr @_ZN11xercesc_2_714XercesNodeTestD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 96}
!139 = !{ptr @_ZN11xercesc_2_710XercesStepD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 96}
!140 = !{ptr @_ZN11xercesc_2_718XercesLocationPathD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 32}
!141 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 5}
!142 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 1}
!143 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!144 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 32}
!145 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_10XercesStepEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEED2Ev, i64 32}
!146 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 32}
!147 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_18XercesLocationPathEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEED2Ev, i64 32}
!148 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!149 = !{!"function_entry_count", i64 0}
!150 = !{!151, !151, i64 0}
!151 = !{!"int", !152, i64 0}
!152 = !{!"omnipotent char", !153, i64 0}
!153 = !{!"Simple C++ TBAA"}
!154 = !{!"function_entry_count", i64 15025150}
!155 = !{!156, !158, i64 16}
!156 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIiEE", !157, i64 0, !151, i64 4, !151, i64 8, !158, i64 16, !158, i64 24}
!157 = !{!"bool", !152, i64 0}
!158 = !{!"any pointer", !152, i64 0}
!159 = !{!156, !151, i64 4}
!160 = !{!"function_entry_count", i64 34}
!161 = !{!162, !162, i64 0}
!162 = !{!"vtable pointer", !153, i64 0}
!163 = !{!164, !166, i64 8}
!164 = !{!"_ZTSN11xercesc_2_714XercesNodeTestE", !165, i64 0, !166, i64 8, !158, i64 16}
!165 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!166 = !{!"short", !152, i64 0}
!167 = !{!164, !158, i64 16}
!168 = !{!"function_entry_count", i64 1068727}
!169 = !{!"function_entry_count", i64 5836268}
!170 = !{!"function_entry_count", i64 62}
!171 = !{!172, !158, i64 48}
!172 = !{!"_ZTSN11xercesc_2_75QNameE", !165, i64 0, !151, i64 8, !151, i64 12, !151, i64 16, !151, i64 20, !158, i64 24, !158, i64 32, !158, i64 40, !158, i64 48}
!173 = !{!"function_entry_count", i64 76}
!174 = !{!172, !151, i64 20}
!175 = !{!"function_entry_count", i64 447}
!176 = !{!177, !166, i64 0}
!177 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !166, i64 0, !166, i64 2, !158, i64 8, !158, i64 16, !158, i64 24, !178, i64 32, !178, i64 40, !158, i64 48, !158, i64 56, !158, i64 64, !158, i64 72, !158, i64 80, !158, i64 88, !151, i64 96}
!178 = !{!"long", !152, i64 0}
!179 = !{!158, !158, i64 0}
!180 = !{!"function_entry_count", i64 96}
!181 = !{!182, !166, i64 8}
!182 = !{!"_ZTSN11xercesc_2_710XercesStepE", !165, i64 0, !166, i64 8, !158, i64 16}
!183 = !{!182, !158, i64 16}
!184 = !{!"function_entry_count", i64 1105281}
!185 = !{!"function_entry_count", i64 32}
!186 = !{!187, !158, i64 8}
!187 = !{!"_ZTSN11xercesc_2_718XercesLocationPathE", !165, i64 0, !158, i64 8}
!188 = distinct !{!188, !189}
!189 = !{!"llvm.loop.mustprogress"}
!190 = !{!"function_entry_count", i64 1104857}
!191 = !{!192, !151, i64 12}
!192 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_10XercesStepEEE", !157, i64 8, !151, i64 12, !151, i64 16, !158, i64 24, !158, i64 32}
!193 = !{!"function_entry_count", i64 4691883}
!194 = !{!"branch_weights", i32 4691884, i32 1}
!195 = !{!192, !158, i64 32}
!196 = !{!192, !158, i64 24}
!197 = !{!198, !151, i64 8}
!198 = !{!"_ZTSN11xercesc_2_711XercesXPathE", !165, i64 0, !151, i64 8, !158, i64 16, !158, i64 24, !158, i64 32}
!199 = !{!198, !158, i64 32}
!200 = !{!198, !158, i64 16}
!201 = !{!"branch_weights", i32 17, i32 17}
!202 = !{!198, !158, i64 24}
!203 = !{!204, !158, i64 0}
!204 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_11XercesXPathEEE", !158, i64 0, !152, i64 8}
!205 = !{!204, !152, i64 8}
!206 = !{!"function_entry_count", i64 558789}
!207 = !{!"branch_weights", i32 158605, i32 400186}
!208 = !{!"branch_weights", i32 1, i32 33}
!209 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 17, i32 1, i32 1, i32 3, i32 1, i32 47, i32 33, i32 1, i32 65}
!210 = !{!"branch_weights", i32 1, i32 17}
!211 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1}
!212 = !{!"branch_weights", i32 17, i32 307}
!213 = !{!"branch_weights", i32 1, i32 71}
!214 = !{!"branch_weights", i32 2209, i32 95}
!215 = !{!"branch_weights", i32 2209, i32 108383}
!216 = !{!"branch_weights", i32 1, i32 47}
!217 = !{!"branch_weights", i32 33, i32 1}
!218 = !{!"branch_weights", i32 1, i32 65}
!219 = !{!"branch_weights", i32 65, i32 1}
!220 = !{!"branch_weights", i32 513, i32 131}
!221 = distinct !{!221, !189}
!222 = !{!"function_entry_count", i64 16}
!223 = !{!"branch_weights", i32 0, i32 -2147483648}
!224 = !{!"branch_weights", i32 135, i32 1}
!225 = distinct !{!225, !189}
!226 = !{}
!227 = distinct !{!227, !189}
!228 = !{!"function_entry_count", i64 158625}
!229 = !{!230, !151, i64 12}
!230 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_18XercesLocationPathEEE", !157, i64 8, !151, i64 12, !151, i64 16, !158, i64 24, !158, i64 32}
!231 = !{!"function_entry_count", i64 1104825}
!232 = !{!"branch_weights", i32 1104826, i32 1}
!233 = !{!230, !158, i64 32}
!234 = !{!230, !158, i64 24}
!235 = !{!"branch_weights", i32 1, i32 1104826}
!236 = !{!"branch_weights", i32 1, i32 4691884}
!237 = !{!"function_entry_count", i64 3587090}
!238 = !{!"function_entry_count", i64 2453164456}
!239 = !{!"branch_weights", i32 1, i32 -1841802839}
!240 = !{!166, !166, i64 0}
!241 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!242 = !{!"branch_weights", i32 408669070, i32 -279908794}
!243 = distinct !{!243, !189}
!244 = !{!"function_entry_count", i64 158644}
!245 = !{!156, !157, i64 0}
!246 = !{!156, !151, i64 8}
!247 = !{!156, !158, i64 24}
!248 = !{!"branch_weights", i32 1, i32 131}
!249 = !{!"branch_weights", i32 1, i32 177}
!250 = distinct !{!250, !189}
!251 = !{!"branch_weights", i32 11687499, i32 2135796149}
!252 = !{!152, !152, i64 0}
!253 = !{!"branch_weights", i32 6574683, i32 6574683, i32 6574683, i32 6574683, i32 6574683, i32 216964551, i32 111769617, i32 6574683, i32 6574683, i32 427354418, i32 6574683, i32 6574683, i32 6574683, i32 6574683, i32 6574683, i32 6574683, i32 6574683, i32 6574683, i32 6574683, i32 6574683, i32 19724050, i32 419967133, i32 419967133, i32 419967133}
!254 = !{!"branch_weights", i32 1, i32 67}
!255 = !{!"branch_weights", i32 1, i32 66, i32 1}
!256 = distinct !{!256, !189}
!257 = distinct !{!257, !189}
!258 = !{!259, !158, i64 96}
!259 = !{!"_ZTSN11xercesc_2_712XPathScannerE", !151, i64 8, !151, i64 12, !151, i64 16, !151, i64 20, !151, i64 24, !151, i64 28, !151, i64 32, !151, i64 36, !151, i64 40, !151, i64 44, !151, i64 48, !151, i64 52, !151, i64 56, !151, i64 60, !151, i64 64, !151, i64 68, !151, i64 72, !151, i64 76, !151, i64 80, !151, i64 84, !151, i64 88, !158, i64 96}
!260 = !{!"branch_weights", i32 3, i32 1}
!261 = !{!"branch_weights", i32 1, i32 63}
!262 = !{!"branch_weights", i32 47, i32 17}
!263 = !{!"branch_weights", i32 2209, i32 48, i32 47}
!264 = !{!"branch_weights", i32 31, i32 17}
!265 = !{!"branch_weights", i32 1, i32 62}
!266 = distinct !{!266, !189}
!267 = !{!"branch_weights", i32 0, i32 1}
!268 = !{!"branch_weights", i32 63, i32 1}
!269 = !{!259, !151, i64 8}
!270 = !{!259, !151, i64 12}
!271 = !{!259, !151, i64 16}
!272 = !{!259, !151, i64 20}
!273 = !{!"branch_weights", i32 127, i32 1}
!274 = !{!259, !151, i64 24}
!275 = !{!259, !151, i64 28}
!276 = !{!259, !151, i64 32}
!277 = !{!259, !151, i64 36}
!278 = !{!259, !151, i64 40}
!279 = !{!259, !151, i64 44}
!280 = !{!259, !151, i64 48}
!281 = !{!259, !151, i64 52}
!282 = !{!259, !151, i64 56}
!283 = !{!259, !151, i64 60}
!284 = !{!259, !151, i64 64}
!285 = !{!259, !151, i64 68}
!286 = !{!259, !151, i64 72}
!287 = !{!259, !151, i64 76}
!288 = !{!259, !151, i64 80}
!289 = !{!259, !151, i64 84}
!290 = !{!259, !151, i64 88}
!291 = !{!"branch_weights", i32 380983023, i32 1766500625}
!292 = distinct !{!292, !189}
!293 = !{!"function_entry_count", i64 15857793}
!294 = !{!295, !158, i64 0}
!295 = !{!"_ZTSN11xercesc_2_77JanitorINS_11RefVectorOfINS_10XercesStepEEEEE", !158, i64 0}
!296 = !{!"function_entry_count", i64 15025182}
!297 = !{!"branch_weights", i32 15025183, i32 1}
!298 = !{!"function_entry_count", i64 46}
!299 = !{!300, !151, i64 8}
!300 = !{!"_ZTSN11xercesc_2_714NamespaceScopeE", !151, i64 0, !151, i64 4, !151, i64 8, !301, i64 16, !158, i64 56, !158, i64 64}
!301 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !165, i64 0, !158, i64 8, !158, i64 16, !158, i64 24, !151, i64 32, !151, i64 36}
!302 = !{!"function_entry_count", i64 496321}
!303 = !{!304, !151, i64 0}
!304 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !151, i64 0, !151, i64 4, !151, i64 8, !157, i64 12, !158, i64 16, !158, i64 24, !158, i64 32}
!305 = !{!304, !151, i64 4}
!306 = !{!304, !151, i64 8}
!307 = !{!304, !157, i64 12}
!308 = !{!304, !158, i64 16}
!309 = !{!304, !158, i64 32}
!310 = !{!"function_entry_count", i64 196710}
!311 = distinct !{!311, !189}
!312 = distinct !{!312, !189}
!313 = !{!"function_entry_count", i64 695}
!314 = !{!"function_entry_count", i64 10769804}
!315 = !{!"function_entry_count", i64 108}
!316 = !{!"branch_weights", i32 109, i32 1}
!317 = !{!"branch_weights", i32 615, i32 33}
!318 = !{!"branch_weights", i32 539, i32 77}
!319 = distinct !{!319, !189}
!320 = !{!"function_entry_count", i64 614}
!321 = !{!"branch_weights", i32 615, i32 1}
!322 = !{!"function_entry_count", i64 176}
!323 = !{!"function_entry_count", i64 1069174}
!324 = !{!325, !158, i64 40}
!325 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !326, i64 8, !158, i64 16, !151, i64 24, !158, i64 32, !158, i64 40}
!326 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !152, i64 0}
!327 = !{!"function_entry_count", i64 2718768}
!328 = !{!"branch_weights", i32 1, i32 2718769}
!329 = !{!"branch_weights", i32 2718765, i32 5}
!330 = !{!"function_entry_count", i64 789922}
!331 = !{!"branch_weights", i32 1, i32 789923}
!332 = !{!"branch_weights", i32 285, i32 789639}
!333 = !{!"branch_weights", i32 789639, i32 41628304}
!334 = distinct !{!334, !189}
!335 = !{!"branch_weights", i32 789637, i32 3}
!336 = !{!192, !151, i64 16}
!337 = !{!"branch_weights", i32 1, i32 97}
!338 = distinct !{!338, !189}
!339 = !{!"branch_weights", i32 1581, i32 15023571}
!340 = !{!"branch_weights", i32 1, i32 1580}
!341 = !{!"branch_weights", i32 11127, i32 1580}
!342 = distinct !{!342, !189}
!343 = !{!192, !157, i64 8}
!344 = !{!"branch_weights", i32 131, i32 1921}
!345 = distinct !{!345, !189}
!346 = !{i8 0, i8 2}
!347 = !{!"branch_weights", i32 257, i32 131}
!348 = distinct !{!348, !189}
!349 = distinct !{!349, !189}
!350 = distinct !{!350, !189}
!351 = distinct !{!351, !189}
!352 = !{!230, !157, i64 8}
!353 = !{!230, !151, i64 16}
!354 = !{!"branch_weights", i32 131, i32 897}
!355 = distinct !{!355, !189}
!356 = distinct !{!356, !189}
!357 = distinct !{!357, !189}
!358 = distinct !{!358, !189}
!359 = distinct !{!359, !189}
!360 = distinct !{!360, !189}

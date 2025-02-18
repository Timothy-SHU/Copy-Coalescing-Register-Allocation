; ModuleID = 'DTDScanner.cpp'
source_filename = "DTDScanner.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ContentSpecNode" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::DTDScanner" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::NameIdPool" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::EndOfEntityException" = type <{ ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::DTDGrammar" = type <{ %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::DTDElementDecl" = type { %"class.xercesc_2_7::XMLElementDecl.base", i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DTDEntityDecl" = type <{ %"class.xercesc_2_7::XMLEntityDecl", i8, i8, i8, [5 x i8] }>
%"struct.xercesc_2_7::NameIdPoolBucketElem" = type { ptr, ptr }
%"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo" = type { ptr, ptr, i64, i64 }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_713DTDEntityDeclD0Ev = comdat any

$_ZN11xercesc_2_715ContentSpecNodeD0Ev = comdat any

$_ZN11xercesc_2_715ContentSpecNodeD2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_ = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKtj = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZTVN11xercesc_2_715ContentSpecNodeE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTSN11xercesc_2_720EndOfEntityExceptionE = comdat any

$_ZTIN11xercesc_2_720EndOfEntityExceptionE = comdat any

$_ZTSN11xercesc_2_77XMLErrs5CodesE = comdat any

$_ZTIN11xercesc_2_77XMLErrs5CodesE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTVN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTSN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTIN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTSN11xercesc_2_715ContentSpecNodeE = comdat any

$_ZTIN11xercesc_2_715ContentSpecNodeE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_715ContentSpecNodeE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715ContentSpecNodeE, ptr @_ZN11xercesc_2_715ContentSpecNodeD2Ev, ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, ptr @_ZNK11xercesc_2_715ContentSpecNode14isSerializableEv, ptr @_ZN11xercesc_2_715ContentSpecNode9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_715ContentSpecNode12getProtoTypeEv] }, comdat, align 8
@_ZTVN11xercesc_2_710DTDScannerE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710DTDScannerE, ptr @_ZN11xercesc_2_710DTDScannerD2Ev, ptr @_ZN11xercesc_2_710DTDScannerD0Ev] }, align 8
@.str = private unnamed_addr constant [15 x i8] c"DTDScanner.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni13fgCDATAStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni10fgIDStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni11fgRefStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgEntitStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni11fgIESStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgNmTokenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgNotationStringE = external constant [0 x i16], align 2
@__const._ZN11xercesc_2_710DTDScanner10scanAttDefERNS_14DTDElementDeclERNS_9XMLBufferE.fgXMLSpace = private unnamed_addr constant [10 x i16] [i16 120, i16 109, i16 108, i16 58, i16 115, i16 112, i16 97, i16 99, i16 101, i16 0], align 16
@__const._ZN11xercesc_2_710DTDScanner10scanAttDefERNS_14DTDElementDeclERNS_9XMLBufferE.fgPreserve = private unnamed_addr constant [9 x i16] [i16 112, i16 114, i16 101, i16 115, i16 101, i16 114, i16 118, i16 101, i16 0], align 16
@__const._ZN11xercesc_2_710DTDScanner10scanAttDefERNS_14DTDElementDeclERNS_9XMLBufferE.fgDefault = private unnamed_addr constant [8 x i16] [i16 100, i16 101, i16 102, i16 97, i16 117, i16 108, i16 116, i16 0], align 16
@_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722UnexpectedEOFExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720EndOfEntityExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720EndOfEntityExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_77XMLErrs5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMLErrs5CodesE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni13fgEmptyStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni11fgAnyStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgPCDATAStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgRequiredStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgImpliedStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgFixedStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgNDATAStringE = external constant [0 x i16], align 2
@_ZZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbbE6toSkip = internal constant [4 x i16] [i16 37, i16 93, i16 60, i16 0], align 2
@_ZN11xercesc_2_76XMLUni13fgSysIDStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgPubIDStringE = external constant [0 x i16], align 2
@_ZZN11xercesc_2_710DTDScanner18scanInternalSubsetEvE6toSkip = internal constant [4 x i16] [i16 37, i16 93, i16 60, i16 0], align 2
@_ZN11xercesc_2_76XMLUni15fgIncludeStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgIgnoreStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgAttListStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgElemStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgEntityStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_76XMLUni15fgVersionStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgVersion1_1E = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgVersion1_0E = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgEncodingStringE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTVN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713DTDEntityDeclE, ptr @_ZN11xercesc_2_713XMLEntityDeclD2Ev, ptr @_ZN11xercesc_2_713DTDEntityDeclD0Ev, ptr @_ZNK11xercesc_2_713DTDEntityDecl14isSerializableEv, ptr @_ZN11xercesc_2_713DTDEntityDecl9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_713DTDEntityDecl12getProtoTypeEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv] }, comdat, align 8
@_ZTSN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713DTDEntityDeclE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEntityDeclE = external constant ptr
@_ZTIN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713DTDEntityDeclE, ptr @_ZTIN11xercesc_2_713XMLEntityDeclE }, comdat, align 8
@_ZTSN11xercesc_2_715ContentSpecNodeE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715ContentSpecNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_715ContentSpecNodeE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715ContentSpecNodeE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTSN11xercesc_2_710DTDScannerE = dso_local constant [28 x i8] c"N11xercesc_2_710DTDScannerE\00", align 1
@_ZTIN11xercesc_2_710DTDScannerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710DTDScannerE, ptr @_ZTIN11xercesc_2_77XMemoryE }, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev, ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv, ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"./xercesc/util/NameIdPool.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_710DTDScannerC1EPNS_10DTDGrammarEPNS_14DocTypeHandlerEPNS_13MemoryManagerES6_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_710DTDScannerC2EPNS_10DTDGrammarEPNS_14DocTypeHandlerEPNS_13MemoryManagerES6_
@_ZN11xercesc_2_710DTDScannerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_710DTDScannerD2Ev

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat !prof !49 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DTDEntityDeclD0Ev(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #2 comdat align 2 !prof !50 {
  tail call void @_ZN11xercesc_2_713XMLEntityDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(75) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_713XMLEntityDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 !prof !51 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 4, !tbaa !55, !range !63, !noundef !64
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5, !prof !65

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !67

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !52
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(64) %7) #13, !prof !68
  br label %13

13:                                               ; preds = %9, %5, %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  %15 = load i8, ptr %14, align 1, !tbaa !69, !range !63, !noundef !64
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17, !prof !70

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !72

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !52
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(64) %19) #13, !prof !73
  br label %25

25:                                               ; preds = %21, %17, %13
  %26 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !74
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29, !prof !75

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !52
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(56) %27) #13, !prof !76
  br label %33

33:                                               ; preds = %25, %29
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 !prof !49 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 4, !tbaa !55, !range !63, !noundef !64
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !52
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(64) %7) #13
  br label %13

13:                                               ; preds = %5, %9, %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  %15 = load i8, ptr %14, align 1, !tbaa !69, !range !63, !noundef !64
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !52
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(64) %19) #13
  br label %25

25:                                               ; preds = %17, %21, %13
  %26 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !74
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !52
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(56) %27) #13
  br label %33

33:                                               ; preds = %29, %25
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710DTDScannerC2EPNS_10DTDGrammarEPNS_14DocTypeHandlerEPNS_13MemoryManagerES6_(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_710DTDScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !77
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  store ptr %3, ptr %7, align 8, !tbaa !79
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  store ptr %2, ptr %8, align 8, !tbaa !80
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %9, i8 0, i64 25, i1 false)
  store i32 1, ptr %10, align 4, !tbaa !81
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 9
  store ptr %1, ptr %11, align 8, !tbaa !82
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %12, i8 0, i64 40, i1 false)
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %4)
  %14 = load ptr, ptr %6, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %13, i32 noundef 109, i32 noundef 128, ptr noundef %14)
          to label %15 unwind label %17

15:                                               ; preds = %5
  %16 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 13
  store ptr %13, ptr %16, align 8, !tbaa !83
  ret void

17:                                               ; preds = %5
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %4) #13
  resume { ptr, i32 } %18
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  store ptr %3, ptr %0, align 8, !tbaa !85
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %2, ptr %6, align 8, !tbaa !87
  %7 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !88
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  store i32 %1, ptr %8, align 8, !tbaa !89
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %16, !prof !90

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %12 = load ptr, ptr %0, align 8, !tbaa !85
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.1, i32 noundef 69, i32 noundef 68, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #13
  resume { ptr, i32 } %15

16:                                               ; preds = %4
  %17 = zext i32 %1 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = load ptr, ptr %3, align 8, !tbaa !52
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %18), !prof !91
  store ptr %22, ptr %5, align 8, !tbaa !92
  %23 = load i32, ptr %8, align 8, !tbaa !89
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !93

25:                                               ; preds = %16
  %26 = zext i32 %23 to i64
  br label %30

27:                                               ; preds = %30, %16
  %28 = load i32, ptr %6, align 8, !tbaa !87
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %37, !prof !90

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %34, %30 ]
  %32 = load ptr, ptr %5, align 8, !tbaa !92
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr null, ptr %33, align 8, !tbaa !94
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %27, label %30, !prof !95, !llvm.loop !96

36:                                               ; preds = %27
  store i32 256, ptr %6, align 8, !tbaa !87
  br label %37

37:                                               ; preds = %36, %27
  %38 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %0, align 8, !tbaa !85
  %40 = load i32, ptr %6, align 8, !tbaa !87
  %41 = zext i32 %40 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = load ptr, ptr %39, align 8, !tbaa !52
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef %42), !prof !91
  store ptr %46, ptr %38, align 8, !tbaa !99
  store ptr null, ptr %46, align 8, !tbaa !94
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_710DTDScannerD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 align 2 !prof !49 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_710DTDScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !52
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(72) %3) #13
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !52
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(80) %11) #13
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !102
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !52
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(75) %19) #13
  br label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 13
  %27 = load ptr, ptr %26, align 8, !tbaa !83
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %27) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %27) #13
  br label %30

30:                                               ; preds = %29, %25
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %2 = load ptr, ptr %0, align 8, !tbaa !85
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = load ptr, ptr %2, align 8, !tbaa !52
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
          to label %8 unwind label %17, !prof !103

8:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
          to label %9 unwind label %17, !prof !104

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !85
  %11 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  %13 = load ptr, ptr %10, align 8, !tbaa !52
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %17, !prof !103

16:                                               ; preds = %9
  ret void

17:                                               ; preds = %9, %8, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #14
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_710DTDScannerD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_710DTDScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner14setScannerInfoEPNS_10XMLScannerEPNS_9ReaderMgrEPNS_12XMLBufferMgrE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 align 2 !prof !49 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  store ptr %1, ptr %5, align 8, !tbaa !105
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  store ptr %2, ptr %6, align 8, !tbaa !106
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  store ptr %3, ptr %7, align 8, !tbaa !107
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 4
  %9 = load i8, ptr %8, align 2, !tbaa !108, !range !63, !noundef !64
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 28
  %13 = load i32, ptr %12, align 4, !tbaa !120
  br label %14

14:                                               ; preds = %4, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %4 ]
  %16 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 14
  store i32 %15, ptr %16, align 8, !tbaa !121
  %17 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %2, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !122
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %18, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !123
  %21 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 15
  store i32 %20, ptr %21, align 4, !tbaa !129
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 !prof !49 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %5)
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !106
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %8, i1 noundef zeroext false)
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i8 [ 1, %7 ], [ 0, %3 ]
  %12 = load ptr, ptr %4, align 8, !tbaa !106
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %12, i16 noundef zeroext 37)
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  br label %16

16:                                               ; preds = %14, %27
  %17 = phi i8 [ %28, %27 ], [ %11, %14 ]
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner11expandPERefEbbbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext false)
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %15, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %20, i32 noundef 226)
  br label %21

21:                                               ; preds = %19, %16
  %22 = load ptr, ptr %4, align 8, !tbaa !106
  %23 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %22)
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load ptr, ptr %4, align 8, !tbaa !106
  %26 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %25, i1 noundef zeroext false)
  br label %27

27:                                               ; preds = %21, %24
  %28 = phi i8 [ 1, %24 ], [ %17, %21 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !106
  %30 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %29, i16 noundef zeroext 37)
  br i1 %30, label %16, label %31, !llvm.loop !130

31:                                               ; preds = %27
  %32 = and i8 %28, 1
  %33 = icmp ne i8 %32, 0
  br label %34

34:                                               ; preds = %10, %31
  %35 = phi i1 [ %33, %31 ], [ %6, %10 ]
  ret i1 %35
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner11expandPERefEbbbb(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %9, i64 0, i32 9
  store i8 0, ptr %10, align 1, !tbaa !131
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !107
  %13 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 7
  %15 = load i8, ptr %14, align 8, !tbaa !132, !range !63, !noundef !64
  %16 = icmp ne i8 %15, 0
  %17 = and i1 %16, %3
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load ptr, ptr %8, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %19, i32 noundef 258)
          to label %22 unwind label %20

20:                                               ; preds = %22, %40, %36, %33, %31, %18
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %259

22:                                               ; preds = %18, %5
  %23 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !106
  store i32 0, ptr %13, align 8, !tbaa !133
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %13, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !134
  store i16 0, ptr %26, align 2, !tbaa !135
  %27 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !122
  %29 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %28, ptr noundef nonnull align 8 dereferenceable(40) %13, i1 noundef zeroext false)
          to label %30 unwind label %20

30:                                               ; preds = %22
  br i1 %29, label %36, label %31

31:                                               ; preds = %30
  %32 = load ptr, ptr %8, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %32, i32 noundef 222)
          to label %33 unwind label %20

33:                                               ; preds = %31
  %34 = load ptr, ptr %23, align 8, !tbaa !106
  %35 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %34, i16 noundef zeroext 59)
          to label %253 unwind label %20

36:                                               ; preds = %30
  %37 = load ptr, ptr %23, align 8, !tbaa !106
  %38 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %37, i16 noundef zeroext 59)
          to label %39 unwind label %20

39:                                               ; preds = %36
  br i1 %38, label %46, label %40

40:                                               ; preds = %39
  %41 = load ptr, ptr %8, align 8, !tbaa !105
  %42 = load ptr, ptr %25, align 8, !tbaa !134
  %43 = load i32, ptr %13, align 8, !tbaa !133
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i16, ptr %42, i64 %44
  store i16 0, ptr %45, align 2, !tbaa !135
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %41, i32 noundef 229, ptr noundef %42, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %46 unwind label %20

46:                                               ; preds = %40, %39
  %47 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 13
  %48 = load ptr, ptr %47, align 8, !tbaa !83
  %49 = load ptr, ptr %25, align 8, !tbaa !134
  %50 = load i32, ptr %13, align 8, !tbaa !133
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  store i16 0, ptr %52, align 2, !tbaa !135
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %53 = invoke noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %48, ptr noundef %49, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %54 unwind label %71

54:                                               ; preds = %46
  %55 = icmp eq ptr %53, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %54
  %57 = load ptr, ptr %53, align 8, !tbaa !137
  br label %58

58:                                               ; preds = %54, %56
  %59 = phi ptr [ %57, %56 ], [ null, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  %60 = icmp eq ptr %59, null
  %61 = load ptr, ptr %8, align 8, !tbaa !105
  br i1 %60, label %62, label %84

62:                                               ; preds = %58
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %61, i64 0, i32 8
  %64 = load i8, ptr %63, align 2, !tbaa !139, !range !63, !noundef !64
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %25, align 8, !tbaa !134
  %68 = load i32, ptr %13, align 8, !tbaa !133
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i16, ptr %67, i64 %69
  store i16 0, ptr %70, align 2, !tbaa !135
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %61, i32 noundef 227, ptr noundef %67, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %253 unwind label %71

71:                                               ; preds = %46, %98, %92, %77, %66
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %259

73:                                               ; preds = %62
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %61, i64 0, i32 10
  %75 = load i8, ptr %74, align 8, !tbaa !140, !range !63, !noundef !64
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %253, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %61, i64 0, i32 50
  %79 = load ptr, ptr %78, align 8, !tbaa !141
  %80 = load ptr, ptr %25, align 8, !tbaa !134
  %81 = load i32, ptr %13, align 8, !tbaa !133
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i16, ptr %80, i64 %82
  store i16 0, ptr %83, align 2, !tbaa !135
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %79, i32 noundef 85, ptr noundef %80, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %253 unwind label %71

84:                                               ; preds = %58
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %61, i64 0, i32 10
  %86 = load i8, ptr %85, align 8, !tbaa !140, !range !63, !noundef !64
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %106, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %61, i64 0, i32 8
  %90 = load i8, ptr %89, align 2, !tbaa !139, !range !63, !noundef !64
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %106, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %59, align 8, !tbaa !52
  %94 = getelementptr inbounds ptr, ptr %93, i64 5
  %95 = load ptr, ptr %94, align 8
  %96 = invoke noundef zeroext i1 %95(ptr noundef nonnull align 8 dereferenceable(72) %59)
          to label %97 unwind label %71

97:                                               ; preds = %92
  br i1 %96, label %106, label %98

98:                                               ; preds = %97
  %99 = load ptr, ptr %8, align 8, !tbaa !105
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %99, i64 0, i32 50
  %101 = load ptr, ptr %100, align 8, !tbaa !141
  %102 = load ptr, ptr %25, align 8, !tbaa !134
  %103 = load i32, ptr %13, align 8, !tbaa !133
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i16, ptr %102, i64 %104
  store i16 0, ptr %105, align 2, !tbaa !135
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %101, i32 noundef 81, ptr noundef %102, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %106 unwind label %71

106:                                              ; preds = %98, %97, %88, %84
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %59, i64 0, i32 6
  %108 = load ptr, ptr %107, align 8, !tbaa !142
  %109 = icmp ne ptr %108, null
  %110 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %59, i64 0, i32 7
  %111 = load ptr, ptr %110, align 8
  %112 = icmp ne ptr %111, null
  %113 = select i1 %109, i1 true, i1 %112
  br i1 %113, label %114, label %232

114:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %115 = load ptr, ptr %23, align 8, !tbaa !106
  %116 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %59, i64 0, i32 8
  %117 = load ptr, ptr %116, align 8, !tbaa !144
  %118 = xor i1 %2, true
  %119 = zext i1 %118 to i32
  %120 = load ptr, ptr %8, align 8, !tbaa !105
  %121 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %120, i64 0, i32 3
  %122 = load i8, ptr %121, align 1, !tbaa !145, !range !63, !noundef !64
  %123 = icmp ne i8 %122, 0
  %124 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %120, i64 0, i32 23
  %125 = load i8, ptr %124, align 1, !tbaa !146, !range !63, !noundef !64
  %126 = icmp ne i8 %125, 0
  %127 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_S2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80) %115, ptr noundef %117, ptr noundef %111, ptr noundef %108, i1 noundef zeroext false, i32 noundef %119, i32 noundef 0, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext %123, i1 noundef zeroext %126)
          to label %128 unwind label %147

128:                                              ; preds = %114
  %129 = load ptr, ptr %7, align 8, !tbaa !94
  %130 = icmp eq ptr %127, null
  br i1 %130, label %131, label %153

131:                                              ; preds = %128
  %132 = call ptr @__cxa_allocate_exception(i64 48) #13
  %133 = load ptr, ptr %7, align 8, !tbaa !94
  %134 = icmp eq ptr %133, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %131
  %136 = load ptr, ptr %133, align 8, !tbaa !52
  %137 = getelementptr inbounds ptr, ptr %136, i64 5
  %138 = load ptr, ptr %137, align 8
  %139 = invoke noundef ptr %138(ptr noundef nonnull align 8 dereferenceable(41) %133)
          to label %142 unwind label %149

140:                                              ; preds = %131
  %141 = load ptr, ptr %110, align 8, !tbaa !147
  br label %142

142:                                              ; preds = %135, %140
  %143 = phi ptr [ %141, %140 ], [ %139, %135 ]
  %144 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %132, ptr noundef nonnull @.str, i32 noundef 277, i32 noundef 46, ptr noundef %143, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %145)
          to label %146 unwind label %149

146:                                              ; preds = %142
  invoke void @__cxa_throw(ptr nonnull %132, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %268 unwind label %151

147:                                              ; preds = %114
  %148 = landingpad { ptr, i32 }
          cleanup
  br label %230

149:                                              ; preds = %142, %135
  %150 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %132) #13
  br label %223

151:                                              ; preds = %215, %212, %160, %153, %146
  %152 = landingpad { ptr, i32 }
          cleanup
  br label %223

153:                                              ; preds = %128
  %154 = zext i1 %4 to i8
  %155 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %127, i64 0, i32 25
  store i8 %154, ptr %155, align 1, !tbaa !148
  %156 = load ptr, ptr %23, align 8, !tbaa !106
  %157 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %156, ptr noundef nonnull %127, ptr noundef nonnull %59)
          to label %158 unwind label %151

158:                                              ; preds = %153
  %159 = load ptr, ptr %8, align 8, !tbaa !105
  br i1 %157, label %163, label %160

160:                                              ; preds = %158
  %161 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %59, i64 0, i32 4
  %162 = load ptr, ptr %161, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %159, i32 noundef 230, ptr noundef %162, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %216 unwind label %151

163:                                              ; preds = %158
  br i1 %1, label %164, label %212

164:                                              ; preds = %163
  %165 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %159, i64 0, i32 43
  %166 = load ptr, ptr %165, align 8, !tbaa !150
  %167 = icmp eq ptr %166, null
  br i1 %167, label %175, label %168

168:                                              ; preds = %164
  %169 = load ptr, ptr %7, align 8, !tbaa !94
  %170 = load ptr, ptr %166, align 8, !tbaa !52
  %171 = getelementptr inbounds ptr, ptr %170, i64 7
  %172 = load ptr, ptr %171, align 8
  invoke void %172(ptr noundef nonnull align 8 dereferenceable(8) %166, ptr noundef nonnull align 8 dereferenceable(41) %169)
          to label %175 unwind label %173

173:                                              ; preds = %168
  %174 = landingpad { ptr, i32 }
          cleanup
  br label %223

175:                                              ; preds = %168, %164
  %176 = load ptr, ptr %23, align 8, !tbaa !106
  %177 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %176, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !122
  %179 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %178, i64 0, i32 15
  %180 = load i32, ptr %179, align 8, !tbaa !123
  invoke void @_ZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %206 unwind label %183

181:                                              ; preds = %207
  %182 = landingpad { ptr, i32 }
          cleanup
  br label %223

183:                                              ; preds = %175
  %184 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %185 = extractvalue { ptr, i32 } %184, 0
  %186 = extractvalue { ptr, i32 } %184, 1
  %187 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #13
  %188 = icmp eq i32 %186, %187
  %189 = call ptr @__cxa_begin_catch(ptr %185) #13
  br i1 %188, label %190, label %192

190:                                              ; preds = %183
  invoke void @__cxa_rethrow() #15
          to label %191 unwind label %204

191:                                              ; preds = %190
  unreachable

192:                                              ; preds = %183
  %193 = load ptr, ptr %23, align 8, !tbaa !106
  invoke void @_ZN11xercesc_2_79ReaderMgr16cleanStackBackToEj(ptr noundef nonnull align 8 dereferenceable(80) %193, i32 noundef %180)
          to label %194 unwind label %200

194:                                              ; preds = %192
  br i1 %167, label %202, label %195

195:                                              ; preds = %194
  %196 = load ptr, ptr %7, align 8, !tbaa !94
  %197 = load ptr, ptr %166, align 8, !tbaa !52
  %198 = getelementptr inbounds ptr, ptr %197, i64 2
  %199 = load ptr, ptr %198, align 8
  invoke void %199(ptr noundef nonnull align 8 dereferenceable(8) %166, ptr noundef nonnull align 8 dereferenceable(41) %196)
          to label %202 unwind label %200

200:                                              ; preds = %202, %195, %192
  %201 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %223 unwind label %265

202:                                              ; preds = %195, %194
  invoke void @__cxa_rethrow() #15
          to label %203 unwind label %200

203:                                              ; preds = %202
  unreachable

204:                                              ; preds = %190
  %205 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %223 unwind label %265

206:                                              ; preds = %175
  br i1 %167, label %216, label %207

207:                                              ; preds = %206
  %208 = load ptr, ptr %7, align 8, !tbaa !94
  %209 = load ptr, ptr %166, align 8, !tbaa !52
  %210 = getelementptr inbounds ptr, ptr %209, i64 2
  %211 = load ptr, ptr %210, align 8
  invoke void %211(ptr noundef nonnull align 8 dereferenceable(8) %166, ptr noundef nonnull align 8 dereferenceable(41) %208)
          to label %216 unwind label %181

212:                                              ; preds = %163
  %213 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %159, i1 noundef zeroext true)
          to label %214 unwind label %151

214:                                              ; preds = %212
  br i1 %213, label %215, label %216

215:                                              ; preds = %214
  invoke void @_ZN11xercesc_2_710DTDScanner12scanTextDeclEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %216 unwind label %151

216:                                              ; preds = %215, %214, %207, %206, %160
  %217 = icmp eq ptr %129, null
  br i1 %217, label %222, label %218

218:                                              ; preds = %216
  %219 = load ptr, ptr %129, align 8, !tbaa !52
  %220 = getelementptr inbounds ptr, ptr %219, i64 1
  %221 = load ptr, ptr %220, align 8
  call void %221(ptr noundef nonnull align 8 dereferenceable(41) %129) #13
  br label %222

222:                                              ; preds = %216, %218
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br i1 %157, label %252, label %253

223:                                              ; preds = %204, %173, %200, %181, %151, %149
  %224 = phi { ptr, i32 } [ %152, %151 ], [ %150, %149 ], [ %174, %173 ], [ %182, %181 ], [ %201, %200 ], [ %205, %204 ]
  %225 = icmp eq ptr %129, null
  br i1 %225, label %230, label %226

226:                                              ; preds = %223
  %227 = load ptr, ptr %129, align 8, !tbaa !52
  %228 = getelementptr inbounds ptr, ptr %227, i64 1
  %229 = load ptr, ptr %228, align 8
  call void %229(ptr noundef nonnull align 8 dereferenceable(41) %129) #13
  br label %230

230:                                              ; preds = %226, %223, %147
  %231 = phi { ptr, i32 } [ %148, %147 ], [ %224, %223 ], [ %224, %226 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %259

232:                                              ; preds = %106
  %233 = load ptr, ptr %23, align 8, !tbaa !106
  %234 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %59, i64 0, i32 4
  %235 = load ptr, ptr %234, align 8, !tbaa !149
  %236 = xor i1 %2, true
  %237 = zext i1 %236 to i32
  %238 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %59, i64 0, i32 3
  %239 = load ptr, ptr %238, align 8, !tbaa !151
  %240 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %59, i64 0, i32 2
  %241 = load i32, ptr %240, align 4, !tbaa !152
  %242 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr18createIntEntReaderEPKtNS_9XMLReader7RefFromENS3_5TypesES2_jbb(ptr noundef nonnull align 8 dereferenceable(80) %233, ptr noundef %235, i32 noundef %237, i32 noundef 0, ptr noundef %239, i32 noundef %241, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %243 unwind label %250

243:                                              ; preds = %232
  %244 = load ptr, ptr %23, align 8, !tbaa !106
  %245 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %244, ptr noundef %242, ptr noundef nonnull %59)
          to label %246 unwind label %250

246:                                              ; preds = %243
  br i1 %245, label %252, label %247

247:                                              ; preds = %246
  %248 = load ptr, ptr %8, align 8, !tbaa !105
  %249 = load ptr, ptr %234, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %248, i32 noundef 230, ptr noundef %249, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %252 unwind label %250

250:                                              ; preds = %247, %243, %232
  %251 = landingpad { ptr, i32 }
          cleanup
  br label %259

252:                                              ; preds = %246, %247, %222
  br label %253

253:                                              ; preds = %77, %66, %252, %222, %73, %33
  %254 = phi i1 [ false, %33 ], [ true, %252 ], [ false, %222 ], [ false, %73 ], [ false, %66 ], [ false, %77 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %258 unwind label %255

255:                                              ; preds = %253
  %256 = landingpad { ptr, i32 }
          catch ptr null
  %257 = extractvalue { ptr, i32 } %256, 0
  call void @__clang_call_terminate(ptr %257) #14
  unreachable

258:                                              ; preds = %253
  ret i1 %254

259:                                              ; preds = %71, %230, %250, %20
  %260 = phi { ptr, i32 } [ %21, %20 ], [ %231, %230 ], [ %251, %250 ], [ %72, %71 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %264 unwind label %261

261:                                              ; preds = %259
  %262 = landingpad { ptr, i32 }
          catch ptr null
  %263 = extractvalue { ptr, i32 } %262, 0
  call void @__clang_call_terminate(ptr %263) #14
  unreachable

264:                                              ; preds = %259
  resume { ptr, i32 } %260

265:                                              ; preds = %204, %200
  %266 = landingpad { ptr, i32 }
          catch ptr null
  %267 = extractvalue { ptr, i32 } %266, 0
  call void @__clang_call_terminate(ptr %267) #14
  unreachable

268:                                              ; preds = %146
  unreachable
}

declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_S2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbb(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %4 = alloca [9 x i16], align 16
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 8, !tbaa !153, !range !63, !noundef !64
  store i8 0, ptr %5, align 8, !tbaa !153
  %7 = xor i1 %1, true
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  %10 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %11 unwind label %20

11:                                               ; preds = %3
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = icmp eq ptr %13, null
  %15 = or i1 %14, %1
  br i1 %15, label %28, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %13, align 8, !tbaa !52
  %18 = getelementptr inbounds ptr, ptr %17, i64 16
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %28 unwind label %24

20:                                               ; preds = %3
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  br label %273

24:                                               ; preds = %42, %37, %33, %28, %16
  %25 = landingpad { ptr, i32 }
          cleanup
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = extractvalue { ptr, i32 } %25, 1
  br label %267

28:                                               ; preds = %16, %11
  %29 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %30 = load ptr, ptr %29, align 8, !tbaa !106
  %31 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr27isScanningPERefOutOfLiteralEv(ptr noundef nonnull align 8 dereferenceable(80) %30)
          to label %32 unwind label %24

32:                                               ; preds = %28
  br i1 %31, label %33, label %43

33:                                               ; preds = %32
  %34 = load ptr, ptr %29, align 8, !tbaa !106
  %35 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %34)
          to label %36 unwind label %24

36:                                               ; preds = %33
  br i1 %35, label %37, label %43

37:                                               ; preds = %36
  %38 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !105
  %40 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %39, i1 noundef zeroext true)
          to label %41 unwind label %24

41:                                               ; preds = %37
  br i1 %40, label %42, label %43

42:                                               ; preds = %41
  invoke void @_ZN11xercesc_2_710DTDScanner12scanTextDeclEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %43 unwind label %24

43:                                               ; preds = %42, %36, %41, %32
  %44 = phi i1 [ %7, %41 ], [ %7, %36 ], [ %7, %32 ], [ false, %42 ]
  %45 = load ptr, ptr %29, align 8, !tbaa !106
  %46 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !122
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %47, i64 0, i32 15
  %49 = load i32, ptr %48, align 8, !tbaa !123
  %50 = zext i1 %44 to i8
  %51 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 6
  %53 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %54 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  br label %55

55:                                               ; preds = %195, %43
  %56 = phi i8 [ 0, %43 ], [ %196, %195 ]
  %57 = phi i8 [ 0, %43 ], [ %197, %195 ]
  %58 = phi i8 [ %50, %43 ], [ %198, %195 ]
  %59 = load ptr, ptr %29, align 8, !tbaa !106
  %60 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %59)
          to label %61 unwind label %91

61:                                               ; preds = %55
  %62 = zext i16 %60 to i32
  %63 = icmp eq i16 %60, 60
  %64 = load ptr, ptr %29, align 8, !tbaa !106
  %65 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !122
  br i1 %63, label %67, label %105

67:                                               ; preds = %61
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %66, i64 0, i32 15
  %69 = load i32, ptr %68, align 8, !tbaa !123
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %66, i64 0, i32 27
  %71 = load i32, ptr %70, align 8, !tbaa !154
  %72 = icmp eq i32 %71, 0
  %73 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %64)
          to label %74 unwind label %94

74:                                               ; preds = %67
  %75 = and i8 %58, 1
  %76 = icmp ne i8 %75, 0
  invoke void @_ZN11xercesc_2_710DTDScanner14scanMarkupDeclEb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext %76)
          to label %77 unwind label %94

77:                                               ; preds = %74
  %78 = load ptr, ptr %29, align 8, !tbaa !106
  %79 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !122
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %80, i64 0, i32 15
  %82 = load i32, ptr %81, align 8, !tbaa !123
  %83 = icmp eq i32 %82, %69
  br i1 %83, label %190, label %84

84:                                               ; preds = %77
  br i1 %72, label %85, label %97

85:                                               ; preds = %84
  %86 = load ptr, ptr %54, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %86, i32 noundef 299)
          to label %190 unwind label %94

87:                                               ; preds = %158
  %88 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %199

89:                                               ; preds = %146
  %90 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %199

91:                                               ; preds = %187, %184, %163, %153, %149, %142, %138, %136, %131, %129, %125, %116, %115, %55
  %92 = phi i8 [ 0, %116 ], [ 1, %115 ], [ %56, %125 ], [ %56, %131 ], [ %56, %129 ], [ %56, %153 ], [ %56, %149 ], [ %56, %142 ], [ %56, %138 ], [ %56, %136 ], [ %56, %187 ], [ %56, %184 ], [ %56, %163 ], [ %56, %55 ]
  %93 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %199

94:                                               ; preds = %102, %85, %74, %67
  %95 = phi i8 [ 0, %85 ], [ 0, %102 ], [ 1, %74 ], [ %57, %67 ]
  %96 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %199

97:                                               ; preds = %84
  %98 = load ptr, ptr %53, align 8, !tbaa !105
  %99 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %98, i64 0, i32 10
  %100 = load i8, ptr %99, align 8, !tbaa !140, !range !63, !noundef !64
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %190, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %98, i64 0, i32 50
  %104 = load ptr, ptr %103, align 8, !tbaa !141
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %104, i32 noundef 86)
          to label %190 unwind label %94

105:                                              ; preds = %61
  %106 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %66, i64 0, i32 28
  %107 = load ptr, ptr %106, align 8, !tbaa !155
  %108 = zext i16 %60 to i64
  %109 = getelementptr inbounds i8, ptr %107, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !156
  %111 = icmp slt i8 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %105
  %113 = load ptr, ptr %12, align 8, !tbaa !80
  %114 = icmp eq ptr %113, null
  br i1 %114, label %125, label %115

115:                                              ; preds = %112
  invoke void @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %64, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %116 unwind label %91

116:                                              ; preds = %115
  %117 = load ptr, ptr %12, align 8, !tbaa !80
  %118 = load ptr, ptr %52, align 8, !tbaa !134
  %119 = load i32, ptr %10, align 8, !tbaa !133
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i16, ptr %118, i64 %120
  store i16 0, ptr %121, align 2, !tbaa !135
  %122 = load ptr, ptr %117, align 8, !tbaa !52
  %123 = getelementptr inbounds ptr, ptr %122, i64 6
  %124 = load ptr, ptr %123, align 8
  invoke void %124(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef %118, i32 noundef %119)
          to label %190 unwind label %91

125:                                              ; preds = %112
  %126 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %64, i1 noundef zeroext false)
          to label %190 unwind label %91

127:                                              ; preds = %105
  %128 = icmp eq i16 %60, 37
  br i1 %128, label %129, label %133

129:                                              ; preds = %127
  %130 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %64)
          to label %131 unwind label %91

131:                                              ; preds = %129
  %132 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner11expandPERefEbbbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %190 unwind label %91

133:                                              ; preds = %127
  %134 = icmp eq i16 %60, 93
  %135 = and i1 %134, %1
  br i1 %135, label %136, label %161

136:                                              ; preds = %133
  %137 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %64)
          to label %138 unwind label %91

138:                                              ; preds = %136
  %139 = load ptr, ptr %29, align 8, !tbaa !106
  %140 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %139, i16 noundef zeroext 93)
          to label %141 unwind label %91

141:                                              ; preds = %138
  br i1 %140, label %149, label %142

142:                                              ; preds = %141
  %143 = load ptr, ptr %51, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %143, i32 noundef 250)
          to label %144 unwind label %91

144:                                              ; preds = %142
  %145 = load ptr, ptr %29, align 8, !tbaa !106
  br label %146

146:                                              ; preds = %148, %144
  %147 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %145)
          to label %148 unwind label %89

148:                                              ; preds = %146
  switch i16 %147, label %146 [
    i16 62, label %190
    i16 0, label %190
  ]

149:                                              ; preds = %141
  %150 = load ptr, ptr %29, align 8, !tbaa !106
  %151 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %150, i16 noundef zeroext 62)
          to label %152 unwind label %91

152:                                              ; preds = %149
  br i1 %151, label %190, label %153

153:                                              ; preds = %152
  %154 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %155 = load ptr, ptr %154, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %155, i32 noundef 250)
          to label %156 unwind label %91

156:                                              ; preds = %153
  %157 = load ptr, ptr %29, align 8, !tbaa !106
  br label %158

158:                                              ; preds = %160, %156
  %159 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %157)
          to label %160 unwind label %87

160:                                              ; preds = %158
  switch i16 %159, label %158 [
    i16 62, label %190
    i16 0, label %190
  ]

161:                                              ; preds = %133
  %162 = icmp eq i16 %60, 0
  br i1 %162, label %190, label %163

163:                                              ; preds = %161
  %164 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %64)
          to label %165 unwind label %91

165:                                              ; preds = %163
  %166 = load ptr, ptr %29, align 8, !tbaa !106
  %167 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %166, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !122
  %169 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %168, i64 0, i32 28
  %170 = load ptr, ptr %169, align 8, !tbaa !155
  %171 = getelementptr inbounds i8, ptr %170, i64 %108
  %172 = load i8, ptr %171, align 1, !tbaa !156
  %173 = and i8 %172, 64
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %165
  %176 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %4) #13
  %177 = load ptr, ptr %176, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %62, ptr noundef nonnull %4, i32 noundef 8, i32 noundef 16, ptr noundef %177)
          to label %178 unwind label %182

178:                                              ; preds = %175
  %179 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %180 = load ptr, ptr %179, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %180, i32 noundef 196, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %181 unwind label %182

181:                                              ; preds = %178
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %4) #13
  br label %187

182:                                              ; preds = %178, %175
  %183 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %4) #13
  br label %199

184:                                              ; preds = %165
  %185 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %186 = load ptr, ptr %185, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %186, i32 noundef 186)
          to label %187 unwind label %91

187:                                              ; preds = %184, %181
  %188 = load ptr, ptr %29, align 8, !tbaa !106
  %189 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %188, ptr noundef nonnull @_ZZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbbE6toSkip)
          to label %190 unwind label %91

190:                                              ; preds = %148, %148, %160, %160, %187, %131, %125, %116, %85, %102, %97, %77, %161, %152
  %191 = phi i8 [ %56, %152 ], [ %56, %161 ], [ %56, %102 ], [ %56, %97 ], [ %56, %77 ], [ %56, %85 ], [ 0, %116 ], [ %56, %125 ], [ %56, %131 ], [ %56, %187 ], [ %56, %160 ], [ %56, %160 ], [ %56, %148 ], [ %56, %148 ]
  %192 = phi i8 [ %57, %152 ], [ %57, %161 ], [ 0, %102 ], [ 0, %97 ], [ 0, %77 ], [ 0, %85 ], [ %57, %116 ], [ %57, %125 ], [ %57, %131 ], [ %57, %187 ], [ %57, %160 ], [ %57, %160 ], [ %57, %148 ], [ %57, %148 ]
  %193 = phi i1 [ false, %152 ], [ false, %161 ], [ true, %102 ], [ true, %97 ], [ true, %77 ], [ true, %85 ], [ true, %116 ], [ true, %125 ], [ true, %131 ], [ true, %187 ], [ false, %160 ], [ false, %160 ], [ false, %148 ], [ false, %148 ]
  %194 = phi i8 [ %58, %152 ], [ %58, %161 ], [ 0, %102 ], [ 0, %97 ], [ 0, %77 ], [ 0, %85 ], [ 0, %116 ], [ 0, %125 ], [ 0, %131 ], [ 0, %187 ], [ %58, %160 ], [ %58, %160 ], [ %58, %148 ], [ %58, %148 ]
  br i1 %193, label %195, label %245

195:                                              ; preds = %190, %245
  %196 = phi i8 [ %191, %190 ], [ %246, %245 ]
  %197 = phi i8 [ %192, %190 ], [ %247, %245 ]
  %198 = phi i8 [ %194, %190 ], [ %249, %245 ]
  br label %55, !llvm.loop !157

199:                                              ; preds = %87, %91, %89, %94, %182
  %200 = phi i8 [ %56, %182 ], [ %56, %94 ], [ %56, %87 ], [ %56, %89 ], [ %92, %91 ]
  %201 = phi i8 [ %57, %182 ], [ %95, %94 ], [ %57, %87 ], [ %57, %89 ], [ %57, %91 ]
  %202 = phi { ptr, i32 } [ %183, %182 ], [ %96, %94 ], [ %88, %87 ], [ %90, %89 ], [ %93, %91 ]
  %203 = extractvalue { ptr, i32 } %202, 0
  %204 = extractvalue { ptr, i32 } %202, 1
  %205 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #13
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %267

207:                                              ; preds = %199
  %208 = call ptr @__cxa_begin_catch(ptr %203) #13
  %209 = and i8 %201, 1
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %207
  %212 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %213 = load ptr, ptr %212, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %213, i32 noundef 231)
          to label %216 unwind label %214

214:                                              ; preds = %223, %211
  %215 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %241 unwind label %278

216:                                              ; preds = %211, %207
  %217 = phi i8 [ %201, %207 ], [ 0, %211 ]
  %218 = and i8 %200, 1
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %232, label %220

220:                                              ; preds = %216
  %221 = load ptr, ptr %12, align 8, !tbaa !80
  %222 = icmp eq ptr %221, null
  br i1 %222, label %232, label %223

223:                                              ; preds = %220
  %224 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 6
  %225 = load ptr, ptr %224, align 8, !tbaa !134
  %226 = load i32, ptr %10, align 8, !tbaa !133
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i16, ptr %225, i64 %227
  store i16 0, ptr %228, align 2, !tbaa !135
  %229 = load ptr, ptr %221, align 8, !tbaa !52
  %230 = getelementptr inbounds ptr, ptr %229, i64 6
  %231 = load ptr, ptr %230, align 8
  invoke void %231(ptr noundef nonnull align 8 dereferenceable(8) %221, ptr noundef %225, i32 noundef %226)
          to label %232 unwind label %214

232:                                              ; preds = %223, %220, %216
  %233 = phi i8 [ %200, %216 ], [ 0, %220 ], [ 0, %223 ]
  %234 = getelementptr inbounds %"class.xercesc_2_7::EndOfEntityException", ptr %208, i64 0, i32 1
  %235 = load i32, ptr %234, align 8, !tbaa !158
  invoke void @__cxa_end_catch()
          to label %236 unwind label %239

236:                                              ; preds = %232
  %237 = icmp eq i32 %49, %235
  %238 = select i1 %237, i32 3, i32 0
  br label %245

239:                                              ; preds = %232
  %240 = landingpad { ptr, i32 }
          cleanup
  br label %241

241:                                              ; preds = %214, %239
  %242 = phi { ptr, i32 } [ %240, %239 ], [ %215, %214 ]
  %243 = extractvalue { ptr, i32 } %242, 0
  %244 = extractvalue { ptr, i32 } %242, 1
  br label %267

245:                                              ; preds = %190, %236
  %246 = phi i8 [ %233, %236 ], [ %191, %190 ]
  %247 = phi i8 [ %217, %236 ], [ %192, %190 ]
  %248 = phi i32 [ %238, %236 ], [ 1, %190 ]
  %249 = phi i8 [ %58, %236 ], [ %194, %190 ]
  switch i32 %248, label %262 [
    i32 0, label %195
    i32 3, label %250
  ]

250:                                              ; preds = %245
  %251 = load ptr, ptr %12, align 8, !tbaa !80
  %252 = icmp ne ptr %251, null
  %253 = and i1 %252, %2
  br i1 %253, label %254, label %262

254:                                              ; preds = %250
  %255 = load ptr, ptr %251, align 8, !tbaa !52
  %256 = getelementptr inbounds ptr, ptr %255, i64 10
  %257 = load ptr, ptr %256, align 8
  invoke void %257(ptr noundef nonnull align 8 dereferenceable(8) %251)
          to label %262 unwind label %258

258:                                              ; preds = %254
  %259 = landingpad { ptr, i32 }
          cleanup
  %260 = extractvalue { ptr, i32 } %259, 0
  %261 = extractvalue { ptr, i32 } %259, 1
  br label %267

262:                                              ; preds = %245, %254, %250
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %266 unwind label %263

263:                                              ; preds = %262
  %264 = landingpad { ptr, i32 }
          catch ptr null
  %265 = extractvalue { ptr, i32 } %264, 0
  call void @__clang_call_terminate(ptr %265) #14
  unreachable

266:                                              ; preds = %262
  store i8 %6, ptr %5, align 8, !tbaa !153
  ret void

267:                                              ; preds = %199, %241, %258, %24
  %268 = phi i32 [ %27, %24 ], [ %261, %258 ], [ %244, %241 ], [ %204, %199 ]
  %269 = phi ptr [ %26, %24 ], [ %260, %258 ], [ %243, %241 ], [ %203, %199 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %273 unwind label %270

270:                                              ; preds = %267
  %271 = landingpad { ptr, i32 }
          catch ptr null
  %272 = extractvalue { ptr, i32 } %271, 0
  call void @__clang_call_terminate(ptr %272) #14
  unreachable

273:                                              ; preds = %20, %267
  %274 = phi i32 [ %23, %20 ], [ %268, %267 ]
  %275 = phi ptr [ %22, %20 ], [ %269, %267 ]
  store i8 %6, ptr %5, align 8, !tbaa !153
  %276 = insertvalue { ptr, i32 } poison, ptr %275, 0
  %277 = insertvalue { ptr, i32 } %276, i32 %274, 1
  resume { ptr, i32 } %277

278:                                              ; preds = %214
  %279 = landingpad { ptr, i32 }
          catch ptr null
  %280 = extractvalue { ptr, i32 } %279, 0
  call void @__clang_call_terminate(ptr %280) #14
  unreachable
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #8

declare void @_ZN11xercesc_2_79ReaderMgr16cleanStackBackToEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #4

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner12scanTextDeclEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext false)
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  %7 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
  %8 = load ptr, ptr %2, align 8, !tbaa !106
  %9 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !122
  %11 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %10, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgVersionStringE)
          to label %12 unwind label %28

12:                                               ; preds = %1
  br i1 %11, label %13, label %96

13:                                               ; preds = %12
  %14 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner6scanEqEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %15 unwind label %28

15:                                               ; preds = %13
  br i1 %14, label %30, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %18, i32 noundef 180)
          to label %19 unwind label %28

19:                                               ; preds = %16
  %20 = load ptr, ptr %2, align 8, !tbaa !106
  br label %21

21:                                               ; preds = %23, %19
  %22 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %20)
          to label %23 unwind label %26

23:                                               ; preds = %21
  switch i16 %22, label %21 [
    i16 62, label %236
    i16 0, label %236
  ]

24:                                               ; preds = %38
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %246

26:                                               ; preds = %21
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %246

28:                                               ; preds = %94, %1, %33, %30, %16, %13
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %246

30:                                               ; preds = %15
  %31 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner15getQuotedStringERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %32 unwind label %28

32:                                               ; preds = %30
  br i1 %31, label %41, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %35, i32 noundef 188)
          to label %36 unwind label %28

36:                                               ; preds = %33
  %37 = load ptr, ptr %2, align 8, !tbaa !106
  br label %38

38:                                               ; preds = %40, %36
  %39 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %37)
          to label %40 unwind label %24

40:                                               ; preds = %38
  switch i16 %39, label %38 [
    i16 62, label %236
    i16 0, label %236
  ]

41:                                               ; preds = %32
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %7, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !134
  %44 = load i32, ptr %7, align 8, !tbaa !133
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i16, ptr %43, i64 %45
  store i16 0, ptr %46, align 2, !tbaa !135
  %47 = icmp eq ptr %43, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load i16, ptr %43, align 2, !tbaa !135
  %50 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgVersion1_1E, align 2, !tbaa !135
  %51 = icmp eq i16 %49, %50
  br i1 %51, label %55, label %72

52:                                               ; preds = %41
  %53 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgVersion1_1E, align 2, !tbaa !135
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %66, label %72

55:                                               ; preds = %48, %60
  %56 = phi i16 [ %63, %60 ], [ %49, %48 ]
  %57 = phi ptr [ %62, %60 ], [ @_ZN11xercesc_2_76XMLUni12fgVersion1_1E, %48 ]
  %58 = phi ptr [ %61, %60 ], [ %43, %48 ]
  %59 = icmp eq i16 %56, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds i16, ptr %58, i64 1
  %62 = getelementptr inbounds i16, ptr %57, i64 1
  %63 = load i16, ptr %61, align 2, !tbaa !135
  %64 = load i16, ptr %62, align 2, !tbaa !135
  %65 = icmp eq i16 %63, %64
  br i1 %65, label %55, label %72, !llvm.loop !160

66:                                               ; preds = %55, %52
  %67 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %68 = load ptr, ptr %67, align 8, !tbaa !105
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %68, i64 0, i32 61
  %70 = load i32, ptr %69, align 8, !tbaa !161
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %96, label %94

72:                                               ; preds = %60, %48, %52
  store i16 0, ptr %46, align 2, !tbaa !135
  br i1 %47, label %77, label %73

73:                                               ; preds = %72
  %74 = load i16, ptr %43, align 2, !tbaa !135
  %75 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgVersion1_0E, align 2, !tbaa !135
  %76 = icmp eq i16 %74, %75
  br i1 %76, label %80, label %91

77:                                               ; preds = %72
  %78 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgVersion1_0E, align 2, !tbaa !135
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %96, label %91

80:                                               ; preds = %73, %85
  %81 = phi i16 [ %88, %85 ], [ %74, %73 ]
  %82 = phi ptr [ %87, %85 ], [ @_ZN11xercesc_2_76XMLUni12fgVersion1_0E, %73 ]
  %83 = phi ptr [ %86, %85 ], [ %43, %73 ]
  %84 = icmp eq i16 %81, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds i16, ptr %83, i64 1
  %87 = getelementptr inbounds i16, ptr %82, i64 1
  %88 = load i16, ptr %86, align 2, !tbaa !135
  %89 = load i16, ptr %87, align 2, !tbaa !135
  %90 = icmp eq i16 %88, %89
  br i1 %90, label %80, label %91, !llvm.loop !160

91:                                               ; preds = %85, %73, %77
  %92 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %93 = load ptr, ptr %92, align 8, !tbaa !105
  br label %94

94:                                               ; preds = %66, %91
  %95 = phi ptr [ %93, %91 ], [ %68, %66 ]
  store i16 0, ptr %46, align 2, !tbaa !135
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %95, i32 noundef 189, ptr noundef %43, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %96 unwind label %28

96:                                               ; preds = %80, %94, %77, %66, %12
  %97 = load ptr, ptr %5, align 8, !tbaa !107
  %98 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %97)
          to label %99 unwind label %119

99:                                               ; preds = %96
  %100 = load ptr, ptr %2, align 8, !tbaa !106
  %101 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %100, i1 noundef zeroext false)
          to label %102 unwind label %121

102:                                              ; preds = %99
  %103 = load ptr, ptr %2, align 8, !tbaa !106
  %104 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !122
  %106 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %105, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgEncodingStringE)
          to label %107 unwind label %133

107:                                              ; preds = %102
  br i1 %106, label %108, label %161

108:                                              ; preds = %107
  %109 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner6scanEqEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %110 unwind label %133

110:                                              ; preds = %108
  br i1 %109, label %135, label %111

111:                                              ; preds = %110
  %112 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %113 = load ptr, ptr %112, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %113, i32 noundef 180)
          to label %114 unwind label %133

114:                                              ; preds = %111
  %115 = load ptr, ptr %2, align 8, !tbaa !106
  br label %116

116:                                              ; preds = %118, %114
  %117 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %115)
          to label %118 unwind label %131

118:                                              ; preds = %116
  switch i16 %117, label %116 [
    i16 62, label %232
    i16 0, label %232
  ]

119:                                              ; preds = %96
  %120 = landingpad { ptr, i32 }
          cleanup
  br label %246

121:                                              ; preds = %99
  %122 = landingpad { ptr, i32 }
          cleanup
  br label %241

123:                                              ; preds = %157
  %124 = landingpad { ptr, i32 }
          cleanup
  br label %241

125:                                              ; preds = %193
  %126 = landingpad { ptr, i32 }
          cleanup
  br label %241

127:                                              ; preds = %181
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %241

129:                                              ; preds = %166
  %130 = landingpad { ptr, i32 }
          cleanup
  br label %241

131:                                              ; preds = %116
  %132 = landingpad { ptr, i32 }
          cleanup
  br label %241

133:                                              ; preds = %108, %111, %135, %140, %147, %161, %169, %172, %176, %184, %188, %200, %216, %225, %102
  %134 = landingpad { ptr, i32 }
          cleanup
  br label %241

135:                                              ; preds = %110
  %136 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner15getQuotedStringERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %98)
          to label %137 unwind label %133

137:                                              ; preds = %135
  %138 = load i32, ptr %98, align 8, !tbaa !133
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %98, i64 0, i32 6
  %142 = load ptr, ptr %141, align 8, !tbaa !134
  %143 = zext i32 %138 to i64
  %144 = getelementptr inbounds i16, ptr %142, i64 %143
  store i16 0, ptr %144, align 2, !tbaa !135
  %145 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString14isValidEncNameEPKt(ptr noundef %142)
          to label %146 unwind label %133

146:                                              ; preds = %140
  br i1 %145, label %160, label %147

147:                                              ; preds = %146, %137
  %148 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %149 = load ptr, ptr %148, align 8, !tbaa !105
  %150 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %98, i64 0, i32 6
  %151 = load ptr, ptr %150, align 8, !tbaa !134
  %152 = load i32, ptr %98, align 8, !tbaa !133
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i16, ptr %151, i64 %153
  store i16 0, ptr %154, align 2, !tbaa !135
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %149, i32 noundef 191, ptr noundef %151, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %155 unwind label %133

155:                                              ; preds = %147
  %156 = load ptr, ptr %2, align 8, !tbaa !106
  br label %157

157:                                              ; preds = %159, %155
  %158 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %156)
          to label %159 unwind label %123

159:                                              ; preds = %157
  switch i16 %158, label %157 [
    i16 62, label %232
    i16 0, label %232
  ]

160:                                              ; preds = %146
  br i1 %106, label %169, label %161

161:                                              ; preds = %107, %160
  %162 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %163 = load ptr, ptr %162, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %163, i32 noundef 287)
          to label %164 unwind label %133

164:                                              ; preds = %161
  %165 = load ptr, ptr %2, align 8, !tbaa !106
  br label %166

166:                                              ; preds = %168, %164
  %167 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %165)
          to label %168 unwind label %129

168:                                              ; preds = %166
  switch i16 %167, label %166 [
    i16 62, label %232
    i16 0, label %232
  ]

169:                                              ; preds = %160
  %170 = load ptr, ptr %2, align 8, !tbaa !106
  %171 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %170, i1 noundef zeroext false)
          to label %172 unwind label %133

172:                                              ; preds = %169
  %173 = load ptr, ptr %2, align 8, !tbaa !106
  %174 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %173, i16 noundef zeroext 63)
          to label %175 unwind label %133

175:                                              ; preds = %172
  br i1 %174, label %184, label %176

176:                                              ; preds = %175
  %177 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %178 = load ptr, ptr %177, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %178, i32 noundef 190)
          to label %179 unwind label %133

179:                                              ; preds = %176
  %180 = load ptr, ptr %2, align 8, !tbaa !106
  br label %181

181:                                              ; preds = %183, %179
  %182 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %180)
          to label %183 unwind label %127

183:                                              ; preds = %181
  switch i16 %182, label %181 [
    i16 62, label %196
    i16 0, label %196
  ]

184:                                              ; preds = %175
  %185 = load ptr, ptr %2, align 8, !tbaa !106
  %186 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %185, i16 noundef zeroext 62)
          to label %187 unwind label %133

187:                                              ; preds = %184
  br i1 %186, label %196, label %188

188:                                              ; preds = %187
  %189 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %190 = load ptr, ptr %189, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %190, i32 noundef 190)
          to label %191 unwind label %133

191:                                              ; preds = %188
  %192 = load ptr, ptr %2, align 8, !tbaa !106
  br label %193

193:                                              ; preds = %195, %191
  %194 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %192)
          to label %195 unwind label %125

195:                                              ; preds = %193
  switch i16 %194, label %193 [
    i16 62, label %196
    i16 0, label %196
  ]

196:                                              ; preds = %183, %183, %195, %195, %187
  %197 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !80
  %199 = icmp eq ptr %198, null
  br i1 %199, label %213, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %7, i64 0, i32 6
  %202 = load ptr, ptr %201, align 8, !tbaa !134
  %203 = load i32, ptr %7, align 8, !tbaa !133
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i16, ptr %202, i64 %204
  store i16 0, ptr %205, align 2, !tbaa !135
  %206 = load ptr, ptr %141, align 8, !tbaa !134
  %207 = load i32, ptr %98, align 8, !tbaa !133
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i16, ptr %206, i64 %208
  store i16 0, ptr %209, align 2, !tbaa !135
  %210 = load ptr, ptr %198, align 8, !tbaa !52
  %211 = getelementptr inbounds ptr, ptr %210, i64 17
  %212 = load ptr, ptr %211, align 8
  invoke void %212(ptr noundef nonnull align 8 dereferenceable(8) %198, ptr noundef %202, ptr noundef %206)
          to label %213 unwind label %133

213:                                              ; preds = %196, %200
  %214 = load i32, ptr %98, align 8, !tbaa !133
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %232, label %216

216:                                              ; preds = %213
  %217 = load ptr, ptr %2, align 8, !tbaa !106
  %218 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %217, i64 0, i32 2
  %219 = load ptr, ptr %218, align 8, !tbaa !122
  %220 = load ptr, ptr %141, align 8, !tbaa !134
  %221 = zext i32 %214 to i64
  %222 = getelementptr inbounds i16, ptr %220, i64 %221
  store i16 0, ptr %222, align 2, !tbaa !135
  %223 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11setEncodingEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %219, ptr noundef %220)
          to label %224 unwind label %133

224:                                              ; preds = %216
  br i1 %223, label %232, label %225

225:                                              ; preds = %224
  %226 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %227 = load ptr, ptr %226, align 8, !tbaa !105
  %228 = load ptr, ptr %141, align 8, !tbaa !134
  %229 = load i32, ptr %98, align 8, !tbaa !133
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i16, ptr %228, i64 %230
  store i16 0, ptr %231, align 2, !tbaa !135
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %227, i32 noundef 4, ptr noundef %228, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %232 unwind label %133

232:                                              ; preds = %118, %118, %168, %168, %159, %159, %225, %213, %224
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %97, ptr noundef nonnull align 8 dereferenceable(40) %98)
          to label %236 unwind label %233

233:                                              ; preds = %232
  %234 = landingpad { ptr, i32 }
          catch ptr null
  %235 = extractvalue { ptr, i32 } %234, 0
  tail call void @__clang_call_terminate(ptr %235) #14
  unreachable

236:                                              ; preds = %23, %23, %40, %40, %232
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %240 unwind label %237

237:                                              ; preds = %236
  %238 = landingpad { ptr, i32 }
          catch ptr null
  %239 = extractvalue { ptr, i32 } %238, 0
  tail call void @__clang_call_terminate(ptr %239) #14
  unreachable

240:                                              ; preds = %236
  ret void

241:                                              ; preds = %123, %127, %131, %133, %129, %125, %121
  %242 = phi { ptr, i32 } [ %122, %121 ], [ %124, %123 ], [ %126, %125 ], [ %128, %127 ], [ %130, %129 ], [ %132, %131 ], [ %134, %133 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %97, ptr noundef nonnull align 8 dereferenceable(40) %98)
          to label %246 unwind label %243

243:                                              ; preds = %241
  %244 = landingpad { ptr, i32 }
          catch ptr null
  %245 = extractvalue { ptr, i32 } %244, 0
  tail call void @__clang_call_terminate(ptr %245) #14
  unreachable

246:                                              ; preds = %24, %28, %26, %119, %241
  %247 = phi { ptr, i32 } [ %120, %119 ], [ %242, %241 ], [ %25, %24 ], [ %27, %26 ], [ %29, %28 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %251 unwind label %248

248:                                              ; preds = %246
  %249 = landingpad { ptr, i32 }
          catch ptr null
  %250 = extractvalue { ptr, i32 } %249, 0
  tail call void @__clang_call_terminate(ptr %250) #14
  unreachable

251:                                              ; preds = %246
  resume { ptr, i32 } %247
}

declare noundef ptr @_ZN11xercesc_2_79ReaderMgr18createIntEntReaderEPKtNS_9XMLReader7RefFromENS3_5TypesES2_jbb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner15getQuotedStringERNS_9XMLBufferE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 align 2 !prof !49 {
  %3 = alloca i16, align 2
  store i32 0, ptr %1, align 8, !tbaa !133
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  store i16 0, ptr %5, align 2, !tbaa !135
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 2 dereferenceable(2) %3)
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 1
  br label %11

11:                                               ; preds = %9, %29
  %12 = load ptr, ptr %6, align 8, !tbaa !106
  %13 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %12)
  %14 = load i16, ptr %3, align 2, !tbaa !135
  %15 = icmp eq i16 %13, %14
  br i1 %15, label %29, label %16

16:                                               ; preds = %11
  %17 = icmp eq i16 %13, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %16
  %19 = load i32, ptr %1, align 8, !tbaa !133
  %20 = load i32, ptr %10, align 4, !tbaa !162
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
  br label %23

23:                                               ; preds = %18, %22
  %24 = load ptr, ptr %4, align 8, !tbaa !134
  %25 = load i32, ptr %1, align 8, !tbaa !133
  %26 = add i32 %25, 1
  store i32 %26, ptr %1, align 8, !tbaa !133
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds i16, ptr %24, i64 %27
  store i16 %13, ptr %28, align 2, !tbaa !135
  br label %29

29:                                               ; preds = %11, %16, %23
  %30 = phi i32 [ 0, %23 ], [ 1, %16 ], [ 3, %11 ]
  switch i32 %30, label %32 [
    i32 0, label %11
    i32 3, label %31
  ], !llvm.loop !163

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %29, %31, %2
  %33 = phi i1 [ false, %2 ], [ true, %31 ], [ false, %29 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  ret i1 %33
}

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #4

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710DTDScanner10scanAttDefERNS_14DTDElementDeclERNS_9XMLBufferE(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  store i32 0, ptr %2, align 8, !tbaa !133
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  store i16 0, ptr %8, align 2, !tbaa !135
  %9 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !122
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %10, ptr noundef nonnull align 8 dereferenceable(40) %2, i1 noundef zeroext false)
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %14, i32 noundef 174)
  br label %446

15:                                               ; preds = %3
  %16 = load ptr, ptr %7, align 8, !tbaa !134
  %17 = load i32, ptr %2, align 8, !tbaa !133
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i16, ptr %16, i64 %18
  store i16 0, ptr %19, align 2, !tbaa !135
  %20 = tail call noundef ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %16)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %54, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !105
  %25 = load ptr, ptr %7, align 8, !tbaa !134
  %26 = load i32, ptr %2, align 8, !tbaa !133
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i16, ptr %25, i64 %27
  store i16 0, ptr %28, align 2, !tbaa !135
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !164
  %31 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %30)
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %24, i32 noundef 3, ptr noundef %25, ptr noundef %31, ptr noundef null, ptr noundef null)
  %32 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !100
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %22
  %36 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !77
  %38 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 72, ptr noundef %37)
  %39 = load ptr, ptr %36, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_79DTDAttDefC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %38, ptr noundef %39)
          to label %40 unwind label %45

40:                                               ; preds = %35
  store ptr %38, ptr %32, align 8, !tbaa !100
  %41 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 8
  %42 = load i32, ptr %41, align 4, !tbaa !81
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4, !tbaa !81
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %38, i64 0, i32 6
  store i32 %42, ptr %44, align 8, !tbaa !167
  br label %47

45:                                               ; preds = %35
  %46 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %38, ptr noundef %37) #13
  br label %444

47:                                               ; preds = %40, %22
  %48 = load ptr, ptr %32, align 8, !tbaa !100
  %49 = load ptr, ptr %7, align 8, !tbaa !134
  %50 = load i32, ptr %2, align 8, !tbaa !133
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  store i16 0, ptr %52, align 2, !tbaa !135
  tail call void @_ZN11xercesc_2_79DTDAttDef7setNameEPKt(ptr noundef nonnull align 8 dereferenceable(72) %48, ptr noundef %49)
  %53 = load ptr, ptr %32, align 8, !tbaa !100
  br label %80

54:                                               ; preds = %15
  %55 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !79
  %57 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 72, ptr noundef %56)
  %58 = load ptr, ptr %7, align 8, !tbaa !134
  %59 = load i32, ptr %2, align 8, !tbaa !133
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i16, ptr %58, i64 %60
  store i16 0, ptr %61, align 2, !tbaa !135
  %62 = load ptr, ptr %55, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_79DTDAttDefC1EPKtNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %57, ptr noundef %58, i32 noundef 0, i32 noundef 4, ptr noundef %62)
          to label %63 unwind label %78

63:                                               ; preds = %54
  %64 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 8
  %65 = load i32, ptr %64, align 4, !tbaa !81
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 4, !tbaa !81
  %67 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %57, i64 0, i32 6
  store i32 %65, ptr %67, align 8, !tbaa !167
  %68 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 15
  %69 = load i32, ptr %68, align 4, !tbaa !129
  %70 = load ptr, ptr %5, align 8, !tbaa !106
  %71 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !122
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %72, i64 0, i32 15
  %74 = load i32, ptr %73, align 8, !tbaa !123
  %75 = icmp ne i32 %69, %74
  %76 = zext i1 %75 to i8
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %57, i64 0, i32 5
  store i8 %76, ptr %77, align 1, !tbaa !172
  tail call void @_ZN11xercesc_2_714DTDElementDecl9addAttDefEPNS_9DTDAttDefE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %57)
  br label %80

78:                                               ; preds = %54
  %79 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %57, ptr noundef %56) #13
  br label %444

80:                                               ; preds = %63, %47
  %81 = phi ptr [ %53, %47 ], [ %57, %63 ]
  %82 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !100
  %84 = icmp eq ptr %81, %83
  %85 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %88 = load ptr, ptr %87, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %88, i32 noundef 207)
  br label %89

89:                                               ; preds = %86, %80
  %90 = load ptr, ptr %5, align 8, !tbaa !106
  %91 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !122
  %93 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %92, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgCDATAStringE)
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %81, i64 0, i32 2
  store i32 0, ptr %95, align 4, !tbaa !173
  br label %256

96:                                               ; preds = %89
  %97 = load ptr, ptr %5, align 8, !tbaa !106
  %98 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %97, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !122
  %100 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %99, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni10fgIDStringE)
  %101 = load ptr, ptr %5, align 8, !tbaa !106
  %102 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !122
  br i1 %100, label %104, label %114

104:                                              ; preds = %96
  %105 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %103, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgRefStringE)
  br i1 %105, label %108, label %106

106:                                              ; preds = %104
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %81, i64 0, i32 2
  store i32 1, ptr %107, align 4, !tbaa !173
  br label %256

108:                                              ; preds = %104
  %109 = load ptr, ptr %5, align 8, !tbaa !106
  %110 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %109, i16 noundef zeroext 83)
  %111 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %81, i64 0, i32 2
  br i1 %110, label %113, label %112

112:                                              ; preds = %108
  store i32 2, ptr %111, align 4, !tbaa !173
  br label %256

113:                                              ; preds = %108
  store i32 3, ptr %111, align 4, !tbaa !173
  br label %256

114:                                              ; preds = %96
  %115 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %103, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgEntitStringE)
  %116 = load ptr, ptr %5, align 8, !tbaa !106
  br i1 %115, label %117, label %138

117:                                              ; preds = %114
  %118 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %116, i16 noundef zeroext 89)
  br i1 %118, label %119, label %121

119:                                              ; preds = %117
  %120 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %81, i64 0, i32 2
  store i32 4, ptr %120, align 4, !tbaa !173
  br label %256

121:                                              ; preds = %117
  %122 = load ptr, ptr %5, align 8, !tbaa !106
  %123 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %122, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !122
  %125 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %124, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgIESStringE)
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %81, i64 0, i32 2
  store i32 5, ptr %127, align 4, !tbaa !173
  br label %256

128:                                              ; preds = %121
  %129 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %130 = load ptr, ptr %129, align 8, !tbaa !105
  %131 = load ptr, ptr %81, align 8, !tbaa !52
  %132 = getelementptr inbounds ptr, ptr %131, i64 5
  %133 = load ptr, ptr %132, align 8
  %134 = tail call noundef ptr %133(ptr noundef nonnull align 8 dereferenceable(72) %81)
  %135 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !164
  %137 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %136)
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %130, i32 noundef 201, ptr noundef %134, ptr noundef %137, ptr noundef null, ptr noundef null)
  br label %446

138:                                              ; preds = %114
  %139 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %116, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !122
  %141 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %140, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgNmTokenStringE)
  %142 = load ptr, ptr %5, align 8, !tbaa !106
  br i1 %141, label %143, label %148

143:                                              ; preds = %138
  %144 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %142, i16 noundef zeroext 83)
  %145 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %81, i64 0, i32 2
  br i1 %144, label %146, label %147

146:                                              ; preds = %143
  store i32 7, ptr %145, align 4, !tbaa !173
  br label %256

147:                                              ; preds = %143
  store i32 6, ptr %145, align 4, !tbaa !173
  br label %256

148:                                              ; preds = %138
  %149 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %142, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !122
  %151 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %150, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgNotationStringE)
  br i1 %151, label %152, label %200

152:                                              ; preds = %148
  %153 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %153, label %157, label %154

154:                                              ; preds = %152
  %155 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %156 = load ptr, ptr %155, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %156, i32 noundef 207)
  br label %157

157:                                              ; preds = %154, %152
  %158 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %81, i64 0, i32 2
  store i32 8, ptr %158, align 4, !tbaa !173
  %159 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner15scanEnumerationERKNS_9DTDAttDefERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(72) %81, ptr noundef nonnull align 8 dereferenceable(40) %2, i1 noundef zeroext true)
  br i1 %159, label %160, label %446

160:                                              ; preds = %157
  %161 = load ptr, ptr %7, align 8, !tbaa !134
  %162 = load i32, ptr %2, align 8, !tbaa !133
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i16, ptr %161, i64 %163
  store i16 0, ptr %164, align 2, !tbaa !135
  %165 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %81, i64 0, i32 8
  %166 = load ptr, ptr %165, align 8, !tbaa !174
  %167 = icmp eq ptr %166, null
  br i1 %167, label %174, label %168

168:                                              ; preds = %160
  %169 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %81, i64 0, i32 9
  %170 = load ptr, ptr %169, align 8, !tbaa !175
  %171 = load ptr, ptr %170, align 8, !tbaa !52
  %172 = getelementptr inbounds ptr, ptr %171, i64 3
  %173 = load ptr, ptr %172, align 8
  tail call void %173(ptr noundef nonnull align 8 dereferenceable(8) %170, ptr noundef nonnull %166)
  br label %174

174:                                              ; preds = %168, %160
  %175 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %81, i64 0, i32 9
  %176 = load ptr, ptr %175, align 8, !tbaa !175
  %177 = icmp eq ptr %161, null
  br i1 %177, label %198, label %178

178:                                              ; preds = %174
  %179 = load i16, ptr %161, align 2, !tbaa !135
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %192, label %181

181:                                              ; preds = %178, %181
  %182 = phi ptr [ %183, %181 ], [ %161, %178 ]
  %183 = getelementptr inbounds i16, ptr %182, i64 1
  %184 = load i16, ptr %183, align 2, !tbaa !135
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %186, label %181, !llvm.loop !176

186:                                              ; preds = %181
  %187 = ptrtoint ptr %183 to i64
  %188 = ptrtoint ptr %161 to i64
  %189 = sub i64 %187, %188
  %190 = add i64 %189, 2
  %191 = and i64 %190, 8589934590
  br label %192

192:                                              ; preds = %186, %178
  %193 = phi i64 [ %191, %186 ], [ 2, %178 ]
  %194 = load ptr, ptr %176, align 8, !tbaa !52
  %195 = getelementptr inbounds ptr, ptr %194, i64 2
  %196 = load ptr, ptr %195, align 8
  %197 = tail call noundef ptr %196(ptr noundef nonnull align 8 dereferenceable(8) %176, i64 noundef %193)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %197, ptr nonnull align 2 %161, i64 %193, i1 false)
  br label %198

198:                                              ; preds = %174, %192
  %199 = phi ptr [ %197, %192 ], [ null, %174 ]
  store ptr %199, ptr %165, align 8, !tbaa !174
  br label %256

200:                                              ; preds = %148
  %201 = load ptr, ptr %5, align 8, !tbaa !106
  %202 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %201, i16 noundef zeroext 40)
  br i1 %202, label %203, label %246

203:                                              ; preds = %200
  %204 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %81, i64 0, i32 2
  store i32 9, ptr %204, align 4, !tbaa !173
  %205 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner15scanEnumerationERKNS_9DTDAttDefERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(72) %81, ptr noundef nonnull align 8 dereferenceable(40) %2, i1 noundef zeroext false)
  br i1 %205, label %206, label %446

206:                                              ; preds = %203
  %207 = load ptr, ptr %7, align 8, !tbaa !134
  %208 = load i32, ptr %2, align 8, !tbaa !133
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i16, ptr %207, i64 %209
  store i16 0, ptr %210, align 2, !tbaa !135
  %211 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %81, i64 0, i32 8
  %212 = load ptr, ptr %211, align 8, !tbaa !174
  %213 = icmp eq ptr %212, null
  br i1 %213, label %220, label %214

214:                                              ; preds = %206
  %215 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %81, i64 0, i32 9
  %216 = load ptr, ptr %215, align 8, !tbaa !175
  %217 = load ptr, ptr %216, align 8, !tbaa !52
  %218 = getelementptr inbounds ptr, ptr %217, i64 3
  %219 = load ptr, ptr %218, align 8
  tail call void %219(ptr noundef nonnull align 8 dereferenceable(8) %216, ptr noundef nonnull %212)
  br label %220

220:                                              ; preds = %214, %206
  %221 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %81, i64 0, i32 9
  %222 = load ptr, ptr %221, align 8, !tbaa !175
  %223 = icmp eq ptr %207, null
  br i1 %223, label %244, label %224

224:                                              ; preds = %220
  %225 = load i16, ptr %207, align 2, !tbaa !135
  %226 = icmp eq i16 %225, 0
  br i1 %226, label %238, label %227

227:                                              ; preds = %224, %227
  %228 = phi ptr [ %229, %227 ], [ %207, %224 ]
  %229 = getelementptr inbounds i16, ptr %228, i64 1
  %230 = load i16, ptr %229, align 2, !tbaa !135
  %231 = icmp eq i16 %230, 0
  br i1 %231, label %232, label %227, !llvm.loop !176

232:                                              ; preds = %227
  %233 = ptrtoint ptr %229 to i64
  %234 = ptrtoint ptr %207 to i64
  %235 = sub i64 %233, %234
  %236 = add i64 %235, 2
  %237 = and i64 %236, 8589934590
  br label %238

238:                                              ; preds = %232, %224
  %239 = phi i64 [ %237, %232 ], [ 2, %224 ]
  %240 = load ptr, ptr %222, align 8, !tbaa !52
  %241 = getelementptr inbounds ptr, ptr %240, i64 2
  %242 = load ptr, ptr %241, align 8
  %243 = tail call noundef ptr %242(ptr noundef nonnull align 8 dereferenceable(8) %222, i64 noundef %239)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %243, ptr nonnull align 2 %207, i64 %239, i1 false)
  br label %244

244:                                              ; preds = %220, %238
  %245 = phi ptr [ %243, %238 ], [ null, %220 ]
  store ptr %245, ptr %211, align 8, !tbaa !174
  br label %256

246:                                              ; preds = %200
  %247 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %248 = load ptr, ptr %247, align 8, !tbaa !105
  %249 = load ptr, ptr %81, align 8, !tbaa !52
  %250 = getelementptr inbounds ptr, ptr %249, i64 5
  %251 = load ptr, ptr %250, align 8
  %252 = tail call noundef ptr %251(ptr noundef nonnull align 8 dereferenceable(72) %81)
  %253 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %254 = load ptr, ptr %253, align 8, !tbaa !164
  %255 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %254)
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %248, i32 noundef 201, ptr noundef %252, ptr noundef %255, ptr noundef null, ptr noundef null)
  br label %446

256:                                              ; preds = %112, %113, %106, %147, %146, %244, %198, %119, %126, %94
  %257 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %257, label %261, label %258

258:                                              ; preds = %256
  %259 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %260 = load ptr, ptr %259, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %260, i32 noundef 207)
  br label %261

261:                                              ; preds = %258, %256
  tail call void @_ZN11xercesc_2_710DTDScanner15scanDefaultDeclERNS_9DTDAttDefE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(72) %81)
  %262 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %263 = load ptr, ptr %262, align 8, !tbaa !105
  %264 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %263, i64 0, i32 10
  %265 = load i8, ptr %264, align 8, !tbaa !140, !range !63, !noundef !64
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %436, label %267

267:                                              ; preds = %261
  %268 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %81, i64 0, i32 2
  %269 = load i32, ptr %268, align 4, !tbaa !173
  %270 = icmp eq i32 %269, 1
  br i1 %270, label %271, label %281

271:                                              ; preds = %267
  %272 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %81, i64 0, i32 1
  %273 = load i32, ptr %272, align 8, !tbaa !177
  switch i32 %273, label %274 [
    i32 4, label %281
    i32 2, label %281
  ]

274:                                              ; preds = %271
  %275 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %263, i64 0, i32 50
  %276 = load ptr, ptr %275, align 8, !tbaa !141
  %277 = load ptr, ptr %81, align 8, !tbaa !52
  %278 = getelementptr inbounds ptr, ptr %277, i64 5
  %279 = load ptr, ptr %278, align 8
  %280 = tail call noundef ptr %279(ptr noundef nonnull align 8 dereferenceable(72) %81)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %276, i32 noundef 8, ptr noundef %280, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %281

281:                                              ; preds = %271, %271, %274, %267
  %282 = load ptr, ptr %81, align 8, !tbaa !52
  %283 = getelementptr inbounds ptr, ptr %282, i64 5
  %284 = load ptr, ptr %283, align 8
  %285 = tail call noundef ptr %284(ptr noundef nonnull align 8 dereferenceable(72) %81)
  %286 = icmp eq ptr %285, null
  br i1 %286, label %436, label %287

287:                                              ; preds = %281
  %288 = load i16, ptr %285, align 2, !tbaa !135
  %289 = icmp eq i16 %288, 120
  br i1 %289, label %290, label %436

290:                                              ; preds = %287, %295
  %291 = phi i16 [ %298, %295 ], [ 1, %287 ]
  %292 = phi ptr [ %297, %295 ], [ @__const._ZN11xercesc_2_710DTDScanner10scanAttDefERNS_14DTDElementDeclERNS_9XMLBufferE.fgXMLSpace, %287 ]
  %293 = phi ptr [ %296, %295 ], [ %285, %287 ]
  %294 = icmp eq i16 %291, 0
  br i1 %294, label %301, label %295

295:                                              ; preds = %290
  %296 = getelementptr inbounds i16, ptr %293, i64 1
  %297 = getelementptr inbounds i16, ptr %292, i64 1
  %298 = load i16, ptr %296, align 2, !tbaa !135
  %299 = load i16, ptr %297, align 2, !tbaa !135
  %300 = icmp eq i16 %298, %299
  br i1 %300, label %290, label %436, !llvm.loop !160

301:                                              ; preds = %290
  %302 = load i32, ptr %268, align 4, !tbaa !173
  %303 = icmp eq i32 %302, 9
  br i1 %303, label %304, label %420

304:                                              ; preds = %301
  %305 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %81, i64 0, i32 8
  %306 = load ptr, ptr %305, align 8, !tbaa !174
  %307 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !77
  %309 = tail call noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef %306, ptr noundef %308)
  %310 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %309, i64 0, i32 2
  %311 = load i32, ptr %310, align 4, !tbaa !178
  switch i32 %311, label %416 [
    i32 1, label %312
    i32 2, label %348
  ]

312:                                              ; preds = %304
  %313 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %309, i32 noundef 0)
  %314 = icmp eq ptr %313, null
  br i1 %314, label %329, label %315

315:                                              ; preds = %312
  %316 = load i16, ptr %313, align 2, !tbaa !135
  %317 = icmp eq i16 %316, 100
  br i1 %317, label %318, label %329

318:                                              ; preds = %315, %323
  %319 = phi i16 [ %326, %323 ], [ 1, %315 ]
  %320 = phi ptr [ %325, %323 ], [ @__const._ZN11xercesc_2_710DTDScanner10scanAttDefERNS_14DTDElementDeclERNS_9XMLBufferE.fgDefault, %315 ]
  %321 = phi ptr [ %324, %323 ], [ %313, %315 ]
  %322 = icmp eq i16 %319, 0
  br i1 %322, label %424, label %323

323:                                              ; preds = %318
  %324 = getelementptr inbounds i16, ptr %321, i64 1
  %325 = getelementptr inbounds i16, ptr %320, i64 1
  %326 = load i16, ptr %324, align 2, !tbaa !135
  %327 = load i16, ptr %325, align 2, !tbaa !135
  %328 = icmp eq i16 %326, %327
  br i1 %328, label %318, label %329, !llvm.loop !160

329:                                              ; preds = %323, %315, %312
  %330 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %309, i32 noundef 0)
  %331 = icmp eq ptr %330, null
  br i1 %331, label %346, label %332

332:                                              ; preds = %329
  %333 = load i16, ptr %330, align 2, !tbaa !135
  %334 = icmp eq i16 %333, 112
  br i1 %334, label %335, label %346

335:                                              ; preds = %332, %340
  %336 = phi i16 [ %343, %340 ], [ 1, %332 ]
  %337 = phi ptr [ %342, %340 ], [ @__const._ZN11xercesc_2_710DTDScanner10scanAttDefERNS_14DTDElementDeclERNS_9XMLBufferE.fgPreserve, %332 ]
  %338 = phi ptr [ %341, %340 ], [ %330, %332 ]
  %339 = icmp eq i16 %336, 0
  br i1 %339, label %424, label %340

340:                                              ; preds = %335
  %341 = getelementptr inbounds i16, ptr %338, i64 1
  %342 = getelementptr inbounds i16, ptr %337, i64 1
  %343 = load i16, ptr %341, align 2, !tbaa !135
  %344 = load i16, ptr %342, align 2, !tbaa !135
  %345 = icmp eq i16 %343, %344
  br i1 %345, label %335, label %346, !llvm.loop !160

346:                                              ; preds = %340, %332, %329
  %347 = icmp eq i32 %311, 2
  br i1 %347, label %348, label %416

348:                                              ; preds = %304, %346
  %349 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %309, i32 noundef 0)
  %350 = icmp eq ptr %349, null
  br i1 %350, label %382, label %351

351:                                              ; preds = %348
  %352 = load i16, ptr %349, align 2, !tbaa !135
  %353 = icmp eq i16 %352, 100
  br i1 %353, label %354, label %382

354:                                              ; preds = %351, %359
  %355 = phi i16 [ %362, %359 ], [ 1, %351 ]
  %356 = phi ptr [ %361, %359 ], [ @__const._ZN11xercesc_2_710DTDScanner10scanAttDefERNS_14DTDElementDeclERNS_9XMLBufferE.fgDefault, %351 ]
  %357 = phi ptr [ %360, %359 ], [ %349, %351 ]
  %358 = icmp eq i16 %355, 0
  br i1 %358, label %365, label %359

359:                                              ; preds = %354
  %360 = getelementptr inbounds i16, ptr %357, i64 1
  %361 = getelementptr inbounds i16, ptr %356, i64 1
  %362 = load i16, ptr %360, align 2, !tbaa !135
  %363 = load i16, ptr %361, align 2, !tbaa !135
  %364 = icmp eq i16 %362, %363
  br i1 %364, label %354, label %382, !llvm.loop !160

365:                                              ; preds = %354
  %366 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %309, i32 noundef 1)
  %367 = icmp eq ptr %366, null
  br i1 %367, label %382, label %368

368:                                              ; preds = %365
  %369 = load i16, ptr %366, align 2, !tbaa !135
  %370 = icmp eq i16 %369, 112
  br i1 %370, label %371, label %382

371:                                              ; preds = %368, %376
  %372 = phi i16 [ %379, %376 ], [ 1, %368 ]
  %373 = phi ptr [ %378, %376 ], [ @__const._ZN11xercesc_2_710DTDScanner10scanAttDefERNS_14DTDElementDeclERNS_9XMLBufferE.fgPreserve, %368 ]
  %374 = phi ptr [ %377, %376 ], [ %366, %368 ]
  %375 = icmp eq i16 %372, 0
  br i1 %375, label %432, label %376

376:                                              ; preds = %371
  %377 = getelementptr inbounds i16, ptr %374, i64 1
  %378 = getelementptr inbounds i16, ptr %373, i64 1
  %379 = load i16, ptr %377, align 2, !tbaa !135
  %380 = load i16, ptr %378, align 2, !tbaa !135
  %381 = icmp eq i16 %379, %380
  br i1 %381, label %371, label %382, !llvm.loop !160

382:                                              ; preds = %359, %376, %351, %368, %365, %348
  %383 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %309, i32 noundef 1)
  %384 = icmp eq ptr %383, null
  br i1 %384, label %416, label %385

385:                                              ; preds = %382
  %386 = load i16, ptr %383, align 2, !tbaa !135
  %387 = icmp eq i16 %386, 100
  br i1 %387, label %388, label %416

388:                                              ; preds = %385, %393
  %389 = phi i16 [ %396, %393 ], [ 1, %385 ]
  %390 = phi ptr [ %395, %393 ], [ @__const._ZN11xercesc_2_710DTDScanner10scanAttDefERNS_14DTDElementDeclERNS_9XMLBufferE.fgDefault, %385 ]
  %391 = phi ptr [ %394, %393 ], [ %383, %385 ]
  %392 = icmp eq i16 %389, 0
  br i1 %392, label %399, label %393

393:                                              ; preds = %388
  %394 = getelementptr inbounds i16, ptr %391, i64 1
  %395 = getelementptr inbounds i16, ptr %390, i64 1
  %396 = load i16, ptr %394, align 2, !tbaa !135
  %397 = load i16, ptr %395, align 2, !tbaa !135
  %398 = icmp eq i16 %396, %397
  br i1 %398, label %388, label %416, !llvm.loop !160

399:                                              ; preds = %388
  %400 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %309, i32 noundef 0)
  %401 = icmp eq ptr %400, null
  br i1 %401, label %416, label %402

402:                                              ; preds = %399
  %403 = load i16, ptr %400, align 2, !tbaa !135
  %404 = icmp eq i16 %403, 112
  br i1 %404, label %405, label %416

405:                                              ; preds = %402, %410
  %406 = phi i16 [ %413, %410 ], [ 1, %402 ]
  %407 = phi ptr [ %412, %410 ], [ @__const._ZN11xercesc_2_710DTDScanner10scanAttDefERNS_14DTDElementDeclERNS_9XMLBufferE.fgPreserve, %402 ]
  %408 = phi ptr [ %411, %410 ], [ %400, %402 ]
  %409 = icmp eq i16 %406, 0
  br i1 %409, label %428, label %410

410:                                              ; preds = %405
  %411 = getelementptr inbounds i16, ptr %408, i64 1
  %412 = getelementptr inbounds i16, ptr %407, i64 1
  %413 = load i16, ptr %411, align 2, !tbaa !135
  %414 = load i16, ptr %412, align 2, !tbaa !135
  %415 = icmp eq i16 %413, %414
  br i1 %415, label %405, label %416, !llvm.loop !160

416:                                              ; preds = %393, %410, %399, %402, %304, %346, %382, %385
  %417 = load ptr, ptr %309, align 8, !tbaa !52
  %418 = getelementptr inbounds ptr, ptr %417, i64 1
  %419 = load ptr, ptr %418, align 8
  tail call void %419(ptr noundef nonnull align 8 dereferenceable(40) %309) #13
  br label %420

420:                                              ; preds = %416, %301
  %421 = load ptr, ptr %262, align 8, !tbaa !105
  %422 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %421, i64 0, i32 50
  %423 = load ptr, ptr %422, align 8, !tbaa !141
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %423, i32 noundef 50)
  br label %436

424:                                              ; preds = %318, %335
  %425 = load ptr, ptr %309, align 8, !tbaa !52
  %426 = getelementptr inbounds ptr, ptr %425, i64 1
  %427 = load ptr, ptr %426, align 8
  tail call void %427(ptr noundef nonnull align 8 dereferenceable(40) %309) #13
  br label %436

428:                                              ; preds = %405
  %429 = load ptr, ptr %309, align 8, !tbaa !52
  %430 = getelementptr inbounds ptr, ptr %429, i64 1
  %431 = load ptr, ptr %430, align 8
  tail call void %431(ptr noundef nonnull align 8 dereferenceable(40) %309) #13
  br label %436

432:                                              ; preds = %371
  %433 = load ptr, ptr %309, align 8, !tbaa !52
  %434 = getelementptr inbounds ptr, ptr %433, i64 1
  %435 = load ptr, ptr %434, align 8
  tail call void %435(ptr noundef nonnull align 8 dereferenceable(40) %309) #13
  br label %436

436:                                              ; preds = %295, %287, %281, %432, %428, %424, %420, %261
  %437 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  %438 = load ptr, ptr %437, align 8, !tbaa !80
  %439 = icmp eq ptr %438, null
  br i1 %439, label %446, label %440

440:                                              ; preds = %436
  %441 = load ptr, ptr %438, align 8, !tbaa !52
  %442 = getelementptr inbounds ptr, ptr %441, i64 2
  %443 = load ptr, ptr %442, align 8
  tail call void %443(ptr noundef nonnull align 8 dereferenceable(8) %438, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %81, i1 noundef zeroext %84)
  br label %446

444:                                              ; preds = %78, %45
  %445 = phi { ptr, i32 } [ %46, %45 ], [ %79, %78 ]
  resume { ptr, i32 } %445

446:                                              ; preds = %128, %246, %157, %203, %440, %436, %12
  %447 = phi ptr [ null, %12 ], [ null, %128 ], [ null, %246 ], [ null, %157 ], [ null, %203 ], [ %81, %440 ], [ %81, %436 ]
  ret ptr %447
}

declare noundef ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79DTDAttDefC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_79DTDAttDef7setNameEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79DTDAttDefC1EPKtNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_714DTDElementDecl9addAttDefEPNS_9DTDAttDefE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner15scanEnumerationERKNS_9DTDAttDefERNS_9XMLBufferEb(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  store i32 0, ptr %2, align 8, !tbaa !133
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !134
  store i16 0, ptr %6, align 2, !tbaa !135
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %3, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %10, i16 noundef zeroext 40)
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %14, i32 noundef 246)
  br label %15

15:                                               ; preds = %8, %12, %4
  %16 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !107
  %18 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %17)
  %19 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %18, i64 0, i32 6
  %21 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %18, i64 0, i32 6
  %23 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %25 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %26 = xor i1 %3, true
  br label %27

27:                                               ; preds = %74, %15
  %28 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %29 unwind label %35

29:                                               ; preds = %27
  %30 = load ptr, ptr %19, align 8
  store i32 0, ptr %18, align 8, !tbaa !133
  %31 = load ptr, ptr %20, align 8
  store i16 0, ptr %31, align 2, !tbaa !135
  %32 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %30, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !122
  %34 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %33, ptr noundef nonnull align 8 dereferenceable(40) %18, i1 noundef zeroext %26)
          to label %39 unwind label %37

35:                                               ; preds = %27
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %83

37:                                               ; preds = %29, %62, %72, %63, %54, %52, %47, %46, %40
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %83

39:                                               ; preds = %29
  br i1 %34, label %47, label %40

40:                                               ; preds = %39
  %41 = load ptr, ptr %21, align 8, !tbaa !105
  %42 = load ptr, ptr %1, align 8, !tbaa !52
  %43 = getelementptr inbounds ptr, ptr %42, i64 5
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %46 unwind label %37

46:                                               ; preds = %40
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %41, i32 noundef 242, ptr noundef %45, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %74 unwind label %37

47:                                               ; preds = %39
  %48 = load ptr, ptr %22, align 8, !tbaa !134
  %49 = load i32, ptr %18, align 8, !tbaa !133
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i16, ptr %48, i64 %50
  store i16 0, ptr %51, align 2, !tbaa !135
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %48, i32 noundef %49)
          to label %52 unwind label %37

52:                                               ; preds = %47
  %53 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %54 unwind label %37

54:                                               ; preds = %52
  %55 = load ptr, ptr %23, align 8, !tbaa !106
  %56 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %55, i16 noundef zeroext 41)
          to label %57 unwind label %37

57:                                               ; preds = %54
  br i1 %56, label %74, label %58

58:                                               ; preds = %57
  %59 = load i32, ptr %2, align 8, !tbaa !133
  %60 = load i32, ptr %24, align 4, !tbaa !162
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
          to label %63 unwind label %37

63:                                               ; preds = %62, %58
  %64 = load ptr, ptr %5, align 8, !tbaa !134
  %65 = load i32, ptr %2, align 8, !tbaa !133
  %66 = add i32 %65, 1
  store i32 %66, ptr %2, align 8, !tbaa !133
  %67 = zext i32 %65 to i64
  %68 = getelementptr inbounds i16, ptr %64, i64 %67
  store i16 32, ptr %68, align 2, !tbaa !135
  %69 = load ptr, ptr %23, align 8, !tbaa !106
  %70 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %69, i16 noundef zeroext 124)
          to label %71 unwind label %37

71:                                               ; preds = %63
  br i1 %70, label %74, label %72

72:                                               ; preds = %71
  %73 = load ptr, ptr %25, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %73, i32 noundef 243)
          to label %74 unwind label %37

74:                                               ; preds = %72, %71, %57, %46
  %75 = phi i32 [ 1, %46 ], [ 3, %57 ], [ 0, %71 ], [ 1, %72 ]
  switch i32 %75, label %77 [
    i32 0, label %27
    i32 3, label %76
  ], !llvm.loop !180

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %74, %76
  %78 = phi i1 [ true, %76 ], [ false, %74 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(40) %18)
          to label %82 unwind label %79

79:                                               ; preds = %77
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  tail call void @__clang_call_terminate(ptr %81) #14
  unreachable

82:                                               ; preds = %77
  ret i1 %78

83:                                               ; preds = %37, %35
  %84 = phi { ptr, i32 } [ %38, %37 ], [ %36, %35 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(40) %18)
          to label %88 unwind label %85

85:                                               ; preds = %83
  %86 = landingpad { ptr, i32 }
          catch ptr null
  %87 = extractvalue { ptr, i32 } %86, 0
  tail call void @__clang_call_terminate(ptr %87) #14
  unreachable

88:                                               ; preds = %83
  resume { ptr, i32 } %84
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner15scanDefaultDeclERNS_9DTDAttDefE(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %6, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgRequiredStringE)
  br i1 %7, label %97, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !106
  %10 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  %12 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgImpliedStringE)
  br i1 %12, label %97, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %3, align 8, !tbaa !106
  %15 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !122
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %16, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgFixedStringE)
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load ptr, ptr %3, align 8, !tbaa !106
  %20 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %19)
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %23, i32 noundef 207)
  br label %27

24:                                               ; preds = %18
  %25 = load ptr, ptr %3, align 8, !tbaa !106
  %26 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %25, i1 noundef zeroext false)
  br label %27

27:                                               ; preds = %13, %21, %24
  %28 = phi i32 [ 1, %24 ], [ 1, %21 ], [ 0, %13 ]
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 1
  store i32 %28, ptr %29, align 8, !tbaa !177
  %30 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  %31 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !107
  %33 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %32)
  %34 = load ptr, ptr %1, align 8, !tbaa !52
  %35 = getelementptr inbounds ptr, ptr %34, i64 5
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %38 unwind label %46

38:                                               ; preds = %27
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !173
  %41 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner12scanAttValueEPKtRNS_9XMLBufferENS_9XMLAttDef8AttTypesE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %37, ptr noundef nonnull align 8 dereferenceable(40) %33, i32 noundef %40)
          to label %42 unwind label %46

42:                                               ; preds = %38
  br i1 %41, label %52, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %45 = load ptr, ptr %44, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %45, i32 noundef 178)
          to label %52 unwind label %46

46:                                               ; preds = %85, %61, %43, %38, %27
  %47 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(40) %33)
          to label %51 unwind label %48

48:                                               ; preds = %46
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  tail call void @__clang_call_terminate(ptr %50) #14
  unreachable

51:                                               ; preds = %46
  resume { ptr, i32 } %47

52:                                               ; preds = %43, %42
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %33, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !134
  %55 = load i32, ptr %33, align 8, !tbaa !133
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i16, ptr %54, i64 %56
  store i16 0, ptr %57, align 2, !tbaa !135
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !181
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %52
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 9
  %63 = load ptr, ptr %62, align 8, !tbaa !175
  %64 = load ptr, ptr %63, align 8, !tbaa !52
  %65 = getelementptr inbounds ptr, ptr %64, i64 3
  %66 = load ptr, ptr %65, align 8
  invoke void %66(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull %59)
          to label %67 unwind label %46

67:                                               ; preds = %52, %61
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 9
  %69 = load ptr, ptr %68, align 8, !tbaa !175
  %70 = icmp eq ptr %54, null
  br i1 %70, label %92, label %71

71:                                               ; preds = %67
  %72 = load i16, ptr %54, align 2, !tbaa !135
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %71, %74
  %75 = phi ptr [ %76, %74 ], [ %54, %71 ]
  %76 = getelementptr inbounds i16, ptr %75, i64 1
  %77 = load i16, ptr %76, align 2, !tbaa !135
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %74, !llvm.loop !176

79:                                               ; preds = %74
  %80 = ptrtoint ptr %76 to i64
  %81 = ptrtoint ptr %54 to i64
  %82 = sub i64 %80, %81
  %83 = add i64 %82, 2
  %84 = and i64 %83, 8589934590
  br label %85

85:                                               ; preds = %79, %71
  %86 = phi i64 [ %84, %79 ], [ 2, %71 ]
  %87 = load ptr, ptr %69, align 8, !tbaa !52
  %88 = getelementptr inbounds ptr, ptr %87, i64 2
  %89 = load ptr, ptr %88, align 8
  %90 = invoke noundef ptr %89(ptr noundef nonnull align 8 dereferenceable(8) %69, i64 noundef %86)
          to label %91 unwind label %46

91:                                               ; preds = %85
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %90, ptr nonnull align 2 %54, i64 %86, i1 false)
  br label %92

92:                                               ; preds = %67, %91
  %93 = phi ptr [ %90, %91 ], [ null, %67 ]
  store ptr %93, ptr %58, align 8, !tbaa !181
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(40) %33)
          to label %100 unwind label %94

94:                                               ; preds = %92
  %95 = landingpad { ptr, i32 }
          catch ptr null
  %96 = extractvalue { ptr, i32 } %95, 0
  tail call void @__clang_call_terminate(ptr %96) #14
  unreachable

97:                                               ; preds = %8, %2
  %98 = phi i32 [ 2, %2 ], [ 4, %8 ]
  %99 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 1
  store i32 %98, ptr %99, align 8, !tbaa !177
  br label %100

100:                                              ; preds = %97, %92
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !178
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !183

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !184
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !185
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !94
  ret ptr %18
}

declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner15scanAttListDeclEv(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  br i1 %2, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %6, i32 noundef 207)
  %7 = load ptr, ptr %3, align 8, !tbaa !106
  br label %8

8:                                                ; preds = %8, %4
  %9 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %7)
  switch i16 %9, label %8 [
    i16 62, label %199
    i16 0, label %199
  ]

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !107
  %13 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %12)
  %14 = load ptr, ptr %3, align 8, !tbaa !106
  store i32 0, ptr %13, align 8, !tbaa !133
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %13, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !134
  store i16 0, ptr %16, align 2, !tbaa !135
  %17 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !122
  %19 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %18, ptr noundef nonnull align 8 dereferenceable(40) %13, i1 noundef zeroext false)
          to label %20 unwind label %31

20:                                               ; preds = %10
  br i1 %19, label %33, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %23, i32 noundef 183)
          to label %24 unwind label %31

24:                                               ; preds = %21
  %25 = load ptr, ptr %3, align 8, !tbaa !106
  br label %26

26:                                               ; preds = %28, %24
  %27 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %25)
          to label %28 unwind label %29

28:                                               ; preds = %26
  switch i16 %27, label %26 [
    i16 62, label %195
    i16 0, label %195
  ]

29:                                               ; preds = %26
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %205

31:                                               ; preds = %21, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %205

33:                                               ; preds = %20
  %34 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !82
  %36 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 14
  %37 = load i32, ptr %36, align 8, !tbaa !121
  %38 = load ptr, ptr %15, align 8, !tbaa !134
  %39 = load i32, ptr %13, align 8, !tbaa !133
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i16, ptr %38, i64 %40
  store i16 0, ptr %41, align 2, !tbaa !135
  %42 = load ptr, ptr %35, align 8, !tbaa !52
  %43 = getelementptr inbounds ptr, ptr %42, i64 11
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(61) %35, i32 noundef %37, ptr noundef null, ptr noundef %38, i32 noundef -2)
          to label %46 unwind label %76

46:                                               ; preds = %33
  %47 = icmp eq ptr %45, null
  br i1 %47, label %48, label %80

48:                                               ; preds = %46
  %49 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !79
  %51 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %50)
          to label %52 unwind label %76

52:                                               ; preds = %48
  %53 = load ptr, ptr %15, align 8, !tbaa !134
  %54 = load i32, ptr %13, align 8, !tbaa !133
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i16, ptr %53, i64 %55
  store i16 0, ptr %56, align 2, !tbaa !135
  %57 = load i32, ptr %36, align 8, !tbaa !121
  %58 = load ptr, ptr %49, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %51, ptr noundef %53, i32 noundef %57, i32 noundef 1, ptr noundef %58)
          to label %59 unwind label %78

59:                                               ; preds = %52
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %51, i64 0, i32 3
  store i32 2, ptr %60, align 8, !tbaa !186
  %61 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 15
  %62 = load i32, ptr %61, align 4, !tbaa !129
  %63 = load ptr, ptr %3, align 8, !tbaa !106
  %64 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !122
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %65, i64 0, i32 15
  %67 = load i32, ptr %66, align 8, !tbaa !123
  %68 = icmp ne i32 %62, %67
  %69 = zext i1 %68 to i8
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %51, i64 0, i32 5
  store i8 %69, ptr %70, align 8, !tbaa !187
  %71 = load ptr, ptr %34, align 8, !tbaa !82
  %72 = load ptr, ptr %71, align 8, !tbaa !52
  %73 = getelementptr inbounds ptr, ptr %72, i64 17
  %74 = load ptr, ptr %73, align 8
  %75 = invoke noundef i32 %74(ptr noundef nonnull align 8 dereferenceable(61) %71, ptr noundef nonnull %51, i1 noundef zeroext false)
          to label %80 unwind label %76

76:                                               ; preds = %85, %59, %48, %33
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %205

78:                                               ; preds = %52
  %79 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %51, ptr noundef %50) #13
  br label %205

80:                                               ; preds = %59, %46
  %81 = phi ptr [ %45, %46 ], [ %51, %59 ]
  %82 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !80
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr %83, align 8, !tbaa !52
  %87 = getelementptr inbounds ptr, ptr %86, i64 14
  %88 = load ptr, ptr %87, align 8
  invoke void %88(ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef nonnull align 8 dereferenceable(80) %81)
          to label %89 unwind label %76

89:                                               ; preds = %85, %80
  %90 = load ptr, ptr %11, align 8, !tbaa !107
  %91 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %90)
          to label %92 unwind label %105

92:                                               ; preds = %89
  %93 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %94 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %91, i64 0, i32 6
  br label %95

95:                                               ; preds = %92, %179
  %96 = phi i8 [ %181, %179 ], [ 0, %92 ]
  %97 = load ptr, ptr %3, align 8, !tbaa !106
  %98 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %97)
          to label %99 unwind label %107

99:                                               ; preds = %95
  switch i16 %98, label %116 [
    i16 0, label %100
    i16 62, label %113
  ]

100:                                              ; preds = %99
  %101 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %102 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %101, ptr noundef nonnull @.str, i32 noundef 658, i32 noundef 47, ptr noundef %103)
          to label %104 unwind label %111

104:                                              ; preds = %100
  invoke void @__cxa_throw(ptr nonnull %101, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %211 unwind label %109

105:                                              ; preds = %89
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %205

107:                                              ; preds = %95, %113, %129, %130, %139, %143, %145
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %200

109:                                              ; preds = %104
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %200

111:                                              ; preds = %100
  %112 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %101) #13
  br label %200

113:                                              ; preds = %99
  %114 = load ptr, ptr %3, align 8, !tbaa !106
  %115 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %114)
          to label %179 unwind label %107

116:                                              ; preds = %99
  %117 = load ptr, ptr %3, align 8, !tbaa !106
  %118 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %117, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !122
  %120 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %119, i64 0, i32 28
  %121 = load ptr, ptr %120, align 8, !tbaa !155
  %122 = zext i16 %98 to i64
  %123 = getelementptr inbounds i8, ptr %121, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !156
  %125 = icmp slt i8 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %116
  %127 = load ptr, ptr %82, align 8, !tbaa !80
  %128 = icmp eq ptr %127, null
  br i1 %128, label %139, label %129

129:                                              ; preds = %126
  invoke void @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %117, ptr noundef nonnull align 8 dereferenceable(40) %91)
          to label %130 unwind label %107

130:                                              ; preds = %129
  %131 = load ptr, ptr %82, align 8, !tbaa !80
  %132 = load ptr, ptr %94, align 8, !tbaa !134
  %133 = load i32, ptr %91, align 8, !tbaa !133
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i16, ptr %132, i64 %134
  store i16 0, ptr %135, align 2, !tbaa !135
  %136 = load ptr, ptr %131, align 8, !tbaa !52
  %137 = getelementptr inbounds ptr, ptr %136, i64 6
  %138 = load ptr, ptr %137, align 8
  invoke void %138(ptr noundef nonnull align 8 dereferenceable(8) %131, ptr noundef %132, i32 noundef %133)
          to label %179 unwind label %107

139:                                              ; preds = %126
  %140 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %117, i1 noundef zeroext false)
          to label %179 unwind label %107

141:                                              ; preds = %116
  %142 = icmp eq i16 %98, 37
  br i1 %142, label %143, label %147

143:                                              ; preds = %141
  %144 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %117)
          to label %145 unwind label %107

145:                                              ; preds = %143
  %146 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner11expandPERefEbbbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %179 unwind label %107

147:                                              ; preds = %141
  %148 = invoke noundef ptr @_ZN11xercesc_2_710DTDScanner10scanAttDefERNS_14DTDElementDeclERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %81, ptr noundef nonnull align 8 dereferenceable(40) %91)
          to label %149 unwind label %158

149:                                              ; preds = %147
  %150 = icmp eq ptr %148, null
  br i1 %150, label %151, label %160

151:                                              ; preds = %149
  %152 = load ptr, ptr %3, align 8, !tbaa !106
  br label %153

153:                                              ; preds = %155, %151
  %154 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %152)
          to label %155 unwind label %156

155:                                              ; preds = %153
  switch i16 %154, label %153 [
    i16 62, label %179
    i16 0, label %179
  ]

156:                                              ; preds = %153
  %157 = landingpad { ptr, i32 }
          cleanup
  br label %200

158:                                              ; preds = %147, %178, %172
  %159 = landingpad { ptr, i32 }
          cleanup
  br label %200

160:                                              ; preds = %149
  %161 = load ptr, ptr %93, align 8, !tbaa !105
  %162 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %161, i64 0, i32 10
  %163 = load i8, ptr %162, align 8, !tbaa !140, !range !63, !noundef !64
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %179, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %148, i64 0, i32 2
  %167 = load i32, ptr %166, align 4, !tbaa !173
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %179

169:                                              ; preds = %165
  %170 = and i8 %96, 1
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %81, i64 0, i32 2
  %174 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %161, i64 0, i32 50
  %175 = load ptr, ptr %174, align 8, !tbaa !141
  %176 = load ptr, ptr %173, align 8, !tbaa !164
  %177 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %176)
          to label %178 unwind label %158

178:                                              ; preds = %172
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %175, i32 noundef 11, ptr noundef %177, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %179 unwind label %158

179:                                              ; preds = %155, %155, %169, %165, %160, %178, %145, %139, %130, %113
  %180 = phi i1 [ false, %113 ], [ true, %130 ], [ true, %139 ], [ true, %145 ], [ true, %169 ], [ true, %165 ], [ true, %160 ], [ true, %178 ], [ false, %155 ], [ false, %155 ]
  %181 = phi i8 [ %96, %113 ], [ %96, %130 ], [ %96, %139 ], [ %96, %145 ], [ 1, %169 ], [ %96, %165 ], [ %96, %160 ], [ 1, %178 ], [ %96, %155 ], [ %96, %155 ]
  br i1 %180, label %95, label %182

182:                                              ; preds = %179
  %183 = load ptr, ptr %82, align 8, !tbaa !80
  %184 = icmp eq ptr %183, null
  br i1 %184, label %191, label %185

185:                                              ; preds = %182
  %186 = load ptr, ptr %183, align 8, !tbaa !52
  %187 = getelementptr inbounds ptr, ptr %186, i64 8
  %188 = load ptr, ptr %187, align 8
  invoke void %188(ptr noundef nonnull align 8 dereferenceable(8) %183, ptr noundef nonnull align 8 dereferenceable(80) %81)
          to label %191 unwind label %189

189:                                              ; preds = %185
  %190 = landingpad { ptr, i32 }
          cleanup
  br label %200

191:                                              ; preds = %185, %182
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %90, ptr noundef nonnull align 8 dereferenceable(40) %91)
          to label %195 unwind label %192

192:                                              ; preds = %191
  %193 = landingpad { ptr, i32 }
          catch ptr null
  %194 = extractvalue { ptr, i32 } %193, 0
  tail call void @__clang_call_terminate(ptr %194) #14
  unreachable

195:                                              ; preds = %28, %28, %191
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %199 unwind label %196

196:                                              ; preds = %195
  %197 = landingpad { ptr, i32 }
          catch ptr null
  %198 = extractvalue { ptr, i32 } %197, 0
  tail call void @__clang_call_terminate(ptr %198) #14
  unreachable

199:                                              ; preds = %8, %8, %195
  ret void

200:                                              ; preds = %156, %158, %107, %109, %111, %189
  %201 = phi { ptr, i32 } [ %190, %189 ], [ %112, %111 ], [ %108, %107 ], [ %110, %109 ], [ %157, %156 ], [ %159, %158 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %90, ptr noundef nonnull align 8 dereferenceable(40) %91)
          to label %205 unwind label %202

202:                                              ; preds = %200
  %203 = landingpad { ptr, i32 }
          catch ptr null
  %204 = extractvalue { ptr, i32 } %203, 0
  tail call void @__clang_call_terminate(ptr %204) #14
  unreachable

205:                                              ; preds = %29, %31, %105, %200, %76, %78
  %206 = phi { ptr, i32 } [ %77, %76 ], [ %79, %78 ], [ %106, %105 ], [ %201, %200 ], [ %30, %29 ], [ %32, %31 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %210 unwind label %207

207:                                              ; preds = %205
  %208 = landingpad { ptr, i32 }
          catch ptr null
  %209 = extractvalue { ptr, i32 } %208, 0
  tail call void @__clang_call_terminate(ptr %209) #14
  unreachable

210:                                              ; preds = %205
  resume { ptr, i32 } %206

211:                                              ; preds = %104
  unreachable
}

declare void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

declare void @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner12scanAttValueEPKtRNS_9XMLBufferENS_9XMLAttDef8AttTypesE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  %9 = alloca [9 x i16], align 16
  store i32 0, ptr %2, align 8, !tbaa !133
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !134
  store i16 0, ptr %11, align 2, !tbaa !135
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr noundef nonnull align 2 dereferenceable(2) %5)
  br i1 %14, label %15, label %196

15:                                               ; preds = %4
  %16 = load ptr, ptr %12, align 8, !tbaa !106
  %17 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !122
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %18, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i16 0, ptr %7, align 2, !tbaa !135
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #13
  %21 = icmp eq i32 %3, 0
  br label %22

22:                                               ; preds = %120, %15
  %23 = phi i32 [ 1, %15 ], [ %121, %120 ]
  %24 = phi i8 [ 0, %15 ], [ %122, %120 ]
  %25 = phi i8 [ 0, %15 ], [ %123, %120 ]
  br label %26

26:                                               ; preds = %150, %22
  %27 = phi i32 [ %23, %22 ], [ 0, %150 ]
  %28 = phi i8 [ %25, %22 ], [ %125, %150 ]
  br label %29

29:                                               ; preds = %26, %71
  %30 = phi i8 [ 0, %71 ], [ %28, %26 ]
  %31 = load ptr, ptr %12, align 8, !tbaa !106
  %32 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %31)
          to label %33 unwind label %40

33:                                               ; preds = %29
  store i16 %32, ptr %6, align 2, !tbaa !135
  %34 = icmp eq i16 %32, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %33
  %36 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %37 = call ptr @__cxa_allocate_exception(i64 48) #13
  %38 = load ptr, ptr %36, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %37, ptr noundef nonnull @.str, i32 noundef 787, i32 noundef 47, ptr noundef %38)
          to label %39 unwind label %50

39:                                               ; preds = %35
  invoke void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %198 unwind label %48

40:                                               ; preds = %69, %29
  %41 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %110

42:                                               ; preds = %79, %86, %131
  %43 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %110

44:                                               ; preds = %159, %175, %187
  %45 = phi i32 [ %168, %187 ], [ %168, %175 ], [ 0, %159 ]
  %46 = phi i8 [ %169, %187 ], [ %169, %175 ], [ %24, %159 ]
  %47 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %110

48:                                               ; preds = %39, %64
  %49 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %110

50:                                               ; preds = %35
  %51 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @__cxa_free_exception(ptr %37) #13
  br label %110

52:                                               ; preds = %33
  %53 = load i16, ptr %5, align 2, !tbaa !135
  %54 = icmp eq i16 %32, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load ptr, ptr %12, align 8, !tbaa !106
  %57 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !122
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %58, i64 0, i32 15
  %60 = load i32, ptr %59, align 8, !tbaa !123
  %61 = icmp eq i32 %20, %60
  br i1 %61, label %194, label %62

62:                                               ; preds = %55
  %63 = icmp ugt i32 %20, %60
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %66 = load ptr, ptr %65, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %66, i32 noundef 231)
          to label %194 unwind label %48

67:                                               ; preds = %62, %52
  store i8 0, ptr %8, align 1, !tbaa !153
  %68 = icmp eq i16 %32, 38
  br i1 %68, label %69, label %73

69:                                               ; preds = %67
  %70 = invoke noundef i32 @_ZN11xercesc_2_710DTDScanner13scanEntityRefERtS1_Rb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 2 dereferenceable(2) %6, ptr noundef nonnull align 2 dereferenceable(2) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %71 unwind label %40, !range !188

71:                                               ; preds = %69
  %72 = icmp eq i32 %70, 2
  br i1 %72, label %124, label %29, !llvm.loop !189

73:                                               ; preds = %67
  %74 = and i16 %32, -1024
  %75 = icmp eq i16 %74, -10240
  %76 = and i8 %30, 1
  %77 = icmp eq i8 %76, 0
  br i1 %75, label %78, label %82

78:                                               ; preds = %73
  br i1 %77, label %124, label %79

79:                                               ; preds = %78
  %80 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %81 = load ptr, ptr %80, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %81, i32 noundef 249)
          to label %124 unwind label %42

82:                                               ; preds = %73
  br i1 %77, label %89, label %83

83:                                               ; preds = %82
  %84 = add i16 %32, 8192
  %85 = icmp ult i16 %84, -1024
  br i1 %85, label %86, label %124

86:                                               ; preds = %83
  %87 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %88 = load ptr, ptr %87, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %88, i32 noundef 249)
          to label %124 unwind label %42

89:                                               ; preds = %82
  %90 = load ptr, ptr %12, align 8, !tbaa !106
  %91 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !122
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %92, i64 0, i32 28
  %94 = load ptr, ptr %93, align 8, !tbaa !155
  %95 = zext i16 %32 to i64
  %96 = getelementptr inbounds i8, ptr %94, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !156
  %98 = and i8 %97, 64
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %124

100:                                              ; preds = %89
  %101 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %9) #13
  %102 = zext i16 %32 to i32
  %103 = load ptr, ptr %101, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %102, ptr noundef nonnull %9, i32 noundef 8, i32 noundef 16, ptr noundef %103)
          to label %104 unwind label %108

104:                                              ; preds = %100
  %105 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %106 = load ptr, ptr %105, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %106, i32 noundef 218, ptr noundef %1, ptr noundef nonnull %9, ptr noundef null, ptr noundef null)
          to label %107 unwind label %108

107:                                              ; preds = %104
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %9) #13
  br label %124

108:                                              ; preds = %104, %100
  %109 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %9) #13
  br label %110

110:                                              ; preds = %48, %42, %44, %40, %108, %50
  %111 = phi i32 [ %27, %108 ], [ %27, %50 ], [ %27, %48 ], [ %27, %40 ], [ %27, %42 ], [ %45, %44 ]
  %112 = phi i8 [ %24, %108 ], [ %24, %50 ], [ %24, %48 ], [ %24, %40 ], [ %24, %42 ], [ %46, %44 ]
  %113 = phi { ptr, i32 } [ %109, %108 ], [ %51, %50 ], [ %49, %48 ], [ %41, %40 ], [ %43, %42 ], [ %47, %44 ]
  %114 = extractvalue { ptr, i32 } %113, 1
  %115 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #13
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %195

117:                                              ; preds = %110
  %118 = extractvalue { ptr, i32 } %113, 0
  %119 = call ptr @__cxa_begin_catch(ptr %118) #13
  store i8 0, ptr %8, align 1, !tbaa !153
  call void @__cxa_end_catch()
  br label %120

120:                                              ; preds = %117, %188, %176
  %121 = phi i32 [ %111, %117 ], [ %168, %188 ], [ %168, %176 ]
  %122 = phi i8 [ %112, %117 ], [ %169, %188 ], [ %169, %176 ]
  %123 = phi i8 [ 0, %117 ], [ %125, %188 ], [ %125, %176 ]
  br label %22, !llvm.loop !189

124:                                              ; preds = %71, %86, %79, %83, %107, %89, %78
  %125 = phi i8 [ 1, %78 ], [ 0, %89 ], [ 0, %107 ], [ 0, %83 ], [ %30, %79 ], [ 0, %86 ], [ %30, %71 ]
  %126 = load i8, ptr %8, align 1, !tbaa !153, !range !63, !noundef !64
  %127 = icmp eq i8 %126, 0
  %128 = load i16, ptr %6, align 2
  %129 = icmp eq i16 %128, 60
  %130 = select i1 %127, i1 %129, i1 false
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %133 = load ptr, ptr %132, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %133, i32 noundef 248, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %134 unwind label %42

134:                                              ; preds = %131, %124
  br i1 %21, label %135, label %138

135:                                              ; preds = %134
  br i1 %127, label %136, label %167

136:                                              ; preds = %135
  switch i16 %128, label %167 [
    i16 13, label %137
    i16 10, label %137
    i16 9, label %137
  ]

137:                                              ; preds = %136, %136, %136
  store i16 32, ptr %6, align 2, !tbaa !135
  br label %167

138:                                              ; preds = %134
  %139 = icmp eq i32 %27, 0
  %140 = load ptr, ptr %12, align 8, !tbaa !106
  %141 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %140, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !122
  %143 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %142, i64 0, i32 28
  %144 = load ptr, ptr %143, align 8, !tbaa !155
  %145 = zext i16 %128 to i64
  %146 = getelementptr inbounds i8, ptr %144, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !156
  %148 = icmp slt i8 %147, 0
  br i1 %139, label %149, label %166

149:                                              ; preds = %138
  br i1 %148, label %150, label %151

150:                                              ; preds = %149, %166
  br label %26, !llvm.loop !189

151:                                              ; preds = %149
  %152 = and i8 %24, 1
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %167, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %156 = load i32, ptr %2, align 8, !tbaa !133
  %157 = load i32, ptr %155, align 4, !tbaa !162
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
          to label %160 unwind label %44

160:                                              ; preds = %159, %154
  %161 = load ptr, ptr %10, align 8, !tbaa !134
  %162 = load i32, ptr %2, align 8, !tbaa !133
  %163 = add i32 %162, 1
  store i32 %163, ptr %2, align 8, !tbaa !133
  %164 = zext i32 %162 to i64
  %165 = getelementptr inbounds i16, ptr %161, i64 %164
  store i16 32, ptr %165, align 2, !tbaa !135
  br label %167

166:                                              ; preds = %138
  br i1 %148, label %150, label %167

167:                                              ; preds = %166, %160, %151, %136, %135, %137
  %168 = phi i32 [ %23, %135 ], [ %23, %137 ], [ %23, %136 ], [ 1, %160 ], [ 1, %151 ], [ 1, %166 ]
  %169 = phi i8 [ %24, %135 ], [ %24, %137 ], [ %24, %136 ], [ 1, %160 ], [ 1, %151 ], [ 1, %166 ]
  %170 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %171 = load i16, ptr %6, align 2, !tbaa !135
  %172 = load i32, ptr %2, align 8, !tbaa !133
  %173 = load i32, ptr %170, align 4, !tbaa !162
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
          to label %176 unwind label %44

176:                                              ; preds = %175, %167
  %177 = load ptr, ptr %10, align 8, !tbaa !134
  %178 = load i32, ptr %2, align 8, !tbaa !133
  %179 = add i32 %178, 1
  store i32 %179, ptr %2, align 8, !tbaa !133
  %180 = zext i32 %178 to i64
  %181 = getelementptr inbounds i16, ptr %177, i64 %180
  store i16 %171, ptr %181, align 2, !tbaa !135
  %182 = load i16, ptr %7, align 2, !tbaa !135
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %120, label %184

184:                                              ; preds = %176
  %185 = load i32, ptr %170, align 4, !tbaa !162
  %186 = icmp eq i32 %179, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
          to label %188 unwind label %44

188:                                              ; preds = %187, %184
  %189 = load ptr, ptr %10, align 8, !tbaa !134
  %190 = load i32, ptr %2, align 8, !tbaa !133
  %191 = add i32 %190, 1
  store i32 %191, ptr %2, align 8, !tbaa !133
  %192 = zext i32 %190 to i64
  %193 = getelementptr inbounds i16, ptr %189, i64 %192
  store i16 %182, ptr %193, align 2, !tbaa !135
  store i16 0, ptr %7, align 2, !tbaa !135
  br label %120

194:                                              ; preds = %64, %55
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  br label %196

195:                                              ; preds = %110
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  resume { ptr, i32 } %113

196:                                              ; preds = %4, %194
  %197 = phi i1 [ %61, %194 ], [ false, %4 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  ret i1 %197

198:                                              ; preds = %39
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_710DTDScanner13scanEntityRefERtS1_Rb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0, ptr nocapture noundef nonnull align 2 dereferenceable(2) %1, ptr nocapture noundef nonnull writeonly align 2 dereferenceable(2) %2, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store i8 0, ptr %3, align 1, !tbaa !153
  store i16 0, ptr %2, align 2, !tbaa !135
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %11, i64 0, i32 15
  %13 = load i32, ptr %12, align 8, !tbaa !123
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %9, i16 noundef zeroext 35)
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 2 dereferenceable(2) %2)
  br i1 %16, label %17, label %258

17:                                               ; preds = %15
  %18 = load ptr, ptr %8, align 8, !tbaa !106
  %19 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !122
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %20, i64 0, i32 15
  %22 = load i32, ptr %21, align 8, !tbaa !123
  %23 = icmp eq i32 %13, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %26, i32 noundef 231)
  br label %27

27:                                               ; preds = %24, %17
  store i8 1, ptr %3, align 1, !tbaa !153
  br label %258

28:                                               ; preds = %4
  %29 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !107
  %31 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %30)
  %32 = load ptr, ptr %8, align 8, !tbaa !106
  store i32 0, ptr %31, align 8, !tbaa !133
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %31, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !134
  store i16 0, ptr %34, align 2, !tbaa !135
  %35 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %32, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !122
  %37 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %36, ptr noundef nonnull align 8 dereferenceable(40) %31, i1 noundef zeroext false)
          to label %38 unwind label %42

38:                                               ; preds = %28
  br i1 %37, label %44, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %41 = load ptr, ptr %40, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %41, i32 noundef 226)
          to label %247 unwind label %42

42:                                               ; preds = %28, %62, %48, %44, %39
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %252

44:                                               ; preds = %38
  %45 = load ptr, ptr %8, align 8, !tbaa !106
  %46 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %45, i16 noundef zeroext 59)
          to label %47 unwind label %42

47:                                               ; preds = %44
  br i1 %46, label %55, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %50 = load ptr, ptr %49, align 8, !tbaa !105
  %51 = load ptr, ptr %33, align 8, !tbaa !134
  %52 = load i32, ptr %31, align 8, !tbaa !133
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i16, ptr %51, i64 %53
  store i16 0, ptr %54, align 2, !tbaa !135
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %50, i32 noundef 229, ptr noundef %51, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %55 unwind label %42

55:                                               ; preds = %48, %47
  %56 = load ptr, ptr %8, align 8, !tbaa !106
  %57 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !122
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %58, i64 0, i32 15
  %60 = load i32, ptr %59, align 8, !tbaa !123
  %61 = icmp eq i32 %13, %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %64 = load ptr, ptr %63, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %64, i32 noundef 231)
          to label %65 unwind label %42

65:                                               ; preds = %62, %55
  %66 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 9
  %67 = load ptr, ptr %66, align 8, !tbaa !82
  %68 = load ptr, ptr %33, align 8, !tbaa !134
  %69 = load i32, ptr %31, align 8, !tbaa !133
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i16, ptr %68, i64 %70
  store i16 0, ptr %71, align 2, !tbaa !135
  %72 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %73 = invoke noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %72, ptr noundef %68, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %74 unwind label %104

74:                                               ; preds = %65
  %75 = icmp eq ptr %73, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %74
  %77 = load ptr, ptr %73, align 8, !tbaa !137
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi ptr [ %77, %76 ], [ null, %74 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %67, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %84 = invoke noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %83, ptr noundef %68, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %85 unwind label %104

85:                                               ; preds = %81
  %86 = icmp eq ptr %84, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %85
  %88 = load ptr, ptr %84, align 8, !tbaa !137
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi ptr [ %88, %87 ], [ null, %85 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %91

91:                                               ; preds = %89, %78
  %92 = phi ptr [ %90, %89 ], [ %79, %78 ]
  %93 = icmp eq ptr %92, null
  %94 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %95 = load ptr, ptr %94, align 8, !tbaa !105
  %96 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %95, i64 0, i32 8
  %97 = load i8, ptr %96, align 2, !tbaa !139, !range !63, !noundef !64
  %98 = icmp eq i8 %97, 0
  br i1 %93, label %99, label %117

99:                                               ; preds = %91
  br i1 %98, label %100, label %153

100:                                              ; preds = %99
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %95, i64 0, i32 9
  %102 = load i8, ptr %101, align 1, !tbaa !131, !range !63, !noundef !64
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %106, label %153

104:                                              ; preds = %153, %81, %65, %160, %130, %124, %118, %110
  %105 = landingpad { ptr, i32 }
          cleanup
  br label %252

106:                                              ; preds = %100
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %95, i64 0, i32 10
  %108 = load i8, ptr %107, align 8, !tbaa !140, !range !63, !noundef !64
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %247, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %95, i64 0, i32 50
  %112 = load ptr, ptr %111, align 8, !tbaa !141
  %113 = load ptr, ptr %33, align 8, !tbaa !134
  %114 = load i32, ptr %31, align 8, !tbaa !133
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i16, ptr %113, i64 %115
  store i16 0, ptr %116, align 2, !tbaa !135
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %112, i32 noundef 85, ptr noundef %113, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %247 unwind label %104

117:                                              ; preds = %91
  br i1 %98, label %130, label %118

118:                                              ; preds = %117
  %119 = load ptr, ptr %92, align 8, !tbaa !52
  %120 = getelementptr inbounds ptr, ptr %119, i64 5
  %121 = load ptr, ptr %120, align 8
  %122 = invoke noundef zeroext i1 %121(ptr noundef nonnull align 8 dereferenceable(72) %92)
          to label %123 unwind label %104

123:                                              ; preds = %118
  br i1 %122, label %130, label %124

124:                                              ; preds = %123
  %125 = load ptr, ptr %94, align 8, !tbaa !105
  %126 = load ptr, ptr %33, align 8, !tbaa !134
  %127 = load i32, ptr %31, align 8, !tbaa !133
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i16, ptr %126, i64 %128
  store i16 0, ptr %129, align 2, !tbaa !135
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %125, i32 noundef 298, ptr noundef %126, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %130 unwind label %104

130:                                              ; preds = %124, %123, %117
  %131 = load ptr, ptr %92, align 8, !tbaa !52
  %132 = getelementptr inbounds ptr, ptr %131, i64 7
  %133 = load ptr, ptr %132, align 8
  %134 = invoke noundef zeroext i1 %133(ptr noundef nonnull align 8 dereferenceable(72) %92)
          to label %135 unwind label %104

135:                                              ; preds = %130
  br i1 %134, label %136, label %140

136:                                              ; preds = %135
  %137 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %92, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !151
  %139 = load i16, ptr %138, align 2, !tbaa !135
  store i16 %139, ptr %1, align 2, !tbaa !135
  store i8 1, ptr %3, align 1, !tbaa !153
  br label %247

140:                                              ; preds = %135
  %141 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %92, i64 0, i32 6
  %142 = load ptr, ptr %141, align 8, !tbaa !142
  %143 = icmp ne ptr %142, null
  %144 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %92, i64 0, i32 7
  %145 = load ptr, ptr %144, align 8
  %146 = icmp ne ptr %145, null
  %147 = select i1 %143, i1 true, i1 %146
  br i1 %147, label %148, label %228

148:                                              ; preds = %140
  %149 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %92, i64 0, i32 5
  %150 = load ptr, ptr %149, align 8, !tbaa !193
  %151 = icmp eq ptr %150, null
  %152 = load ptr, ptr %94, align 8, !tbaa !105
  br i1 %151, label %160, label %153

153:                                              ; preds = %148, %99, %100
  %154 = phi ptr [ %95, %100 ], [ %95, %99 ], [ %152, %148 ]
  %155 = phi i32 [ 227, %100 ], [ 227, %99 ], [ 228, %148 ]
  %156 = load ptr, ptr %33, align 8, !tbaa !134
  %157 = load i32, ptr %31, align 8, !tbaa !133
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i16, ptr %156, i64 %158
  store i16 0, ptr %159, align 2, !tbaa !135
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %154, i32 noundef %155, ptr noundef %156, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %247 unwind label %104

160:                                              ; preds = %148
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %152, i32 noundef 270)
          to label %161 unwind label %104

161:                                              ; preds = %160
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %162 = load ptr, ptr %8, align 8, !tbaa !106
  %163 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %92, i64 0, i32 8
  %164 = load ptr, ptr %163, align 8, !tbaa !144
  %165 = load ptr, ptr %144, align 8, !tbaa !147
  %166 = load ptr, ptr %141, align 8, !tbaa !142
  %167 = load ptr, ptr %94, align 8, !tbaa !105
  %168 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %167, i64 0, i32 3
  %169 = load i8, ptr %168, align 1, !tbaa !145, !range !63, !noundef !64
  %170 = icmp ne i8 %169, 0
  %171 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %167, i64 0, i32 23
  %172 = load i8, ptr %171, align 1, !tbaa !146, !range !63, !noundef !64
  %173 = icmp ne i8 %172, 0
  %174 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_S2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80) %162, ptr noundef %164, ptr noundef %165, ptr noundef %166, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext %170, i1 noundef zeroext %173)
          to label %175 unwind label %194

175:                                              ; preds = %161
  %176 = load ptr, ptr %7, align 8, !tbaa !94
  %177 = icmp eq ptr %174, null
  br i1 %177, label %178, label %200

178:                                              ; preds = %175
  %179 = call ptr @__cxa_allocate_exception(i64 48) #13
  %180 = load ptr, ptr %7, align 8, !tbaa !94
  %181 = icmp eq ptr %180, null
  br i1 %181, label %187, label %182

182:                                              ; preds = %178
  %183 = load ptr, ptr %180, align 8, !tbaa !52
  %184 = getelementptr inbounds ptr, ptr %183, i64 5
  %185 = load ptr, ptr %184, align 8
  %186 = invoke noundef ptr %185(ptr noundef nonnull align 8 dereferenceable(41) %180)
          to label %189 unwind label %196

187:                                              ; preds = %178
  %188 = load ptr, ptr %144, align 8, !tbaa !147
  br label %189

189:                                              ; preds = %182, %187
  %190 = phi ptr [ %188, %187 ], [ %186, %182 ]
  %191 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %179, ptr noundef nonnull @.str, i32 noundef 2013, i32 noundef 46, ptr noundef %190, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %192)
          to label %193 unwind label %196

193:                                              ; preds = %189
  invoke void @__cxa_throw(ptr nonnull %179, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %260 unwind label %198

194:                                              ; preds = %161
  %195 = landingpad { ptr, i32 }
          cleanup
  br label %226

196:                                              ; preds = %189, %182
  %197 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %179) #13
  br label %219

198:                                              ; preds = %211, %208, %205, %200, %193
  %199 = landingpad { ptr, i32 }
          cleanup
  br label %219

200:                                              ; preds = %175
  %201 = load ptr, ptr %8, align 8, !tbaa !106
  %202 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %201, ptr noundef nonnull %174, ptr noundef nonnull %92)
          to label %203 unwind label %198

203:                                              ; preds = %200
  %204 = load ptr, ptr %94, align 8, !tbaa !105
  br i1 %202, label %208, label %205

205:                                              ; preds = %203
  %206 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %92, i64 0, i32 4
  %207 = load ptr, ptr %206, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %204, i32 noundef 230, ptr noundef %207, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %212 unwind label %198

208:                                              ; preds = %203
  %209 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %204, i1 noundef zeroext true)
          to label %210 unwind label %198

210:                                              ; preds = %208
  br i1 %209, label %211, label %212

211:                                              ; preds = %210
  invoke void @_ZN11xercesc_2_710DTDScanner12scanTextDeclEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %212 unwind label %198

212:                                              ; preds = %211, %210, %205
  %213 = icmp eq ptr %176, null
  br i1 %213, label %218, label %214

214:                                              ; preds = %212
  %215 = load ptr, ptr %176, align 8, !tbaa !52
  %216 = getelementptr inbounds ptr, ptr %215, i64 1
  %217 = load ptr, ptr %216, align 8
  call void %217(ptr noundef nonnull align 8 dereferenceable(41) %176) #13
  br label %218

218:                                              ; preds = %212, %214
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br i1 %202, label %246, label %247

219:                                              ; preds = %198, %196
  %220 = phi { ptr, i32 } [ %199, %198 ], [ %197, %196 ]
  %221 = icmp eq ptr %176, null
  br i1 %221, label %226, label %222

222:                                              ; preds = %219
  %223 = load ptr, ptr %176, align 8, !tbaa !52
  %224 = getelementptr inbounds ptr, ptr %223, i64 1
  %225 = load ptr, ptr %224, align 8
  call void %225(ptr noundef nonnull align 8 dereferenceable(41) %176) #13
  br label %226

226:                                              ; preds = %222, %219, %194
  %227 = phi { ptr, i32 } [ %195, %194 ], [ %220, %219 ], [ %220, %222 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %252

228:                                              ; preds = %140
  %229 = load ptr, ptr %8, align 8, !tbaa !106
  %230 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %92, i64 0, i32 4
  %231 = load ptr, ptr %230, align 8, !tbaa !149
  %232 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %92, i64 0, i32 3
  %233 = load ptr, ptr %232, align 8, !tbaa !151
  %234 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %92, i64 0, i32 2
  %235 = load i32, ptr %234, align 4, !tbaa !152
  %236 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr18createIntEntReaderEPKtNS_9XMLReader7RefFromENS3_5TypesES2_jbb(ptr noundef nonnull align 8 dereferenceable(80) %229, ptr noundef %231, i32 noundef 1, i32 noundef 1, ptr noundef %233, i32 noundef %235, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %237 unwind label %244

237:                                              ; preds = %228
  %238 = load ptr, ptr %8, align 8, !tbaa !106
  %239 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %238, ptr noundef %236, ptr noundef nonnull %92)
          to label %240 unwind label %244

240:                                              ; preds = %237
  br i1 %239, label %246, label %241

241:                                              ; preds = %240
  %242 = load ptr, ptr %94, align 8, !tbaa !105
  %243 = load ptr, ptr %230, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %242, i32 noundef 230, ptr noundef %243, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %246 unwind label %244

244:                                              ; preds = %241, %237, %228
  %245 = landingpad { ptr, i32 }
          cleanup
  br label %252

246:                                              ; preds = %240, %241, %218
  br label %247

247:                                              ; preds = %153, %110, %136, %246, %218, %106, %39
  %248 = phi i32 [ 0, %39 ], [ 2, %136 ], [ 1, %246 ], [ 0, %218 ], [ 0, %106 ], [ 0, %110 ], [ 0, %153 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(40) %31)
          to label %258 unwind label %249

249:                                              ; preds = %247
  %250 = landingpad { ptr, i32 }
          catch ptr null
  %251 = extractvalue { ptr, i32 } %250, 0
  call void @__clang_call_terminate(ptr %251) #14
  unreachable

252:                                              ; preds = %104, %226, %244, %42
  %253 = phi { ptr, i32 } [ %43, %42 ], [ %105, %104 ], [ %227, %226 ], [ %245, %244 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(40) %31)
          to label %257 unwind label %254

254:                                              ; preds = %252
  %255 = landingpad { ptr, i32 }
          catch ptr null
  %256 = extractvalue { ptr, i32 } %255, 0
  call void @__clang_call_terminate(ptr %256) #14
  unreachable

257:                                              ; preds = %252
  resume { ptr, i32 } %253

258:                                              ; preds = %247, %15, %27
  %259 = phi i32 [ 2, %27 ], [ 0, %15 ], [ %248, %247 ]
  ret i32 %259

260:                                              ; preds = %193
  unreachable
}

declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner11scanCharRefERtS1_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0, ptr nocapture noundef nonnull align 2 dereferenceable(2) %1, ptr nocapture noundef nonnull writeonly align 2 dereferenceable(2) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %4 = alloca [2 x i16], align 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %6, i16 noundef zeroext 120)
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %5, align 8, !tbaa !106
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %9, i16 noundef zeroext 88)
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %13, i32 noundef 267)
  br label %14

14:                                               ; preds = %3, %8, %11
  %15 = phi i32 [ 16, %11 ], [ 10, %8 ], [ 16, %3 ]
  %16 = getelementptr inbounds [2 x i16], ptr %4, i64 0, i64 1
  %17 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  br label %18

18:                                               ; preds = %68, %14
  %19 = phi i32 [ 0, %14 ], [ %69, %68 ]
  %20 = phi i8 [ 0, %14 ], [ %70, %68 ]
  %21 = load ptr, ptr %5, align 8, !tbaa !106
  %22 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %21)
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = call ptr @__cxa_allocate_exception(i64 48) #13
  %26 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull @.str, i32 noundef 956, i32 noundef 47, ptr noundef %27)
          to label %28 unwind label %29

28:                                               ; preds = %24
  call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %25) #13
  resume { ptr, i32 } %30

31:                                               ; preds = %18
  %32 = zext i16 %22 to i32
  %33 = icmp eq i16 %22, 59
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load ptr, ptr %5, align 8, !tbaa !106
  %36 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %35)
  br label %68

37:                                               ; preds = %31
  %38 = add i16 %22, -48
  %39 = icmp ult i16 %38, 10
  br i1 %39, label %55, label %40

40:                                               ; preds = %37
  %41 = add i16 %22, -65
  %42 = icmp ult i16 %41, 6
  br i1 %42, label %55, label %43

43:                                               ; preds = %40
  %44 = add i16 %22, -97
  %45 = icmp ult i16 %44, 6
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = and i8 %20, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %51 = load ptr, ptr %50, align 8, !tbaa !105
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %51, i32 noundef 225)
  br label %68

52:                                               ; preds = %46
  %53 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %54 = load ptr, ptr %53, align 8, !tbaa !105
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %54, i32 noundef 260)
  br label %68

55:                                               ; preds = %43, %40, %37
  %56 = phi i32 [ -48, %37 ], [ -55, %40 ], [ -87, %43 ]
  %57 = add nsw i32 %56, %32
  %58 = icmp ult i32 %57, %15
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i16 %22, ptr %4, align 2, !tbaa !135
  store i16 0, ptr %16, align 2, !tbaa !135
  %60 = load ptr, ptr %17, align 8, !tbaa !105
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %60, i32 noundef 273, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %64

61:                                               ; preds = %55
  %62 = mul i32 %19, %15
  %63 = add i32 %57, %62
  br label %64

64:                                               ; preds = %61, %59
  %65 = phi i32 [ %19, %59 ], [ %63, %61 ]
  %66 = load ptr, ptr %5, align 8, !tbaa !106
  %67 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %66)
  br label %68

68:                                               ; preds = %64, %52, %49, %34
  %69 = phi i32 [ %19, %34 ], [ %65, %64 ], [ %19, %52 ], [ %19, %49 ]
  %70 = phi i8 [ %20, %34 ], [ 1, %64 ], [ %20, %52 ], [ %20, %49 ]
  %71 = phi i32 [ 3, %34 ], [ 0, %64 ], [ 1, %52 ], [ 1, %49 ]
  switch i32 %71, label %103 [
    i32 0, label %18
    i32 3, label %72
  ], !llvm.loop !194

72:                                               ; preds = %68
  %73 = add i32 %69, -65536
  %74 = icmp ult i32 %73, 1048576
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = lshr i32 %73, 10
  %77 = trunc i32 %76 to i16
  %78 = or disjoint i16 %77, -10240
  store i16 %78, ptr %1, align 2, !tbaa !135
  %79 = trunc i32 %69 to i16
  %80 = and i16 %79, 1023
  %81 = or disjoint i16 %80, -9216
  store i16 %81, ptr %2, align 2, !tbaa !135
  br label %103

82:                                               ; preds = %72
  %83 = icmp ult i32 %69, 65534
  br i1 %83, label %84, label %100

84:                                               ; preds = %82
  %85 = trunc i32 %69 to i16
  store i16 %85, ptr %1, align 2, !tbaa !135
  store i16 0, ptr %2, align 2, !tbaa !135
  %86 = load ptr, ptr %5, align 8, !tbaa !106
  %87 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !122
  %89 = load i16, ptr %1, align 2, !tbaa !135
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %88, i64 0, i32 28
  %91 = load ptr, ptr %90, align 8, !tbaa !155
  %92 = zext i16 %89 to i64
  %93 = getelementptr inbounds i8, ptr %91, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !156
  %95 = and i8 %94, 96
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %84
  %98 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %99 = load ptr, ptr %98, align 8, !tbaa !105
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %99, i32 noundef 224)
  br label %103

100:                                              ; preds = %82
  %101 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %102 = load ptr, ptr %101, align 8, !tbaa !105
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %102, i32 noundef 224)
  br label %103

103:                                              ; preds = %68, %75, %84, %100, %97
  %104 = phi i1 [ false, %97 ], [ false, %100 ], [ true, %84 ], [ true, %75 ], [ false, %68 ]
  ret i1 %104
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710DTDScanner12scanChildrenERKNS_14DTDElementDeclERNS_9XMLBufferE(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %6, i16 noundef zeroext 40)
  %8 = load ptr, ptr %5, align 8, !tbaa !106
  br i1 %7, label %9, label %32

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %8, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %11, i64 0, i32 15
  %13 = load i32, ptr %12, align 8, !tbaa !123
  %14 = tail call noundef ptr @_ZN11xercesc_2_710DTDScanner12scanChildrenERKNS_14DTDElementDeclERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %458, label %16

16:                                               ; preds = %9
  %17 = load ptr, ptr %5, align 8, !tbaa !106
  %18 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !122
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %19, i64 0, i32 15
  %21 = load i32, ptr %20, align 8, !tbaa !123
  %22 = icmp eq i32 %13, %21
  br i1 %22, label %132, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !105
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %25, i64 0, i32 10
  %27 = load i8, ptr %26, align 8, !tbaa !140, !range !63, !noundef !64
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %132, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %25, i64 0, i32 50
  %31 = load ptr, ptr %30, align 8, !tbaa !141
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %31, i32 noundef 86)
  br label %132

32:                                               ; preds = %3
  store i32 0, ptr %2, align 8, !tbaa !133
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !134
  store i16 0, ptr %34, align 2, !tbaa !135
  %35 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %8, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !122
  %37 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %36, ptr noundef nonnull align 8 dereferenceable(40) %2, i1 noundef zeroext false)
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %40, i32 noundef 183)
  br label %458

41:                                               ; preds = %32
  %42 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !82
  %44 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 14
  %45 = load i32, ptr %44, align 8, !tbaa !121
  %46 = load ptr, ptr %33, align 8, !tbaa !134
  %47 = load i32, ptr %2, align 8, !tbaa !133
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i16, ptr %46, i64 %48
  store i16 0, ptr %49, align 2, !tbaa !135
  %50 = load ptr, ptr %43, align 8, !tbaa !52
  %51 = getelementptr inbounds ptr, ptr %50, i64 11
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(61) %43, i32 noundef %45, ptr noundef null, ptr noundef %46, i32 noundef -2)
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %84

55:                                               ; preds = %41
  %56 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !79
  %58 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %57)
  %59 = load ptr, ptr %33, align 8, !tbaa !134
  %60 = load i32, ptr %2, align 8, !tbaa !133
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i16, ptr %59, i64 %61
  store i16 0, ptr %62, align 2, !tbaa !135
  %63 = load i32, ptr %44, align 8, !tbaa !121
  %64 = load ptr, ptr %56, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %58, ptr noundef %59, i32 noundef %63, i32 noundef 1, ptr noundef %64)
          to label %65 unwind label %82

65:                                               ; preds = %55
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %58, i64 0, i32 3
  store i32 3, ptr %66, align 8, !tbaa !186
  %67 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 15
  %68 = load i32, ptr %67, align 4, !tbaa !129
  %69 = load ptr, ptr %5, align 8, !tbaa !106
  %70 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !122
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %71, i64 0, i32 15
  %73 = load i32, ptr %72, align 8, !tbaa !123
  %74 = icmp ne i32 %68, %73
  %75 = zext i1 %74 to i8
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %58, i64 0, i32 5
  store i8 %75, ptr %76, align 8, !tbaa !187
  %77 = load ptr, ptr %42, align 8, !tbaa !82
  %78 = load ptr, ptr %77, align 8, !tbaa !52
  %79 = getelementptr inbounds ptr, ptr %78, i64 17
  %80 = load ptr, ptr %79, align 8
  %81 = tail call noundef i32 %80(ptr noundef nonnull align 8 dereferenceable(61) %77, ptr noundef nonnull %58, i1 noundef zeroext false)
  br label %84

82:                                               ; preds = %55
  %83 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %58, ptr noundef %57) #13
  br label %460

84:                                               ; preds = %65, %41
  %85 = phi ptr [ %53, %41 ], [ %58, %65 ]
  %86 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !79
  %88 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %87)
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %85, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !164
  %91 = load ptr, ptr %86, align 8, !tbaa !79
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %88, align 8, !tbaa !52
  %92 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %88, i64 0, i32 1
  store ptr %91, ptr %92, align 8, !tbaa !195
  %93 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %88, i64 0, i32 2
  %94 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %88, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %93, i8 0, i64 36, i1 false)
  store i8 1, ptr %94, align 4, !tbaa !55
  %95 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %88, i64 0, i32 8
  store i8 1, ptr %95, align 1, !tbaa !69
  %96 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %88, i64 0, i32 9
  store i32 1, ptr %96, align 8, !tbaa !196
  %97 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %88, i64 0, i32 10
  store i32 1, ptr %97, align 4, !tbaa !197
  %98 = icmp eq ptr %90, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %84
  %100 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %91)
          to label %101 unwind label %123

101:                                              ; preds = %99
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %100, ptr noundef nonnull align 8 dereferenceable(56) %90)
          to label %102 unwind label %103

102:                                              ; preds = %101
  store ptr %100, ptr %93, align 8, !tbaa !74
  br label %105

103:                                              ; preds = %101
  %104 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %100, ptr noundef %91) #13
  br label %125

105:                                              ; preds = %102, %84
  %106 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  %107 = load ptr, ptr %5, align 8, !tbaa !106
  %108 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %107)
  %109 = load ptr, ptr %86, align 8, !tbaa !79
  %110 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L11makeRepNodeEtPNS_15ContentSpecNodeEPNS_13MemoryManagerE(i16 noundef zeroext %108, ptr noundef nonnull %88, ptr noundef %109)
  %111 = icmp eq ptr %110, %88
  br i1 %111, label %132, label %112

112:                                              ; preds = %105
  br i1 %106, label %113, label %129

113:                                              ; preds = %112
  %114 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %115 = load ptr, ptr %114, align 8, !tbaa !105
  %116 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner27emitErrorWillThrowExceptionENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %115, i32 noundef 217)
  %117 = icmp ne ptr %110, null
  %118 = and i1 %117, %116
  br i1 %118, label %119, label %127

119:                                              ; preds = %113
  %120 = load ptr, ptr %110, align 8, !tbaa !52
  %121 = getelementptr inbounds ptr, ptr %120, i64 1
  %122 = load ptr, ptr %121, align 8
  tail call void %122(ptr noundef nonnull align 8 dereferenceable(64) %110) #13
  br label %127

123:                                              ; preds = %99
  %124 = landingpad { ptr, i32 }
          cleanup
  br label %125

125:                                              ; preds = %103, %123
  %126 = phi { ptr, i32 } [ %124, %123 ], [ %104, %103 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %88, ptr noundef %87) #13
  br label %460

127:                                              ; preds = %119, %113
  %128 = load ptr, ptr %114, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %128, i32 noundef 217)
  br label %129

129:                                              ; preds = %127, %112
  %130 = load ptr, ptr %5, align 8, !tbaa !106
  %131 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %130)
  br label %132

132:                                              ; preds = %105, %129, %16, %23, %29
  %133 = phi ptr [ %14, %29 ], [ %14, %23 ], [ %14, %16 ], [ %110, %129 ], [ %88, %105 ]
  %134 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  %135 = load ptr, ptr %5, align 8, !tbaa !106
  %136 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %135)
  switch i16 %136, label %137 [
    i16 124, label %146
    i16 44, label %146
    i16 41, label %146
  ]

137:                                              ; preds = %132
  %138 = icmp eq ptr %133, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %137
  %140 = load ptr, ptr %133, align 8, !tbaa !52
  %141 = getelementptr inbounds ptr, ptr %140, i64 1
  %142 = load ptr, ptr %141, align 8
  tail call void %142(ptr noundef nonnull align 8 dereferenceable(64) %133) #13
  br label %143

143:                                              ; preds = %139, %137
  %144 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %145 = load ptr, ptr %144, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %145, i32 noundef 239)
  br label %458

146:                                              ; preds = %132, %132, %132
  %147 = icmp eq i16 %136, 44
  br i1 %147, label %148, label %162

148:                                              ; preds = %146
  %149 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !79
  %151 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %150)
  %152 = load ptr, ptr %149, align 8, !tbaa !79
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %151, align 8, !tbaa !52
  %153 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %151, i64 0, i32 1
  store ptr %152, ptr %153, align 8, !tbaa !195
  %154 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %151, i64 0, i32 2
  %155 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %151, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %154, i8 0, i64 16, i1 false)
  store ptr %133, ptr %155, align 8, !tbaa !66
  %156 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %151, i64 0, i32 5
  store ptr null, ptr %156, align 8, !tbaa !71
  %157 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %151, i64 0, i32 6
  store i32 5, ptr %157, align 8, !tbaa !198
  %158 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %151, i64 0, i32 7
  store i8 1, ptr %158, align 4, !tbaa !55
  %159 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %151, i64 0, i32 8
  store i8 1, ptr %159, align 1, !tbaa !69
  %160 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %151, i64 0, i32 9
  store i32 1, ptr %160, align 8, !tbaa !196
  %161 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %151, i64 0, i32 10
  store i32 1, ptr %161, align 4, !tbaa !197
  br label %181

162:                                              ; preds = %146
  %163 = icmp eq i16 %136, 124
  br i1 %163, label %164, label %178

164:                                              ; preds = %162
  %165 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !79
  %167 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %166)
  %168 = load ptr, ptr %165, align 8, !tbaa !79
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %167, align 8, !tbaa !52
  %169 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %167, i64 0, i32 1
  store ptr %168, ptr %169, align 8, !tbaa !195
  %170 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %167, i64 0, i32 2
  %171 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %167, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %170, i8 0, i64 16, i1 false)
  store ptr %133, ptr %171, align 8, !tbaa !66
  %172 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %167, i64 0, i32 5
  store ptr null, ptr %172, align 8, !tbaa !71
  %173 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %167, i64 0, i32 6
  store i32 4, ptr %173, align 8, !tbaa !198
  %174 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %167, i64 0, i32 7
  store i8 1, ptr %174, align 4, !tbaa !55
  %175 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %167, i64 0, i32 8
  store i8 1, ptr %175, align 1, !tbaa !69
  %176 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %167, i64 0, i32 9
  store i32 1, ptr %176, align 8, !tbaa !196
  %177 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %167, i64 0, i32 10
  store i32 1, ptr %177, align 4, !tbaa !197
  br label %181

178:                                              ; preds = %162
  %179 = load ptr, ptr %5, align 8, !tbaa !106
  %180 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %179)
  br label %181

181:                                              ; preds = %164, %178, %148
  %182 = phi i32 [ 5, %148 ], [ 4, %164 ], [ -1, %178 ]
  %183 = phi ptr [ %151, %148 ], [ %167, %164 ], [ %133, %178 ]
  switch i16 %136, label %448 [
    i16 124, label %184
    i16 44, label %184
  ]

184:                                              ; preds = %181, %181
  br label %185

185:                                              ; preds = %312, %184
  %186 = phi ptr [ null, %184 ], [ %313, %312 ]
  %187 = phi ptr [ %183, %184 ], [ %314, %312 ]
  br label %188

188:                                              ; preds = %200, %185
  %189 = load ptr, ptr %5, align 8, !tbaa !106
  %190 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %189)
  %191 = icmp eq i16 %190, 37
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %200

194:                                              ; preds = %188
  %195 = load ptr, ptr %5, align 8, !tbaa !106
  %196 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %195)
  %197 = load ptr, ptr %5, align 8, !tbaa !106
  br i1 %196, label %198, label %201

198:                                              ; preds = %194
  %199 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %197, i1 noundef zeroext false)
  br label %200

200:                                              ; preds = %198, %192
  br label %188, !llvm.loop !199

201:                                              ; preds = %194
  %202 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %197, i16 noundef zeroext 41)
  br i1 %202, label %203, label %228

203:                                              ; preds = %201
  %204 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %187, i64 0, i32 6
  %205 = load i32, ptr %204, align 8, !tbaa !198
  %206 = and i32 %205, -2
  %207 = icmp eq i32 %206, 4
  br i1 %207, label %208, label %447

208:                                              ; preds = %203
  %209 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %187, i64 0, i32 5
  %210 = load ptr, ptr %209, align 8, !tbaa !71
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %447

212:                                              ; preds = %208
  %213 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %187, i64 0, i32 4
  %214 = load ptr, ptr %213, align 8, !tbaa !66
  store ptr null, ptr %213, align 8, !tbaa !66
  %215 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %186, i64 0, i32 8
  %216 = load i8, ptr %215, align 1, !tbaa !69, !range !63, !noundef !64
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %226, label %218

218:                                              ; preds = %212
  %219 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %186, i64 0, i32 5
  %220 = load ptr, ptr %219, align 8, !tbaa !71
  %221 = icmp eq ptr %220, null
  br i1 %221, label %226, label %222

222:                                              ; preds = %218
  %223 = load ptr, ptr %220, align 8, !tbaa !52
  %224 = getelementptr inbounds ptr, ptr %223, i64 1
  %225 = load ptr, ptr %224, align 8
  tail call void %225(ptr noundef nonnull align 8 dereferenceable(64) %220) #13
  br label %226

226:                                              ; preds = %212, %218, %222
  %227 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %186, i64 0, i32 5
  store ptr %214, ptr %227, align 8, !tbaa !71
  br label %447

228:                                              ; preds = %201
  %229 = load ptr, ptr %5, align 8, !tbaa !106
  %230 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %229, i16 noundef zeroext %136)
  br i1 %230, label %231, label %433

231:                                              ; preds = %228
  %232 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  %233 = load ptr, ptr %5, align 8, !tbaa !106
  %234 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %233, i16 noundef zeroext 40)
  %235 = load ptr, ptr %5, align 8, !tbaa !106
  br i1 %234, label %236, label %315

236:                                              ; preds = %231
  %237 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %235, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !122
  %239 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %238, i64 0, i32 15
  %240 = load i32, ptr %239, align 8, !tbaa !123
  %241 = invoke noundef ptr @_ZN11xercesc_2_710DTDScanner12scanChildrenERKNS_14DTDElementDeclERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %242 unwind label %244

242:                                              ; preds = %236
  %243 = icmp eq ptr %241, null
  br i1 %243, label %260, label %266

244:                                              ; preds = %236
  %245 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
  %246 = extractvalue { ptr, i32 } %245, 1
  %247 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #13
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %460

249:                                              ; preds = %244
  %250 = extractvalue { ptr, i32 } %245, 0
  %251 = tail call ptr @__cxa_begin_catch(ptr %250) #13
  %252 = icmp eq ptr %183, null
  br i1 %252, label %257, label %253

253:                                              ; preds = %249
  %254 = load ptr, ptr %183, align 8, !tbaa !52
  %255 = getelementptr inbounds ptr, ptr %254, i64 1
  %256 = load ptr, ptr %255, align 8
  tail call void %256(ptr noundef nonnull align 8 dereferenceable(64) %183) #13
  br label %257

257:                                              ; preds = %253, %249
  invoke void @__cxa_rethrow() #15
          to label %462 unwind label %258

258:                                              ; preds = %257
  %259 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_end_catch() #13
  br label %460

260:                                              ; preds = %242
  %261 = icmp eq ptr %183, null
  br i1 %261, label %309, label %262

262:                                              ; preds = %260
  %263 = load ptr, ptr %183, align 8, !tbaa !52
  %264 = getelementptr inbounds ptr, ptr %263, i64 1
  %265 = load ptr, ptr %264, align 8
  tail call void %265(ptr noundef nonnull align 8 dereferenceable(64) %183) #13
  br label %309

266:                                              ; preds = %242
  %267 = load ptr, ptr %5, align 8, !tbaa !106
  %268 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %267, i64 0, i32 2
  %269 = load ptr, ptr %268, align 8, !tbaa !122
  %270 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %269, i64 0, i32 15
  %271 = load i32, ptr %270, align 8, !tbaa !123
  %272 = icmp eq i32 %240, %271
  br i1 %272, label %282, label %273

273:                                              ; preds = %266
  %274 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %275 = load ptr, ptr %274, align 8, !tbaa !105
  %276 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %275, i64 0, i32 10
  %277 = load i8, ptr %276, align 8, !tbaa !140, !range !63, !noundef !64
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %273
  %280 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %275, i64 0, i32 50
  %281 = load ptr, ptr %280, align 8, !tbaa !141
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %281, i32 noundef 86)
  br label %282

282:                                              ; preds = %279, %273, %266
  %283 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %284 = load ptr, ptr %283, align 8, !tbaa !79
  %285 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %284)
  %286 = load ptr, ptr %283, align 8, !tbaa !79
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %285, align 8, !tbaa !52
  %287 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %285, i64 0, i32 1
  store ptr %286, ptr %287, align 8, !tbaa !195
  %288 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %285, i64 0, i32 2
  %289 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %285, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %288, i8 0, i64 16, i1 false)
  store ptr %241, ptr %289, align 8, !tbaa !66
  %290 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %285, i64 0, i32 5
  store ptr null, ptr %290, align 8, !tbaa !71
  %291 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %285, i64 0, i32 6
  store i32 %182, ptr %291, align 8, !tbaa !198
  %292 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %285, i64 0, i32 7
  store i8 1, ptr %292, align 4, !tbaa !55
  %293 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %285, i64 0, i32 8
  store i8 1, ptr %293, align 1, !tbaa !69
  %294 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %285, i64 0, i32 9
  store i32 1, ptr %294, align 8, !tbaa !196
  %295 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %285, i64 0, i32 10
  store i32 1, ptr %295, align 4, !tbaa !197
  %296 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %187, i64 0, i32 8
  %297 = load i8, ptr %296, align 1, !tbaa !69, !range !63, !noundef !64
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %307, label %299

299:                                              ; preds = %282
  %300 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %187, i64 0, i32 5
  %301 = load ptr, ptr %300, align 8, !tbaa !71
  %302 = icmp eq ptr %301, null
  br i1 %302, label %307, label %303

303:                                              ; preds = %299
  %304 = load ptr, ptr %301, align 8, !tbaa !52
  %305 = getelementptr inbounds ptr, ptr %304, i64 1
  %306 = load ptr, ptr %305, align 8
  tail call void %306(ptr noundef nonnull align 8 dereferenceable(64) %301) #13
  br label %307

307:                                              ; preds = %282, %299, %303
  %308 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %187, i64 0, i32 5
  store ptr %285, ptr %308, align 8, !tbaa !71
  br label %309

309:                                              ; preds = %260, %262, %307
  %310 = phi ptr [ %187, %307 ], [ %186, %262 ], [ %186, %260 ]
  %311 = phi ptr [ %285, %307 ], [ %187, %262 ], [ %187, %260 ]
  br i1 %243, label %447, label %312

312:                                              ; preds = %309, %431
  %313 = phi ptr [ %187, %431 ], [ %310, %309 ]
  %314 = phi ptr [ %409, %431 ], [ %311, %309 ]
  br label %185, !llvm.loop !199

315:                                              ; preds = %231
  %316 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  store i32 0, ptr %2, align 8, !tbaa !133
  %317 = load ptr, ptr %316, align 8, !tbaa !134
  store i16 0, ptr %317, align 2, !tbaa !135
  %318 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %235, i64 0, i32 2
  %319 = load ptr, ptr %318, align 8, !tbaa !122
  %320 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %319, ptr noundef nonnull align 8 dereferenceable(40) %2, i1 noundef zeroext false)
  br i1 %320, label %330, label %321

321:                                              ; preds = %315
  %322 = icmp eq ptr %183, null
  br i1 %322, label %327, label %323

323:                                              ; preds = %321
  %324 = load ptr, ptr %183, align 8, !tbaa !52
  %325 = getelementptr inbounds ptr, ptr %324, i64 1
  %326 = load ptr, ptr %325, align 8
  tail call void %326(ptr noundef nonnull align 8 dereferenceable(64) %183) #13
  br label %327

327:                                              ; preds = %323, %321
  %328 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %329 = load ptr, ptr %328, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %329, i32 noundef 183)
  br label %447

330:                                              ; preds = %315
  %331 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 9
  %332 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 14
  %333 = load ptr, ptr %331, align 8, !tbaa !82
  %334 = load i32, ptr %332, align 8, !tbaa !121
  %335 = load ptr, ptr %316, align 8, !tbaa !134
  %336 = load i32, ptr %2, align 8, !tbaa !133
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds i16, ptr %335, i64 %337
  store i16 0, ptr %338, align 2, !tbaa !135
  %339 = load ptr, ptr %333, align 8, !tbaa !52
  %340 = getelementptr inbounds ptr, ptr %339, i64 11
  %341 = load ptr, ptr %340, align 8
  %342 = tail call noundef ptr %341(ptr noundef nonnull align 8 dereferenceable(61) %333, i32 noundef %334, ptr noundef null, ptr noundef %335, i32 noundef -2)
  %343 = icmp eq ptr %342, null
  br i1 %343, label %344, label %373

344:                                              ; preds = %330
  %345 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %346 = load ptr, ptr %345, align 8, !tbaa !79
  %347 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %346)
  %348 = load ptr, ptr %316, align 8, !tbaa !134
  %349 = load i32, ptr %2, align 8, !tbaa !133
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds i16, ptr %348, i64 %350
  store i16 0, ptr %351, align 2, !tbaa !135
  %352 = load i32, ptr %332, align 8, !tbaa !121
  %353 = load ptr, ptr %345, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %347, ptr noundef %348, i32 noundef %352, i32 noundef 1, ptr noundef %353)
          to label %354 unwind label %371

354:                                              ; preds = %344
  %355 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 15
  %356 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %347, i64 0, i32 3
  store i32 3, ptr %356, align 8, !tbaa !186
  %357 = load i32, ptr %355, align 4, !tbaa !129
  %358 = load ptr, ptr %5, align 8, !tbaa !106
  %359 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %358, i64 0, i32 2
  %360 = load ptr, ptr %359, align 8, !tbaa !122
  %361 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %360, i64 0, i32 15
  %362 = load i32, ptr %361, align 8, !tbaa !123
  %363 = icmp ne i32 %357, %362
  %364 = zext i1 %363 to i8
  %365 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %347, i64 0, i32 5
  store i8 %364, ptr %365, align 8, !tbaa !187
  %366 = load ptr, ptr %331, align 8, !tbaa !82
  %367 = load ptr, ptr %366, align 8, !tbaa !52
  %368 = getelementptr inbounds ptr, ptr %367, i64 17
  %369 = load ptr, ptr %368, align 8
  %370 = tail call noundef i32 %369(ptr noundef nonnull align 8 dereferenceable(61) %366, ptr noundef nonnull %347, i1 noundef zeroext false)
  br label %373

371:                                              ; preds = %344
  %372 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %347, ptr noundef %346) #13
  br label %460

373:                                              ; preds = %354, %330
  %374 = phi ptr [ %342, %330 ], [ %347, %354 ]
  %375 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %376 = load ptr, ptr %375, align 8, !tbaa !79
  %377 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %376)
  %378 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %374, i64 0, i32 2
  %379 = load ptr, ptr %378, align 8, !tbaa !164
  %380 = load ptr, ptr %375, align 8, !tbaa !79
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %377, align 8, !tbaa !52
  %381 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %377, i64 0, i32 1
  store ptr %380, ptr %381, align 8, !tbaa !195
  %382 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %377, i64 0, i32 2
  %383 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %377, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %382, i8 0, i64 36, i1 false)
  store i8 1, ptr %383, align 4, !tbaa !55
  %384 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %377, i64 0, i32 8
  store i8 1, ptr %384, align 1, !tbaa !69
  %385 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %377, i64 0, i32 9
  store i32 1, ptr %385, align 8, !tbaa !196
  %386 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %377, i64 0, i32 10
  store i32 1, ptr %386, align 4, !tbaa !197
  %387 = icmp eq ptr %379, null
  br i1 %387, label %394, label %388

388:                                              ; preds = %373
  %389 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %380)
          to label %390 unwind label %403

390:                                              ; preds = %388
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %389, ptr noundef nonnull align 8 dereferenceable(56) %379)
          to label %391 unwind label %392

391:                                              ; preds = %390
  store ptr %389, ptr %382, align 8, !tbaa !74
  br label %394

392:                                              ; preds = %390
  %393 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %389, ptr noundef %380) #13
  br label %405

394:                                              ; preds = %391, %373
  %395 = load ptr, ptr %5, align 8, !tbaa !106
  %396 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %395)
  %397 = load ptr, ptr %375, align 8, !tbaa !79
  %398 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L11makeRepNodeEtPNS_15ContentSpecNodeEPNS_13MemoryManagerE(i16 noundef zeroext %396, ptr noundef nonnull %377, ptr noundef %397)
  %399 = icmp eq ptr %377, %398
  br i1 %399, label %407, label %400

400:                                              ; preds = %394
  %401 = load ptr, ptr %5, align 8, !tbaa !106
  %402 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %401)
  br label %407

403:                                              ; preds = %388
  %404 = landingpad { ptr, i32 }
          cleanup
  br label %405

405:                                              ; preds = %392, %403
  %406 = phi { ptr, i32 } [ %404, %403 ], [ %393, %392 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %377, ptr noundef %376) #13
  br label %460

407:                                              ; preds = %400, %394
  %408 = load ptr, ptr %375, align 8, !tbaa !79
  %409 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %408)
  %410 = load ptr, ptr %375, align 8, !tbaa !79
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %409, align 8, !tbaa !52
  %411 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %409, i64 0, i32 1
  store ptr %410, ptr %411, align 8, !tbaa !195
  %412 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %409, i64 0, i32 2
  %413 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %409, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %412, i8 0, i64 16, i1 false)
  store ptr %398, ptr %413, align 8, !tbaa !66
  %414 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %409, i64 0, i32 5
  store ptr null, ptr %414, align 8, !tbaa !71
  %415 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %409, i64 0, i32 6
  store i32 %182, ptr %415, align 8, !tbaa !198
  %416 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %409, i64 0, i32 7
  store i8 1, ptr %416, align 4, !tbaa !55
  %417 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %409, i64 0, i32 8
  store i8 1, ptr %417, align 1, !tbaa !69
  %418 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %409, i64 0, i32 9
  store i32 1, ptr %418, align 8, !tbaa !196
  %419 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %409, i64 0, i32 10
  store i32 1, ptr %419, align 4, !tbaa !197
  %420 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %187, i64 0, i32 8
  %421 = load i8, ptr %420, align 1, !tbaa !69, !range !63, !noundef !64
  %422 = icmp eq i8 %421, 0
  br i1 %422, label %431, label %423

423:                                              ; preds = %407
  %424 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %187, i64 0, i32 5
  %425 = load ptr, ptr %424, align 8, !tbaa !71
  %426 = icmp eq ptr %425, null
  br i1 %426, label %431, label %427

427:                                              ; preds = %423
  %428 = load ptr, ptr %425, align 8, !tbaa !52
  %429 = getelementptr inbounds ptr, ptr %428, i64 1
  %430 = load ptr, ptr %429, align 8
  tail call void %430(ptr noundef nonnull align 8 dereferenceable(64) %425) #13
  br label %431

431:                                              ; preds = %407, %423, %427
  %432 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %187, i64 0, i32 5
  store ptr %409, ptr %432, align 8, !tbaa !71
  br label %312

433:                                              ; preds = %228
  %434 = icmp eq ptr %183, null
  br i1 %434, label %439, label %435

435:                                              ; preds = %433
  %436 = load ptr, ptr %183, align 8, !tbaa !52
  %437 = getelementptr inbounds ptr, ptr %436, i64 1
  %438 = load ptr, ptr %437, align 8
  tail call void %438(ptr noundef nonnull align 8 dereferenceable(64) %183) #13
  br label %439

439:                                              ; preds = %435, %433
  %440 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %441 = load ptr, ptr %440, align 8, !tbaa !105
  br i1 %147, label %442, label %443

442:                                              ; preds = %439
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %441, i32 noundef 240)
  br label %447

443:                                              ; preds = %439
  %444 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %445 = load ptr, ptr %444, align 8, !tbaa !164
  %446 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %445)
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %441, i32 noundef 241, ptr noundef %446, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %447

447:                                              ; preds = %309, %203, %208, %226, %442, %443, %327
  br i1 %202, label %448, label %458

448:                                              ; preds = %181, %447
  %449 = load ptr, ptr %5, align 8, !tbaa !106
  %450 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %449)
  %451 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %452 = load ptr, ptr %451, align 8, !tbaa !79
  %453 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L11makeRepNodeEtPNS_15ContentSpecNodeEPNS_13MemoryManagerE(i16 noundef zeroext %450, ptr noundef %183, ptr noundef %452)
  %454 = icmp eq ptr %453, %183
  br i1 %454, label %458, label %455

455:                                              ; preds = %448
  %456 = load ptr, ptr %5, align 8, !tbaa !106
  %457 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %456)
  br label %458

458:                                              ; preds = %448, %143, %455, %447, %9, %38
  %459 = phi ptr [ null, %38 ], [ null, %9 ], [ null, %143 ], [ null, %447 ], [ %453, %455 ], [ %453, %448 ]
  ret ptr %459

460:                                              ; preds = %371, %405, %82, %125, %258, %244
  %461 = phi { ptr, i32 } [ %259, %258 ], [ %245, %244 ], [ %126, %125 ], [ %83, %82 ], [ %406, %405 ], [ %372, %371 ]
  resume { ptr, i32 } %461

462:                                              ; preds = %257
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define internal fastcc noundef ptr @_ZN11xercesc_2_7L11makeRepNodeEtPNS_15ContentSpecNodeEPNS_13MemoryManagerE(i16 noundef zeroext %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 !prof !49 {
  switch i16 %0, label %18 [
    i16 63, label %6
    i16 43, label %4
    i16 42, label %5
  ]

4:                                                ; preds = %3
  br label %6

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %3, %4, %5
  %7 = phi i32 [ 2, %5 ], [ 3, %4 ], [ 1, %3 ]
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %2)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %8, align 8, !tbaa !52
  %9 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %8, i64 0, i32 1
  store ptr %2, ptr %9, align 8, !tbaa !195
  %10 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %8, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %8, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store ptr %1, ptr %11, align 8, !tbaa !66
  %12 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %8, i64 0, i32 5
  store ptr null, ptr %12, align 8, !tbaa !71
  %13 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %8, i64 0, i32 6
  store i32 %7, ptr %13, align 8, !tbaa !198
  %14 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %8, i64 0, i32 7
  store i8 1, ptr %14, align 4, !tbaa !55
  %15 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %8, i64 0, i32 8
  store i8 1, ptr %15, align 1, !tbaa !69
  %16 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %8, i64 0, i32 9
  store i32 1, ptr %16, align 8, !tbaa !196
  %17 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %8, i64 0, i32 10
  store i32 1, ptr %17, align 4, !tbaa !197
  br label %18

18:                                               ; preds = %6, %3
  %19 = phi ptr [ %1, %3 ], [ %8, %6 ]
  ret ptr %19
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner27emitErrorWillThrowExceptionENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner11scanCommentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = alloca [9 x i16], align 16
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %10 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 1
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 6
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 1
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 6
  br label %16

16:                                               ; preds = %114, %1
  %17 = phi i32 [ 0, %1 ], [ %115, %114 ]
  %18 = phi i8 [ 0, %1 ], [ %73, %114 ]
  %19 = load ptr, ptr %6, align 8, !tbaa !106
  %20 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %19)
          to label %21 unwind label %33

21:                                               ; preds = %16
  %22 = icmp eq i16 %20, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %21
  %24 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %25, i32 noundef 193)
          to label %26 unwind label %35

26:                                               ; preds = %23
  %27 = call ptr @__cxa_allocate_exception(i64 48) #13
  %28 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %27, ptr noundef nonnull @.str, i32 noundef 1418, i32 noundef 47, ptr noundef %29)
          to label %30 unwind label %37

30:                                               ; preds = %26
  invoke void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %143 unwind label %35

31:                                               ; preds = %103
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %137

33:                                               ; preds = %96, %87, %80, %99, %52, %46, %16
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %137

35:                                               ; preds = %30, %23
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %137

37:                                               ; preds = %26
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %27) #13
  br label %137

39:                                               ; preds = %21
  %40 = zext i16 %20 to i32
  %41 = and i16 %20, -1024
  %42 = icmp eq i16 %41, -10240
  %43 = and i8 %18, 1
  %44 = icmp eq i8 %43, 0
  br i1 %42, label %45, label %48

45:                                               ; preds = %39
  br i1 %44, label %72, label %46

46:                                               ; preds = %45
  %47 = load ptr, ptr %10, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %47, i32 noundef 249)
          to label %72 unwind label %33

48:                                               ; preds = %39
  br i1 %44, label %54, label %49

49:                                               ; preds = %48
  %50 = add i16 %20, 8192
  %51 = icmp ult i16 %50, -1024
  br i1 %51, label %52, label %72

52:                                               ; preds = %49
  %53 = load ptr, ptr %7, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %53, i32 noundef 249)
          to label %72 unwind label %33

54:                                               ; preds = %48
  %55 = load ptr, ptr %6, align 8, !tbaa !106
  %56 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !122
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %57, i64 0, i32 28
  %59 = load ptr, ptr %58, align 8, !tbaa !155
  %60 = zext i16 %20 to i64
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !156
  %63 = and i8 %62, 64
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %2) #13
  %66 = load ptr, ptr %8, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %40, ptr noundef nonnull %2, i32 noundef 8, i32 noundef 16, ptr noundef %66)
          to label %67 unwind label %70

67:                                               ; preds = %65
  %68 = load ptr, ptr %9, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %68, i32 noundef 196, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %69 unwind label %70

69:                                               ; preds = %67
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #13
  br label %72

70:                                               ; preds = %67, %65
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #13
  br label %137

72:                                               ; preds = %52, %46, %49, %69, %54, %45
  %73 = phi i8 [ 1, %45 ], [ 0, %54 ], [ 0, %69 ], [ 0, %49 ], [ %18, %46 ], [ 0, %52 ]
  switch i32 %17, label %106 [
    i32 0, label %74
    i32 1, label %81
    i32 2, label %97
  ]

74:                                               ; preds = %72
  %75 = icmp eq i16 %20, 45
  br i1 %75, label %114, label %76

76:                                               ; preds = %74
  %77 = load i32, ptr %5, align 8, !tbaa !133
  %78 = load i32, ptr %14, align 4, !tbaa !162
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %107

80:                                               ; preds = %76
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
          to label %107 unwind label %33

81:                                               ; preds = %72
  %82 = icmp eq i16 %20, 45
  br i1 %82, label %114, label %83

83:                                               ; preds = %81
  %84 = load i32, ptr %5, align 8, !tbaa !133
  %85 = load i32, ptr %12, align 4, !tbaa !162
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
          to label %88 unwind label %33

88:                                               ; preds = %87, %83
  %89 = load ptr, ptr %13, align 8, !tbaa !134
  %90 = load i32, ptr %5, align 8, !tbaa !133
  %91 = add i32 %90, 1
  store i32 %91, ptr %5, align 8, !tbaa !133
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds i16, ptr %89, i64 %92
  store i16 45, ptr %93, align 2, !tbaa !135
  %94 = load i32, ptr %12, align 4, !tbaa !162
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %88
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
          to label %107 unwind label %33

97:                                               ; preds = %72
  %98 = icmp eq i16 %20, 62
  br i1 %98, label %114, label %99

99:                                               ; preds = %97
  %100 = load ptr, ptr %11, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %100, i32 noundef 263)
          to label %101 unwind label %33

101:                                              ; preds = %99
  %102 = load ptr, ptr %6, align 8, !tbaa !106
  br label %103

103:                                              ; preds = %105, %101
  %104 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %102)
          to label %105 unwind label %31

105:                                              ; preds = %103
  switch i16 %104, label %103 [
    i16 62, label %114
    i16 0, label %114
  ]

106:                                              ; preds = %72
  unreachable

107:                                              ; preds = %88, %96, %76, %80
  %108 = phi ptr [ %15, %80 ], [ %15, %76 ], [ %13, %96 ], [ %13, %88 ]
  %109 = load ptr, ptr %108, align 8, !tbaa !134
  %110 = load i32, ptr %5, align 8, !tbaa !133
  %111 = add i32 %110, 1
  store i32 %111, ptr %5, align 8, !tbaa !133
  %112 = zext i32 %110 to i64
  %113 = getelementptr inbounds i16, ptr %109, i64 %112
  store i16 %20, ptr %113, align 2, !tbaa !135
  br label %114

114:                                              ; preds = %105, %105, %107, %74, %81, %97
  %115 = phi i32 [ 2, %97 ], [ 1, %74 ], [ 2, %81 ], [ 0, %107 ], [ 2, %105 ], [ 2, %105 ]
  %116 = phi i32 [ 3, %97 ], [ 0, %74 ], [ 0, %81 ], [ 0, %107 ], [ 1, %105 ], [ 1, %105 ]
  switch i32 %116, label %132 [
    i32 0, label %16
    i32 3, label %117
  ], !llvm.loop !200

117:                                              ; preds = %114
  %118 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !80
  %120 = icmp eq ptr %119, null
  br i1 %120, label %132, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 6
  %123 = load ptr, ptr %122, align 8, !tbaa !134
  %124 = load i32, ptr %5, align 8, !tbaa !133
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i16, ptr %123, i64 %125
  store i16 0, ptr %126, align 2, !tbaa !135
  %127 = load ptr, ptr %119, align 8, !tbaa !52
  %128 = getelementptr inbounds ptr, ptr %127, i64 3
  %129 = load ptr, ptr %128, align 8
  invoke void %129(ptr noundef nonnull align 8 dereferenceable(8) %119, ptr noundef %123)
          to label %132 unwind label %130

130:                                              ; preds = %121
  %131 = landingpad { ptr, i32 }
          cleanup
  br label %137

132:                                              ; preds = %114, %117, %121
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %136 unwind label %133

133:                                              ; preds = %132
  %134 = landingpad { ptr, i32 }
          catch ptr null
  %135 = extractvalue { ptr, i32 } %134, 0
  call void @__clang_call_terminate(ptr %135) #14
  unreachable

136:                                              ; preds = %132
  ret void

137:                                              ; preds = %31, %35, %33, %37, %70, %130
  %138 = phi { ptr, i32 } [ %131, %130 ], [ %71, %70 ], [ %38, %37 ], [ %32, %31 ], [ %34, %33 ], [ %36, %35 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %142 unwind label %139

139:                                              ; preds = %137
  %140 = landingpad { ptr, i32 }
          catch ptr null
  %141 = extractvalue { ptr, i32 } %140, 0
  call void @__clang_call_terminate(ptr %141) #14
  unreachable

142:                                              ; preds = %137
  resume { ptr, i32 } %138

143:                                              ; preds = %30
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner15scanContentSpecERNS_14DTDElementDeclE(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %6, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgEmptyStringE)
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %1, i64 0, i32 1
  store i32 0, ptr %9, align 4, !tbaa !201
  br label %93

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !106
  %12 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !122
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %13, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgAnyStringE)
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %1, i64 0, i32 1
  store i32 1, ptr %16, align 4, !tbaa !201
  br label %93

17:                                               ; preds = %10
  %18 = load ptr, ptr %3, align 8, !tbaa !106
  %19 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %18, i16 noundef zeroext 40)
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %22 = load ptr, ptr %21, align 8, !tbaa !105
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !164
  %25 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %24)
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %22, i32 noundef 233, ptr noundef %25, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %93

26:                                               ; preds = %17
  %27 = load ptr, ptr %3, align 8, !tbaa !106
  %28 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !122
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %29, i64 0, i32 15
  %31 = load i32, ptr %30, align 8, !tbaa !123
  %32 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  %33 = load ptr, ptr %3, align 8, !tbaa !106
  %34 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !122
  %36 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %35, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgPCDATAStringE)
  %37 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %1, i64 0, i32 1
  br i1 %36, label %38, label %55

38:                                               ; preds = %26
  store i32 2, ptr %37, align 4, !tbaa !201
  %39 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner9scanMixedERNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %40 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %41 = load ptr, ptr %40, align 8, !tbaa !105
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %41, i64 0, i32 10
  %43 = load i8, ptr %42, align 8, !tbaa !140, !range !63, !noundef !64
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %76, label %45

45:                                               ; preds = %38
  %46 = load ptr, ptr %1, align 8, !tbaa !52
  %47 = getelementptr inbounds ptr, ptr %46, i64 13
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(80) %1)
  %50 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717MixedContentModel7hasDupsEv(ptr noundef nonnull align 8 dereferenceable(48) %49)
  br i1 %50, label %51, label %76

51:                                               ; preds = %45
  %52 = load ptr, ptr %40, align 8, !tbaa !105
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %52, i64 0, i32 50
  %54 = load ptr, ptr %53, align 8, !tbaa !141
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %54, i32 noundef 27)
  br label %76

55:                                               ; preds = %26
  store i32 3, ptr %37, align 4, !tbaa !201
  %56 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %57 = load ptr, ptr %56, align 8, !tbaa !107
  %58 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %57)
  %59 = invoke noundef ptr @_ZN11xercesc_2_710DTDScanner12scanChildrenERKNS_14DTDElementDeclERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(40) %58)
          to label %60 unwind label %66

60:                                               ; preds = %55
  %61 = icmp ne ptr %59, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %60
  %63 = load ptr, ptr %1, align 8, !tbaa !52
  %64 = getelementptr inbounds ptr, ptr %63, i64 12
  %65 = load ptr, ptr %64, align 8
  invoke void %65(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %59)
          to label %72 unwind label %66

66:                                               ; preds = %62, %55
  %67 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %57, ptr noundef nonnull align 8 dereferenceable(40) %58)
          to label %71 unwind label %68

68:                                               ; preds = %66
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  tail call void @__clang_call_terminate(ptr %70) #14
  unreachable

71:                                               ; preds = %66
  resume { ptr, i32 } %67

72:                                               ; preds = %62, %60
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %57, ptr noundef nonnull align 8 dereferenceable(40) %58)
          to label %76 unwind label %73

73:                                               ; preds = %72
  %74 = landingpad { ptr, i32 }
          catch ptr null
  %75 = extractvalue { ptr, i32 } %74, 0
  tail call void @__clang_call_terminate(ptr %75) #14
  unreachable

76:                                               ; preds = %72, %38, %51, %45
  %77 = phi i1 [ %39, %51 ], [ %39, %45 ], [ %39, %38 ], [ %61, %72 ]
  %78 = load ptr, ptr %3, align 8, !tbaa !106
  %79 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !122
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %80, i64 0, i32 15
  %82 = load i32, ptr %81, align 8, !tbaa !123
  %83 = icmp eq i32 %31, %82
  br i1 %83, label %93, label %84

84:                                               ; preds = %76
  %85 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %86 = load ptr, ptr %85, align 8, !tbaa !105
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %86, i64 0, i32 10
  %88 = load i8, ptr %87, align 8, !tbaa !140, !range !63, !noundef !64
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %86, i64 0, i32 50
  %92 = load ptr, ptr %91, align 8, !tbaa !141
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %92, i32 noundef 86)
  br label %93

93:                                               ; preds = %76, %84, %90, %20, %15, %8
  %94 = phi i1 [ true, %8 ], [ true, %15 ], [ false, %20 ], [ %77, %90 ], [ %77, %84 ], [ %77, %76 ]
  ret i1 %94
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner9scanMixedERNS_14DTDElementDeclE(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %7)
          to label %9 unwind label %42

9:                                                ; preds = %2
  %10 = load ptr, ptr %6, align 8, !tbaa !79
  %11 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %10)
          to label %12 unwind label %44

12:                                               ; preds = %9
  %13 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4, !tbaa !204
  %14 = load ptr, ptr %6, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %13, ptr noundef %14)
          to label %15 unwind label %46

15:                                               ; preds = %12
  %16 = load ptr, ptr %6, align 8, !tbaa !79
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %8, align 8, !tbaa !52
  %17 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %8, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !195
  %18 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %8, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %8, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %18, i8 0, i64 36, i1 false)
  store i8 1, ptr %19, align 4, !tbaa !55
  %20 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %8, i64 0, i32 8
  store i8 1, ptr %20, align 1, !tbaa !69
  %21 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %8, i64 0, i32 9
  store i32 1, ptr %21, align 8, !tbaa !196
  %22 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %8, i64 0, i32 10
  store i32 1, ptr %22, align 4, !tbaa !197
  store ptr %11, ptr %18, align 8, !tbaa !74
  %23 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 6
  %25 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 9
  %26 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 14
  %27 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 15
  %28 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  br label %29

29:                                               ; preds = %15, %222
  %30 = phi ptr [ %8, %15 ], [ %201, %222 ]
  %31 = phi i8 [ 0, %15 ], [ 1, %222 ]
  br label %32

32:                                               ; preds = %29, %287
  %33 = phi ptr [ %245, %287 ], [ %30, %29 ]
  %34 = phi i8 [ 1, %287 ], [ %31, %29 ]
  br label %35

35:                                               ; preds = %77, %32
  %36 = load ptr, ptr %23, align 8, !tbaa !106
  %37 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %36)
          to label %38 unwind label %50

38:                                               ; preds = %35
  %39 = icmp eq i16 %37, 37
  br i1 %39, label %40, label %56

40:                                               ; preds = %38
  %41 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %77 unwind label %50

42:                                               ; preds = %2
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %304

44:                                               ; preds = %9
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %48

46:                                               ; preds = %12
  %47 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #13
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi { ptr, i32 } [ %45, %44 ], [ %47, %46 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #13
  br label %304

50:                                               ; preds = %35, %75, %70, %68, %60, %56, %40
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %304

52:                                               ; preds = %138, %136, %78
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %304

54:                                               ; preds = %81, %85, %145
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %304

56:                                               ; preds = %38
  %57 = load ptr, ptr %23, align 8, !tbaa !106
  %58 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %57, i16 noundef zeroext 42)
          to label %59 unwind label %50

59:                                               ; preds = %56
  br i1 %58, label %60, label %70

60:                                               ; preds = %59
  %61 = load ptr, ptr %28, align 8, !tbaa !105
  %62 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner27emitErrorWillThrowExceptionENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %61, i32 noundef 176)
          to label %63 unwind label %50

63:                                               ; preds = %60
  br i1 %62, label %64, label %68

64:                                               ; preds = %63
  %65 = load ptr, ptr %30, align 8, !tbaa !52
  %66 = getelementptr inbounds ptr, ptr %65, i64 1
  %67 = load ptr, ptr %66, align 8
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(64) %30) #13
  br label %68

68:                                               ; preds = %64, %63
  %69 = load ptr, ptr %28, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %69, i32 noundef 176)
          to label %77 unwind label %50

70:                                               ; preds = %59
  %71 = load ptr, ptr %23, align 8, !tbaa !106
  %72 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %71)
          to label %73 unwind label %50

73:                                               ; preds = %70
  %74 = load ptr, ptr %23, align 8, !tbaa !106
  br i1 %72, label %75, label %78

75:                                               ; preds = %73
  %76 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %74, i1 noundef zeroext false)
          to label %77 unwind label %50

77:                                               ; preds = %75, %68, %40
  br label %35, !llvm.loop !205

78:                                               ; preds = %73
  %79 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %74, i16 noundef zeroext 124)
          to label %80 unwind label %52

80:                                               ; preds = %78
  br i1 %79, label %136, label %81

81:                                               ; preds = %80
  %82 = load ptr, ptr %23, align 8, !tbaa !106
  %83 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %82, i16 noundef zeroext 41)
          to label %84 unwind label %54

84:                                               ; preds = %81
  br i1 %83, label %95, label %85

85:                                               ; preds = %84
  %86 = load ptr, ptr %30, align 8, !tbaa !52
  %87 = getelementptr inbounds ptr, ptr %86, i64 1
  %88 = load ptr, ptr %87, align 8
  tail call void %88(ptr noundef nonnull align 8 dereferenceable(64) %30) #13
  %89 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %90 = load ptr, ptr %89, align 8, !tbaa !105
  %91 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !164
  %93 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %92, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !206
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %90, i32 noundef 235, ptr noundef %94, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %298 unwind label %54

95:                                               ; preds = %84
  %96 = load ptr, ptr %23, align 8, !tbaa !106
  %97 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %96, i16 noundef zeroext 42)
          to label %98 unwind label %110

98:                                               ; preds = %95
  %99 = icmp eq i8 %34, 0
  %100 = or i1 %97, %99
  br i1 %100, label %114, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %103 = load ptr, ptr %102, align 8, !tbaa !105
  %104 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner27emitErrorWillThrowExceptionENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %103, i32 noundef 234)
          to label %105 unwind label %110

105:                                              ; preds = %101
  br i1 %104, label %106, label %112

106:                                              ; preds = %105
  %107 = load ptr, ptr %30, align 8, !tbaa !52
  %108 = getelementptr inbounds ptr, ptr %107, i64 1
  %109 = load ptr, ptr %108, align 8
  tail call void %109(ptr noundef nonnull align 8 dereferenceable(64) %30) #13
  br label %112

110:                                              ; preds = %131, %117, %112, %101, %95
  %111 = landingpad { ptr, i32 }
          cleanup
  br label %304

112:                                              ; preds = %106, %105
  %113 = load ptr, ptr %102, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %113, i32 noundef 234)
          to label %114 unwind label %110

114:                                              ; preds = %112, %98
  %115 = xor i1 %99, true
  %116 = or i1 %97, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %114
  %118 = load ptr, ptr %6, align 8, !tbaa !79
  %119 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %118)
          to label %120 unwind label %110

120:                                              ; preds = %117
  %121 = load ptr, ptr %6, align 8, !tbaa !79
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %119, align 8, !tbaa !52
  %122 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %119, i64 0, i32 1
  store ptr %121, ptr %122, align 8, !tbaa !195
  %123 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %119, i64 0, i32 2
  %124 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %119, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %123, i8 0, i64 16, i1 false)
  store ptr %30, ptr %124, align 8, !tbaa !66
  %125 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %119, i64 0, i32 5
  store ptr null, ptr %125, align 8, !tbaa !71
  %126 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %119, i64 0, i32 6
  store i32 2, ptr %126, align 8, !tbaa !198
  %127 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %119, i64 0, i32 7
  store i8 1, ptr %127, align 4, !tbaa !55
  %128 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %119, i64 0, i32 8
  store i8 1, ptr %128, align 1, !tbaa !69
  %129 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %119, i64 0, i32 9
  store i32 1, ptr %129, align 8, !tbaa !196
  %130 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %119, i64 0, i32 10
  store i32 1, ptr %130, align 4, !tbaa !197
  br label %131

131:                                              ; preds = %114, %120
  %132 = phi ptr [ %119, %120 ], [ %30, %114 ]
  %133 = load ptr, ptr %1, align 8, !tbaa !52
  %134 = getelementptr inbounds ptr, ptr %133, i64 12
  %135 = load ptr, ptr %134, align 8
  invoke void %135(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %132)
          to label %298 unwind label %110

136:                                              ; preds = %80
  %137 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %138 unwind label %52

138:                                              ; preds = %136
  %139 = load ptr, ptr %23, align 8, !tbaa !106
  store i32 0, ptr %5, align 8, !tbaa !133
  %140 = load ptr, ptr %24, align 8, !tbaa !134
  store i16 0, ptr %140, align 2, !tbaa !135
  %141 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %139, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !122
  %143 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %142, ptr noundef nonnull align 8 dereferenceable(40) %5, i1 noundef zeroext false)
          to label %144 unwind label %52

144:                                              ; preds = %138
  br i1 %143, label %151, label %145

145:                                              ; preds = %144
  %146 = load ptr, ptr %30, align 8, !tbaa !52
  %147 = getelementptr inbounds ptr, ptr %146, i64 1
  %148 = load ptr, ptr %147, align 8
  tail call void %148(ptr noundef nonnull align 8 dereferenceable(64) %30) #13
  %149 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %150 = load ptr, ptr %149, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %150, i32 noundef 183)
          to label %298 unwind label %54

151:                                              ; preds = %144
  %152 = load ptr, ptr %25, align 8, !tbaa !82
  %153 = load i32, ptr %26, align 8, !tbaa !121
  %154 = load ptr, ptr %24, align 8, !tbaa !134
  %155 = load i32, ptr %5, align 8, !tbaa !133
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i16, ptr %154, i64 %156
  store i16 0, ptr %157, align 2, !tbaa !135
  %158 = load ptr, ptr %152, align 8, !tbaa !52
  %159 = getelementptr inbounds ptr, ptr %158, i64 11
  %160 = load ptr, ptr %159, align 8
  %161 = invoke noundef ptr %160(ptr noundef nonnull align 8 dereferenceable(61) %152, i32 noundef %153, ptr noundef null, ptr noundef %154, i32 noundef -2)
          to label %162 unwind label %190

162:                                              ; preds = %151
  %163 = icmp eq ptr %161, null
  br i1 %163, label %164, label %196

164:                                              ; preds = %162
  %165 = load ptr, ptr %6, align 8, !tbaa !79
  %166 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %165)
          to label %167 unwind label %190

167:                                              ; preds = %164
  %168 = load ptr, ptr %24, align 8, !tbaa !134
  %169 = load i32, ptr %5, align 8, !tbaa !133
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i16, ptr %168, i64 %170
  store i16 0, ptr %171, align 2, !tbaa !135
  %172 = load i32, ptr %26, align 8, !tbaa !121
  %173 = load ptr, ptr %6, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %166, ptr noundef %168, i32 noundef %172, i32 noundef 1, ptr noundef %173)
          to label %174 unwind label %194

174:                                              ; preds = %167
  %175 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %166, i64 0, i32 3
  store i32 3, ptr %175, align 8, !tbaa !186
  %176 = load i32, ptr %27, align 4, !tbaa !129
  %177 = load ptr, ptr %23, align 8, !tbaa !106
  %178 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %177, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !122
  %180 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %179, i64 0, i32 15
  %181 = load i32, ptr %180, align 8, !tbaa !123
  %182 = icmp ne i32 %176, %181
  %183 = zext i1 %182 to i8
  %184 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %166, i64 0, i32 5
  store i8 %183, ptr %184, align 8, !tbaa !187
  %185 = load ptr, ptr %25, align 8, !tbaa !82
  %186 = load ptr, ptr %185, align 8, !tbaa !52
  %187 = getelementptr inbounds ptr, ptr %186, i64 17
  %188 = load ptr, ptr %187, align 8
  %189 = invoke noundef i32 %188(ptr noundef nonnull align 8 dereferenceable(61) %185, ptr noundef nonnull %166, i1 noundef zeroext false)
          to label %196 unwind label %190

190:                                              ; preds = %151, %164, %174
  %191 = landingpad { ptr, i32 }
          cleanup
  br label %304

192:                                              ; preds = %199
  %193 = landingpad { ptr, i32 }
          cleanup
  br label %304

194:                                              ; preds = %167
  %195 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %166, ptr noundef %165) #13
  br label %304

196:                                              ; preds = %174, %162
  %197 = phi ptr [ %161, %162 ], [ %166, %174 ]
  %198 = icmp eq ptr %33, %8
  br i1 %198, label %199, label %241

199:                                              ; preds = %196
  %200 = load ptr, ptr %6, align 8, !tbaa !79
  %201 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %200)
          to label %202 unwind label %192

202:                                              ; preds = %199
  %203 = load ptr, ptr %6, align 8, !tbaa !79
  %204 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %203)
          to label %205 unwind label %233

205:                                              ; preds = %202
  %206 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %197, i64 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !164
  %208 = load ptr, ptr %6, align 8, !tbaa !79
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %204, align 8, !tbaa !52
  %209 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %204, i64 0, i32 1
  store ptr %208, ptr %209, align 8, !tbaa !195
  %210 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %204, i64 0, i32 2
  %211 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %204, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %210, i8 0, i64 36, i1 false)
  store i8 1, ptr %211, align 4, !tbaa !55
  %212 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %204, i64 0, i32 8
  store i8 1, ptr %212, align 1, !tbaa !69
  %213 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %204, i64 0, i32 9
  store i32 1, ptr %213, align 8, !tbaa !196
  %214 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %204, i64 0, i32 10
  store i32 1, ptr %214, align 4, !tbaa !197
  %215 = icmp eq ptr %207, null
  br i1 %215, label %222, label %216

216:                                              ; preds = %205
  %217 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %208)
          to label %218 unwind label %235

218:                                              ; preds = %216
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %217, ptr noundef nonnull align 8 dereferenceable(56) %207)
          to label %219 unwind label %220

219:                                              ; preds = %218
  store ptr %217, ptr %210, align 8, !tbaa !74
  br label %222

220:                                              ; preds = %218
  %221 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %217, ptr noundef %208) #13
  br label %237

222:                                              ; preds = %219, %205
  %223 = load ptr, ptr %6, align 8, !tbaa !79
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %201, align 8, !tbaa !52
  %224 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %201, i64 0, i32 1
  store ptr %223, ptr %224, align 8, !tbaa !195
  %225 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %201, i64 0, i32 2
  %226 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %201, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %225, i8 0, i64 16, i1 false)
  store ptr %33, ptr %226, align 8, !tbaa !66
  %227 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %201, i64 0, i32 5
  store ptr %204, ptr %227, align 8, !tbaa !71
  %228 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %201, i64 0, i32 6
  store i32 4, ptr %228, align 8, !tbaa !198
  %229 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %201, i64 0, i32 7
  store i8 1, ptr %229, align 4, !tbaa !55
  %230 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %201, i64 0, i32 8
  store i8 1, ptr %230, align 1, !tbaa !69
  %231 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %201, i64 0, i32 9
  store i32 1, ptr %231, align 8, !tbaa !196
  %232 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %201, i64 0, i32 10
  store i32 1, ptr %232, align 4, !tbaa !197
  br label %29, !llvm.loop !205

233:                                              ; preds = %202
  %234 = landingpad { ptr, i32 }
          cleanup
  br label %239

235:                                              ; preds = %216
  %236 = landingpad { ptr, i32 }
          cleanup
  br label %237

237:                                              ; preds = %220, %235
  %238 = phi { ptr, i32 } [ %236, %235 ], [ %221, %220 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %204, ptr noundef %203) #13
  br label %239

239:                                              ; preds = %237, %233
  %240 = phi { ptr, i32 } [ %238, %237 ], [ %234, %233 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %201, ptr noundef %200) #13
  br label %304

241:                                              ; preds = %196
  %242 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %33, i64 0, i32 5
  %243 = load ptr, ptr %242, align 8, !tbaa !71
  store ptr null, ptr %242, align 8, !tbaa !71
  %244 = load ptr, ptr %6, align 8, !tbaa !79
  %245 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %244)
          to label %246 unwind label %288

246:                                              ; preds = %241
  %247 = load ptr, ptr %6, align 8, !tbaa !79
  %248 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %247)
          to label %249 unwind label %290

249:                                              ; preds = %246
  %250 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %197, i64 0, i32 2
  %251 = load ptr, ptr %250, align 8, !tbaa !164
  %252 = load ptr, ptr %6, align 8, !tbaa !79
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %248, align 8, !tbaa !52
  %253 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %248, i64 0, i32 1
  store ptr %252, ptr %253, align 8, !tbaa !195
  %254 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %248, i64 0, i32 2
  %255 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %248, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %254, i8 0, i64 36, i1 false)
  store i8 1, ptr %255, align 4, !tbaa !55
  %256 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %248, i64 0, i32 8
  store i8 1, ptr %256, align 1, !tbaa !69
  %257 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %248, i64 0, i32 9
  store i32 1, ptr %257, align 8, !tbaa !196
  %258 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %248, i64 0, i32 10
  store i32 1, ptr %258, align 4, !tbaa !197
  %259 = icmp eq ptr %251, null
  br i1 %259, label %266, label %260

260:                                              ; preds = %249
  %261 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %252)
          to label %262 unwind label %292

262:                                              ; preds = %260
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %261, ptr noundef nonnull align 8 dereferenceable(56) %251)
          to label %263 unwind label %264

263:                                              ; preds = %262
  store ptr %261, ptr %254, align 8, !tbaa !74
  br label %266

264:                                              ; preds = %262
  %265 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %261, ptr noundef %252) #13
  br label %294

266:                                              ; preds = %263, %249
  %267 = load ptr, ptr %6, align 8, !tbaa !79
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %245, align 8, !tbaa !52
  %268 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %245, i64 0, i32 1
  store ptr %267, ptr %268, align 8, !tbaa !195
  %269 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %245, i64 0, i32 2
  %270 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %245, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %269, i8 0, i64 16, i1 false)
  store ptr %243, ptr %270, align 8, !tbaa !66
  %271 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %245, i64 0, i32 5
  store ptr %248, ptr %271, align 8, !tbaa !71
  %272 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %245, i64 0, i32 6
  store i32 4, ptr %272, align 8, !tbaa !198
  %273 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %245, i64 0, i32 7
  store i8 1, ptr %273, align 4, !tbaa !55
  %274 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %245, i64 0, i32 8
  store i8 1, ptr %274, align 1, !tbaa !69
  %275 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %245, i64 0, i32 9
  store i32 1, ptr %275, align 8, !tbaa !196
  %276 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %245, i64 0, i32 10
  store i32 1, ptr %276, align 4, !tbaa !197
  %277 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %33, i64 0, i32 8
  %278 = load i8, ptr %277, align 1, !tbaa !69, !range !63, !noundef !64
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %287, label %280

280:                                              ; preds = %266
  %281 = load ptr, ptr %242, align 8, !tbaa !71
  %282 = icmp eq ptr %281, null
  br i1 %282, label %287, label %283

283:                                              ; preds = %280
  %284 = load ptr, ptr %281, align 8, !tbaa !52
  %285 = getelementptr inbounds ptr, ptr %284, i64 1
  %286 = load ptr, ptr %285, align 8
  tail call void %286(ptr noundef nonnull align 8 dereferenceable(64) %281) #13
  br label %287

287:                                              ; preds = %266, %280, %283
  store ptr %245, ptr %242, align 8, !tbaa !71
  br label %32, !llvm.loop !205

288:                                              ; preds = %241
  %289 = landingpad { ptr, i32 }
          cleanup
  br label %304

290:                                              ; preds = %246
  %291 = landingpad { ptr, i32 }
          cleanup
  br label %296

292:                                              ; preds = %260
  %293 = landingpad { ptr, i32 }
          cleanup
  br label %294

294:                                              ; preds = %264, %292
  %295 = phi { ptr, i32 } [ %293, %292 ], [ %265, %264 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %248, ptr noundef %247) #13
  br label %296

296:                                              ; preds = %294, %290
  %297 = phi { ptr, i32 } [ %295, %294 ], [ %291, %290 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %245, ptr noundef %244) #13
  br label %304

298:                                              ; preds = %85, %145, %131
  %299 = phi i1 [ true, %131 ], [ false, %145 ], [ false, %85 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %303 unwind label %300

300:                                              ; preds = %298
  %301 = landingpad { ptr, i32 }
          catch ptr null
  %302 = extractvalue { ptr, i32 } %301, 0
  tail call void @__clang_call_terminate(ptr %302) #14
  unreachable

303:                                              ; preds = %298
  ret i1 %299

304:                                              ; preds = %190, %192, %50, %52, %54, %110, %288, %296, %239, %194, %48, %42
  %305 = phi { ptr, i32 } [ %49, %48 ], [ %43, %42 ], [ %111, %110 ], [ %240, %239 ], [ %195, %194 ], [ %297, %296 ], [ %289, %288 ], [ %55, %54 ], [ %51, %50 ], [ %53, %52 ], [ %191, %190 ], [ %193, %192 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %309 unwind label %306

306:                                              ; preds = %304
  %307 = landingpad { ptr, i32 }
          catch ptr null
  %308 = extractvalue { ptr, i32 } %307, 0
  tail call void @__clang_call_terminate(ptr %308) #14
  unreachable

309:                                              ; preds = %304
  resume { ptr, i32 } %305
}

declare noundef zeroext i1 @_ZNK11xercesc_2_717MixedContentModel7hasDupsEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner15scanElementDeclEv(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %5, i32 noundef 207)
  br label %6

6:                                                ; preds = %3, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !107
  %9 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %8)
  %10 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  store i32 0, ptr %9, align 8, !tbaa !133
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %9, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !134
  store i16 0, ptr %13, align 2, !tbaa !135
  %14 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !122
  %16 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %15, ptr noundef nonnull align 8 dereferenceable(40) %9, i1 noundef zeroext false)
          to label %17 unwind label %28

17:                                               ; preds = %6
  br i1 %16, label %30, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %20, i32 noundef 183)
          to label %21 unwind label %28

21:                                               ; preds = %18
  %22 = load ptr, ptr %10, align 8, !tbaa !106
  br label %23

23:                                               ; preds = %25, %21
  %24 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %22)
          to label %25 unwind label %26

25:                                               ; preds = %23
  switch i16 %24, label %23 [
    i16 62, label %168
    i16 0, label %168
  ]

26:                                               ; preds = %23
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %173

28:                                               ; preds = %18, %6
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %173

30:                                               ; preds = %17
  %31 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !82
  %33 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 14
  %34 = load i32, ptr %33, align 8, !tbaa !121
  %35 = load ptr, ptr %12, align 8, !tbaa !134
  %36 = load i32, ptr %9, align 8, !tbaa !133
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i16, ptr %35, i64 %37
  store i16 0, ptr %38, align 2, !tbaa !135
  %39 = load ptr, ptr %32, align 8, !tbaa !52
  %40 = getelementptr inbounds ptr, ptr %39, i64 11
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(61) %32, i32 noundef %34, ptr noundef null, ptr noundef %35, i32 noundef -2)
          to label %43 unwind label %62

43:                                               ; preds = %30
  %44 = icmp eq ptr %42, null
  br i1 %44, label %88, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %42, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !186
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %107

49:                                               ; preds = %45
  %50 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %51 = load ptr, ptr %50, align 8, !tbaa !105
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %51, i64 0, i32 10
  %53 = load i8, ptr %52, align 8, !tbaa !140, !range !63, !noundef !64
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %51, i64 0, i32 50
  %57 = load ptr, ptr %56, align 8, !tbaa !141
  %58 = load ptr, ptr %12, align 8, !tbaa !134
  %59 = load i32, ptr %9, align 8, !tbaa !133
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i16, ptr %58, i64 %60
  store i16 0, ptr %61, align 2, !tbaa !135
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %57, i32 noundef 10, ptr noundef %58, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %64 unwind label %62

62:                                               ; preds = %99, %88, %82, %68, %55, %30
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %173

64:                                               ; preds = %55, %49
  %65 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !101
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !77
  %71 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %70)
          to label %72 unwind label %62

72:                                               ; preds = %68
  %73 = load ptr, ptr %12, align 8, !tbaa !134
  %74 = load i32, ptr %9, align 8, !tbaa !133
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i16, ptr %73, i64 %75
  store i16 0, ptr %76, align 2, !tbaa !135
  %77 = load i32, ptr %33, align 8, !tbaa !121
  %78 = load ptr, ptr %69, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %71, ptr noundef %73, i32 noundef %77, i32 noundef 1, ptr noundef %78)
          to label %79 unwind label %80

79:                                               ; preds = %72
  store ptr %71, ptr %65, align 8, !tbaa !101
  br label %107

80:                                               ; preds = %72
  %81 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %71, ptr noundef %70) #13
  br label %173

82:                                               ; preds = %64
  %83 = load ptr, ptr %12, align 8, !tbaa !134
  %84 = load i32, ptr %9, align 8, !tbaa !133
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i16, ptr %83, i64 %85
  store i16 0, ptr %86, align 2, !tbaa !135
  %87 = load i32, ptr %33, align 8, !tbaa !121
  invoke void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKti(ptr noundef nonnull align 8 dereferenceable(33) %66, ptr noundef %83, i32 noundef %87)
          to label %107 unwind label %62

88:                                               ; preds = %43
  %89 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !79
  %91 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %90)
          to label %92 unwind label %62

92:                                               ; preds = %88
  %93 = load ptr, ptr %12, align 8, !tbaa !134
  %94 = load i32, ptr %9, align 8, !tbaa !133
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i16, ptr %93, i64 %95
  store i16 0, ptr %96, align 2, !tbaa !135
  %97 = load i32, ptr %33, align 8, !tbaa !121
  %98 = load ptr, ptr %89, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %91, ptr noundef %93, i32 noundef %97, i32 noundef 1, ptr noundef %98)
          to label %99 unwind label %105

99:                                               ; preds = %92
  %100 = load ptr, ptr %31, align 8, !tbaa !82
  %101 = load ptr, ptr %100, align 8, !tbaa !52
  %102 = getelementptr inbounds ptr, ptr %101, i64 17
  %103 = load ptr, ptr %102, align 8
  %104 = invoke noundef i32 %103(ptr noundef nonnull align 8 dereferenceable(61) %100, ptr noundef nonnull %91, i1 noundef zeroext false)
          to label %107 unwind label %62

105:                                              ; preds = %92
  %106 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %91, ptr noundef %90) #13
  br label %173

107:                                              ; preds = %82, %99, %45, %79
  %108 = phi ptr [ %42, %79 ], [ %42, %45 ], [ %91, %99 ], [ %42, %82 ]
  %109 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 5
  %110 = load ptr, ptr %109, align 8, !tbaa !101
  %111 = icmp eq ptr %108, %110
  %112 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 15
  %113 = load i32, ptr %112, align 4, !tbaa !129
  %114 = load ptr, ptr %10, align 8, !tbaa !106
  %115 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !122
  %117 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %116, i64 0, i32 15
  %118 = load i32, ptr %117, align 8, !tbaa !123
  %119 = icmp ne i32 %113, %118
  %120 = zext i1 %119 to i8
  %121 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %108, i64 0, i32 5
  store i8 %120, ptr %121, align 8, !tbaa !187
  %122 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %108, i64 0, i32 3
  store i32 1, ptr %122, align 8, !tbaa !186
  %123 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %124 unwind label %132

124:                                              ; preds = %107
  br i1 %123, label %134, label %125

125:                                              ; preds = %124
  %126 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %127 = load ptr, ptr %126, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %127, i32 noundef 207)
          to label %134 unwind label %132

128:                                              ; preds = %157
  %129 = landingpad { ptr, i32 }
          cleanup
  br label %173

130:                                              ; preds = %139
  %131 = landingpad { ptr, i32 }
          cleanup
  br label %173

132:                                              ; preds = %164, %148, %144, %142, %134, %125, %107
  %133 = landingpad { ptr, i32 }
          cleanup
  br label %173

134:                                              ; preds = %125, %124
  %135 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner15scanContentSpecERNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %108)
          to label %136 unwind label %132

136:                                              ; preds = %134
  br i1 %135, label %142, label %137

137:                                              ; preds = %136
  %138 = load ptr, ptr %10, align 8, !tbaa !106
  br label %139

139:                                              ; preds = %141, %137
  %140 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %138)
          to label %141 unwind label %130

141:                                              ; preds = %139
  switch i16 %140, label %139 [
    i16 62, label %168
    i16 0, label %168
  ]

142:                                              ; preds = %136
  %143 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %144 unwind label %132

144:                                              ; preds = %142
  %145 = load ptr, ptr %10, align 8, !tbaa !106
  %146 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %145, i16 noundef zeroext 62)
          to label %147 unwind label %132

147:                                              ; preds = %144
  br i1 %146, label %160, label %148

148:                                              ; preds = %147
  %149 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %150 = load ptr, ptr %149, align 8, !tbaa !105
  %151 = load ptr, ptr %12, align 8, !tbaa !134
  %152 = load i32, ptr %9, align 8, !tbaa !133
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i16, ptr %151, i64 %153
  store i16 0, ptr %154, align 2, !tbaa !135
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %150, i32 noundef 232, ptr noundef %151, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %155 unwind label %132

155:                                              ; preds = %148
  %156 = load ptr, ptr %10, align 8, !tbaa !106
  br label %157

157:                                              ; preds = %159, %155
  %158 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %156)
          to label %159 unwind label %128

159:                                              ; preds = %157
  switch i16 %158, label %157 [
    i16 62, label %160
    i16 0, label %160
  ]

160:                                              ; preds = %159, %159, %147
  %161 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !80
  %163 = icmp eq ptr %162, null
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = load ptr, ptr %162, align 8, !tbaa !52
  %166 = getelementptr inbounds ptr, ptr %165, i64 7
  %167 = load ptr, ptr %166, align 8
  invoke void %167(ptr noundef nonnull align 8 dereferenceable(8) %162, ptr noundef nonnull align 8 dereferenceable(80) %108, i1 noundef zeroext %111)
          to label %168 unwind label %132

168:                                              ; preds = %25, %25, %141, %141, %164, %160
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(40) %9)
          to label %172 unwind label %169

169:                                              ; preds = %168
  %170 = landingpad { ptr, i32 }
          catch ptr null
  %171 = extractvalue { ptr, i32 } %170, 0
  tail call void @__clang_call_terminate(ptr %171) #14
  unreachable

172:                                              ; preds = %168
  ret void

173:                                              ; preds = %128, %132, %130, %26, %28, %62, %80, %105
  %174 = phi { ptr, i32 } [ %63, %62 ], [ %81, %80 ], [ %106, %105 ], [ %27, %26 ], [ %29, %28 ], [ %129, %128 ], [ %131, %130 ], [ %133, %132 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(40) %9)
          to label %178 unwind label %175

175:                                              ; preds = %173
  %176 = landingpad { ptr, i32 }
          catch ptr null
  %177 = extractvalue { ptr, i32 } %176, 0
  tail call void @__clang_call_terminate(ptr %177) #14
  unreachable

178:                                              ; preds = %173
  resume { ptr, i32 } %174
}

declare void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKti(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner14scanEntityDeclEv(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %6)
  %8 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %6, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !122
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %9, i64 0, i32 28
  %11 = load ptr, ptr %10, align 8, !tbaa !155
  %12 = zext i16 %7 to i64
  %13 = getelementptr inbounds i8, ptr %11, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !156
  %15 = icmp slt i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %18, i32 noundef 207)
  br label %22

19:                                               ; preds = %1
  %20 = load ptr, ptr %5, align 8, !tbaa !106
  %21 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %20, i1 noundef zeroext false)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load ptr, ptr %5, align 8, !tbaa !106
  %24 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %23, i16 noundef zeroext 37)
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %29 = load ptr, ptr %28, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %29, i32 noundef 207)
  br label %30

30:                                               ; preds = %25, %27, %22
  %31 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !107
  %33 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %32)
  %34 = load ptr, ptr %5, align 8, !tbaa !106
  store i32 0, ptr %33, align 8, !tbaa !133
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %33, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !134
  store i16 0, ptr %36, align 2, !tbaa !135
  %37 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %34, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !122
  %39 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %38, ptr noundef nonnull align 8 dereferenceable(40) %33, i1 noundef zeroext false)
          to label %40 unwind label %51

40:                                               ; preds = %30
  %41 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %42 = load ptr, ptr %41, align 8, !tbaa !105
  br i1 %39, label %53, label %43

43:                                               ; preds = %40
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %42, i32 noundef 222)
          to label %44 unwind label %51

44:                                               ; preds = %43
  %45 = load ptr, ptr %5, align 8, !tbaa !106
  br label %46

46:                                               ; preds = %48, %44
  %47 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %45)
          to label %48 unwind label %49

48:                                               ; preds = %46
  switch i16 %47, label %46 [
    i16 62, label %222
    i16 0, label %222
  ]

49:                                               ; preds = %46
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %227

51:                                               ; preds = %43, %57, %65, %30
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %227

53:                                               ; preds = %40
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %42, i64 0, i32 4
  %55 = load i8, ptr %54, align 2, !tbaa !108, !range !63, !noundef !64
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %35, align 8, !tbaa !134
  %59 = load i32, ptr %33, align 8, !tbaa !133
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i16, ptr %58, i64 %60
  store i16 0, ptr %61, align 2, !tbaa !135
  %62 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %58, i16 noundef zeroext 58)
          to label %63 unwind label %51

63:                                               ; preds = %57
  %64 = icmp eq i32 %62, -1
  br i1 %64, label %67, label %65

65:                                               ; preds = %63
  %66 = load ptr, ptr %41, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %66, i32 noundef 290)
          to label %67 unwind label %51

67:                                               ; preds = %63, %65, %53
  %68 = load ptr, ptr %35, align 8, !tbaa !134
  %69 = load i32, ptr %33, align 8, !tbaa !133
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i16, ptr %68, i64 %70
  br i1 %24, label %72, label %84

72:                                               ; preds = %67
  %73 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 13
  %74 = load ptr, ptr %73, align 8, !tbaa !83
  store i16 0, ptr %71, align 2, !tbaa !135
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %75 = invoke noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %74, ptr noundef %68, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %76 unwind label %82

76:                                               ; preds = %72
  %77 = icmp eq ptr %75, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %76
  %79 = load ptr, ptr %75, align 8, !tbaa !137
  br label %80

80:                                               ; preds = %76, %78
  %81 = phi ptr [ %79, %78 ], [ null, %76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %106

82:                                               ; preds = %143, %96, %84, %72, %133, %125, %113
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %227

84:                                               ; preds = %67
  %85 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 9
  %86 = load ptr, ptr %85, align 8, !tbaa !82
  store i16 0, ptr %71, align 2, !tbaa !135
  %87 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %88 = invoke noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %87, ptr noundef %68, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %89 unwind label %82

89:                                               ; preds = %84
  %90 = icmp eq ptr %88, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %89
  %92 = load ptr, ptr %88, align 8, !tbaa !137
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi ptr [ %92, %91 ], [ null, %89 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %86, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  %99 = invoke noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %98, ptr noundef %68, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %100 unwind label %82

100:                                              ; preds = %96
  %101 = icmp eq ptr %99, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %100
  %103 = load ptr, ptr %99, align 8, !tbaa !137
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi ptr [ %103, %102 ], [ null, %100 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %106

106:                                              ; preds = %104, %93, %80
  %107 = phi ptr [ %81, %80 ], [ %105, %104 ], [ %94, %93 ]
  %108 = icmp eq ptr %107, null
  br i1 %108, label %133, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !102
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %125

113:                                              ; preds = %109
  %114 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !77
  %116 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %115)
          to label %117 unwind label %82

117:                                              ; preds = %113
  %118 = load ptr, ptr %114, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_713XMLEntityDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %116, ptr noundef %118)
          to label %119 unwind label %123

119:                                              ; preds = %117
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %116, align 8, !tbaa !52
  %120 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %116, i64 0, i32 1
  store i8 0, ptr %120, align 8, !tbaa !208
  %121 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %116, i64 0, i32 2
  store i8 0, ptr %121, align 1, !tbaa !210
  %122 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %116, i64 0, i32 3
  store i8 0, ptr %122, align 2, !tbaa !211
  store ptr %116, ptr %110, align 8, !tbaa !102
  br label %125

123:                                              ; preds = %117
  %124 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %116, ptr noundef %115) #13
  br label %227

125:                                              ; preds = %119, %109
  %126 = load ptr, ptr %110, align 8, !tbaa !102
  %127 = load ptr, ptr %35, align 8, !tbaa !134
  %128 = load i32, ptr %33, align 8, !tbaa !133
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i16, ptr %127, i64 %129
  store i16 0, ptr %130, align 2, !tbaa !135
  invoke void @_ZN11xercesc_2_713XMLEntityDecl7setNameEPKt(ptr noundef nonnull align 8 dereferenceable(72) %126, ptr noundef %127)
          to label %131 unwind label %82

131:                                              ; preds = %125
  %132 = load ptr, ptr %110, align 8, !tbaa !102
  br label %158

133:                                              ; preds = %106
  %134 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !79
  %136 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %135)
          to label %137 unwind label %82

137:                                              ; preds = %133
  %138 = load ptr, ptr %35, align 8, !tbaa !134
  %139 = load i32, ptr %33, align 8, !tbaa !133
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i16, ptr %138, i64 %140
  store i16 0, ptr %141, align 2, !tbaa !135
  %142 = load ptr, ptr %134, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_713XMLEntityDeclC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %136, ptr noundef %138, ptr noundef %142)
          to label %143 unwind label %156

143:                                              ; preds = %137
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %136, align 8, !tbaa !52
  %144 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %136, i64 0, i32 1
  store i8 0, ptr %144, align 8, !tbaa !208
  %145 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %136, i64 0, i32 2
  store i8 0, ptr %145, align 1, !tbaa !210
  %146 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %136, i64 0, i32 3
  store i8 0, ptr %146, align 2, !tbaa !211
  %147 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 7
  %148 = load i8, ptr %147, align 8, !tbaa !132, !range !63, !noundef !64
  store i8 %148, ptr %144, align 8, !tbaa !208
  %149 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 13
  %150 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 9
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %151, i64 0, i32 4
  %153 = select i1 %24, ptr %149, ptr %152
  %154 = load ptr, ptr %153, align 8, !tbaa !94
  %155 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %154, ptr noundef nonnull %136)
          to label %158 unwind label %82

156:                                              ; preds = %137
  %157 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %136, ptr noundef %135) #13
  br label %227

158:                                              ; preds = %143, %131
  %159 = phi ptr [ %132, %131 ], [ %136, %143 ]
  %160 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 6
  %161 = load ptr, ptr %160, align 8, !tbaa !102
  %162 = icmp eq ptr %159, %161
  %163 = zext i1 %24 to i8
  %164 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %159, i64 0, i32 2
  store i8 %163, ptr %164, align 1, !tbaa !210
  %165 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %166 unwind label %169

166:                                              ; preds = %158
  br i1 %165, label %171, label %167

167:                                              ; preds = %166
  %168 = load ptr, ptr %41, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %168, i32 noundef 207)
          to label %171 unwind label %169

169:                                              ; preds = %167, %158
  %170 = landingpad { ptr, i32 }
          cleanup
  br label %227

171:                                              ; preds = %167, %166
  %172 = load ptr, ptr %41, align 8, !tbaa !105
  %173 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %172, i64 0, i32 9
  %174 = load i8, ptr %173, align 1, !tbaa !131, !range !63, !noundef !64
  %175 = icmp ne i8 %174, 0
  %176 = and i1 %24, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %171
  store i8 0, ptr %173, align 1, !tbaa !131
  br label %184

178:                                              ; preds = %211
  %179 = landingpad { ptr, i32 }
          cleanup
  br label %227

180:                                              ; preds = %189
  %181 = landingpad { ptr, i32 }
          cleanup
  br label %227

182:                                              ; preds = %218, %205, %201, %199, %192, %184
  %183 = landingpad { ptr, i32 }
          cleanup
  br label %227

184:                                              ; preds = %171, %177
  %185 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13scanEntityDefERNS_13DTDEntityDeclEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(75) %159, i1 noundef zeroext %24)
          to label %186 unwind label %182

186:                                              ; preds = %184
  br i1 %185, label %195, label %187

187:                                              ; preds = %186
  %188 = load ptr, ptr %5, align 8, !tbaa !106
  br label %189

189:                                              ; preds = %191, %187
  %190 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %188)
          to label %191 unwind label %180

191:                                              ; preds = %189
  switch i16 %190, label %189 [
    i16 62, label %192
    i16 0, label %192
  ]

192:                                              ; preds = %191, %191
  %193 = load ptr, ptr %41, align 8, !tbaa !105
  %194 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %193, i64 0, i32 9
  store i8 1, ptr %194, align 1, !tbaa !131
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %193, i32 noundef 272)
          to label %222 unwind label %182

195:                                              ; preds = %186
  br i1 %175, label %196, label %199

196:                                              ; preds = %195
  %197 = load ptr, ptr %41, align 8, !tbaa !105
  %198 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %197, i64 0, i32 9
  store i8 1, ptr %198, align 1, !tbaa !131
  br label %199

199:                                              ; preds = %196, %195
  %200 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %201 unwind label %182

201:                                              ; preds = %199
  %202 = load ptr, ptr %5, align 8, !tbaa !106
  %203 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %202, i16 noundef zeroext 62)
          to label %204 unwind label %182

204:                                              ; preds = %201
  br i1 %203, label %214, label %205

205:                                              ; preds = %204
  %206 = load ptr, ptr %41, align 8, !tbaa !105
  %207 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %159, i64 0, i32 4
  %208 = load ptr, ptr %207, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %206, i32 noundef 223, ptr noundef %208, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %209 unwind label %182

209:                                              ; preds = %205
  %210 = load ptr, ptr %5, align 8, !tbaa !106
  br label %211

211:                                              ; preds = %213, %209
  %212 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %210)
          to label %213 unwind label %178

213:                                              ; preds = %211
  switch i16 %212, label %211 [
    i16 62, label %214
    i16 0, label %214
  ]

214:                                              ; preds = %213, %213, %204
  %215 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !80
  %217 = icmp eq ptr %216, null
  br i1 %217, label %222, label %218

218:                                              ; preds = %214
  %219 = load ptr, ptr %216, align 8, !tbaa !52
  %220 = getelementptr inbounds ptr, ptr %219, i64 11
  %221 = load ptr, ptr %220, align 8
  invoke void %221(ptr noundef nonnull align 8 dereferenceable(8) %216, ptr noundef nonnull align 8 dereferenceable(75) %159, i1 noundef zeroext %24, i1 noundef zeroext %162)
          to label %222 unwind label %182

222:                                              ; preds = %48, %48, %218, %214, %192
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(40) %33)
          to label %226 unwind label %223

223:                                              ; preds = %222
  %224 = landingpad { ptr, i32 }
          catch ptr null
  %225 = extractvalue { ptr, i32 } %224, 0
  call void @__clang_call_terminate(ptr %225) #14
  unreachable

226:                                              ; preds = %222
  ret void

227:                                              ; preds = %178, %182, %180, %49, %51, %82, %123, %156, %169
  %228 = phi { ptr, i32 } [ %83, %82 ], [ %124, %123 ], [ %157, %156 ], [ %170, %169 ], [ %50, %49 ], [ %52, %51 ], [ %179, %178 ], [ %181, %180 ], [ %183, %182 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(40) %33)
          to label %232 unwind label %229

229:                                              ; preds = %227
  %230 = landingpad { ptr, i32 }
          catch ptr null
  %231 = extractvalue { ptr, i32 } %230, 0
  call void @__clang_call_terminate(ptr %231) #14
  unreachable

232:                                              ; preds = %227
  resume { ptr, i32 } %228
}

declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

declare void @_ZN11xercesc_2_713XMLEntityDecl7setNameEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !149
  %6 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8, !prof !212

8:                                                ; preds = %2
  %9 = call ptr @__cxa_allocate_exception(i64 48) #13
  %10 = load ptr, ptr %4, align 8, !tbaa !149
  %11 = load ptr, ptr %0, align 8, !tbaa !85
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.1, i32 noundef 213, i32 noundef 65, ptr noundef %10, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  resume { ptr, i32 } %14

15:                                               ; preds = %2
  %16 = load ptr, ptr %0, align 8, !tbaa !85
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef 16), !prof !213
  %21 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !92
  %23 = load i32, ptr %3, align 4, !tbaa !204
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !94
  store ptr %1, ptr %20, align 8, !tbaa !137
  %27 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %20, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !214
  store ptr %20, ptr %25, align 8, !tbaa !94
  %28 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !88
  %30 = add i32 %29, 1
  %31 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !87
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %55, !prof !215

34:                                               ; preds = %15
  %35 = uitofp i32 %32 to double
  %36 = fmul double %35, 1.500000e+00
  %37 = fptoui double %36 to i32
  %38 = load ptr, ptr %0, align 8, !tbaa !85
  %39 = zext i32 %37 to i64
  %40 = shl nuw nsw i64 %39, 3
  %41 = load ptr, ptr %38, align 8, !tbaa !52
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef %40)
  %45 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !99
  %47 = load i32, ptr %31, align 8, !tbaa !87
  %48 = zext i32 %47 to i64
  %49 = shl nuw nsw i64 %48, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %44, ptr align 8 %46, i64 %49, i1 false)
  %50 = load ptr, ptr %0, align 8, !tbaa !85
  %51 = load ptr, ptr %45, align 8, !tbaa !99
  %52 = load ptr, ptr %50, align 8, !tbaa !52
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  call void %54(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %51)
  store ptr %44, ptr %45, align 8, !tbaa !99
  store i32 %37, ptr %31, align 8, !tbaa !87
  br label %55

55:                                               ; preds = %34, %15
  %56 = load i32, ptr %28, align 4, !tbaa !88
  %57 = add i32 %56, 1
  store i32 %57, ptr %28, align 4, !tbaa !88
  %58 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !99
  %60 = zext i32 %57 to i64
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  store ptr %1, ptr %61, align 8, !tbaa !94
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 1
  store i32 %57, ptr %62, align 8, !tbaa !216
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %57
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13scanEntityDefERNS_13DTDEntityDeclEb(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0, ptr nocapture noundef nonnull align 8 dereferenceable(75) %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %4 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %6)
  %8 = icmp eq i16 %7, 39
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 8, !tbaa !106
  %11 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %10)
  %12 = icmp eq i16 %11, 34
  br i1 %12, label %13, label %85

13:                                               ; preds = %9, %3
  %14 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !107
  %16 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %15)
  %17 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner17scanEntityLiteralERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %16)
          to label %18 unwind label %19

18:                                               ; preds = %13
  br i1 %17, label %24, label %81

19:                                               ; preds = %57, %33, %13
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(40) %16)
          to label %368 unwind label %21

21:                                               ; preds = %19
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #14
  unreachable

24:                                               ; preds = %18
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %16, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !134
  %27 = load i32, ptr %16, align 8, !tbaa !133
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i16, ptr %26, i64 %28
  store i16 0, ptr %29, align 2, !tbaa !135
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !151
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !217
  %36 = load ptr, ptr %35, align 8, !tbaa !52
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull %31)
          to label %39 unwind label %19

39:                                               ; preds = %33, %24
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !217
  %42 = icmp eq ptr %26, null
  br i1 %42, label %77, label %43

43:                                               ; preds = %39
  %44 = load i16, ptr %26, align 2, !tbaa !135
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %43, %46
  %47 = phi ptr [ %48, %46 ], [ %26, %43 ]
  %48 = getelementptr inbounds i16, ptr %47, i64 1
  %49 = load i16, ptr %48, align 2, !tbaa !135
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %46, !llvm.loop !176

51:                                               ; preds = %46
  %52 = ptrtoint ptr %48 to i64
  %53 = ptrtoint ptr %26 to i64
  %54 = sub i64 %52, %53
  %55 = add i64 %54, 2
  %56 = and i64 %55, 8589934590
  br label %57

57:                                               ; preds = %51, %43
  %58 = phi i64 [ %56, %51 ], [ 2, %43 ]
  %59 = load ptr, ptr %41, align 8, !tbaa !52
  %60 = getelementptr inbounds ptr, ptr %59, i64 2
  %61 = load ptr, ptr %60, align 8
  %62 = invoke noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %58)
          to label %63 unwind label %19

63:                                               ; preds = %57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %62, ptr nonnull align 2 %26, i64 %58, i1 false)
  store ptr %62, ptr %30, align 8, !tbaa !151
  %64 = load i16, ptr %26, align 2, !tbaa !135
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %63, %66
  %67 = phi ptr [ %68, %66 ], [ %26, %63 ]
  %68 = getelementptr inbounds i16, ptr %67, i64 1
  %69 = load i16, ptr %68, align 2, !tbaa !135
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %66, !llvm.loop !176

71:                                               ; preds = %66
  %72 = ptrtoint ptr %68 to i64
  %73 = ptrtoint ptr %26 to i64
  %74 = sub i64 %72, %73
  %75 = lshr exact i64 %74, 1
  %76 = trunc i64 %75 to i32
  br label %78

77:                                               ; preds = %39
  store ptr null, ptr %30, align 8, !tbaa !151
  br label %78

78:                                               ; preds = %63, %71, %77
  %79 = phi i32 [ %76, %71 ], [ 0, %63 ], [ 0, %77 ]
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 2
  store i32 %79, ptr %80, align 4, !tbaa !152
  br label %81

81:                                               ; preds = %78, %18
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(40) %16)
          to label %366 unwind label %82

82:                                               ; preds = %81
  %83 = landingpad { ptr, i32 }
          catch ptr null
  %84 = extractvalue { ptr, i32 } %83, 0
  tail call void @__clang_call_terminate(ptr %84) #14
  unreachable

85:                                               ; preds = %9
  %86 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %87 = load ptr, ptr %86, align 8, !tbaa !107
  %88 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %87)
  %89 = load ptr, ptr %86, align 8, !tbaa !107
  %90 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %89)
          to label %91 unwind label %94

91:                                               ; preds = %85
  %92 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner6scanIdERNS_9XMLBufferES2_NS0_7IDTypesE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %88, ptr noundef nonnull align 8 dereferenceable(40) %90, i32 noundef 1)
          to label %93 unwind label %96

93:                                               ; preds = %91
  br i1 %92, label %98, label %347

94:                                               ; preds = %85
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %361

96:                                               ; preds = %91
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %356

98:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  %99 = load ptr, ptr %5, align 8, !tbaa !106
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %99, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %100 unwind label %249

100:                                              ; preds = %98
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %88, i64 0, i32 6
  %102 = load ptr, ptr %101, align 8, !tbaa !134
  %103 = load i32, ptr %88, align 8, !tbaa !133
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i16, ptr %102, i64 %104
  store i16 0, ptr %105, align 2, !tbaa !135
  %106 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %90, i64 0, i32 6
  %107 = load ptr, ptr %106, align 8, !tbaa !134
  %108 = load i32, ptr %90, align 8, !tbaa !133
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i16, ptr %107, i64 %109
  store i16 0, ptr %110, align 2, !tbaa !135
  %111 = icmp eq ptr %102, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %100
  %113 = load i16, ptr %102, align 2, !tbaa !135
  %114 = icmp eq i16 %113, 0
  %115 = select i1 %114, ptr null, ptr %102
  br label %116

116:                                              ; preds = %112, %100
  %117 = phi ptr [ null, %100 ], [ %115, %112 ]
  %118 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !142
  %120 = icmp eq ptr %119, null
  br i1 %120, label %127, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 9
  %123 = load ptr, ptr %122, align 8, !tbaa !217
  %124 = load ptr, ptr %123, align 8, !tbaa !52
  %125 = getelementptr inbounds ptr, ptr %124, i64 3
  %126 = load ptr, ptr %125, align 8
  invoke void %126(ptr noundef nonnull align 8 dereferenceable(8) %123, ptr noundef nonnull %119)
          to label %127 unwind label %251

127:                                              ; preds = %121, %116
  %128 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 9
  %129 = load ptr, ptr %128, align 8, !tbaa !217
  %130 = icmp eq ptr %117, null
  br i1 %130, label %152, label %131

131:                                              ; preds = %127
  %132 = load i16, ptr %117, align 2, !tbaa !135
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %145, label %134

134:                                              ; preds = %131, %134
  %135 = phi ptr [ %136, %134 ], [ %117, %131 ]
  %136 = getelementptr inbounds i16, ptr %135, i64 1
  %137 = load i16, ptr %136, align 2, !tbaa !135
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %139, label %134, !llvm.loop !176

139:                                              ; preds = %134
  %140 = ptrtoint ptr %136 to i64
  %141 = ptrtoint ptr %117 to i64
  %142 = sub i64 %140, %141
  %143 = add i64 %142, 2
  %144 = and i64 %143, 8589934590
  br label %145

145:                                              ; preds = %139, %131
  %146 = phi i64 [ %144, %139 ], [ 2, %131 ]
  %147 = load ptr, ptr %129, align 8, !tbaa !52
  %148 = getelementptr inbounds ptr, ptr %147, i64 2
  %149 = load ptr, ptr %148, align 8
  %150 = invoke noundef ptr %149(ptr noundef nonnull align 8 dereferenceable(8) %129, i64 noundef %146)
          to label %151 unwind label %251

151:                                              ; preds = %145
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %150, ptr nonnull align 2 %117, i64 %146, i1 false)
  br label %152

152:                                              ; preds = %127, %151
  %153 = phi ptr [ %150, %151 ], [ null, %127 ]
  store ptr %153, ptr %118, align 8, !tbaa !142
  %154 = icmp eq ptr %107, null
  br i1 %154, label %159, label %155

155:                                              ; preds = %152
  %156 = load i16, ptr %107, align 2, !tbaa !135
  %157 = icmp eq i16 %156, 0
  %158 = select i1 %157, ptr null, ptr %107
  br label %159

159:                                              ; preds = %155, %152
  %160 = phi ptr [ null, %152 ], [ %158, %155 ]
  %161 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 7
  %162 = load ptr, ptr %161, align 8, !tbaa !147
  %163 = icmp eq ptr %162, null
  br i1 %163, label %169, label %164

164:                                              ; preds = %159
  %165 = load ptr, ptr %128, align 8, !tbaa !217
  %166 = load ptr, ptr %165, align 8, !tbaa !52
  %167 = getelementptr inbounds ptr, ptr %166, i64 3
  %168 = load ptr, ptr %167, align 8
  invoke void %168(ptr noundef nonnull align 8 dereferenceable(8) %165, ptr noundef nonnull %162)
          to label %169 unwind label %251

169:                                              ; preds = %159, %164
  %170 = load ptr, ptr %128, align 8, !tbaa !217
  %171 = icmp eq ptr %160, null
  br i1 %171, label %193, label %172

172:                                              ; preds = %169
  %173 = load i16, ptr %160, align 2, !tbaa !135
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %172, %175
  %176 = phi ptr [ %177, %175 ], [ %160, %172 ]
  %177 = getelementptr inbounds i16, ptr %176, i64 1
  %178 = load i16, ptr %177, align 2, !tbaa !135
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %180, label %175, !llvm.loop !176

180:                                              ; preds = %175
  %181 = ptrtoint ptr %177 to i64
  %182 = ptrtoint ptr %160 to i64
  %183 = sub i64 %181, %182
  %184 = add i64 %183, 2
  %185 = and i64 %184, 8589934590
  br label %186

186:                                              ; preds = %180, %172
  %187 = phi i64 [ %185, %180 ], [ 2, %172 ]
  %188 = load ptr, ptr %170, align 8, !tbaa !52
  %189 = getelementptr inbounds ptr, ptr %188, i64 2
  %190 = load ptr, ptr %189, align 8
  %191 = invoke noundef ptr %190(ptr noundef nonnull align 8 dereferenceable(8) %170, i64 noundef %187)
          to label %192 unwind label %251

192:                                              ; preds = %186
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %191, ptr nonnull align 2 %160, i64 %187, i1 false)
  br label %193

193:                                              ; preds = %169, %192
  %194 = phi ptr [ %191, %192 ], [ null, %169 ]
  store ptr %194, ptr %161, align 8, !tbaa !147
  %195 = load ptr, ptr %4, align 8, !tbaa !218
  %196 = icmp eq ptr %195, null
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = load i16, ptr %195, align 2, !tbaa !135
  %199 = icmp eq i16 %198, 0
  %200 = select i1 %199, ptr null, ptr %195
  br label %201

201:                                              ; preds = %197, %193
  %202 = phi ptr [ null, %193 ], [ %200, %197 ]
  %203 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 8
  %204 = load ptr, ptr %203, align 8, !tbaa !144
  %205 = icmp eq ptr %204, null
  br i1 %205, label %211, label %206

206:                                              ; preds = %201
  %207 = load ptr, ptr %128, align 8, !tbaa !217
  %208 = load ptr, ptr %207, align 8, !tbaa !52
  %209 = getelementptr inbounds ptr, ptr %208, i64 3
  %210 = load ptr, ptr %209, align 8
  invoke void %210(ptr noundef nonnull align 8 dereferenceable(8) %207, ptr noundef nonnull %204)
          to label %211 unwind label %251

211:                                              ; preds = %201, %206
  %212 = load ptr, ptr %128, align 8, !tbaa !217
  %213 = icmp eq ptr %202, null
  br i1 %213, label %235, label %214

214:                                              ; preds = %211
  %215 = load i16, ptr %202, align 2, !tbaa !135
  %216 = icmp eq i16 %215, 0
  br i1 %216, label %228, label %217

217:                                              ; preds = %214, %217
  %218 = phi ptr [ %219, %217 ], [ %202, %214 ]
  %219 = getelementptr inbounds i16, ptr %218, i64 1
  %220 = load i16, ptr %219, align 2, !tbaa !135
  %221 = icmp eq i16 %220, 0
  br i1 %221, label %222, label %217, !llvm.loop !176

222:                                              ; preds = %217
  %223 = ptrtoint ptr %219 to i64
  %224 = ptrtoint ptr %202 to i64
  %225 = sub i64 %223, %224
  %226 = add i64 %225, 2
  %227 = and i64 %226, 8589934590
  br label %228

228:                                              ; preds = %222, %214
  %229 = phi i64 [ %227, %222 ], [ 2, %214 ]
  %230 = load ptr, ptr %212, align 8, !tbaa !52
  %231 = getelementptr inbounds ptr, ptr %230, i64 2
  %232 = load ptr, ptr %231, align 8
  %233 = invoke noundef ptr %232(ptr noundef nonnull align 8 dereferenceable(8) %212, i64 noundef %229)
          to label %234 unwind label %251

234:                                              ; preds = %228
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %233, ptr nonnull align 2 %202, i64 %229, i1 false)
  br label %235

235:                                              ; preds = %211, %234
  %236 = phi ptr [ %233, %234 ], [ null, %211 ]
  store ptr %236, ptr %203, align 8, !tbaa !144
  %237 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %238 unwind label %253

238:                                              ; preds = %235
  br i1 %2, label %239, label %255

239:                                              ; preds = %238
  br i1 %237, label %240, label %343

240:                                              ; preds = %239
  %241 = load ptr, ptr %5, align 8, !tbaa !106
  %242 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %241, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !122
  %244 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %243, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgNDATAStringE)
          to label %245 unwind label %253

245:                                              ; preds = %240
  br i1 %244, label %246, label %255

246:                                              ; preds = %245
  %247 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %248 = load ptr, ptr %247, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %248, i32 noundef 266)
          to label %255 unwind label %253

249:                                              ; preds = %98
  %250 = landingpad { ptr, i32 }
          cleanup
  br label %345

251:                                              ; preds = %228, %206, %186, %164, %145, %121
  %252 = landingpad { ptr, i32 }
          cleanup
  br label %345

253:                                              ; preds = %264, %255, %240, %276, %273, %270, %261, %246, %235
  %254 = landingpad { ptr, i32 }
          cleanup
  br label %345

255:                                              ; preds = %246, %245, %238
  %256 = load ptr, ptr %5, align 8, !tbaa !106
  %257 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %256)
          to label %258 unwind label %253

258:                                              ; preds = %255
  %259 = icmp eq i16 %257, 62
  br i1 %259, label %343, label %260

260:                                              ; preds = %258
  br i1 %237, label %264, label %261

261:                                              ; preds = %260
  %262 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %263 = load ptr, ptr %262, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %263, i32 noundef 207)
          to label %264 unwind label %253

264:                                              ; preds = %261, %260
  %265 = load ptr, ptr %5, align 8, !tbaa !106
  %266 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %265, i64 0, i32 2
  %267 = load ptr, ptr %266, align 8, !tbaa !122
  %268 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %267, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgNDATAStringE)
          to label %269 unwind label %253

269:                                              ; preds = %264
  br i1 %268, label %273, label %270

270:                                              ; preds = %269
  %271 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %272 = load ptr, ptr %271, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %272, i32 noundef 265)
          to label %273 unwind label %253

273:                                              ; preds = %270, %269
  %274 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %275 unwind label %253

275:                                              ; preds = %273
  br i1 %274, label %279, label %276

276:                                              ; preds = %275
  %277 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %278 = load ptr, ptr %277, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %278, i32 noundef 207)
          to label %279 unwind label %253

279:                                              ; preds = %276, %275
  %280 = load ptr, ptr %86, align 8, !tbaa !107
  %281 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %280)
          to label %282 unwind label %293

282:                                              ; preds = %279
  %283 = load ptr, ptr %5, align 8, !tbaa !106
  store i32 0, ptr %281, align 8, !tbaa !133
  %284 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %281, i64 0, i32 6
  %285 = load ptr, ptr %284, align 8, !tbaa !134
  store i16 0, ptr %285, align 2, !tbaa !135
  %286 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %283, i64 0, i32 2
  %287 = load ptr, ptr %286, align 8, !tbaa !122
  %288 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %287, ptr noundef nonnull align 8 dereferenceable(40) %281, i1 noundef zeroext false)
          to label %289 unwind label %295

289:                                              ; preds = %282
  br i1 %288, label %300, label %290

290:                                              ; preds = %289
  %291 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %292 = load ptr, ptr %291, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %292, i32 noundef 175)
          to label %339 unwind label %295

293:                                              ; preds = %279
  %294 = landingpad { ptr, i32 }
          cleanup
  br label %345

295:                                              ; preds = %330, %308, %282, %290
  %296 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %280, ptr noundef nonnull align 8 dereferenceable(40) %281)
          to label %345 unwind label %297

297:                                              ; preds = %295
  %298 = landingpad { ptr, i32 }
          catch ptr null
  %299 = extractvalue { ptr, i32 } %298, 0
  call void @__clang_call_terminate(ptr %299) #14
  unreachable

300:                                              ; preds = %289
  %301 = load ptr, ptr %284, align 8, !tbaa !134
  %302 = load i32, ptr %281, align 8, !tbaa !133
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds i16, ptr %301, i64 %303
  store i16 0, ptr %304, align 2, !tbaa !135
  %305 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 5
  %306 = load ptr, ptr %305, align 8, !tbaa !193
  %307 = icmp eq ptr %306, null
  br i1 %307, label %313, label %308

308:                                              ; preds = %300
  %309 = load ptr, ptr %128, align 8, !tbaa !217
  %310 = load ptr, ptr %309, align 8, !tbaa !52
  %311 = getelementptr inbounds ptr, ptr %310, i64 3
  %312 = load ptr, ptr %311, align 8
  invoke void %312(ptr noundef nonnull align 8 dereferenceable(8) %309, ptr noundef nonnull %306)
          to label %313 unwind label %295

313:                                              ; preds = %308, %300
  %314 = load ptr, ptr %128, align 8, !tbaa !217
  %315 = icmp eq ptr %301, null
  br i1 %315, label %337, label %316

316:                                              ; preds = %313
  %317 = load i16, ptr %301, align 2, !tbaa !135
  %318 = icmp eq i16 %317, 0
  br i1 %318, label %330, label %319

319:                                              ; preds = %316, %319
  %320 = phi ptr [ %321, %319 ], [ %301, %316 ]
  %321 = getelementptr inbounds i16, ptr %320, i64 1
  %322 = load i16, ptr %321, align 2, !tbaa !135
  %323 = icmp eq i16 %322, 0
  br i1 %323, label %324, label %319, !llvm.loop !176

324:                                              ; preds = %319
  %325 = ptrtoint ptr %321 to i64
  %326 = ptrtoint ptr %301 to i64
  %327 = sub i64 %325, %326
  %328 = add i64 %327, 2
  %329 = and i64 %328, 8589934590
  br label %330

330:                                              ; preds = %324, %316
  %331 = phi i64 [ %329, %324 ], [ 2, %316 ]
  %332 = load ptr, ptr %314, align 8, !tbaa !52
  %333 = getelementptr inbounds ptr, ptr %332, i64 2
  %334 = load ptr, ptr %333, align 8
  %335 = invoke noundef ptr %334(ptr noundef nonnull align 8 dereferenceable(8) %314, i64 noundef %331)
          to label %336 unwind label %295

336:                                              ; preds = %330
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %335, ptr nonnull align 2 %301, i64 %331, i1 false)
  br label %337

337:                                              ; preds = %313, %336
  %338 = phi ptr [ %335, %336 ], [ null, %313 ]
  store ptr %338, ptr %305, align 8, !tbaa !193
  br label %339

339:                                              ; preds = %337, %290
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %280, ptr noundef nonnull align 8 dereferenceable(40) %281)
          to label %343 unwind label %340

340:                                              ; preds = %339
  %341 = landingpad { ptr, i32 }
          catch ptr null
  %342 = extractvalue { ptr, i32 } %341, 0
  call void @__clang_call_terminate(ptr %342) #14
  unreachable

343:                                              ; preds = %339, %258, %239
  %344 = phi i1 [ true, %239 ], [ true, %258 ], [ %288, %339 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  br label %347

345:                                              ; preds = %293, %295, %251, %253, %249
  %346 = phi { ptr, i32 } [ %250, %249 ], [ %252, %251 ], [ %254, %253 ], [ %294, %293 ], [ %296, %295 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  br label %356

347:                                              ; preds = %93, %343
  %348 = phi i1 [ %344, %343 ], [ false, %93 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %89, ptr noundef nonnull align 8 dereferenceable(40) %90)
          to label %352 unwind label %349

349:                                              ; preds = %347
  %350 = landingpad { ptr, i32 }
          catch ptr null
  %351 = extractvalue { ptr, i32 } %350, 0
  call void @__clang_call_terminate(ptr %351) #14
  unreachable

352:                                              ; preds = %347
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %87, ptr noundef nonnull align 8 dereferenceable(40) %88)
          to label %366 unwind label %353

353:                                              ; preds = %352
  %354 = landingpad { ptr, i32 }
          catch ptr null
  %355 = extractvalue { ptr, i32 } %354, 0
  call void @__clang_call_terminate(ptr %355) #14
  unreachable

356:                                              ; preds = %345, %96
  %357 = phi { ptr, i32 } [ %346, %345 ], [ %97, %96 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %89, ptr noundef nonnull align 8 dereferenceable(40) %90)
          to label %361 unwind label %358

358:                                              ; preds = %356
  %359 = landingpad { ptr, i32 }
          catch ptr null
  %360 = extractvalue { ptr, i32 } %359, 0
  call void @__clang_call_terminate(ptr %360) #14
  unreachable

361:                                              ; preds = %356, %94
  %362 = phi { ptr, i32 } [ %95, %94 ], [ %357, %356 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %87, ptr noundef nonnull align 8 dereferenceable(40) %88)
          to label %368 unwind label %363

363:                                              ; preds = %361
  %364 = landingpad { ptr, i32 }
          catch ptr null
  %365 = extractvalue { ptr, i32 } %364, 0
  call void @__clang_call_terminate(ptr %365) #14
  unreachable

366:                                              ; preds = %352, %81
  %367 = phi i1 [ %17, %81 ], [ %348, %352 ]
  ret i1 %367

368:                                              ; preds = %361, %19
  %369 = phi { ptr, i32 } [ %20, %19 ], [ %362, %361 ]
  resume { ptr, i32 } %369
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner17scanEntityLiteralERNS_9XMLBufferE(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca [9 x i16], align 16
  store i32 0, ptr %1, align 8, !tbaa !133
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  store i16 0, ptr %8, align 2, !tbaa !135
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 2 dereferenceable(2) %3)
  br i1 %11, label %12, label %194

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !107
  %15 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %14)
  %16 = load ptr, ptr %9, align 8, !tbaa !106
  %17 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !122
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %18, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i16 0, ptr %5, align 2, !tbaa !135
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 1
  br label %22

22:                                               ; preds = %170, %12
  %23 = phi i8 [ 0, %12 ], [ %171, %170 ]
  %24 = load i16, ptr %4, align 2, !tbaa !135
  br label %25

25:                                               ; preds = %22, %59
  %26 = phi i16 [ %24, %22 ], [ %28, %59 ]
  %27 = load ptr, ptr %9, align 8, !tbaa !106
  %28 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %27)
          to label %29 unwind label %39

29:                                               ; preds = %25
  %30 = icmp eq i16 %28, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %29
  store i16 %28, ptr %4, align 2, !tbaa !135
  %32 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %33 = load ptr, ptr %32, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %33, i32 noundef 244)
          to label %34 unwind label %44

34:                                               ; preds = %31
  %35 = call ptr @__cxa_allocate_exception(i64 48) #13
  %36 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull @.str, i32 noundef 2102, i32 noundef 47, ptr noundef %37)
          to label %38 unwind label %46

38:                                               ; preds = %34
  invoke void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %196 unwind label %44

39:                                               ; preds = %59, %25
  %40 = phi i16 [ %28, %59 ], [ %26, %25 ]
  %41 = landingpad { ptr, i32 }
          cleanup
  store i16 %40, ptr %4, align 2, !tbaa !135
  br label %188

42:                                               ; preds = %117, %175, %161, %81, %68, %110, %96, %92, %82, %65, %61
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %188

44:                                               ; preds = %31, %38
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %188

46:                                               ; preds = %34
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %35) #13
  br label %188

48:                                               ; preds = %29
  %49 = load i16, ptr %3, align 2, !tbaa !135
  %50 = icmp eq i16 %28, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load ptr, ptr %9, align 8, !tbaa !106
  %53 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !122
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %54, i64 0, i32 15
  %56 = load i32, ptr %55, align 8, !tbaa !123
  %57 = icmp eq i32 %56, %20
  br i1 %57, label %182, label %58

58:                                               ; preds = %51, %48
  switch i16 %28, label %104 [
    i16 37, label %59
    i16 38, label %61
  ]

59:                                               ; preds = %58
  %60 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner11expandPERefEbbbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %25 unwind label %39, !llvm.loop !220

61:                                               ; preds = %58
  store i16 %28, ptr %4, align 2, !tbaa !135
  %62 = load ptr, ptr %9, align 8, !tbaa !106
  %63 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %62, i16 noundef zeroext 35)
          to label %64 unwind label %42

64:                                               ; preds = %61
  br i1 %63, label %65, label %68

65:                                               ; preds = %64
  %66 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 2 dereferenceable(2) %5)
          to label %67 unwind label %42

67:                                               ; preds = %65
  br i1 %66, label %155, label %170

68:                                               ; preds = %64
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %15, i64 0, i32 6
  %70 = load ptr, ptr %9, align 8, !tbaa !106
  store i32 0, ptr %15, align 8, !tbaa !133
  %71 = load ptr, ptr %69, align 8, !tbaa !134
  store i16 0, ptr %71, align 2, !tbaa !135
  %72 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %70, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !122
  %74 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %73, ptr noundef nonnull align 8 dereferenceable(40) %15, i1 noundef zeroext false)
          to label %75 unwind label %42

75:                                               ; preds = %68
  br i1 %74, label %76, label %117

76:                                               ; preds = %75
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 1
  %78 = load i32, ptr %1, align 8, !tbaa !133
  %79 = load i32, ptr %77, align 4, !tbaa !162
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
          to label %82 unwind label %42

82:                                               ; preds = %81, %76
  %83 = load ptr, ptr %7, align 8, !tbaa !134
  %84 = load i32, ptr %1, align 8, !tbaa !133
  %85 = add i32 %84, 1
  store i32 %85, ptr %1, align 8, !tbaa !133
  %86 = zext i32 %84 to i64
  %87 = getelementptr inbounds i16, ptr %83, i64 %86
  store i16 38, ptr %87, align 2, !tbaa !135
  %88 = load ptr, ptr %69, align 8, !tbaa !134
  %89 = load i32, ptr %15, align 8, !tbaa !133
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i16, ptr %88, i64 %90
  store i16 0, ptr %91, align 2, !tbaa !135
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %88)
          to label %92 unwind label %42

92:                                               ; preds = %82
  %93 = load ptr, ptr %9, align 8, !tbaa !106
  %94 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %93, i16 noundef zeroext 59)
          to label %95 unwind label %42

95:                                               ; preds = %92
  br i1 %94, label %103, label %96

96:                                               ; preds = %95
  %97 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %98 = load ptr, ptr %97, align 8, !tbaa !105
  %99 = load ptr, ptr %69, align 8, !tbaa !134
  %100 = load i32, ptr %15, align 8, !tbaa !133
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i16, ptr %99, i64 %101
  store i16 0, ptr %102, align 2, !tbaa !135
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %98, i32 noundef 229, ptr noundef %99, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %103 unwind label %42

103:                                              ; preds = %96, %95
  store i16 59, ptr %4, align 2, !tbaa !135
  br label %155

104:                                              ; preds = %58
  store i16 %28, ptr %4, align 2, !tbaa !135
  %105 = and i16 %28, -1024
  %106 = icmp eq i16 %105, -10240
  %107 = and i8 %23, 1
  %108 = icmp eq i8 %107, 0
  br i1 %106, label %109, label %113

109:                                              ; preds = %104
  br i1 %108, label %155, label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %112 = load ptr, ptr %111, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %112, i32 noundef 249)
          to label %155 unwind label %42

113:                                              ; preds = %104
  br i1 %108, label %121, label %114

114:                                              ; preds = %113
  %115 = add i16 %28, 8192
  %116 = icmp ult i16 %115, -1024
  br i1 %116, label %117, label %155

117:                                              ; preds = %114, %75
  %118 = phi i32 [ 226, %75 ], [ 249, %114 ]
  %119 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %120 = load ptr, ptr %119, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %120, i32 noundef %118)
          to label %155 unwind label %42

121:                                              ; preds = %113
  %122 = load ptr, ptr %9, align 8, !tbaa !106
  %123 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %122, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !122
  %125 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %124, i64 0, i32 28
  %126 = load ptr, ptr %125, align 8, !tbaa !155
  %127 = zext i16 %28 to i64
  %128 = getelementptr inbounds i8, ptr %126, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !156
  %130 = and i8 %129, 64
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %155

132:                                              ; preds = %121
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %6) #13
  %133 = zext i16 %28 to i32
  %134 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %133, ptr noundef nonnull %6, i32 noundef 8, i32 noundef 16, ptr noundef %135)
          to label %136 unwind label %151

136:                                              ; preds = %132
  %137 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %138 = load ptr, ptr %137, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %138, i32 noundef 196, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %139 unwind label %151

139:                                              ; preds = %136
  %140 = load ptr, ptr %9, align 8, !tbaa !106
  %141 = load i16, ptr %3, align 2, !tbaa !135
  br label %142

142:                                              ; preds = %144, %139
  %143 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %140)
          to label %144 unwind label %149

144:                                              ; preds = %142
  %145 = icmp ne i16 %143, %141
  %146 = icmp ne i16 %143, 0
  %147 = and i1 %145, %146
  br i1 %147, label %142, label %148, !llvm.loop !221

148:                                              ; preds = %144
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %6) #13
  br label %183

149:                                              ; preds = %142
  %150 = landingpad { ptr, i32 }
          cleanup
  br label %153

151:                                              ; preds = %132, %136
  %152 = landingpad { ptr, i32 }
          cleanup
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi { ptr, i32 } [ %150, %149 ], [ %152, %151 ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %6) #13
  br label %188

155:                                              ; preds = %117, %110, %114, %121, %109, %103, %67
  %156 = phi i8 [ %23, %67 ], [ 0, %103 ], [ 1, %109 ], [ 0, %121 ], [ 0, %114 ], [ %23, %110 ], [ 0, %117 ]
  %157 = load i16, ptr %4, align 2, !tbaa !135
  %158 = load i32, ptr %1, align 8, !tbaa !133
  %159 = load i32, ptr %21, align 4, !tbaa !162
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
          to label %162 unwind label %42

162:                                              ; preds = %161, %155
  %163 = load ptr, ptr %7, align 8, !tbaa !134
  %164 = load i32, ptr %1, align 8, !tbaa !133
  %165 = add i32 %164, 1
  store i32 %165, ptr %1, align 8, !tbaa !133
  %166 = zext i32 %164 to i64
  %167 = getelementptr inbounds i16, ptr %163, i64 %166
  store i16 %157, ptr %167, align 2, !tbaa !135
  %168 = load i16, ptr %5, align 2, !tbaa !135
  %169 = icmp eq i16 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %162, %176, %67
  %171 = phi i8 [ 0, %67 ], [ %156, %176 ], [ %156, %162 ]
  br label %22, !llvm.loop !220

172:                                              ; preds = %162
  %173 = load i32, ptr %21, align 4, !tbaa !162
  %174 = icmp eq i32 %165, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
          to label %176 unwind label %42

176:                                              ; preds = %175, %172
  %177 = load ptr, ptr %7, align 8, !tbaa !134
  %178 = load i32, ptr %1, align 8, !tbaa !133
  %179 = add i32 %178, 1
  store i32 %179, ptr %1, align 8, !tbaa !133
  %180 = zext i32 %178 to i64
  %181 = getelementptr inbounds i16, ptr %177, i64 %180
  store i16 %168, ptr %181, align 2, !tbaa !135
  store i16 0, ptr %5, align 2, !tbaa !135
  br label %170

182:                                              ; preds = %51
  store i16 %28, ptr %4, align 2, !tbaa !135
  br label %183

183:                                              ; preds = %182, %148
  %184 = phi i1 [ false, %148 ], [ true, %182 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(40) %15)
          to label %194 unwind label %185

185:                                              ; preds = %183
  %186 = landingpad { ptr, i32 }
          catch ptr null
  %187 = extractvalue { ptr, i32 } %186, 0
  call void @__clang_call_terminate(ptr %187) #14
  unreachable

188:                                              ; preds = %44, %42, %39, %153, %46
  %189 = phi { ptr, i32 } [ %154, %153 ], [ %47, %46 ], [ %45, %44 ], [ %41, %39 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(40) %15)
          to label %193 unwind label %190

190:                                              ; preds = %188
  %191 = landingpad { ptr, i32 }
          catch ptr null
  %192 = extractvalue { ptr, i32 } %191, 0
  call void @__clang_call_terminate(ptr %192) #14
  unreachable

193:                                              ; preds = %188
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  resume { ptr, i32 } %189

194:                                              ; preds = %183, %2
  %195 = phi i1 [ false, %2 ], [ %184, %183 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  ret i1 %195

196:                                              ; preds = %38
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #11 comdat align 2 !prof !222 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !223

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !135
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !224

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !135
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !225, !llvm.loop !226

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !133
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !162
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !227

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !134
  %24 = load i32, ptr %0, align 8, !tbaa !133
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !228
  %28 = load i32, ptr %0, align 8, !tbaa !133
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !133
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner6scanIdERNS_9XMLBufferES2_NS0_7IDTypesE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %3) local_unnamed_addr #3 align 2 !prof !49 {
  store i32 0, ptr %1, align 8, !tbaa !133
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !134
  store i16 0, ptr %6, align 2, !tbaa !135
  store i32 0, ptr %2, align 8, !tbaa !133
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  store i16 0, ptr %8, align 2, !tbaa !135
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !122
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %12, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgSysIDStringE)
  br i1 %13, label %14, label %27

14:                                               ; preds = %4
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %18, i32 noundef 210)
  br label %70

19:                                               ; preds = %14
  %20 = load ptr, ptr %9, align 8, !tbaa !106
  %21 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %20, i1 noundef zeroext false)
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %24, i32 noundef 207)
  br label %70

25:                                               ; preds = %19
  %26 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner17scanSystemLiteralERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %70

27:                                               ; preds = %4
  %28 = load ptr, ptr %9, align 8, !tbaa !106
  %29 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !122
  %31 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %30, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgPubIDStringE)
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %34, i32 noundef 237)
  br label %70

35:                                               ; preds = %27
  %36 = load ptr, ptr %9, align 8, !tbaa !106
  %37 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %36, i1 noundef zeroext false)
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %40, i32 noundef 207)
  %41 = load ptr, ptr %9, align 8, !tbaa !106
  %42 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %41)
  switch i16 %42, label %70 [
    i16 39, label %43
    i16 34, label %43
  ]

43:                                               ; preds = %38, %38, %35
  %44 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner17scanPublicLiteralERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %44, label %45, label %70

45:                                               ; preds = %43
  %46 = icmp eq i32 %3, 0
  br i1 %46, label %70, label %47

47:                                               ; preds = %45
  %48 = load ptr, ptr %9, align 8, !tbaa !106
  %49 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %48, i1 noundef zeroext false)
  %50 = load ptr, ptr %9, align 8, !tbaa !106
  %51 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %50)
  br i1 %49, label %61, label %52

52:                                               ; preds = %47
  %53 = icmp eq i32 %3, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %56 = load ptr, ptr %55, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %56, i32 noundef 207)
  switch i16 %51, label %70 [
    i16 39, label %62
    i16 34, label %62
  ]

57:                                               ; preds = %52
  switch i16 %51, label %70 [
    i16 39, label %58
    i16 34, label %58
  ]

58:                                               ; preds = %57, %57
  %59 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %60 = load ptr, ptr %59, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %60, i32 noundef 207)
  br label %61

61:                                               ; preds = %58, %47
  switch i16 %51, label %64 [
    i16 39, label %62
    i16 34, label %62
  ]

62:                                               ; preds = %61, %54, %54, %61
  %63 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner17scanSystemLiteralERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br i1 %63, label %69, label %70

64:                                               ; preds = %61
  %65 = icmp eq i32 %3, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %68 = load ptr, ptr %67, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %68, i32 noundef 209)
  br label %69

69:                                               ; preds = %64, %66, %62
  br label %70

70:                                               ; preds = %54, %38, %69, %57, %62, %45, %43, %32, %25, %22, %16
  %71 = phi i1 [ false, %16 ], [ %26, %25 ], [ false, %22 ], [ false, %32 ], [ false, %43 ], [ true, %45 ], [ true, %69 ], [ true, %57 ], [ false, %62 ], [ false, %38 ], [ false, %54 ]
  ret i1 %71
}

declare void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #11 comdat align 2 !prof !229 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %22, label %5, !prof !230

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !133
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !162
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %12, label %11, !prof !231

11:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2)
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !134
  %15 = load i32, ptr %0, align 8, !tbaa !133
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i16, ptr %14, i64 %16
  %18 = zext i32 %2 to i64
  %19 = shl nuw nsw i64 %18, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %17, ptr align 2 %1, i64 %19, i1 false), !prof !232
  %20 = load i32, ptr %0, align 8, !tbaa !133
  %21 = add i32 %20, %2
  store i32 %21, ptr %0, align 8, !tbaa !133
  br label %23

22:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1)
  br label %23

23:                                               ; preds = %22, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner6scanEqEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0) local_unnamed_addr #3 align 2 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext false)
  %5 = load ptr, ptr %2, align 8, !tbaa !106
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %5, i16 noundef zeroext 61)
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !106
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %8, i1 noundef zeroext false)
  br label %10

10:                                               ; preds = %1, %7
  ret i1 %6
}

declare noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr27isScanningPERefOutOfLiteralEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner14scanMarkupDeclEb(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 !prof !49 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
  switch i16 %5, label %147 [
    i16 33, label %6
    i16 63, label %135
  ]

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !106
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %7, i16 noundef zeroext 45)
  %9 = load ptr, ptr %3, align 8, !tbaa !106
  br i1 %8, label %10, label %19

10:                                               ; preds = %6
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %9, i16 noundef zeroext 45)
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_710DTDScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %153

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %15, i32 noundef 185)
  %16 = load ptr, ptr %3, align 8, !tbaa !106
  br label %17

17:                                               ; preds = %17, %13
  %18 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %16)
  switch i16 %18, label %17 [
    i16 62, label %153
    i16 0, label %153
  ]

19:                                               ; preds = %6
  %20 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %9, i16 noundef zeroext 91)
  br i1 %20, label %21, label %105

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 7
  %23 = load i8, ptr %22, align 8, !tbaa !132, !range !63, !noundef !64
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %27, i32 noundef 221)
  %28 = load ptr, ptr %3, align 8, !tbaa !106
  br label %29

29:                                               ; preds = %29, %25
  %30 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %28)
  switch i16 %30, label %29 [
    i16 62, label %153
    i16 0, label %153
  ]

31:                                               ; preds = %21
  %32 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  %33 = load ptr, ptr %3, align 8, !tbaa !106
  %34 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !122
  %36 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %35, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgIncludeStringE)
  br i1 %36, label %37, label %66

37:                                               ; preds = %31
  %38 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  %39 = load ptr, ptr %3, align 8, !tbaa !106
  %40 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %39, i16 noundef zeroext 91)
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %43 = load ptr, ptr %42, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %43, i32 noundef 252)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load ptr, ptr %3, align 8, !tbaa !106
  %46 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !122
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %47, i64 0, i32 15
  %49 = load i32, ptr %48, align 8, !tbaa !123
  %50 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  tail call void @_ZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext true, i1 noundef zeroext false)
  %51 = load ptr, ptr %3, align 8, !tbaa !106
  %52 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !122
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %53, i64 0, i32 15
  %55 = load i32, ptr %54, align 8, !tbaa !123
  %56 = icmp eq i32 %55, %49
  br i1 %56, label %153, label %57

57:                                               ; preds = %44
  %58 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %59 = load ptr, ptr %58, align 8, !tbaa !105
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %59, i64 0, i32 10
  %61 = load i8, ptr %60, align 8, !tbaa !140, !range !63, !noundef !64
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %153, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %59, i64 0, i32 50
  %65 = load ptr, ptr %64, align 8, !tbaa !141
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %65, i32 noundef 86)
  br label %153

66:                                               ; preds = %31
  %67 = load ptr, ptr %3, align 8, !tbaa !106
  %68 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !122
  %70 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %69, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgIgnoreStringE)
  br i1 %70, label %71, label %99

71:                                               ; preds = %66
  %72 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  %73 = load ptr, ptr %3, align 8, !tbaa !106
  %74 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %73, i16 noundef zeroext 91)
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %77 = load ptr, ptr %76, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %77, i32 noundef 252)
  br label %78

78:                                               ; preds = %75, %71
  %79 = load ptr, ptr %3, align 8, !tbaa !106
  %80 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !122
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %81, i64 0, i32 15
  %83 = load i32, ptr %82, align 8, !tbaa !123
  tail call void @_ZN11xercesc_2_710DTDScanner18scanIgnoredSectionEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %84 = load ptr, ptr %3, align 8, !tbaa !106
  %85 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !122
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %86, i64 0, i32 15
  %88 = load i32, ptr %87, align 8, !tbaa !123
  %89 = icmp eq i32 %88, %83
  br i1 %89, label %153, label %90

90:                                               ; preds = %78
  %91 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %92 = load ptr, ptr %91, align 8, !tbaa !105
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %92, i64 0, i32 10
  %94 = load i8, ptr %93, align 8, !tbaa !140, !range !63, !noundef !64
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %153, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %92, i64 0, i32 50
  %98 = load ptr, ptr %97, align 8, !tbaa !141
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %98, i32 noundef 86)
  br label %153

99:                                               ; preds = %66
  %100 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %101 = load ptr, ptr %100, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %101, i32 noundef 251)
  %102 = load ptr, ptr %3, align 8, !tbaa !106
  br label %103

103:                                              ; preds = %103, %99
  %104 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %102)
  switch i16 %104, label %103 [
    i16 62, label %153
    i16 0, label %153
  ]

105:                                              ; preds = %19
  %106 = load ptr, ptr %3, align 8, !tbaa !106
  %107 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !122
  %109 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %108, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgAttListStringE)
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  tail call void @_ZN11xercesc_2_710DTDScanner15scanAttListDeclEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %153

111:                                              ; preds = %105
  %112 = load ptr, ptr %3, align 8, !tbaa !106
  %113 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %112, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !122
  %115 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %114, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgElemStringE)
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  tail call void @_ZN11xercesc_2_710DTDScanner15scanElementDeclEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %153

117:                                              ; preds = %111
  %118 = load ptr, ptr %3, align 8, !tbaa !106
  %119 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %118, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !122
  %121 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %120, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgEntityStringE)
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  tail call void @_ZN11xercesc_2_710DTDScanner14scanEntityDeclEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %153

123:                                              ; preds = %117
  %124 = load ptr, ptr %3, align 8, !tbaa !106
  %125 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %124, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !122
  %127 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %126, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgNotationStringE)
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  tail call void @_ZN11xercesc_2_710DTDScanner16scanNotationDeclEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %153

129:                                              ; preds = %123
  %130 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %131 = load ptr, ptr %130, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %131, i32 noundef 219)
  %132 = load ptr, ptr %3, align 8, !tbaa !106
  br label %133

133:                                              ; preds = %133, %129
  %134 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %132)
  switch i16 %134, label %133 [
    i16 62, label %153
    i16 0, label %153
  ]

135:                                              ; preds = %2
  %136 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %137 = load ptr, ptr %136, align 8, !tbaa !105
  %138 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %137, i1 noundef zeroext false)
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  br i1 %1, label %140, label %141

140:                                              ; preds = %139
  tail call void @_ZN11xercesc_2_710DTDScanner12scanTextDeclEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %153

141:                                              ; preds = %139
  %142 = load ptr, ptr %136, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %142, i32 noundef 220)
  %143 = load ptr, ptr %3, align 8, !tbaa !106
  br label %144

144:                                              ; preds = %144, %141
  %145 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %143)
  switch i16 %145, label %144 [
    i16 62, label %153
    i16 0, label %153
  ]

146:                                              ; preds = %135
  tail call void @_ZN11xercesc_2_710DTDScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %153

147:                                              ; preds = %2
  %148 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %149 = load ptr, ptr %148, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %149, i32 noundef 219)
  %150 = load ptr, ptr %3, align 8, !tbaa !106
  br label %151

151:                                              ; preds = %151, %147
  %152 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %150)
  switch i16 %152, label %151 [
    i16 62, label %153
    i16 0, label %153
  ]

153:                                              ; preds = %144, %144, %133, %133, %29, %29, %103, %103, %17, %17, %151, %151, %116, %128, %122, %110, %12, %146, %140, %63, %57, %44, %96, %90, %78
  ret void
}

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner17scanSystemLiteralERNS_9XMLBufferE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %3 = alloca i16, align 2
  store i32 0, ptr %1, align 8, !tbaa !133
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  store i16 0, ptr %5, align 2, !tbaa !135
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 2 dereferenceable(2) %3)
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 1
  br label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %13, i32 noundef 209)
  br label %39

14:                                               ; preds = %9, %33
  %15 = load ptr, ptr %6, align 8, !tbaa !106
  %16 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %15)
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = call ptr @__cxa_allocate_exception(i64 48) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull @.str, i32 noundef 3724, i32 noundef 47, ptr noundef %21)
          to label %22 unwind label %23

22:                                               ; preds = %18
  call void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %19) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  resume { ptr, i32 } %24

25:                                               ; preds = %14
  %26 = load i16, ptr %3, align 2, !tbaa !135
  %27 = icmp eq i16 %16, %26
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %1, align 8, !tbaa !133
  %30 = load i32, ptr %10, align 4, !tbaa !162
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
  br label %33

33:                                               ; preds = %28, %32
  %34 = load ptr, ptr %4, align 8, !tbaa !134
  %35 = load i32, ptr %1, align 8, !tbaa !133
  %36 = add i32 %35, 1
  store i32 %36, ptr %1, align 8, !tbaa !133
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds i16, ptr %34, i64 %37
  store i16 %16, ptr %38, align 2, !tbaa !135
  br i1 %27, label %39, label %14

39:                                               ; preds = %25, %33, %11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  ret i1 %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner17scanPublicLiteralERNS_9XMLBufferE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %3 = alloca i16, align 2
  %4 = alloca [9 x i16], align 16
  store i32 0, ptr %1, align 8, !tbaa !133
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !134
  store i16 0, ptr %6, align 2, !tbaa !135
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 2 dereferenceable(2) %3)
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 1
  br label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !105
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %16, i32 noundef 209)
  br label %51

17:                                               ; preds = %10, %45
  %18 = load ptr, ptr %7, align 8, !tbaa !106
  %19 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %18)
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = call ptr @__cxa_allocate_exception(i64 48) #13
  %23 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull @.str, i32 noundef 3673, i32 noundef 47, ptr noundef %24)
          to label %25 unwind label %26

25:                                               ; preds = %21
  call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

26:                                               ; preds = %21
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %22) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  resume { ptr, i32 } %27

28:                                               ; preds = %17
  %29 = zext i16 %19 to i32
  %30 = load i16, ptr %3, align 2, !tbaa !135
  %31 = icmp eq i16 %19, %30
  br i1 %31, label %51, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %7, align 8, !tbaa !106
  %34 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !122
  %36 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader14isPublicIdCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %35, i16 noundef zeroext %19)
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %4) #13
  %38 = load ptr, ptr %11, align 8, !tbaa !77
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %29, ptr noundef nonnull %4, i32 noundef 8, i32 noundef 16, ptr noundef %38)
  %39 = load ptr, ptr %12, align 8, !tbaa !105
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %39, i32 noundef 211, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %4) #13
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, ptr %1, align 8, !tbaa !133
  %42 = load i32, ptr %13, align 4, !tbaa !162
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
  br label %45

45:                                               ; preds = %40, %44
  %46 = load ptr, ptr %5, align 8, !tbaa !134
  %47 = load i32, ptr %1, align 8, !tbaa !133
  %48 = add i32 %47, 1
  store i32 %48, ptr %1, align 8, !tbaa !133
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds i16, ptr %46, i64 %49
  store i16 %19, ptr %50, align 2, !tbaa !135
  br i1 %31, label %51, label %17

51:                                               ; preds = %28, %45, %14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  ret i1 %9
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner18scanIgnoredSectionEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = alloca [9 x i16], align 16
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  br label %9

9:                                                ; preds = %72, %1
  %10 = phi i8 [ 0, %1 ], [ %73, %72 ]
  %11 = phi i64 [ 1, %1 ], [ %74, %72 ]
  %12 = load ptr, ptr %3, align 8, !tbaa !106
  %13 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %12)
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = call ptr @__cxa_allocate_exception(i64 48) #13
  %17 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull @.str, i32 noundef 2801, i32 noundef 47, ptr noundef %18)
          to label %19 unwind label %20

19:                                               ; preds = %15
  call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %16) #13
  resume { ptr, i32 } %21

22:                                               ; preds = %9
  %23 = zext i16 %13 to i32
  switch i16 %13, label %45 [
    i16 60, label %24
    i16 93, label %32
  ]

24:                                               ; preds = %22
  %25 = load ptr, ptr %3, align 8, !tbaa !106
  %26 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %25, i16 noundef zeroext 33)
  br i1 %26, label %27, label %72

27:                                               ; preds = %24
  %28 = load ptr, ptr %3, align 8, !tbaa !106
  %29 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %28, i16 noundef zeroext 91)
  %30 = zext i1 %29 to i64
  %31 = add i64 %11, %30
  br label %72

32:                                               ; preds = %22
  %33 = load ptr, ptr %3, align 8, !tbaa !106
  %34 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %33, i16 noundef zeroext 93)
  br i1 %34, label %35, label %72

35:                                               ; preds = %32, %35
  %36 = load ptr, ptr %3, align 8, !tbaa !106
  %37 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %36, i16 noundef zeroext 93)
  br i1 %37, label %35, label %38, !llvm.loop !233

38:                                               ; preds = %35
  %39 = load ptr, ptr %3, align 8, !tbaa !106
  %40 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %39, i16 noundef zeroext 62)
  br i1 %40, label %41, label %72

41:                                               ; preds = %38
  %42 = add i64 %11, -1
  %43 = icmp eq i64 %42, 0
  %44 = select i1 %43, i32 3, i32 0
  br label %72

45:                                               ; preds = %22
  %46 = and i16 %13, -1024
  %47 = and i8 %10, 1
  %48 = icmp eq i8 %47, 0
  switch i16 %46, label %55 [
    i16 -10240, label %49
    i16 -9216, label %52
  ]

49:                                               ; preds = %45
  br i1 %48, label %72, label %50

50:                                               ; preds = %49
  %51 = load ptr, ptr %5, align 8, !tbaa !105
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %51, i32 noundef 249)
  br label %72

52:                                               ; preds = %45
  br i1 %48, label %53, label %72

53:                                               ; preds = %52
  %54 = load ptr, ptr %4, align 8, !tbaa !105
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %54, i32 noundef 282)
  br label %72

55:                                               ; preds = %45
  br i1 %48, label %58, label %56

56:                                               ; preds = %55
  %57 = load ptr, ptr %6, align 8, !tbaa !105
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %57, i32 noundef 249)
  br label %72

58:                                               ; preds = %55
  %59 = load ptr, ptr %3, align 8, !tbaa !106
  %60 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !122
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %61, i64 0, i32 28
  %63 = load ptr, ptr %62, align 8, !tbaa !155
  %64 = zext i16 %13 to i64
  %65 = getelementptr inbounds i8, ptr %63, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !156
  %67 = and i8 %66, 64
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %2) #13
  %70 = load ptr, ptr %7, align 8, !tbaa !77
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %23, ptr noundef nonnull %2, i32 noundef 8, i32 noundef 16, ptr noundef %70)
  %71 = load ptr, ptr %8, align 8, !tbaa !105
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %71, i32 noundef 196, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #13
  br label %72

72:                                               ; preds = %41, %27, %24, %50, %32, %38, %49, %56, %69, %58, %52, %53
  %73 = phi i8 [ %10, %24 ], [ %10, %38 ], [ %10, %32 ], [ %10, %50 ], [ %10, %27 ], [ 1, %49 ], [ 0, %56 ], [ 0, %69 ], [ 0, %58 ], [ 0, %52 ], [ 0, %53 ], [ %10, %41 ]
  %74 = phi i64 [ %11, %24 ], [ %11, %38 ], [ %11, %32 ], [ %11, %50 ], [ %31, %27 ], [ %11, %49 ], [ %11, %56 ], [ %11, %69 ], [ %11, %58 ], [ %11, %52 ], [ %11, %53 ], [ %42, %41 ]
  %75 = phi i32 [ 0, %24 ], [ 0, %38 ], [ 0, %32 ], [ 0, %50 ], [ 0, %27 ], [ 0, %49 ], [ 0, %56 ], [ 0, %69 ], [ 0, %58 ], [ 0, %52 ], [ 0, %53 ], [ %44, %41 ]
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %9, label %77

77:                                               ; preds = %72
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner18scanInternalSubsetEv(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = alloca [9 x i16], align 16
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !153, !range !63, !noundef !64
  store i8 1, ptr %3, align 8, !tbaa !153
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %6, align 8, !tbaa !52
  %10 = getelementptr inbounds ptr, ptr %9, i64 15
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %14 unwind label %12

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %141

14:                                               ; preds = %8, %1
  %15 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  %17 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %18 unwind label %28

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %20 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %21 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %22 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  br label %23

23:                                               ; preds = %18, %115
  %24 = phi i8 [ %116, %115 ], [ 1, %18 ]
  %25 = load ptr, ptr %19, align 8, !tbaa !106
  %26 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %25)
          to label %27 unwind label %30

27:                                               ; preds = %23
  switch i16 %26, label %72 [
    i16 0, label %115
    i16 93, label %32
    i16 37, label %35
    i16 60, label %40
  ]

28:                                               ; preds = %14
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %141

30:                                               ; preds = %96, %86, %85, %38, %35, %32, %23
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %136

32:                                               ; preds = %27
  %33 = load ptr, ptr %19, align 8, !tbaa !106
  %34 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %33)
          to label %115 unwind label %30

35:                                               ; preds = %27
  %36 = load ptr, ptr %19, align 8, !tbaa !106
  %37 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %36)
          to label %38 unwind label %30

38:                                               ; preds = %35
  %39 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner11expandPERefEbbbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %115 unwind label %30

40:                                               ; preds = %27
  %41 = load ptr, ptr %19, align 8, !tbaa !106
  %42 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !122
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %43, i64 0, i32 15
  %45 = load i32, ptr %44, align 8, !tbaa !123
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %43, i64 0, i32 27
  %47 = load i32, ptr %46, align 8, !tbaa !154
  %48 = icmp eq i32 %47, 0
  %49 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %41)
          to label %50 unwind label %62

50:                                               ; preds = %40
  invoke void @_ZN11xercesc_2_710DTDScanner14scanMarkupDeclEb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false)
          to label %51 unwind label %62

51:                                               ; preds = %50
  %52 = load ptr, ptr %19, align 8, !tbaa !106
  %53 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !122
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %54, i64 0, i32 15
  %56 = load i32, ptr %55, align 8, !tbaa !123
  %57 = icmp eq i32 %56, %45
  br i1 %57, label %115, label %58

58:                                               ; preds = %51
  br i1 %48, label %59, label %64

59:                                               ; preds = %58
  %60 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %61 = load ptr, ptr %60, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %61, i32 noundef 299)
          to label %115 unwind label %62

62:                                               ; preds = %69, %59, %50, %40
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %136

64:                                               ; preds = %58
  %65 = load ptr, ptr %20, align 8, !tbaa !105
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %65, i64 0, i32 10
  %67 = load i8, ptr %66, align 8, !tbaa !140, !range !63, !noundef !64
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %115, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %65, i64 0, i32 50
  %71 = load ptr, ptr %70, align 8, !tbaa !141
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %71, i32 noundef 86)
          to label %115 unwind label %62

72:                                               ; preds = %27
  %73 = load ptr, ptr %19, align 8, !tbaa !106
  %74 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !122
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %75, i64 0, i32 28
  %77 = load ptr, ptr %76, align 8, !tbaa !155
  %78 = zext i16 %26 to i64
  %79 = getelementptr inbounds i8, ptr %77, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !156
  %81 = icmp slt i8 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %72
  %83 = load ptr, ptr %5, align 8, !tbaa !80
  %84 = icmp eq ptr %83, null
  br i1 %84, label %96, label %85

85:                                               ; preds = %82
  invoke void @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %73, ptr noundef nonnull align 8 dereferenceable(40) %17)
          to label %86 unwind label %30

86:                                               ; preds = %85
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %17, i64 0, i32 6
  %88 = load ptr, ptr %5, align 8, !tbaa !80
  %89 = load ptr, ptr %87, align 8, !tbaa !134
  %90 = load i32, ptr %17, align 8, !tbaa !133
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i16, ptr %89, i64 %91
  store i16 0, ptr %92, align 2, !tbaa !135
  %93 = load ptr, ptr %88, align 8, !tbaa !52
  %94 = getelementptr inbounds ptr, ptr %93, i64 6
  %95 = load ptr, ptr %94, align 8
  invoke void %95(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef %89, i32 noundef %90)
          to label %115 unwind label %30

96:                                               ; preds = %82
  %97 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %73, i1 noundef zeroext false)
          to label %115 unwind label %30

98:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %2) #13
  %99 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %73)
          to label %100 unwind label %107

100:                                              ; preds = %98
  %101 = zext i16 %99 to i32
  %102 = load ptr, ptr %21, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %101, ptr noundef nonnull %2, i32 noundef 8, i32 noundef 16, ptr noundef %102)
          to label %103 unwind label %107

103:                                              ; preds = %100
  %104 = load ptr, ptr %22, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %104, i32 noundef 213, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %105 unwind label %107

105:                                              ; preds = %103
  %106 = icmp eq i16 %26, 62
  br i1 %106, label %112, label %109

107:                                              ; preds = %109, %103, %100, %98
  %108 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #13
  br label %136

109:                                              ; preds = %105
  %110 = load ptr, ptr %19, align 8, !tbaa !106
  %111 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %110, ptr noundef nonnull @_ZZN11xercesc_2_710DTDScanner18scanInternalSubsetEvE6toSkip)
          to label %112 unwind label %107

112:                                              ; preds = %109, %105
  %113 = phi i32 [ 3, %105 ], [ 0, %109 ]
  %114 = phi i8 [ 0, %105 ], [ %24, %109 ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #13
  br label %115

115:                                              ; preds = %96, %86, %59, %38, %32, %112, %69, %64, %51, %27
  %116 = phi i8 [ %24, %27 ], [ %24, %69 ], [ %24, %64 ], [ %24, %51 ], [ %114, %112 ], [ %24, %32 ], [ %24, %38 ], [ %24, %59 ], [ %24, %86 ], [ %24, %96 ]
  %117 = phi i32 [ 1, %27 ], [ 0, %69 ], [ 0, %64 ], [ 0, %51 ], [ %113, %112 ], [ 3, %32 ], [ 0, %38 ], [ 0, %59 ], [ 0, %86 ], [ 0, %96 ]
  switch i32 %117, label %130 [
    i32 0, label %23
    i32 3, label %118
  ], !llvm.loop !234

118:                                              ; preds = %115
  %119 = load ptr, ptr %5, align 8, !tbaa !80
  %120 = icmp eq ptr %119, null
  br i1 %120, label %127, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr %119, align 8, !tbaa !52
  %123 = getelementptr inbounds ptr, ptr %122, i64 9
  %124 = load ptr, ptr %123, align 8
  invoke void %124(ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %127 unwind label %125

125:                                              ; preds = %121
  %126 = landingpad { ptr, i32 }
          cleanup
  br label %136

127:                                              ; preds = %121, %118
  %128 = and i8 %116, 1
  %129 = icmp ne i8 %128, 0
  br label %130

130:                                              ; preds = %115, %127
  %131 = phi i1 [ %129, %127 ], [ false, %115 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(40) %17)
          to label %135 unwind label %132

132:                                              ; preds = %130
  %133 = landingpad { ptr, i32 }
          catch ptr null
  %134 = extractvalue { ptr, i32 } %133, 0
  call void @__clang_call_terminate(ptr %134) #14
  unreachable

135:                                              ; preds = %130
  store i8 %4, ptr %3, align 8, !tbaa !153
  ret i1 %131

136:                                              ; preds = %30, %107, %62, %125
  %137 = phi { ptr, i32 } [ %126, %125 ], [ %31, %30 ], [ %108, %107 ], [ %63, %62 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(40) %17)
          to label %141 unwind label %138

138:                                              ; preds = %136
  %139 = landingpad { ptr, i32 }
          catch ptr null
  %140 = extractvalue { ptr, i32 } %139, 0
  call void @__clang_call_terminate(ptr %140) #14
  unreachable

141:                                              ; preds = %12, %136, %28
  %142 = phi { ptr, i32 } [ %13, %12 ], [ %29, %28 ], [ %137, %136 ]
  store i8 %4, ptr %3, align 8, !tbaa !153
  resume { ptr, i32 } %142
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner16scanNotationDeclEv(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %3 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  br i1 %3, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %7, i32 noundef 207)
  %8 = load ptr, ptr %4, align 8, !tbaa !106
  br label %9

9:                                                ; preds = %9, %5
  %10 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
  switch i16 %10, label %9 [
    i16 62, label %193
    i16 0, label %193
  ]

11:                                               ; preds = %1
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !107
  %14 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %13)
  %15 = load ptr, ptr %4, align 8, !tbaa !106
  store i32 0, ptr %14, align 8, !tbaa !133
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %14, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !134
  store i16 0, ptr %17, align 2, !tbaa !135
  %18 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !122
  %20 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %19, ptr noundef nonnull align 8 dereferenceable(40) %14, i1 noundef zeroext false)
          to label %21 unwind label %34

21:                                               ; preds = %11
  %22 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !105
  br i1 %20, label %36, label %24

24:                                               ; preds = %21
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %23, i32 noundef 175)
          to label %25 unwind label %34

25:                                               ; preds = %24
  %26 = load ptr, ptr %4, align 8, !tbaa !106
  br label %27

27:                                               ; preds = %29, %25
  %28 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %26)
          to label %29 unwind label %32

29:                                               ; preds = %27
  switch i16 %28, label %27 [
    i16 62, label %189
    i16 0, label %189
  ]

30:                                               ; preds = %57
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %204

32:                                               ; preds = %27
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %204

34:                                               ; preds = %11, %53, %50, %48, %40, %24
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %204

36:                                               ; preds = %21
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %23, i64 0, i32 4
  %38 = load i8, ptr %37, align 2, !tbaa !108, !range !63, !noundef !64
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %16, align 8, !tbaa !134
  %42 = load i32, ptr %14, align 8, !tbaa !133
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i16, ptr %41, i64 %43
  store i16 0, ptr %44, align 2, !tbaa !135
  %45 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %41, i16 noundef zeroext 58)
          to label %46 unwind label %34

46:                                               ; preds = %40
  %47 = icmp eq i32 %45, -1
  br i1 %47, label %50, label %48

48:                                               ; preds = %46
  %49 = load ptr, ptr %22, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %49, i32 noundef 290)
          to label %50 unwind label %34

50:                                               ; preds = %48, %46, %36
  %51 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %52 unwind label %34

52:                                               ; preds = %50
  br i1 %51, label %60, label %53

53:                                               ; preds = %52
  %54 = load ptr, ptr %22, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %54, i32 noundef 207)
          to label %55 unwind label %34

55:                                               ; preds = %53
  %56 = load ptr, ptr %4, align 8, !tbaa !106
  br label %57

57:                                               ; preds = %59, %55
  %58 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %56)
          to label %59 unwind label %30

59:                                               ; preds = %57
  switch i16 %58, label %57 [
    i16 62, label %189
    i16 0, label %189
  ]

60:                                               ; preds = %52
  %61 = load ptr, ptr %12, align 8, !tbaa !107
  %62 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %61)
          to label %63 unwind label %74

63:                                               ; preds = %60
  %64 = load ptr, ptr %12, align 8, !tbaa !107
  %65 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %64)
          to label %66 unwind label %76

66:                                               ; preds = %63
  %67 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner6scanIdERNS_9XMLBufferES2_NS0_7IDTypesE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %62, ptr noundef nonnull align 8 dereferenceable(40) %65, i32 noundef 2)
          to label %68 unwind label %80

68:                                               ; preds = %66
  br i1 %67, label %82, label %69

69:                                               ; preds = %68
  %70 = load ptr, ptr %4, align 8, !tbaa !106
  br label %71

71:                                               ; preds = %73, %69
  %72 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %70)
          to label %73 unwind label %78

73:                                               ; preds = %71
  switch i16 %72, label %71 [
    i16 62, label %181
    i16 0, label %181
  ]

74:                                               ; preds = %60
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %204

76:                                               ; preds = %63
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %199

78:                                               ; preds = %71
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %194

80:                                               ; preds = %66, %82
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %194

82:                                               ; preds = %68
  %83 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %84 unwind label %80

84:                                               ; preds = %82
  %85 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 9
  %86 = load ptr, ptr %85, align 8, !tbaa !82
  %87 = load ptr, ptr %16, align 8, !tbaa !134
  %88 = load i32, ptr %14, align 8, !tbaa !133
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i16, ptr %87, i64 %89
  store i16 0, ptr %90, align 2, !tbaa !135
  %91 = load ptr, ptr %86, align 8, !tbaa !52
  %92 = getelementptr inbounds ptr, ptr %91, i64 15
  %93 = load ptr, ptr %92, align 8
  %94 = invoke noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(61) %86, ptr noundef %87)
          to label %95 unwind label %103

95:                                               ; preds = %84
  %96 = icmp ne ptr %94, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %95
  %98 = load ptr, ptr %22, align 8, !tbaa !105
  %99 = load ptr, ptr %16, align 8, !tbaa !134
  %100 = load i32, ptr %14, align 8, !tbaa !133
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i16, ptr %99, i64 %101
  store i16 0, ptr %102, align 2, !tbaa !135
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %98, i32 noundef 2, ptr noundef %99, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %164 unwind label %105

103:                                              ; preds = %84
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %194

105:                                              ; preds = %179, %175, %173, %169, %97
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %194

107:                                              ; preds = %95
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %62, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !134
  %110 = load i32, ptr %62, align 8, !tbaa !133
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i16, ptr %109, i64 %111
  store i16 0, ptr %112, align 2, !tbaa !135
  %113 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %65, i64 0, i32 6
  %114 = load ptr, ptr %113, align 8, !tbaa !134
  %115 = load i32, ptr %65, align 8, !tbaa !133
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i16, ptr %114, i64 %116
  store i16 0, ptr %117, align 2, !tbaa !135
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #13
  %118 = load ptr, ptr %4, align 8, !tbaa !106
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %118, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %119 unwind label %158

119:                                              ; preds = %107
  %120 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !79
  %122 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %121)
          to label %123 unwind label %158

123:                                              ; preds = %119
  %124 = load ptr, ptr %16, align 8, !tbaa !134
  %125 = load i32, ptr %14, align 8, !tbaa !133
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i16, ptr %124, i64 %126
  store i16 0, ptr %127, align 2, !tbaa !135
  %128 = icmp eq ptr %109, null
  br i1 %128, label %133, label %129

129:                                              ; preds = %123
  %130 = load i16, ptr %109, align 2, !tbaa !135
  %131 = icmp eq i16 %130, 0
  %132 = select i1 %131, ptr null, ptr %109
  br label %133

133:                                              ; preds = %129, %123
  %134 = phi ptr [ null, %123 ], [ %132, %129 ]
  %135 = icmp eq ptr %114, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %133
  %137 = load i16, ptr %114, align 2, !tbaa !135
  %138 = icmp eq i16 %137, 0
  %139 = select i1 %138, ptr null, ptr %114
  br label %140

140:                                              ; preds = %136, %133
  %141 = phi ptr [ null, %133 ], [ %139, %136 ]
  %142 = load ptr, ptr %2, align 8, !tbaa !218
  %143 = icmp eq ptr %142, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = load i16, ptr %142, align 2, !tbaa !135
  %146 = icmp eq i16 %145, 0
  %147 = select i1 %146, ptr null, ptr %142
  br label %148

148:                                              ; preds = %144, %140
  %149 = phi ptr [ null, %140 ], [ %147, %144 ]
  %150 = load ptr, ptr %120, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_715XMLNotationDeclC1EPKtS2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %122, ptr noundef %124, ptr noundef %134, ptr noundef %141, ptr noundef %149, ptr noundef %150)
          to label %151 unwind label %160

151:                                              ; preds = %148
  %152 = load ptr, ptr %85, align 8, !tbaa !82
  %153 = load ptr, ptr %152, align 8, !tbaa !52
  %154 = getelementptr inbounds ptr, ptr %153, i64 18
  %155 = load ptr, ptr %154, align 8
  %156 = invoke noundef i32 %155(ptr noundef nonnull align 8 dereferenceable(61) %152, ptr noundef nonnull %122)
          to label %157 unwind label %158

157:                                              ; preds = %151
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #13
  br label %164

158:                                              ; preds = %151, %119, %107
  %159 = landingpad { ptr, i32 }
          cleanup
  br label %162

160:                                              ; preds = %148
  %161 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %122, ptr noundef %121) #13
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi { ptr, i32 } [ %159, %158 ], [ %161, %160 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #13
  br label %194

164:                                              ; preds = %97, %157
  %165 = phi ptr [ %94, %97 ], [ %122, %157 ]
  %166 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !80
  %168 = icmp eq ptr %167, null
  br i1 %168, label %173, label %169

169:                                              ; preds = %164
  %170 = load ptr, ptr %167, align 8, !tbaa !52
  %171 = getelementptr inbounds ptr, ptr %170, i64 13
  %172 = load ptr, ptr %171, align 8
  invoke void %172(ptr noundef nonnull align 8 dereferenceable(8) %167, ptr noundef nonnull align 8 dereferenceable(56) %165, i1 noundef zeroext %96)
          to label %173 unwind label %105

173:                                              ; preds = %169, %164
  %174 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %175 unwind label %105

175:                                              ; preds = %173
  %176 = load ptr, ptr %4, align 8, !tbaa !106
  %177 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %176, i16 noundef zeroext 62)
          to label %178 unwind label %105

178:                                              ; preds = %175
  br i1 %177, label %181, label %179

179:                                              ; preds = %178
  %180 = load ptr, ptr %22, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %180, i32 noundef 238)
          to label %181 unwind label %105

181:                                              ; preds = %73, %73, %178, %179
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull align 8 dereferenceable(40) %65)
          to label %185 unwind label %182

182:                                              ; preds = %181
  %183 = landingpad { ptr, i32 }
          catch ptr null
  %184 = extractvalue { ptr, i32 } %183, 0
  call void @__clang_call_terminate(ptr %184) #14
  unreachable

185:                                              ; preds = %181
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(40) %62)
          to label %189 unwind label %186

186:                                              ; preds = %185
  %187 = landingpad { ptr, i32 }
          catch ptr null
  %188 = extractvalue { ptr, i32 } %187, 0
  call void @__clang_call_terminate(ptr %188) #14
  unreachable

189:                                              ; preds = %29, %29, %59, %59, %185
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(40) %14)
          to label %193 unwind label %190

190:                                              ; preds = %189
  %191 = landingpad { ptr, i32 }
          catch ptr null
  %192 = extractvalue { ptr, i32 } %191, 0
  call void @__clang_call_terminate(ptr %192) #14
  unreachable

193:                                              ; preds = %9, %9, %189
  ret void

194:                                              ; preds = %78, %80, %103, %162, %105
  %195 = phi { ptr, i32 } [ %104, %103 ], [ %106, %105 ], [ %163, %162 ], [ %79, %78 ], [ %81, %80 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull align 8 dereferenceable(40) %65)
          to label %199 unwind label %196

196:                                              ; preds = %194
  %197 = landingpad { ptr, i32 }
          catch ptr null
  %198 = extractvalue { ptr, i32 } %197, 0
  call void @__clang_call_terminate(ptr %198) #14
  unreachable

199:                                              ; preds = %194, %76
  %200 = phi { ptr, i32 } [ %77, %76 ], [ %195, %194 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(40) %62)
          to label %204 unwind label %201

201:                                              ; preds = %199
  %202 = landingpad { ptr, i32 }
          catch ptr null
  %203 = extractvalue { ptr, i32 } %202, 0
  call void @__clang_call_terminate(ptr %203) #14
  unreachable

204:                                              ; preds = %30, %34, %32, %74, %199
  %205 = phi { ptr, i32 } [ %75, %74 ], [ %200, %199 ], [ %31, %30 ], [ %33, %32 ], [ %35, %34 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(40) %14)
          to label %209 unwind label %206

206:                                              ; preds = %204
  %207 = landingpad { ptr, i32 }
          catch ptr null
  %208 = extractvalue { ptr, i32 } %207, 0
  call void @__clang_call_terminate(ptr %208) #14
  unreachable

209:                                              ; preds = %204
  resume { ptr, i32 } %205
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner6scanPIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = alloca [9 x i16], align 16
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
  %6 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %4, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %7, i64 0, i32 28
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = zext i16 %5 to i64
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !156
  %13 = icmp slt i8 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %16, i32 noundef 194)
  %17 = load ptr, ptr %3, align 8, !tbaa !106
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %17, i1 noundef zeroext false)
  br label %19

19:                                               ; preds = %14, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !107
  %22 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %21)
  %23 = load ptr, ptr %3, align 8, !tbaa !106
  store i32 0, ptr %22, align 8, !tbaa !133
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %22, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !134
  store i16 0, ptr %25, align 2, !tbaa !135
  %26 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %23, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !122
  %28 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %27, ptr noundef nonnull align 8 dereferenceable(40) %22, i1 noundef zeroext false)
          to label %29 unwind label %40

29:                                               ; preds = %19
  br i1 %28, label %42, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %32, i32 noundef 194)
          to label %33 unwind label %40

33:                                               ; preds = %30
  %34 = load ptr, ptr %3, align 8, !tbaa !106
  br label %35

35:                                               ; preds = %37, %33
  %36 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %34)
          to label %37 unwind label %38

37:                                               ; preds = %35
  switch i16 %36, label %35 [
    i16 62, label %204
    i16 0, label %204
  ]

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %214

40:                                               ; preds = %30, %56, %65, %69, %19
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %214

42:                                               ; preds = %29
  %43 = load ptr, ptr %24, align 8, !tbaa !134
  %44 = load i32, ptr %22, align 8, !tbaa !133
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i16, ptr %43, i64 %45
  store i16 0, ptr %46, align 2, !tbaa !135
  %47 = icmp eq i32 %44, 3
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load i16, ptr %43, align 2, !tbaa !135
  switch i16 %49, label %59 [
    i16 120, label %50
    i16 88, label %50
  ]

50:                                               ; preds = %48, %48
  %51 = getelementptr inbounds i16, ptr %43, i64 1
  %52 = load i16, ptr %51, align 2, !tbaa !135
  switch i16 %52, label %59 [
    i16 109, label %53
    i16 77, label %53
  ]

53:                                               ; preds = %50, %50
  %54 = getelementptr inbounds i16, ptr %43, i64 2
  %55 = load i16, ptr %54, align 2, !tbaa !135
  switch i16 %55, label %59 [
    i16 108, label %56
    i16 76, label %56
  ]

56:                                               ; preds = %53, %53
  %57 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %58 = load ptr, ptr %57, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %58, i32 noundef 283)
          to label %59 unwind label %40

59:                                               ; preds = %56, %53, %50, %48, %42
  %60 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %61 = load ptr, ptr %60, align 8, !tbaa !105
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %61, i64 0, i32 4
  %63 = load i8, ptr %62, align 2, !tbaa !108, !range !63, !noundef !64
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %43, i16 noundef zeroext 58)
          to label %67 unwind label %40

67:                                               ; preds = %65
  %68 = icmp eq i32 %66, -1
  br i1 %68, label %71, label %69

69:                                               ; preds = %67
  %70 = load ptr, ptr %60, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %70, i32 noundef 290)
          to label %71 unwind label %40

71:                                               ; preds = %67, %69, %59
  %72 = load ptr, ptr %20, align 8, !tbaa !107
  %73 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %72)
          to label %74 unwind label %98

74:                                               ; preds = %71
  %75 = load ptr, ptr %3, align 8, !tbaa !106
  %76 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %75)
          to label %77 unwind label %104

77:                                               ; preds = %74
  %78 = load ptr, ptr %3, align 8, !tbaa !106
  br i1 %76, label %79, label %166

79:                                               ; preds = %77
  %80 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %78, i1 noundef zeroext false)
          to label %81 unwind label %104

81:                                               ; preds = %79
  %82 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %73, i64 0, i32 1
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %73, i64 0, i32 6
  br label %85

85:                                               ; preds = %81, %163
  %86 = phi i8 [ %165, %163 ], [ 0, %81 ]
  %87 = load ptr, ptr %3, align 8, !tbaa !106
  %88 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %87)
          to label %89 unwind label %106

89:                                               ; preds = %85
  %90 = icmp eq i16 %88, 0
  br i1 %90, label %91, label %112

91:                                               ; preds = %89
  %92 = load ptr, ptr %60, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %92, i32 noundef 195)
          to label %93 unwind label %108

93:                                               ; preds = %91
  %94 = call ptr @__cxa_allocate_exception(i64 48) #13
  %95 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %94, ptr noundef nonnull @.str, i32 noundef 3570, i32 noundef 47, ptr noundef %96)
          to label %97 unwind label %110

97:                                               ; preds = %93
  invoke void @__cxa_throw(ptr nonnull %94, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %220 unwind label %108

98:                                               ; preds = %71
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %214

100:                                              ; preds = %184
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %209

102:                                              ; preds = %173
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %209

104:                                              ; preds = %196, %180, %176, %169, %166, %79, %74
  %105 = landingpad { ptr, i32 }
          cleanup
  br label %209

106:                                              ; preds = %85, %115, %125, %131, %156
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %209

108:                                              ; preds = %91, %97
  %109 = landingpad { ptr, i32 }
          cleanup
  br label %209

110:                                              ; preds = %93
  %111 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %94) #13
  br label %209

112:                                              ; preds = %89
  %113 = zext i16 %88 to i32
  %114 = icmp eq i16 %88, 63
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load ptr, ptr %3, align 8, !tbaa !106
  %117 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %116, i16 noundef zeroext 62)
          to label %118 unwind label %106

118:                                              ; preds = %115
  br i1 %117, label %163, label %119

119:                                              ; preds = %118, %112
  %120 = and i16 %88, -1024
  %121 = icmp eq i16 %120, -10240
  %122 = and i8 %86, 1
  %123 = icmp eq i8 %122, 0
  br i1 %121, label %124, label %127

124:                                              ; preds = %119
  br i1 %123, label %151, label %125

125:                                              ; preds = %124
  %126 = load ptr, ptr %60, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %126, i32 noundef 249)
          to label %151 unwind label %106

127:                                              ; preds = %119
  br i1 %123, label %133, label %128

128:                                              ; preds = %127
  %129 = add i16 %88, 8192
  %130 = icmp ult i16 %129, -1024
  br i1 %130, label %131, label %151

131:                                              ; preds = %128
  %132 = load ptr, ptr %60, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %132, i32 noundef 249)
          to label %151 unwind label %106

133:                                              ; preds = %127
  %134 = load ptr, ptr %3, align 8, !tbaa !106
  %135 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %134, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !122
  %137 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %136, i64 0, i32 28
  %138 = load ptr, ptr %137, align 8, !tbaa !155
  %139 = zext i16 %88 to i64
  %140 = getelementptr inbounds i8, ptr %138, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !156
  %142 = and i8 %141, 64
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %2) #13
  %145 = load ptr, ptr %82, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %113, ptr noundef nonnull %2, i32 noundef 8, i32 noundef 16, ptr noundef %145)
          to label %146 unwind label %149

146:                                              ; preds = %144
  %147 = load ptr, ptr %60, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %147, i32 noundef 196, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %148 unwind label %149

148:                                              ; preds = %146
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #13
  br label %151

149:                                              ; preds = %146, %144
  %150 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #13
  br label %209

151:                                              ; preds = %131, %125, %128, %148, %133, %124
  %152 = phi i8 [ 1, %124 ], [ 0, %133 ], [ 0, %148 ], [ 0, %128 ], [ %86, %125 ], [ 0, %131 ]
  %153 = load i32, ptr %73, align 8, !tbaa !133
  %154 = load i32, ptr %83, align 4, !tbaa !162
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %73, i32 noundef 1)
          to label %157 unwind label %106

157:                                              ; preds = %156, %151
  %158 = load ptr, ptr %84, align 8, !tbaa !134
  %159 = load i32, ptr %73, align 8, !tbaa !133
  %160 = add i32 %159, 1
  store i32 %160, ptr %73, align 8, !tbaa !133
  %161 = zext i32 %159 to i64
  %162 = getelementptr inbounds i16, ptr %158, i64 %161
  store i16 %88, ptr %162, align 2, !tbaa !135
  br label %163

163:                                              ; preds = %157, %118
  %164 = phi i1 [ false, %118 ], [ true, %157 ]
  %165 = phi i8 [ %86, %118 ], [ %152, %157 ]
  br i1 %164, label %85, label %187

166:                                              ; preds = %77
  %167 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %78, i16 noundef zeroext 63)
          to label %168 unwind label %104

168:                                              ; preds = %166
  br i1 %167, label %176, label %169

169:                                              ; preds = %168
  %170 = load ptr, ptr %60, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %170, i32 noundef 195)
          to label %171 unwind label %104

171:                                              ; preds = %169
  %172 = load ptr, ptr %3, align 8, !tbaa !106
  br label %173

173:                                              ; preds = %175, %171
  %174 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %172)
          to label %175 unwind label %102

175:                                              ; preds = %173
  switch i16 %174, label %173 [
    i16 62, label %200
    i16 0, label %200
  ]

176:                                              ; preds = %168
  %177 = load ptr, ptr %3, align 8, !tbaa !106
  %178 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %177, i16 noundef zeroext 62)
          to label %179 unwind label %104

179:                                              ; preds = %176
  br i1 %178, label %187, label %180

180:                                              ; preds = %179
  %181 = load ptr, ptr %60, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %181, i32 noundef 195)
          to label %182 unwind label %104

182:                                              ; preds = %180
  %183 = load ptr, ptr %3, align 8, !tbaa !106
  br label %184

184:                                              ; preds = %186, %182
  %185 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %183)
          to label %186 unwind label %100

186:                                              ; preds = %184
  switch i16 %185, label %184 [
    i16 62, label %200
    i16 0, label %200
  ]

187:                                              ; preds = %163, %179
  %188 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %73, i64 0, i32 6
  %189 = load ptr, ptr %188, align 8, !tbaa !134
  %190 = load i32, ptr %73, align 8, !tbaa !133
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i16, ptr %189, i64 %191
  store i16 0, ptr %192, align 2, !tbaa !135
  %193 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  %194 = load ptr, ptr %193, align 8, !tbaa !80
  %195 = icmp eq ptr %194, null
  br i1 %195, label %200, label %196

196:                                              ; preds = %187
  %197 = load ptr, ptr %194, align 8, !tbaa !52
  %198 = getelementptr inbounds ptr, ptr %197, i64 5
  %199 = load ptr, ptr %198, align 8
  invoke void %199(ptr noundef nonnull align 8 dereferenceable(8) %194, ptr noundef %43, ptr noundef %189)
          to label %200 unwind label %104

200:                                              ; preds = %175, %175, %186, %186, %187, %196
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %72, ptr noundef nonnull align 8 dereferenceable(40) %73)
          to label %204 unwind label %201

201:                                              ; preds = %200
  %202 = landingpad { ptr, i32 }
          catch ptr null
  %203 = extractvalue { ptr, i32 } %202, 0
  call void @__clang_call_terminate(ptr %203) #14
  unreachable

204:                                              ; preds = %37, %37, %200
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(40) %22)
          to label %208 unwind label %205

205:                                              ; preds = %204
  %206 = landingpad { ptr, i32 }
          catch ptr null
  %207 = extractvalue { ptr, i32 } %206, 0
  call void @__clang_call_terminate(ptr %207) #14
  unreachable

208:                                              ; preds = %204
  ret void

209:                                              ; preds = %106, %108, %100, %104, %102, %110, %149
  %210 = phi { ptr, i32 } [ %150, %149 ], [ %111, %110 ], [ %101, %100 ], [ %103, %102 ], [ %105, %104 ], [ %107, %106 ], [ %109, %108 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %72, ptr noundef nonnull align 8 dereferenceable(40) %73)
          to label %214 unwind label %211

211:                                              ; preds = %209
  %212 = landingpad { ptr, i32 }
          catch ptr null
  %213 = extractvalue { ptr, i32 } %212, 0
  call void @__clang_call_terminate(ptr %213) #14
  unreachable

214:                                              ; preds = %38, %40, %98, %209
  %215 = phi { ptr, i32 } [ %99, %98 ], [ %210, %209 ], [ %39, %38 ], [ %41, %40 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(40) %22)
          to label %219 unwind label %216

216:                                              ; preds = %214
  %217 = landingpad { ptr, i32 }
          catch ptr null
  %218 = extractvalue { ptr, i32 } %217, 0
  call void @__clang_call_terminate(ptr %218) #14
  unreachable

219:                                              ; preds = %214
  resume { ptr, i32 } %215

220:                                              ; preds = %97
  unreachable
}

declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_715XMLNotationDeclC1EPKtS2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader14isPublicIdCharEt(ptr noundef nonnull align 8 dereferenceable(163992), i16 noundef zeroext) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString14isValidEncNameEPKt(ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11setEncodingEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl14isSerializableEv(ptr noundef nonnull align 8 dereferenceable(75)) unnamed_addr #4

declare void @_ZN11xercesc_2_713DTDEntityDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(75), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #4

declare noundef ptr @_ZNK11xercesc_2_713DTDEntityDecl12getProtoTypeEv(ptr noundef nonnull align 8 dereferenceable(75)) unnamed_addr #4

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #2 comdat align 2 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !208, !range !63, !noundef !64
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #2 comdat align 2 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !210, !range !63, !noundef !64
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #2 comdat align 2 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 2, !tbaa !211, !range !63, !noundef !64
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

declare noundef zeroext i1 @_ZNK11xercesc_2_715ContentSpecNode14isSerializableEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #4

declare void @_ZN11xercesc_2_715ContentSpecNode9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #4

declare noundef ptr @_ZNK11xercesc_2_715ContentSpecNode12getProtoTypeEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !49 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !235
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !52
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !49 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !235
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !52
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #4

declare void @_ZN11xercesc_2_713XMLEntityDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_713XMLEntityDeclC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !50 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !89
  %6 = icmp eq ptr %1, null
  br i1 %6, label %30, label %7, !prof !215

7:                                                ; preds = %3
  %8 = load i16, ptr %1, align 2, !tbaa !135
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %30, label %10, !prof !215

10:                                               ; preds = %7
  %11 = zext i16 %8 to i32
  %12 = getelementptr inbounds i16, ptr %1, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !135
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %27, label %15, !prof !238

15:                                               ; preds = %10, %15
  %16 = phi i16 [ %25, %15 ], [ %13, %10 ]
  %17 = phi ptr [ %24, %15 ], [ %12, %10 ]
  %18 = phi i32 [ %23, %15 ], [ %11, %10 ]
  %19 = mul i32 %18, 38
  %20 = lshr i32 %18, 24
  %21 = add i32 %19, %20
  %22 = zext i16 %16 to i32
  %23 = add i32 %21, %22
  %24 = getelementptr inbounds i16, ptr %17, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !135
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %15, !prof !239, !llvm.loop !240

27:                                               ; preds = %15, %10
  %28 = phi i32 [ %11, %10 ], [ %23, %15 ]
  %29 = urem i32 %28, %5
  br label %30

30:                                               ; preds = %3, %7, %27
  %31 = phi i32 [ %29, %27 ], [ 0, %7 ], [ 0, %3 ]
  store i32 %31, ptr %2, align 4, !tbaa !204
  %32 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !92
  %34 = zext i32 %31 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !94
  %37 = icmp eq ptr %36, null
  br i1 %37, label %72, label %38, !prof !241

38:                                               ; preds = %30, %68
  %39 = phi ptr [ %70, %68 ], [ %36, %30 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !137
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !149
  %43 = icmp eq ptr %42, null
  %44 = or i1 %6, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i16, ptr %1, align 2, !tbaa !135
  %47 = load i16, ptr %42, align 2, !tbaa !135
  %48 = icmp eq i16 %46, %47
  br i1 %48, label %57, label %68

49:                                               ; preds = %38
  br i1 %6, label %53, label %50

50:                                               ; preds = %49
  %51 = load i16, ptr %1, align 2, !tbaa !135
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %50, %49
  br i1 %43, label %72, label %54

54:                                               ; preds = %53
  %55 = load i16, ptr %42, align 2, !tbaa !135
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %72, label %68

57:                                               ; preds = %45, %62
  %58 = phi i16 [ %65, %62 ], [ %46, %45 ]
  %59 = phi ptr [ %64, %62 ], [ %42, %45 ]
  %60 = phi ptr [ %63, %62 ], [ %1, %45 ]
  %61 = icmp eq i16 %58, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds i16, ptr %60, i64 1
  %64 = getelementptr inbounds i16, ptr %59, i64 1
  %65 = load i16, ptr %63, align 2, !tbaa !135
  %66 = load i16, ptr %64, align 2, !tbaa !135
  %67 = icmp eq i16 %65, %66
  br i1 %67, label %57, label %68, !llvm.loop !160

68:                                               ; preds = %62, %45, %54, %50
  %69 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %39, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !94
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %38, !prof !241, !llvm.loop !242

72:                                               ; preds = %68, %53, %54, %57, %30
  %73 = phi ptr [ null, %30 ], [ %39, %57 ], [ %39, %54 ], [ %39, %53 ], [ null, %68 ]
  ret ptr %73
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %12
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !49 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !235
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !52
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !84 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !89
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !93

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %31, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !88
  ret void

9:                                                ; preds = %5, %31
  %10 = phi i64 [ 0, %5 ], [ %34, %31 ]
  %11 = load ptr, ptr %6, align 8, !tbaa !92
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !94
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15, !prof !243

15:                                               ; preds = %9, %25
  %16 = phi ptr [ %18, %25 ], [ %13, %9 ]
  %17 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !214
  %19 = load ptr, ptr %16, align 8, !tbaa !137
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !215

21:                                               ; preds = %15
  %22 = load ptr, ptr %19, align 8, !tbaa !52
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(75) %19) #13, !prof !244
  br label %25

25:                                               ; preds = %21, %15
  %26 = load ptr, ptr %0, align 8, !tbaa !85
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull %16), !prof !245
  %30 = icmp eq ptr %18, null
  br i1 %30, label %31, label %15, !prof !212, !llvm.loop !246

31:                                               ; preds = %25, %9
  %32 = load ptr, ptr %6, align 8, !tbaa !92
  %33 = getelementptr inbounds ptr, ptr %32, i64 %10
  store ptr null, ptr %33, align 8, !tbaa !94
  %34 = add nuw nsw i64 %10, 1
  %35 = load i32, ptr %2, align 8, !tbaa !89
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %9, label %7, !prof !247, !llvm.loop !248
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !49 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !235
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !52
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!48}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !{ptr @_ZN11xercesc_2_713DTDEntityDeclD0Ev, ptr @_ZN11xercesc_2_713XMLEntityDeclD2Ev, i64 5}
!36 = !{ptr @_ZN11xercesc_2_713DTDEntityDeclD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 5}
!37 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, i64 282}
!38 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 339}
!39 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv, i64 4}
!40 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!41 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!42 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_throw, i64 1}
!43 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!44 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, i64 5}
!45 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!46 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 4}
!47 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv, ptr @_ZN11xercesc_2_713DTDEntityDeclD0Ev, i64 5}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!49 = !{!"function_entry_count", i64 0}
!50 = !{!"function_entry_count", i64 5}
!51 = !{!"function_entry_count", i64 339}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !54, i64 0}
!54 = !{!"Simple C++ TBAA"}
!55 = !{!56, !61, i64 52}
!56 = !{!"_ZTSN11xercesc_2_715ContentSpecNodeE", !57, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40, !60, i64 48, !61, i64 52, !61, i64 53, !62, i64 56, !62, i64 60}
!57 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!58 = !{!"any pointer", !59, i64 0}
!59 = !{!"omnipotent char", !54, i64 0}
!60 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !59, i64 0}
!61 = !{!"bool", !59, i64 0}
!62 = !{!"int", !59, i64 0}
!63 = !{i8 0, i8 2}
!64 = !{}
!65 = !{!"branch_weights", i32 9, i32 330}
!66 = !{!56, !58, i64 32}
!67 = !{!"branch_weights", i32 172, i32 158}
!68 = !{!"VP", i32 0, i64 158, i64 -8455366633691647299, i64 158}
!69 = !{!56, !61, i64 53}
!70 = !{!"branch_weights", i32 0, i32 339}
!71 = !{!56, !58, i64 40}
!72 = !{!"branch_weights", i32 215, i32 124}
!73 = !{!"VP", i32 0, i64 124, i64 -8455366633691647299, i64 124}
!74 = !{!56, !58, i64 16}
!75 = !{!"branch_weights", i32 167, i32 172}
!76 = !{!"VP", i32 0, i64 172, i64 7173745605608799217, i64 172}
!77 = !{!78, !58, i64 8}
!78 = !{!"_ZTSN11xercesc_2_710DTDScannerE", !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !61, i64 56, !62, i64 60, !58, i64 64, !58, i64 72, !58, i64 80, !58, i64 88, !58, i64 96, !62, i64 104, !62, i64 108}
!79 = !{!78, !58, i64 16}
!80 = !{!78, !58, i64 24}
!81 = !{!78, !62, i64 60}
!82 = !{!78, !58, i64 64}
!83 = !{!78, !58, i64 96}
!84 = !{!"function_entry_count", i64 4}
!85 = !{!86, !58, i64 0}
!86 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEE", !58, i64 0, !58, i64 8, !58, i64 16, !62, i64 24, !62, i64 28, !62, i64 32}
!87 = !{!86, !62, i64 24}
!88 = !{!86, !62, i64 28}
!89 = !{!86, !62, i64 32}
!90 = !{!"branch_weights", i32 0, i32 4}
!91 = !{!"VP", i32 0, i64 4, i64 8345045103670217670, i64 4}
!92 = !{!86, !58, i64 8}
!93 = !{!"branch_weights", i32 1, i32 127}
!94 = !{!58, !58, i64 0}
!95 = !{!"branch_weights", i32 127, i32 10689}
!96 = distinct !{!96, !97, !98}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!"llvm.loop.unroll.disable"}
!99 = !{!86, !58, i64 16}
!100 = !{!78, !58, i64 32}
!101 = !{!78, !58, i64 40}
!102 = !{!78, !58, i64 48}
!103 = !{!"VP", i32 0, i64 4, i64 -7405368087501025645, i64 4}
!104 = !{!"branch_weights", i32 4, i32 0}
!105 = !{!78, !58, i64 88}
!106 = !{!78, !58, i64 80}
!107 = !{!78, !58, i64 72}
!108 = !{!109, !61, i64 18}
!109 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !110, i64 0, !111, i64 8, !61, i64 16, !61, i64 17, !61, i64 18, !61, i64 19, !61, i64 20, !61, i64 21, !61, i64 22, !61, i64 23, !61, i64 24, !61, i64 25, !61, i64 26, !61, i64 27, !61, i64 28, !61, i64 29, !61, i64 30, !61, i64 31, !61, i64 32, !61, i64 33, !61, i64 34, !61, i64 35, !61, i64 36, !61, i64 37, !61, i64 38, !62, i64 40, !62, i64 44, !62, i64 48, !62, i64 52, !62, i64 56, !62, i64 60, !62, i64 64, !62, i64 68, !58, i64 72, !62, i64 80, !62, i64 84, !62, i64 88, !62, i64 92, !62, i64 96, !58, i64 104, !58, i64 112, !58, i64 120, !58, i64 128, !58, i64 136, !58, i64 144, !58, i64 152, !58, i64 160, !58, i64 168, !61, i64 176, !112, i64 184, !58, i64 264, !115, i64 272, !58, i64 280, !58, i64 288, !58, i64 296, !58, i64 304, !58, i64 312, !58, i64 320, !58, i64 328, !58, i64 336, !58, i64 344, !114, i64 352, !58, i64 360, !116, i64 368, !117, i64 392, !117, i64 432, !117, i64 472, !117, i64 512, !117, i64 552, !117, i64 592, !117, i64 632, !118, i64 672}
!110 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!111 = !{!"long", !59, i64 0}
!112 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !113, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !62, i64 40, !58, i64 48, !61, i64 56, !114, i64 60, !61, i64 64, !58, i64 72}
!113 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!114 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !59, i64 0}
!115 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !59, i64 0}
!116 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !62, i64 0, !58, i64 8, !58, i64 16}
!117 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !62, i64 0, !62, i64 4, !62, i64 8, !61, i64 12, !58, i64 16, !58, i64 24, !58, i64 32}
!118 = !{!"_ZTSN11xercesc_2_79ElemStackE", !62, i64 0, !62, i64 4, !119, i64 8, !58, i64 48, !62, i64 56, !62, i64 60, !62, i64 64, !62, i64 68, !62, i64 72, !62, i64 76, !62, i64 80, !58, i64 88, !58, i64 96}
!119 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !57, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !62, i64 32, !62, i64 36}
!120 = !{!109, !62, i64 52}
!121 = !{!78, !62, i64 104}
!122 = !{!112, !58, i64 16}
!123 = !{!124, !62, i64 163904}
!124 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !62, i64 0, !59, i64 4, !62, i64 32772, !59, i64 32776, !59, i64 49160, !111, i64 114696, !111, i64 114704, !125, i64 114712, !58, i64 114720, !61, i64 114728, !61, i64 114729, !58, i64 114736, !62, i64 114744, !59, i64 114748, !62, i64 163900, !62, i64 163904, !126, i64 163908, !61, i64 163912, !127, i64 163916, !62, i64 163920, !61, i64 163924, !61, i64 163925, !58, i64 163928, !58, i64 163936, !61, i64 163944, !61, i64 163945, !58, i64 163952, !128, i64 163960, !58, i64 163968, !61, i64 163976, !114, i64 163980, !58, i64 163984}
!125 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !59, i64 0}
!126 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !59, i64 0}
!127 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !59, i64 0}
!128 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !59, i64 0}
!129 = !{!78, !62, i64 108}
!130 = distinct !{!130, !97, !98}
!131 = !{!109, !61, i64 23}
!132 = !{!78, !61, i64 56}
!133 = !{!117, !62, i64 0}
!134 = !{!117, !58, i64 32}
!135 = !{!136, !136, i64 0}
!136 = !{!"short", !59, i64 0}
!137 = !{!138, !58, i64 0}
!138 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEE", !58, i64 0, !58, i64 8}
!139 = !{!109, !61, i64 22}
!140 = !{!109, !61, i64 24}
!141 = !{!109, !58, i64 264}
!142 = !{!143, !58, i64 40}
!143 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !57, i64 0, !62, i64 8, !62, i64 12, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !58, i64 56, !58, i64 64}
!144 = !{!143, !58, i64 56}
!145 = !{!109, !61, i64 17}
!146 = !{!109, !61, i64 37}
!147 = !{!143, !58, i64 48}
!148 = !{!124, !61, i64 163945}
!149 = !{!143, !58, i64 24}
!150 = !{!109, !58, i64 136}
!151 = !{!143, !58, i64 16}
!152 = !{!143, !62, i64 12}
!153 = !{!61, !61, i64 0}
!154 = !{!124, !128, i64 163960}
!155 = !{!124, !58, i64 163968}
!156 = !{!59, !59, i64 0}
!157 = distinct !{!157, !97, !98}
!158 = !{!159, !62, i64 8}
!159 = !{!"_ZTSN11xercesc_2_720EndOfEntityExceptionE", !58, i64 0, !62, i64 8}
!160 = distinct !{!160, !97, !98}
!161 = !{!109, !114, i64 352}
!162 = !{!117, !62, i64 4}
!163 = distinct !{!163, !97, !98}
!164 = !{!165, !58, i64 16}
!165 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !57, i64 0, !58, i64 8, !58, i64 16, !166, i64 24, !62, i64 28, !61, i64 32}
!166 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !59, i64 0}
!167 = !{!168, !62, i64 24}
!168 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !57, i64 0, !169, i64 8, !170, i64 12, !171, i64 16, !61, i64 20, !61, i64 21, !62, i64 24, !58, i64 32, !58, i64 40, !58, i64 48}
!169 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !59, i64 0}
!170 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !59, i64 0}
!171 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !59, i64 0}
!172 = !{!168, !61, i64 21}
!173 = !{!168, !170, i64 12}
!174 = !{!168, !58, i64 40}
!175 = !{!168, !58, i64 48}
!176 = distinct !{!176, !97, !98}
!177 = !{!168, !169, i64 8}
!178 = !{!179, !62, i64 12}
!179 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !61, i64 8, !62, i64 12, !62, i64 16, !58, i64 24, !58, i64 32}
!180 = distinct !{!180, !97, !98}
!181 = !{!168, !58, i64 32}
!182 = !{!"function_entry_count", i64 2444437052}
!183 = !{!"branch_weights", i32 -1850530244, i32 0}
!184 = !{!179, !58, i64 32}
!185 = !{!179, !58, i64 24}
!186 = !{!165, !166, i64 24}
!187 = !{!165, !61, i64 32}
!188 = !{i32 0, i32 3}
!189 = distinct !{!189, !97, !98}
!190 = !{!191, !58, i64 32}
!191 = !{!"_ZTSN11xercesc_2_710DTDGrammarE", !192, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !62, i64 56, !61, i64 60}
!192 = !{!"_ZTSN11xercesc_2_77GrammarE", !57, i64 0}
!193 = !{!143, !58, i64 32}
!194 = distinct !{!194, !97, !98}
!195 = !{!56, !58, i64 8}
!196 = !{!56, !62, i64 56}
!197 = !{!56, !62, i64 60}
!198 = !{!56, !60, i64 48}
!199 = distinct !{!199, !97, !98}
!200 = distinct !{!200, !97, !98}
!201 = !{!202, !203, i64 36}
!202 = !{!"_ZTSN11xercesc_2_714DTDElementDeclE", !165, i64 0, !203, i64 36, !58, i64 40, !58, i64 48, !58, i64 56, !58, i64 64, !58, i64 72}
!203 = !{!"_ZTSN11xercesc_2_714DTDElementDecl10ModelTypesE", !59, i64 0}
!204 = !{!62, !62, i64 0}
!205 = distinct !{!205, !97, !98}
!206 = !{!207, !58, i64 32}
!207 = !{!"_ZTSN11xercesc_2_75QNameE", !57, i64 0, !62, i64 8, !62, i64 12, !62, i64 16, !62, i64 20, !58, i64 24, !58, i64 32, !58, i64 40, !58, i64 48}
!208 = !{!209, !61, i64 72}
!209 = !{!"_ZTSN11xercesc_2_713DTDEntityDeclE", !143, i64 0, !61, i64 72, !61, i64 73, !61, i64 74}
!210 = !{!209, !61, i64 73}
!211 = !{!209, !61, i64 74}
!212 = !{!"branch_weights", i32 5, i32 0}
!213 = !{!"VP", i32 0, i64 5, i64 8345045103670217670, i64 5}
!214 = !{!138, !58, i64 8}
!215 = !{!"branch_weights", i32 0, i32 5}
!216 = !{!143, !62, i64 8}
!217 = !{!143, !58, i64 64}
!218 = !{!219, !58, i64 0}
!219 = !{!"_ZTSN11xercesc_2_79ReaderMgr17LastExtEntityInfoE", !58, i64 0, !58, i64 8, !111, i64 16, !111, i64 24}
!220 = distinct !{!220, !97, !98}
!221 = distinct !{!221, !97, !98}
!222 = !{!"function_entry_count", i64 789922}
!223 = !{!"branch_weights", i32 0, i32 789922}
!224 = !{!"branch_weights", i32 284, i32 789638}
!225 = !{!"branch_weights", i32 789638, i32 41628303}
!226 = distinct !{!226, !97, !98}
!227 = !{!"branch_weights", i32 789636, i32 2}
!228 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!229 = !{!"function_entry_count", i64 2718768}
!230 = !{!"branch_weights", i32 0, i32 2718768}
!231 = !{!"branch_weights", i32 2718764, i32 4}
!232 = !{!"VP", i32 1, i64 2718768, i64 33, i64 658811, i64 9, i64 435444, i64 17, i64 410031, i64 8, i64 320017}
!233 = distinct !{!233, !97, !98}
!234 = distinct !{!234, !97, !98}
!235 = !{!236, !58, i64 40}
!236 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !237, i64 8, !58, i64 16, !62, i64 24, !58, i64 32, !58, i64 40}
!237 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !59, i64 0}
!238 = !{!"branch_weights", i32 1, i32 159}
!239 = !{!"branch_weights", i32 159, i32 161}
!240 = distinct !{!240, !97, !98}
!241 = !{!"branch_weights", i32 1, i32 0}
!242 = distinct !{!242, !97, !98}
!243 = !{!"branch_weights", i32 333, i32 5}
!244 = !{!"VP", i32 0, i64 5, i64 6706079041690556290, i64 5}
!245 = !{!"VP", i32 0, i64 5, i64 -7405368087501025645, i64 5}
!246 = distinct !{!246, !97, !98}
!247 = !{!"branch_weights", i32 10689, i32 127}
!248 = distinct !{!248, !97, !98}

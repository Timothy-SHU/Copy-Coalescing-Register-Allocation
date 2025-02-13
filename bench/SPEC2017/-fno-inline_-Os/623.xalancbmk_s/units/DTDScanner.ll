; ModuleID = 'DTDScanner.cpp'
source_filename = "DTDScanner.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DTDEntityDecl" = type <{ %"class.xercesc_2_7::XMLEntityDecl", i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::ContentSpecNode" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32 }
%"class.xercesc_2_7::DTDScanner" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::NameIdPool" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"struct.xercesc_2_7::NameIdPoolBucketElem" = type { ptr, ptr }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"class.xercesc_2_7::XMLBufBid" = type { ptr, ptr }
%"class.xercesc_2_7::Janitor" = type { ptr }
%"class.xercesc_2_7::FlagJanitor" = type { i8, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::DTDElementDecl" = type { %"class.xercesc_2_7::XMLElementDecl.base", i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::DTDGrammar" = type <{ %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo" = type { ptr, ptr, i64, i64 }
%"class.xercesc_2_7::EndOfEntityException" = type <{ ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }

$_ZN11xercesc_2_713DTDEntityDeclD0Ev = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv = comdat any

$_ZN11xercesc_2_715ContentSpecNodeD2Ev = comdat any

$_ZN11xercesc_2_715ContentSpecNodeD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv = comdat any

$_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv = comdat any

$_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv = comdat any

$_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv = comdat any

$_ZNK11xercesc_2_79XMLReader12getReaderNumEv = comdat any

$_ZN11xercesc_2_710XMLScanner11setHasNoDTDEb = comdat any

$_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE = comdat any

$_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE = comdat any

$_ZN11xercesc_2_79XMLBufBid9getBufferEv = comdat any

$_ZN11xercesc_2_79XMLBufBid12getRawBufferEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt = comdat any

$_ZNK11xercesc_2_710XMLScanner13getStandaloneEv = comdat any

$_ZNK11xercesc_2_710XMLScanner15getDoValidationEv = comdat any

$_ZN11xercesc_2_710XMLScanner12getValidatorEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl10isExternalEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl10getBaseURIEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv = comdat any

$_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv = comdat any

$_ZNK11xercesc_2_710XMLScanner33getDisableDefaultEntityResolutionEv = comdat any

$_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_ = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLReader13setThrowAtEndEb = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl7getNameEv = comdat any

$_ZN11xercesc_2_710XMLScanner16getEntityHandlerEv = comdat any

$_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl8getValueEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl11getValueLenEv = comdat any

$_ZN11xercesc_2_79XMLBufBidD2Ev = comdat any

$_ZN11xercesc_2_79XMLBuffer5resetEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj = comdat any

$_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_ = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEt = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv = comdat any

$_ZN11xercesc_2_79XMLAttDef5setIdEj = comdat any

$_ZN11xercesc_2_79XMLAttDef25setExternalAttDeclarationEb = comdat any

$_ZN11xercesc_2_710DTDScanner23isReadingExternalEntityEv = comdat any

$_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt = comdat any

$_ZN11xercesc_2_79XMLAttDef7setTypeENS0_8AttTypesE = comdat any

$_ZN11xercesc_2_79XMLAttDef14setEnumerationEPKt = comdat any

$_ZNK11xercesc_2_79XMLAttDef7getTypeEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_79ReaderMgr12skipPastCharEt = comdat any

$_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE = comdat any

$_ZN11xercesc_2_714XMLElementDecl26setExternalElemDeclarationEb = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv = comdat any

$_ZNK11xercesc_2_79XMLReader12isWhitespaceEt = comdat any

$_ZNK11xercesc_2_79XMLBuffer6getLenEv = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_79XMLReader9isXMLCharEt = comdat any

$_ZNK11xercesc_2_79XMLReader13isControlCharEt = comdat any

$_ZN11xercesc_2_714XMLElementDecl14getElementNameEv = comdat any

$_ZN11xercesc_2_715ContentSpecNodeC2EPNS_5QNameEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79ReaderMgr13lookingAtCharEt = comdat any

$_ZNK11xercesc_2_715ContentSpecNode7getTypeEv = comdat any

$_ZN11xercesc_2_715ContentSpecNode9getSecondEv = comdat any

$_ZN11xercesc_2_715ContentSpecNode11orphanFirstEv = comdat any

$_ZN11xercesc_2_715ContentSpecNode9setSecondEPS0_ = comdat any

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZN11xercesc_2_79XMLBufBid6appendEt = comdat any

$_ZN11xercesc_2_714DTDElementDecl12setModelTypeENS0_10ModelTypesE = comdat any

$_ZN11xercesc_2_79XMLAttDef14setDefaultTypeENS0_11DefAttTypesE = comdat any

$_ZN11xercesc_2_79XMLAttDef8setValueEPKt = comdat any

$_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv = comdat any

$_ZN11xercesc_2_79ReaderMgr14lookingAtSpaceEv = comdat any

$_ZN11xercesc_2_710DTDGrammar13getEntityDeclEPKt = comdat any

$_ZN11xercesc_2_713DTDEntityDeclC2EPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713DTDEntityDeclC2EPKtbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713DTDEntityDecl22setDeclaredInIntSubsetEb = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_ = comdat any

$_ZNK11xercesc_2_710DTDGrammar13putEntityDeclEPNS_13DTDEntityDeclE = comdat any

$_ZN11xercesc_2_713DTDEntityDecl14setIsParameterEb = comdat any

$_ZNK11xercesc_2_710XMLScanner11getHasNoDTDEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEC2EPS1_PS2_ = comdat any

$_ZN11xercesc_2_713XMLEntityDecl5setIdEj = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_713XMLEntityDecl8setValueEPKt = comdat any

$_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev = comdat any

$_ZN11xercesc_2_713XMLEntityDecl11setPublicIdEPKt = comdat any

$_ZN11xercesc_2_713XMLEntityDecl11setSystemIdEPKt = comdat any

$_ZN11xercesc_2_713XMLEntityDecl10setBaseURIEPKt = comdat any

$_ZN11xercesc_2_713XMLEntityDecl15setNotationNameEPKt = comdat any

$_ZN11xercesc_2_79ReaderMgr12getNameTokenERNS_9XMLBufferE = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKtj = comdat any

$_ZNK11xercesc_2_79XMLBufBid6getLenEv = comdat any

$_ZN11xercesc_2_711FlagJanitorIbEC2EPbb = comdat any

$_ZNK11xercesc_2_79XMLReader7getTypeEv = comdat any

$_ZNK11xercesc_2_720EndOfEntityException12getReaderNumEv = comdat any

$_ZN11xercesc_2_711FlagJanitorIbED2Ev = comdat any

$_ZN11xercesc_2_715ContentSpecNodeC2EPNS_5QNameEbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZN11xercesc_2_715ContentSpecNode12orphanSecondEv = comdat any

$_ZNK11xercesc_2_710XMLScanner13getXMLVersionEv = comdat any

$_ZNK11xercesc_2_79XMLBufBid7isEmptyEv = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTVN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTSN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTIN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTVN11xercesc_2_715ContentSpecNodeE = comdat any

$_ZTSN11xercesc_2_715ContentSpecNodeE = comdat any

$_ZTIN11xercesc_2_715ContentSpecNodeE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTSN11xercesc_2_720EndOfEntityExceptionE = comdat any

$_ZTIN11xercesc_2_720EndOfEntityExceptionE = comdat any

$_ZTSN11xercesc_2_77XMLErrs5CodesE = comdat any

$_ZTIN11xercesc_2_77XMLErrs5CodesE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713DTDEntityDeclE, ptr @_ZN11xercesc_2_713XMLEntityDeclD2Ev, ptr @_ZN11xercesc_2_713DTDEntityDeclD0Ev, ptr @_ZNK11xercesc_2_713DTDEntityDecl14isSerializableEv, ptr @_ZN11xercesc_2_713DTDEntityDecl9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_713DTDEntityDecl12getProtoTypeEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713DTDEntityDeclE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEntityDeclE = external constant ptr
@_ZTIN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713DTDEntityDeclE, ptr @_ZTIN11xercesc_2_713XMLEntityDeclE }, comdat, align 8
@_ZTVN11xercesc_2_715ContentSpecNodeE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715ContentSpecNodeE, ptr @_ZN11xercesc_2_715ContentSpecNodeD2Ev, ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, ptr @_ZNK11xercesc_2_715ContentSpecNode14isSerializableEv, ptr @_ZN11xercesc_2_715ContentSpecNode9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_715ContentSpecNode12getProtoTypeEv] }, comdat, align 8
@_ZTSN11xercesc_2_715ContentSpecNodeE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715ContentSpecNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_715ContentSpecNodeE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715ContentSpecNodeE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_710DTDScannerE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710DTDScannerE, ptr @_ZN11xercesc_2_710DTDScannerD2Ev, ptr @_ZN11xercesc_2_710DTDScannerD0Ev] }, align 8
@_ZTSN11xercesc_2_710DTDScannerE = dso_local constant [28 x i8] c"N11xercesc_2_710DTDScannerE\00", align 1
@_ZTIN11xercesc_2_710DTDScannerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710DTDScannerE, ptr @_ZTIN11xercesc_2_77XMemoryE }, align 8
@.str = private unnamed_addr constant [28 x i8] c"./xercesc/util/NameIdPool.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [15 x i8] c"DTDScanner.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
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
@.str.2 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722UnexpectedEOFExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev, ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv, ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720EndOfEntityExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720EndOfEntityExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_77XMLErrs5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMLErrs5CodesE }, comdat, align 8
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni13fgEmptyStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni11fgAnyStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgPCDATAStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgRequiredStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgImpliedStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgFixedStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE = external local_unnamed_addr global ptr, align 8
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
@_ZN11xercesc_2_76XMLUni12fgVersion1_1E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgVersion1_0E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgEncodingStringE = external constant [0 x i16], align 2

@_ZN11xercesc_2_710DTDScannerC1EPNS_10DTDGrammarEPNS_14DocTypeHandlerEPNS_13MemoryManagerES6_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_710DTDScannerC2EPNS_10DTDGrammarEPNS_14DocTypeHandlerEPNS_13MemoryManagerES6_
@_ZN11xercesc_2_710DTDScannerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_710DTDScannerD2Ev

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_713XMLEntityDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DTDEntityDeclD0Ev(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_713XMLEntityDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(75) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl14isSerializableEv(ptr noundef nonnull align 8 dereferenceable(75)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DTDEntityDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(75), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DTDEntityDecl12getProtoTypeEv(ptr noundef nonnull align 8 dereferenceable(75)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !75, !range !84, !noundef !85
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !86, !range !84, !noundef !85
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 2, !tbaa !87, !range !84, !noundef !85
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 !prof !88 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 4, !tbaa !91, !range !84, !noundef !85
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5, !prof !94

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !89
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(64) %7) #10
  br label %13

13:                                               ; preds = %5, %9, %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  %15 = load i8, ptr %14, align 1, !tbaa !96, !range !84, !noundef !85
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17, !prof !97

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !89
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(64) %19) #10
  br label %25

25:                                               ; preds = %17, %21, %13
  %26 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !99
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !89
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(56) %27) #10
  br label %33

33:                                               ; preds = %29, %25
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_715ContentSpecNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_715ContentSpecNode14isSerializableEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715ContentSpecNode9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_715ContentSpecNode12getProtoTypeEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDScannerD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN11xercesc_2_710DTDScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDScannerC2EPNS_10DTDGrammarEPNS_14DocTypeHandlerEPNS_13MemoryManagerES6_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_710DTDScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !100
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  store ptr %3, ptr %7, align 8, !tbaa !102
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  store ptr %2, ptr %8, align 8, !tbaa !103
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %9, i8 0, i64 25, i1 false)
  store i32 1, ptr %10, align 4, !tbaa !104
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 9
  store ptr %1, ptr %11, align 8, !tbaa !105
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %12, i8 0, i64 40, i1 false)
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %4) #13
  %14 = load ptr, ptr %6, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %13, i32 noundef 109, i32 noundef 128, ptr noundef %14) #13
          to label %15 unwind label %17

15:                                               ; preds = %5
  %16 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 13
  store ptr %13, ptr %16, align 8, !tbaa !106
  ret void

17:                                               ; preds = %5
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %4) #10
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !107 {
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %3, ptr %0, align 8, !tbaa !109
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %2, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !112
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  store i32 %1, ptr %8, align 8, !tbaa !113
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %16, !prof !114

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %12 = load ptr, ptr %0, align 8, !tbaa !109
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 68, ptr noundef %12) #13
          to label %13 unwind label %14

13:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #11
  resume { ptr, i32 } %15

16:                                               ; preds = %4
  %17 = zext i32 %1 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = load ptr, ptr %3, align 8, !tbaa !89
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %18) #13
  store ptr %22, ptr %5, align 8, !tbaa !115
  %23 = load i32, ptr %8, align 8, !tbaa !113
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !116

25:                                               ; preds = %16
  %26 = zext i32 %23 to i64
  br label %30

27:                                               ; preds = %30, %16
  %28 = load i32, ptr %6, align 8, !tbaa !111
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %37, !prof !114

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %34, %30 ]
  %32 = load ptr, ptr %5, align 8, !tbaa !115
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr null, ptr %33, align 8, !tbaa !117
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %27, label %30, !prof !118, !llvm.loop !119

36:                                               ; preds = %27
  store i32 256, ptr %6, align 8, !tbaa !111
  br label %37

37:                                               ; preds = %36, %27
  %38 = phi i32 [ 256, %36 ], [ %28, %27 ]
  %39 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %0, align 8, !tbaa !109
  %41 = zext i32 %38 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = load ptr, ptr %40, align 8, !tbaa !89
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %42) #13
  store ptr %46, ptr %39, align 8, !tbaa !121
  store ptr null, ptr %46, align 8, !tbaa !117
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !74 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #10
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #5 comdat align 2 !prof !74 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDScannerD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 align 2 !prof !74 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_710DTDScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !125
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !89
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(72) %3) #10
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !126
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !89
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(80) %11) #10
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !127
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !89
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(75) %19) #10
  br label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 13
  %27 = load ptr, ptr %26, align 8, !tbaa !106
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %27) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %27) #10
  br label %30

30:                                               ; preds = %29, %25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = load ptr, ptr %0, align 8, !tbaa !109
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !121
  %5 = load ptr, ptr %2, align 8, !tbaa !89
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #13
          to label %8 unwind label %17

8:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
          to label %9 unwind label %17

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !109
  %11 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  %13 = load ptr, ptr %10, align 8, !tbaa !89
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #13
          to label %16 unwind label %17

16:                                               ; preds = %9
  ret void

17:                                               ; preds = %9, %8, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #5 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !113
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !116

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %35, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !112
  ret void

9:                                                ; preds = %5, %35
  %10 = phi i32 [ %3, %5 ], [ %36, %35 ]
  %11 = phi i64 [ 0, %5 ], [ %39, %35 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !115
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !117
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16, !prof !128

16:                                               ; preds = %9, %26
  %17 = phi ptr [ %19, %26 ], [ %14, %9 ]
  %18 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !129
  %20 = load ptr, ptr %17, align 8, !tbaa !131
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %20, align 8, !tbaa !89
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(75) %20) #10
  br label %26

26:                                               ; preds = %22, %16
  %27 = load ptr, ptr %0, align 8, !tbaa !109
  %28 = load ptr, ptr %27, align 8, !tbaa !89
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %17) #13
  %31 = icmp eq ptr %19, null
  br i1 %31, label %32, label %16, !prof !132, !llvm.loop !133

32:                                               ; preds = %26
  %33 = load ptr, ptr %6, align 8, !tbaa !115
  %34 = load i32, ptr %2, align 8, !tbaa !113
  br label %35

35:                                               ; preds = %32, %9
  %36 = phi i32 [ %34, %32 ], [ %10, %9 ]
  %37 = phi ptr [ %33, %32 ], [ %12, %9 ]
  %38 = getelementptr inbounds ptr, ptr %37, i64 %11
  store ptr null, ptr %38, align 8, !tbaa !117
  %39 = add nuw nsw i64 %11, 1
  %40 = zext i32 %36 to i64
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %9, label %7, !prof !134, !llvm.loop !135
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner14setScannerInfoEPNS_10XMLScannerEPNS_9ReaderMgrEPNS_12XMLBufferMgrE(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 align 2 !prof !74 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  store ptr %1, ptr %5, align 8, !tbaa !136
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  store ptr %2, ptr %6, align 8, !tbaa !137
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  store ptr %3, ptr %7, align 8, !tbaa !138
  %8 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %1) #13
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !136
  %11 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %10) #13
  br label %12

12:                                               ; preds = %4, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 14
  store i32 %13, ptr %14, align 8
  %15 = load ptr, ptr %6, align 8, !tbaa !137
  %16 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %15) #13
  %17 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 15
  store i32 %16, ptr %17, align 4, !tbaa !139
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #1 comdat align 2 !prof !140 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 2, !tbaa !141, !range !84, !noundef !85
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #1 comdat align 2 !prof !153 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %3 = load i32, ptr %2, align 4, !tbaa !154
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 comdat align 2 !prof !155 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  %4 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(163992) %3) #13
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLReader12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #1 comdat align 2 !prof !155 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 15
  %3 = load i32, ptr %2, align 8, !tbaa !157
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #5 align 2 !prof !74 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #13
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !137
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %8, i1 noundef zeroext false) #13
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i8 [ 1, %7 ], [ 0, %3 ]
  %12 = load ptr, ptr %4, align 8, !tbaa !137
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %12, i16 noundef zeroext 37) #13
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  br label %16

16:                                               ; preds = %14, %27
  %17 = phi i8 [ %28, %27 ], [ %11, %14 ]
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner11expandPERefEbbbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext false) #13
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %15, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %20, i32 noundef 226) #13
  br label %21

21:                                               ; preds = %19, %16
  %22 = load ptr, ptr %4, align 8, !tbaa !137
  %23 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %22) #13
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load ptr, ptr %4, align 8, !tbaa !137
  %26 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %25, i1 noundef zeroext false) #13
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i8 [ 1, %24 ], [ %17, %21 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !137
  %30 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %29, i16 noundef zeroext 37) #13
  br i1 %30, label %16, label %31, !llvm.loop !163

31:                                               ; preds = %27
  %32 = and i8 %28, 1
  %33 = icmp ne i8 %32, 0
  br label %34

34:                                               ; preds = %10, %31
  %35 = phi i1 [ %33, %31 ], [ %6, %10 ]
  ret i1 %35
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner11expandPERefEbbbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %6 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"class.xercesc_2_7::Janitor", align 8
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner11setHasNoDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %10, i1 noundef zeroext false) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !138
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %12) #13
  %13 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 7
  %14 = load i8, ptr %13, align 8, !tbaa !164, !range !84, !noundef !85
  %15 = icmp ne i8 %14, 0
  %16 = and i1 %15, %3
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load ptr, ptr %9, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %18, i32 noundef 258) #13
          to label %21 unwind label %19

19:                                               ; preds = %36, %32, %29, %27, %21, %17
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %194

21:                                               ; preds = %5, %17
  %22 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !137
  %24 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  %25 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %23, ptr noundef nonnull align 8 dereferenceable(40) %24) #13
          to label %26 unwind label %19

26:                                               ; preds = %21
  br i1 %25, label %32, label %27

27:                                               ; preds = %26
  %28 = load ptr, ptr %9, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %28, i32 noundef 222) #13
          to label %29 unwind label %19

29:                                               ; preds = %27
  %30 = load ptr, ptr %22, align 8, !tbaa !137
  %31 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %30, i16 noundef zeroext 59) #13
          to label %192 unwind label %19

32:                                               ; preds = %26
  %33 = load ptr, ptr %22, align 8, !tbaa !137
  %34 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %33, i16 noundef zeroext 59) #13
          to label %35 unwind label %19

35:                                               ; preds = %32
  br i1 %34, label %39, label %36

36:                                               ; preds = %35
  %37 = load ptr, ptr %9, align 8, !tbaa !136
  %38 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %37, i32 noundef 229, ptr noundef %38, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %39 unwind label %19

39:                                               ; preds = %36, %35
  %40 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 13
  %41 = load ptr, ptr %40, align 8, !tbaa !106
  %42 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  %43 = invoke noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %41, ptr noundef %42) #13
          to label %44 unwind label %52

44:                                               ; preds = %39
  %45 = icmp eq ptr %43, null
  %46 = load ptr, ptr %9, align 8, !tbaa !136
  br i1 %45, label %47, label %60

47:                                               ; preds = %44
  %48 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner13getStandaloneEv(ptr noundef nonnull align 8 dereferenceable(776) %46) #13
  %49 = load ptr, ptr %9, align 8, !tbaa !136
  br i1 %48, label %50, label %54

50:                                               ; preds = %47
  %51 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %49, i32 noundef 227, ptr noundef %51, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %192 unwind label %52

52:                                               ; preds = %71, %65, %56, %50, %39
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %194

54:                                               ; preds = %47
  %55 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %49) #13
  br i1 %55, label %56, label %192

56:                                               ; preds = %54
  %57 = load ptr, ptr %9, align 8, !tbaa !136
  %58 = call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %57) #13
  %59 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %58, i32 noundef 85, ptr noundef %59, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %192 unwind label %52

60:                                               ; preds = %44
  %61 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %46) #13
  br i1 %61, label %62, label %75

62:                                               ; preds = %60
  %63 = load ptr, ptr %9, align 8, !tbaa !136
  %64 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner13getStandaloneEv(ptr noundef nonnull align 8 dereferenceable(776) %63) #13
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load ptr, ptr %43, align 8, !tbaa !89
  %67 = getelementptr inbounds ptr, ptr %66, i64 5
  %68 = load ptr, ptr %67, align 8
  %69 = invoke noundef zeroext i1 %68(ptr noundef nonnull align 8 dereferenceable(72) %43) #13
          to label %70 unwind label %52

70:                                               ; preds = %65
  br i1 %69, label %75, label %71

71:                                               ; preds = %70
  %72 = load ptr, ptr %9, align 8, !tbaa !136
  %73 = call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %72) #13
  %74 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %73, i32 noundef 81, ptr noundef %74, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %75 unwind label %52

75:                                               ; preds = %71, %70, %62, %60
  %76 = call noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(72) %43) #13
  br i1 %76, label %77, label %175

77:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %78 = load ptr, ptr %22, align 8, !tbaa !137
  %79 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(72) %43) #13
  %80 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %43) #13
  %81 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(72) %43) #13
  %82 = xor i1 %2, true
  %83 = zext i1 %82 to i32
  %84 = load ptr, ptr %9, align 8, !tbaa !136
  %85 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv(ptr noundef nonnull align 8 dereferenceable(776) %84) #13
  %86 = load ptr, ptr %9, align 8, !tbaa !136
  %87 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner33getDisableDefaultEntityResolutionEv(ptr noundef nonnull align 8 dereferenceable(776) %86) #13
  %88 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_S2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80) %78, ptr noundef %79, ptr noundef %80, ptr noundef %81, i1 noundef zeroext false, i32 noundef %83, i32 noundef 0, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext %85, i1 noundef zeroext %87) #13
          to label %89 unwind label %108

89:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %90 = load ptr, ptr %7, align 8, !tbaa !117
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %90) #13
  %91 = icmp eq ptr %88, null
  br i1 %91, label %92, label %114

92:                                               ; preds = %89
  %93 = call ptr @__cxa_allocate_exception(i64 48) #11
  %94 = load ptr, ptr %7, align 8, !tbaa !117
  %95 = icmp eq ptr %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %94, align 8, !tbaa !89
  %98 = getelementptr inbounds ptr, ptr %97, i64 5
  %99 = load ptr, ptr %98, align 8
  %100 = invoke noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(41) %94) #13
          to label %103 unwind label %110

101:                                              ; preds = %92
  %102 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %43) #13
  br label %103

103:                                              ; preds = %96, %101
  %104 = phi ptr [ %102, %101 ], [ %100, %96 ]
  %105 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %93, ptr noundef nonnull @.str.1, i32 noundef 277, i32 noundef 46, ptr noundef %104, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %106) #13
          to label %107 unwind label %110

107:                                              ; preds = %103
  invoke void @__cxa_throw(ptr nonnull %93, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
          to label %199 unwind label %112

108:                                              ; preds = %77
  %109 = landingpad { ptr, i32 }
          cleanup
  br label %173

110:                                              ; preds = %103, %96
  %111 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %93) #11
  br label %171

112:                                              ; preds = %168, %165, %119, %114, %107
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %171

114:                                              ; preds = %89
  call void @_ZN11xercesc_2_79XMLReader13setThrowAtEndEb(ptr noundef nonnull align 8 dereferenceable(163992) %88, i1 noundef zeroext %4) #13
  %115 = load ptr, ptr %22, align 8, !tbaa !137
  %116 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %115, ptr noundef nonnull %88, ptr noundef nonnull %43) #13
          to label %117 unwind label %112

117:                                              ; preds = %114
  %118 = load ptr, ptr %9, align 8, !tbaa !136
  br i1 %116, label %121, label %119

119:                                              ; preds = %117
  %120 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %43) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %118, i32 noundef 230, ptr noundef %120, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %170 unwind label %112

121:                                              ; preds = %117
  br i1 %1, label %122, label %165

122:                                              ; preds = %121
  %123 = call noundef ptr @_ZN11xercesc_2_710XMLScanner16getEntityHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %118) #13
  %124 = icmp eq ptr %123, null
  br i1 %124, label %132, label %125

125:                                              ; preds = %122
  %126 = load ptr, ptr %7, align 8, !tbaa !117
  %127 = load ptr, ptr %123, align 8, !tbaa !89
  %128 = getelementptr inbounds ptr, ptr %127, i64 7
  %129 = load ptr, ptr %128, align 8
  invoke void %129(ptr noundef nonnull align 8 dereferenceable(8) %123, ptr noundef nonnull align 8 dereferenceable(41) %126) #13
          to label %132 unwind label %130

130:                                              ; preds = %125
  %131 = landingpad { ptr, i32 }
          cleanup
  br label %171

132:                                              ; preds = %125, %122
  %133 = load ptr, ptr %22, align 8, !tbaa !137
  %134 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %133) #13
          to label %135 unwind label %136

135:                                              ; preds = %132
  invoke void @_ZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext false) #13
          to label %159 unwind label %138

136:                                              ; preds = %160, %132
  %137 = landingpad { ptr, i32 }
          cleanup
  br label %171

138:                                              ; preds = %135
  %139 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %140 = extractvalue { ptr, i32 } %139, 0
  %141 = extractvalue { ptr, i32 } %139, 1
  %142 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #11
  %143 = icmp eq i32 %141, %142
  %144 = call ptr @__cxa_begin_catch(ptr %140) #11
  br i1 %143, label %145, label %146

145:                                              ; preds = %138
  invoke void @__cxa_rethrow() #14
          to label %199 unwind label %157

146:                                              ; preds = %138
  %147 = load ptr, ptr %22, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79ReaderMgr16cleanStackBackToEj(ptr noundef nonnull align 8 dereferenceable(80) %147, i32 noundef %134) #13
          to label %148 unwind label %154

148:                                              ; preds = %146
  br i1 %124, label %156, label %149

149:                                              ; preds = %148
  %150 = load ptr, ptr %7, align 8, !tbaa !117
  %151 = load ptr, ptr %123, align 8, !tbaa !89
  %152 = getelementptr inbounds ptr, ptr %151, i64 2
  %153 = load ptr, ptr %152, align 8
  invoke void %153(ptr noundef nonnull align 8 dereferenceable(8) %123, ptr noundef nonnull align 8 dereferenceable(41) %150) #13
          to label %156 unwind label %154

154:                                              ; preds = %156, %149, %146
  %155 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %171 unwind label %196

156:                                              ; preds = %149, %148
  invoke void @__cxa_rethrow() #14
          to label %199 unwind label %154

157:                                              ; preds = %145
  %158 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %171 unwind label %196

159:                                              ; preds = %135
  br i1 %124, label %169, label %160

160:                                              ; preds = %159
  %161 = load ptr, ptr %7, align 8, !tbaa !117
  %162 = load ptr, ptr %123, align 8, !tbaa !89
  %163 = getelementptr inbounds ptr, ptr %162, i64 2
  %164 = load ptr, ptr %163, align 8
  invoke void %164(ptr noundef nonnull align 8 dereferenceable(8) %123, ptr noundef nonnull align 8 dereferenceable(41) %161) #13
          to label %169 unwind label %136

165:                                              ; preds = %121
  %166 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %118, i1 noundef zeroext true) #13
          to label %167 unwind label %112

167:                                              ; preds = %165
  br i1 %166, label %168, label %169

168:                                              ; preds = %167
  invoke void @_ZN11xercesc_2_710DTDScanner12scanTextDeclEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
          to label %169 unwind label %112

169:                                              ; preds = %168, %167, %160, %159
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %192

170:                                              ; preds = %119
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %192

171:                                              ; preds = %130, %157, %154, %136, %112, %110
  %172 = phi { ptr, i32 } [ %113, %112 ], [ %111, %110 ], [ %131, %130 ], [ %137, %136 ], [ %155, %154 ], [ %158, %157 ]
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %173

173:                                              ; preds = %171, %108
  %174 = phi { ptr, i32 } [ %172, %171 ], [ %109, %108 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %194

175:                                              ; preds = %75
  %176 = load ptr, ptr %22, align 8, !tbaa !137
  %177 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %43) #13
  %178 = xor i1 %2, true
  %179 = zext i1 %178 to i32
  %180 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72) %43) #13
  %181 = call noundef i32 @_ZNK11xercesc_2_713XMLEntityDecl11getValueLenEv(ptr noundef nonnull align 8 dereferenceable(72) %43) #13
  %182 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr18createIntEntReaderEPKtNS_9XMLReader7RefFromENS3_5TypesES2_jbb(ptr noundef nonnull align 8 dereferenceable(80) %176, ptr noundef %177, i32 noundef %179, i32 noundef 0, ptr noundef %180, i32 noundef %181, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %183 unwind label %190

183:                                              ; preds = %175
  %184 = load ptr, ptr %22, align 8, !tbaa !137
  %185 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %184, ptr noundef %182, ptr noundef nonnull %43) #13
          to label %186 unwind label %190

186:                                              ; preds = %183
  br i1 %185, label %192, label %187

187:                                              ; preds = %186
  %188 = load ptr, ptr %9, align 8, !tbaa !136
  %189 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %43) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %188, i32 noundef 230, ptr noundef %189, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %192 unwind label %190

190:                                              ; preds = %187, %183, %175
  %191 = landingpad { ptr, i32 }
          cleanup
  br label %194

192:                                              ; preds = %187, %186, %169, %170, %54, %56, %50, %29
  %193 = phi i1 [ false, %29 ], [ false, %170 ], [ false, %54 ], [ false, %56 ], [ false, %50 ], [ true, %169 ], [ true, %186 ], [ true, %187 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i1 %193

194:                                              ; preds = %52, %173, %190, %19
  %195 = phi { ptr, i32 } [ %20, %19 ], [ %174, %173 ], [ %191, %190 ], [ %53, %52 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  resume { ptr, i32 } %195

196:                                              ; preds = %157, %154
  %197 = landingpad { ptr, i32 }
          catch ptr null
  %198 = extractvalue { ptr, i32 } %197, 0
  call void @__clang_call_terminate(ptr %198) #12
  unreachable

199:                                              ; preds = %145, %156, %107
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner11setHasNoDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 %3, ptr %4, align 1, !tbaa !165
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !166 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  %3 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  store ptr %3, ptr %0, align 8, !tbaa !117
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBufBid", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #5 comdat align 2 !prof !169 {
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !156
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext false) #13
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !170 {
  %2 = load ptr, ptr %0, align 8, !tbaa !171
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !172 {
  %2 = load ptr, ptr %0, align 8, !tbaa !171
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !173
  %5 = load i32, ptr %2, align 8, !tbaa !174
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i16, ptr %4, i64 %6
  store i16 0, ptr %7, align 2, !tbaa !175
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !74 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !131
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner13getStandaloneEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 2, !tbaa !177, !range !84, !noundef !85
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #1 comdat align 2 !prof !178 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %3 = load i8, ptr %2, align 8, !tbaa !179, !range !84, !noundef !85
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %3 = load ptr, ptr %2, align 8, !tbaa !180
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = icmp ne ptr %3, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %4, i1 true, i1 %7
  ret i1 %8
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_S2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !182
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !183
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !184, !range !84, !noundef !85
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner33getDisableDefaultEntityResolutionEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %3 = load i8, ptr %2, align 1, !tbaa !185, !range !84, !noundef !85
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !186 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !187
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLReader13setThrowAtEndEb(ptr noundef nonnull align 8 dereferenceable(163992) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 25
  store i8 %3, ptr %4, align 1, !tbaa !189
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !190
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner16getEntityHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !191
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %4 = alloca %"class.xercesc_2_7::FlagJanitor", align 8
  %5 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %6 = alloca [9 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 7
  call void @_ZN11xercesc_2_711FlagJanitorIbEC2EPbb(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %7, i1 noundef zeroext false) #13
  %8 = xor i1 %1, true
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %10) #13
          to label %11 unwind label %20

11:                                               ; preds = %3
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  %14 = icmp eq ptr %13, null
  %15 = or i1 %14, %1
  br i1 %15, label %28, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %13, align 8, !tbaa !89
  %18 = getelementptr inbounds ptr, ptr %17, i64 16
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(8) %13) #13
          to label %28 unwind label %24

20:                                               ; preds = %3
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  br label %223

24:                                               ; preds = %42, %37, %33, %28, %16
  %25 = landingpad { ptr, i32 }
          cleanup
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = extractvalue { ptr, i32 } %25, 1
  br label %220

28:                                               ; preds = %11, %16
  %29 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %30 = load ptr, ptr %29, align 8, !tbaa !137
  %31 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr27isScanningPERefOutOfLiteralEv(ptr noundef nonnull align 8 dereferenceable(80) %30) #13
          to label %32 unwind label %24

32:                                               ; preds = %28
  br i1 %31, label %33, label %43

33:                                               ; preds = %32
  %34 = load ptr, ptr %29, align 8, !tbaa !137
  %35 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %34) #13
          to label %36 unwind label %24

36:                                               ; preds = %33
  br i1 %35, label %37, label %43

37:                                               ; preds = %36
  %38 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !136
  %40 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %39, i1 noundef zeroext true) #13
          to label %41 unwind label %24

41:                                               ; preds = %37
  br i1 %40, label %42, label %43

42:                                               ; preds = %41
  invoke void @_ZN11xercesc_2_710DTDScanner12scanTextDeclEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
          to label %43 unwind label %24

43:                                               ; preds = %42, %36, %41, %32
  %44 = phi i1 [ %8, %41 ], [ %8, %36 ], [ %8, %32 ], [ false, %42 ]
  %45 = load ptr, ptr %29, align 8, !tbaa !137
  %46 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %45) #13
          to label %47 unwind label %79

47:                                               ; preds = %43
  %48 = zext i1 %44 to i8
  %49 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  br label %50

50:                                               ; preds = %197, %47
  %51 = phi i8 [ 0, %47 ], [ %198, %197 ]
  %52 = phi i8 [ 0, %47 ], [ %199, %197 ]
  %53 = phi i8 [ %48, %47 ], [ %200, %197 ]
  %54 = load ptr, ptr %29, align 8, !tbaa !137
  %55 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %54) #13
          to label %56 unwind label %83

56:                                               ; preds = %50
  %57 = zext i16 %55 to i32
  %58 = icmp eq i16 %55, 60
  %59 = load ptr, ptr %29, align 8, !tbaa !137
  br i1 %58, label %60, label %98

60:                                               ; preds = %56
  %61 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %59) #13
          to label %62 unwind label %88

62:                                               ; preds = %60
  %63 = load ptr, ptr %29, align 8, !tbaa !137
  %64 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %63) #13
  %65 = call noundef i32 @_ZNK11xercesc_2_79XMLReader7getTypeEv(ptr noundef nonnull align 8 dereferenceable(163992) %64) #13
  %66 = icmp eq i32 %65, 0
  %67 = load ptr, ptr %29, align 8, !tbaa !137
  %68 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %67) #13
          to label %69 unwind label %90

69:                                               ; preds = %62
  %70 = icmp ne i8 %53, 0
  invoke void @_ZN11xercesc_2_710DTDScanner14scanMarkupDeclEb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext %70) #13
          to label %71 unwind label %90

71:                                               ; preds = %69
  %72 = load ptr, ptr %29, align 8, !tbaa !137
  %73 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %72) #13
          to label %74 unwind label %90

74:                                               ; preds = %71
  %75 = icmp eq i32 %73, %61
  br i1 %75, label %197, label %76

76:                                               ; preds = %74
  %77 = load ptr, ptr %49, align 8, !tbaa !136
  br i1 %66, label %78, label %93

78:                                               ; preds = %76
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %77, i32 noundef 299) #13
          to label %197 unwind label %90

79:                                               ; preds = %43
  %80 = landingpad { ptr, i32 }
          cleanup
  %81 = extractvalue { ptr, i32 } %80, 0
  %82 = extractvalue { ptr, i32 } %80, 1
  br label %220

83:                                               ; preds = %50, %105, %107, %114, %118, %121, %143, %158, %160
  %84 = phi i8 [ %51, %50 ], [ %51, %143 ], [ %51, %158 ], [ %51, %160 ], [ %51, %118 ], [ %51, %121 ], [ %51, %114 ], [ 1, %105 ], [ 0, %107 ]
  %85 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %163

86:                                               ; preds = %133, %135, %126, %129, %137
  %87 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %163

88:                                               ; preds = %60
  %89 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %163

90:                                               ; preds = %95, %78, %71, %69, %62
  %91 = phi i8 [ 0, %78 ], [ 0, %95 ], [ 0, %71 ], [ 1, %69 ], [ %52, %62 ]
  %92 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %163

93:                                               ; preds = %76
  %94 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %77) #13
  br i1 %94, label %95, label %197

95:                                               ; preds = %93
  %96 = load ptr, ptr %49, align 8, !tbaa !136
  %97 = call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %96) #13
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %97, i32 noundef 86) #13
          to label %197 unwind label %90

98:                                               ; preds = %56
  %99 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %59) #13
  %100 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %99, i16 noundef zeroext %55) #13
  br i1 %100, label %101, label %116

101:                                              ; preds = %98
  %102 = load ptr, ptr %12, align 8, !tbaa !103
  %103 = icmp eq ptr %102, null
  %104 = load ptr, ptr %29, align 8, !tbaa !137
  br i1 %103, label %114, label %105

105:                                              ; preds = %101
  %106 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  invoke void @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %104, ptr noundef nonnull align 8 dereferenceable(40) %106) #13
          to label %107 unwind label %83

107:                                              ; preds = %105
  %108 = load ptr, ptr %12, align 8, !tbaa !103
  %109 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  %110 = call noundef i32 @_ZNK11xercesc_2_79XMLBufBid6getLenEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  %111 = load ptr, ptr %108, align 8, !tbaa !89
  %112 = getelementptr inbounds ptr, ptr %111, i64 6
  %113 = load ptr, ptr %112, align 8
  invoke void %113(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef %109, i32 noundef %110) #13
          to label %197 unwind label %83

114:                                              ; preds = %101
  %115 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %104, i1 noundef zeroext false) #13
          to label %197 unwind label %83

116:                                              ; preds = %98
  %117 = icmp eq i16 %55, 37
  br i1 %117, label %118, label %123

118:                                              ; preds = %116
  %119 = load ptr, ptr %29, align 8, !tbaa !137
  %120 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %119) #13
          to label %121 unwind label %83

121:                                              ; preds = %118
  %122 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner11expandPERefEbbbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %197 unwind label %83

123:                                              ; preds = %116
  %124 = icmp eq i16 %55, 93
  %125 = and i1 %124, %1
  br i1 %125, label %126, label %141

126:                                              ; preds = %123
  %127 = load ptr, ptr %29, align 8, !tbaa !137
  %128 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %127) #13
          to label %129 unwind label %86

129:                                              ; preds = %126
  %130 = load ptr, ptr %29, align 8, !tbaa !137
  %131 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %130, i16 noundef zeroext 93) #13
          to label %132 unwind label %86

132:                                              ; preds = %129
  br i1 %131, label %137, label %133

133:                                              ; preds = %132, %140
  %134 = load ptr, ptr %49, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %134, i32 noundef 250) #13
          to label %135 unwind label %86

135:                                              ; preds = %133
  %136 = load ptr, ptr %29, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %136, i16 noundef zeroext 62) #13
          to label %219 unwind label %86

137:                                              ; preds = %132
  %138 = load ptr, ptr %29, align 8, !tbaa !137
  %139 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %138, i16 noundef zeroext 62) #13
          to label %140 unwind label %86

140:                                              ; preds = %137
  br i1 %139, label %219, label %133

141:                                              ; preds = %123
  %142 = icmp eq i16 %55, 0
  br i1 %142, label %219, label %143

143:                                              ; preds = %141
  %144 = load ptr, ptr %29, align 8, !tbaa !137
  %145 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %144) #13
          to label %146 unwind label %83

146:                                              ; preds = %143
  %147 = load ptr, ptr %29, align 8, !tbaa !137
  %148 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %147) #13
  %149 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %148, i16 noundef zeroext %55) #13
  br i1 %149, label %158, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %6) #11
  %152 = load ptr, ptr %151, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %57, ptr noundef nonnull %6, i32 noundef 8, i32 noundef 16, ptr noundef %152) #13
          to label %153 unwind label %156

153:                                              ; preds = %150
  %154 = load ptr, ptr %49, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %154, i32 noundef 196, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %155 unwind label %156

155:                                              ; preds = %153
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %6) #11
  br label %160

156:                                              ; preds = %153, %150
  %157 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %6) #11
  br label %163

158:                                              ; preds = %146
  %159 = load ptr, ptr %49, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %159, i32 noundef 186) #13
          to label %160 unwind label %83

160:                                              ; preds = %158, %155
  %161 = load ptr, ptr %29, align 8, !tbaa !137
  %162 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %161, ptr noundef nonnull @_ZZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbbE6toSkip) #13
          to label %197 unwind label %83

163:                                              ; preds = %83, %86, %88, %90, %156
  %164 = phi i8 [ %51, %156 ], [ %51, %90 ], [ %51, %88 ], [ %84, %83 ], [ %51, %86 ]
  %165 = phi i8 [ %52, %156 ], [ %91, %90 ], [ %52, %88 ], [ %52, %83 ], [ %52, %86 ]
  %166 = phi { ptr, i32 } [ %157, %156 ], [ %92, %90 ], [ %89, %88 ], [ %85, %83 ], [ %87, %86 ]
  %167 = extractvalue { ptr, i32 } %166, 0
  %168 = extractvalue { ptr, i32 } %166, 1
  %169 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #11
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %220

171:                                              ; preds = %163
  %172 = call ptr @__cxa_begin_catch(ptr %167) #11
  %173 = and i8 %165, 1
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = load ptr, ptr %49, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %176, i32 noundef 231) #13
          to label %179 unwind label %177

177:                                              ; preds = %186, %175
  %178 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %203 unwind label %228

179:                                              ; preds = %175, %171
  %180 = phi i8 [ %165, %171 ], [ 0, %175 ]
  %181 = and i8 %164, 1
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %192, label %183

183:                                              ; preds = %179
  %184 = load ptr, ptr %12, align 8, !tbaa !103
  %185 = icmp eq ptr %184, null
  br i1 %185, label %192, label %186

186:                                              ; preds = %183
  %187 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  %188 = call noundef i32 @_ZNK11xercesc_2_79XMLBufBid6getLenEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  %189 = load ptr, ptr %184, align 8, !tbaa !89
  %190 = getelementptr inbounds ptr, ptr %189, i64 6
  %191 = load ptr, ptr %190, align 8
  invoke void %191(ptr noundef nonnull align 8 dereferenceable(8) %184, ptr noundef %187, i32 noundef %188) #13
          to label %192 unwind label %177

192:                                              ; preds = %183, %186, %179
  %193 = phi i8 [ %164, %179 ], [ 0, %186 ], [ 0, %183 ]
  %194 = call noundef i32 @_ZNK11xercesc_2_720EndOfEntityException12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(12) %172) #13
  invoke void @__cxa_end_catch()
          to label %195 unwind label %201

195:                                              ; preds = %192
  %196 = icmp eq i32 %46, %194
  br i1 %196, label %207, label %197

197:                                              ; preds = %195, %121, %160, %107, %114, %78, %95, %93, %74
  %198 = phi i8 [ %193, %195 ], [ 0, %107 ], [ %51, %114 ], [ %51, %121 ], [ %51, %160 ], [ %51, %78 ], [ %51, %95 ], [ %51, %93 ], [ %51, %74 ]
  %199 = phi i8 [ %180, %195 ], [ %52, %107 ], [ %52, %114 ], [ %52, %121 ], [ %52, %160 ], [ 0, %78 ], [ 0, %95 ], [ 0, %93 ], [ 0, %74 ]
  %200 = phi i8 [ %53, %195 ], [ 0, %107 ], [ 0, %114 ], [ 0, %121 ], [ 0, %160 ], [ 0, %78 ], [ 0, %95 ], [ 0, %93 ], [ 0, %74 ]
  br label %50, !llvm.loop !192

201:                                              ; preds = %192
  %202 = landingpad { ptr, i32 }
          cleanup
  br label %203

203:                                              ; preds = %177, %201
  %204 = phi { ptr, i32 } [ %202, %201 ], [ %178, %177 ]
  %205 = extractvalue { ptr, i32 } %204, 0
  %206 = extractvalue { ptr, i32 } %204, 1
  br label %220

207:                                              ; preds = %195
  %208 = load ptr, ptr %12, align 8, !tbaa !103
  %209 = icmp ne ptr %208, null
  %210 = and i1 %209, %2
  br i1 %210, label %211, label %219

211:                                              ; preds = %207
  %212 = load ptr, ptr %208, align 8, !tbaa !89
  %213 = getelementptr inbounds ptr, ptr %212, i64 10
  %214 = load ptr, ptr %213, align 8
  invoke void %214(ptr noundef nonnull align 8 dereferenceable(8) %208) #13
          to label %219 unwind label %215

215:                                              ; preds = %211
  %216 = landingpad { ptr, i32 }
          cleanup
  %217 = extractvalue { ptr, i32 } %216, 0
  %218 = extractvalue { ptr, i32 } %216, 1
  br label %220

219:                                              ; preds = %140, %135, %141, %211, %207
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_711FlagJanitorIbED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret void

220:                                              ; preds = %163, %79, %203, %215, %24
  %221 = phi i32 [ %27, %24 ], [ %82, %79 ], [ %218, %215 ], [ %206, %203 ], [ %168, %163 ]
  %222 = phi ptr [ %26, %24 ], [ %81, %79 ], [ %217, %215 ], [ %205, %203 ], [ %167, %163 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #10
  br label %223

223:                                              ; preds = %220, %20
  %224 = phi i32 [ %221, %220 ], [ %23, %20 ]
  %225 = phi ptr [ %222, %220 ], [ %22, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_711FlagJanitorIbED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  %226 = insertvalue { ptr, i32 } poison, ptr %225, 0
  %227 = insertvalue { ptr, i32 } %226, i32 %224, 1
  resume { ptr, i32 } %227

228:                                              ; preds = %177
  %229 = landingpad { ptr, i32 }
          catch ptr null
  %230 = extractvalue { ptr, i32 } %229, 0
  call void @__clang_call_terminate(ptr %230) #12
  unreachable
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ReaderMgr16cleanStackBackToEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #2

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner12scanTextDeclEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %3 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %5, i1 noundef zeroext false) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !138
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %8) #13
  %9 = load ptr, ptr %4, align 8, !tbaa !137
  %10 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgVersionStringE) #13
          to label %11 unwind label %15

11:                                               ; preds = %1
  br i1 %10, label %12, label %44

12:                                               ; preds = %11
  %13 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner6scanEqEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
          to label %14 unwind label %15

14:                                               ; preds = %12
  br i1 %13, label %17, label %21

15:                                               ; preds = %21, %25, %40, %17, %12, %1
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %125

17:                                               ; preds = %14
  %18 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %19 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner15getQuotedStringERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %18) #13
          to label %20 unwind label %15

20:                                               ; preds = %17
  br i1 %19, label %27, label %21

21:                                               ; preds = %20, %14
  %22 = phi i32 [ 180, %14 ], [ 188, %20 ]
  %23 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %24, i32 noundef %22) #13
          to label %25 unwind label %15

25:                                               ; preds = %21
  %26 = load ptr, ptr %4, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %26, i16 noundef zeroext 62) #13
          to label %120 unwind label %15

27:                                               ; preds = %20
  %28 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %29 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %28, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgVersion1_1E) #13
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !136
  %33 = call noundef i32 @_ZNK11xercesc_2_710XMLScanner13getXMLVersionEv(ptr noundef nonnull align 8 dereferenceable(776) %32) #13
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %44, label %40

35:                                               ; preds = %27
  %36 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %37 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %36, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgVersion1_0E) #13
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  br label %40

40:                                               ; preds = %30, %38
  %41 = phi ptr [ %39, %38 ], [ %31, %30 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !136
  %43 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %42, i32 noundef 189, ptr noundef %43, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %44 unwind label %15

44:                                               ; preds = %40, %30, %35, %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %45 = load ptr, ptr %7, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %45) #13
          to label %46 unwind label %56

46:                                               ; preds = %44
  %47 = load ptr, ptr %4, align 8, !tbaa !137
  %48 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %47, i1 noundef zeroext false) #13
          to label %49 unwind label %58

49:                                               ; preds = %46
  %50 = load ptr, ptr %4, align 8, !tbaa !137
  %51 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %50, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgEncodingStringE) #13
          to label %52 unwind label %60

52:                                               ; preds = %49
  br i1 %51, label %53, label %75

53:                                               ; preds = %52
  %54 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner6scanEqEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
          to label %55 unwind label %60

55:                                               ; preds = %53
  br i1 %54, label %62, label %75

56:                                               ; preds = %44
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %123

58:                                               ; preds = %46
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %121

60:                                               ; preds = %75, %92, %79, %95, %115, %109, %101, %88, %84, %81, %71, %67, %62, %53, %49
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %121

62:                                               ; preds = %55
  %63 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  %64 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner15getQuotedStringERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %63) #13
          to label %65 unwind label %60

65:                                               ; preds = %62
  %66 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBufBid7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  br i1 %66, label %71, label %67

67:                                               ; preds = %65
  %68 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  %69 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString14isValidEncNameEPKt(ptr noundef %68) #13
          to label %70 unwind label %60

70:                                               ; preds = %67
  br i1 %69, label %81, label %71

71:                                               ; preds = %70, %65
  %72 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %73 = load ptr, ptr %72, align 8, !tbaa !136
  %74 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %73, i32 noundef 191, ptr noundef %74, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %79 unwind label %60

75:                                               ; preds = %52, %55
  %76 = phi i32 [ 180, %55 ], [ 287, %52 ]
  %77 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %78 = load ptr, ptr %77, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %78, i32 noundef %76) #13
          to label %79 unwind label %60

79:                                               ; preds = %75, %71
  %80 = load ptr, ptr %4, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %80, i16 noundef zeroext 62) #13
          to label %119 unwind label %60

81:                                               ; preds = %70
  %82 = load ptr, ptr %4, align 8, !tbaa !137
  %83 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %82, i1 noundef zeroext false) #13
          to label %84 unwind label %60

84:                                               ; preds = %81
  %85 = load ptr, ptr %4, align 8, !tbaa !137
  %86 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %85, i16 noundef zeroext 63) #13
          to label %87 unwind label %60

87:                                               ; preds = %84
  br i1 %86, label %88, label %92

88:                                               ; preds = %87
  %89 = load ptr, ptr %4, align 8, !tbaa !137
  %90 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %89, i16 noundef zeroext 62) #13
          to label %91 unwind label %60

91:                                               ; preds = %88
  br i1 %90, label %97, label %92

92:                                               ; preds = %91, %87
  %93 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %94 = load ptr, ptr %93, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %94, i32 noundef 190) #13
          to label %95 unwind label %60

95:                                               ; preds = %92
  %96 = load ptr, ptr %4, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %96, i16 noundef zeroext 62) #13
          to label %97 unwind label %60

97:                                               ; preds = %95, %91
  %98 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !103
  %100 = icmp eq ptr %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %103 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  %104 = load ptr, ptr %99, align 8, !tbaa !89
  %105 = getelementptr inbounds ptr, ptr %104, i64 17
  %106 = load ptr, ptr %105, align 8
  invoke void %106(ptr noundef nonnull align 8 dereferenceable(8) %99, ptr noundef %102, ptr noundef %103) #13
          to label %107 unwind label %60

107:                                              ; preds = %101, %97
  %108 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBufBid7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  br i1 %108, label %119, label %109

109:                                              ; preds = %107
  %110 = load ptr, ptr %4, align 8, !tbaa !137
  %111 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %110) #13
  %112 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  %113 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11setEncodingEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %111, ptr noundef %112) #13
          to label %114 unwind label %60

114:                                              ; preds = %109
  br i1 %113, label %119, label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %117 = load ptr, ptr %116, align 8, !tbaa !136
  %118 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %117, i32 noundef 4, ptr noundef %118, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %119 unwind label %60

119:                                              ; preds = %79, %107, %115, %114
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %120

120:                                              ; preds = %25, %119
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void

121:                                              ; preds = %60, %58
  %122 = phi { ptr, i32 } [ %61, %60 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  br label %123

123:                                              ; preds = %121, %56
  %124 = phi { ptr, i32 } [ %122, %121 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %125

125:                                              ; preds = %123, %15
  %126 = phi { ptr, i32 } [ %124, %123 ], [ %16, %15 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %126
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !186 {
  tail call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #13
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ReaderMgr18createIntEntReaderEPKtNS_9XMLReader7RefFromENS3_5TypesES2_jbb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !193
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713XMLEntityDecl11getValueLenEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !194
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !166 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBufBid", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !167
  %4 = load ptr, ptr %0, align 8, !tbaa !171
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret void

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #12
  unreachable
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !195 {
  store i32 0, ptr %0, align 8, !tbaa !174
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  store i16 0, ptr %3, align 2, !tbaa !175
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #5 comdat align 2 !prof !196 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !113
  %6 = load ptr, ptr %0, align 8, !tbaa !109
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef %5, ptr noundef %6) #13
  store i32 %7, ptr %2, align 4, !tbaa !197
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !117
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !198

14:                                               ; preds = %3, %19
  %15 = phi ptr [ %21, %19 ], [ %12, %3 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !131
  %17 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %16) #13
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %17) #13
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !117
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !prof !199, !llvm.loop !200

23:                                               ; preds = %14, %19, %3
  %24 = phi ptr [ null, %3 ], [ null, %19 ], [ %15, %14 ]
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !201 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5, !prof !202

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 2, !tbaa !175
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %28, label %8, !prof !203

8:                                                ; preds = %5
  %9 = zext i16 %6 to i32
  %10 = getelementptr inbounds i16, ptr %0, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !175
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %25, label %13, !prof !204

13:                                               ; preds = %8, %13
  %14 = phi i16 [ %23, %13 ], [ %11, %8 ]
  %15 = phi ptr [ %22, %13 ], [ %10, %8 ]
  %16 = phi i32 [ %21, %13 ], [ %9, %8 ]
  %17 = mul i32 %16, 38
  %18 = lshr i32 %16, 24
  %19 = add i32 %17, %18
  %20 = zext i16 %14 to i32
  %21 = add i32 %19, %20
  %22 = getelementptr inbounds i16, ptr %15, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !175
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %13, !prof !205, !llvm.loop !206

25:                                               ; preds = %13, %8
  %26 = phi i32 [ %9, %8 ], [ %21, %13 ]
  %27 = urem i32 %26, %1
  br label %28

28:                                               ; preds = %3, %5, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !207 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !208

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !175
  %8 = load i16, ptr %1, align 2, !tbaa !175
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !209

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !210

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !175
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !211

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !212

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !175
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !213

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !214

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !175
  %28 = load i16, ptr %26, align 2, !tbaa !175
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !215, !llvm.loop !216

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 !prof !196 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !190
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !74 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #10
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #5 comdat align 2 !prof !74 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !186 {
  %3 = load ptr, ptr %0, align 8, !tbaa !187
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !217

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !89
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(41) %3) #10
  br label %9

9:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !187
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner15getQuotedStringERNS_9XMLBufferE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #5 align 2 !prof !74 {
  %3 = alloca i16, align 2
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 2 dereferenceable(2) %3) #13
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8, !tbaa !137
  %9 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8) #13
  %10 = load i16, ptr %3, align 2, !tbaa !175
  %11 = icmp eq i16 %9, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %7, %15
  %13 = phi i16 [ %17, %15 ], [ %9, %7 ]
  %14 = icmp ne i16 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %13) #13
  %16 = load ptr, ptr %4, align 8, !tbaa !137
  %17 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #13
  %18 = load i16, ptr %3, align 2, !tbaa !175
  %19 = icmp eq i16 %17, %18
  br i1 %19, label %20, label %12

20:                                               ; preds = %15, %12, %7, %2
  %21 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %12 ], [ %14, %15 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  ret i1 %21
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !218 {
  %3 = load i32, ptr %0, align 8, !tbaa !174
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !219
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !220

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %8 = load i32, ptr %0, align 8, !tbaa !174
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %3, %2 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !173
  %13 = add i32 %10, 1
  store i32 %13, ptr %0, align 8, !tbaa !174
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  store i16 %1, ptr %15, align 2, !tbaa !175
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710DTDScanner10scanAttDefERNS_14DTDElementDeclERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %4 = alloca [10 x i16], align 16
  %5 = alloca [9 x i16], align 16
  %6 = alloca [8 x i16], align 16
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %13, i32 noundef 174) #13
  br label %220

14:                                               ; preds = %3
  %15 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  %16 = tail call noundef ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %15) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %42, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !136
  %21 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  %22 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #13
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %20, i32 noundef 3, ptr noundef %21, ptr noundef %22, ptr noundef null, ptr noundef null) #13
  %23 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !125
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %18
  %27 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !100
  %29 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 72, ptr noundef %28) #13
  %30 = load ptr, ptr %27, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_79DTDAttDefC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %29, ptr noundef %30) #13
          to label %31 unwind label %36

31:                                               ; preds = %26
  store ptr %29, ptr %23, align 8, !tbaa !125
  %32 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 8
  %33 = load i32, ptr %32, align 4, !tbaa !104
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4, !tbaa !104
  tail call void @_ZN11xercesc_2_79XMLAttDef5setIdEj(ptr noundef nonnull align 8 dereferenceable(56) %29, i32 noundef %33) #13
  %35 = load ptr, ptr %23, align 8, !tbaa !125
  br label %38

36:                                               ; preds = %26
  %37 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %29, ptr noundef %28) #10
  br label %218

38:                                               ; preds = %31, %18
  %39 = phi ptr [ %35, %31 ], [ %24, %18 ]
  %40 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  tail call void @_ZN11xercesc_2_79DTDAttDef7setNameEPKt(ptr noundef nonnull align 8 dereferenceable(72) %39, ptr noundef %40) #13
  %41 = load ptr, ptr %23, align 8, !tbaa !125
  br label %57

42:                                               ; preds = %14
  %43 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !102
  %45 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 72, ptr noundef %44) #13
  %46 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  %47 = load ptr, ptr %43, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_79DTDAttDefC1EPKtNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %45, ptr noundef %46, i32 noundef 0, i32 noundef 4, ptr noundef %47) #13
          to label %48 unwind label %55

48:                                               ; preds = %42
  %49 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 8
  %50 = load i32, ptr %49, align 4, !tbaa !104
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4, !tbaa !104
  tail call void @_ZN11xercesc_2_79XMLAttDef5setIdEj(ptr noundef nonnull align 8 dereferenceable(56) %45, i32 noundef %50) #13
  %52 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner23isReadingExternalEntityEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
  tail call void @_ZN11xercesc_2_79XMLAttDef25setExternalAttDeclarationEb(ptr noundef nonnull align 8 dereferenceable(56) %45, i1 noundef zeroext %52) #13
  tail call void @_ZN11xercesc_2_714DTDElementDecl9addAttDefEPNS_9DTDAttDefE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %45) #13
  %53 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !125
  br label %57

55:                                               ; preds = %42
  %56 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %45, ptr noundef %44) #10
  br label %218

57:                                               ; preds = %48, %38
  %58 = phi ptr [ %41, %38 ], [ %54, %48 ]
  %59 = phi ptr [ %41, %38 ], [ %45, %48 ]
  %60 = icmp eq ptr %59, %58
  %61 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %64 = load ptr, ptr %63, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %64, i32 noundef 207) #13
  br label %65

65:                                               ; preds = %62, %57
  %66 = load ptr, ptr %8, align 8, !tbaa !137
  %67 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %66, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgCDATAStringE) #13
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  tail call void @_ZN11xercesc_2_79XMLAttDef7setTypeENS0_8AttTypesE(ptr noundef nonnull align 8 dereferenceable(56) %59, i32 noundef 0) #13
  br label %132

69:                                               ; preds = %65
  %70 = load ptr, ptr %8, align 8, !tbaa !137
  %71 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %70, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni10fgIDStringE) #13
  %72 = load ptr, ptr %8, align 8, !tbaa !137
  br i1 %71, label %73, label %81

73:                                               ; preds = %69
  %74 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %72, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgRefStringE) #13
  br i1 %74, label %76, label %75

75:                                               ; preds = %73
  tail call void @_ZN11xercesc_2_79XMLAttDef7setTypeENS0_8AttTypesE(ptr noundef nonnull align 8 dereferenceable(56) %59, i32 noundef 1) #13
  br label %132

76:                                               ; preds = %73
  %77 = load ptr, ptr %8, align 8, !tbaa !137
  %78 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %77, i16 noundef zeroext 83) #13
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  tail call void @_ZN11xercesc_2_79XMLAttDef7setTypeENS0_8AttTypesE(ptr noundef nonnull align 8 dereferenceable(56) %59, i32 noundef 2) #13
  br label %132

80:                                               ; preds = %76
  tail call void @_ZN11xercesc_2_79XMLAttDef7setTypeENS0_8AttTypesE(ptr noundef nonnull align 8 dereferenceable(56) %59, i32 noundef 3) #13
  br label %132

81:                                               ; preds = %69
  %82 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %72, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgEntitStringE) #13
  %83 = load ptr, ptr %8, align 8, !tbaa !137
  br i1 %82, label %84, label %99

84:                                               ; preds = %81
  %85 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %83, i16 noundef zeroext 89) #13
  br i1 %85, label %86, label %87

86:                                               ; preds = %84
  tail call void @_ZN11xercesc_2_79XMLAttDef7setTypeENS0_8AttTypesE(ptr noundef nonnull align 8 dereferenceable(56) %59, i32 noundef 4) #13
  br label %132

87:                                               ; preds = %84
  %88 = load ptr, ptr %8, align 8, !tbaa !137
  %89 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %88, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgIESStringE) #13
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  tail call void @_ZN11xercesc_2_79XMLAttDef7setTypeENS0_8AttTypesE(ptr noundef nonnull align 8 dereferenceable(56) %59, i32 noundef 5) #13
  br label %132

91:                                               ; preds = %87
  %92 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %93 = load ptr, ptr %92, align 8, !tbaa !136
  %94 = load ptr, ptr %59, align 8, !tbaa !89
  %95 = getelementptr inbounds ptr, ptr %94, i64 5
  %96 = load ptr, ptr %95, align 8
  %97 = tail call noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(72) %59) #13
  %98 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #13
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %93, i32 noundef 201, ptr noundef %97, ptr noundef %98, ptr noundef null, ptr noundef null) #13
  br label %220

99:                                               ; preds = %81
  %100 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %83, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgNmTokenStringE) #13
  %101 = load ptr, ptr %8, align 8, !tbaa !137
  br i1 %100, label %102, label %106

102:                                              ; preds = %99
  %103 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %101, i16 noundef zeroext 83) #13
  br i1 %103, label %104, label %105

104:                                              ; preds = %102
  tail call void @_ZN11xercesc_2_79XMLAttDef7setTypeENS0_8AttTypesE(ptr noundef nonnull align 8 dereferenceable(56) %59, i32 noundef 7) #13
  br label %132

105:                                              ; preds = %102
  tail call void @_ZN11xercesc_2_79XMLAttDef7setTypeENS0_8AttTypesE(ptr noundef nonnull align 8 dereferenceable(56) %59, i32 noundef 6) #13
  br label %132

106:                                              ; preds = %99
  %107 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %101, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgNotationStringE) #13
  br i1 %107, label %108, label %117

108:                                              ; preds = %106
  %109 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  br i1 %109, label %113, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %112 = load ptr, ptr %111, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %112, i32 noundef 207) #13
  br label %113

113:                                              ; preds = %110, %108
  tail call void @_ZN11xercesc_2_79XMLAttDef7setTypeENS0_8AttTypesE(ptr noundef nonnull align 8 dereferenceable(56) %59, i32 noundef 8) #13
  %114 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner15scanEnumerationERKNS_9DTDAttDefERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(72) %59, ptr noundef nonnull align 8 dereferenceable(40) %2, i1 noundef zeroext true) #13
  br i1 %114, label %115, label %220

115:                                              ; preds = %113
  %116 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  tail call void @_ZN11xercesc_2_79XMLAttDef14setEnumerationEPKt(ptr noundef nonnull align 8 dereferenceable(56) %59, ptr noundef %116) #13
  br label %132

117:                                              ; preds = %106
  %118 = load ptr, ptr %8, align 8, !tbaa !137
  %119 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %118, i16 noundef zeroext 40) #13
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  tail call void @_ZN11xercesc_2_79XMLAttDef7setTypeENS0_8AttTypesE(ptr noundef nonnull align 8 dereferenceable(56) %59, i32 noundef 9) #13
  %121 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner15scanEnumerationERKNS_9DTDAttDefERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(72) %59, ptr noundef nonnull align 8 dereferenceable(40) %2, i1 noundef zeroext false) #13
  br i1 %121, label %122, label %220

122:                                              ; preds = %120
  %123 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  tail call void @_ZN11xercesc_2_79XMLAttDef14setEnumerationEPKt(ptr noundef nonnull align 8 dereferenceable(56) %59, ptr noundef %123) #13
  br label %132

124:                                              ; preds = %117
  %125 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %126 = load ptr, ptr %125, align 8, !tbaa !136
  %127 = load ptr, ptr %59, align 8, !tbaa !89
  %128 = getelementptr inbounds ptr, ptr %127, i64 5
  %129 = load ptr, ptr %128, align 8
  %130 = tail call noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(72) %59) #13
  %131 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #13
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %126, i32 noundef 201, ptr noundef %130, ptr noundef %131, ptr noundef null, ptr noundef null) #13
  br label %220

132:                                              ; preds = %79, %80, %75, %105, %104, %122, %115, %86, %90, %68
  %133 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  br i1 %133, label %137, label %134

134:                                              ; preds = %132
  %135 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %136 = load ptr, ptr %135, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %136, i32 noundef 207) #13
  br label %137

137:                                              ; preds = %134, %132
  tail call void @_ZN11xercesc_2_710DTDScanner15scanDefaultDeclERNS_9DTDAttDefE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(72) %59) #13
  %138 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %139 = load ptr, ptr %138, align 8, !tbaa !136
  %140 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %139) #13
  br i1 %140, label %141, label %210

141:                                              ; preds = %137
  %142 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %59) #13
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %157

144:                                              ; preds = %141
  %145 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %59) #13
  %146 = icmp eq i32 %145, 4
  br i1 %146, label %157, label %147

147:                                              ; preds = %144
  %148 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %59) #13
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %157, label %150

150:                                              ; preds = %147
  %151 = load ptr, ptr %138, align 8, !tbaa !136
  %152 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %151) #13
  %153 = load ptr, ptr %59, align 8, !tbaa !89
  %154 = getelementptr inbounds ptr, ptr %153, i64 5
  %155 = load ptr, ptr %154, align 8
  %156 = tail call noundef ptr %155(ptr noundef nonnull align 8 dereferenceable(72) %59) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %152, i32 noundef 8, ptr noundef %156, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %157

157:                                              ; preds = %144, %147, %150, %141
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %4, ptr noundef nonnull align 16 dereferenceable(20) @__const._ZN11xercesc_2_710DTDScanner10scanAttDefERNS_14DTDElementDeclERNS_9XMLBufferE.fgXMLSpace, i64 20, i1 false)
  %158 = load ptr, ptr %59, align 8, !tbaa !89
  %159 = getelementptr inbounds ptr, ptr %158, i64 5
  %160 = load ptr, ptr %159, align 8
  %161 = tail call noundef ptr %160(ptr noundef nonnull align 8 dereferenceable(72) %59) #13
  %162 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %161, ptr noundef nonnull %4) #13
  br i1 %162, label %163, label %209

163:                                              ; preds = %157
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) %5, ptr noundef nonnull align 16 dereferenceable(18) @__const._ZN11xercesc_2_710DTDScanner10scanAttDefERNS_14DTDElementDeclERNS_9XMLBufferE.fgPreserve, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN11xercesc_2_710DTDScanner10scanAttDefERNS_14DTDElementDeclERNS_9XMLBufferE.fgDefault, i64 16, i1 false)
  %164 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %59) #13
  %165 = icmp eq i32 %164, 9
  br i1 %165, label %166, label %201

166:                                              ; preds = %163
  %167 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %59) #13
  %168 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !100
  %170 = call noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef %167, ptr noundef %169) #13
  %171 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %170) #13
  switch i32 %171, label %197 [
    i32 1, label %172
    i32 2, label %178
  ]

172:                                              ; preds = %166
  %173 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %170, i32 noundef 0) #13
  %174 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %173, ptr noundef nonnull %6) #13
  br i1 %174, label %204, label %175

175:                                              ; preds = %172
  %176 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %170, i32 noundef 0) #13
  %177 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %176, ptr noundef nonnull %5) #13
  br i1 %177, label %204, label %197

178:                                              ; preds = %166
  %179 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %170, i32 noundef 0) #13
  %180 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %179, ptr noundef nonnull %6) #13
  br i1 %180, label %181, label %188

181:                                              ; preds = %178
  %182 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %170, i32 noundef 1) #13
  %183 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %182, ptr noundef nonnull %5) #13
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load ptr, ptr %170, align 8, !tbaa !89
  %186 = getelementptr inbounds ptr, ptr %185, i64 1
  %187 = load ptr, ptr %186, align 8
  call void %187(ptr noundef nonnull align 8 dereferenceable(40) %170) #10
  br label %208

188:                                              ; preds = %178, %181
  %189 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %170, i32 noundef 1) #13
  %190 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %189, ptr noundef nonnull %6) #13
  br i1 %190, label %191, label %197

191:                                              ; preds = %188
  %192 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %170, i32 noundef 0) #13
  %193 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %192, ptr noundef nonnull %5) #13
  %194 = load ptr, ptr %170, align 8, !tbaa !89
  %195 = getelementptr inbounds ptr, ptr %194, i64 1
  %196 = load ptr, ptr %195, align 8
  call void %196(ptr noundef nonnull align 8 dereferenceable(40) %170) #10
  br i1 %193, label %208, label %201

197:                                              ; preds = %166, %175, %188
  %198 = load ptr, ptr %170, align 8, !tbaa !89
  %199 = getelementptr inbounds ptr, ptr %198, i64 1
  %200 = load ptr, ptr %199, align 8
  call void %200(ptr noundef nonnull align 8 dereferenceable(40) %170) #10
  br label %201

201:                                              ; preds = %163, %197, %191
  %202 = load ptr, ptr %138, align 8, !tbaa !136
  %203 = call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %202) #13
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %203, i32 noundef 50) #13
  br label %208

204:                                              ; preds = %172, %175
  %205 = load ptr, ptr %170, align 8, !tbaa !89
  %206 = getelementptr inbounds ptr, ptr %205, i64 1
  %207 = load ptr, ptr %206, align 8
  call void %207(ptr noundef nonnull align 8 dereferenceable(40) %170) #10
  br label %208

208:                                              ; preds = %184, %204, %201, %191
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %5) #11
  br label %209

209:                                              ; preds = %208, %157
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  br label %210

210:                                              ; preds = %209, %137
  %211 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  %212 = load ptr, ptr %211, align 8, !tbaa !103
  %213 = icmp eq ptr %212, null
  br i1 %213, label %220, label %214

214:                                              ; preds = %210
  %215 = load ptr, ptr %212, align 8, !tbaa !89
  %216 = getelementptr inbounds ptr, ptr %215, i64 2
  %217 = load ptr, ptr %216, align 8
  call void %217(ptr noundef nonnull align 8 dereferenceable(8) %212, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %59, i1 noundef zeroext %60) #13
  br label %220

218:                                              ; preds = %55, %36
  %219 = phi { ptr, i32 } [ %37, %36 ], [ %56, %55 ]
  resume { ptr, i32 } %219

220:                                              ; preds = %91, %124, %113, %120, %214, %210, %11
  %221 = phi ptr [ null, %11 ], [ null, %91 ], [ null, %124 ], [ null, %113 ], [ null, %120 ], [ %59, %214 ], [ %59, %210 ]
  ret ptr %221
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !221 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  %4 = load i32, ptr %0, align 8, !tbaa !174
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !175
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #5 comdat align 2 !prof !222 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !223
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #13
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DTDAttDefC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLAttDef5setIdEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 6
  store i32 %1, ptr %3, align 8, !tbaa !226
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DTDAttDef7setNameEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DTDAttDefC1EPKtNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLAttDef25setExternalAttDeclarationEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 1, !tbaa !231
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner23isReadingExternalEntityEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 15
  %3 = load i32, ptr %2, align 4, !tbaa !139
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #13
  %7 = icmp ne i32 %3, %6
  ret i1 %7
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DTDElementDecl9addAttDefEPNS_9DTDAttDefE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !232 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !156
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef %1) #13
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLAttDef7setTypeENS0_8AttTypesE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 4, !tbaa !233
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner15scanEnumerationERKNS_9DTDAttDefERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i1 noundef zeroext %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %5 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  br i1 %3, label %7, label %14

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %9, i16 noundef zeroext 40) #13
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %13, i32 noundef 246) #13
  br label %14

14:                                               ; preds = %7, %11, %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %15 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !138
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %16) #13
  %17 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  br label %18

18:                                               ; preds = %56, %14
  %19 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %20 unwind label %25

20:                                               ; preds = %18
  %21 = load ptr, ptr %17, align 8, !tbaa !137
  %22 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  br i1 %3, label %23, label %31

23:                                               ; preds = %20
  %24 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %21, ptr noundef nonnull align 8 dereferenceable(40) %22) #13
          to label %33 unwind label %27

25:                                               ; preds = %18
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %62

27:                                               ; preds = %23, %31, %43, %46, %48, %52, %53
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %62

29:                                               ; preds = %35, %42, %57
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %62

31:                                               ; preds = %20
  %32 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12getNameTokenERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %21, ptr noundef nonnull align 8 dereferenceable(40) %22) #13
          to label %33 unwind label %27

33:                                               ; preds = %31, %23
  %34 = phi i1 [ %24, %23 ], [ %32, %31 ]
  br i1 %34, label %43, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %37 = load ptr, ptr %36, align 8, !tbaa !136
  %38 = load ptr, ptr %1, align 8, !tbaa !89
  %39 = getelementptr inbounds ptr, ptr %38, i64 5
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(72) %1) #13
          to label %42 unwind label %29

42:                                               ; preds = %35
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %37, i32 noundef 242, ptr noundef %41, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %60 unwind label %29

43:                                               ; preds = %33
  %44 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  %45 = call noundef i32 @_ZNK11xercesc_2_79XMLBufBid6getLenEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %44, i32 noundef %45) #13
          to label %46 unwind label %27

46:                                               ; preds = %43
  %47 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %48 unwind label %27

48:                                               ; preds = %46
  %49 = load ptr, ptr %17, align 8, !tbaa !137
  %50 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %49, i16 noundef zeroext 41) #13
          to label %51 unwind label %27

51:                                               ; preds = %48
  br i1 %50, label %60, label %52

52:                                               ; preds = %51
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 32) #13
          to label %53 unwind label %27

53:                                               ; preds = %52
  %54 = load ptr, ptr %17, align 8, !tbaa !137
  %55 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %54, i16 noundef zeroext 124) #13
          to label %56 unwind label %27

56:                                               ; preds = %53
  br i1 %55, label %18, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %59 = load ptr, ptr %58, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %59, i32 noundef 243) #13
          to label %60 unwind label %29

60:                                               ; preds = %51, %57, %42
  %61 = phi i1 [ false, %42 ], [ false, %57 ], [ true, %51 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret i1 %61

62:                                               ; preds = %27, %29, %25
  %63 = phi { ptr, i32 } [ %26, %25 ], [ %28, %27 ], [ %30, %29 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLAttDef14setEnumerationEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !74 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !234
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !235
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4) #13
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !235
  %15 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %14) #13
  store ptr %15, ptr %3, align 8, !tbaa !234
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner15scanDefaultDeclERNS_9DTDAttDefE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %3 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgRequiredStringE) #13
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLAttDef14setDefaultTypeENS0_11DefAttTypesE(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 2) #13
  br label %46

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !137
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgImpliedStringE) #13
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_79XMLAttDef14setDefaultTypeENS0_11DefAttTypesE(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 4) #13
  br label %46

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8, !tbaa !137
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgFixedStringE) #13
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load ptr, ptr %4, align 8, !tbaa !137
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #13
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %20, i32 noundef 207) #13
  br label %24

21:                                               ; preds = %15
  %22 = load ptr, ptr %4, align 8, !tbaa !137
  %23 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %22, i1 noundef zeroext false) #13
  br label %24

24:                                               ; preds = %12, %18, %21
  %25 = phi i32 [ 1, %21 ], [ 1, %18 ], [ 0, %12 ]
  tail call void @_ZN11xercesc_2_79XMLAttDef14setDefaultTypeENS0_11DefAttTypesE(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %25) #13
  %26 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %27 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !138
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %28) #13
  %29 = load ptr, ptr %1, align 8, !tbaa !89
  %30 = getelementptr inbounds ptr, ptr %29, i64 5
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(72) %1) #13
          to label %33 unwind label %41

33:                                               ; preds = %24
  %34 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  %35 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %36 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner12scanAttValueEPKtRNS_9XMLBufferENS_9XMLAttDef8AttTypesE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(40) %34, i32 noundef %35) #13
          to label %37 unwind label %41

37:                                               ; preds = %33
  br i1 %36, label %43, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %40, i32 noundef 178) #13
          to label %43 unwind label %41

41:                                               ; preds = %43, %38, %33, %24
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  resume { ptr, i32 } %42

43:                                               ; preds = %38, %37
  %44 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  invoke void @_ZN11xercesc_2_79XMLAttDef8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %44) #13
          to label %45 unwind label %41

45:                                               ; preds = %43
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %46

46:                                               ; preds = %45, %11, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !236 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !233
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !237 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !238
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !234
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !239 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !240
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !242 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !240
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !243

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !244
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !245
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !117
  ret ptr %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !246 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !247

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #13
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !89
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !248 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !249

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !175
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !250

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !175
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !251, !llvm.loop !252

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
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !74 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #10
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #5 comdat align 2 !prof !74 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner15scanAttListDeclEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %3 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %7, i32 noundef 207) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %9, i16 noundef zeroext 62) #13
  br label %155

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !138
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12) #13
  %13 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !137
  %15 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %16 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %14, ptr noundef nonnull align 8 dereferenceable(40) %15) #13
          to label %17 unwind label %23

17:                                               ; preds = %10
  br i1 %16, label %25, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %20, i32 noundef 183) #13
          to label %21 unwind label %23

21:                                               ; preds = %18
  %22 = load ptr, ptr %13, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %22, i16 noundef zeroext 62) #13
          to label %154 unwind label %23

23:                                               ; preds = %21, %18, %10
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %160

25:                                               ; preds = %17
  %26 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !105
  %28 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 14
  %29 = load i32, ptr %28, align 8, !tbaa !253
  %30 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %31 = load ptr, ptr %27, align 8, !tbaa !89
  %32 = getelementptr inbounds ptr, ptr %31, i64 11
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(61) %27, i32 noundef %29, ptr noundef null, ptr noundef %30, i32 noundef -2) #13
          to label %35 unwind label %53

35:                                               ; preds = %25
  %36 = icmp eq ptr %34, null
  br i1 %36, label %37, label %57

37:                                               ; preds = %35
  %38 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !102
  %40 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %39) #13
          to label %41 unwind label %53

41:                                               ; preds = %37
  %42 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %43 = load i32, ptr %28, align 8, !tbaa !253
  %44 = load ptr, ptr %38, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef %42, i32 noundef %43, i32 noundef 1, ptr noundef %44) #13
          to label %45 unwind label %55

45:                                               ; preds = %41
  call void @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE(ptr noundef nonnull align 8 dereferenceable(33) %40, i32 noundef 2) #13
  %46 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner23isReadingExternalEntityEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
          to label %47 unwind label %53

47:                                               ; preds = %45
  call void @_ZN11xercesc_2_714XMLElementDecl26setExternalElemDeclarationEb(ptr noundef nonnull align 8 dereferenceable(33) %40, i1 noundef zeroext %46) #13
  %48 = load ptr, ptr %26, align 8, !tbaa !105
  %49 = load ptr, ptr %48, align 8, !tbaa !89
  %50 = getelementptr inbounds ptr, ptr %49, i64 17
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef i32 %51(ptr noundef nonnull align 8 dereferenceable(61) %48, ptr noundef nonnull %40, i1 noundef zeroext false) #13
          to label %57 unwind label %53

53:                                               ; preds = %62, %47, %45, %37, %25
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %160

55:                                               ; preds = %41
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %40, ptr noundef %39) #10
  br label %160

57:                                               ; preds = %47, %35
  %58 = phi ptr [ %34, %35 ], [ %40, %47 ]
  %59 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !103
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %60, align 8, !tbaa !89
  %64 = getelementptr inbounds ptr, ptr %63, i64 14
  %65 = load ptr, ptr %64, align 8
  invoke void %65(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull align 8 dereferenceable(80) %58) #13
          to label %66 unwind label %53

66:                                               ; preds = %62, %57
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %67 = load ptr, ptr %11, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %67) #13
          to label %68 unwind label %82

68:                                               ; preds = %66
  %69 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  %70 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  br label %71

71:                                               ; preds = %138, %68
  %72 = phi i1 [ true, %68 ], [ false, %138 ]
  br label %73

73:                                               ; preds = %136, %71
  %74 = load ptr, ptr %13, align 8, !tbaa !137
  %75 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %74) #13
          to label %76 unwind label %84

76:                                               ; preds = %73
  switch i16 %75, label %93 [
    i16 0, label %77
    i16 62, label %90
  ]

77:                                               ; preds = %76
  %78 = call ptr @__cxa_allocate_exception(i64 48) #11
  %79 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %78, ptr noundef nonnull @.str.1, i32 noundef 658, i32 noundef 47, ptr noundef %80) #13
          to label %81 unwind label %88

81:                                               ; preds = %77
  invoke void @__cxa_throw(ptr nonnull %78, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
          to label %162 unwind label %86

82:                                               ; preds = %66
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %158

84:                                               ; preds = %73, %101, %102, %109, %113, %116
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %156

86:                                               ; preds = %81, %90
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %156

88:                                               ; preds = %77
  %89 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %78) #11
  br label %156

90:                                               ; preds = %76
  %91 = load ptr, ptr %13, align 8, !tbaa !137
  %92 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %91) #13
          to label %144 unwind label %86

93:                                               ; preds = %76
  %94 = load ptr, ptr %13, align 8, !tbaa !137
  %95 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %94) #13
  %96 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %95, i16 noundef zeroext %75) #13
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = load ptr, ptr %59, align 8, !tbaa !103
  %99 = icmp eq ptr %98, null
  %100 = load ptr, ptr %13, align 8, !tbaa !137
  br i1 %99, label %109, label %101

101:                                              ; preds = %97
  invoke void @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %100, ptr noundef nonnull align 8 dereferenceable(40) %69) #13
          to label %102 unwind label %84

102:                                              ; preds = %101
  %103 = load ptr, ptr %59, align 8, !tbaa !103
  %104 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %69) #13
  %105 = call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %69) #13
  %106 = load ptr, ptr %103, align 8, !tbaa !89
  %107 = getelementptr inbounds ptr, ptr %106, i64 6
  %108 = load ptr, ptr %107, align 8
  invoke void %108(ptr noundef nonnull align 8 dereferenceable(8) %103, ptr noundef %104, i32 noundef %105) #13
          to label %136 unwind label %84

109:                                              ; preds = %97
  %110 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %100, i1 noundef zeroext false) #13
          to label %136 unwind label %84

111:                                              ; preds = %93
  %112 = icmp eq i16 %75, 37
  br i1 %112, label %113, label %118

113:                                              ; preds = %111
  %114 = load ptr, ptr %13, align 8, !tbaa !137
  %115 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %114) #13
          to label %116 unwind label %84

116:                                              ; preds = %113
  %117 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner11expandPERefEbbbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #13
          to label %136 unwind label %84

118:                                              ; preds = %111
  %119 = invoke noundef ptr @_ZN11xercesc_2_710DTDScanner10scanAttDefERNS_14DTDElementDeclERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %58, ptr noundef nonnull align 8 dereferenceable(40) %69) #13
          to label %120 unwind label %124

120:                                              ; preds = %118
  %121 = icmp eq ptr %119, null
  br i1 %121, label %122, label %130

122:                                              ; preds = %120
  %123 = load ptr, ptr %13, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %123, i16 noundef zeroext 62) #13
          to label %144 unwind label %128

124:                                              ; preds = %118
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %156

126:                                              ; preds = %143, %139
  %127 = landingpad { ptr, i32 }
          cleanup
  br label %156

128:                                              ; preds = %122
  %129 = landingpad { ptr, i32 }
          cleanup
  br label %156

130:                                              ; preds = %120
  %131 = load ptr, ptr %70, align 8, !tbaa !136
  %132 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %131) #13
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %119) #13
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %137, label %136

136:                                              ; preds = %133, %130, %116, %102, %109
  br label %73

137:                                              ; preds = %133
  br i1 %72, label %138, label %139

138:                                              ; preds = %137, %143
  br label %71

139:                                              ; preds = %137
  %140 = load ptr, ptr %70, align 8, !tbaa !136
  %141 = call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %140) #13
  %142 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %58) #13
          to label %143 unwind label %126

143:                                              ; preds = %139
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %141, i32 noundef 11, ptr noundef %142, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %138 unwind label %126

144:                                              ; preds = %122, %90
  %145 = load ptr, ptr %59, align 8, !tbaa !103
  %146 = icmp eq ptr %145, null
  br i1 %146, label %153, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr %145, align 8, !tbaa !89
  %149 = getelementptr inbounds ptr, ptr %148, i64 8
  %150 = load ptr, ptr %149, align 8
  invoke void %150(ptr noundef nonnull align 8 dereferenceable(8) %145, ptr noundef nonnull align 8 dereferenceable(80) %58) #13
          to label %153 unwind label %151

151:                                              ; preds = %147
  %152 = landingpad { ptr, i32 }
          cleanup
  br label %156

153:                                              ; preds = %147, %144
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %154

154:                                              ; preds = %21, %153
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  br label %155

155:                                              ; preds = %154, %5
  ret void

156:                                              ; preds = %124, %126, %128, %84, %86, %88, %151
  %157 = phi { ptr, i32 } [ %152, %151 ], [ %89, %88 ], [ %85, %84 ], [ %87, %86 ], [ %129, %128 ], [ %125, %124 ], [ %127, %126 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  br label %158

158:                                              ; preds = %156, %82
  %159 = phi { ptr, i32 } [ %157, %156 ], [ %83, %82 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %160

160:                                              ; preds = %53, %55, %158, %23
  %161 = phi { ptr, i32 } [ %24, %23 ], [ %159, %158 ], [ %54, %53 ], [ %56, %55 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %161

162:                                              ; preds = %81
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !74 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
  %5 = icmp ne i16 %4, %1
  %6 = icmp ne i16 %4, 0
  %7 = and i1 %5, %6
  br i1 %7, label %3, label %8, !llvm.loop !254

8:                                                ; preds = %3
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !255 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 8, !tbaa !256
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XMLElementDecl26setExternalElemDeclarationEb(ptr noundef nonnull align 8 dereferenceable(33) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 8, !tbaa !257
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !258 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !259 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !260
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !261
  %8 = icmp slt i8 %7, 0
  ret i1 %8
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !262 {
  %2 = load i32, ptr %0, align 8, !tbaa !174
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !74 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #10
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #5 comdat align 2 !prof !74 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner12scanAttValueEPKtRNS_9XMLBufferENS_9XMLAttDef8AttTypesE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  %9 = alloca [9 x i16], align 16
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  %10 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !137
  %12 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef nonnull align 2 dereferenceable(2) %5) #13
  br i1 %12, label %13, label %156

13:                                               ; preds = %4
  %14 = load ptr, ptr %10, align 8, !tbaa !137
  %15 = call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %14) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  store i16 0, ptr %7, align 2, !tbaa !175
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #11
  %16 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %17 = icmp eq i32 %3, 0
  br label %18

18:                                               ; preds = %106, %13
  %19 = phi i32 [ 1, %13 ], [ %107, %106 ]
  %20 = phi i8 [ 0, %13 ], [ %108, %106 ]
  %21 = phi i8 [ 0, %13 ], [ %109, %106 ]
  br label %22

22:                                               ; preds = %138, %18
  %23 = phi i32 [ %19, %18 ], [ 0, %138 ]
  %24 = phi i8 [ %21, %18 ], [ %132, %138 ]
  br label %25

25:                                               ; preds = %22, %67
  %26 = phi i8 [ 0, %67 ], [ %24, %22 ]
  %27 = load ptr, ptr %10, align 8, !tbaa !137
  %28 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %27) #13
          to label %29 unwind label %36

29:                                               ; preds = %25
  store i16 %28, ptr %6, align 2, !tbaa !175
  %30 = icmp eq i16 %28, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %33 = call ptr @__cxa_allocate_exception(i64 48) #11
  %34 = load ptr, ptr %32, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %33, ptr noundef nonnull @.str.1, i32 noundef 787, i32 noundef 47, ptr noundef %34) #13
          to label %35 unwind label %46

35:                                               ; preds = %31
  invoke void @__cxa_throw(ptr nonnull %33, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
          to label %158 unwind label %44

36:                                               ; preds = %65, %56, %51, %25
  %37 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %96

38:                                               ; preds = %75, %81, %120
  %39 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %96

40:                                               ; preds = %142, %144, %152
  %41 = phi i32 [ 0, %142 ], [ %147, %144 ], [ %147, %152 ]
  %42 = phi i8 [ %20, %142 ], [ %148, %144 ], [ %148, %152 ]
  %43 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %96

44:                                               ; preds = %35, %61
  %45 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %96

46:                                               ; preds = %31
  %47 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @__cxa_free_exception(ptr %33) #11
  br label %96

48:                                               ; preds = %29
  %49 = load i16, ptr %5, align 2, !tbaa !175
  %50 = icmp eq i16 %28, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load ptr, ptr %10, align 8, !tbaa !137
  %53 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %52) #13
          to label %54 unwind label %36

54:                                               ; preds = %51
  %55 = icmp eq i32 %15, %53
  br i1 %55, label %154, label %56

56:                                               ; preds = %54
  %57 = load ptr, ptr %10, align 8, !tbaa !137
  %58 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %57) #13
          to label %59 unwind label %36

59:                                               ; preds = %56
  %60 = icmp ugt i32 %15, %58
  br i1 %60, label %61, label %63

61:                                               ; preds = %59
  %62 = load ptr, ptr %16, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %62, i32 noundef 231) #13
          to label %154 unwind label %44

63:                                               ; preds = %59, %48
  store i8 0, ptr %8, align 1, !tbaa !263
  %64 = icmp eq i16 %28, 38
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  %66 = invoke noundef i32 @_ZN11xercesc_2_710DTDScanner13scanEntityRefERtS1_Rb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 2 dereferenceable(2) %6, ptr noundef nonnull align 2 dereferenceable(2) %7, ptr noundef nonnull align 1 dereferenceable(1) %8) #13
          to label %67 unwind label %36, !range !264

67:                                               ; preds = %65
  %68 = icmp eq i32 %66, 2
  br i1 %68, label %110, label %25, !llvm.loop !265

69:                                               ; preds = %63
  %70 = and i16 %28, -1024
  %71 = icmp eq i16 %70, -10240
  %72 = and i8 %26, 1
  %73 = icmp eq i8 %72, 0
  br i1 %71, label %74, label %77

74:                                               ; preds = %69
  br i1 %73, label %123, label %75

75:                                               ; preds = %74
  %76 = load ptr, ptr %16, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %76, i32 noundef 249) #13
          to label %123 unwind label %38

77:                                               ; preds = %69
  br i1 %73, label %83, label %78

78:                                               ; preds = %77
  %79 = add i16 %28, 8192
  %80 = icmp ult i16 %79, -1024
  br i1 %80, label %81, label %123

81:                                               ; preds = %78
  %82 = load ptr, ptr %16, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %82, i32 noundef 249) #13
          to label %113 unwind label %38

83:                                               ; preds = %77
  %84 = load ptr, ptr %10, align 8, !tbaa !137
  %85 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %84) #13
  %86 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %85, i16 noundef zeroext %28) #13
  br i1 %86, label %113, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %9) #11
  %89 = zext i16 %28 to i32
  %90 = load ptr, ptr %88, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %89, ptr noundef nonnull %9, i32 noundef 8, i32 noundef 16, ptr noundef %90) #13
          to label %91 unwind label %94

91:                                               ; preds = %87
  %92 = load ptr, ptr %16, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %92, i32 noundef 218, ptr noundef %1, ptr noundef nonnull %9, ptr noundef null, ptr noundef null) #13
          to label %93 unwind label %94

93:                                               ; preds = %91
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %9) #11
  br label %113

94:                                               ; preds = %91, %87
  %95 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %9) #11
  br label %96

96:                                               ; preds = %44, %38, %40, %36, %94, %46
  %97 = phi i32 [ %23, %94 ], [ %23, %46 ], [ %23, %44 ], [ %23, %36 ], [ %23, %38 ], [ %41, %40 ]
  %98 = phi i8 [ %20, %94 ], [ %20, %46 ], [ %20, %44 ], [ %20, %36 ], [ %20, %38 ], [ %42, %40 ]
  %99 = phi { ptr, i32 } [ %95, %94 ], [ %47, %46 ], [ %45, %44 ], [ %37, %36 ], [ %39, %38 ], [ %43, %40 ]
  %100 = extractvalue { ptr, i32 } %99, 1
  %101 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #11
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %155

103:                                              ; preds = %96
  %104 = extractvalue { ptr, i32 } %99, 0
  %105 = call ptr @__cxa_begin_catch(ptr %104) #11
  store i8 0, ptr %8, align 1, !tbaa !263
  call void @__cxa_end_catch()
  br label %106

106:                                              ; preds = %103, %153, %149
  %107 = phi i32 [ %97, %103 ], [ %147, %153 ], [ %147, %149 ]
  %108 = phi i8 [ %98, %103 ], [ %148, %153 ], [ %148, %149 ]
  %109 = phi i8 [ 0, %103 ], [ %145, %153 ], [ %145, %149 ]
  br label %18, !llvm.loop !265

110:                                              ; preds = %67
  %111 = load i8, ptr %8, align 1, !tbaa !263, !range !84
  %112 = load i16, ptr %6, align 2
  br label %113

113:                                              ; preds = %110, %81, %93, %83
  %114 = phi i16 [ %28, %83 ], [ %28, %93 ], [ %28, %81 ], [ %112, %110 ]
  %115 = phi i8 [ 0, %83 ], [ 0, %93 ], [ 0, %81 ], [ %111, %110 ]
  %116 = phi i8 [ 0, %83 ], [ 0, %93 ], [ 0, %81 ], [ %26, %110 ]
  %117 = icmp eq i8 %115, 0
  %118 = icmp eq i16 %114, 60
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load ptr, ptr %16, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %121, i32 noundef 248, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %122 unwind label %38

122:                                              ; preds = %120, %113
  br i1 %17, label %125, label %130

123:                                              ; preds = %78, %74, %75
  %124 = phi i8 [ 0, %78 ], [ 1, %74 ], [ %26, %75 ]
  br i1 %17, label %126, label %130

125:                                              ; preds = %122
  br i1 %117, label %126, label %144

126:                                              ; preds = %123, %125
  %127 = phi i8 [ %116, %125 ], [ %124, %123 ]
  %128 = phi i16 [ %114, %125 ], [ %28, %123 ]
  switch i16 %128, label %144 [
    i16 13, label %129
    i16 10, label %129
    i16 9, label %129
  ]

129:                                              ; preds = %126, %126, %126
  store i16 32, ptr %6, align 2, !tbaa !175
  br label %144

130:                                              ; preds = %123, %122
  %131 = phi i16 [ %28, %123 ], [ %114, %122 ]
  %132 = phi i8 [ %124, %123 ], [ %116, %122 ]
  %133 = icmp eq i32 %23, 0
  %134 = load ptr, ptr %10, align 8, !tbaa !137
  %135 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %134) #13
  %136 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %135, i16 noundef zeroext %131) #13
  br i1 %133, label %137, label %143

137:                                              ; preds = %130
  br i1 %136, label %138, label %139

138:                                              ; preds = %137, %143
  br label %22, !llvm.loop !265

139:                                              ; preds = %137
  %140 = and i8 %20, 1
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %139
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 32) #13
          to label %144 unwind label %40

143:                                              ; preds = %130
  br i1 %136, label %138, label %144

144:                                              ; preds = %143, %139, %142, %126, %125, %129
  %145 = phi i8 [ %116, %125 ], [ %127, %129 ], [ %127, %126 ], [ %132, %142 ], [ %132, %139 ], [ %132, %143 ]
  %146 = phi i16 [ %114, %125 ], [ 32, %129 ], [ %128, %126 ], [ %131, %142 ], [ %131, %139 ], [ %131, %143 ]
  %147 = phi i32 [ %19, %125 ], [ %19, %129 ], [ %19, %126 ], [ 1, %142 ], [ 1, %139 ], [ 1, %143 ]
  %148 = phi i8 [ %20, %125 ], [ %20, %129 ], [ %20, %126 ], [ 1, %142 ], [ 1, %139 ], [ 1, %143 ]
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext %146) #13
          to label %149 unwind label %40

149:                                              ; preds = %144
  %150 = load i16, ptr %7, align 2, !tbaa !175
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %106, label %152

152:                                              ; preds = %149
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext %150) #13
          to label %153 unwind label %40

153:                                              ; preds = %152
  store i16 0, ptr %7, align 2, !tbaa !175
  br label %106

154:                                              ; preds = %61, %54
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  br label %156

155:                                              ; preds = %96
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  resume { ptr, i32 } %99

156:                                              ; preds = %4, %154
  %157 = phi i1 [ %55, %154 ], [ false, %4 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  ret i1 %157

158:                                              ; preds = %35
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_710DTDScanner13scanEntityRefERtS1_Rb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0, ptr nocapture noundef nonnull align 2 dereferenceable(2) %1, ptr nocapture noundef nonnull writeonly align 2 dereferenceable(2) %2, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %5 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.xercesc_2_7::Janitor", align 8
  store i8 0, ptr %3, align 1, !tbaa !263
  store i16 0, ptr %2, align 2, !tbaa !175
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  %10 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #13
  %11 = load ptr, ptr %8, align 8, !tbaa !137
  %12 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %11, i16 noundef zeroext 35) #13
  br i1 %12, label %13, label %23

13:                                               ; preds = %4
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 2 dereferenceable(2) %2) #13
  br i1 %14, label %15, label %176

15:                                               ; preds = %13
  %16 = load ptr, ptr %8, align 8, !tbaa !137
  %17 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #13
  %18 = icmp eq i32 %10, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %21, i32 noundef 231) #13
  br label %22

22:                                               ; preds = %19, %15
  store i8 1, ptr %3, align 1, !tbaa !263
  br label %176

23:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %24 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !138
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %25) #13
  %26 = load ptr, ptr %8, align 8, !tbaa !137
  %27 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  %28 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %26, ptr noundef nonnull align 8 dereferenceable(40) %27) #13
          to label %29 unwind label %33

29:                                               ; preds = %23
  br i1 %28, label %35, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %32, i32 noundef 226) #13
          to label %172 unwind label %33

33:                                               ; preds = %48, %43, %39, %35, %30, %23
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %174

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !137
  %37 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %36, i16 noundef zeroext 59) #13
          to label %38 unwind label %33

38:                                               ; preds = %35
  br i1 %37, label %43, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %41 = load ptr, ptr %40, align 8, !tbaa !136
  %42 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %41, i32 noundef 229, ptr noundef %42, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %43 unwind label %33

43:                                               ; preds = %39, %38
  %44 = load ptr, ptr %8, align 8, !tbaa !137
  %45 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %44) #13
          to label %46 unwind label %33

46:                                               ; preds = %43
  %47 = icmp eq i32 %10, %45
  br i1 %47, label %51, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %50 = load ptr, ptr %49, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %50, i32 noundef 231) #13
          to label %51 unwind label %33

51:                                               ; preds = %48, %46
  %52 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !105
  %54 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  %55 = invoke noundef ptr @_ZN11xercesc_2_710DTDGrammar13getEntityDeclEPKt(ptr noundef nonnull align 8 dereferenceable(61) %53, ptr noundef %54) #13
          to label %56 unwind label %67

56:                                               ; preds = %51
  %57 = icmp eq ptr %55, null
  %58 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %59 = load ptr, ptr %58, align 8, !tbaa !136
  %60 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner13getStandaloneEv(ptr noundef nonnull align 8 dereferenceable(776) %59) #13
  br i1 %57, label %61, label %76

61:                                               ; preds = %56
  br i1 %60, label %65, label %62

62:                                               ; preds = %61
  %63 = load ptr, ptr %58, align 8, !tbaa !136
  %64 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner11getHasNoDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %63) #13
  br i1 %64, label %65, label %69

65:                                               ; preds = %62, %61
  %66 = load ptr, ptr %58, align 8, !tbaa !136
  br label %100

67:                                               ; preds = %100, %104, %86, %83, %77, %72, %51
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %174

69:                                               ; preds = %62
  %70 = load ptr, ptr %58, align 8, !tbaa !136
  %71 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %70) #13
  br i1 %71, label %72, label %172

72:                                               ; preds = %69
  %73 = load ptr, ptr %58, align 8, !tbaa !136
  %74 = call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %73) #13
  %75 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %74, i32 noundef 85, ptr noundef %75, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %172 unwind label %67

76:                                               ; preds = %56
  br i1 %60, label %77, label %86

77:                                               ; preds = %76
  %78 = load ptr, ptr %55, align 8, !tbaa !89
  %79 = getelementptr inbounds ptr, ptr %78, i64 5
  %80 = load ptr, ptr %79, align 8
  %81 = invoke noundef zeroext i1 %80(ptr noundef nonnull align 8 dereferenceable(72) %55) #13
          to label %82 unwind label %67

82:                                               ; preds = %77
  br i1 %81, label %86, label %83

83:                                               ; preds = %82
  %84 = load ptr, ptr %58, align 8, !tbaa !136
  %85 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %84, i32 noundef 298, ptr noundef %85, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %86 unwind label %67

86:                                               ; preds = %83, %82, %76
  %87 = load ptr, ptr %55, align 8, !tbaa !89
  %88 = getelementptr inbounds ptr, ptr %87, i64 7
  %89 = load ptr, ptr %88, align 8
  %90 = invoke noundef zeroext i1 %89(ptr noundef nonnull align 8 dereferenceable(72) %55) #13
          to label %91 unwind label %67

91:                                               ; preds = %86
  br i1 %90, label %92, label %95

92:                                               ; preds = %91
  %93 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72) %55) #13
  %94 = load i16, ptr %93, align 2, !tbaa !175
  store i16 %94, ptr %1, align 2, !tbaa !175
  store i8 1, ptr %3, align 1, !tbaa !263
  br label %172

95:                                               ; preds = %91
  %96 = call noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(72) %55) #13
  br i1 %96, label %97, label %157

97:                                               ; preds = %95
  %98 = call noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv(ptr noundef nonnull align 8 dereferenceable(72) %55) #13
  %99 = load ptr, ptr %58, align 8, !tbaa !136
  br i1 %98, label %100, label %104

100:                                              ; preds = %97, %65
  %101 = phi ptr [ %66, %65 ], [ %99, %97 ]
  %102 = phi i32 [ 227, %65 ], [ 228, %97 ]
  %103 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %101, i32 noundef %102, ptr noundef %103, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %172 unwind label %67

104:                                              ; preds = %97
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %99, i32 noundef 270) #13
          to label %105 unwind label %67

105:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %106 = load ptr, ptr %8, align 8, !tbaa !137
  %107 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(72) %55) #13
  %108 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %55) #13
  %109 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(72) %55) #13
  %110 = load ptr, ptr %58, align 8, !tbaa !136
  %111 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv(ptr noundef nonnull align 8 dereferenceable(776) %110) #13
  %112 = load ptr, ptr %58, align 8, !tbaa !136
  %113 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner33getDisableDefaultEntityResolutionEv(ptr noundef nonnull align 8 dereferenceable(776) %112) #13
  %114 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_S2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80) %106, ptr noundef %107, ptr noundef %108, ptr noundef %109, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %6, i1 noundef zeroext %111, i1 noundef zeroext %113) #13
          to label %115 unwind label %134

115:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %116 = load ptr, ptr %6, align 8, !tbaa !117
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %116) #13
  %117 = icmp eq ptr %114, null
  br i1 %117, label %118, label %140

118:                                              ; preds = %115
  %119 = call ptr @__cxa_allocate_exception(i64 48) #11
  %120 = load ptr, ptr %6, align 8, !tbaa !117
  %121 = icmp eq ptr %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %120, align 8, !tbaa !89
  %124 = getelementptr inbounds ptr, ptr %123, i64 5
  %125 = load ptr, ptr %124, align 8
  %126 = invoke noundef ptr %125(ptr noundef nonnull align 8 dereferenceable(41) %120) #13
          to label %129 unwind label %136

127:                                              ; preds = %118
  %128 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %55) #13
  br label %129

129:                                              ; preds = %122, %127
  %130 = phi ptr [ %128, %127 ], [ %126, %122 ]
  %131 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %119, ptr noundef nonnull @.str.1, i32 noundef 2013, i32 noundef 46, ptr noundef %130, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %132) #13
          to label %133 unwind label %136

133:                                              ; preds = %129
  invoke void @__cxa_throw(ptr nonnull %119, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
          to label %178 unwind label %138

134:                                              ; preds = %105
  %135 = landingpad { ptr, i32 }
          cleanup
  br label %155

136:                                              ; preds = %129, %122
  %137 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %119) #11
  br label %153

138:                                              ; preds = %150, %147, %145, %140, %133
  %139 = landingpad { ptr, i32 }
          cleanup
  br label %153

140:                                              ; preds = %115
  %141 = load ptr, ptr %8, align 8, !tbaa !137
  %142 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %141, ptr noundef nonnull %114, ptr noundef nonnull %55) #13
          to label %143 unwind label %138

143:                                              ; preds = %140
  %144 = load ptr, ptr %58, align 8, !tbaa !136
  br i1 %142, label %147, label %145

145:                                              ; preds = %143
  %146 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %55) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %144, i32 noundef 230, ptr noundef %146, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %152 unwind label %138

147:                                              ; preds = %143
  %148 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %144, i1 noundef zeroext true) #13
          to label %149 unwind label %138

149:                                              ; preds = %147
  br i1 %148, label %150, label %151

150:                                              ; preds = %149
  invoke void @_ZN11xercesc_2_710DTDScanner12scanTextDeclEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
          to label %151 unwind label %138

151:                                              ; preds = %149, %150
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %172

152:                                              ; preds = %145
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %172

153:                                              ; preds = %138, %136
  %154 = phi { ptr, i32 } [ %139, %138 ], [ %137, %136 ]
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %155

155:                                              ; preds = %153, %134
  %156 = phi { ptr, i32 } [ %154, %153 ], [ %135, %134 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %174

157:                                              ; preds = %95
  %158 = load ptr, ptr %8, align 8, !tbaa !137
  %159 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %55) #13
  %160 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72) %55) #13
  %161 = call noundef i32 @_ZNK11xercesc_2_713XMLEntityDecl11getValueLenEv(ptr noundef nonnull align 8 dereferenceable(72) %55) #13
  %162 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr18createIntEntReaderEPKtNS_9XMLReader7RefFromENS3_5TypesES2_jbb(ptr noundef nonnull align 8 dereferenceable(80) %158, ptr noundef %159, i32 noundef 1, i32 noundef 1, ptr noundef %160, i32 noundef %161, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %163 unwind label %170

163:                                              ; preds = %157
  %164 = load ptr, ptr %8, align 8, !tbaa !137
  %165 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %164, ptr noundef %162, ptr noundef nonnull %55) #13
          to label %166 unwind label %170

166:                                              ; preds = %163
  br i1 %165, label %172, label %167

167:                                              ; preds = %166
  %168 = load ptr, ptr %58, align 8, !tbaa !136
  %169 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %55) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %168, i32 noundef 230, ptr noundef %169, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %172 unwind label %170

170:                                              ; preds = %167, %163, %157
  %171 = landingpad { ptr, i32 }
          cleanup
  br label %174

172:                                              ; preds = %100, %167, %166, %151, %152, %92, %69, %72, %30
  %173 = phi i32 [ 0, %30 ], [ 2, %92 ], [ 0, %152 ], [ 0, %69 ], [ 0, %72 ], [ 1, %151 ], [ 1, %166 ], [ 1, %167 ], [ 0, %100 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %176

174:                                              ; preds = %67, %155, %170, %33
  %175 = phi { ptr, i32 } [ %34, %33 ], [ %68, %67 ], [ %156, %155 ], [ %171, %170 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  resume { ptr, i32 } %175

176:                                              ; preds = %13, %172, %22
  %177 = phi i32 [ 2, %22 ], [ %173, %172 ], [ 0, %13 ]
  ret i32 %177

178:                                              ; preds = %133
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !266 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !260
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !261
  %8 = and i8 %7, 64
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner11scanCharRefERtS1_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0, ptr nocapture noundef nonnull align 2 dereferenceable(2) %1, ptr nocapture noundef nonnull writeonly align 2 dereferenceable(2) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %4 = alloca [2 x i16], align 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %6, i16 noundef zeroext 120) #13
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %5, align 8, !tbaa !137
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %9, i16 noundef zeroext 88) #13
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %13, i32 noundef 267) #13
  br label %14

14:                                               ; preds = %3, %8, %11
  %15 = phi i32 [ 16, %11 ], [ 10, %8 ], [ 16, %3 ]
  %16 = load ptr, ptr %5, align 8, !tbaa !137
  %17 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #13
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds [2 x i16], ptr %4, i64 0, i64 1
  %21 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  br label %29

22:                                               ; preds = %57, %14
  %23 = call ptr @__cxa_allocate_exception(i64 48) #11
  %24 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull @.str.1, i32 noundef 956, i32 noundef 47, ptr noundef %25) #13
          to label %26 unwind label %27

26:                                               ; preds = %22
  call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

27:                                               ; preds = %22
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %23) #11
  resume { ptr, i32 } %28

29:                                               ; preds = %19, %57
  %30 = phi i16 [ %17, %19 ], [ %62, %57 ]
  %31 = phi i1 [ true, %19 ], [ false, %57 ]
  %32 = phi i32 [ 0, %19 ], [ %58, %57 ]
  %33 = zext i16 %30 to i32
  %34 = icmp eq i16 %30, 59
  br i1 %34, label %64, label %35

35:                                               ; preds = %29
  %36 = add i16 %30, -48
  %37 = icmp ult i16 %36, 10
  br i1 %37, label %48, label %38

38:                                               ; preds = %35
  %39 = add i16 %30, -65
  %40 = icmp ult i16 %39, 6
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = add i16 %30, -97
  %43 = icmp ult i16 %42, 6
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %21, align 8, !tbaa !136
  br i1 %31, label %47, label %46

46:                                               ; preds = %44
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %45, i32 noundef 225) #13
  br label %93

47:                                               ; preds = %44
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %45, i32 noundef 260) #13
  br label %93

48:                                               ; preds = %41, %38, %35
  %49 = phi i32 [ -48, %35 ], [ -55, %38 ], [ -87, %41 ]
  %50 = add nsw i32 %49, %33
  %51 = icmp ult i32 %50, %15
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i16 %30, ptr %4, align 2, !tbaa !175
  store i16 0, ptr %20, align 2, !tbaa !175
  %53 = load ptr, ptr %21, align 8, !tbaa !136
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %53, i32 noundef 273, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %57

54:                                               ; preds = %48
  %55 = mul i32 %32, %15
  %56 = add i32 %50, %55
  br label %57

57:                                               ; preds = %52, %54
  %58 = phi i32 [ %32, %52 ], [ %56, %54 ]
  %59 = load ptr, ptr %5, align 8, !tbaa !137
  %60 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %59) #13
  %61 = load ptr, ptr %5, align 8, !tbaa !137
  %62 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %61) #13
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %22, label %29

64:                                               ; preds = %29
  %65 = load ptr, ptr %5, align 8, !tbaa !137
  %66 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %65) #13
  %67 = add i32 %32, -65536
  %68 = icmp ult i32 %67, 1048576
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = lshr i32 %67, 10
  %71 = trunc i32 %70 to i16
  %72 = or disjoint i16 %71, -10240
  store i16 %72, ptr %1, align 2, !tbaa !175
  %73 = trunc i32 %32 to i16
  %74 = and i16 %73, 1023
  %75 = or disjoint i16 %74, -9216
  store i16 %75, ptr %2, align 2, !tbaa !175
  br label %93

76:                                               ; preds = %64
  %77 = icmp ult i32 %32, 65534
  br i1 %77, label %78, label %91

78:                                               ; preds = %76
  %79 = trunc i32 %32 to i16
  store i16 %79, ptr %1, align 2, !tbaa !175
  store i16 0, ptr %2, align 2, !tbaa !175
  %80 = load ptr, ptr %5, align 8, !tbaa !137
  %81 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %80) #13
  %82 = load i16, ptr %1, align 2, !tbaa !175
  %83 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %81, i16 noundef zeroext %82) #13
  br i1 %83, label %93, label %84

84:                                               ; preds = %78
  %85 = load ptr, ptr %5, align 8, !tbaa !137
  %86 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %85) #13
  %87 = load i16, ptr %1, align 2, !tbaa !175
  %88 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader13isControlCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %86, i16 noundef zeroext %87) #13
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = load ptr, ptr %21, align 8, !tbaa !136
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %90, i32 noundef 224) #13
  br label %93

91:                                               ; preds = %76
  %92 = load ptr, ptr %21, align 8, !tbaa !136
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %92, i32 noundef 224) #13
  br label %93

93:                                               ; preds = %46, %47, %69, %78, %84, %91, %89
  %94 = phi i1 [ false, %89 ], [ false, %91 ], [ true, %84 ], [ true, %78 ], [ true, %69 ], [ false, %47 ], [ false, %46 ]
  ret i1 %94
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader13isControlCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !260
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !261
  %8 = and i8 %7, 32
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710DTDScanner12scanChildrenERKNS_14DTDElementDeclERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %6, i16 noundef zeroext 40) #13
  %8 = load ptr, ptr %5, align 8, !tbaa !137
  br i1 %7, label %9, label %24

9:                                                ; preds = %3
  %10 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %8) #13
  %11 = tail call noundef ptr @_ZN11xercesc_2_710DTDScanner12scanChildrenERKNS_14DTDElementDeclERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %271, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !137
  %15 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %14) #13
  %16 = icmp eq i32 %10, %15
  br i1 %16, label %88, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !136
  %20 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %19) #13
  br i1 %20, label %21, label %88

21:                                               ; preds = %17
  %22 = load ptr, ptr %18, align 8, !tbaa !136
  %23 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %22) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %23, i32 noundef 86) #13
  br label %88

24:                                               ; preds = %3
  %25 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %28, i32 noundef 183) #13
  br label %271

29:                                               ; preds = %24
  %30 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !105
  %32 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 14
  %33 = load i32, ptr %32, align 8, !tbaa !253
  %34 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  %35 = load ptr, ptr %31, align 8, !tbaa !89
  %36 = getelementptr inbounds ptr, ptr %35, i64 11
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(61) %31, i32 noundef %33, ptr noundef null, ptr noundef %34, i32 noundef -2) #13
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %29
  %41 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !102
  %43 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %42) #13
  %44 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  %45 = load i32, ptr %32, align 8, !tbaa !253
  %46 = load ptr, ptr %41, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %43, ptr noundef %44, i32 noundef %45, i32 noundef 1, ptr noundef %46) #13
          to label %47 unwind label %54

47:                                               ; preds = %40
  tail call void @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE(ptr noundef nonnull align 8 dereferenceable(33) %43, i32 noundef 3) #13
  %48 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner23isReadingExternalEntityEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
  tail call void @_ZN11xercesc_2_714XMLElementDecl26setExternalElemDeclarationEb(ptr noundef nonnull align 8 dereferenceable(33) %43, i1 noundef zeroext %48) #13
  %49 = load ptr, ptr %30, align 8, !tbaa !105
  %50 = load ptr, ptr %49, align 8, !tbaa !89
  %51 = getelementptr inbounds ptr, ptr %50, i64 17
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef i32 %52(ptr noundef nonnull align 8 dereferenceable(61) %49, ptr noundef nonnull %43, i1 noundef zeroext false) #13
  br label %56

54:                                               ; preds = %40
  %55 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %43, ptr noundef %42) #10
  br label %273

56:                                               ; preds = %47, %29
  %57 = phi ptr [ %38, %29 ], [ %43, %47 ]
  %58 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !102
  %60 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %59) #13
  %61 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %57) #13
  %62 = load ptr, ptr %58, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2EPNS_5QNameEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %60, ptr noundef %61, ptr noundef %62) #13
          to label %63 unwind label %81

63:                                               ; preds = %56
  %64 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  %65 = load ptr, ptr %5, align 8, !tbaa !137
  %66 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %65) #13
  %67 = load ptr, ptr %58, align 8, !tbaa !102
  %68 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L11makeRepNodeEtPNS_15ContentSpecNodeEPNS_13MemoryManagerE(i16 noundef zeroext %66, ptr noundef nonnull %60, ptr noundef %67) #13
  %69 = icmp eq ptr %68, %60
  br i1 %69, label %88, label %70

70:                                               ; preds = %63
  br i1 %64, label %71, label %85

71:                                               ; preds = %70
  %72 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %73 = load ptr, ptr %72, align 8, !tbaa !136
  %74 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner27emitErrorWillThrowExceptionENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %73, i32 noundef 217) #13
  %75 = icmp ne ptr %68, null
  %76 = and i1 %75, %74
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load ptr, ptr %68, align 8, !tbaa !89
  %79 = getelementptr inbounds ptr, ptr %78, i64 1
  %80 = load ptr, ptr %79, align 8
  tail call void %80(ptr noundef nonnull align 8 dereferenceable(64) %68) #10
  br label %83

81:                                               ; preds = %56
  %82 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %60, ptr noundef %59) #10
  br label %273

83:                                               ; preds = %77, %71
  %84 = load ptr, ptr %72, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %84, i32 noundef 217) #13
  br label %85

85:                                               ; preds = %83, %70
  %86 = load ptr, ptr %5, align 8, !tbaa !137
  %87 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %86) #13
  br label %88

88:                                               ; preds = %63, %85, %13, %17, %21
  %89 = phi ptr [ %11, %21 ], [ %11, %17 ], [ %11, %13 ], [ %68, %85 ], [ %60, %63 ]
  %90 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  %91 = load ptr, ptr %5, align 8, !tbaa !137
  %92 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %91) #13
  switch i16 %92, label %93 [
    i16 124, label %102
    i16 44, label %102
    i16 41, label %102
  ]

93:                                               ; preds = %88
  %94 = icmp eq ptr %89, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %93
  %96 = load ptr, ptr %89, align 8, !tbaa !89
  %97 = getelementptr inbounds ptr, ptr %96, i64 1
  %98 = load ptr, ptr %97, align 8
  tail call void %98(ptr noundef nonnull align 8 dereferenceable(64) %89) #10
  br label %99

99:                                               ; preds = %95, %93
  %100 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %101 = load ptr, ptr %100, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %101, i32 noundef 239) #13
  br label %271

102:                                              ; preds = %88, %88, %88
  %103 = icmp eq i16 %92, 44
  br i1 %103, label %104, label %109

104:                                              ; preds = %102
  %105 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !102
  %107 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %106) #13
  %108 = load ptr, ptr %105, align 8, !tbaa !102
  tail call void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %107, i32 noundef 5, ptr noundef %89, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %108) #13
  br label %119

109:                                              ; preds = %102
  %110 = icmp eq i16 %92, 124
  br i1 %110, label %111, label %116

111:                                              ; preds = %109
  %112 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !102
  %114 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %113) #13
  %115 = load ptr, ptr %112, align 8, !tbaa !102
  tail call void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %114, i32 noundef 4, ptr noundef %89, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %115) #13
  br label %119

116:                                              ; preds = %109
  %117 = load ptr, ptr %5, align 8, !tbaa !137
  %118 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %117) #13
  br label %260

119:                                              ; preds = %104, %111
  %120 = phi ptr [ %114, %111 ], [ %107, %104 ]
  %121 = phi i32 [ 4, %111 ], [ 5, %104 ]
  %122 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 9
  %123 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 14
  %124 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %125 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  br label %126

126:                                              ; preds = %198, %119
  %127 = phi ptr [ null, %119 ], [ %128, %198 ]
  %128 = phi ptr [ %120, %119 ], [ %199, %198 ]
  br label %129

129:                                              ; preds = %140, %126
  %130 = load ptr, ptr %5, align 8, !tbaa !137
  %131 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13lookingAtCharEt(ptr noundef nonnull align 8 dereferenceable(80) %130, i16 noundef zeroext 37) #13
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  br label %140

134:                                              ; preds = %129
  %135 = load ptr, ptr %5, align 8, !tbaa !137
  %136 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %135) #13
  %137 = load ptr, ptr %5, align 8, !tbaa !137
  br i1 %136, label %138, label %141

138:                                              ; preds = %134
  %139 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %137, i1 noundef zeroext false) #13
  br label %140

140:                                              ; preds = %138, %132
  br label %129, !llvm.loop !267

141:                                              ; preds = %134
  %142 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %137, i16 noundef zeroext 41) #13
  br i1 %142, label %143, label %154

143:                                              ; preds = %141
  %144 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %128) #13
  %145 = icmp eq i32 %144, 4
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %128) #13
  %148 = icmp eq i32 %147, 5
  br i1 %148, label %149, label %260

149:                                              ; preds = %146, %143
  %150 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %128) #13
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %260

152:                                              ; preds = %149
  %153 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode11orphanFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %128) #13
  tail call void @_ZN11xercesc_2_715ContentSpecNode9setSecondEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %127, ptr noundef %153) #13
  br label %260

154:                                              ; preds = %141
  %155 = load ptr, ptr %5, align 8, !tbaa !137
  %156 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %155, i16 noundef zeroext %92) #13
  br i1 %156, label %157, label %252

157:                                              ; preds = %154
  %158 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  %159 = load ptr, ptr %5, align 8, !tbaa !137
  %160 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %159, i16 noundef zeroext 40) #13
  %161 = load ptr, ptr %5, align 8, !tbaa !137
  br i1 %160, label %162, label %200

162:                                              ; preds = %157
  %163 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %161) #13
  %164 = invoke noundef ptr @_ZN11xercesc_2_710DTDScanner12scanChildrenERKNS_14DTDElementDeclERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #13
          to label %165 unwind label %167

165:                                              ; preds = %162
  %166 = icmp eq ptr %164, null
  br i1 %166, label %180, label %184

167:                                              ; preds = %162
  %168 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
  %169 = extractvalue { ptr, i32 } %168, 1
  %170 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #11
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %273

172:                                              ; preds = %167
  %173 = extractvalue { ptr, i32 } %168, 0
  %174 = tail call ptr @__cxa_begin_catch(ptr %173) #11
  %175 = load ptr, ptr %120, align 8, !tbaa !89
  %176 = getelementptr inbounds ptr, ptr %175, i64 1
  %177 = load ptr, ptr %176, align 8
  tail call void %177(ptr noundef nonnull align 8 dereferenceable(64) %120) #10
  invoke void @__cxa_rethrow() #14
          to label %275 unwind label %178

178:                                              ; preds = %172
  %179 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_end_catch() #11
  br label %273

180:                                              ; preds = %165
  %181 = load ptr, ptr %120, align 8, !tbaa !89
  %182 = getelementptr inbounds ptr, ptr %181, i64 1
  %183 = load ptr, ptr %182, align 8
  tail call void %183(ptr noundef nonnull align 8 dereferenceable(64) %120) #10
  br label %271

184:                                              ; preds = %165
  %185 = load ptr, ptr %5, align 8, !tbaa !137
  %186 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %185) #13
  %187 = icmp eq i32 %163, %186
  br i1 %187, label %194, label %188

188:                                              ; preds = %184
  %189 = load ptr, ptr %125, align 8, !tbaa !136
  %190 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %189) #13
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load ptr, ptr %125, align 8, !tbaa !136
  %193 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %192) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %193, i32 noundef 86) #13
  br label %194

194:                                              ; preds = %184, %188, %191
  %195 = load ptr, ptr %124, align 8, !tbaa !102
  %196 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %195) #13
  %197 = load ptr, ptr %124, align 8, !tbaa !102
  tail call void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %196, i32 noundef %121, ptr noundef nonnull %164, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %197) #13
  tail call void @_ZN11xercesc_2_715ContentSpecNode9setSecondEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %128, ptr noundef nonnull %196) #13
  br label %198

198:                                              ; preds = %194, %248
  %199 = phi ptr [ %250, %248 ], [ %196, %194 ]
  br label %126, !llvm.loop !267

200:                                              ; preds = %157
  %201 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %161, ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  br i1 %201, label %207, label %202

202:                                              ; preds = %200
  %203 = load ptr, ptr %120, align 8, !tbaa !89
  %204 = getelementptr inbounds ptr, ptr %203, i64 1
  %205 = load ptr, ptr %204, align 8
  tail call void %205(ptr noundef nonnull align 8 dereferenceable(64) %120) #10
  %206 = load ptr, ptr %125, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %206, i32 noundef 183) #13
  br label %271

207:                                              ; preds = %200
  %208 = load ptr, ptr %122, align 8, !tbaa !105
  %209 = load i32, ptr %123, align 8, !tbaa !253
  %210 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  %211 = load ptr, ptr %208, align 8, !tbaa !89
  %212 = getelementptr inbounds ptr, ptr %211, i64 11
  %213 = load ptr, ptr %212, align 8
  %214 = tail call noundef ptr %213(ptr noundef nonnull align 8 dereferenceable(61) %208, i32 noundef %209, ptr noundef null, ptr noundef %210, i32 noundef -2) #13
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %231

216:                                              ; preds = %207
  %217 = load ptr, ptr %124, align 8, !tbaa !102
  %218 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %217) #13
  %219 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  %220 = load i32, ptr %123, align 8, !tbaa !253
  %221 = load ptr, ptr %124, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %218, ptr noundef %219, i32 noundef %220, i32 noundef 1, ptr noundef %221) #13
          to label %222 unwind label %229

222:                                              ; preds = %216
  tail call void @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE(ptr noundef nonnull align 8 dereferenceable(33) %218, i32 noundef 3) #13
  %223 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner23isReadingExternalEntityEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
  tail call void @_ZN11xercesc_2_714XMLElementDecl26setExternalElemDeclarationEb(ptr noundef nonnull align 8 dereferenceable(33) %218, i1 noundef zeroext %223) #13
  %224 = load ptr, ptr %122, align 8, !tbaa !105
  %225 = load ptr, ptr %224, align 8, !tbaa !89
  %226 = getelementptr inbounds ptr, ptr %225, i64 17
  %227 = load ptr, ptr %226, align 8
  %228 = tail call noundef i32 %227(ptr noundef nonnull align 8 dereferenceable(61) %224, ptr noundef nonnull %218, i1 noundef zeroext false) #13
  br label %231

229:                                              ; preds = %216
  %230 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %218, ptr noundef %217) #10
  br label %273

231:                                              ; preds = %222, %207
  %232 = phi ptr [ %214, %207 ], [ %218, %222 ]
  %233 = load ptr, ptr %124, align 8, !tbaa !102
  %234 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %233) #13
  %235 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %232) #13
  %236 = load ptr, ptr %124, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2EPNS_5QNameEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %234, ptr noundef %235, ptr noundef %236) #13
          to label %237 unwind label %246

237:                                              ; preds = %231
  %238 = load ptr, ptr %5, align 8, !tbaa !137
  %239 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %238) #13
  %240 = load ptr, ptr %124, align 8, !tbaa !102
  %241 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L11makeRepNodeEtPNS_15ContentSpecNodeEPNS_13MemoryManagerE(i16 noundef zeroext %239, ptr noundef nonnull %234, ptr noundef %240) #13
  %242 = icmp eq ptr %234, %241
  br i1 %242, label %248, label %243

243:                                              ; preds = %237
  %244 = load ptr, ptr %5, align 8, !tbaa !137
  %245 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %244) #13
  br label %248

246:                                              ; preds = %231
  %247 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %234, ptr noundef %233) #10
  br label %273

248:                                              ; preds = %243, %237
  %249 = load ptr, ptr %124, align 8, !tbaa !102
  %250 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %249) #13
  %251 = load ptr, ptr %124, align 8, !tbaa !102
  tail call void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %250, i32 noundef %121, ptr noundef %241, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %251) #13
  tail call void @_ZN11xercesc_2_715ContentSpecNode9setSecondEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %128, ptr noundef nonnull %250) #13
  br label %198

252:                                              ; preds = %154
  %253 = load ptr, ptr %120, align 8, !tbaa !89
  %254 = getelementptr inbounds ptr, ptr %253, i64 1
  %255 = load ptr, ptr %254, align 8
  tail call void %255(ptr noundef nonnull align 8 dereferenceable(64) %120) #10
  %256 = load ptr, ptr %125, align 8, !tbaa !136
  br i1 %103, label %257, label %258

257:                                              ; preds = %252
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %256, i32 noundef 240) #13
  br label %271

258:                                              ; preds = %252
  %259 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #13
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %256, i32 noundef 241, ptr noundef %259, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %271

260:                                              ; preds = %116, %146, %152, %149
  %261 = phi ptr [ %89, %116 ], [ %120, %149 ], [ %120, %152 ], [ %120, %146 ]
  %262 = load ptr, ptr %5, align 8, !tbaa !137
  %263 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %262) #13
  %264 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %265 = load ptr, ptr %264, align 8, !tbaa !102
  %266 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L11makeRepNodeEtPNS_15ContentSpecNodeEPNS_13MemoryManagerE(i16 noundef zeroext %263, ptr noundef %261, ptr noundef %265) #13
  %267 = icmp eq ptr %266, %261
  br i1 %267, label %271, label %268

268:                                              ; preds = %260
  %269 = load ptr, ptr %5, align 8, !tbaa !137
  %270 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %269) #13
  br label %271

271:                                              ; preds = %180, %202, %258, %257, %99, %260, %268, %9, %26
  %272 = phi ptr [ null, %26 ], [ null, %9 ], [ null, %99 ], [ %266, %268 ], [ %261, %260 ], [ null, %257 ], [ null, %258 ], [ null, %202 ], [ null, %180 ]
  ret ptr %272

273:                                              ; preds = %229, %246, %54, %81, %178, %167
  %274 = phi { ptr, i32 } [ %179, %178 ], [ %168, %167 ], [ %82, %81 ], [ %55, %54 ], [ %247, %246 ], [ %230, %229 ]
  resume { ptr, i32 } %274

275:                                              ; preds = %172
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 !prof !268 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !223
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeC2EPNS_5QNameEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  %4 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !269
  %5 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %5, i8 0, i64 36, i1 false)
  store i8 1, ptr %6, align 4, !tbaa !91
  %7 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  store i8 1, ptr %7, align 1, !tbaa !96
  %8 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  store i32 1, ptr %8, align 8, !tbaa !270
  %9 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 10
  store i32 1, ptr %9, align 4, !tbaa !271
  %10 = icmp eq ptr %1, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %2) #13
          to label %13 unwind label %15

13:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %1) #13
          to label %14 unwind label %17

14:                                               ; preds = %13
  store ptr %12, ptr %5, align 8, !tbaa !99
  br label %19

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %20

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %2) #10
  br label %20

19:                                               ; preds = %14, %3
  ret void

20:                                               ; preds = %17, %15
  %21 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef ptr @_ZN11xercesc_2_7L11makeRepNodeEtPNS_15ContentSpecNodeEPNS_13MemoryManagerE(i16 noundef zeroext %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 personality ptr @__gxx_personality_v0 !prof !74 !PGOFuncName !272 {
  switch i16 %0, label %10 [
    i16 63, label %4
    i16 43, label %6
    i16 42, label %8
  ]

4:                                                ; preds = %3
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %2) #13
  tail call void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 1, ptr noundef %1, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %2) #13
  br label %10

6:                                                ; preds = %3
  %7 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %2) #13
  tail call void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 3, ptr noundef %1, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %2) #13
  br label %10

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %2) #13
  tail call void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %9, i32 noundef 2, ptr noundef %1, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %2) #13
  br label %10

10:                                               ; preds = %3, %8, %6, %4
  %11 = phi ptr [ %5, %4 ], [ %7, %6 ], [ %9, %8 ], [ %1, %3 ]
  ret ptr %11
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner27emitErrorWillThrowExceptionENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6) unnamed_addr #1 comdat align 2 !prof !273 {
  %8 = zext i1 %4 to i8
  %9 = zext i1 %5 to i8
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  %10 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 1
  store ptr %6, ptr %10, align 8, !tbaa !269
  %11 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store ptr %2, ptr %12, align 8, !tbaa !95
  %13 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  store ptr %3, ptr %13, align 8, !tbaa !98
  %14 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  store i32 %1, ptr %14, align 8, !tbaa !274
  %15 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  store i8 %8, ptr %15, align 4, !tbaa !91
  %16 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  store i8 %9, ptr %16, align 1, !tbaa !96
  %17 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  store i32 1, ptr %17, align 8, !tbaa !270
  %18 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 10
  store i32 1, ptr %18, align 4, !tbaa !271
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13lookingAtCharEt(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !196 {
  %3 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
  %4 = icmp eq i16 %3, %1
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 !prof !275 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !274
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 !prof !276 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ContentSpecNode11orphanFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  store ptr null, ptr %2, align 8, !tbaa !95
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNode9setSecondEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !277 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  %4 = load i8, ptr %3, align 1, !tbaa !96, !range !84, !noundef !85
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6, !prof !278

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !89
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(64) %8) #10
  br label %14

14:                                               ; preds = %6, %10, %2
  %15 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  store ptr %1, ptr %15, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !279 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !280 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner11scanCommentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %3 = alloca [9 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !138
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %5) #13
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  br label %9

9:                                                ; preds = %59, %1
  %10 = phi i32 [ 0, %1 ], [ %60, %59 ]
  %11 = phi i8 [ 0, %1 ], [ %55, %59 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !137
  %13 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %12) #13
          to label %14 unwind label %22

14:                                               ; preds = %9
  %15 = icmp eq i16 %13, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %14
  %17 = load ptr, ptr %7, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %17, i32 noundef 193) #13
          to label %18 unwind label %24

18:                                               ; preds = %16
  %19 = call ptr @__cxa_allocate_exception(i64 48) #11
  %20 = load ptr, ptr %8, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull @.str.1, i32 noundef 1418, i32 noundef 47, ptr noundef %20) #13
          to label %21 unwind label %26

21:                                               ; preds = %18
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
          to label %85 unwind label %24

22:                                               ; preds = %58, %9, %35, %41, %63
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %83

24:                                               ; preds = %16, %21, %66, %68
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %83

26:                                               ; preds = %18
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %19) #11
  br label %83

28:                                               ; preds = %14
  %29 = zext i16 %13 to i32
  %30 = and i16 %13, -1024
  %31 = icmp eq i16 %30, -10240
  %32 = and i8 %11, 1
  %33 = icmp eq i8 %32, 0
  br i1 %31, label %34, label %37

34:                                               ; preds = %28
  br i1 %33, label %54, label %35

35:                                               ; preds = %34
  %36 = load ptr, ptr %7, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %36, i32 noundef 249) #13
          to label %54 unwind label %22

37:                                               ; preds = %28
  br i1 %33, label %43, label %38

38:                                               ; preds = %37
  %39 = add i16 %13, 8192
  %40 = icmp ult i16 %39, -1024
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load ptr, ptr %7, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %42, i32 noundef 249) #13
          to label %54 unwind label %22

43:                                               ; preds = %37
  %44 = load ptr, ptr %6, align 8, !tbaa !137
  %45 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %44) #13
  %46 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %45, i16 noundef zeroext %13) #13
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %3) #11
  %48 = load ptr, ptr %8, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %29, ptr noundef nonnull %3, i32 noundef 8, i32 noundef 16, ptr noundef %48) #13
          to label %49 unwind label %52

49:                                               ; preds = %47
  %50 = load ptr, ptr %7, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %50, i32 noundef 196, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %51 unwind label %52

51:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %3) #11
  br label %54

52:                                               ; preds = %49, %47
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %3) #11
  br label %83

54:                                               ; preds = %41, %38, %51, %43, %34, %35
  %55 = phi i8 [ %11, %35 ], [ 1, %34 ], [ 0, %43 ], [ 0, %51 ], [ 0, %38 ], [ 0, %41 ]
  switch i32 %10, label %70 [
    i32 0, label %56
    i32 1, label %61
    i32 2, label %64
  ]

56:                                               ; preds = %54
  %57 = icmp eq i16 %13, 45
  br i1 %57, label %59, label %58

58:                                               ; preds = %63, %56
  invoke void @_ZN11xercesc_2_79XMLBufBid6appendEt(ptr noundef nonnull align 8 dereferenceable(16) %2, i16 noundef zeroext %13) #13
          to label %59 unwind label %22

59:                                               ; preds = %58, %56, %61
  %60 = phi i32 [ 1, %56 ], [ 2, %61 ], [ 0, %58 ]
  br label %9

61:                                               ; preds = %54
  %62 = icmp eq i16 %13, 45
  br i1 %62, label %59, label %63

63:                                               ; preds = %61
  invoke void @_ZN11xercesc_2_79XMLBufBid6appendEt(ptr noundef nonnull align 8 dereferenceable(16) %2, i16 noundef zeroext 45) #13
          to label %58 unwind label %22

64:                                               ; preds = %54
  %65 = icmp eq i16 %13, 62
  br i1 %65, label %71, label %66

66:                                               ; preds = %64
  %67 = load ptr, ptr %7, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %67, i32 noundef 263) #13
          to label %68 unwind label %24

68:                                               ; preds = %66
  %69 = load ptr, ptr %6, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %69, i16 noundef zeroext 62) #13
          to label %82 unwind label %24

70:                                               ; preds = %54
  unreachable

71:                                               ; preds = %64
  %72 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !103
  %74 = icmp eq ptr %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %71
  %76 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %77 = load ptr, ptr %73, align 8, !tbaa !89
  %78 = getelementptr inbounds ptr, ptr %77, i64 3
  %79 = load ptr, ptr %78, align 8
  invoke void %79(ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef %76) #13
          to label %82 unwind label %80

80:                                               ; preds = %75
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %83

82:                                               ; preds = %68, %71, %75
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void

83:                                               ; preds = %22, %24, %26, %52, %80
  %84 = phi { ptr, i32 } [ %81, %80 ], [ %53, %52 ], [ %27, %26 ], [ %23, %22 ], [ %25, %24 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %84

85:                                               ; preds = %21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBid6appendEt(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !74 {
  %3 = load ptr, ptr %0, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %3, i16 noundef zeroext %1) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner15scanContentSpecERNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %3 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgEmptyStringE) #13
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_714DTDElementDecl12setModelTypeENS0_10ModelTypesE(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef 0) #13
  br label %65

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !137
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgAnyStringE) #13
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_714DTDElementDecl12setModelTypeENS0_10ModelTypesE(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef 1) #13
  br label %65

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8, !tbaa !137
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %13, i16 noundef zeroext 40) #13
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !136
  %18 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #13
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %17, i32 noundef 233, ptr noundef %18, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %65

19:                                               ; preds = %12
  %20 = load ptr, ptr %4, align 8, !tbaa !137
  %21 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %20) #13
  %22 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  %23 = load ptr, ptr %4, align 8, !tbaa !137
  %24 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %23, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgPCDATAStringE) #13
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  tail call void @_ZN11xercesc_2_714DTDElementDecl12setModelTypeENS0_10ModelTypesE(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef 2) #13
  %26 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner9scanMixedERNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #13
  %27 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !136
  %29 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %28) #13
  br i1 %29, label %30, label %53

30:                                               ; preds = %25
  %31 = load ptr, ptr %1, align 8, !tbaa !89
  %32 = getelementptr inbounds ptr, ptr %31, i64 13
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(80) %1) #13
  %35 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717MixedContentModel7hasDupsEv(ptr noundef nonnull align 8 dereferenceable(48) %34) #13
  br i1 %35, label %36, label %53

36:                                               ; preds = %30
  %37 = load ptr, ptr %27, align 8, !tbaa !136
  %38 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %37) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %38, i32 noundef 27) #13
  br label %53

39:                                               ; preds = %19
  tail call void @_ZN11xercesc_2_714DTDElementDecl12setModelTypeENS0_10ModelTypesE(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef 3) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %40 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !138
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %41) #13
  %42 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  %43 = invoke noundef ptr @_ZN11xercesc_2_710DTDScanner12scanChildrenERKNS_14DTDElementDeclERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(40) %42) #13
          to label %44 unwind label %50

44:                                               ; preds = %39
  %45 = icmp ne ptr %43, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %44
  %47 = load ptr, ptr %1, align 8, !tbaa !89
  %48 = getelementptr inbounds ptr, ptr %47, i64 12
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %43) #13
          to label %52 unwind label %50

50:                                               ; preds = %46, %39
  %51 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  resume { ptr, i32 } %51

52:                                               ; preds = %46, %44
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %53

53:                                               ; preds = %25, %36, %30, %52
  %54 = phi i1 [ %26, %36 ], [ %26, %30 ], [ %26, %25 ], [ %45, %52 ]
  %55 = load ptr, ptr %4, align 8, !tbaa !137
  %56 = call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %55) #13
  %57 = icmp eq i32 %21, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %60 = load ptr, ptr %59, align 8, !tbaa !136
  %61 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %60) #13
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load ptr, ptr %59, align 8, !tbaa !136
  %64 = call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %63) #13
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %64, i32 noundef 86) #13
  br label %65

65:                                               ; preds = %53, %58, %62, %15, %11, %7
  %66 = phi i1 [ true, %7 ], [ true, %11 ], [ false, %15 ], [ %54, %62 ], [ %54, %58 ], [ %54, %53 ]
  ret i1 %66
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DTDElementDecl12setModelTypeENS0_10ModelTypesE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 4, !tbaa !281
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner9scanMixedERNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %3 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !138
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %5) #13
  %6 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %8) #13
          to label %10 unwind label %35

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !102
  %12 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %11) #13
          to label %13 unwind label %37

13:                                               ; preds = %10
  %14 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4, !tbaa !197
  %15 = load ptr, ptr %7, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %14, ptr noundef %15) #13
          to label %16 unwind label %39

16:                                               ; preds = %13
  %17 = load ptr, ptr %7, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2EPNS_5QNameEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %12, i1 noundef zeroext false, ptr noundef %17) #13
          to label %18 unwind label %37

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %20 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 9
  %21 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 14
  %22 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  br label %23

23:                                               ; preds = %18, %170
  %24 = phi ptr [ %9, %18 ], [ %163, %170 ]
  %25 = phi i8 [ 0, %18 ], [ 1, %170 ]
  br label %26

26:                                               ; preds = %23, %188
  %27 = phi ptr [ %190, %188 ], [ %24, %23 ]
  %28 = phi i8 [ 1, %188 ], [ %25, %23 ]
  br label %29

29:                                               ; preds = %63, %26
  %30 = load ptr, ptr %19, align 8, !tbaa !137
  %31 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13lookingAtCharEt(ptr noundef nonnull align 8 dereferenceable(80) %30, i16 noundef zeroext 37) #13
          to label %32 unwind label %43

32:                                               ; preds = %29
  br i1 %31, label %33, label %49

33:                                               ; preds = %32
  %34 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %63 unwind label %43

35:                                               ; preds = %2
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %201

37:                                               ; preds = %16, %10
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %41

39:                                               ; preds = %13
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #10
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi { ptr, i32 } [ %38, %37 ], [ %40, %39 ]
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %8) #10
  br label %201

43:                                               ; preds = %69, %64, %61, %53, %49, %33, %29
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %201

45:                                               ; preds = %118, %116, %71
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %201

47:                                               ; preds = %74, %78, %122
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %201

49:                                               ; preds = %32
  %50 = load ptr, ptr %19, align 8, !tbaa !137
  %51 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %50, i16 noundef zeroext 42) #13
          to label %52 unwind label %43

52:                                               ; preds = %49
  br i1 %51, label %53, label %64

53:                                               ; preds = %52
  %54 = load ptr, ptr %22, align 8, !tbaa !136
  %55 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner27emitErrorWillThrowExceptionENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %54, i32 noundef 176) #13
          to label %56 unwind label %43

56:                                               ; preds = %53
  br i1 %55, label %57, label %61

57:                                               ; preds = %56
  %58 = load ptr, ptr %24, align 8, !tbaa !89
  %59 = getelementptr inbounds ptr, ptr %58, i64 1
  %60 = load ptr, ptr %59, align 8
  call void %60(ptr noundef nonnull align 8 dereferenceable(64) %24) #10
  br label %61

61:                                               ; preds = %57, %56
  %62 = load ptr, ptr %22, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %62, i32 noundef 176) #13
          to label %63 unwind label %43

63:                                               ; preds = %61, %69, %33
  br label %29, !llvm.loop !284

64:                                               ; preds = %52
  %65 = load ptr, ptr %19, align 8, !tbaa !137
  %66 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %65) #13
          to label %67 unwind label %43

67:                                               ; preds = %64
  %68 = load ptr, ptr %19, align 8, !tbaa !137
  br i1 %66, label %69, label %71

69:                                               ; preds = %67
  %70 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %68, i1 noundef zeroext false) #13
          to label %63 unwind label %43

71:                                               ; preds = %67
  %72 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %68, i16 noundef zeroext 124) #13
          to label %73 unwind label %45

73:                                               ; preds = %71
  br i1 %72, label %116, label %74

74:                                               ; preds = %73
  %75 = load ptr, ptr %19, align 8, !tbaa !137
  %76 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %75, i16 noundef zeroext 41) #13
          to label %77 unwind label %47

77:                                               ; preds = %74
  br i1 %76, label %85, label %78

78:                                               ; preds = %77
  %79 = load ptr, ptr %24, align 8, !tbaa !89
  %80 = getelementptr inbounds ptr, ptr %79, i64 1
  %81 = load ptr, ptr %80, align 8
  call void %81(ptr noundef nonnull align 8 dereferenceable(64) %24) #10
  %82 = load ptr, ptr %22, align 8, !tbaa !136
  %83 = call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #13
  %84 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %83) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %82, i32 noundef 235, ptr noundef %84, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %199 unwind label %47

85:                                               ; preds = %77
  %86 = load ptr, ptr %19, align 8, !tbaa !137
  %87 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %86, i16 noundef zeroext 42) #13
          to label %88 unwind label %99

88:                                               ; preds = %85
  %89 = icmp eq i8 %28, 0
  %90 = or i1 %87, %89
  br i1 %90, label %103, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %22, align 8, !tbaa !136
  %93 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner27emitErrorWillThrowExceptionENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %92, i32 noundef 234) #13
          to label %94 unwind label %99

94:                                               ; preds = %91
  br i1 %93, label %95, label %101

95:                                               ; preds = %94
  %96 = load ptr, ptr %24, align 8, !tbaa !89
  %97 = getelementptr inbounds ptr, ptr %96, i64 1
  %98 = load ptr, ptr %97, align 8
  call void %98(ptr noundef nonnull align 8 dereferenceable(64) %24) #10
  br label %101

99:                                               ; preds = %111, %106, %101, %91, %85
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %201

101:                                              ; preds = %95, %94
  %102 = load ptr, ptr %22, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %102, i32 noundef 234) #13
          to label %106 unwind label %99

103:                                              ; preds = %88
  %104 = xor i1 %89, true
  %105 = or i1 %87, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %101, %103
  %107 = load ptr, ptr %7, align 8, !tbaa !102
  %108 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %107) #13
          to label %109 unwind label %99

109:                                              ; preds = %106
  %110 = load ptr, ptr %7, align 8, !tbaa !102
  call void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %108, i32 noundef 2, ptr noundef nonnull %24, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %110) #13
  br label %111

111:                                              ; preds = %103, %109
  %112 = phi ptr [ %108, %109 ], [ %24, %103 ]
  %113 = load ptr, ptr %1, align 8, !tbaa !89
  %114 = getelementptr inbounds ptr, ptr %113, i64 12
  %115 = load ptr, ptr %114, align 8
  invoke void %115(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %112) #13
          to label %199 unwind label %99

116:                                              ; preds = %73
  %117 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %118 unwind label %45

118:                                              ; preds = %116
  %119 = load ptr, ptr %19, align 8, !tbaa !137
  %120 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %119, ptr noundef nonnull align 8 dereferenceable(40) %6) #13
          to label %121 unwind label %45

121:                                              ; preds = %118
  br i1 %120, label %127, label %122

122:                                              ; preds = %121
  %123 = load ptr, ptr %24, align 8, !tbaa !89
  %124 = getelementptr inbounds ptr, ptr %123, i64 1
  %125 = load ptr, ptr %124, align 8
  call void %125(ptr noundef nonnull align 8 dereferenceable(64) %24) #10
  %126 = load ptr, ptr %22, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %126, i32 noundef 183) #13
          to label %199 unwind label %47

127:                                              ; preds = %121
  %128 = load ptr, ptr %20, align 8, !tbaa !105
  %129 = load i32, ptr %21, align 8, !tbaa !253
  %130 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #13
  %131 = load ptr, ptr %128, align 8, !tbaa !89
  %132 = getelementptr inbounds ptr, ptr %131, i64 11
  %133 = load ptr, ptr %132, align 8
  %134 = invoke noundef ptr %133(ptr noundef nonnull align 8 dereferenceable(61) %128, i32 noundef %129, ptr noundef null, ptr noundef %130, i32 noundef -2) #13
          to label %135 unwind label %152

135:                                              ; preds = %127
  %136 = icmp eq ptr %134, null
  br i1 %136, label %137, label %158

137:                                              ; preds = %135
  %138 = load ptr, ptr %7, align 8, !tbaa !102
  %139 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %138) #13
          to label %140 unwind label %152

140:                                              ; preds = %137
  %141 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #13
  %142 = load i32, ptr %21, align 8, !tbaa !253
  %143 = load ptr, ptr %7, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %139, ptr noundef %141, i32 noundef %142, i32 noundef 1, ptr noundef %143) #13
          to label %144 unwind label %156

144:                                              ; preds = %140
  call void @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE(ptr noundef nonnull align 8 dereferenceable(33) %139, i32 noundef 3) #13
  %145 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner23isReadingExternalEntityEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
          to label %146 unwind label %152

146:                                              ; preds = %144
  call void @_ZN11xercesc_2_714XMLElementDecl26setExternalElemDeclarationEb(ptr noundef nonnull align 8 dereferenceable(33) %139, i1 noundef zeroext %145) #13
  %147 = load ptr, ptr %20, align 8, !tbaa !105
  %148 = load ptr, ptr %147, align 8, !tbaa !89
  %149 = getelementptr inbounds ptr, ptr %148, i64 17
  %150 = load ptr, ptr %149, align 8
  %151 = invoke noundef i32 %150(ptr noundef nonnull align 8 dereferenceable(61) %147, ptr noundef nonnull %139, i1 noundef zeroext false) #13
          to label %158 unwind label %152

152:                                              ; preds = %127, %137, %144, %146
  %153 = landingpad { ptr, i32 }
          cleanup
  br label %201

154:                                              ; preds = %161
  %155 = landingpad { ptr, i32 }
          cleanup
  br label %201

156:                                              ; preds = %140
  %157 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %139, ptr noundef %138) #10
  br label %201

158:                                              ; preds = %146, %135
  %159 = phi ptr [ %134, %135 ], [ %139, %146 ]
  %160 = icmp eq ptr %27, %9
  br i1 %160, label %161, label %178

161:                                              ; preds = %158
  %162 = load ptr, ptr %7, align 8, !tbaa !102
  %163 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %162) #13
          to label %164 unwind label %154

164:                                              ; preds = %161
  %165 = load ptr, ptr %7, align 8, !tbaa !102
  %166 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %165) #13
          to label %167 unwind label %172

167:                                              ; preds = %164
  %168 = call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %159) #13
  %169 = load ptr, ptr %7, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2EPNS_5QNameEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %166, ptr noundef %168, ptr noundef %169) #13
          to label %170 unwind label %174

170:                                              ; preds = %167
  %171 = load ptr, ptr %7, align 8, !tbaa !102
  call void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %163, i32 noundef 4, ptr noundef nonnull %9, ptr noundef nonnull %166, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %171) #13
  br label %23, !llvm.loop !284

172:                                              ; preds = %164
  %173 = landingpad { ptr, i32 }
          cleanup
  br label %176

174:                                              ; preds = %167
  %175 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %166, ptr noundef %165) #10
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi { ptr, i32 } [ %175, %174 ], [ %173, %172 ]
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %163, ptr noundef %162) #10
  br label %201

178:                                              ; preds = %158
  %179 = call noundef ptr @_ZN11xercesc_2_715ContentSpecNode12orphanSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %27) #13
  %180 = load ptr, ptr %7, align 8, !tbaa !102
  %181 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %180) #13
          to label %182 unwind label %191

182:                                              ; preds = %178
  %183 = load ptr, ptr %7, align 8, !tbaa !102
  %184 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %183) #13
          to label %185 unwind label %193

185:                                              ; preds = %182
  %186 = call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %159) #13
  %187 = load ptr, ptr %7, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2EPNS_5QNameEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %184, ptr noundef %186, ptr noundef %187) #13
          to label %188 unwind label %195

188:                                              ; preds = %185
  %189 = load ptr, ptr %7, align 8, !tbaa !102
  call void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %181, i32 noundef 4, ptr noundef %179, ptr noundef nonnull %184, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %189) #13
  call void @_ZN11xercesc_2_715ContentSpecNode9setSecondEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %27, ptr noundef nonnull %181) #13
  %190 = call noundef ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %27) #13
  br label %26, !llvm.loop !284

191:                                              ; preds = %178
  %192 = landingpad { ptr, i32 }
          cleanup
  br label %201

193:                                              ; preds = %182
  %194 = landingpad { ptr, i32 }
          cleanup
  br label %197

195:                                              ; preds = %185
  %196 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %184, ptr noundef %183) #10
  br label %197

197:                                              ; preds = %195, %193
  %198 = phi { ptr, i32 } [ %196, %195 ], [ %194, %193 ]
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %181, ptr noundef %180) #10
  br label %201

199:                                              ; preds = %122, %111, %78
  %200 = phi i1 [ false, %78 ], [ true, %111 ], [ false, %122 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret i1 %200

201:                                              ; preds = %152, %154, %43, %45, %47, %99, %191, %197, %176, %156, %41, %35
  %202 = phi { ptr, i32 } [ %42, %41 ], [ %36, %35 ], [ %100, %99 ], [ %177, %176 ], [ %157, %156 ], [ %198, %197 ], [ %192, %191 ], [ %48, %47 ], [ %44, %43 ], [ %46, %45 ], [ %153, %152 ], [ %155, %154 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  resume { ptr, i32 } %202
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_717MixedContentModel7hasDupsEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLAttDef14setDefaultTypeENS0_11DefAttTypesE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !238
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLAttDef8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !186 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !286
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !287

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !235
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4) #13
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !235
  %15 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %14) #13
  store ptr %15, ptr %3, align 8, !tbaa !286
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner15scanElementDeclEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %3 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %6, i32 noundef 207) #13
  br label %7

7:                                                ; preds = %4, %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %9) #13
  %10 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !137
  %12 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %13 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef nonnull align 8 dereferenceable(40) %12) #13
          to label %14 unwind label %20

14:                                               ; preds = %7
  br i1 %13, label %22, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %17, i32 noundef 183) #13
          to label %18 unwind label %20

18:                                               ; preds = %15
  %19 = load ptr, ptr %10, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %19, i16 noundef zeroext 62) #13
          to label %119 unwind label %20

20:                                               ; preds = %18, %15, %7
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %120

22:                                               ; preds = %14
  %23 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !105
  %25 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 14
  %26 = load i32, ptr %25, align 8, !tbaa !253
  %27 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %28 = load ptr, ptr %24, align 8, !tbaa !89
  %29 = getelementptr inbounds ptr, ptr %28, i64 11
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(61) %24, i32 noundef %26, ptr noundef null, ptr noundef %27, i32 noundef -2) #13
          to label %32 unwind label %44

32:                                               ; preds = %22
  %33 = icmp eq ptr %31, null
  br i1 %33, label %64, label %34

34:                                               ; preds = %32
  %35 = call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %31) #13
  br i1 %35, label %36, label %80

36:                                               ; preds = %34
  %37 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %38 = load ptr, ptr %37, align 8, !tbaa !136
  %39 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %38) #13
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load ptr, ptr %37, align 8, !tbaa !136
  %42 = call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %41) #13
  %43 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %42, i32 noundef 10, ptr noundef %43, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %46 unwind label %44

44:                                               ; preds = %72, %64, %61, %50, %40, %22
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %120

46:                                               ; preds = %40, %36
  %47 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !126
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !100
  %53 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %52) #13
          to label %54 unwind label %44

54:                                               ; preds = %50
  %55 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %56 = load i32, ptr %25, align 8, !tbaa !253
  %57 = load ptr, ptr %51, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %53, ptr noundef %55, i32 noundef %56, i32 noundef 1, ptr noundef %57) #13
          to label %58 unwind label %59

58:                                               ; preds = %54
  store ptr %53, ptr %47, align 8, !tbaa !126
  br label %80

59:                                               ; preds = %54
  %60 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %53, ptr noundef %52) #10
  br label %120

61:                                               ; preds = %46
  %62 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %63 = load i32, ptr %25, align 8, !tbaa !253
  invoke void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKti(ptr noundef nonnull align 8 dereferenceable(33) %48, ptr noundef %62, i32 noundef %63) #13
          to label %80 unwind label %44

64:                                               ; preds = %32
  %65 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !102
  %67 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %66) #13
          to label %68 unwind label %44

68:                                               ; preds = %64
  %69 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %70 = load i32, ptr %25, align 8, !tbaa !253
  %71 = load ptr, ptr %65, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %67, ptr noundef %69, i32 noundef %70, i32 noundef 1, ptr noundef %71) #13
          to label %72 unwind label %78

72:                                               ; preds = %68
  %73 = load ptr, ptr %23, align 8, !tbaa !105
  %74 = load ptr, ptr %73, align 8, !tbaa !89
  %75 = getelementptr inbounds ptr, ptr %74, i64 17
  %76 = load ptr, ptr %75, align 8
  %77 = invoke noundef i32 %76(ptr noundef nonnull align 8 dereferenceable(61) %73, ptr noundef nonnull %67, i1 noundef zeroext false) #13
          to label %80 unwind label %44

78:                                               ; preds = %68
  %79 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %67, ptr noundef %66) #10
  br label %120

80:                                               ; preds = %72, %34, %61, %58
  %81 = phi ptr [ %31, %61 ], [ %31, %58 ], [ %31, %34 ], [ %67, %72 ]
  %82 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !126
  %84 = icmp eq ptr %81, %83
  %85 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner23isReadingExternalEntityEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
          to label %86 unwind label %92

86:                                               ; preds = %80
  call void @_ZN11xercesc_2_714XMLElementDecl26setExternalElemDeclarationEb(ptr noundef nonnull align 8 dereferenceable(33) %81, i1 noundef zeroext %85) #13
  call void @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE(ptr noundef nonnull align 8 dereferenceable(33) %81, i32 noundef 1) #13
  %87 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %88 unwind label %92

88:                                               ; preds = %86
  br i1 %87, label %94, label %89

89:                                               ; preds = %88
  %90 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %91 = load ptr, ptr %90, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %91, i32 noundef 207) #13
          to label %94 unwind label %92

92:                                               ; preds = %115, %109, %105, %101, %99, %97, %94, %89, %86, %80
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %120

94:                                               ; preds = %89, %88
  %95 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner15scanContentSpecERNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %81) #13
          to label %96 unwind label %92

96:                                               ; preds = %94
  br i1 %95, label %99, label %97

97:                                               ; preds = %96
  %98 = load ptr, ptr %10, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %98, i16 noundef zeroext 62) #13
          to label %119 unwind label %92

99:                                               ; preds = %96
  %100 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %101 unwind label %92

101:                                              ; preds = %99
  %102 = load ptr, ptr %10, align 8, !tbaa !137
  %103 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %102, i16 noundef zeroext 62) #13
          to label %104 unwind label %92

104:                                              ; preds = %101
  br i1 %103, label %111, label %105

105:                                              ; preds = %104
  %106 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %107 = load ptr, ptr %106, align 8, !tbaa !136
  %108 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %107, i32 noundef 232, ptr noundef %108, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %109 unwind label %92

109:                                              ; preds = %105
  %110 = load ptr, ptr %10, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %110, i16 noundef zeroext 62) #13
          to label %111 unwind label %92

111:                                              ; preds = %109, %104
  %112 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !103
  %114 = icmp eq ptr %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr %113, align 8, !tbaa !89
  %117 = getelementptr inbounds ptr, ptr %116, i64 7
  %118 = load ptr, ptr %117, align 8
  invoke void %118(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef nonnull align 8 dereferenceable(80) %81, i1 noundef zeroext %84) #13
          to label %119 unwind label %92

119:                                              ; preds = %97, %115, %111, %18
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void

120:                                              ; preds = %44, %59, %78, %92, %20
  %121 = phi { ptr, i32 } [ %21, %20 ], [ %93, %92 ], [ %45, %44 ], [ %60, %59 ], [ %79, %78 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %121
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 !prof !288 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !256
  %4 = icmp eq i32 %3, 1
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKti(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner14scanEntityDeclEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14lookingAtSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #13
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %8, i32 noundef 207) #13
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !tbaa !137
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %10, i1 noundef zeroext false) #13
  br label %12

12:                                               ; preds = %9, %6
  %13 = load ptr, ptr %3, align 8, !tbaa !137
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %13, i16 noundef zeroext 37) #13
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %19, i32 noundef 207) #13
  br label %20

20:                                               ; preds = %15, %17, %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %21 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !138
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %22) #13
  %23 = load ptr, ptr %3, align 8, !tbaa !137
  %24 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %25 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %23, ptr noundef nonnull align 8 dereferenceable(40) %24) #13
          to label %26 unwind label %32

26:                                               ; preds = %20
  %27 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !136
  br i1 %25, label %34, label %29

29:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %28, i32 noundef 222) #13
          to label %30 unwind label %32

30:                                               ; preds = %29
  %31 = load ptr, ptr %3, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %31, i16 noundef zeroext 62) #13
          to label %147 unwind label %32

32:                                               ; preds = %41, %36, %30, %29, %20
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %148

34:                                               ; preds = %26
  %35 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %28) #13
  br i1 %35, label %36, label %43

36:                                               ; preds = %34
  %37 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %38 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %37, i16 noundef zeroext 58) #13
          to label %39 unwind label %32

39:                                               ; preds = %36
  %40 = icmp eq i32 %38, -1
  br i1 %40, label %43, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %27, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %42, i32 noundef 290) #13
          to label %43 unwind label %32

43:                                               ; preds = %39, %41, %34
  br i1 %14, label %44, label %51

44:                                               ; preds = %43
  %45 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 13
  %46 = load ptr, ptr %45, align 8, !tbaa !106
  %47 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %48 = invoke noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %46, ptr noundef %47) #13
          to label %56 unwind label %49

49:                                               ; preds = %94, %88, %77, %72, %63, %51, %44
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %148

51:                                               ; preds = %43
  %52 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !105
  %54 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %55 = invoke noundef ptr @_ZN11xercesc_2_710DTDGrammar13getEntityDeclEPKt(ptr noundef nonnull align 8 dereferenceable(61) %53, ptr noundef %54) #13
          to label %56 unwind label %49

56:                                               ; preds = %51, %44
  %57 = phi ptr [ %48, %44 ], [ %55, %51 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %77, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !127
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !100
  %66 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %65) #13
          to label %67 unwind label %49

67:                                               ; preds = %63
  %68 = load ptr, ptr %64, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(75) %66, ptr noundef %68) #13
          to label %69 unwind label %70

69:                                               ; preds = %67
  store ptr %66, ptr %60, align 8, !tbaa !127
  br label %72

70:                                               ; preds = %67
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %66, ptr noundef %65) #10
  br label %148

72:                                               ; preds = %69, %59
  %73 = phi ptr [ %66, %69 ], [ %61, %59 ]
  %74 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  invoke void @_ZN11xercesc_2_713XMLEntityDecl7setNameEPKt(ptr noundef nonnull align 8 dereferenceable(72) %73, ptr noundef %74) #13
          to label %75 unwind label %49

75:                                               ; preds = %72
  %76 = load ptr, ptr %60, align 8, !tbaa !127
  br label %98

77:                                               ; preds = %56
  %78 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !102
  %80 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %79) #13
          to label %81 unwind label %49

81:                                               ; preds = %77
  %82 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %83 = load ptr, ptr %78, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKtbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(75) %80, ptr noundef %82, i1 noundef zeroext false, ptr noundef %83) #13
          to label %84 unwind label %92

84:                                               ; preds = %81
  %85 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 7
  %86 = load i8, ptr %85, align 8, !tbaa !164, !range !84, !noundef !85
  %87 = icmp ne i8 %86, 0
  call void @_ZN11xercesc_2_713DTDEntityDecl22setDeclaredInIntSubsetEb(ptr noundef nonnull align 8 dereferenceable(75) %80, i1 noundef zeroext %87) #13
  br i1 %14, label %88, label %94

88:                                               ; preds = %84
  %89 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 13
  %90 = load ptr, ptr %89, align 8, !tbaa !106
  %91 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %90, ptr noundef nonnull %80) #13
          to label %98 unwind label %49

92:                                               ; preds = %81
  %93 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %80, ptr noundef %79) #10
  br label %148

94:                                               ; preds = %84
  %95 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 9
  %96 = load ptr, ptr %95, align 8, !tbaa !105
  %97 = invoke noundef i32 @_ZNK11xercesc_2_710DTDGrammar13putEntityDeclEPNS_13DTDEntityDeclE(ptr noundef nonnull align 8 dereferenceable(61) %96, ptr noundef nonnull %80) #13
          to label %98 unwind label %49

98:                                               ; preds = %88, %94, %75
  %99 = phi ptr [ %76, %75 ], [ %80, %88 ], [ %80, %94 ]
  %100 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 6
  %101 = load ptr, ptr %100, align 8, !tbaa !127
  %102 = icmp eq ptr %99, %101
  call void @_ZN11xercesc_2_713DTDEntityDecl14setIsParameterEb(ptr noundef nonnull align 8 dereferenceable(75) %99, i1 noundef zeroext %14) #13
  %103 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %104 unwind label %107

104:                                              ; preds = %98
  br i1 %103, label %109, label %105

105:                                              ; preds = %104
  %106 = load ptr, ptr %27, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %106, i32 noundef 207) #13
          to label %109 unwind label %107

107:                                              ; preds = %105, %98
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %148

109:                                              ; preds = %105, %104
  %110 = load ptr, ptr %27, align 8, !tbaa !136
  %111 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner11getHasNoDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %110) #13
  %112 = and i1 %14, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load ptr, ptr %27, align 8, !tbaa !136
  call void @_ZN11xercesc_2_710XMLScanner11setHasNoDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %114, i1 noundef zeroext false) #13
  br label %117

115:                                              ; preds = %143, %137, %134, %130, %128, %122, %120, %117
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %148

117:                                              ; preds = %109, %113
  %118 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13scanEntityDefERNS_13DTDEntityDeclEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(75) %99, i1 noundef zeroext %14) #13
          to label %119 unwind label %115

119:                                              ; preds = %117
  br i1 %118, label %125, label %120

120:                                              ; preds = %119
  %121 = load ptr, ptr %3, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %121, i16 noundef zeroext 62) #13
          to label %122 unwind label %115

122:                                              ; preds = %120
  %123 = load ptr, ptr %27, align 8, !tbaa !136
  call void @_ZN11xercesc_2_710XMLScanner11setHasNoDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %123, i1 noundef zeroext true) #13
  %124 = load ptr, ptr %27, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %124, i32 noundef 272) #13
          to label %147 unwind label %115

125:                                              ; preds = %119
  br i1 %111, label %126, label %128

126:                                              ; preds = %125
  %127 = load ptr, ptr %27, align 8, !tbaa !136
  call void @_ZN11xercesc_2_710XMLScanner11setHasNoDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %127, i1 noundef zeroext true) #13
  br label %128

128:                                              ; preds = %126, %125
  %129 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %130 unwind label %115

130:                                              ; preds = %128
  %131 = load ptr, ptr %3, align 8, !tbaa !137
  %132 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %131, i16 noundef zeroext 62) #13
          to label %133 unwind label %115

133:                                              ; preds = %130
  br i1 %132, label %139, label %134

134:                                              ; preds = %133
  %135 = load ptr, ptr %27, align 8, !tbaa !136
  %136 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %99) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %135, i32 noundef 223, ptr noundef %136, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %137 unwind label %115

137:                                              ; preds = %134
  %138 = load ptr, ptr %3, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %138, i16 noundef zeroext 62) #13
          to label %139 unwind label %115

139:                                              ; preds = %137, %133
  %140 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !103
  %142 = icmp eq ptr %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = load ptr, ptr %141, align 8, !tbaa !89
  %145 = getelementptr inbounds ptr, ptr %144, i64 11
  %146 = load ptr, ptr %145, align 8
  invoke void %146(ptr noundef nonnull align 8 dereferenceable(8) %141, ptr noundef nonnull align 8 dereferenceable(75) %99, i1 noundef zeroext %14, i1 noundef zeroext %102) #13
          to label %147 unwind label %115

147:                                              ; preds = %122, %143, %139, %30
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void

148:                                              ; preds = %49, %70, %92, %115, %107, %32
  %149 = phi { ptr, i32 } [ %33, %32 ], [ %50, %49 ], [ %71, %70 ], [ %93, %92 ], [ %116, %115 ], [ %108, %107 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %149
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14lookingAtSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 comdat align 2 !prof !74 {
  %2 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !156
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %4, i16 noundef zeroext %2) #13
  ret i1 %5
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar13getEntityDeclEPKt(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !74 {
  %3 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !117
  %4 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %1) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !289
  %9 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef %1) #13
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %9, %6 ], [ %4, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DTDEntityDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(75) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !74 {
  tail call void @_ZN11xercesc_2_713XMLEntityDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) #13
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 8, !tbaa !75
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 2
  store i8 0, ptr %4, align 1, !tbaa !86
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 3
  store i8 0, ptr %5, align 2, !tbaa !87
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLEntityDecl7setNameEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DTDEntityDeclC2EPKtbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(75) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !74 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEntityDeclC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !75
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 2
  store i8 0, ptr %7, align 1, !tbaa !86
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 3
  store i8 0, ptr %8, align 2, !tbaa !87
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DTDEntityDecl22setDeclaredInIntSubsetEb(ptr noundef nonnull align 8 dereferenceable(75) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !196 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #13
  %5 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7, !prof !292

7:                                                ; preds = %2
  %8 = call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #13
  %10 = load ptr, ptr %0, align 8, !tbaa !109
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 65, ptr noundef %9, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  resume { ptr, i32 } %13

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !109
  %16 = load ptr, ptr %15, align 8, !tbaa !89
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef 16) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !115
  %22 = load i32, ptr %3, align 4, !tbaa !197
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !117
  call void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull %1, ptr noundef %25) #13
  %26 = load ptr, ptr %20, align 8, !tbaa !115
  %27 = load i32, ptr %3, align 4, !tbaa !197
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  store ptr %19, ptr %29, align 8, !tbaa !117
  %30 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !112
  %32 = add i32 %31, 1
  %33 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !111
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %39, label %36, !prof !293

36:                                               ; preds = %14
  %37 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !121
  br label %62

39:                                               ; preds = %14
  %40 = uitofp i32 %32 to double
  %41 = fmul double %40, 1.500000e+00
  %42 = fptoui double %41 to i32
  %43 = load ptr, ptr %0, align 8, !tbaa !109
  %44 = zext i32 %42 to i64
  %45 = shl nuw nsw i64 %44, 3
  %46 = load ptr, ptr %43, align 8, !tbaa !89
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %43, i64 noundef %45) #13
  %50 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !121
  %52 = load i32, ptr %33, align 8, !tbaa !111
  %53 = zext i32 %52 to i64
  %54 = shl nuw nsw i64 %53, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %49, ptr align 8 %51, i64 %54, i1 false)
  %55 = load ptr, ptr %0, align 8, !tbaa !109
  %56 = load ptr, ptr %50, align 8, !tbaa !121
  %57 = load ptr, ptr %55, align 8, !tbaa !89
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  call void %59(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %56) #13
  store ptr %49, ptr %50, align 8, !tbaa !121
  store i32 %42, ptr %33, align 8, !tbaa !111
  %60 = load i32, ptr %30, align 4, !tbaa !112
  %61 = add i32 %60, 1
  br label %62

62:                                               ; preds = %36, %39
  %63 = phi i32 [ %32, %36 ], [ %61, %39 ]
  %64 = phi ptr [ %38, %36 ], [ %49, %39 ]
  store i32 %63, ptr %30, align 4, !tbaa !112
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  store ptr %1, ptr %66, align 8, !tbaa !117
  call void @_ZN11xercesc_2_713XMLEntityDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %63) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %63
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710DTDGrammar13putEntityDeclEPNS_13DTDEntityDeclE(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !74 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !289
  %5 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1) #13
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DTDEntityDecl14setIsParameterEb(ptr noundef nonnull align 8 dereferenceable(75) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 2
  store i8 %3, ptr %4, align 1, !tbaa !86
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner11getHasNoDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  %3 = load i8, ptr %2, align 1, !tbaa !165, !range !84, !noundef !85
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13scanEntityDefERNS_13DTDEntityDeclEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(75) %1, i1 noundef zeroext %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %4 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %5 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %6 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %7 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %8 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !137
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13lookingAtCharEt(ptr noundef nonnull align 8 dereferenceable(80) %10, i16 noundef zeroext 39) #13
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %9, align 8, !tbaa !137
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13lookingAtCharEt(ptr noundef nonnull align 8 dereferenceable(80) %13, i16 noundef zeroext 34) #13
  br i1 %14, label %15, label %26

15:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %16 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !138
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %17) #13
  %18 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  %19 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner17scanEntityLiteralERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %18) #13
          to label %20 unwind label %21

20:                                               ; preds = %15
  br i1 %19, label %23, label %25

21:                                               ; preds = %23, %15
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %137

23:                                               ; preds = %20
  %24 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  invoke void @_ZN11xercesc_2_713XMLEntityDecl8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %24) #13
          to label %25 unwind label %21

25:                                               ; preds = %23, %20
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %135

26:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %27 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !138
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %28) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %29 = load ptr, ptr %27, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %29) #13
          to label %30 unwind label %35

30:                                               ; preds = %26
  %31 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  %32 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  %33 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner6scanIdERNS_9XMLBufferES2_NS0_7IDTypesE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %31, ptr noundef nonnull align 8 dereferenceable(40) %32, i32 noundef 1) #13
          to label %34 unwind label %37

34:                                               ; preds = %30
  br i1 %33, label %39, label %129

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %133

37:                                               ; preds = %30
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %131

39:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #11
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  %40 = load ptr, ptr %9, align 8, !tbaa !137
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %7) #13
          to label %41 unwind label %79

41:                                               ; preds = %39
  %42 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  %43 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  %44 = icmp eq ptr %42, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i16, ptr %42, align 2, !tbaa !175
  %47 = icmp eq i16 %46, 0
  %48 = select i1 %47, ptr null, ptr %42
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi ptr [ null, %41 ], [ %48, %45 ]
  invoke void @_ZN11xercesc_2_713XMLEntityDecl11setPublicIdEPKt(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %50) #13
          to label %51 unwind label %81

51:                                               ; preds = %49
  %52 = icmp eq ptr %43, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %51
  %54 = load i16, ptr %43, align 2, !tbaa !175
  %55 = icmp eq i16 %54, 0
  %56 = select i1 %55, ptr null, ptr %43
  br label %57

57:                                               ; preds = %53, %51
  %58 = phi ptr [ null, %51 ], [ %56, %53 ]
  invoke void @_ZN11xercesc_2_713XMLEntityDecl11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %58) #13
          to label %59 unwind label %81

59:                                               ; preds = %57
  %60 = load ptr, ptr %7, align 8, !tbaa !294
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i16, ptr %60, align 2, !tbaa !175
  %64 = icmp eq i16 %63, 0
  %65 = select i1 %64, ptr null, ptr %60
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi ptr [ null, %59 ], [ %65, %62 ]
  invoke void @_ZN11xercesc_2_713XMLEntityDecl10setBaseURIEPKt(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %67) #13
          to label %68 unwind label %81

68:                                               ; preds = %66
  %69 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %70 unwind label %83

70:                                               ; preds = %68
  br i1 %2, label %71, label %85

71:                                               ; preds = %70
  br i1 %69, label %72, label %125

72:                                               ; preds = %71
  %73 = load ptr, ptr %9, align 8, !tbaa !137
  %74 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %73, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgNDATAStringE) #13
          to label %75 unwind label %83

75:                                               ; preds = %72
  br i1 %74, label %76, label %85

76:                                               ; preds = %75
  %77 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %78 = load ptr, ptr %77, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %78, i32 noundef 266) #13
          to label %85 unwind label %83

79:                                               ; preds = %39
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %127

81:                                               ; preds = %66, %57, %49
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %127

83:                                               ; preds = %103, %100, %97, %93, %90, %85, %76, %72, %68
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %127

85:                                               ; preds = %76, %75, %70
  %86 = load ptr, ptr %9, align 8, !tbaa !137
  %87 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13lookingAtCharEt(ptr noundef nonnull align 8 dereferenceable(80) %86, i16 noundef zeroext 62) #13
          to label %88 unwind label %83

88:                                               ; preds = %85
  br i1 %87, label %125, label %89

89:                                               ; preds = %88
  br i1 %69, label %93, label %90

90:                                               ; preds = %89
  %91 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %92 = load ptr, ptr %91, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %92, i32 noundef 207) #13
          to label %93 unwind label %83

93:                                               ; preds = %90, %89
  %94 = load ptr, ptr %9, align 8, !tbaa !137
  %95 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %94, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgNDATAStringE) #13
          to label %96 unwind label %83

96:                                               ; preds = %93
  br i1 %95, label %100, label %97

97:                                               ; preds = %96
  %98 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %99 = load ptr, ptr %98, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %99, i32 noundef 265) #13
          to label %100 unwind label %83

100:                                              ; preds = %97, %96
  %101 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %102 unwind label %83

102:                                              ; preds = %100
  br i1 %101, label %106, label %103

103:                                              ; preds = %102
  %104 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %105 = load ptr, ptr %104, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %105, i32 noundef 207) #13
          to label %106 unwind label %83

106:                                              ; preds = %103, %102
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  %107 = load ptr, ptr %27, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %107) #13
          to label %108 unwind label %116

108:                                              ; preds = %106
  %109 = load ptr, ptr %9, align 8, !tbaa !137
  %110 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #13
  %111 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %109, ptr noundef nonnull align 8 dereferenceable(40) %110) #13
          to label %112 unwind label %118

112:                                              ; preds = %108
  br i1 %111, label %120, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %115 = load ptr, ptr %114, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %115, i32 noundef 175) #13
          to label %122 unwind label %118

116:                                              ; preds = %106
  %117 = landingpad { ptr, i32 }
          cleanup
  br label %123

118:                                              ; preds = %120, %113, %108
  %119 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #10
  br label %123

120:                                              ; preds = %112
  %121 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #13
  invoke void @_ZN11xercesc_2_713XMLEntityDecl15setNotationNameEPKt(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %121) #13
          to label %122 unwind label %118

122:                                              ; preds = %120, %113
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  br label %125

123:                                              ; preds = %118, %116
  %124 = phi { ptr, i32 } [ %119, %118 ], [ %117, %116 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  br label %127

125:                                              ; preds = %88, %71, %122
  %126 = phi i1 [ %111, %122 ], [ true, %71 ], [ true, %88 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  br label %129

127:                                              ; preds = %81, %123, %83, %79
  %128 = phi { ptr, i32 } [ %80, %79 ], [ %82, %81 ], [ %124, %123 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  br label %131

129:                                              ; preds = %34, %125
  %130 = phi i1 [ %126, %125 ], [ false, %34 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %135

131:                                              ; preds = %127, %37
  %132 = phi { ptr, i32 } [ %128, %127 ], [ %38, %37 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #10
  br label %133

133:                                              ; preds = %131, %35
  %134 = phi { ptr, i32 } [ %132, %131 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %137

135:                                              ; preds = %129, %25
  %136 = phi i1 [ %19, %25 ], [ %130, %129 ]
  ret i1 %136

137:                                              ; preds = %133, %21
  %138 = phi { ptr, i32 } [ %22, %21 ], [ %134, %133 ]
  resume { ptr, i32 } %138
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLEntityDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLEntityDeclC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !196 {
  store ptr %1, ptr %0, align 8, !tbaa !131
  %4 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEntityDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !196 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !296
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isUnparsedEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !297
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner17scanEntityLiteralERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %3 = alloca i16, align 2
  %4 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca [9 x i16], align 16
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  %10 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 2 dereferenceable(2) %3) #13
  br i1 %10, label %11, label %137

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !138
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %13) #13
  %14 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  %15 = load ptr, ptr %8, align 8, !tbaa !137
  %16 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %15) #13
          to label %17 unwind label %33

17:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #11
  store i16 0, ptr %6, align 2, !tbaa !175
  %18 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  br label %19

19:                                               ; preds = %61, %17
  %20 = phi i8 [ 0, %17 ], [ %62, %61 ]
  br label %21

21:                                               ; preds = %19, %52
  %22 = load ptr, ptr %8, align 8, !tbaa !137
  %23 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %22) #13
          to label %24 unwind label %35

24:                                               ; preds = %21
  %25 = icmp eq i16 %23, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %24
  %27 = load ptr, ptr %18, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %27, i32 noundef 244) #13
          to label %28 unwind label %39

28:                                               ; preds = %26
  %29 = call ptr @__cxa_allocate_exception(i64 48) #11
  %30 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull @.str.1, i32 noundef 2102, i32 noundef 47, ptr noundef %31) #13
          to label %32 unwind label %41

32:                                               ; preds = %28
  invoke void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
          to label %139 unwind label %39

33:                                               ; preds = %11
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %135

35:                                               ; preds = %52, %46, %21
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %133

37:                                               ; preds = %118, %112, %94, %88, %78, %74, %72, %71, %69, %65, %58, %54
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %133

39:                                               ; preds = %26, %32, %120, %128
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %133

41:                                               ; preds = %28
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %29) #11
  br label %133

43:                                               ; preds = %24
  %44 = load i16, ptr %3, align 2, !tbaa !175
  %45 = icmp eq i16 %23, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load ptr, ptr %8, align 8, !tbaa !137
  %48 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %47) #13
          to label %49 unwind label %35

49:                                               ; preds = %46
  %50 = icmp eq i32 %48, %16
  br i1 %50, label %120, label %51

51:                                               ; preds = %49, %43
  switch i16 %23, label %82 [
    i16 37, label %52
    i16 38, label %54
  ]

52:                                               ; preds = %51
  %53 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner11expandPERefEbbbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #13
          to label %21 unwind label %35, !llvm.loop !298

54:                                               ; preds = %51
  store i16 38, ptr %5, align 2, !tbaa !175
  %55 = load ptr, ptr %8, align 8, !tbaa !137
  %56 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %55, i16 noundef zeroext 35) #13
          to label %57 unwind label %37

57:                                               ; preds = %54
  br i1 %56, label %58, label %65

58:                                               ; preds = %57
  %59 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 2 dereferenceable(2) %6) #13
          to label %60 unwind label %37

60:                                               ; preds = %58
  br i1 %59, label %63, label %61

61:                                               ; preds = %60, %115, %119
  %62 = phi i8 [ %114, %119 ], [ %114, %115 ], [ 0, %60 ]
  br label %19, !llvm.loop !298

63:                                               ; preds = %60
  %64 = load i16, ptr %5, align 2, !tbaa !175
  br label %112

65:                                               ; preds = %57
  %66 = load ptr, ptr %8, align 8, !tbaa !137
  %67 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %66, ptr noundef nonnull align 8 dereferenceable(40) %14) #13
          to label %68 unwind label %37

68:                                               ; preds = %65
  br i1 %67, label %71, label %69

69:                                               ; preds = %68
  %70 = load ptr, ptr %18, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %70, i32 noundef 226) #13
          to label %112 unwind label %37

71:                                               ; preds = %68
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext 38) #13
          to label %72 unwind label %37

72:                                               ; preds = %71
  %73 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %14) #13
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %73) #13
          to label %74 unwind label %37

74:                                               ; preds = %72
  %75 = load ptr, ptr %8, align 8, !tbaa !137
  %76 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %75, i16 noundef zeroext 59) #13
          to label %77 unwind label %37

77:                                               ; preds = %74
  br i1 %76, label %81, label %78

78:                                               ; preds = %77
  %79 = load ptr, ptr %18, align 8, !tbaa !136
  %80 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %14) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %79, i32 noundef 229, ptr noundef %80, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %81 unwind label %37

81:                                               ; preds = %78, %77
  store i16 59, ptr %5, align 2, !tbaa !175
  br label %112

82:                                               ; preds = %51
  store i16 %23, ptr %5, align 2, !tbaa !175
  %83 = and i16 %23, -1024
  %84 = icmp eq i16 %83, -10240
  %85 = and i8 %20, 1
  %86 = icmp eq i8 %85, 0
  br i1 %84, label %87, label %90

87:                                               ; preds = %82
  br i1 %86, label %112, label %88

88:                                               ; preds = %87
  %89 = load ptr, ptr %18, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %89, i32 noundef 249) #13
          to label %112 unwind label %37

90:                                               ; preds = %82
  br i1 %86, label %96, label %91

91:                                               ; preds = %90
  %92 = add i16 %23, 8192
  %93 = icmp ult i16 %92, -1024
  br i1 %93, label %94, label %112

94:                                               ; preds = %91
  %95 = load ptr, ptr %18, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %95, i32 noundef 249) #13
          to label %112 unwind label %37

96:                                               ; preds = %90
  %97 = load ptr, ptr %8, align 8, !tbaa !137
  %98 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %97) #13
  %99 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %98, i16 noundef zeroext %23) #13
  br i1 %99, label %112, label %100

100:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %7) #11
  %101 = zext i16 %23 to i32
  %102 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %101, ptr noundef nonnull %7, i32 noundef 8, i32 noundef 16, ptr noundef %103) #13
          to label %104 unwind label %110

104:                                              ; preds = %100
  %105 = load ptr, ptr %18, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %105, i32 noundef 196, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %106 unwind label %110

106:                                              ; preds = %104
  %107 = load ptr, ptr %8, align 8, !tbaa !137
  %108 = load i16, ptr %3, align 2, !tbaa !175
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %107, i16 noundef zeroext %108) #13
          to label %109 unwind label %110

109:                                              ; preds = %106
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %7) #11
  br label %131

110:                                              ; preds = %106, %104, %100
  %111 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %7) #11
  br label %133

112:                                              ; preds = %63, %94, %91, %96, %87, %81, %69, %88
  %113 = phi i16 [ %64, %63 ], [ %23, %88 ], [ 38, %69 ], [ 59, %81 ], [ %23, %87 ], [ %23, %96 ], [ %23, %91 ], [ %23, %94 ]
  %114 = phi i8 [ %20, %63 ], [ %20, %88 ], [ 0, %69 ], [ 0, %81 ], [ 1, %87 ], [ 0, %96 ], [ 0, %91 ], [ 0, %94 ]
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %113) #13
          to label %115 unwind label %37

115:                                              ; preds = %112
  %116 = load i16, ptr %6, align 2, !tbaa !175
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %61, label %118

118:                                              ; preds = %115
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %116) #13
          to label %119 unwind label %37

119:                                              ; preds = %118
  store i16 0, ptr %6, align 2, !tbaa !175
  br label %61

120:                                              ; preds = %49
  %121 = load ptr, ptr %8, align 8, !tbaa !137
  %122 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %121) #13
          to label %123 unwind label %39

123:                                              ; preds = %120
  %124 = icmp eq i32 %122, %16
  br i1 %124, label %131, label %125

125:                                              ; preds = %123
  %126 = load ptr, ptr %18, align 8, !tbaa !136
  %127 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %126) #13
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load ptr, ptr %18, align 8, !tbaa !136
  %130 = call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %129) #13
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %130, i32 noundef 86) #13
          to label %131 unwind label %39

131:                                              ; preds = %123, %125, %128, %109
  %132 = phi i1 [ false, %109 ], [ true, %128 ], [ true, %125 ], [ true, %123 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %137

133:                                              ; preds = %39, %37, %35, %110, %41
  %134 = phi { ptr, i32 } [ %111, %110 ], [ %42, %41 ], [ %40, %39 ], [ %36, %35 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  br label %135

135:                                              ; preds = %133, %33
  %136 = phi { ptr, i32 } [ %134, %133 ], [ %34, %33 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  resume { ptr, i32 } %136

137:                                              ; preds = %2, %131
  %138 = phi i1 [ %132, %131 ], [ false, %2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  ret i1 %138

139:                                              ; preds = %32
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !299 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !300

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !175
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !301

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !175
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !302, !llvm.loop !303

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !174
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !219
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !304

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #13
  %21 = load i32, ptr %0, align 8, !tbaa !174
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !173
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !174
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !174
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEntityDecl8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !74 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !193
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !305
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4) #13
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !305
  %15 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %14) #13
  store ptr %15, ptr %3, align 8, !tbaa !193
  %16 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #13
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 2
  store i32 %16, ptr %17, align 4, !tbaa !194
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner6scanIdERNS_9XMLBufferES2_NS0_7IDTypesE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %3) local_unnamed_addr #5 align 2 !prof !74 {
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgSysIDStringE) #13
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %12, i32 noundef 210) #13
  br label %62

13:                                               ; preds = %8
  %14 = load ptr, ptr %5, align 8, !tbaa !137
  %15 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %14, i1 noundef zeroext false) #13
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %18, i32 noundef 207) #13
  br label %62

19:                                               ; preds = %13
  %20 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner17scanSystemLiteralERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  br label %62

21:                                               ; preds = %4
  %22 = load ptr, ptr %5, align 8, !tbaa !137
  %23 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %22, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgPubIDStringE) #13
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %26, i32 noundef 237) #13
  br label %62

27:                                               ; preds = %21
  %28 = load ptr, ptr %5, align 8, !tbaa !137
  %29 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %28, i1 noundef zeroext false) #13
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %32, i32 noundef 207) #13
  %33 = load ptr, ptr %5, align 8, !tbaa !137
  %34 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %33) #13
  switch i16 %34, label %62 [
    i16 39, label %35
    i16 34, label %35
  ]

35:                                               ; preds = %30, %30, %27
  %36 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner17scanPublicLiteralERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  br i1 %36, label %37, label %62

37:                                               ; preds = %35
  %38 = icmp eq i32 %3, 0
  br i1 %38, label %62, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr %5, align 8, !tbaa !137
  %41 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %40, i1 noundef zeroext false) #13
  %42 = load ptr, ptr %5, align 8, !tbaa !137
  %43 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %42) #13
  br i1 %41, label %53, label %44

44:                                               ; preds = %39
  %45 = icmp eq i32 %3, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %48 = load ptr, ptr %47, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %48, i32 noundef 207) #13
  switch i16 %43, label %62 [
    i16 39, label %54
    i16 34, label %54
  ]

49:                                               ; preds = %44
  switch i16 %43, label %62 [
    i16 39, label %50
    i16 34, label %50
  ]

50:                                               ; preds = %49, %49
  %51 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %52 = load ptr, ptr %51, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %52, i32 noundef 207) #13
  br label %53

53:                                               ; preds = %50, %39
  switch i16 %43, label %56 [
    i16 39, label %54
    i16 34, label %54
  ]

54:                                               ; preds = %46, %46, %53, %53
  %55 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner17scanSystemLiteralERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  br i1 %55, label %61, label %62

56:                                               ; preds = %53
  %57 = icmp eq i32 %3, 1
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %60 = load ptr, ptr %59, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %60, i32 noundef 209) #13
  br label %61

61:                                               ; preds = %56, %58, %54
  br label %62

62:                                               ; preds = %30, %46, %61, %49, %54, %37, %35, %24, %19, %16, %10
  %63 = phi i1 [ false, %10 ], [ %20, %19 ], [ false, %16 ], [ false, %30 ], [ false, %24 ], [ false, %35 ], [ true, %37 ], [ true, %61 ], [ false, %46 ], [ true, %49 ], [ false, %54 ]
  ret i1 %63
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEntityDecl11setPublicIdEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !74 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !181
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !305
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4) #13
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !305
  %15 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %14) #13
  store ptr %15, ptr %3, align 8, !tbaa !181
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEntityDecl11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !74 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !183
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !305
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4) #13
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !305
  %15 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %14) #13
  store ptr %15, ptr %3, align 8, !tbaa !183
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEntityDecl10setBaseURIEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !74 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !305
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4) #13
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !305
  %15 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %14) #13
  store ptr %15, ptr %3, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEntityDecl15setNotationNameEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !74 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !297
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !305
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4) #13
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !305
  %15 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %14) #13
  store ptr %15, ptr %3, align 8, !tbaa !297
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12getNameTokenERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #5 comdat align 2 !prof !74 {
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !156
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext true) #13
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !306 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %23, label %5, !prof !307

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !174
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !219
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %13, label %11, !prof !308

11:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2) #13
  %12 = load i32, ptr %0, align 8, !tbaa !174
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %12, %11 ], [ %6, %5 ]
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !173
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds i16, ptr %16, i64 %17
  %19 = zext i32 %2 to i64
  %20 = shl nuw nsw i64 %19, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %18, ptr align 2 %1, i64 %20, i1 false)
  %21 = load i32, ptr %0, align 8, !tbaa !174
  %22 = add i32 %21, %2
  store i32 %22, ptr %0, align 8, !tbaa !174
  br label %24

23:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #13
  br label %24

24:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLBufBid6getLenEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !108 {
  %2 = load ptr, ptr %0, align 8, !tbaa !171
  %3 = load i32, ptr %2, align 8, !tbaa !174
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner6scanEqEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !137
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext false) #13
  %5 = load ptr, ptr %2, align 8, !tbaa !137
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %5, i16 noundef zeroext 61) #13
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !137
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %8, i1 noundef zeroext false) #13
  br label %10

10:                                               ; preds = %1, %7
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711FlagJanitorIbEC2EPbb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 comdat align 2 !prof !74 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::FlagJanitor", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !309
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = zext i1 %2 to i8
  %8 = load i8, ptr %1, align 1, !tbaa !263, !range !84, !noundef !85
  store i8 %8, ptr %0, align 8, !tbaa !311
  store i8 %7, ptr %1, align 1, !tbaa !263
  br label %9

9:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr27isScanningPERefOutOfLiteralEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLReader7getTypeEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 27
  %3 = load i32, ptr %2, align 8, !tbaa !312
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner14scanMarkupDeclEb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext %1) local_unnamed_addr #5 align 2 !prof !74 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #13
  switch i16 %5, label %109 [
    i16 33, label %6
    i16 63, label %99
  ]

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !137
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %7, i16 noundef zeroext 45) #13
  %9 = load ptr, ptr %3, align 8, !tbaa !137
  br i1 %8, label %10, label %17

10:                                               ; preds = %6
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %9, i16 noundef zeroext 45) #13
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_710DTDScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
  br label %113

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %15, i32 noundef 185) #13
  %16 = load ptr, ptr %3, align 8, !tbaa !137
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %16, i16 noundef zeroext 62) #13
  br label %113

17:                                               ; preds = %6
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %9, i16 noundef zeroext 91) #13
  br i1 %18, label %19, label %79

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 7
  %21 = load i8, ptr %20, align 8, !tbaa !164, !range !84, !noundef !85
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %25, i32 noundef 221) #13
  %26 = load ptr, ptr %3, align 8, !tbaa !137
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %26, i16 noundef zeroext 62) #13
  br label %113

27:                                               ; preds = %19
  %28 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  %29 = load ptr, ptr %3, align 8, !tbaa !137
  %30 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %29, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgIncludeStringE) #13
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  %33 = load ptr, ptr %3, align 8, !tbaa !137
  %34 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %33, i16 noundef zeroext 91) #13
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %37 = load ptr, ptr %36, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %37, i32 noundef 252) #13
  br label %38

38:                                               ; preds = %35, %31
  %39 = load ptr, ptr %3, align 8, !tbaa !137
  %40 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %39) #13
  %41 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  tail call void @_ZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext true, i1 noundef zeroext false) #13
  %42 = load ptr, ptr %3, align 8, !tbaa !137
  %43 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %42) #13
  %44 = icmp eq i32 %43, %40
  br i1 %44, label %113, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %47 = load ptr, ptr %46, align 8, !tbaa !136
  %48 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %47) #13
  br i1 %48, label %49, label %113

49:                                               ; preds = %45
  %50 = load ptr, ptr %46, align 8, !tbaa !136
  %51 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %50) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %51, i32 noundef 86) #13
  br label %113

52:                                               ; preds = %27
  %53 = load ptr, ptr %3, align 8, !tbaa !137
  %54 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %53, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgIgnoreStringE) #13
  br i1 %54, label %55, label %75

55:                                               ; preds = %52
  %56 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  %57 = load ptr, ptr %3, align 8, !tbaa !137
  %58 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %57, i16 noundef zeroext 91) #13
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %61 = load ptr, ptr %60, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %61, i32 noundef 252) #13
  br label %62

62:                                               ; preds = %59, %55
  %63 = load ptr, ptr %3, align 8, !tbaa !137
  %64 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %63) #13
  tail call void @_ZN11xercesc_2_710DTDScanner18scanIgnoredSectionEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
  %65 = load ptr, ptr %3, align 8, !tbaa !137
  %66 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %65) #13
  %67 = icmp eq i32 %66, %64
  br i1 %67, label %113, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %70 = load ptr, ptr %69, align 8, !tbaa !136
  %71 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %70) #13
  br i1 %71, label %72, label %113

72:                                               ; preds = %68
  %73 = load ptr, ptr %69, align 8, !tbaa !136
  %74 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %73) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %74, i32 noundef 86) #13
  br label %113

75:                                               ; preds = %52
  %76 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %77 = load ptr, ptr %76, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %77, i32 noundef 251) #13
  %78 = load ptr, ptr %3, align 8, !tbaa !137
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %78, i16 noundef zeroext 62) #13
  br label %113

79:                                               ; preds = %17
  %80 = load ptr, ptr %3, align 8, !tbaa !137
  %81 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %80, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgAttListStringE) #13
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  tail call void @_ZN11xercesc_2_710DTDScanner15scanAttListDeclEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
  br label %113

83:                                               ; preds = %79
  %84 = load ptr, ptr %3, align 8, !tbaa !137
  %85 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %84, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgElemStringE) #13
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  tail call void @_ZN11xercesc_2_710DTDScanner15scanElementDeclEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
  br label %113

87:                                               ; preds = %83
  %88 = load ptr, ptr %3, align 8, !tbaa !137
  %89 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %88, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgEntityStringE) #13
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  tail call void @_ZN11xercesc_2_710DTDScanner14scanEntityDeclEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
  br label %113

91:                                               ; preds = %87
  %92 = load ptr, ptr %3, align 8, !tbaa !137
  %93 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %92, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgNotationStringE) #13
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  tail call void @_ZN11xercesc_2_710DTDScanner16scanNotationDeclEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
  br label %113

95:                                               ; preds = %91
  %96 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %97 = load ptr, ptr %96, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %97, i32 noundef 219) #13
  %98 = load ptr, ptr %3, align 8, !tbaa !137
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %98, i16 noundef zeroext 62) #13
  br label %113

99:                                               ; preds = %2
  %100 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %101 = load ptr, ptr %100, align 8, !tbaa !136
  %102 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %101, i1 noundef zeroext false) #13
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  br i1 %1, label %104, label %105

104:                                              ; preds = %103
  tail call void @_ZN11xercesc_2_710DTDScanner12scanTextDeclEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
  br label %113

105:                                              ; preds = %103
  %106 = load ptr, ptr %100, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %106, i32 noundef 220) #13
  %107 = load ptr, ptr %3, align 8, !tbaa !137
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %107, i16 noundef zeroext 62) #13
  br label %113

108:                                              ; preds = %99
  tail call void @_ZN11xercesc_2_710DTDScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
  br label %113

109:                                              ; preds = %2
  %110 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %111 = load ptr, ptr %110, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %111, i32 noundef 219) #13
  %112 = load ptr, ptr %3, align 8, !tbaa !137
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %112, i16 noundef zeroext 62) #13
  br label %113

113:                                              ; preds = %75, %86, %94, %95, %90, %82, %12, %13, %108, %105, %104, %109, %49, %45, %38, %72, %68, %62, %23
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_720EndOfEntityException12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::EndOfEntityException", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !313
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711FlagJanitorIbED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::FlagJanitor", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !309
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load i8, ptr %0, align 8, !tbaa !311, !range !84, !noundef !85
  store i8 %6, ptr %3, align 1, !tbaa !263
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner17scanSystemLiteralERNS_9XMLBufferE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %3 = alloca i16, align 2
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 2 dereferenceable(2) %3) #13
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8, !tbaa !137
  %9 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8) #13
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %14, label %21

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !136
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %13, i32 noundef 209) #13
  br label %29

14:                                               ; preds = %25, %7
  %15 = call ptr @__cxa_allocate_exception(i64 48) #11
  %16 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str.1, i32 noundef 3724, i32 noundef 47, ptr noundef %17) #13
          to label %18 unwind label %19

18:                                               ; preds = %14
  call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %15) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  resume { ptr, i32 } %20

21:                                               ; preds = %7, %25
  %22 = phi i16 [ %27, %25 ], [ %9, %7 ]
  %23 = load i16, ptr %3, align 2, !tbaa !175
  %24 = icmp eq i16 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %22) #13
  %26 = load ptr, ptr %4, align 8, !tbaa !137
  %27 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %26) #13
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %14, label %21

29:                                               ; preds = %21, %11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner17scanPublicLiteralERNS_9XMLBufferE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %3 = alloca i16, align 2
  %4 = alloca [9 x i16], align 16
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 2 dereferenceable(2) %3) #13
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load ptr, ptr %5, align 8, !tbaa !137
  %10 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #13
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  br label %25

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !136
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %17, i32 noundef 209) #13
  br label %41

18:                                               ; preds = %37, %8
  %19 = call ptr @__cxa_allocate_exception(i64 48) #11
  %20 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull @.str.1, i32 noundef 3673, i32 noundef 47, ptr noundef %21) #13
          to label %22 unwind label %23

22:                                               ; preds = %18
  call void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %19) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  resume { ptr, i32 } %24

25:                                               ; preds = %12, %37
  %26 = phi i16 [ %10, %12 ], [ %39, %37 ]
  %27 = zext i16 %26 to i32
  %28 = load i16, ptr %3, align 2, !tbaa !175
  %29 = icmp eq i16 %26, %28
  br i1 %29, label %41, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %5, align 8, !tbaa !137
  %32 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %31) #13
  %33 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader14isPublicIdCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %32, i16 noundef zeroext %26) #13
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %4) #11
  %35 = load ptr, ptr %13, align 8, !tbaa !100
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %27, ptr noundef nonnull %4, i32 noundef 8, i32 noundef 16, ptr noundef %35) #13
  %36 = load ptr, ptr %14, align 8, !tbaa !136
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %36, i32 noundef 211, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %4) #11
  br label %37

37:                                               ; preds = %30, %34
  call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %26) #13
  %38 = load ptr, ptr %5, align 8, !tbaa !137
  %39 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %38) #13
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %18, label %25

41:                                               ; preds = %25, %15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner18scanIgnoredSectionEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = alloca [9 x i16], align 16
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #13
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  br label %17

10:                                               ; preds = %62, %1
  %11 = call ptr @__cxa_allocate_exception(i64 48) #11
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.1, i32 noundef 2801, i32 noundef 47, ptr noundef %13) #13
          to label %14 unwind label %15

14:                                               ; preds = %10
  call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %11) #11
  resume { ptr, i32 } %16

17:                                               ; preds = %7, %62
  %18 = phi i16 [ %5, %7 ], [ %66, %62 ]
  %19 = phi i64 [ 1, %7 ], [ %64, %62 ]
  %20 = phi i8 [ 0, %7 ], [ %63, %62 ]
  %21 = zext i16 %18 to i32
  switch i16 %18, label %42 [
    i16 60, label %22
    i16 93, label %30
  ]

22:                                               ; preds = %17
  %23 = load ptr, ptr %3, align 8, !tbaa !137
  %24 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %23, i16 noundef zeroext 33) #13
  br i1 %24, label %25, label %62

25:                                               ; preds = %22
  %26 = load ptr, ptr %3, align 8, !tbaa !137
  %27 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %26, i16 noundef zeroext 91) #13
  %28 = zext i1 %27 to i64
  %29 = add i64 %19, %28
  br label %62

30:                                               ; preds = %17
  %31 = load ptr, ptr %3, align 8, !tbaa !137
  %32 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %31, i16 noundef zeroext 93) #13
  br i1 %32, label %33, label %62

33:                                               ; preds = %30, %33
  %34 = load ptr, ptr %3, align 8, !tbaa !137
  %35 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %34, i16 noundef zeroext 93) #13
  br i1 %35, label %33, label %36, !llvm.loop !315

36:                                               ; preds = %33
  %37 = load ptr, ptr %3, align 8, !tbaa !137
  %38 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %37, i16 noundef zeroext 62) #13
  br i1 %38, label %39, label %62

39:                                               ; preds = %36
  %40 = add i64 %19, -1
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %68, label %62

42:                                               ; preds = %17
  %43 = and i16 %18, -1024
  %44 = and i8 %20, 1
  %45 = icmp eq i8 %44, 0
  switch i16 %43, label %52 [
    i16 -10240, label %46
    i16 -9216, label %49
  ]

46:                                               ; preds = %42
  br i1 %45, label %62, label %47

47:                                               ; preds = %46
  %48 = load ptr, ptr %8, align 8, !tbaa !136
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %48, i32 noundef 249) #13
  br label %62

49:                                               ; preds = %42
  br i1 %45, label %50, label %62

50:                                               ; preds = %49
  %51 = load ptr, ptr %8, align 8, !tbaa !136
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %51, i32 noundef 282) #13
  br label %62

52:                                               ; preds = %42
  br i1 %45, label %55, label %53

53:                                               ; preds = %52
  %54 = load ptr, ptr %8, align 8, !tbaa !136
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %54, i32 noundef 249) #13
  br label %62

55:                                               ; preds = %52
  %56 = load ptr, ptr %3, align 8, !tbaa !137
  %57 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %56) #13
  %58 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %57, i16 noundef zeroext %18) #13
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %2) #11
  %60 = load ptr, ptr %9, align 8, !tbaa !100
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %21, ptr noundef nonnull %2, i32 noundef 8, i32 noundef 16, ptr noundef %60) #13
  %61 = load ptr, ptr %8, align 8, !tbaa !136
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %61, i32 noundef 196, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #11
  br label %62

62:                                               ; preds = %39, %25, %22, %47, %30, %36, %46, %53, %59, %55, %49, %50
  %63 = phi i8 [ %20, %22 ], [ %20, %36 ], [ %20, %30 ], [ %20, %47 ], [ %20, %25 ], [ 1, %46 ], [ 0, %53 ], [ 0, %59 ], [ 0, %55 ], [ 0, %49 ], [ 0, %50 ], [ %20, %39 ]
  %64 = phi i64 [ %19, %22 ], [ %19, %36 ], [ %19, %30 ], [ %19, %47 ], [ %29, %25 ], [ %19, %46 ], [ %19, %53 ], [ %19, %59 ], [ %19, %55 ], [ %19, %49 ], [ %19, %50 ], [ %40, %39 ]
  %65 = load ptr, ptr %3, align 8, !tbaa !137
  %66 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %65) #13
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %10, label %17

68:                                               ; preds = %39
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner18scanInternalSubsetEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = alloca %"class.xercesc_2_7::FlagJanitor", align 8
  %3 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %4 = alloca [9 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 7
  call void @_ZN11xercesc_2_711FlagJanitorIbEC2EPbb(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %5, i1 noundef zeroext true) #13
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !103
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %7, align 8, !tbaa !89
  %11 = getelementptr inbounds ptr, ptr %10, i64 15
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
          to label %15 unwind label %13

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %121

15:                                               ; preds = %9, %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %16 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %17) #13
          to label %18 unwind label %26

18:                                               ; preds = %15
  %19 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %20 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %21 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  br label %22

22:                                               ; preds = %103, %18
  %23 = load ptr, ptr %19, align 8, !tbaa !137
  %24 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %23) #13
          to label %25 unwind label %28

25:                                               ; preds = %22
  switch i16 %24, label %68 [
    i16 0, label %115
    i16 93, label %32
    i16 37, label %35
    i16 60, label %40
  ]

26:                                               ; preds = %15
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %119

28:                                               ; preds = %22, %35, %38, %76, %78, %85
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %117

30:                                               ; preds = %32
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %117

32:                                               ; preds = %25
  %33 = load ptr, ptr %19, align 8, !tbaa !137
  %34 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %33) #13
          to label %105 unwind label %30

35:                                               ; preds = %25
  %36 = load ptr, ptr %19, align 8, !tbaa !137
  %37 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %36) #13
          to label %38 unwind label %28

38:                                               ; preds = %35
  %39 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner11expandPERefEbbbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %103 unwind label %28

40:                                               ; preds = %25
  %41 = load ptr, ptr %19, align 8, !tbaa !137
  %42 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %41) #13
          to label %43 unwind label %59

43:                                               ; preds = %40
  %44 = load ptr, ptr %19, align 8, !tbaa !137
  %45 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %44) #13
  %46 = call noundef i32 @_ZNK11xercesc_2_79XMLReader7getTypeEv(ptr noundef nonnull align 8 dereferenceable(163992) %45) #13
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr %19, align 8, !tbaa !137
  %49 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %48) #13
          to label %50 unwind label %61

50:                                               ; preds = %43
  invoke void @_ZN11xercesc_2_710DTDScanner14scanMarkupDeclEb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false) #13
          to label %51 unwind label %61

51:                                               ; preds = %50
  %52 = load ptr, ptr %19, align 8, !tbaa !137
  %53 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %52) #13
          to label %54 unwind label %61

54:                                               ; preds = %51
  %55 = icmp eq i32 %53, %42
  br i1 %55, label %103, label %56

56:                                               ; preds = %54
  %57 = load ptr, ptr %20, align 8, !tbaa !136
  br i1 %47, label %58, label %63

58:                                               ; preds = %56
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %57, i32 noundef 299) #13
          to label %103 unwind label %61

59:                                               ; preds = %40
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %117

61:                                               ; preds = %65, %58, %51, %50, %43
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %117

63:                                               ; preds = %56
  %64 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %57) #13
  br i1 %64, label %65, label %103

65:                                               ; preds = %63
  %66 = load ptr, ptr %20, align 8, !tbaa !136
  %67 = call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %66) #13
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %67, i32 noundef 86) #13
          to label %103 unwind label %61

68:                                               ; preds = %25
  %69 = load ptr, ptr %19, align 8, !tbaa !137
  %70 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %69) #13
  %71 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %70, i16 noundef zeroext %24) #13
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load ptr, ptr %6, align 8, !tbaa !103
  %74 = icmp eq ptr %73, null
  %75 = load ptr, ptr %19, align 8, !tbaa !137
  br i1 %74, label %85, label %76

76:                                               ; preds = %72
  %77 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  invoke void @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %75, ptr noundef nonnull align 8 dereferenceable(40) %77) #13
          to label %78 unwind label %28

78:                                               ; preds = %76
  %79 = load ptr, ptr %6, align 8, !tbaa !103
  %80 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  %81 = call noundef i32 @_ZNK11xercesc_2_79XMLBufBid6getLenEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  %82 = load ptr, ptr %79, align 8, !tbaa !89
  %83 = getelementptr inbounds ptr, ptr %82, i64 6
  %84 = load ptr, ptr %83, align 8
  invoke void %84(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef %80, i32 noundef %81) #13
          to label %103 unwind label %28

85:                                               ; preds = %72
  %86 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %75, i1 noundef zeroext false) #13
          to label %103 unwind label %28

87:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %4) #11
  %88 = load ptr, ptr %19, align 8, !tbaa !137
  %89 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %88) #13
          to label %90 unwind label %97

90:                                               ; preds = %87
  %91 = zext i16 %89 to i32
  %92 = load ptr, ptr %21, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %91, ptr noundef nonnull %4, i32 noundef 8, i32 noundef 16, ptr noundef %92) #13
          to label %93 unwind label %97

93:                                               ; preds = %90
  %94 = load ptr, ptr %20, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %94, i32 noundef 213, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %95 unwind label %97

95:                                               ; preds = %93
  %96 = icmp eq i16 %24, 62
  br i1 %96, label %104, label %99

97:                                               ; preds = %99, %93, %90, %87
  %98 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %4) #11
  br label %117

99:                                               ; preds = %95
  %100 = load ptr, ptr %19, align 8, !tbaa !137
  %101 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %100, ptr noundef nonnull @_ZZN11xercesc_2_710DTDScanner18scanInternalSubsetEvE6toSkip) #13
          to label %102 unwind label %97

102:                                              ; preds = %99
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %4) #11
  br label %103

103:                                              ; preds = %102, %38, %85, %78, %58, %65, %63, %54
  br label %22

104:                                              ; preds = %95
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %4) #11
  br label %105

105:                                              ; preds = %104, %32
  %106 = phi i1 [ true, %32 ], [ false, %104 ]
  %107 = load ptr, ptr %6, align 8, !tbaa !103
  %108 = icmp eq ptr %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %105
  %110 = load ptr, ptr %107, align 8, !tbaa !89
  %111 = getelementptr inbounds ptr, ptr %110, i64 9
  %112 = load ptr, ptr %111, align 8
  invoke void %112(ptr noundef nonnull align 8 dereferenceable(8) %107) #13
          to label %115 unwind label %113

113:                                              ; preds = %109
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %117

115:                                              ; preds = %25, %105, %109
  %116 = phi i1 [ %106, %109 ], [ %106, %105 ], [ false, %25 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  call void @_ZN11xercesc_2_711FlagJanitorIbED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret i1 %116

117:                                              ; preds = %28, %30, %97, %61, %59, %113
  %118 = phi { ptr, i32 } [ %114, %113 ], [ %98, %97 ], [ %62, %61 ], [ %60, %59 ], [ %29, %28 ], [ %31, %30 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  br label %119

119:                                              ; preds = %117, %26
  %120 = phi { ptr, i32 } [ %118, %117 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %121

121:                                              ; preds = %119, %13
  %122 = phi { ptr, i32 } [ %120, %119 ], [ %14, %13 ]
  call void @_ZN11xercesc_2_711FlagJanitorIbED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %122
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner16scanNotationDeclEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %3 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %4 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %5 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %9, i32 noundef 207) #13
  %10 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !137
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %11, i16 noundef zeroext 62) #13
  br label %144

12:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %13 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !138
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %14) #13
  %15 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !137
  %17 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %18 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %16, ptr noundef nonnull align 8 dereferenceable(40) %17) #13
          to label %19 unwind label %22

19:                                               ; preds = %12
  %20 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !136
  br i1 %18, label %24, label %38

22:                                               ; preds = %38, %41, %33, %31, %26, %12
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %151

24:                                               ; preds = %19
  %25 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %21) #13
  br i1 %25, label %26, label %33

26:                                               ; preds = %24
  %27 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %28 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %27, i16 noundef zeroext 58) #13
          to label %29 unwind label %22

29:                                               ; preds = %26
  %30 = icmp eq i32 %28, -1
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %20, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %32, i32 noundef 290) #13
          to label %33 unwind label %22

33:                                               ; preds = %29, %31, %24
  %34 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %35 unwind label %22

35:                                               ; preds = %33
  br i1 %34, label %43, label %36

36:                                               ; preds = %35
  %37 = load ptr, ptr %20, align 8, !tbaa !136
  br label %38

38:                                               ; preds = %19, %36
  %39 = phi ptr [ %37, %36 ], [ %21, %19 ]
  %40 = phi i32 [ 207, %36 ], [ 175, %19 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %39, i32 noundef %40) #13
          to label %41 unwind label %22

41:                                               ; preds = %38
  %42 = load ptr, ptr %15, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %42, i16 noundef zeroext 62) #13
          to label %143 unwind label %22

43:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %44 = load ptr, ptr %13, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %44) #13
          to label %45 unwind label %54

45:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %46 = load ptr, ptr %13, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %46) #13
          to label %47 unwind label %56

47:                                               ; preds = %45
  %48 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  %49 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  %50 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner6scanIdERNS_9XMLBufferES2_NS0_7IDTypesE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %48, ptr noundef nonnull align 8 dereferenceable(40) %49, i32 noundef 2) #13
          to label %51 unwind label %58

51:                                               ; preds = %47
  br i1 %50, label %60, label %52

52:                                               ; preds = %51
  %53 = load ptr, ptr %15, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %53, i16 noundef zeroext 62) #13
          to label %142 unwind label %58

54:                                               ; preds = %43
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %149

56:                                               ; preds = %45
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %147

58:                                               ; preds = %60, %52, %47
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %145

60:                                               ; preds = %51
  %61 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %62 unwind label %58

62:                                               ; preds = %60
  %63 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 9
  %64 = load ptr, ptr %63, align 8, !tbaa !105
  %65 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %66 = load ptr, ptr %64, align 8, !tbaa !89
  %67 = getelementptr inbounds ptr, ptr %66, i64 15
  %68 = load ptr, ptr %67, align 8
  %69 = invoke noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(61) %64, ptr noundef %65) #13
          to label %70 unwind label %75

70:                                               ; preds = %62
  %71 = icmp ne ptr %69, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %70
  %73 = load ptr, ptr %20, align 8, !tbaa !136
  %74 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %73, i32 noundef 2, ptr noundef %74, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %125 unwind label %77

75:                                               ; preds = %62
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %145

77:                                               ; preds = %140, %136, %134, %130, %72
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %145

79:                                               ; preds = %70
  %80 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  %81 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %82 = load ptr, ptr %15, align 8, !tbaa !137
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %82, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %83 unwind label %119

83:                                               ; preds = %79
  %84 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !102
  %86 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %85) #13
          to label %87 unwind label %119

87:                                               ; preds = %83
  %88 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %89 = icmp eq ptr %80, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load i16, ptr %80, align 2, !tbaa !175
  %92 = icmp eq i16 %91, 0
  %93 = select i1 %92, ptr null, ptr %80
  br label %94

94:                                               ; preds = %90, %87
  %95 = phi ptr [ null, %87 ], [ %93, %90 ]
  %96 = icmp eq ptr %81, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = load i16, ptr %81, align 2, !tbaa !175
  %99 = icmp eq i16 %98, 0
  %100 = select i1 %99, ptr null, ptr %81
  br label %101

101:                                              ; preds = %97, %94
  %102 = phi ptr [ null, %94 ], [ %100, %97 ]
  %103 = load ptr, ptr %5, align 8, !tbaa !294
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i16, ptr %103, align 2, !tbaa !175
  %107 = icmp eq i16 %106, 0
  %108 = select i1 %107, ptr null, ptr %103
  br label %109

109:                                              ; preds = %105, %101
  %110 = phi ptr [ null, %101 ], [ %108, %105 ]
  %111 = load ptr, ptr %84, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_715XMLNotationDeclC1EPKtS2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %86, ptr noundef %88, ptr noundef %95, ptr noundef %102, ptr noundef %110, ptr noundef %111) #13
          to label %112 unwind label %121

112:                                              ; preds = %109
  %113 = load ptr, ptr %63, align 8, !tbaa !105
  %114 = load ptr, ptr %113, align 8, !tbaa !89
  %115 = getelementptr inbounds ptr, ptr %114, i64 18
  %116 = load ptr, ptr %115, align 8
  %117 = invoke noundef i32 %116(ptr noundef nonnull align 8 dereferenceable(61) %113, ptr noundef nonnull %86) #13
          to label %118 unwind label %119

118:                                              ; preds = %112
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  br label %125

119:                                              ; preds = %112, %83, %79
  %120 = landingpad { ptr, i32 }
          cleanup
  br label %123

121:                                              ; preds = %109
  %122 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %86, ptr noundef %85) #10
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi { ptr, i32 } [ %120, %119 ], [ %122, %121 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  br label %145

125:                                              ; preds = %72, %118
  %126 = phi ptr [ %69, %72 ], [ %86, %118 ]
  %127 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !103
  %129 = icmp eq ptr %128, null
  br i1 %129, label %134, label %130

130:                                              ; preds = %125
  %131 = load ptr, ptr %128, align 8, !tbaa !89
  %132 = getelementptr inbounds ptr, ptr %131, i64 13
  %133 = load ptr, ptr %132, align 8
  invoke void %133(ptr noundef nonnull align 8 dereferenceable(8) %128, ptr noundef nonnull align 8 dereferenceable(56) %126, i1 noundef zeroext %71) #13
          to label %134 unwind label %77

134:                                              ; preds = %130, %125
  %135 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner13checkForPERefEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
          to label %136 unwind label %77

136:                                              ; preds = %134
  %137 = load ptr, ptr %15, align 8, !tbaa !137
  %138 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %137, i16 noundef zeroext 62) #13
          to label %139 unwind label %77

139:                                              ; preds = %136
  br i1 %138, label %142, label %140

140:                                              ; preds = %139
  %141 = load ptr, ptr %20, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %141, i32 noundef 238) #13
          to label %142 unwind label %77

142:                                              ; preds = %139, %140, %52
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %143

143:                                              ; preds = %41, %142
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  br label %144

144:                                              ; preds = %143, %7
  ret void

145:                                              ; preds = %75, %123, %77, %58
  %146 = phi { ptr, i32 } [ %59, %58 ], [ %76, %75 ], [ %78, %77 ], [ %124, %123 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #10
  br label %147

147:                                              ; preds = %145, %56
  %148 = phi { ptr, i32 } [ %146, %145 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  br label %149

149:                                              ; preds = %147, %54
  %150 = phi { ptr, i32 } [ %148, %147 ], [ %55, %54 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %151

151:                                              ; preds = %149, %22
  %152 = phi { ptr, i32 } [ %150, %149 ], [ %23, %22 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %152
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDScanner6scanPIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %3 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %4 = alloca [9 x i16], align 16
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14lookingAtSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %6) #13
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !136
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %10, i32 noundef 194) #13
  %11 = load ptr, ptr %5, align 8, !tbaa !137
  %12 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %11, i1 noundef zeroext false) #13
  br label %13

13:                                               ; preds = %8, %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %14 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !138
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %15) #13
  %16 = load ptr, ptr %5, align 8, !tbaa !137
  %17 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %18 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %16, ptr noundef nonnull align 8 dereferenceable(40) %17) #13
          to label %19 unwind label %25

19:                                               ; preds = %13
  br i1 %18, label %27, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %22 = load ptr, ptr %21, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %22, i32 noundef 194) #13
          to label %23 unwind label %25

23:                                               ; preds = %20
  %24 = load ptr, ptr %5, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %24, i16 noundef zeroext 62) #13
          to label %142 unwind label %25

25:                                               ; preds = %50, %46, %39, %23, %20, %13
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %147

27:                                               ; preds = %19
  %28 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %29 = call noundef i32 @_ZNK11xercesc_2_79XMLBufBid6getLenEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i16, ptr %28, align 2, !tbaa !175
  switch i16 %32, label %42 [
    i16 120, label %33
    i16 88, label %33
  ]

33:                                               ; preds = %31, %31
  %34 = getelementptr inbounds i16, ptr %28, i64 1
  %35 = load i16, ptr %34, align 2, !tbaa !175
  switch i16 %35, label %42 [
    i16 109, label %36
    i16 77, label %36
  ]

36:                                               ; preds = %33, %33
  %37 = getelementptr inbounds i16, ptr %28, i64 2
  %38 = load i16, ptr %37, align 2, !tbaa !175
  switch i16 %38, label %42 [
    i16 108, label %39
    i16 76, label %39
  ]

39:                                               ; preds = %36, %36
  %40 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %41 = load ptr, ptr %40, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %41, i32 noundef 283) #13
          to label %42 unwind label %25

42:                                               ; preds = %36, %33, %31, %39, %27
  %43 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 12
  %44 = load ptr, ptr %43, align 8, !tbaa !136
  %45 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %44) #13
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %28, i16 noundef zeroext 58) #13
          to label %48 unwind label %25

48:                                               ; preds = %46
  %49 = icmp eq i32 %47, -1
  br i1 %49, label %52, label %50

50:                                               ; preds = %48
  %51 = load ptr, ptr %43, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %51, i32 noundef 290) #13
          to label %52 unwind label %25

52:                                               ; preds = %48, %50, %42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %53 = load ptr, ptr %14, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %53) #13
          to label %54 unwind label %75

54:                                               ; preds = %52
  %55 = load ptr, ptr %5, align 8, !tbaa !137
  %56 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %55) #13
          to label %57 unwind label %77

57:                                               ; preds = %54
  %58 = load ptr, ptr %5, align 8, !tbaa !137
  br i1 %56, label %59, label %121

59:                                               ; preds = %57
  %60 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %58, i1 noundef zeroext false) #13
          to label %61 unwind label %77

61:                                               ; preds = %59
  %62 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 1
  br label %63

63:                                               ; preds = %61, %119
  %64 = phi i8 [ %120, %119 ], [ 0, %61 ]
  %65 = load ptr, ptr %5, align 8, !tbaa !137
  %66 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %65) #13
          to label %67 unwind label %79

67:                                               ; preds = %63
  %68 = icmp eq i16 %66, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %67
  %70 = load ptr, ptr %43, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %70, i32 noundef 195) #13
          to label %71 unwind label %81

71:                                               ; preds = %69
  %72 = call ptr @__cxa_allocate_exception(i64 48) #11
  %73 = load ptr, ptr %62, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %72, ptr noundef nonnull @.str.1, i32 noundef 3570, i32 noundef 47, ptr noundef %73) #13
          to label %74 unwind label %83

74:                                               ; preds = %71
  invoke void @__cxa_throw(ptr nonnull %72, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
          to label %149 unwind label %81

75:                                               ; preds = %52
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %145

77:                                               ; preds = %128, %130, %137, %124, %121, %59, %54
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %143

79:                                               ; preds = %63, %88, %98, %106, %119
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %143

81:                                               ; preds = %69, %74
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %143

83:                                               ; preds = %71
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %72) #11
  br label %143

85:                                               ; preds = %67
  %86 = zext i16 %66 to i32
  %87 = icmp eq i16 %66, 63
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load ptr, ptr %5, align 8, !tbaa !137
  %90 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %89, i16 noundef zeroext 62) #13
          to label %91 unwind label %79

91:                                               ; preds = %88
  br i1 %90, label %132, label %100

92:                                               ; preds = %85
  %93 = and i16 %66, -1024
  %94 = icmp eq i16 %93, -10240
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = and i8 %64, 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %119, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %43, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %99, i32 noundef 249) #13
          to label %119 unwind label %79

100:                                              ; preds = %91, %92
  %101 = and i8 %64, 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = add i16 %66, 8192
  %105 = icmp ult i16 %104, -1024
  br i1 %105, label %106, label %119

106:                                              ; preds = %103
  %107 = load ptr, ptr %43, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %107, i32 noundef 249) #13
          to label %119 unwind label %79

108:                                              ; preds = %100
  %109 = load ptr, ptr %5, align 8, !tbaa !137
  %110 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %109) #13
  %111 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader9isXMLCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %110, i16 noundef zeroext %66) #13
  br i1 %111, label %119, label %112

112:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %4) #11
  %113 = load ptr, ptr %62, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %86, ptr noundef nonnull %4, i32 noundef 8, i32 noundef 16, ptr noundef %113) #13
          to label %114 unwind label %117

114:                                              ; preds = %112
  %115 = load ptr, ptr %43, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %115, i32 noundef 196, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null) #13
          to label %116 unwind label %117

116:                                              ; preds = %114
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %4) #11
  br label %119

117:                                              ; preds = %114, %112
  %118 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %4) #11
  br label %143

119:                                              ; preds = %106, %103, %116, %108, %95, %98
  %120 = phi i8 [ %64, %98 ], [ 1, %95 ], [ 0, %108 ], [ 0, %116 ], [ 0, %103 ], [ 0, %106 ]
  invoke void @_ZN11xercesc_2_79XMLBufBid6appendEt(ptr noundef nonnull align 8 dereferenceable(16) %3, i16 noundef zeroext %66) #13
          to label %63 unwind label %79

121:                                              ; preds = %57
  %122 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %58, i16 noundef zeroext 63) #13
          to label %123 unwind label %77

123:                                              ; preds = %121
  br i1 %122, label %124, label %128

124:                                              ; preds = %123
  %125 = load ptr, ptr %5, align 8, !tbaa !137
  %126 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %125, i16 noundef zeroext 62) #13
          to label %127 unwind label %77

127:                                              ; preds = %124
  br i1 %126, label %132, label %128

128:                                              ; preds = %127, %123
  %129 = load ptr, ptr %43, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %129, i32 noundef 195) #13
          to label %130 unwind label %77

130:                                              ; preds = %128
  %131 = load ptr, ptr %5, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %131, i16 noundef zeroext 62) #13
          to label %141 unwind label %77

132:                                              ; preds = %91, %127
  %133 = call noundef ptr @_ZN11xercesc_2_79XMLBufBid12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  %134 = getelementptr inbounds %"class.xercesc_2_7::DTDScanner", ptr %0, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !103
  %136 = icmp eq ptr %135, null
  br i1 %136, label %141, label %137

137:                                              ; preds = %132
  %138 = load ptr, ptr %135, align 8, !tbaa !89
  %139 = getelementptr inbounds ptr, ptr %138, i64 5
  %140 = load ptr, ptr %139, align 8
  invoke void %140(ptr noundef nonnull align 8 dereferenceable(8) %135, ptr noundef %28, ptr noundef %133) #13
          to label %141 unwind label %77

141:                                              ; preds = %130, %132, %137
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %142

142:                                              ; preds = %23, %141
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void

143:                                              ; preds = %79, %81, %83, %117, %77
  %144 = phi { ptr, i32 } [ %78, %77 ], [ %118, %117 ], [ %84, %83 ], [ %80, %79 ], [ %82, %81 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  br label %145

145:                                              ; preds = %143, %75
  %146 = phi { ptr, i32 } [ %144, %143 ], [ %76, %75 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %147

147:                                              ; preds = %145, %25
  %148 = phi { ptr, i32 } [ %146, %145 ], [ %26, %25 ]
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %148

149:                                              ; preds = %74
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeC2EPNS_5QNameEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  %5 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !269
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %6, i8 0, i64 36, i1 false)
  store i8 1, ptr %7, align 4, !tbaa !91
  %8 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  store i8 1, ptr %8, align 1, !tbaa !96
  %9 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  store i32 1, ptr %9, align 8, !tbaa !270
  %10 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 10
  store i32 1, ptr %10, align 4, !tbaa !271
  br i1 %2, label %11, label %20

11:                                               ; preds = %4
  %12 = icmp eq ptr %1, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %11
  %14 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %3) #13
          to label %15 unwind label %16

15:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(56) %1) #13
          to label %20 unwind label %18

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %23

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %3) #10
  br label %23

20:                                               ; preds = %4, %15
  %21 = phi ptr [ %14, %15 ], [ %1, %4 ]
  store ptr %21, ptr %6, align 8, !tbaa !99
  br label %22

22:                                               ; preds = %20, %11
  ret void

23:                                               ; preds = %18, %16
  %24 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  resume { ptr, i32 } %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !316 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !317
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ContentSpecNode12orphanSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  store ptr null, ptr %2, align 8, !tbaa !98
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715XMLNotationDeclC1EPKtS2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader14isPublicIdCharEt(ptr noundef nonnull align 8 dereferenceable(163992), i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner13getXMLVersionEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 61
  %3 = load i32, ptr %2, align 8, !tbaa !319
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLBufBid7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = load ptr, ptr %0, align 8, !tbaa !171
  %3 = load i32, ptr %2, align 8, !tbaa !174
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString14isValidEncNameEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11setEncodingEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { optsize }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!73}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!36 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 339}
!37 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 4}
!38 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!39 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!40 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv, i64 4}
!41 = !{ptr @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv, ptr @_ZNK11xercesc_2_79XMLReader12getReaderNumEv, i64 4926602}
!42 = !{ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 379609}
!43 = !{ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, i64 379609}
!44 = !{ptr @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 612}
!45 = !{ptr @_ZN11xercesc_2_79ReaderMgr7getNameERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb, i64 612}
!46 = !{ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!47 = !{ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev, ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_, i64 1}
!48 = !{ptr @_ZN11xercesc_2_79XMLBufBidD2Ev, ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, i64 379609}
!49 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE, i64 5}
!50 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv, i64 1}
!51 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 1}
!52 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!53 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 1668291}
!54 = !{ptr @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt, ptr @_ZN11xercesc_2_79XMLReader13skippedStringEPKt, i64 680336}
!55 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!56 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!57 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_throw, i64 1}
!58 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!59 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!60 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 96}
!61 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 96}
!62 = !{ptr @_ZN11xercesc_2_79ReaderMgr13lookingAtCharEt, ptr @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv, i64 5}
!63 = !{ptr @_ZN11xercesc_2_79XMLAttDef8setValueEPKt, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 1}
!64 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv, i64 6}
!65 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, i64 5}
!66 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, ptr @__cxa_allocate_exception, i64 1}
!67 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE, i64 1}
!68 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, ptr @_ZN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEC2EPS1_PS2_, i64 4}
!69 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, ptr @_ZN11xercesc_2_713XMLEntityDecl5setIdEj, i64 4}
!70 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!71 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 5}
!72 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 1}
!73 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!74 = !{!"function_entry_count", i64 0}
!75 = !{!76, !83, i64 72}
!76 = !{!"_ZTSN11xercesc_2_713DTDEntityDeclE", !77, i64 0, !83, i64 72, !83, i64 73, !83, i64 74}
!77 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !78, i64 0, !79, i64 8, !79, i64 12, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48, !82, i64 56, !82, i64 64}
!78 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!79 = !{!"int", !80, i64 0}
!80 = !{!"omnipotent char", !81, i64 0}
!81 = !{!"Simple C++ TBAA"}
!82 = !{!"any pointer", !80, i64 0}
!83 = !{!"bool", !80, i64 0}
!84 = !{i8 0, i8 2}
!85 = !{}
!86 = !{!76, !83, i64 73}
!87 = !{!76, !83, i64 74}
!88 = !{!"function_entry_count", i64 339}
!89 = !{!90, !90, i64 0}
!90 = !{!"vtable pointer", !81, i64 0}
!91 = !{!92, !83, i64 52}
!92 = !{!"_ZTSN11xercesc_2_715ContentSpecNodeE", !78, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !93, i64 48, !83, i64 52, !83, i64 53, !79, i64 56, !79, i64 60}
!93 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !80, i64 0}
!94 = !{!"branch_weights", i32 10, i32 331}
!95 = !{!92, !82, i64 32}
!96 = !{!92, !83, i64 53}
!97 = !{!"branch_weights", i32 1, i32 340}
!98 = !{!92, !82, i64 40}
!99 = !{!92, !82, i64 16}
!100 = !{!101, !82, i64 8}
!101 = !{!"_ZTSN11xercesc_2_710DTDScannerE", !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48, !83, i64 56, !79, i64 60, !82, i64 64, !82, i64 72, !82, i64 80, !82, i64 88, !82, i64 96, !79, i64 104, !79, i64 108}
!102 = !{!101, !82, i64 16}
!103 = !{!101, !82, i64 24}
!104 = !{!101, !79, i64 60}
!105 = !{!101, !82, i64 64}
!106 = !{!101, !82, i64 96}
!107 = !{!"function_entry_count", i64 5836268}
!108 = !{!"function_entry_count", i64 4}
!109 = !{!110, !82, i64 0}
!110 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEE", !82, i64 0, !82, i64 8, !82, i64 16, !79, i64 24, !79, i64 28, !79, i64 32}
!111 = !{!110, !79, i64 24}
!112 = !{!110, !79, i64 28}
!113 = !{!110, !79, i64 32}
!114 = !{!"branch_weights", i32 1, i32 5}
!115 = !{!110, !82, i64 8}
!116 = !{!"branch_weights", i32 1, i32 159}
!117 = !{!82, !82, i64 0}
!118 = !{!"branch_weights", i32 159, i32 10689}
!119 = distinct !{!119, !120}
!120 = !{!"llvm.loop.mustprogress"}
!121 = !{!110, !82, i64 16}
!122 = !{!123, !82, i64 40}
!123 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !124, i64 8, !82, i64 16, !79, i64 24, !82, i64 32, !82, i64 40}
!124 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !80, i64 0}
!125 = !{!101, !82, i64 32}
!126 = !{!101, !82, i64 40}
!127 = !{!101, !82, i64 48}
!128 = !{!"branch_weights", i32 333, i32 6}
!129 = !{!130, !82, i64 8}
!130 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEE", !82, i64 0, !82, i64 8}
!131 = !{!130, !82, i64 0}
!132 = !{!"branch_weights", i32 6, i32 0}
!133 = distinct !{!133, !120}
!134 = !{!"branch_weights", i32 10689, i32 159}
!135 = distinct !{!135, !120}
!136 = !{!101, !82, i64 88}
!137 = !{!101, !82, i64 80}
!138 = !{!101, !82, i64 72}
!139 = !{!101, !79, i64 108}
!140 = !{!"function_entry_count", i64 1666453}
!141 = !{!142, !83, i64 18}
!142 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !143, i64 0, !144, i64 8, !83, i64 16, !83, i64 17, !83, i64 18, !83, i64 19, !83, i64 20, !83, i64 21, !83, i64 22, !83, i64 23, !83, i64 24, !83, i64 25, !83, i64 26, !83, i64 27, !83, i64 28, !83, i64 29, !83, i64 30, !83, i64 31, !83, i64 32, !83, i64 33, !83, i64 34, !83, i64 35, !83, i64 36, !83, i64 37, !83, i64 38, !79, i64 40, !79, i64 44, !79, i64 48, !79, i64 52, !79, i64 56, !79, i64 60, !79, i64 64, !79, i64 68, !82, i64 72, !79, i64 80, !79, i64 84, !79, i64 88, !79, i64 92, !79, i64 96, !82, i64 104, !82, i64 112, !82, i64 120, !82, i64 128, !82, i64 136, !82, i64 144, !82, i64 152, !82, i64 160, !82, i64 168, !83, i64 176, !145, i64 184, !82, i64 264, !148, i64 272, !82, i64 280, !82, i64 288, !82, i64 296, !82, i64 304, !82, i64 312, !82, i64 320, !82, i64 328, !82, i64 336, !82, i64 344, !147, i64 352, !82, i64 360, !149, i64 368, !150, i64 392, !150, i64 432, !150, i64 472, !150, i64 512, !150, i64 552, !150, i64 592, !150, i64 632, !151, i64 672}
!143 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!144 = !{!"long", !80, i64 0}
!145 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !146, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !79, i64 40, !82, i64 48, !83, i64 56, !147, i64 60, !83, i64 64, !82, i64 72}
!146 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!147 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !80, i64 0}
!148 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !80, i64 0}
!149 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !79, i64 0, !82, i64 8, !82, i64 16}
!150 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !79, i64 0, !79, i64 4, !79, i64 8, !83, i64 12, !82, i64 16, !82, i64 24, !82, i64 32}
!151 = !{!"_ZTSN11xercesc_2_79ElemStackE", !79, i64 0, !79, i64 4, !152, i64 8, !82, i64 48, !79, i64 56, !79, i64 60, !79, i64 64, !79, i64 68, !79, i64 72, !79, i64 76, !79, i64 80, !82, i64 88, !82, i64 96}
!152 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !78, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !79, i64 32, !79, i64 36}
!153 = !{!"function_entry_count", i64 344419}
!154 = !{!142, !79, i64 52}
!155 = !{!"function_entry_count", i64 4926602}
!156 = !{!145, !82, i64 16}
!157 = !{!158, !79, i64 163904}
!158 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !79, i64 0, !80, i64 4, !79, i64 32772, !80, i64 32776, !80, i64 49160, !144, i64 114696, !144, i64 114704, !159, i64 114712, !82, i64 114720, !83, i64 114728, !83, i64 114729, !82, i64 114736, !79, i64 114744, !80, i64 114748, !79, i64 163900, !79, i64 163904, !160, i64 163908, !83, i64 163912, !161, i64 163916, !79, i64 163920, !83, i64 163924, !83, i64 163925, !82, i64 163928, !82, i64 163936, !83, i64 163944, !83, i64 163945, !82, i64 163952, !162, i64 163960, !82, i64 163968, !83, i64 163976, !147, i64 163980, !82, i64 163984}
!159 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !80, i64 0}
!160 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !80, i64 0}
!161 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !80, i64 0}
!162 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !80, i64 0}
!163 = distinct !{!163, !120}
!164 = !{!101, !83, i64 56}
!165 = !{!142, !83, i64 23}
!166 = !{!"function_entry_count", i64 379609}
!167 = !{!168, !82, i64 8}
!168 = !{!"_ZTSN11xercesc_2_79XMLBufBidE", !82, i64 0, !82, i64 8}
!169 = !{!"function_entry_count", i64 612}
!170 = !{!"function_entry_count", i64 379607}
!171 = !{!168, !82, i64 0}
!172 = !{!"function_entry_count", i64 10}
!173 = !{!150, !82, i64 32}
!174 = !{!150, !79, i64 0}
!175 = !{!176, !176, i64 0}
!176 = !{!"short", !80, i64 0}
!177 = !{!142, !83, i64 22}
!178 = !{!"function_entry_count", i64 20}
!179 = !{!142, !83, i64 24}
!180 = !{!142, !82, i64 264}
!181 = !{!77, !82, i64 40}
!182 = !{!77, !82, i64 56}
!183 = !{!77, !82, i64 48}
!184 = !{!142, !83, i64 17}
!185 = !{!142, !83, i64 37}
!186 = !{!"function_entry_count", i64 1}
!187 = !{!188, !82, i64 0}
!188 = !{!"_ZTSN11xercesc_2_77JanitorINS_11InputSourceEEE", !82, i64 0}
!189 = !{!158, !83, i64 163945}
!190 = !{!77, !82, i64 24}
!191 = !{!142, !82, i64 136}
!192 = distinct !{!192, !120}
!193 = !{!77, !82, i64 16}
!194 = !{!77, !79, i64 12}
!195 = !{!"function_entry_count", i64 8985736}
!196 = !{!"function_entry_count", i64 5}
!197 = !{!79, !79, i64 0}
!198 = !{!"branch_weights", i32 5, i32 1}
!199 = !{!"branch_weights", i32 1, i32 0}
!200 = distinct !{!200, !120}
!201 = !{!"function_entry_count", i64 4646679}
!202 = !{!"branch_weights", i32 1, i32 4646680}
!203 = !{!"branch_weights", i32 1216534, i32 3430147}
!204 = !{!"branch_weights", i32 1, i32 3430146}
!205 = !{!"branch_weights", i32 3430146, i32 42249130}
!206 = distinct !{!206, !120}
!207 = !{!"function_entry_count", i64 1231717351}
!208 = !{!"branch_weights", i32 621, i32 -1469098093}
!209 = !{!"branch_weights", i32 408901017, i32 1}
!210 = !{!"branch_weights", i32 267, i32 4}
!211 = !{!"branch_weights", i32 1, i32 4}
!212 = !{!"branch_weights", i32 156, i32 112}
!213 = !{!"branch_weights", i32 1, i32 112}
!214 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!215 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!216 = distinct !{!216, !120}
!217 = !{!"branch_weights", i32 1, i32 2}
!218 = !{!"function_entry_count", i64 7992849}
!219 = !{!150, !79, i64 4}
!220 = !{!"branch_weights", i32 1, i32 7992850}
!221 = !{!"function_entry_count", i64 10769804}
!222 = !{!"function_entry_count", i64 1668291}
!223 = !{!224, !82, i64 16}
!224 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !78, i64 0, !82, i64 8, !82, i64 16, !225, i64 24, !79, i64 28, !83, i64 32}
!225 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !80, i64 0}
!226 = !{!227, !79, i64 24}
!227 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !78, i64 0, !228, i64 8, !229, i64 12, !230, i64 16, !83, i64 20, !83, i64 21, !79, i64 24, !82, i64 32, !82, i64 40, !82, i64 48}
!228 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !80, i64 0}
!229 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !80, i64 0}
!230 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !80, i64 0}
!231 = !{!227, !83, i64 21}
!232 = !{!"function_entry_count", i64 680336}
!233 = !{!227, !229, i64 12}
!234 = !{!227, !82, i64 40}
!235 = !{!227, !82, i64 48}
!236 = !{!"function_entry_count", i64 593014}
!237 = !{!"function_entry_count", i64 401820}
!238 = !{!227, !228, i64 8}
!239 = !{!"function_entry_count", i64 240751}
!240 = !{!241, !79, i64 12}
!241 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !83, i64 8, !79, i64 12, !79, i64 16, !82, i64 24, !82, i64 32}
!242 = !{!"function_entry_count", i64 2444437052}
!243 = !{!"branch_weights", i32 -1850530243, i32 1}
!244 = !{!241, !82, i64 32}
!245 = !{!241, !82, i64 24}
!246 = !{!"function_entry_count", i64 558789}
!247 = !{!"branch_weights", i32 158605, i32 400186}
!248 = !{!"function_entry_count", i64 2453164456}
!249 = !{!"branch_weights", i32 1, i32 -1841802839}
!250 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!251 = !{!"branch_weights", i32 408669070, i32 -279908792}
!252 = distinct !{!252, !120}
!253 = !{!101, !79, i64 104}
!254 = distinct !{!254, !120}
!255 = !{!"function_entry_count", i64 79}
!256 = !{!224, !225, i64 24}
!257 = !{!224, !83, i64 32}
!258 = !{!"function_entry_count", i64 7478295}
!259 = !{!"function_entry_count", i64 5190970}
!260 = !{!158, !82, i64 163968}
!261 = !{!80, !80, i64 0}
!262 = !{!"function_entry_count", i64 3529098}
!263 = !{!83, !83, i64 0}
!264 = !{i32 0, i32 3}
!265 = distinct !{!265, !120}
!266 = !{!"function_entry_count", i64 3115354}
!267 = distinct !{!267, !120}
!268 = !{!"function_entry_count", i64 833744}
!269 = !{!92, !82, i64 8}
!270 = !{!92, !79, i64 56}
!271 = !{!92, !79, i64 60}
!272 = !{!"DTDScanner.cpp:_ZN11xercesc_2_7L11makeRepNodeEtPNS_15ContentSpecNodeEPNS_13MemoryManagerE"}
!273 = !{!"function_entry_count", i64 96}
!274 = !{!92, !93, i64 48}
!275 = !{!"function_entry_count", i64 353}
!276 = !{!"function_entry_count", i64 155}
!277 = !{!"function_entry_count", i64 14}
!278 = !{!"branch_weights", i32 15, i32 1}
!279 = !{!"function_entry_count", i64 1068727}
!280 = !{!"function_entry_count", i64 1069174}
!281 = !{!282, !283, i64 36}
!282 = !{!"_ZTSN11xercesc_2_714DTDElementDeclE", !224, i64 0, !283, i64 36, !82, i64 40, !82, i64 48, !82, i64 56, !82, i64 64, !82, i64 72}
!283 = !{!"_ZTSN11xercesc_2_714DTDElementDecl10ModelTypesE", !80, i64 0}
!284 = distinct !{!284, !120}
!285 = !{!"function_entry_count", i64 12}
!286 = !{!227, !82, i64 32}
!287 = !{!"branch_weights", i32 2, i32 1}
!288 = !{!"function_entry_count", i64 1666355}
!289 = !{!290, !82, i64 32}
!290 = !{!"_ZTSN11xercesc_2_710DTDGrammarE", !291, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48, !79, i64 56, !83, i64 60}
!291 = !{!"_ZTSN11xercesc_2_77GrammarE", !78, i64 0}
!292 = !{!"branch_weights", i32 6, i32 1}
!293 = !{!"branch_weights", i32 1, i32 6}
!294 = !{!295, !82, i64 0}
!295 = !{!"_ZTSN11xercesc_2_79ReaderMgr17LastExtEntityInfoE", !82, i64 0, !82, i64 8, !144, i64 16, !144, i64 24}
!296 = !{!77, !79, i64 8}
!297 = !{!77, !82, i64 32}
!298 = distinct !{!298, !120}
!299 = !{!"function_entry_count", i64 789922}
!300 = !{!"branch_weights", i32 1, i32 789923}
!301 = !{!"branch_weights", i32 285, i32 789639}
!302 = !{!"branch_weights", i32 789639, i32 41628304}
!303 = distinct !{!303, !120}
!304 = !{!"branch_weights", i32 789637, i32 3}
!305 = !{!77, !82, i64 64}
!306 = !{!"function_entry_count", i64 2718768}
!307 = !{!"branch_weights", i32 1, i32 2718769}
!308 = !{!"branch_weights", i32 2718765, i32 5}
!309 = !{!310, !82, i64 8}
!310 = !{!"_ZTSN11xercesc_2_711FlagJanitorIbEE", !83, i64 0, !82, i64 8}
!311 = !{!310, !83, i64 0}
!312 = !{!158, !162, i64 163960}
!313 = !{!314, !79, i64 8}
!314 = !{!"_ZTSN11xercesc_2_720EndOfEntityExceptionE", !82, i64 0, !79, i64 8}
!315 = distinct !{!315, !120}
!316 = !{!"function_entry_count", i64 2192223}
!317 = !{!318, !82, i64 32}
!318 = !{!"_ZTSN11xercesc_2_75QNameE", !78, i64 0, !79, i64 8, !79, i64 12, !79, i64 16, !79, i64 20, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48}
!319 = !{!142, !147, i64 352}

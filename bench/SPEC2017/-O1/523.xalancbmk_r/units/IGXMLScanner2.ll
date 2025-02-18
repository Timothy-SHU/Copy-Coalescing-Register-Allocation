; ModuleID = 'IGXMLScanner2.cpp'
source_filename = "IGXMLScanner2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::SchemaValidator" = type <{ %"class.xercesc_2_7::XMLValidator", ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, %"class.xercesc_2_7::XMLBuffer", i8, i8, [6 x i8], %"class.xercesc_2_7::XSDErrorReporter", ptr, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::XMLValidator" = type { ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSDErrorReporter" = type { ptr, i8, ptr }
%"class.xercesc_2_7::ValueStackOf.7" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf.8" }
%"class.xercesc_2_7::ValueVectorOf.8" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ComplexTypeInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf.9" = type { ptr, i8, ptr, i32, i32, ptr }
%"class.xercesc_2_7::IGXMLScanner" = type { %"class.xercesc_2_7::XMLScanner", i8, i32, i32, ptr, %"class.xercesc_2_7::XMLBuffer", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.xercesc_2_7::PSVIElemContext" }
%"struct.xercesc_2_7::PSVIElemContext" = type { i8, i8, i32, i32, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::KVStringPair" = type { %"class.xercesc_2_7::XSerializable", i64, i64, ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaGrammar" = type { %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::DatatypeValidatorFactory" }
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::DatatypeValidatorFactory" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.2" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.18" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::SchemaAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSSimpleTypeDefinition" = type { %"class.xercesc_2_7::XSTypeDefinition", i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSTypeDefinition" = type { %"class.xercesc_2_7::XSObject.base", i32, i16, ptr }
%"class.xercesc_2_7::XSObject.base" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::PSVIItem" = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf.4" = type { ptr, i8, ptr, i32, i32, ptr }
%"class.xercesc_2_7::ValueVectorOf.6" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.17" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem.20" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"class.xercesc_2_7::RefHashTableOf.3" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::PSVIAttributeList" = type <{ ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf.13" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.14" = type { ptr, i8, i32, i32, ptr, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLDTDDescriptionImpl" = type { %"class.xercesc_2_7::XMLDTDDescription", ptr, ptr }
%"class.xercesc_2_7::XMLDTDDescription" = type { %"class.xercesc_2_7::XMLGrammarDescription" }
%"class.xercesc_2_7::XMLGrammarDescription" = type { %"class.xercesc_2_7::XSerializable", ptr }
%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf" }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::NameIdPool" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"struct.xercesc_2_7::NameIdPoolBucketElem.24" = type { ptr, ptr }
%"class.xercesc_2_7::IdentityConstraintHandler" = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf.5" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLSchemaDescriptionImpl" = type { %"class.xercesc_2_7::XMLSchemaDescription", i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLSchemaDescription" = type { %"class.xercesc_2_7::XMLGrammarDescription" }
%"class.xercesc_2_7::XSDDOMParser" = type { %"class.xercesc_2_7::XercesDOMParser", i8, i32, i32, i32, ptr, ptr, ptr, %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XSDErrorReporter", %"class.xercesc_2_7::XSDLocator" }
%"class.xercesc_2_7::XercesDOMParser" = type { %"class.xercesc_2_7::AbstractDOMParser", ptr, ptr, ptr }
%"class.xercesc_2_7::AbstractDOMParser" = type { %"class.xercesc_2_7::XMLDocumentHandler", %"class.xercesc_2_7::XMLErrorReporter", %"class.xercesc_2_7::XMLEntityHandler", %"class.xercesc_2_7::DocTypeHandler", %"class.xercesc_2_7::PSVIHandler", i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLBufferMgr", ptr, ptr }
%"class.xercesc_2_7::XMLDocumentHandler" = type { ptr }
%"class.xercesc_2_7::XMLErrorReporter" = type { ptr }
%"class.xercesc_2_7::XMLEntityHandler" = type { ptr }
%"class.xercesc_2_7::DocTypeHandler" = type { ptr }
%"class.xercesc_2_7::PSVIHandler" = type { ptr }
%"class.xercesc_2_7::XSDLocator" = type { %"class.xercesc_2_7::Locator", i64, i64, ptr, ptr }
%"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo" = type { ptr, ptr, i64, i64 }
%"class.xercesc_2_7::XMLResourceIdentifier" = type { i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLURL" = type <{ ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::TraverseSchema" = type { i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLBuffer", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XSDErrorReporter", ptr, ptr, ptr, ptr, %"class.xercesc_2_7::GeneralAttributeCheck" }
%"class.xercesc_2_7::GeneralAttributeCheck" = type { ptr, ptr, %"class.xercesc_2_7::IDDatatypeValidator" }
%"class.xercesc_2_7::IDDatatypeValidator" = type { %"class.xercesc_2_7::StringDatatypeValidator" }
%"class.xercesc_2_7::StringDatatypeValidator" = type { %"class.xercesc_2_7::AbstractStringValidator" }
%"class.xercesc_2_7::AbstractStringValidator" = type { %"class.xercesc_2_7::DatatypeValidator", i32, i32, i32, i8, ptr }
%"struct.xercesc_2_7::ElemStack::StackElem" = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, i32, ptr, i32, i32 }
%"class.xercesc_2_7::DTDGrammar" = type <{ %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SubstitutionGroupComparator" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::NameIdPool.15" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"struct.xercesc_2_7::NameIdPoolBucketElem" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.19" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.22" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.23" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjE3putEPviPj = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv = comdat any

$_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE3putEPviPS1_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKtj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPtE9elementAtEj = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj = comdat any

$_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721MalformedURLException7getTypeEv = comdat any

$_ZNK11xercesc_2_721MalformedURLException9duplicateEv = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjE6rehashEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEED2Ev = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE6rehashEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTIN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTSN11xercesc_2_720EndOfEntityExceptionE = comdat any

$_ZTIN11xercesc_2_720EndOfEntityExceptionE = comdat any

$_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols11fgDT_ANYURIE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni11fgXMLStringE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE = external constant [0 x i16], align 2
@.str = private unnamed_addr constant [18 x i8] c"IGXMLScanner2.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni12fgXMLURINameE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols21fgXSI_SCHEMALOCACTIONE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols32fgXSI_NONAMESPACESCHEMALOCACTIONE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols10fgXSI_TYPEE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols10fgATT_NILLE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_TRUEE = external local_unnamed_addr constant [0 x i16], align 2
@_ZTSN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local constant [39 x i8] c"N11xercesc_2_721MalformedURLExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721MalformedURLExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_713SchemaSymbols21fgATT_TARGETNAMESPACEE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720EndOfEntityExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720EndOfEntityExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722UnexpectedEOFExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZZN11xercesc_2_712IGXMLScanner13scanCDSectionEvE10CDataClose = internal constant [3 x i16] [i16 93, i16 62, i16 0], align 2
@_ZN11xercesc_2_715XMLContentModel13gInvalidTransE = external local_unnamed_addr constant i32, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"./xercesc/util/ValueStackOf.c\00", align 1
@_ZTSN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719EmptyStackExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719EmptyStackExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_719EmptyStackExceptionD0Ev, ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv, ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.3 = private unnamed_addr constant [37 x i8] c"./xercesc/util/RefHash2KeysTableOf.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_721MalformedURLExceptionD0Ev, ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv, ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev, ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv, ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE = external local_unnamed_addr global ptr, align 8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat !prof !134 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !135 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %13 = alloca [100 x i16], align 16
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store i32 %2, ptr %10, align 4, !tbaa !136
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %17 = load ptr, ptr %16, align 8, !tbaa !140
  %18 = load ptr, ptr %17, align 8, !tbaa !155
  %19 = getelementptr inbounds ptr, ptr %18, i64 5
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef i32 %20(ptr noundef nonnull align 8 dereferenceable(8) %17), !prof !157
  %22 = icmp ne i32 %21, 1
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %24 = load i8, ptr %23, align 8, !range !158
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %22, i1 true, i1 %25, !prof !159
  br i1 %26, label %45, label %27, !prof !159

27:                                               ; preds = %5
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %29 = load ptr, ptr %28, align 8, !tbaa !160
  %30 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %29, i64 0, i32 14
  %31 = load ptr, ptr %30, align 8, !tbaa !161
  %32 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.7", ptr %31, i64 0, i32 1, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !165
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35, !prof !167

35:                                               ; preds = %27
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %31)
  %37 = load ptr, ptr %36, align 8, !tbaa !168
  br label %38

38:                                               ; preds = %27, %35
  %39 = phi ptr [ %37, %35 ], [ null, %27 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %45, !prof !169

41:                                               ; preds = %38
  %42 = load ptr, ptr %28, align 8, !tbaa !160
  %43 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %42, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !170
  br label %45

45:                                               ; preds = %38, %41, %5
  %46 = phi ptr [ null, %38 ], [ %44, %41 ], [ null, %5 ]
  %47 = phi ptr [ %39, %38 ], [ null, %41 ], [ null, %5 ]
  %48 = icmp eq ptr %47, null
  %49 = load i8, ptr %23, align 8, !range !158
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %48, i1 true, i1 %50, !prof !171
  br i1 %51, label %58, label %52, !prof !171

52:                                               ; preds = %45
  %53 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %47, i64 0, i32 24
  %54 = load ptr, ptr %53, align 8, !tbaa !172
  %55 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.9", ptr %54, i64 0, i32 4
  %56 = load i32, ptr %55, align 4, !tbaa !174
  %57 = icmp ne i32 %56, 0
  br label %63

58:                                               ; preds = %45
  %59 = load ptr, ptr %3, align 8, !tbaa !155
  %60 = getelementptr inbounds ptr, ptr %59, i64 8
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef zeroext i1 %61(ptr noundef nonnull align 8 dereferenceable(33) %3), !prof !176
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi i1 [ %57, %52 ], [ %62, %58 ]
  %65 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 16
  %66 = load i32, ptr %65, align 8, !tbaa !177
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 8, !tbaa !177
  %68 = load i32, ptr %10, align 4
  %69 = icmp ne i32 %68, 0
  %70 = select i1 %64, i1 true, i1 %69, !prof !181
  br i1 %70, label %71, label %1498, !prof !182

71:                                               ; preds = %63
  %72 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !183
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %75 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %74)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #14
  store i8 0, ptr %11, align 1, !tbaa !185
  %76 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !186
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82, !prof !187

79:                                               ; preds = %71
  invoke void @_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %82 unwind label %80, !prof !188

80:                                               ; preds = %79
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %1492

82:                                               ; preds = %79, %71
  %83 = load i32, ptr %10, align 4, !tbaa !136
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %1154, label %85, !prof !189

85:                                               ; preds = %82
  %86 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %1, i64 0, i32 2
  %87 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %1, i64 0, i32 4
  %88 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 8
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %90 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %47, i64 0, i32 24
  %91 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %47, i64 0, i32 21
  %92 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 17
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %75, i64 0, i32 6
  %94 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %95 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %96 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 4
  %97 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %75, i64 0, i32 6
  %98 = zext i32 %73 to i64
  br label %99

99:                                               ; preds = %85, %1146
  %100 = phi i64 [ 0, %85 ], [ %1131, %1146 ]
  %101 = load i32, ptr %86, align 4, !tbaa !190
  %102 = zext i32 %101 to i64
  %103 = icmp ult i64 %100, %102
  br i1 %103, label %112, label %104, !prof !192

104:                                              ; preds = %99
  %105 = call ptr @__cxa_allocate_exception(i64 48) #14
  %106 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %1, i64 0, i32 5
  %107 = load ptr, ptr %106, align 8, !tbaa !193
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %105, ptr noundef nonnull @.str.4, i32 noundef 241, i32 noundef 116, ptr noundef %107)
          to label %108 unwind label %110

108:                                              ; preds = %104
  invoke void @__cxa_throw(ptr nonnull %105, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %109 unwind label %145

109:                                              ; preds = %108
  unreachable

110:                                              ; preds = %104
  %111 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %105) #14
  br label %1492

112:                                              ; preds = %99
  %113 = load ptr, ptr %87, align 8, !tbaa !194
  %114 = getelementptr inbounds ptr, ptr %113, i64 %100
  %115 = load ptr, ptr %114, align 8, !tbaa !168
  %116 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %115, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %13) #14
  %118 = load ptr, ptr %88, align 8, !tbaa !197
  %119 = getelementptr inbounds i32, ptr %118, i64 %100
  %120 = load i32, ptr %119, align 4, !tbaa !136
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %196, label %122, !prof !198

122:                                              ; preds = %112
  %123 = icmp eq ptr %117, null
  br i1 %123, label %138, label %124, !prof !199

124:                                              ; preds = %122
  %125 = load i16, ptr %117, align 2, !tbaa !200
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %138, label %127, !prof !199

127:                                              ; preds = %124, %127
  %128 = phi ptr [ %129, %127 ], [ %117, %124 ]
  %129 = getelementptr inbounds i16, ptr %128, i64 1
  %130 = load i16, ptr %129, align 2, !tbaa !200
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %132, label %127, !prof !202, !llvm.loop !203

132:                                              ; preds = %127
  %133 = ptrtoint ptr %129 to i64
  %134 = ptrtoint ptr %117 to i64
  %135 = sub i64 %133, %134
  %136 = lshr exact i64 %135, 1
  %137 = trunc i64 %136 to i32
  br label %138

138:                                              ; preds = %122, %124, %132
  %139 = phi i32 [ %137, %132 ], [ 0, %124 ], [ 0, %122 ]
  %140 = icmp ult i32 %139, 100
  br i1 %140, label %141, label %149, !prof !206

141:                                              ; preds = %138
  invoke void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %13, ptr noundef %117)
          to label %142 unwind label %147, !prof !206

142:                                              ; preds = %141
  %143 = sext i32 %120 to i64
  %144 = getelementptr inbounds [100 x i16], ptr %13, i64 0, i64 %143
  br label %190

145:                                              ; preds = %108
  %146 = landingpad { ptr, i32 }
          cleanup
  br label %1492

147:                                              ; preds = %182, %167, %141
  %148 = landingpad { ptr, i32 }
          cleanup
  br label %1150

149:                                              ; preds = %138
  %150 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %12, i64 0, i32 1
  %151 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %152 = load ptr, ptr %151, align 8, !tbaa !207
  br i1 %123, label %174, label %153

153:                                              ; preds = %149
  %154 = load i16, ptr %117, align 2, !tbaa !200
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %167, label %156

156:                                              ; preds = %153, %156
  %157 = phi ptr [ %158, %156 ], [ %117, %153 ]
  %158 = getelementptr inbounds i16, ptr %157, i64 1
  %159 = load i16, ptr %158, align 2, !tbaa !200
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %161, label %156, !llvm.loop !203

161:                                              ; preds = %156
  %162 = ptrtoint ptr %158 to i64
  %163 = ptrtoint ptr %117 to i64
  %164 = sub i64 %162, %163
  %165 = add i64 %164, 2
  %166 = and i64 %165, 8589934590
  br label %167

167:                                              ; preds = %161, %153
  %168 = phi i64 [ %166, %161 ], [ 2, %153 ]
  %169 = load ptr, ptr %152, align 8, !tbaa !155
  %170 = getelementptr inbounds ptr, ptr %169, i64 2
  %171 = load ptr, ptr %170, align 8
  %172 = invoke noundef ptr %171(ptr noundef nonnull align 8 dereferenceable(8) %152, i64 noundef %168)
          to label %173 unwind label %147

173:                                              ; preds = %167
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %172, ptr nonnull align 2 %117, i64 %168, i1 false)
  br label %174

174:                                              ; preds = %173, %149
  %175 = phi ptr [ %172, %173 ], [ null, %149 ]
  %176 = load ptr, ptr %151, align 8, !tbaa !207
  %177 = load ptr, ptr %12, align 8, !tbaa !208
  %178 = icmp eq ptr %177, null
  br i1 %178, label %187, label %179

179:                                              ; preds = %174
  %180 = load ptr, ptr %150, align 8, !tbaa !210
  %181 = icmp eq ptr %180, null
  br i1 %181, label %186, label %182

182:                                              ; preds = %179
  %183 = load ptr, ptr %180, align 8, !tbaa !155
  %184 = getelementptr inbounds ptr, ptr %183, i64 3
  %185 = load ptr, ptr %184, align 8
  invoke void %185(ptr noundef nonnull align 8 dereferenceable(8) %180, ptr noundef nonnull %177)
          to label %187 unwind label %147

186:                                              ; preds = %179
  call void @_ZdaPv(ptr noundef %177) #17
  br label %187

187:                                              ; preds = %182, %174, %186
  store ptr %175, ptr %12, align 8, !tbaa !208
  store ptr %176, ptr %150, align 8, !tbaa !210
  %188 = sext i32 %120 to i64
  %189 = getelementptr inbounds i16, ptr %175, i64 %188
  br label %190

190:                                              ; preds = %187, %142
  %191 = phi ptr [ %189, %187 ], [ %144, %142 ]
  %192 = phi ptr [ %175, %187 ], [ %13, %142 ]
  store i16 0, ptr %191, align 2, !tbaa !200
  %193 = sext i32 %120 to i64
  %194 = getelementptr inbounds i16, ptr %117, i64 %193
  %195 = getelementptr inbounds i16, ptr %194, i64 1
  br label %196

196:                                              ; preds = %112, %190
  %197 = phi ptr [ %195, %190 ], [ %117, %112 ]
  %198 = phi ptr [ %192, %190 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %112 ]
  %199 = invoke noundef i32 @_ZN11xercesc_2_712IGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %198, i32 noundef 0)
          to label %200 unwind label %296, !prof !192

200:                                              ; preds = %196
  %201 = load i32, ptr %89, align 8, !tbaa !211
  %202 = icmp eq i32 %199, %201
  br i1 %202, label %250, label %203, !prof !212

203:                                              ; preds = %200
  %204 = icmp eq ptr %197, null
  br i1 %204, label %209, label %205, !prof !213

205:                                              ; preds = %203
  %206 = load i16, ptr %197, align 2, !tbaa !200
  %207 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !200
  %208 = icmp eq i16 %206, %207
  br i1 %208, label %212, label %223, !prof !214

209:                                              ; preds = %203
  %210 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !200
  %211 = icmp eq i16 %210, 0
  br i1 %211, label %250, label %223

212:                                              ; preds = %205, %217
  %213 = phi i16 [ %220, %217 ], [ %206, %205 ]
  %214 = phi ptr [ %219, %217 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %205 ]
  %215 = phi ptr [ %218, %217 ], [ %197, %205 ]
  %216 = icmp eq i16 %213, 0
  br i1 %216, label %250, label %217, !prof !215

217:                                              ; preds = %212
  %218 = getelementptr inbounds i16, ptr %215, i64 1
  %219 = getelementptr inbounds i16, ptr %214, i64 1
  %220 = load i16, ptr %218, align 2, !tbaa !200
  %221 = load i16, ptr %219, align 2, !tbaa !200
  %222 = icmp eq i16 %220, %221
  br i1 %222, label %212, label %223, !prof !216, !llvm.loop !217

223:                                              ; preds = %217, %205, %209
  %224 = invoke noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %199)
          to label %225 unwind label %298, !prof !218

225:                                              ; preds = %223
  %226 = icmp eq ptr %224, null
  br i1 %226, label %231, label %227, !prof !219

227:                                              ; preds = %225
  %228 = load i16, ptr %224, align 2, !tbaa !200
  %229 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, align 2, !tbaa !200
  %230 = icmp eq i16 %228, %229
  br i1 %230, label %234, label %245, !prof !220

231:                                              ; preds = %225
  %232 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, align 2, !tbaa !200
  %233 = icmp eq i16 %232, 0
  br label %245

234:                                              ; preds = %227, %239
  %235 = phi i16 [ %242, %239 ], [ %228, %227 ]
  %236 = phi ptr [ %241, %239 ], [ @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, %227 ]
  %237 = phi ptr [ %240, %239 ], [ %224, %227 ]
  %238 = icmp eq i16 %235, 0
  br i1 %238, label %245, label %239, !prof !221

239:                                              ; preds = %234
  %240 = getelementptr inbounds i16, ptr %237, i64 1
  %241 = getelementptr inbounds i16, ptr %236, i64 1
  %242 = load i16, ptr %240, align 2, !tbaa !200
  %243 = load i16, ptr %241, align 2, !tbaa !200
  %244 = icmp eq i16 %242, %243
  br i1 %244, label %234, label %245, !prof !222, !llvm.loop !217

245:                                              ; preds = %234, %239, %227, %231
  %246 = phi i1 [ %233, %231 ], [ false, %227 ], [ %238, %239 ], [ %238, %234 ]
  %247 = load i32, ptr %76, align 4
  %248 = icmp ne i32 %247, 0
  %249 = select i1 %246, i1 %248, i1 false, !prof !223
  br i1 %249, label %929, label %253, !prof !223

250:                                              ; preds = %212, %200, %209
  %251 = load i32, ptr %76, align 4, !tbaa !186
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %929, !prof !224

253:                                              ; preds = %245, %250
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #14
  store i8 0, ptr %14, align 1, !tbaa !185
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #14
  store i8 0, ptr %15, align 1, !tbaa !185
  %254 = load i32, ptr %76, align 4, !tbaa !186
  switch i32 %254, label %441 [
    i32 1, label %255
    i32 0, label %428
  ], !prof !225

255:                                              ; preds = %253
  br i1 %48, label %304, label %256, !prof !226

256:                                              ; preds = %255
  %257 = load ptr, ptr %90, align 8, !tbaa !172
  %258 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.9", ptr %257, i64 0, i32 5
  %259 = load ptr, ptr %258, align 8, !tbaa !227
  %260 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.9", ptr %257, i64 0, i32 3
  %261 = load i32, ptr %260, align 8, !tbaa !228
  %262 = load ptr, ptr %257, align 8, !tbaa !229
  %263 = load ptr, ptr %259, align 8, !tbaa !155
  %264 = load ptr, ptr %263, align 8
  %265 = invoke noundef i32 %264(ptr noundef nonnull align 8 dereferenceable(8) %259, ptr noundef %197, i32 noundef %261, ptr noundef %262)
          to label %266 unwind label %302, !prof !230

266:                                              ; preds = %256
  %267 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.9", ptr %257, i64 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !231
  %269 = zext i32 %265 to i64
  %270 = getelementptr inbounds ptr, ptr %268, i64 %269
  %271 = load ptr, ptr %270, align 8, !tbaa !168
  %272 = icmp eq ptr %271, null
  br i1 %272, label %291, label %273, !prof !232

273:                                              ; preds = %266, %287
  %274 = phi ptr [ %289, %287 ], [ %271, %266 ]
  %275 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10", ptr %274, i64 0, i32 3
  %276 = load i32, ptr %275, align 8, !tbaa !233
  %277 = icmp eq i32 %276, %199
  br i1 %277, label %278, label %287, !prof !235

278:                                              ; preds = %273
  %279 = load ptr, ptr %258, align 8, !tbaa !227
  %280 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10", ptr %274, i64 0, i32 2
  %281 = load ptr, ptr %280, align 8, !tbaa !236
  %282 = load ptr, ptr %279, align 8, !tbaa !155
  %283 = getelementptr inbounds ptr, ptr %282, i64 1
  %284 = load ptr, ptr %283, align 8
  %285 = invoke noundef zeroext i1 %284(ptr noundef nonnull align 8 dereferenceable(8) %279, ptr noundef %197, ptr noundef %281)
          to label %286 unwind label %300, !prof !237

286:                                              ; preds = %278
  br i1 %285, label %291, label %287, !prof !235

287:                                              ; preds = %286, %273
  %288 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10", ptr %274, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !168
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %273, !prof !238, !llvm.loop !239

291:                                              ; preds = %287, %286, %266
  %292 = phi ptr [ null, %266 ], [ %274, %286 ], [ null, %287 ]
  %293 = icmp eq ptr %292, null
  br i1 %293, label %307, label %294, !prof !226

294:                                              ; preds = %291
  %295 = load ptr, ptr %292, align 8, !tbaa !240
  br label %307

296:                                              ; preds = %196
  %297 = landingpad { ptr, i32 }
          cleanup
  br label %1150

298:                                              ; preds = %223
  %299 = landingpad { ptr, i32 }
          cleanup
  br label %1150

300:                                              ; preds = %278
  %301 = landingpad { ptr, i32 }
          cleanup
  br label %927

302:                                              ; preds = %321, %357, %365, %388, %395, %417, %424, %370, %399, %256
  %303 = landingpad { ptr, i32 }
          cleanup
  br label %927

304:                                              ; preds = %255
  %305 = icmp eq ptr %46, null
  %306 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %3, i64 0, i32 17
  br i1 %305, label %307, label %311

307:                                              ; preds = %304, %294, %291
  %308 = phi ptr [ %91, %291 ], [ %91, %294 ], [ %306, %304 ]
  %309 = phi ptr [ null, %291 ], [ %295, %294 ], [ null, %304 ]
  %310 = load ptr, ptr %308, align 8, !tbaa !168
  br label %311

311:                                              ; preds = %307, %304
  %312 = phi ptr [ null, %304 ], [ %310, %307 ]
  %313 = phi ptr [ null, %304 ], [ %309, %307 ]
  %314 = icmp eq ptr %313, null
  br i1 %314, label %319, label %315, !prof !226

315:                                              ; preds = %311
  %316 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %313, i64 0, i32 3
  %317 = load i32, ptr %316, align 8, !tbaa !241
  %318 = icmp eq i32 %317, 1
  br i1 %318, label %319, label %441, !prof !226

319:                                              ; preds = %315, %311
  %320 = icmp eq ptr %312, null
  br i1 %320, label %352, label %321

321:                                              ; preds = %319
  %322 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner22anyAttributeValidationEPNS_12SchemaAttDefEjRbS3_(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %312, i32 noundef %199, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %323 unwind label %302

323:                                              ; preds = %321
  %324 = load i8, ptr %15, align 1, !range !158
  %325 = icmp eq i8 %324, 0
  %326 = select i1 %322, i1 %325, i1 false
  br i1 %326, label %327, label %441

327:                                              ; preds = %323
  %328 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %329 = load ptr, ptr %328, align 8, !tbaa !246
  %330 = invoke noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %199)
          to label %331 unwind label %348

331:                                              ; preds = %327
  %332 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %329, ptr noundef %330)
          to label %333 unwind label %348

333:                                              ; preds = %331
  %334 = icmp eq ptr %332, null
  br i1 %334, label %441, label %335

335:                                              ; preds = %333
  %336 = load ptr, ptr %332, align 8, !tbaa !155
  %337 = getelementptr inbounds ptr, ptr %336, i64 5
  %338 = load ptr, ptr %337, align 8
  %339 = invoke noundef i32 %338(ptr noundef nonnull align 8 dereferenceable(160) %332)
          to label %340 unwind label %348

340:                                              ; preds = %335
  %341 = icmp eq i32 %339, 1
  br i1 %341, label %342, label %441

342:                                              ; preds = %340
  %343 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %332, i64 0, i32 6
  %344 = load ptr, ptr %343, align 8, !tbaa !247
  %345 = icmp eq ptr %344, null
  br i1 %345, label %441, label %346

346:                                              ; preds = %342
  %347 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %344, ptr noundef %197)
          to label %441 unwind label %350

348:                                              ; preds = %335, %331, %327
  %349 = landingpad { ptr, i32 }
          cleanup
  br label %927

350:                                              ; preds = %346
  %351 = landingpad { ptr, i32 }
          cleanup
  br label %927

352:                                              ; preds = %319
  br i1 %48, label %441, label %353

353:                                              ; preds = %352
  %354 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %355 = load i32, ptr %354, align 4, !tbaa !251
  %356 = icmp eq i32 %199, %355
  br i1 %356, label %357, label %399

357:                                              ; preds = %353
  %358 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %359 = load ptr, ptr %358, align 8, !tbaa !252
  %360 = load ptr, ptr %16, align 8, !tbaa !140
  %361 = load ptr, ptr %360, align 8, !tbaa !155
  %362 = getelementptr inbounds ptr, ptr %361, i64 6
  %363 = load ptr, ptr %362, align 8
  %364 = invoke noundef ptr %363(ptr noundef nonnull align 8 dereferenceable(8) %360)
          to label %365 unwind label %302

365:                                              ; preds = %357
  %366 = load ptr, ptr %359, align 8, !tbaa !155
  %367 = getelementptr inbounds ptr, ptr %366, i64 9
  %368 = load ptr, ptr %367, align 8
  %369 = invoke noundef i32 %368(ptr noundef nonnull align 8 dereferenceable(40) %359, ptr noundef %364)
          to label %370 unwind label %302

370:                                              ; preds = %365
  %371 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %47, i64 0, i32 24
  %372 = load ptr, ptr %371, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  %373 = invoke noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %372, ptr noundef %197, i32 noundef %369, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %374 unwind label %302

374:                                              ; preds = %370
  %375 = icmp eq ptr %373, null
  br i1 %375, label %378, label %376

376:                                              ; preds = %374
  %377 = load ptr, ptr %373, align 8, !tbaa !240
  br label %378

378:                                              ; preds = %374, %376
  %379 = phi ptr [ %377, %376 ], [ null, %374 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  %380 = load i8, ptr %23, align 8, !tbaa !253, !range !158, !noundef !254
  %381 = icmp ne i8 %380, 0
  %382 = icmp ne ptr %379, null
  %383 = and i1 %382, %381
  br i1 %383, label %384, label %441

384:                                              ; preds = %378
  %385 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %379, i64 0, i32 3
  %386 = load i32, ptr %385, align 8, !tbaa !241
  %387 = icmp eq i32 %386, 1
  br i1 %387, label %441, label %388

388:                                              ; preds = %384
  %389 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %390 = load ptr, ptr %389, align 8, !tbaa !160
  %391 = load ptr, ptr %379, align 8, !tbaa !155
  %392 = getelementptr inbounds ptr, ptr %391, i64 5
  %393 = load ptr, ptr %392, align 8
  %394 = invoke noundef ptr %393(ptr noundef nonnull align 8 dereferenceable(56) %379)
          to label %395 unwind label %302

395:                                              ; preds = %388
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %390, i32 noundef 95, ptr noundef %394, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %396 unwind label %302

396:                                              ; preds = %395
  %397 = load i32, ptr %76, align 4, !tbaa !186
  %398 = icmp eq i32 %397, 1
  br i1 %398, label %434, label %441

399:                                              ; preds = %353
  %400 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %47, i64 0, i32 24
  %401 = load ptr, ptr %400, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  %402 = invoke noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %401, ptr noundef %197, i32 noundef %355, ptr noundef nonnull align 4 dereferenceable(4) %8)
          to label %403 unwind label %302

403:                                              ; preds = %399
  %404 = icmp eq ptr %402, null
  br i1 %404, label %407, label %405

405:                                              ; preds = %403
  %406 = load ptr, ptr %402, align 8, !tbaa !240
  br label %407

407:                                              ; preds = %403, %405
  %408 = phi ptr [ %406, %405 ], [ null, %403 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  %409 = load i8, ptr %23, align 8, !tbaa !253, !range !158, !noundef !254
  %410 = icmp ne i8 %409, 0
  %411 = icmp ne ptr %408, null
  %412 = and i1 %411, %410
  br i1 %412, label %413, label %441

413:                                              ; preds = %407
  %414 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %408, i64 0, i32 3
  %415 = load i32, ptr %414, align 8, !tbaa !241
  %416 = icmp eq i32 %415, 1
  br i1 %416, label %441, label %417

417:                                              ; preds = %413
  %418 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %419 = load ptr, ptr %418, align 8, !tbaa !160
  %420 = load ptr, ptr %408, align 8, !tbaa !155
  %421 = getelementptr inbounds ptr, ptr %420, i64 5
  %422 = load ptr, ptr %421, align 8
  %423 = invoke noundef ptr %422(ptr noundef nonnull align 8 dereferenceable(56) %408)
          to label %424 unwind label %302

424:                                              ; preds = %417
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %419, i32 noundef 96, ptr noundef %423, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %425 unwind label %302

425:                                              ; preds = %424
  %426 = load i32, ptr %76, align 4, !tbaa !186
  %427 = icmp eq i32 %426, 1
  br i1 %427, label %434, label %441

428:                                              ; preds = %253
  %429 = invoke noundef ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef %117)
          to label %441 unwind label %432, !prof !255

430:                                              ; preds = %536
  %431 = landingpad { ptr, i32 }
          cleanup
  br label %927

432:                                              ; preds = %428, %549, %555, %562, %568, %551, %556, %564, %514
  %433 = landingpad { ptr, i32 }
          cleanup
  br label %927

434:                                              ; preds = %425, %396
  %435 = phi ptr [ %379, %396 ], [ %408, %425 ]
  %436 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %437 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  store i8 1, ptr %437, align 1, !tbaa !256
  %438 = load ptr, ptr %436, align 8, !tbaa !257
  %439 = icmp eq ptr %438, null
  %440 = select i1 %439, i32 2, i32 1
  br label %441

441:                                              ; preds = %434, %428, %253, %315, %352, %407, %413, %425, %378, %384, %396, %323, %342, %346, %340, %333
  %442 = phi ptr [ %313, %323 ], [ %379, %396 ], [ %379, %384 ], [ %379, %378 ], [ %408, %425 ], [ %408, %413 ], [ %408, %407 ], [ %313, %352 ], [ %313, %315 ], [ %313, %342 ], [ %313, %346 ], [ %313, %340 ], [ %313, %333 ], [ null, %253 ], [ %429, %428 ], [ %435, %434 ]
  %443 = phi ptr [ null, %323 ], [ null, %396 ], [ null, %384 ], [ null, %378 ], [ null, %425 ], [ null, %413 ], [ null, %407 ], [ null, %352 ], [ null, %315 ], [ null, %342 ], [ %347, %346 ], [ null, %340 ], [ null, %333 ], [ null, %253 ], [ null, %428 ], [ null, %434 ]
  %444 = phi i32 [ 2, %323 ], [ 2, %396 ], [ 2, %384 ], [ 2, %378 ], [ 2, %425 ], [ 2, %413 ], [ 2, %407 ], [ 2, %352 ], [ 2, %315 ], [ 2, %342 ], [ 2, %346 ], [ 2, %340 ], [ 2, %333 ], [ 2, %253 ], [ 2, %428 ], [ %440, %434 ]
  %445 = icmp ne ptr %442, null
  br i1 %445, label %446, label %511, !prof !258

446:                                              ; preds = %441
  %447 = load ptr, ptr %92, align 8, !tbaa !259
  %448 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %447, i64 0, i32 6
  %449 = load ptr, ptr %448, align 8, !tbaa !260
  %450 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %447, i64 0, i32 3
  %451 = load i32, ptr %450, align 8, !tbaa !262
  %452 = load ptr, ptr %447, align 8, !tbaa !263
  %453 = load ptr, ptr %449, align 8, !tbaa !155
  %454 = load ptr, ptr %453, align 8
  %455 = invoke noundef i32 %454(ptr noundef nonnull align 8 dereferenceable(8) %449, ptr noundef nonnull %442, i32 noundef %451, ptr noundef %452)
          to label %456 unwind label %492, !prof !264

456:                                              ; preds = %446
  %457 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %447, i64 0, i32 2
  %458 = load ptr, ptr %457, align 8, !tbaa !265
  %459 = zext i32 %455 to i64
  %460 = getelementptr inbounds ptr, ptr %458, i64 %459
  %461 = load ptr, ptr %460, align 8, !tbaa !168
  %462 = icmp eq ptr %461, null
  br i1 %462, label %477, label %463, !prof !266

463:                                              ; preds = %456, %473
  %464 = phi ptr [ %475, %473 ], [ %461, %456 ]
  %465 = load ptr, ptr %448, align 8, !tbaa !260
  %466 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.18", ptr %464, i64 0, i32 2
  %467 = load ptr, ptr %466, align 8, !tbaa !267
  %468 = load ptr, ptr %465, align 8, !tbaa !155
  %469 = getelementptr inbounds ptr, ptr %468, i64 1
  %470 = load ptr, ptr %469, align 8
  %471 = invoke noundef zeroext i1 %470(ptr noundef nonnull align 8 dereferenceable(8) %465, ptr noundef nonnull %442, ptr noundef %467)
          to label %472 unwind label %490, !prof !269

472:                                              ; preds = %463
  br i1 %471, label %477, label %473, !prof !270

473:                                              ; preds = %472
  %474 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.18", ptr %464, i64 0, i32 1
  %475 = load ptr, ptr %474, align 8, !tbaa !168
  %476 = icmp eq ptr %475, null
  br i1 %476, label %477, label %463, !prof !271, !llvm.loop !272

477:                                              ; preds = %473, %472, %456
  %478 = phi ptr [ null, %456 ], [ %464, %472 ], [ null, %473 ]
  %479 = icmp eq ptr %478, null
  br i1 %479, label %482, label %480, !prof !273

480:                                              ; preds = %477
  %481 = load ptr, ptr %478, align 8, !tbaa !274
  br label %482

482:                                              ; preds = %480, %477
  %483 = phi ptr [ %481, %480 ], [ null, %477 ]
  %484 = icmp eq ptr %483, null
  br i1 %484, label %485, label %494, !prof !275

485:                                              ; preds = %482
  %486 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner13getNewUIntPtrEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %487 unwind label %492, !prof !276

487:                                              ; preds = %485
  %488 = load i32, ptr %65, align 8, !tbaa !177
  store i32 %488, ptr %486, align 4, !tbaa !136
  %489 = load ptr, ptr %92, align 8, !tbaa !259
  invoke void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %489, ptr noundef nonnull %442, ptr noundef nonnull %486)
          to label %571 unwind label %492, !prof !276

490:                                              ; preds = %463
  %491 = landingpad { ptr, i32 }
          cleanup
  br label %927

492:                                              ; preds = %485, %487, %499, %508, %504, %446
  %493 = landingpad { ptr, i32 }
          cleanup
  br label %927

494:                                              ; preds = %482
  %495 = load i32, ptr %483, align 4, !tbaa !136
  %496 = load i32, ptr %65, align 8, !tbaa !177
  %497 = icmp ult i32 %495, %496
  br i1 %497, label %498, label %499, !prof !277

498:                                              ; preds = %494
  store i32 %496, ptr %483, align 4, !tbaa !136
  br label %571

499:                                              ; preds = %494
  %500 = load ptr, ptr %442, align 8, !tbaa !155
  %501 = getelementptr inbounds ptr, ptr %500, i64 5
  %502 = load ptr, ptr %501, align 8
  %503 = invoke noundef ptr %502(ptr noundef nonnull align 8 dereferenceable(56) %442)
          to label %504 unwind label %492

504:                                              ; preds = %499
  %505 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %3, i64 0, i32 2
  %506 = load ptr, ptr %505, align 8, !tbaa !278
  %507 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %506)
          to label %508 unwind label %492

508:                                              ; preds = %504
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %503, ptr noundef %507, ptr noundef null, ptr noundef null)
          to label %509 unwind label %492

509:                                              ; preds = %508
  %510 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  store i8 1, ptr %510, align 1, !tbaa !256
  br label %571

511:                                              ; preds = %441
  %512 = load i32, ptr %76, align 4, !tbaa !186
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %556, !prof !255

514:                                              ; preds = %511
  %515 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 18
  %516 = load ptr, ptr %515, align 8, !tbaa !281
  %517 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %516, i64 0, i32 6
  %518 = load ptr, ptr %517, align 8, !tbaa !260
  %519 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %516, i64 0, i32 3
  %520 = load i32, ptr %519, align 8, !tbaa !262
  %521 = load ptr, ptr %516, align 8, !tbaa !263
  %522 = load ptr, ptr %518, align 8, !tbaa !155
  %523 = load ptr, ptr %522, align 8
  %524 = invoke noundef i32 %523(ptr noundef nonnull align 8 dereferenceable(8) %518, ptr noundef %117, i32 noundef %520, ptr noundef %521)
          to label %525 unwind label %432, !prof !282

525:                                              ; preds = %514
  %526 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %516, i64 0, i32 2
  %527 = load ptr, ptr %526, align 8, !tbaa !265
  %528 = zext i32 %524 to i64
  %529 = getelementptr inbounds ptr, ptr %527, i64 %528
  %530 = load ptr, ptr %529, align 8, !tbaa !168
  %531 = icmp ne ptr %530, null
  br i1 %531, label %536, label %547, !prof !283

532:                                              ; preds = %546
  %533 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.18", ptr %538, i64 0, i32 1
  %534 = load ptr, ptr %533, align 8, !tbaa !168
  %535 = icmp ne ptr %534, null
  br i1 %535, label %536, label %547, !prof !284, !llvm.loop !285

536:                                              ; preds = %525, %532
  %537 = phi i1 [ %535, %532 ], [ %531, %525 ]
  %538 = phi ptr [ %534, %532 ], [ %530, %525 ]
  %539 = load ptr, ptr %517, align 8, !tbaa !260
  %540 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.18", ptr %538, i64 0, i32 2
  %541 = load ptr, ptr %540, align 8, !tbaa !267
  %542 = load ptr, ptr %539, align 8, !tbaa !155
  %543 = getelementptr inbounds ptr, ptr %542, i64 1
  %544 = load ptr, ptr %543, align 8
  %545 = invoke noundef zeroext i1 %544(ptr noundef nonnull align 8 dereferenceable(8) %539, ptr noundef %117, ptr noundef %541)
          to label %546 unwind label %430, !prof !286

546:                                              ; preds = %536
  br i1 %545, label %547, label %532, !prof !284

547:                                              ; preds = %546, %532, %525
  %548 = phi i1 [ %531, %525 ], [ %537, %546 ], [ %535, %532 ]
  br i1 %548, label %551, label %549, !prof !287

549:                                              ; preds = %547
  %550 = load ptr, ptr %515, align 8, !tbaa !281
  invoke void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %550, ptr noundef %117, ptr noundef null)
          to label %571 unwind label %432, !prof !255

551:                                              ; preds = %547
  %552 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %3, i64 0, i32 2
  %553 = load ptr, ptr %552, align 8, !tbaa !278
  %554 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %553)
          to label %555 unwind label %432

555:                                              ; preds = %551
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %117, ptr noundef %554, ptr noundef null, ptr noundef null)
          to label %571 unwind label %432

556:                                              ; preds = %511
  %557 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 19
  %558 = load ptr, ptr %557, align 8, !tbaa !288
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  %559 = invoke noundef ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %558, ptr noundef %197, i32 noundef %199, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %560 unwind label %432

560:                                              ; preds = %556
  %561 = icmp eq ptr %559, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br i1 %561, label %562, label %564

562:                                              ; preds = %560
  %563 = load ptr, ptr %557, align 8, !tbaa !288
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE3putEPviPj(ptr noundef nonnull align 8 dereferenceable(40) %563, ptr noundef %197, i32 noundef %199, ptr noundef null)
          to label %571 unwind label %432

564:                                              ; preds = %560
  %565 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %3, i64 0, i32 2
  %566 = load ptr, ptr %565, align 8, !tbaa !278
  %567 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %566)
          to label %568 unwind label %432

568:                                              ; preds = %564
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %117, ptr noundef %567, ptr noundef null, ptr noundef null)
          to label %569 unwind label %432

569:                                              ; preds = %568
  %570 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  store i8 1, ptr %570, align 1, !tbaa !256
  br label %571

571:                                              ; preds = %555, %549, %487, %509, %498, %562, %569
  %572 = load i32, ptr %76, align 4, !tbaa !186
  %573 = icmp ne i32 %572, 1
  %574 = icmp ne ptr %443, null
  %575 = or i1 %574, %573
  %576 = or i1 %445, %575
  br i1 %576, label %594, label %577, !prof !289

577:                                              ; preds = %571
  %578 = load i8, ptr %14, align 1, !tbaa !185, !range !158, !noundef !254
  %579 = icmp eq i8 %578, 0
  %580 = load i8, ptr %15, align 1, !range !158
  %581 = icmp eq i8 %580, 0
  %582 = select i1 %579, i1 %581, i1 false
  br i1 %582, label %583, label %585

583:                                              ; preds = %577
  %584 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  store i8 1, ptr %584, align 1, !tbaa !256
  br label %585

585:                                              ; preds = %583, %577
  %586 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %587 = load ptr, ptr %586, align 8, !tbaa !257
  %588 = icmp eq ptr %587, null
  br i1 %588, label %594, label %589

589:                                              ; preds = %585
  %590 = xor i1 %579, true
  %591 = zext i1 %590 to i32
  %592 = select i1 %582, i32 2, i32 %591
  %593 = zext i1 %582 to i32
  br label %594

594:                                              ; preds = %589, %585, %571
  %595 = phi i32 [ 2, %585 ], [ 2, %571 ], [ %592, %589 ]
  %596 = phi i32 [ %444, %585 ], [ %444, %571 ], [ %593, %589 ]
  %597 = load i8, ptr %23, align 8, !tbaa !253, !range !158, !noundef !254
  %598 = icmp ne i8 %597, 0
  %599 = icmp eq ptr %443, null
  %600 = xor i1 %445, true
  %601 = and i1 %598, %600
  %602 = and i1 %599, %601
  %603 = load i8, ptr %15, align 1, !range !158
  %604 = icmp eq i8 %603, 0
  %605 = select i1 %602, i1 %604, i1 false, !prof !290
  %606 = load i8, ptr %14, align 1, !range !158
  %607 = icmp eq i8 %606, 0
  %608 = select i1 %605, i1 %607, i1 false, !prof !290
  br i1 %608, label %609, label %684, !prof !290

609:                                              ; preds = %594
  %610 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %74)
          to label %611 unwind label %651

611:                                              ; preds = %609
  %612 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %613 = load i32, ptr %612, align 4, !tbaa !251
  %614 = icmp eq i32 %199, %613
  br i1 %614, label %662, label %615

615:                                              ; preds = %611
  %616 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %74)
          to label %617 unwind label %655

617:                                              ; preds = %615
  %618 = invoke noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %199, ptr noundef nonnull align 8 dereferenceable(40) %616)
          to label %619 unwind label %657

619:                                              ; preds = %617
  %620 = load i32, ptr %610, align 8, !tbaa !291
  %621 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %610, i64 0, i32 1
  %622 = load i32, ptr %621, align 4, !tbaa !292
  %623 = icmp eq i32 %620, %622
  br i1 %623, label %624, label %625

624:                                              ; preds = %619
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %610, i32 noundef 1)
          to label %625 unwind label %657

625:                                              ; preds = %624, %619
  %626 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %610, i64 0, i32 6
  %627 = load ptr, ptr %626, align 8, !tbaa !293
  %628 = load i32, ptr %610, align 8, !tbaa !291
  %629 = add i32 %628, 1
  store i32 %629, ptr %610, align 8, !tbaa !291
  %630 = zext i32 %628 to i64
  %631 = getelementptr inbounds i16, ptr %627, i64 %630
  store i16 123, ptr %631, align 2, !tbaa !200
  %632 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %616, i64 0, i32 6
  %633 = load ptr, ptr %632, align 8, !tbaa !293
  %634 = load i32, ptr %616, align 8, !tbaa !291
  %635 = zext i32 %634 to i64
  %636 = getelementptr inbounds i16, ptr %633, i64 %635
  store i16 0, ptr %636, align 2, !tbaa !200
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %610, ptr noundef %633)
          to label %637 unwind label %657

637:                                              ; preds = %625
  %638 = load i32, ptr %610, align 8, !tbaa !291
  %639 = load i32, ptr %621, align 4, !tbaa !292
  %640 = icmp eq i32 %638, %639
  br i1 %640, label %641, label %642

641:                                              ; preds = %637
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %610, i32 noundef 1)
          to label %642 unwind label %657

642:                                              ; preds = %641, %637
  %643 = load ptr, ptr %626, align 8, !tbaa !293
  %644 = load i32, ptr %610, align 8, !tbaa !291
  %645 = add i32 %644, 1
  store i32 %645, ptr %610, align 8, !tbaa !291
  %646 = zext i32 %644 to i64
  %647 = getelementptr inbounds i16, ptr %643, i64 %646
  store i16 125, ptr %647, align 2, !tbaa !200
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(40) %616)
          to label %662 unwind label %648

648:                                              ; preds = %642
  %649 = landingpad { ptr, i32 }
          catch ptr null
  %650 = extractvalue { ptr, i32 } %649, 0
  call void @__clang_call_terminate(ptr %650) #15
  unreachable

651:                                              ; preds = %609
  %652 = landingpad { ptr, i32 }
          cleanup
  br label %927

653:                                              ; preds = %663, %674, %662
  %654 = landingpad { ptr, i32 }
          cleanup
  br label %679

655:                                              ; preds = %615
  %656 = landingpad { ptr, i32 }
          cleanup
  br label %679

657:                                              ; preds = %641, %624, %625, %617
  %658 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(40) %616)
          to label %679 unwind label %659

659:                                              ; preds = %657
  %660 = landingpad { ptr, i32 }
          catch ptr null
  %661 = extractvalue { ptr, i32 } %660, 0
  call void @__clang_call_terminate(ptr %661) #15
  unreachable

662:                                              ; preds = %642, %611
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %610, ptr noundef %197)
          to label %663 unwind label %653

663:                                              ; preds = %662
  %664 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %665 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %3, i64 0, i32 2
  %666 = load ptr, ptr %664, align 8, !tbaa !160
  %667 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %610, i64 0, i32 6
  %668 = load ptr, ptr %667, align 8, !tbaa !293
  %669 = load i32, ptr %610, align 8, !tbaa !291
  %670 = zext i32 %669 to i64
  %671 = getelementptr inbounds i16, ptr %668, i64 %670
  store i16 0, ptr %671, align 2, !tbaa !200
  %672 = load ptr, ptr %665, align 8, !tbaa !278
  %673 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %672)
          to label %674 unwind label %653

674:                                              ; preds = %663
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %666, i32 noundef 17, ptr noundef %668, ptr noundef %673, ptr noundef null, ptr noundef null)
          to label %675 unwind label %653

675:                                              ; preds = %674
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(40) %610)
          to label %684 unwind label %676

676:                                              ; preds = %675
  %677 = landingpad { ptr, i32 }
          catch ptr null
  %678 = extractvalue { ptr, i32 } %677, 0
  call void @__clang_call_terminate(ptr %678) #15
  unreachable

679:                                              ; preds = %655, %657, %653
  %680 = phi { ptr, i32 } [ %654, %653 ], [ %656, %655 ], [ %658, %657 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(40) %610)
          to label %927 unwind label %681

681:                                              ; preds = %679
  %682 = landingpad { ptr, i32 }
          catch ptr null
  %683 = extractvalue { ptr, i32 } %682, 0
  call void @__clang_call_terminate(ptr %683) #15
  unreachable

684:                                              ; preds = %675, %594
  %685 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %115, i64 0, i32 4
  %686 = load ptr, ptr %685, align 8, !tbaa !294
  br i1 %599, label %749, label %687, !prof !289

687:                                              ; preds = %684
  %688 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %443, ptr noundef %117, ptr noundef %686, ptr noundef nonnull align 8 dereferenceable(40) %75)
          to label %689 unwind label %719

689:                                              ; preds = %687
  %690 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %75, i64 0, i32 6
  %691 = load ptr, ptr %690, align 8, !tbaa !293
  %692 = load i32, ptr %75, align 8, !tbaa !291
  %693 = zext i32 %692 to i64
  %694 = getelementptr inbounds i16, ptr %691, i64 %693
  store i16 0, ptr %694, align 2, !tbaa !200
  %695 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %443, i64 0, i32 6
  %696 = load ptr, ptr %695, align 8, !tbaa !295
  %697 = icmp eq ptr %696, null
  br i1 %697, label %723, label %698

698:                                              ; preds = %689
  %699 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %696, i64 0, i32 5
  %700 = load i16, ptr %699, align 4, !tbaa !300
  %701 = icmp eq i16 %700, 0
  br i1 %701, label %723, label %702

702:                                              ; preds = %698
  %703 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %704 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  %705 = load ptr, ptr %703, align 8, !tbaa !160
  invoke void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %705, ptr noundef nonnull %696, ptr noundef %691, ptr noundef nonnull align 8 dereferenceable(40) %704)
          to label %706 unwind label %721

706:                                              ; preds = %702
  %707 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 6
  %708 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  %709 = load ptr, ptr %707, align 8, !tbaa !293
  %710 = load i32, ptr %704, align 8, !tbaa !291
  %711 = zext i32 %710 to i64
  %712 = getelementptr inbounds i16, ptr %709, i64 %711
  store i16 0, ptr %712, align 2, !tbaa !200
  %713 = load i8, ptr %708, align 8, !tbaa !304, !range !158, !noundef !254
  %714 = icmp eq i8 %713, 0
  %715 = load i8, ptr %23, align 8, !range !158
  %716 = icmp eq i8 %715, 0
  %717 = select i1 %714, i1 true, i1 %716
  br i1 %717, label %723, label %718

718:                                              ; preds = %706
  store i32 0, ptr %75, align 8, !tbaa !291
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %75, ptr noundef %709)
          to label %723 unwind label %721

719:                                              ; preds = %878, %869, %848, %749, %687
  %720 = landingpad { ptr, i32 }
          cleanup
  br label %927

721:                                              ; preds = %718, %746, %727, %702
  %722 = landingpad { ptr, i32 }
          cleanup
  br label %927

723:                                              ; preds = %718, %706, %698, %689
  %724 = phi ptr [ %709, %706 ], [ %691, %698 ], [ %691, %689 ], [ %709, %718 ]
  %725 = load i8, ptr %23, align 8, !tbaa !253, !range !158, !noundef !254
  %726 = icmp eq i8 %725, 0
  br i1 %726, label %746, label %727

727:                                              ; preds = %723
  %728 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %729 = load ptr, ptr %728, align 8, !tbaa !160
  %730 = load ptr, ptr %729, align 8, !tbaa !155
  %731 = getelementptr inbounds ptr, ptr %730, i64 8
  %732 = load ptr, ptr %731, align 8
  invoke void %732(ptr noundef nonnull align 8 dereferenceable(40) %729, ptr noundef nonnull %443, ptr noundef %724, i1 noundef zeroext false, ptr noundef %3)
          to label %733 unwind label %721

733:                                              ; preds = %727
  %734 = load ptr, ptr %728, align 8, !tbaa !160
  %735 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %734, i64 0, i32 15
  %736 = load ptr, ptr %735, align 8, !tbaa !305
  %737 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %734, i64 0, i32 16
  %738 = load i8, ptr %737, align 8, !tbaa !306, !range !158, !noundef !254
  %739 = icmp eq i8 %738, 0
  br i1 %739, label %854, label %740

740:                                              ; preds = %733
  %741 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  %742 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  store i8 1, ptr %741, align 1, !tbaa !256
  %743 = load ptr, ptr %742, align 8, !tbaa !257
  %744 = icmp eq ptr %743, null
  %745 = select i1 %744, i32 %596, i32 1
  br label %854

746:                                              ; preds = %723
  %747 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !168
  %748 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %747, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE)
          to label %854 unwind label %721

749:                                              ; preds = %684
  %750 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %442, ptr noundef %117, ptr noundef %686, ptr noundef nonnull align 8 dereferenceable(40) %75)
          to label %751 unwind label %719, !prof !289

751:                                              ; preds = %749
  br i1 %445, label %752, label %845, !prof !258

752:                                              ; preds = %751
  %753 = load ptr, ptr %93, align 8, !tbaa !293
  %754 = load i32, ptr %75, align 8, !tbaa !291
  %755 = zext i32 %754 to i64
  %756 = getelementptr inbounds i16, ptr %753, i64 %755
  store i16 0, ptr %756, align 2, !tbaa !200
  %757 = load i32, ptr %76, align 4, !tbaa !186
  %758 = icmp eq i32 %757, 1
  br i1 %758, label %759, label %813, !prof !307

759:                                              ; preds = %752
  %760 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %442, i64 0, i32 6
  %761 = load ptr, ptr %760, align 8, !tbaa !295
  %762 = icmp eq ptr %761, null
  br i1 %762, label %813, label %763, !prof !226

763:                                              ; preds = %759
  %764 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %761, i64 0, i32 5
  %765 = load i16, ptr %764, align 4, !tbaa !300
  %766 = icmp eq i16 %765, 0
  br i1 %766, label %813, label %767, !prof !308

767:                                              ; preds = %763
  %768 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %769 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  %770 = load ptr, ptr %768, align 8, !tbaa !160
  invoke void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %770, ptr noundef nonnull %761, ptr noundef %753, ptr noundef nonnull align 8 dereferenceable(40) %769)
          to label %771 unwind label %811, !prof !309

771:                                              ; preds = %767
  %772 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 6
  %773 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  %774 = load ptr, ptr %772, align 8, !tbaa !293
  %775 = load i32, ptr %769, align 8, !tbaa !291
  %776 = zext i32 %775 to i64
  %777 = getelementptr inbounds i16, ptr %774, i64 %776
  store i16 0, ptr %777, align 2, !tbaa !200
  %778 = load i8, ptr %773, align 8, !tbaa !304, !range !158, !noundef !254
  %779 = icmp ne i8 %778, 0
  %780 = load i8, ptr %23, align 8, !range !158
  %781 = icmp ne i8 %780, 0
  %782 = select i1 %779, i1 %781, i1 false, !prof !309
  %783 = select i1 %782, i1 %604, i1 false, !prof !309
  br i1 %783, label %784, label %813, !prof !309

784:                                              ; preds = %771
  store i32 0, ptr %75, align 8, !tbaa !291
  %785 = icmp eq ptr %774, null
  br i1 %785, label %813, label %786, !prof !310

786:                                              ; preds = %784
  %787 = load i16, ptr %774, align 2, !tbaa !200
  %788 = icmp eq i16 %787, 0
  br i1 %788, label %813, label %789, !prof !311

789:                                              ; preds = %786, %789
  %790 = phi i32 [ %795, %789 ], [ 0, %786 ]
  %791 = zext i32 %790 to i64
  %792 = getelementptr inbounds i16, ptr %774, i64 %791
  %793 = load i16, ptr %792, align 2, !tbaa !200
  %794 = icmp eq i16 %793, 0
  %795 = add i32 %790, 1
  br i1 %794, label %796, label %789, !prof !312, !llvm.loop !313

796:                                              ; preds = %789
  %797 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %75, i64 0, i32 1
  %798 = load i32, ptr %797, align 4, !tbaa !292
  %799 = icmp ult i32 %790, %798
  br i1 %799, label %801, label %800, !prof !314

800:                                              ; preds = %796
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %75, i32 noundef %790)
          to label %801 unwind label %811

801:                                              ; preds = %800, %796
  %802 = load ptr, ptr %93, align 8, !tbaa !293
  %803 = load i32, ptr %75, align 8, !tbaa !291
  %804 = zext i32 %803 to i64
  %805 = getelementptr inbounds i16, ptr %802, i64 %804
  %806 = shl nuw nsw i64 %791, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %805, ptr nonnull align 2 %774, i64 %806, i1 false), !prof !315
  %807 = load i32, ptr %75, align 8, !tbaa !291
  %808 = add i32 %807, %790
  store i32 %808, ptr %75, align 8, !tbaa !291
  br label %813

809:                                              ; preds = %842, %818
  %810 = landingpad { ptr, i32 }
          cleanup
  br label %927

811:                                              ; preds = %800, %767
  %812 = landingpad { ptr, i32 }
          cleanup
  br label %927

813:                                              ; preds = %801, %786, %784, %759, %763, %771, %752
  %814 = phi ptr [ %753, %752 ], [ %774, %771 ], [ %753, %763 ], [ %753, %759 ], [ %774, %784 ], [ %774, %786 ], [ %774, %801 ]
  %815 = load i8, ptr %23, align 8, !tbaa !253, !range !158, !noundef !254
  %816 = icmp ne i8 %815, 0
  %817 = select i1 %816, i1 %604, i1 false, !prof !307
  br i1 %817, label %818, label %839, !prof !307

818:                                              ; preds = %813
  %819 = load ptr, ptr %94, align 8, !tbaa !160
  %820 = load ptr, ptr %819, align 8, !tbaa !155
  %821 = getelementptr inbounds ptr, ptr %820, i64 8
  %822 = load ptr, ptr %821, align 8
  invoke void %822(ptr noundef nonnull align 8 dereferenceable(40) %819, ptr noundef nonnull %442, ptr noundef %814, i1 noundef zeroext false, ptr noundef %3)
          to label %823 unwind label %809, !prof !316

823:                                              ; preds = %818
  %824 = load i32, ptr %76, align 4, !tbaa !186
  %825 = icmp eq i32 %824, 1
  br i1 %825, label %826, label %851, !prof !307

826:                                              ; preds = %823
  %827 = load ptr, ptr %94, align 8, !tbaa !160
  %828 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %827, i64 0, i32 15
  %829 = load ptr, ptr %828, align 8, !tbaa !305
  %830 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %827, i64 0, i32 16
  %831 = load i8, ptr %830, align 8, !tbaa !306, !range !158, !noundef !254
  %832 = icmp eq i8 %831, 0
  br i1 %832, label %851, label %833, !prof !307

833:                                              ; preds = %826
  %834 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  %835 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  store i8 1, ptr %834, align 1, !tbaa !256
  %836 = load ptr, ptr %835, align 8, !tbaa !257
  %837 = icmp eq ptr %836, null
  %838 = select i1 %837, i32 %596, i32 1
  br label %851

839:                                              ; preds = %813
  %840 = load i32, ptr %76, align 4, !tbaa !186
  %841 = icmp eq i32 %840, 1
  br i1 %841, label %842, label %851

842:                                              ; preds = %839
  %843 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !168
  %844 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %843, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE)
          to label %851 unwind label %809

845:                                              ; preds = %751
  %846 = load i32, ptr %76, align 4, !tbaa !186
  %847 = icmp eq i32 %846, 1
  br i1 %847, label %848, label %851, !prof !287

848:                                              ; preds = %845
  %849 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !168
  %850 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %849, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE)
          to label %851 unwind label %719

851:                                              ; preds = %833, %848, %826, %823, %839, %842, %845
  %852 = phi ptr [ null, %845 ], [ null, %839 ], [ %829, %826 ], [ null, %823 ], [ %829, %833 ], [ %844, %842 ], [ %850, %848 ]
  %853 = phi i32 [ %596, %845 ], [ %596, %839 ], [ %596, %826 ], [ %596, %823 ], [ %838, %833 ], [ %596, %842 ], [ %596, %848 ]
  br i1 %445, label %854, label %860, !prof !258

854:                                              ; preds = %851, %733, %746, %740
  %855 = phi ptr [ %443, %740 ], [ %443, %746 ], [ %443, %733 ], [ %442, %851 ]
  %856 = phi ptr [ %736, %740 ], [ %748, %746 ], [ %736, %733 ], [ %852, %851 ]
  %857 = phi i32 [ %745, %740 ], [ %596, %746 ], [ %596, %733 ], [ %853, %851 ]
  %858 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %855, i64 0, i32 2
  %859 = load i32, ptr %858, align 4, !tbaa !317
  br label %860

860:                                              ; preds = %854, %851
  %861 = phi ptr [ %852, %851 ], [ %856, %854 ]
  %862 = phi i32 [ 0, %851 ], [ %859, %854 ]
  %863 = phi i32 [ %853, %851 ], [ %857, %854 ]
  %864 = load ptr, ptr %95, align 8, !tbaa !257
  %865 = icmp ne ptr %864, null
  %866 = load i32, ptr %76, align 4
  %867 = icmp eq i32 %866, 1
  %868 = select i1 %865, i1 %867, i1 false, !prof !290
  br i1 %868, label %869, label %925, !prof !290

869:                                              ; preds = %860
  %870 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 20
  %871 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %872 = load ptr, ptr %870, align 8, !tbaa !318
  %873 = load ptr, ptr %871, align 8, !tbaa !252
  %874 = load ptr, ptr %873, align 8, !tbaa !155
  %875 = getelementptr inbounds ptr, ptr %874, i64 10
  %876 = load ptr, ptr %875, align 8
  %877 = invoke noundef ptr %876(ptr noundef nonnull align 8 dereferenceable(40) %873, i32 noundef %199)
          to label %878 unwind label %719

878:                                              ; preds = %869
  %879 = invoke noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36) %872, ptr noundef %197, ptr noundef %877)
          to label %880 unwind label %719

880:                                              ; preds = %878
  %881 = select i1 %445, ptr %442, ptr %443
  %882 = icmp eq ptr %881, null
  br i1 %882, label %920, label %883

883:                                              ; preds = %880
  %884 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %885 = load ptr, ptr %884, align 8, !tbaa !319
  %886 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %885, ptr noundef nonnull %881)
          to label %887 unwind label %899

887:                                              ; preds = %883
  %888 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %881, i64 0, i32 6
  %889 = load ptr, ptr %888, align 8, !tbaa !295
  %890 = load ptr, ptr %884, align 8, !tbaa !319
  %891 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %890, ptr noundef %889)
          to label %892 unwind label %901

892:                                              ; preds = %887
  %893 = icmp eq i32 %863, 2
  br i1 %893, label %903, label %894

894:                                              ; preds = %892
  %895 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %896 = load ptr, ptr %895, align 8, !tbaa !320
  %897 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %881, i64 0, i32 7
  %898 = load ptr, ptr %897, align 8, !tbaa !321
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %879, ptr noundef %896, i32 noundef %863, i32 noundef %595, ptr noundef %891, ptr noundef null, ptr noundef %898, i1 noundef zeroext false, ptr noundef %886, ptr noundef null)
          to label %925 unwind label %901

899:                                              ; preds = %883
  %900 = landingpad { ptr, i32 }
          cleanup
  br label %927

901:                                              ; preds = %894, %887
  %902 = landingpad { ptr, i32 }
          cleanup
  br label %927

903:                                              ; preds = %892
  %904 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %891, i64 0, i32 3
  %905 = load i32, ptr %904, align 8, !tbaa !322
  %906 = icmp eq i32 %905, 3
  br i1 %906, label %907, label %912

907:                                              ; preds = %903
  %908 = load ptr, ptr %884, align 8, !tbaa !319
  %909 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %908, ptr noundef %861)
          to label %912 unwind label %910

910:                                              ; preds = %912, %907
  %911 = landingpad { ptr, i32 }
          cleanup
  br label %927

912:                                              ; preds = %907, %903
  %913 = phi ptr [ null, %903 ], [ %909, %907 ]
  %914 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %915 = load ptr, ptr %914, align 8, !tbaa !320
  %916 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %881, i64 0, i32 7
  %917 = load ptr, ptr %916, align 8, !tbaa !321
  %918 = icmp eq ptr %913, null
  %919 = select i1 %918, ptr %889, ptr %861
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %879, ptr noundef %915, i32 noundef 2, i32 noundef %595, ptr noundef nonnull %891, ptr noundef %913, ptr noundef %917, i1 noundef zeroext false, ptr noundef %886, ptr noundef %919)
          to label %925 unwind label %910

920:                                              ; preds = %880
  %921 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %922 = load ptr, ptr %921, align 8, !tbaa !320
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %879, ptr noundef %922, i32 noundef %863, i32 noundef %595, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false, ptr noundef null, ptr noundef null)
          to label %925 unwind label %923

923:                                              ; preds = %920
  %924 = landingpad { ptr, i32 }
          cleanup
  br label %927

925:                                              ; preds = %920, %912, %894, %860
  %926 = phi ptr [ null, %860 ], [ %879, %894 ], [ %879, %912 ], [ %879, %920 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #14
  br label %994

927:                                              ; preds = %490, %492, %430, %432, %300, %302, %651, %679, %719, %721, %811, %809, %899, %910, %901, %923, %350, %348
  %928 = phi { ptr, i32 } [ %351, %350 ], [ %349, %348 ], [ %720, %719 ], [ %722, %721 ], [ %810, %809 ], [ %812, %811 ], [ %924, %923 ], [ %900, %899 ], [ %902, %901 ], [ %911, %910 ], [ %652, %651 ], [ %680, %679 ], [ %301, %300 ], [ %303, %302 ], [ %431, %430 ], [ %433, %432 ], [ %491, %490 ], [ %493, %492 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #14
  br label %1150

929:                                              ; preds = %245, %250
  %930 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %115, i64 0, i32 4
  %931 = load ptr, ptr %930, align 8, !tbaa !294
  %932 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %117, ptr noundef %931, ptr noundef nonnull align 8 dereferenceable(40) %75)
          to label %933 unwind label %961, !prof !206

933:                                              ; preds = %929
  %934 = load i32, ptr %89, align 8, !tbaa !211
  %935 = icmp eq i32 %199, %934
  br i1 %935, label %958, label %936, !prof !329

936:                                              ; preds = %933
  %937 = invoke noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %199)
          to label %938 unwind label %961, !prof !330

938:                                              ; preds = %936
  %939 = icmp eq ptr %937, null
  br i1 %939, label %944, label %940, !prof !331

940:                                              ; preds = %938
  %941 = load i16, ptr %937, align 2, !tbaa !200
  %942 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, align 2, !tbaa !200
  %943 = icmp eq i16 %941, %942
  br i1 %943, label %947, label %963, !prof !332

944:                                              ; preds = %938
  %945 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, align 2, !tbaa !200
  %946 = icmp eq i16 %945, 0
  br i1 %946, label %958, label %963

947:                                              ; preds = %940, %952
  %948 = phi i16 [ %955, %952 ], [ %941, %940 ]
  %949 = phi ptr [ %954, %952 ], [ @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, %940 ]
  %950 = phi ptr [ %953, %952 ], [ %937, %940 ]
  %951 = icmp eq i16 %948, 0
  br i1 %951, label %958, label %952, !prof !221

952:                                              ; preds = %947
  %953 = getelementptr inbounds i16, ptr %950, i64 1
  %954 = getelementptr inbounds i16, ptr %949, i64 1
  %955 = load i16, ptr %953, align 2, !tbaa !200
  %956 = load i16, ptr %954, align 2, !tbaa !200
  %957 = icmp eq i16 %955, %956
  br i1 %957, label %947, label %963, !prof !333, !llvm.loop !217

958:                                              ; preds = %947, %944, %933
  %959 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !168
  %960 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %959, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgDT_ANYURIE)
          to label %963 unwind label %961, !prof !330

961:                                              ; preds = %980, %971, %958, %936, %929
  %962 = landingpad { ptr, i32 }
          cleanup
  br label %1150

963:                                              ; preds = %952, %940, %958, %944
  %964 = phi ptr [ null, %944 ], [ %960, %958 ], [ null, %940 ], [ null, %952 ]
  %965 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %966 = load ptr, ptr %965, align 8, !tbaa !257
  %967 = icmp ne ptr %966, null
  %968 = load i32, ptr %76, align 4
  %969 = icmp eq i32 %968, 1
  %970 = select i1 %967, i1 %969, i1 false, !prof !199
  br i1 %970, label %971, label %994, !prof !199

971:                                              ; preds = %963
  %972 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 20
  %973 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %974 = load ptr, ptr %972, align 8, !tbaa !318
  %975 = load ptr, ptr %973, align 8, !tbaa !252
  %976 = load ptr, ptr %975, align 8, !tbaa !155
  %977 = getelementptr inbounds ptr, ptr %976, i64 10
  %978 = load ptr, ptr %977, align 8
  %979 = invoke noundef ptr %978(ptr noundef nonnull align 8 dereferenceable(40) %975, i32 noundef %199)
          to label %980 unwind label %961

980:                                              ; preds = %971
  %981 = invoke noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36) %974, ptr noundef %197, ptr noundef %979)
          to label %982 unwind label %961

982:                                              ; preds = %980
  %983 = icmp eq ptr %964, null
  br i1 %983, label %988, label %984

984:                                              ; preds = %982
  %985 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %986 = load ptr, ptr %985, align 8, !tbaa !319
  %987 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %986, ptr noundef nonnull %964)
          to label %988 unwind label %992

988:                                              ; preds = %984, %982
  %989 = phi ptr [ null, %982 ], [ %987, %984 ]
  %990 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %991 = load ptr, ptr %990, align 8, !tbaa !320
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %981, ptr noundef %991, i32 noundef 0, i32 noundef 0, ptr noundef %989, ptr noundef null, ptr noundef null, i1 noundef zeroext false, ptr noundef null, ptr noundef %964)
          to label %994 unwind label %992

992:                                              ; preds = %988, %984
  %993 = landingpad { ptr, i32 }
          cleanup
  br label %1150

994:                                              ; preds = %988, %963, %925
  %995 = phi ptr [ %926, %925 ], [ null, %963 ], [ %981, %988 ]
  %996 = phi i32 [ %862, %925 ], [ 0, %963 ], [ 0, %988 ]
  %997 = load i32, ptr %76, align 4, !tbaa !186
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %999, label %1068, !prof !334

999:                                              ; preds = %994
  %1000 = load i8, ptr %11, align 1, !tbaa !185, !range !158, !noundef !254
  %1001 = icmp eq i8 %1000, 0
  br i1 %1001, label %1002, label %1053, !prof !255

1002:                                             ; preds = %999
  %1003 = icmp eq i64 %100, 0
  br i1 %1003, label %1068, label %1004, !prof !335

1004:                                             ; preds = %1002, %1049
  %1005 = phi i32 [ %1050, %1049 ], [ 0, %1002 ]
  %1006 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1005)
          to label %1007 unwind label %1047, !prof !336

1007:                                             ; preds = %1004
  %1008 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %1006, i64 0, i32 6
  %1009 = load ptr, ptr %1008, align 8, !tbaa !337
  %1010 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1009, i64 0, i32 4
  %1011 = load i32, ptr %1010, align 4, !tbaa !339
  %1012 = icmp eq i32 %199, %1011
  br i1 %1012, label %1013, label %1049, !prof !341

1013:                                             ; preds = %1007
  %1014 = icmp eq ptr %197, null
  %1015 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1009, i64 0, i32 6
  %1016 = load ptr, ptr %1015, align 8, !tbaa !342
  %1017 = icmp eq ptr %1016, null
  %1018 = or i1 %1014, %1017
  br i1 %1018, label %1023, label %1019, !prof !343

1019:                                             ; preds = %1013
  %1020 = load i16, ptr %197, align 2, !tbaa !200
  %1021 = load i16, ptr %1016, align 2, !tbaa !200
  %1022 = icmp eq i16 %1020, %1021
  br i1 %1022, label %1031, label %1049, !prof !344

1023:                                             ; preds = %1013
  br i1 %1014, label %1027, label %1024

1024:                                             ; preds = %1023
  %1025 = load i16, ptr %197, align 2, !tbaa !200
  %1026 = icmp eq i16 %1025, 0
  br i1 %1026, label %1027, label %1049

1027:                                             ; preds = %1024, %1023
  br i1 %1017, label %1042, label %1028

1028:                                             ; preds = %1027
  %1029 = load i16, ptr %1016, align 2, !tbaa !200
  %1030 = icmp eq i16 %1029, 0
  br i1 %1030, label %1042, label %1049

1031:                                             ; preds = %1019, %1036
  %1032 = phi i16 [ %1039, %1036 ], [ %1020, %1019 ]
  %1033 = phi ptr [ %1038, %1036 ], [ %1016, %1019 ]
  %1034 = phi ptr [ %1037, %1036 ], [ %197, %1019 ]
  %1035 = icmp eq i16 %1032, 0
  br i1 %1035, label %1042, label %1036, !prof !345

1036:                                             ; preds = %1031
  %1037 = getelementptr inbounds i16, ptr %1034, i64 1
  %1038 = getelementptr inbounds i16, ptr %1033, i64 1
  %1039 = load i16, ptr %1037, align 2, !tbaa !200
  %1040 = load i16, ptr %1038, align 2, !tbaa !200
  %1041 = icmp eq i16 %1039, %1040
  br i1 %1041, label %1031, label %1049, !prof !345, !llvm.loop !217

1042:                                             ; preds = %1031, %1028, %1027
  %1043 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %3, i64 0, i32 2
  %1044 = load ptr, ptr %1043, align 8, !tbaa !278
  %1045 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %1044)
          to label %1046 unwind label %1047

1046:                                             ; preds = %1042
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %1016, ptr noundef %1045, ptr noundef null, ptr noundef null)
          to label %1049 unwind label %1047

1047:                                             ; preds = %1042, %1046, %1004
  %1048 = landingpad { ptr, i32 }
          cleanup
  br label %1150

1049:                                             ; preds = %1036, %1019, %1028, %1024, %1007, %1046
  %1050 = add nuw i32 %1005, 1
  %1051 = zext i32 %1050 to i64
  %1052 = icmp eq i64 %100, %1051
  br i1 %1052, label %1068, label %1004, !prof !336, !llvm.loop !346

1053:                                             ; preds = %999
  %1054 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 40
  %1055 = load ptr, ptr %1054, align 8, !tbaa !347
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  %1056 = invoke noundef ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %1055, ptr noundef %197, i32 noundef %199, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %1057 unwind label %1064

1057:                                             ; preds = %1053
  %1058 = icmp eq ptr %1056, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br i1 %1058, label %1068, label %1059

1059:                                             ; preds = %1057
  %1060 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %3, i64 0, i32 2
  %1061 = load ptr, ptr %1060, align 8, !tbaa !278
  %1062 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %1061)
          to label %1063 unwind label %1064

1063:                                             ; preds = %1059
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %197, ptr noundef %1062, ptr noundef null, ptr noundef null)
          to label %1068 unwind label %1064

1064:                                             ; preds = %1063, %1070, %1122, %1127, %1053, %1059, %1081, %1103, %1113
  %1065 = landingpad { ptr, i32 }
          cleanup
  br label %1150

1066:                                             ; preds = %1099
  %1067 = landingpad { ptr, i32 }
          cleanup
  br label %1150

1068:                                             ; preds = %1049, %1002, %1063, %1057, %994
  %1069 = icmp ult i64 %100, %98
  br i1 %1069, label %1091, label %1070, !prof !348

1070:                                             ; preds = %1068
  %1071 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %1072 = load ptr, ptr %1071, align 8, !tbaa !207
  %1073 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %1072)
          to label %1074 unwind label %1064, !prof !349

1074:                                             ; preds = %1070
  %1075 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %75, i64 0, i32 6
  %1076 = load ptr, ptr %1075, align 8, !tbaa !293
  %1077 = load i32, ptr %75, align 8, !tbaa !291
  %1078 = zext i32 %1077 to i64
  %1079 = getelementptr inbounds i16, ptr %1076, i64 %1078
  store i16 0, ptr %1079, align 2, !tbaa !200
  %1080 = load ptr, ptr %1071, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %1073, i32 noundef %199, ptr noundef %197, ptr noundef %198, ptr noundef %1076, i32 noundef %996, i1 noundef zeroext true, ptr noundef %1080, ptr noundef null, i1 noundef zeroext false)
          to label %1081 unwind label %1089, !prof !349

1081:                                             ; preds = %1074
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
          to label %1082 unwind label %1064, !prof !349

1082:                                             ; preds = %1081
  %1083 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 4
  %1084 = load ptr, ptr %1083, align 8, !tbaa !350
  %1085 = load i32, ptr %72, align 4, !tbaa !183
  %1086 = zext i32 %1085 to i64
  %1087 = getelementptr inbounds ptr, ptr %1084, i64 %1086
  store ptr %1073, ptr %1087, align 8, !tbaa !168
  %1088 = add i32 %1085, 1
  store i32 %1088, ptr %72, align 4, !tbaa !183
  br label %1118

1089:                                             ; preds = %1074
  %1090 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %1073, ptr noundef %1072) #14
  br label %1150

1091:                                             ; preds = %1068
  %1092 = load i32, ptr %72, align 4, !tbaa !183
  %1093 = zext i32 %1092 to i64
  %1094 = icmp ult i64 %100, %1093
  br i1 %1094, label %1103, label %1095, !prof !351

1095:                                             ; preds = %1091
  %1096 = call ptr @__cxa_allocate_exception(i64 48) #14
  %1097 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 5
  %1098 = load ptr, ptr %1097, align 8, !tbaa !352
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %1096, ptr noundef nonnull @.str.4, i32 noundef 249, i32 noundef 116, ptr noundef %1098)
          to label %1099 unwind label %1101

1099:                                             ; preds = %1095
  invoke void @__cxa_throw(ptr nonnull %1096, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %1100 unwind label %1066

1100:                                             ; preds = %1099
  unreachable

1101:                                             ; preds = %1095
  %1102 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %1096) #14
  br label %1150

1103:                                             ; preds = %1091
  %1104 = load ptr, ptr %96, align 8, !tbaa !350
  %1105 = getelementptr inbounds ptr, ptr %1104, i64 %100
  %1106 = load ptr, ptr %1105, align 8, !tbaa !168
  %1107 = load ptr, ptr %97, align 8, !tbaa !293
  %1108 = load i32, ptr %75, align 8, !tbaa !291
  %1109 = zext i32 %1108 to i64
  %1110 = getelementptr inbounds i16, ptr %1107, i64 %1109
  store i16 0, ptr %1110, align 2, !tbaa !200
  %1111 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %1106, i64 0, i32 6
  %1112 = load ptr, ptr %1111, align 8, !tbaa !337
  invoke void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %1112, ptr noundef %198, ptr noundef %197, i32 noundef %199)
          to label %1113 unwind label %1064, !prof !353

1113:                                             ; preds = %1103
  invoke void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %1106, ptr noundef %1107)
          to label %1114 unwind label %1064, !prof !353

1114:                                             ; preds = %1113
  %1115 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %1106, i64 0, i32 2
  store i32 %996, ptr %1115, align 4, !tbaa !354
  %1116 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %1106, i64 0, i32 9
  store i8 0, ptr %1116, align 8, !tbaa !355
  %1117 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %1106, i64 0, i32 8
  store ptr null, ptr %1117, align 8, !tbaa !356
  store i8 1, ptr %1106, align 8, !tbaa !357
  br label %1118

1118:                                             ; preds = %1082, %1114
  %1119 = phi ptr [ %1073, %1082 ], [ %1106, %1114 ]
  %1120 = load i8, ptr %11, align 1, !tbaa !185, !range !158, !noundef !254
  %1121 = icmp eq i8 %1120, 0
  br i1 %1121, label %1125, label %1122, !prof !192

1122:                                             ; preds = %1118
  %1123 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 40
  %1124 = load ptr, ptr %1123, align 8, !tbaa !347
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %1124, ptr noundef %197, i32 noundef %199, ptr noundef nonnull %1119)
          to label %1125 unwind label %1064

1125:                                             ; preds = %1122, %1118
  %1126 = icmp eq ptr %995, null
  br i1 %1126, label %1130, label %1127, !prof !192

1127:                                             ; preds = %1125
  %1128 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %1119, i64 0, i32 5
  %1129 = load ptr, ptr %1128, align 8, !tbaa !358
  invoke void @_ZN11xercesc_2_713PSVIAttribute8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(96) %995, ptr noundef %1129)
          to label %1130 unwind label %1064

1130:                                             ; preds = %1125, %1127
  %1131 = add nuw nsw i64 %100, 1
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %13) #14
  %1132 = load ptr, ptr %12, align 8, !tbaa !208
  %1133 = icmp eq ptr %1132, null
  br i1 %1133, label %1146, label %1134, !prof !359

1134:                                             ; preds = %1130
  %1135 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %12, i64 0, i32 1
  %1136 = load ptr, ptr %1135, align 8, !tbaa !210
  %1137 = icmp eq ptr %1136, null
  br i1 %1137, label %1142, label %1138, !prof !360

1138:                                             ; preds = %1134
  %1139 = load ptr, ptr %1136, align 8, !tbaa !155
  %1140 = getelementptr inbounds ptr, ptr %1139, i64 3
  %1141 = load ptr, ptr %1140, align 8
  invoke void %1141(ptr noundef nonnull align 8 dereferenceable(8) %1136, ptr noundef nonnull %1132)
          to label %1146 unwind label %1143, !prof !361

1142:                                             ; preds = %1134
  call void @_ZdaPv(ptr noundef %1132) #17
  br label %1146

1143:                                             ; preds = %1138
  %1144 = landingpad { ptr, i32 }
          catch ptr null
  %1145 = extractvalue { ptr, i32 } %1144, 0
  call void @__clang_call_terminate(ptr %1145) #15
  unreachable

1146:                                             ; preds = %1130, %1138, %1142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #14
  %1147 = load i32, ptr %10, align 4, !tbaa !136
  %1148 = zext i32 %1147 to i64
  %1149 = icmp ult i64 %1131, %1148
  br i1 %1149, label %99, label %1152, !prof !362, !llvm.loop !363

1150:                                             ; preds = %1064, %1066, %1101, %296, %927, %961, %992, %1089, %1047, %298, %147
  %1151 = phi { ptr, i32 } [ %148, %147 ], [ %297, %296 ], [ %299, %298 ], [ %928, %927 ], [ %993, %992 ], [ %962, %961 ], [ %1090, %1089 ], [ %1048, %1047 ], [ %1102, %1101 ], [ %1065, %1064 ], [ %1067, %1066 ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %13) #14
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #14
  br label %1492

1152:                                             ; preds = %1146
  %1153 = trunc i64 %1131 to i32
  br label %1154

1154:                                             ; preds = %1152, %82
  %1155 = phi i32 [ 0, %82 ], [ %1153, %1152 ]
  br i1 %64, label %1156, label %1487, !prof !364

1156:                                             ; preds = %1154
  %1157 = load i32, ptr %76, align 4, !tbaa !186
  %1158 = icmp eq i32 %1157, 1
  %1159 = icmp ne ptr %47, null
  %1160 = and i1 %1159, %1158
  br i1 %1160, label %1161, label %1163, !prof !365

1161:                                             ; preds = %1156
  %1162 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(176) %47)
          to label %1168 unwind label %1180, !prof !365

1163:                                             ; preds = %1156
  %1164 = load ptr, ptr %3, align 8, !tbaa !155
  %1165 = getelementptr inbounds ptr, ptr %1164, i64 6
  %1166 = load ptr, ptr %1165, align 8
  %1167 = invoke noundef nonnull align 8 dereferenceable(16) ptr %1166(ptr noundef nonnull align 8 dereferenceable(33) %3)
          to label %1168 unwind label %1180

1168:                                             ; preds = %1163, %1161
  %1169 = phi ptr [ %1162, %1161 ], [ %1167, %1163 ]
  %1170 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 17
  br label %1171

1171:                                             ; preds = %1168, %1484
  %1172 = phi i32 [ %1486, %1484 ], [ 0, %1168 ]
  %1173 = phi i32 [ %1485, %1484 ], [ %1155, %1168 ]
  %1174 = load ptr, ptr %1169, align 8, !tbaa !155
  %1175 = getelementptr inbounds ptr, ptr %1174, i64 13
  %1176 = load ptr, ptr %1175, align 8
  %1177 = invoke noundef i32 %1176(ptr noundef nonnull align 8 dereferenceable(16) %1169)
          to label %1178 unwind label %1182, !prof !366

1178:                                             ; preds = %1171
  %1179 = icmp ult i32 %1172, %1177
  br i1 %1179, label %1184, label %1487, !prof !367

1180:                                             ; preds = %1163, %1161
  %1181 = landingpad { ptr, i32 }
          cleanup
  br label %1492

1182:                                             ; preds = %1171
  %1183 = landingpad { ptr, i32 }
          cleanup
  br label %1492

1184:                                             ; preds = %1178
  %1185 = load ptr, ptr %1169, align 8, !tbaa !155
  %1186 = getelementptr inbounds ptr, ptr %1185, i64 14
  %1187 = load ptr, ptr %1186, align 8
  %1188 = invoke noundef nonnull align 8 dereferenceable(56) ptr %1187(ptr noundef nonnull align 8 dereferenceable(16) %1169, i32 noundef %1172)
          to label %1189 unwind label %1251, !prof !368

1189:                                             ; preds = %1184
  %1190 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1188, i64 0, i32 1
  %1191 = load i32, ptr %1190, align 8, !tbaa !369
  %1192 = load ptr, ptr %1170, align 8, !tbaa !259
  %1193 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %1192, i64 0, i32 6
  %1194 = load ptr, ptr %1193, align 8, !tbaa !260
  %1195 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %1192, i64 0, i32 3
  %1196 = load i32, ptr %1195, align 8, !tbaa !262
  %1197 = load ptr, ptr %1192, align 8, !tbaa !263
  %1198 = load ptr, ptr %1194, align 8, !tbaa !155
  %1199 = load ptr, ptr %1198, align 8
  %1200 = invoke noundef i32 %1199(ptr noundef nonnull align 8 dereferenceable(8) %1194, ptr noundef nonnull %1188, i32 noundef %1196, ptr noundef %1197)
          to label %1201 unwind label %1255, !prof !370

1201:                                             ; preds = %1189
  %1202 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %1192, i64 0, i32 2
  %1203 = load ptr, ptr %1202, align 8, !tbaa !265
  %1204 = zext i32 %1200 to i64
  %1205 = getelementptr inbounds ptr, ptr %1203, i64 %1204
  %1206 = load ptr, ptr %1205, align 8, !tbaa !168
  %1207 = icmp eq ptr %1206, null
  br i1 %1207, label %1222, label %1208, !prof !266

1208:                                             ; preds = %1201, %1218
  %1209 = phi ptr [ %1220, %1218 ], [ %1206, %1201 ]
  %1210 = load ptr, ptr %1193, align 8, !tbaa !260
  %1211 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.18", ptr %1209, i64 0, i32 2
  %1212 = load ptr, ptr %1211, align 8, !tbaa !267
  %1213 = load ptr, ptr %1210, align 8, !tbaa !155
  %1214 = getelementptr inbounds ptr, ptr %1213, i64 1
  %1215 = load ptr, ptr %1214, align 8
  %1216 = invoke noundef zeroext i1 %1215(ptr noundef nonnull align 8 dereferenceable(8) %1210, ptr noundef nonnull %1188, ptr noundef %1212)
          to label %1217 unwind label %1253, !prof !371

1217:                                             ; preds = %1208
  br i1 %1216, label %1222, label %1218, !prof !270

1218:                                             ; preds = %1217
  %1219 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.18", ptr %1209, i64 0, i32 1
  %1220 = load ptr, ptr %1219, align 8, !tbaa !168
  %1221 = icmp eq ptr %1220, null
  br i1 %1221, label %1222, label %1208, !prof !271, !llvm.loop !272

1222:                                             ; preds = %1218, %1217, %1201
  %1223 = phi ptr [ null, %1201 ], [ %1209, %1217 ], [ null, %1218 ]
  %1224 = icmp eq ptr %1223, null
  br i1 %1224, label %1227, label %1225, !prof !273

1225:                                             ; preds = %1222
  %1226 = load ptr, ptr %1223, align 8, !tbaa !274
  br label %1227

1227:                                             ; preds = %1225, %1222
  %1228 = phi ptr [ %1226, %1225 ], [ null, %1222 ]
  %1229 = icmp eq ptr %1228, null
  br i1 %1229, label %1234, label %1230, !prof !372

1230:                                             ; preds = %1227
  %1231 = load i32, ptr %1228, align 4, !tbaa !136
  %1232 = load i32, ptr %65, align 8, !tbaa !177
  %1233 = icmp ult i32 %1231, %1232
  br i1 %1233, label %1234, label %1442, !prof !373

1234:                                             ; preds = %1230, %1227
  %1235 = load i8, ptr %23, align 8, !tbaa !253, !range !158, !noundef !254
  %1236 = icmp eq i8 %1235, 0
  br i1 %1236, label %1284, label %1237, !prof !374

1237:                                             ; preds = %1234
  %1238 = and i32 %1191, -2
  %1239 = icmp eq i32 %1238, 2
  br i1 %1239, label %1240, label %1257, !prof !374

1240:                                             ; preds = %1237
  %1241 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %1242 = load ptr, ptr %1241, align 8, !tbaa !160
  %1243 = load ptr, ptr %1188, align 8, !tbaa !155
  %1244 = getelementptr inbounds ptr, ptr %1243, i64 5
  %1245 = load ptr, ptr %1244, align 8
  %1246 = invoke noundef ptr %1245(ptr noundef nonnull align 8 dereferenceable(56) %1188)
          to label %1247 unwind label %1255

1247:                                             ; preds = %1240
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %1242, i32 noundef 6, ptr noundef %1246, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %1248 unwind label %1255

1248:                                             ; preds = %1247
  %1249 = load i32, ptr %76, align 4, !tbaa !186
  %1250 = icmp eq i32 %1249, 1
  br i1 %1250, label %1282, label %1284

1251:                                             ; preds = %1184
  %1252 = landingpad { ptr, i32 }
          cleanup
  br label %1492

1253:                                             ; preds = %1208
  %1254 = landingpad { ptr, i32 }
          cleanup
  br label %1492

1255:                                             ; preds = %1240, %1247, %1267, %1278, %1289, %1447, %1454, %1274, %1189
  %1256 = landingpad { ptr, i32 }
          cleanup
  br label %1492

1257:                                             ; preds = %1237
  %1258 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %1259 = icmp ult i32 %1191, 2
  %1260 = load i8, ptr %1258, align 2, !range !158
  %1261 = icmp ne i8 %1260, 0
  %1262 = select i1 %1259, i1 %1261, i1 false, !prof !375
  %1263 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1188, i64 0, i32 5
  %1264 = load i8, ptr %1263, align 1, !range !158
  %1265 = icmp ne i8 %1264, 0
  %1266 = select i1 %1262, i1 %1265, i1 false, !prof !375
  br i1 %1266, label %1267, label %1284, !prof !374

1267:                                             ; preds = %1257
  %1268 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %1269 = load ptr, ptr %1268, align 8, !tbaa !160
  %1270 = load ptr, ptr %1188, align 8, !tbaa !155
  %1271 = getelementptr inbounds ptr, ptr %1270, i64 5
  %1272 = load ptr, ptr %1271, align 8
  %1273 = invoke noundef ptr %1272(ptr noundef nonnull align 8 dereferenceable(56) %1188)
          to label %1274 unwind label %1255

1274:                                             ; preds = %1267
  %1275 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %3, i64 0, i32 2
  %1276 = load ptr, ptr %1275, align 8, !tbaa !278
  %1277 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %1276)
          to label %1278 unwind label %1255

1278:                                             ; preds = %1274
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %1269, i32 noundef 82, ptr noundef %1273, ptr noundef %1277, ptr noundef null, ptr noundef null)
          to label %1279 unwind label %1255

1279:                                             ; preds = %1278
  %1280 = load i32, ptr %76, align 4, !tbaa !186
  %1281 = icmp eq i32 %1280, 1
  br i1 %1281, label %1282, label %1284

1282:                                             ; preds = %1279, %1248
  %1283 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  store i8 1, ptr %1283, align 1, !tbaa !256
  br label %1284

1284:                                             ; preds = %1282, %1248, %1279, %1257, %1234
  %1285 = icmp ult i32 %1191, 2
  br i1 %1285, label %1286, label %1484, !prof !375

1286:                                             ; preds = %1284
  %1287 = load i8, ptr %23, align 8, !tbaa !253, !range !158, !noundef !254
  %1288 = icmp eq i8 %1287, 0
  br i1 %1288, label %1297, label %1289, !prof !374

1289:                                             ; preds = %1286
  %1290 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %1291 = load ptr, ptr %1290, align 8, !tbaa !160
  %1292 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1188, i64 0, i32 7
  %1293 = load ptr, ptr %1292, align 8, !tbaa !321
  %1294 = load ptr, ptr %1291, align 8, !tbaa !155
  %1295 = getelementptr inbounds ptr, ptr %1294, i64 8
  %1296 = load ptr, ptr %1295, align 8
  invoke void %1296(ptr noundef nonnull align 8 dereferenceable(40) %1291, ptr noundef nonnull %1188, ptr noundef %1293, i1 noundef zeroext false, ptr noundef %3)
          to label %1297 unwind label %1255, !prof !376

1297:                                             ; preds = %1289, %1286
  %1298 = icmp ult i32 %1173, %73
  br i1 %1298, label %1328, label %1299, !prof !375

1299:                                             ; preds = %1297
  %1300 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %1301 = load ptr, ptr %1300, align 8, !tbaa !207
  %1302 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %1301)
          to label %1303 unwind label %1322

1303:                                             ; preds = %1299
  %1304 = load ptr, ptr %1300, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_77XMLAttrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(49) %1302, ptr noundef %1304)
          to label %1305 unwind label %1326

1305:                                             ; preds = %1303
  %1306 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %1307 = load ptr, ptr %1306, align 8, !tbaa !160
  %1308 = load ptr, ptr %1307, align 8, !tbaa !155
  %1309 = getelementptr inbounds ptr, ptr %1308, i64 3
  %1310 = load ptr, ptr %1309, align 8
  invoke void %1310(ptr noundef nonnull align 8 dereferenceable(40) %1307, ptr noundef nonnull align 8 dereferenceable(49) %1302, ptr noundef nonnull align 8 dereferenceable(56) %1188)
          to label %1311 unwind label %1322

1311:                                             ; preds = %1305
  %1312 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %1313 = load ptr, ptr %1312, align 8, !tbaa !377
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1313, i32 noundef 1)
          to label %1314 unwind label %1322

1314:                                             ; preds = %1311
  %1315 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %1313, i64 0, i32 4
  %1316 = load ptr, ptr %1315, align 8, !tbaa !350
  %1317 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %1313, i64 0, i32 2
  %1318 = load i32, ptr %1317, align 4, !tbaa !183
  %1319 = zext i32 %1318 to i64
  %1320 = getelementptr inbounds ptr, ptr %1316, i64 %1319
  store ptr %1302, ptr %1320, align 8, !tbaa !168
  %1321 = add i32 %1318, 1
  store i32 %1321, ptr %1317, align 4, !tbaa !183
  br label %1353

1322:                                             ; preds = %1299, %1305, %1342, %1357, %1363, %1311
  %1323 = landingpad { ptr, i32 }
          cleanup
  br label %1492

1324:                                             ; preds = %1338
  %1325 = landingpad { ptr, i32 }
          cleanup
  br label %1492

1326:                                             ; preds = %1303
  %1327 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %1302, ptr noundef %1301) #14
  br label %1492

1328:                                             ; preds = %1297
  %1329 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %1330 = load ptr, ptr %1329, align 8, !tbaa !377
  %1331 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %1330, i64 0, i32 2
  %1332 = load i32, ptr %1331, align 4, !tbaa !183
  %1333 = icmp ugt i32 %1332, %1173
  br i1 %1333, label %1342, label %1334, !prof !351

1334:                                             ; preds = %1328
  %1335 = call ptr @__cxa_allocate_exception(i64 48) #14
  %1336 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %1330, i64 0, i32 5
  %1337 = load ptr, ptr %1336, align 8, !tbaa !352
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %1335, ptr noundef nonnull @.str.4, i32 noundef 249, i32 noundef 116, ptr noundef %1337)
          to label %1338 unwind label %1340

1338:                                             ; preds = %1334
  invoke void @__cxa_throw(ptr nonnull %1335, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %1339 unwind label %1324

1339:                                             ; preds = %1338
  unreachable

1340:                                             ; preds = %1334
  %1341 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %1335) #14
  br label %1492

1342:                                             ; preds = %1328
  %1343 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %1344 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %1330, i64 0, i32 4
  %1345 = load ptr, ptr %1344, align 8, !tbaa !350
  %1346 = zext i32 %1173 to i64
  %1347 = getelementptr inbounds ptr, ptr %1345, i64 %1346
  %1348 = load ptr, ptr %1347, align 8, !tbaa !168
  %1349 = load ptr, ptr %1343, align 8, !tbaa !160
  %1350 = load ptr, ptr %1349, align 8, !tbaa !155
  %1351 = getelementptr inbounds ptr, ptr %1350, i64 3
  %1352 = load ptr, ptr %1351, align 8
  invoke void %1352(ptr noundef nonnull align 8 dereferenceable(40) %1349, ptr noundef nonnull align 8 dereferenceable(49) %1348, ptr noundef nonnull align 8 dereferenceable(56) %1188)
          to label %1353 unwind label %1322, !prof !378

1353:                                             ; preds = %1314, %1342
  %1354 = phi ptr [ %1302, %1314 ], [ %1348, %1342 ]
  %1355 = load i32, ptr %76, align 4, !tbaa !186
  %1356 = icmp eq i32 %1355, 0
  br i1 %1356, label %1357, label %1364, !prof !374

1357:                                             ; preds = %1353
  %1358 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %1354, i64 0, i32 6
  %1359 = load ptr, ptr %1358, align 8, !tbaa !337
  %1360 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1359, i64 0, i32 5
  %1361 = load ptr, ptr %1360, align 8, !tbaa !379
  %1362 = invoke noundef i32 @_ZN11xercesc_2_712IGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1361, i32 noundef 0)
          to label %1363 unwind label %1322

1363:                                             ; preds = %1357
  invoke void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49) %1354, i32 noundef %1362)
          to label %1364 unwind label %1322

1364:                                             ; preds = %1363, %1353
  %1365 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  store i8 0, ptr %1354, align 8, !tbaa !357
  %1366 = add i32 %1173, 1
  %1367 = load ptr, ptr %1365, align 8, !tbaa !257
  %1368 = icmp ne ptr %1367, null
  %1369 = load i32, ptr %76, align 4
  %1370 = icmp eq i32 %1369, 1
  %1371 = select i1 %1368, i1 %1370, i1 false, !prof !374
  br i1 %1371, label %1372, label %1484, !prof !374

1372:                                             ; preds = %1364
  %1373 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 20
  %1374 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %1375 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %1376 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %1377 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1188, i64 0, i32 5
  %1378 = load ptr, ptr %1377, align 8, !tbaa !380
  %1379 = load ptr, ptr %1373, align 8, !tbaa !318
  %1380 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1378, i64 0, i32 6
  %1381 = load ptr, ptr %1380, align 8, !tbaa !342
  %1382 = load ptr, ptr %1374, align 8, !tbaa !252
  %1383 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1378, i64 0, i32 4
  %1384 = load i32, ptr %1383, align 4, !tbaa !339
  %1385 = load ptr, ptr %1382, align 8, !tbaa !155
  %1386 = getelementptr inbounds ptr, ptr %1385, i64 10
  %1387 = load ptr, ptr %1386, align 8
  %1388 = invoke noundef ptr %1387(ptr noundef nonnull align 8 dereferenceable(40) %1382, i32 noundef %1384)
          to label %1389 unwind label %1409

1389:                                             ; preds = %1372
  %1390 = invoke noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36) %1379, ptr noundef %1381, ptr noundef %1388)
          to label %1391 unwind label %1409

1391:                                             ; preds = %1389
  %1392 = load ptr, ptr %1375, align 8, !tbaa !319
  %1393 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %1392, ptr noundef nonnull %1188)
          to label %1394 unwind label %1411

1394:                                             ; preds = %1391
  %1395 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1188, i64 0, i32 6
  %1396 = load ptr, ptr %1395, align 8, !tbaa !295
  %1397 = load ptr, ptr %1375, align 8, !tbaa !319
  %1398 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %1397, ptr noundef %1396)
          to label %1399 unwind label %1413

1399:                                             ; preds = %1394
  %1400 = load ptr, ptr %1376, align 8, !tbaa !160
  %1401 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %1400, i64 0, i32 16
  %1402 = load i8, ptr %1401, align 8, !tbaa !306, !range !158, !noundef !254
  %1403 = icmp eq i8 %1402, 0
  br i1 %1403, label %1415, label %1404

1404:                                             ; preds = %1399
  %1405 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %1406 = load ptr, ptr %1405, align 8, !tbaa !320
  %1407 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1188, i64 0, i32 7
  %1408 = load ptr, ptr %1407, align 8, !tbaa !321
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %1390, ptr noundef %1406, i32 noundef 1, i32 noundef 2, ptr noundef %1398, ptr noundef null, ptr noundef %1408, i1 noundef zeroext true, ptr noundef %1393, ptr noundef null)
          to label %1439 unwind label %1413

1409:                                             ; preds = %1389, %1372
  %1410 = landingpad { ptr, i32 }
          cleanup
  br label %1492

1411:                                             ; preds = %1391
  %1412 = landingpad { ptr, i32 }
          cleanup
  br label %1492

1413:                                             ; preds = %1439, %1404, %1394
  %1414 = landingpad { ptr, i32 }
          cleanup
  br label %1492

1415:                                             ; preds = %1399
  %1416 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %1398, i64 0, i32 3
  %1417 = load i32, ptr %1416, align 8, !tbaa !322
  %1418 = icmp eq i32 %1417, 3
  br i1 %1418, label %1419, label %1426

1419:                                             ; preds = %1415
  %1420 = load ptr, ptr %1375, align 8, !tbaa !319
  %1421 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %1400, i64 0, i32 15
  %1422 = load ptr, ptr %1421, align 8, !tbaa !305
  %1423 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %1420, ptr noundef %1422)
          to label %1426 unwind label %1424

1424:                                             ; preds = %1437, %1419
  %1425 = landingpad { ptr, i32 }
          cleanup
  br label %1492

1426:                                             ; preds = %1419, %1415
  %1427 = phi ptr [ null, %1415 ], [ %1423, %1419 ]
  %1428 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %1429 = load ptr, ptr %1428, align 8, !tbaa !320
  %1430 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1188, i64 0, i32 7
  %1431 = load ptr, ptr %1430, align 8, !tbaa !321
  %1432 = icmp eq ptr %1427, null
  br i1 %1432, label %1437, label %1433

1433:                                             ; preds = %1426
  %1434 = load ptr, ptr %1376, align 8, !tbaa !160
  %1435 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %1434, i64 0, i32 15
  %1436 = load ptr, ptr %1435, align 8, !tbaa !305
  br label %1437

1437:                                             ; preds = %1426, %1433
  %1438 = phi ptr [ %1436, %1433 ], [ %1396, %1426 ]
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %1390, ptr noundef %1429, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %1398, ptr noundef %1427, ptr noundef %1431, i1 noundef zeroext true, ptr noundef %1393, ptr noundef %1438)
          to label %1439 unwind label %1424

1439:                                             ; preds = %1404, %1437
  %1440 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1188, i64 0, i32 7
  %1441 = load ptr, ptr %1440, align 8, !tbaa !321
  invoke void @_ZN11xercesc_2_713PSVIAttribute8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(96) %1390, ptr noundef %1441)
          to label %1484 unwind label %1413

1442:                                             ; preds = %1230
  %1443 = icmp ne i32 %1191, 8
  %1444 = load i8, ptr %23, align 8, !range !158
  %1445 = icmp eq i8 %1444, 0
  %1446 = select i1 %1443, i1 true, i1 %1445, !prof !307
  br i1 %1446, label %1484, label %1447, !prof !307

1447:                                             ; preds = %1442
  %1448 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %1449 = load ptr, ptr %1448, align 8, !tbaa !160
  %1450 = load ptr, ptr %1188, align 8, !tbaa !155
  %1451 = getelementptr inbounds ptr, ptr %1450, i64 5
  %1452 = load ptr, ptr %1451, align 8
  %1453 = invoke noundef ptr %1452(ptr noundef nonnull align 8 dereferenceable(56) %1188)
          to label %1454 unwind label %1255

1454:                                             ; preds = %1447
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %1449, i32 noundef 49, ptr noundef %1453, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %1455 unwind label %1255

1455:                                             ; preds = %1454
  %1456 = load i32, ptr %76, align 4, !tbaa !186
  %1457 = icmp eq i32 %1456, 1
  br i1 %1457, label %1458, label %1484

1458:                                             ; preds = %1455
  %1459 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  %1460 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  store i8 1, ptr %1459, align 1, !tbaa !256
  %1461 = load ptr, ptr %1460, align 8, !tbaa !257
  %1462 = icmp eq ptr %1461, null
  br i1 %1462, label %1484, label %1463

1463:                                             ; preds = %1458
  %1464 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 20
  %1465 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %1466 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1188, i64 0, i32 5
  %1467 = load ptr, ptr %1466, align 8, !tbaa !380
  %1468 = load ptr, ptr %1464, align 8, !tbaa !318
  %1469 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1467, i64 0, i32 6
  %1470 = load ptr, ptr %1469, align 8, !tbaa !342
  %1471 = load ptr, ptr %1465, align 8, !tbaa !252
  %1472 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1467, i64 0, i32 4
  %1473 = load i32, ptr %1472, align 4, !tbaa !339
  %1474 = load ptr, ptr %1471, align 8, !tbaa !155
  %1475 = getelementptr inbounds ptr, ptr %1474, i64 10
  %1476 = load ptr, ptr %1475, align 8
  %1477 = invoke noundef ptr %1476(ptr noundef nonnull align 8 dereferenceable(40) %1471, i32 noundef %1473)
          to label %1478 unwind label %1482

1478:                                             ; preds = %1463
  %1479 = invoke noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getAttributePSVIByNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36) %1468, ptr noundef %1470, ptr noundef %1477)
          to label %1480 unwind label %1482

1480:                                             ; preds = %1478
  %1481 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %1479, i64 0, i32 6
  store i32 1, ptr %1481, align 8, !tbaa !381
  br label %1484

1482:                                             ; preds = %1478, %1463
  %1483 = landingpad { ptr, i32 }
          cleanup
  br label %1492

1484:                                             ; preds = %1364, %1439, %1442, %1455, %1480, %1458, %1284
  %1485 = phi i32 [ %1173, %1284 ], [ %1173, %1480 ], [ %1173, %1458 ], [ %1173, %1455 ], [ %1173, %1442 ], [ %1366, %1439 ], [ %1366, %1364 ]
  %1486 = add i32 %1172, 1
  br label %1171, !llvm.loop !385

1487:                                             ; preds = %1178, %1154
  %1488 = phi i32 [ %1155, %1154 ], [ %1173, %1178 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #14
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(40) %75)
          to label %1498 unwind label %1489, !prof !386

1489:                                             ; preds = %1487
  %1490 = landingpad { ptr, i32 }
          catch ptr null
  %1491 = extractvalue { ptr, i32 } %1490, 0
  call void @__clang_call_terminate(ptr %1491) #15
  unreachable

1492:                                             ; preds = %1322, %1324, %1253, %1255, %1340, %145, %110, %1150, %1182, %1482, %1409, %1413, %1424, %1411, %1326, %1251, %1180, %80
  %1493 = phi { ptr, i32 } [ %81, %80 ], [ %1151, %1150 ], [ %1181, %1180 ], [ %1183, %1182 ], [ %1252, %1251 ], [ %1483, %1482 ], [ %1327, %1326 ], [ %1410, %1409 ], [ %1412, %1411 ], [ %1414, %1413 ], [ %1425, %1424 ], [ %146, %145 ], [ %111, %110 ], [ %1341, %1340 ], [ %1254, %1253 ], [ %1256, %1255 ], [ %1323, %1322 ], [ %1325, %1324 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #14
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(40) %75)
          to label %1497 unwind label %1494

1494:                                             ; preds = %1492
  %1495 = landingpad { ptr, i32 }
          catch ptr null
  %1496 = extractvalue { ptr, i32 } %1495, 0
  call void @__clang_call_terminate(ptr %1496) #15
  unreachable

1497:                                             ; preds = %1492
  resume { ptr, i32 } %1493

1498:                                             ; preds = %1487, %63
  %1499 = phi i32 [ 0, %63 ], [ %1488, %1487 ]
  ret i32 %1499
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !387 {
  %4 = load i32, ptr %1, align 4, !tbaa !136
  %5 = icmp ugt i32 %4, 100
  br i1 %5, label %6, label %35, !prof !388

6:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !185
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 40
  %8 = load ptr, ptr %7, align 8, !tbaa !347
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %12 = load ptr, ptr %11, align 8, !tbaa !207
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %12)
  %14 = load i32, ptr %1, align 4, !tbaa !136
  %15 = shl i32 %14, 1
  %16 = or disjoint i32 %15, 1
  %17 = load ptr, ptr %11, align 8, !tbaa !207
  %18 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %17)
          to label %19 unwind label %28

19:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %20 unwind label %30

20:                                               ; preds = %19
  %21 = load ptr, ptr %11, align 8, !tbaa !207
  store ptr %21, ptr %13, align 8, !tbaa !389
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %13, i64 0, i32 1
  store i8 0, ptr %22, align 8, !tbaa !391
  %23 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %13, i64 0, i32 2
  store ptr null, ptr %23, align 8, !tbaa !392
  %24 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %13, i64 0, i32 3
  store i32 %16, ptr %24, align 8, !tbaa !393
  %25 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %13, i64 0, i32 4
  store i32 0, ptr %25, align 4, !tbaa !394
  %26 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %13, i64 0, i32 5
  store ptr null, ptr %26, align 8, !tbaa !395
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %16)
          to label %27 unwind label %28

27:                                               ; preds = %20
  store ptr %18, ptr %26, align 8, !tbaa !395
  store ptr %13, ptr %7, align 8, !tbaa !347
  br label %35

28:                                               ; preds = %20, %10
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %32

30:                                               ; preds = %19
  %31 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %18, ptr noundef %17) #14
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi { ptr, i32 } [ %29, %28 ], [ %31, %30 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #14
  resume { ptr, i32 } %33

34:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %8)
  br label %35

35:                                               ; preds = %27, %34, %3
  ret void
}

declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712IGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !396 {
  %4 = alloca i8, align 1
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6, !prof !397

6:                                                ; preds = %3
  %7 = load i16, ptr %1, align 2, !tbaa !200
  %8 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !200
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %13, label %27, !prof !398

10:                                               ; preds = %3
  %11 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !200
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %24, label %27

13:                                               ; preds = %6, %18
  %14 = phi i16 [ %21, %18 ], [ %7, %6 ]
  %15 = phi ptr [ %20, %18 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %6 ]
  %16 = phi ptr [ %19, %18 ], [ %1, %6 ]
  %17 = icmp eq i16 %14, 0
  br i1 %17, label %24, label %18, !prof !399

18:                                               ; preds = %13
  %19 = getelementptr inbounds i16, ptr %16, i64 1
  %20 = getelementptr inbounds i16, ptr %15, i64 1
  %21 = load i16, ptr %19, align 2, !tbaa !200
  %22 = load i16, ptr %20, align 2, !tbaa !200
  %23 = icmp eq i16 %21, %22
  br i1 %23, label %13, label %27, !prof !400, !llvm.loop !217

24:                                               ; preds = %13, %10
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %26 = load i32, ptr %25, align 8, !tbaa !211
  br label %56

27:                                               ; preds = %18, %6, %10
  br i1 %5, label %32, label %28, !prof !401

28:                                               ; preds = %27
  %29 = load i16, ptr %1, align 2, !tbaa !200
  %30 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !200
  %31 = icmp eq i16 %29, %30
  br i1 %31, label %35, label %49, !prof !402

32:                                               ; preds = %27
  %33 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !200
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %46, label %49

35:                                               ; preds = %28, %40
  %36 = phi i16 [ %43, %40 ], [ %29, %28 ]
  %37 = phi ptr [ %42, %40 ], [ @_ZN11xercesc_2_76XMLUni11fgXMLStringE, %28 ]
  %38 = phi ptr [ %41, %40 ], [ %1, %28 ]
  %39 = icmp eq i16 %36, 0
  br i1 %39, label %46, label %40, !prof !331

40:                                               ; preds = %35
  %41 = getelementptr inbounds i16, ptr %38, i64 1
  %42 = getelementptr inbounds i16, ptr %37, i64 1
  %43 = load i16, ptr %41, align 2, !tbaa !200
  %44 = load i16, ptr %42, align 2, !tbaa !200
  %45 = icmp eq i16 %43, %44
  br i1 %45, label %35, label %49, !prof !331, !llvm.loop !217

46:                                               ; preds = %35, %32
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %48 = load i32, ptr %47, align 4, !tbaa !403
  br label %56

49:                                               ; preds = %40, %28, %32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #14
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %51 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %50, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %52 = load i8, ptr %4, align 1, !tbaa !185, !range !158, !noundef !254
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54, !prof !404

54:                                               ; preds = %49
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 277, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %55

55:                                               ; preds = %54, %49
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #14
  br label %56

56:                                               ; preds = %55, %46, %24
  %57 = phi i32 [ %26, %24 ], [ %48, %46 ], [ %51, %55 ]
  ret i32 %57
}

declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner22anyAttributeValidationEPNS_12SchemaAttDefEjRbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1024) %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %3, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %4) local_unnamed_addr #7 align 2 !prof !134 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !317
  store i8 0, ptr %3, align 1, !tbaa !185
  store i8 0, ptr %4, align 1, !tbaa !185
  switch i32 %7, label %40 [
    i32 11, label %41
    i32 12, label %8
    i32 13, label %18
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !380
  %11 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %10, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !339
  %13 = icmp ne i32 %12, %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %15 = load i32, ptr %14, align 4
  %16 = icmp ne i32 %15, %2
  %17 = select i1 %13, i1 %16, i1 false
  br label %41

18:                                               ; preds = %5
  %19 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !405
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.6", ptr %20, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !406
  br label %25

25:                                               ; preds = %18, %22
  %26 = phi i32 [ %24, %22 ], [ 0, %18 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %41, label %31

28:                                               ; preds = %31
  %29 = and i8 %37, 1
  %30 = icmp ne i8 %29, 0
  br label %41

31:                                               ; preds = %25, %31
  %32 = phi i8 [ %37, %31 ], [ 0, %25 ]
  %33 = phi i32 [ %38, %31 ], [ 0, %25 ]
  %34 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef %33)
  %35 = load i32, ptr %34, align 4, !tbaa !136
  %36 = icmp eq i32 %35, %2
  %37 = select i1 %36, i8 1, i8 %32
  %38 = add nuw i32 %33, 1
  %39 = icmp eq i32 %38, %26
  br i1 %39, label %28, label %31, !llvm.loop !408

40:                                               ; preds = %5
  br label %41

41:                                               ; preds = %8, %25, %28, %5, %40
  %42 = phi i1 [ true, %5 ], [ false, %40 ], [ %30, %28 ], [ false, %25 ], [ %17, %8 ]
  br i1 %42, label %43, label %49

43:                                               ; preds = %41
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !369
  switch i32 %45, label %49 [
    i32 5, label %47
    i32 6, label %46
  ]

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %43, %46
  %48 = phi ptr [ %4, %46 ], [ %3, %43 ]
  store i8 1, ptr %48, align 1, !tbaa !185
  br label %49

49:                                               ; preds = %47, %43, %41
  ret i1 %42
}

declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 !prof !134 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !409
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !411
  %7 = load ptr, ptr %0, align 8, !tbaa !412
  %8 = load ptr, ptr %4, align 8, !tbaa !155
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !413
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !168
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !409
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.17", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !414
  %22 = load ptr, ptr %19, align 8, !tbaa !155
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21)
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.17", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !168
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !llvm.loop !416

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !417
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZN11xercesc_2_710XMLScanner13getNewUIntPtrEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !418 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !262
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !419
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %12, label %11, !prof !420

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !260
  %15 = load i32, ptr %4, align 8, !tbaa !262
  %16 = load ptr, ptr %0, align 8, !tbaa !263
  %17 = load ptr, ptr %14, align 8, !tbaa !155
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, i32 noundef %15, ptr noundef %16), !prof !421
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !265
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !168
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26, !prof !422

26:                                               ; preds = %12, %35
  %27 = phi ptr [ %37, %35 ], [ %24, %12 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !260
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.18", ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !267
  %31 = load ptr, ptr %28, align 8, !tbaa !155
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %1, ptr noundef %30), !prof !423
  br i1 %34, label %39, label %35, !prof !284

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.18", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !168
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !prof !424, !llvm.loop !272

39:                                               ; preds = %26, %35, %12
  %40 = phi ptr [ null, %12 ], [ %27, %26 ], [ null, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42, !prof !420

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !425, !range !158, !noundef !254
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 8, !tbaa !274
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @_ZdlPv(ptr noundef %47) #17
  br label %50

50:                                               ; preds = %46, %49, %42
  store ptr %2, ptr %40, align 8, !tbaa !274
  %51 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.18", ptr %40, i64 0, i32 2
  store ptr %1, ptr %51, align 8, !tbaa !267
  br label %65

52:                                               ; preds = %39
  %53 = load ptr, ptr %0, align 8, !tbaa !263
  %54 = load ptr, ptr %53, align 8, !tbaa !155
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef 24), !prof !426
  %58 = load ptr, ptr %20, align 8, !tbaa !265
  %59 = getelementptr inbounds ptr, ptr %58, i64 %22
  %60 = load ptr, ptr %59, align 8, !tbaa !168
  store ptr %2, ptr %57, align 8, !tbaa !274
  %61 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.18", ptr %57, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !427
  %62 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.18", ptr %57, i64 0, i32 2
  store ptr %1, ptr %62, align 8, !tbaa !267
  store ptr %57, ptr %59, align 8, !tbaa !168
  %63 = load i32, ptr %8, align 8, !tbaa !419
  %64 = add i32 %63, 1
  store i32 %64, ptr %8, align 8, !tbaa !419
  br label %65

65:                                               ; preds = %52, %50
  ret void
}

declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE3putEPviPj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 !prof !134 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !428
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !430
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !431, !range !158, !noundef !254
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !432
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZdlPv(ptr noundef %21) #17
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %3, ptr %14, align 8, !tbaa !432
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.20", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !434
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.20", ptr %14, i64 0, i32 3
  store i32 %2, ptr %26, align 8, !tbaa !435
  br label %44

27:                                               ; preds = %13
  %28 = load ptr, ptr %0, align 8, !tbaa !436
  %29 = load ptr, ptr %28, align 8, !tbaa !155
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28, i64 noundef 32)
  %33 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !437
  %35 = load i32, ptr %5, align 4, !tbaa !136
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !168
  store ptr %3, ptr %32, align 8, !tbaa !432
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.20", ptr %32, i64 0, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !438
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.20", ptr %32, i64 0, i32 2
  store ptr %1, ptr %40, align 8, !tbaa !434
  %41 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.20", ptr %32, i64 0, i32 3
  store i32 %2, ptr %41, align 8, !tbaa !435
  store ptr %32, ptr %37, align 8, !tbaa !168
  %42 = load i32, ptr %9, align 4, !tbaa !430
  %43 = add i32 %42, 1
  store i32 %43, ptr %9, align 4, !tbaa !430
  br label %44

44:                                               ; preds = %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret void
}

declare noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !439 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !310

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !200
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !311

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !200
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !312, !llvm.loop !313

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !291
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !292
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !314

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !293
  %24 = load i32, ptr %0, align 8, !tbaa !291
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !440
  %28 = load i32, ptr %0, align 8, !tbaa !291
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !291
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #3 align 2 !prof !441 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %10, label %7, !prof !442

7:                                                ; preds = %5
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !317
  br label %10

10:                                               ; preds = %5, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %5 ]
  store i32 0, ptr %4, align 8, !tbaa !291
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !293
  store i16 0, ptr %13, align 2, !tbaa !200
  br i1 %6, label %18, label %14, !prof !442

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 5
  %16 = load i8, ptr %15, align 1, !tbaa !443, !range !158, !noundef !254
  %17 = icmp eq i8 %16, 0
  br label %18

18:                                               ; preds = %10, %14
  %19 = phi i1 [ %17, %14 ], [ true, %10 ]
  %20 = icmp eq i32 %11, 0
  %21 = icmp sgt i32 %11, 8
  %22 = or i1 %20, %21
  br i1 %22, label %30, label %23, !prof !289

23:                                               ; preds = %18
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 1
  br label %150

30:                                               ; preds = %18
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 1
  br label %32

32:                                               ; preds = %30, %65
  %33 = phi i8 [ %58, %65 ], [ 1, %30 ]
  %34 = phi ptr [ %71, %65 ], [ %3, %30 ]
  %35 = load i16, ptr %34, align 2, !tbaa !200
  switch i16 %35, label %39 [
    i16 0, label %154
    i16 -1, label %36
  ], !prof !444

36:                                               ; preds = %32
  %37 = getelementptr inbounds i16, ptr %34, i64 1
  %38 = load i16, ptr %37, align 2, !tbaa !200
  br label %57

39:                                               ; preds = %32
  %40 = icmp ult i16 %35, 14
  br i1 %40, label %41, label %54, !prof !445

41:                                               ; preds = %39
  switch i16 %35, label %57 [
    i16 13, label %42
    i16 10, label %42
    i16 9, label %42
    i16 60, label %56
  ]

42:                                               ; preds = %41, %41, %41
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %45 = load i8, ptr %43, align 2, !tbaa !446, !range !158, !noundef !254
  %46 = icmp eq i8 %45, 0
  %47 = load i8, ptr %44, align 8, !range !158
  %48 = icmp eq i8 %47, 0
  %49 = select i1 %46, i1 true, i1 %48
  %50 = or i1 %49, %19
  br i1 %50, label %57, label %51

51:                                               ; preds = %42
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %53 = load ptr, ptr %52, align 8, !tbaa !160
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %53, i32 noundef 83, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %57

54:                                               ; preds = %39
  %55 = icmp eq i16 %35, 60
  br i1 %55, label %56, label %57, !prof !445

56:                                               ; preds = %41, %54
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 248, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %57

57:                                               ; preds = %41, %51, %42, %56, %54, %36
  %58 = phi i8 [ %33, %36 ], [ 0, %56 ], [ %33, %54 ], [ %33, %42 ], [ %33, %51 ], [ %33, %41 ]
  %59 = phi i16 [ %38, %36 ], [ %35, %56 ], [ %35, %54 ], [ 32, %42 ], [ 32, %51 ], [ %35, %41 ]
  %60 = phi ptr [ %37, %36 ], [ %34, %56 ], [ %34, %54 ], [ %34, %42 ], [ %34, %51 ], [ %34, %41 ]
  %61 = load i32, ptr %4, align 8, !tbaa !291
  %62 = load i32, ptr %31, align 4, !tbaa !292
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65, !prof !445

64:                                               ; preds = %57
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
  br label %65

65:                                               ; preds = %57, %64
  %66 = load ptr, ptr %12, align 8, !tbaa !293
  %67 = load i32, ptr %4, align 8, !tbaa !291
  %68 = add i32 %67, 1
  store i32 %68, ptr %4, align 8, !tbaa !291
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds i16, ptr %66, i64 %69
  store i16 %59, ptr %70, align 2, !tbaa !200
  %71 = getelementptr inbounds i16, ptr %60, i64 1
  br label %32, !llvm.loop !447

72:                                               ; preds = %136, %150
  %73 = phi i8 [ %151, %150 ], [ %82, %136 ]
  %74 = phi i1 [ false, %150 ], [ true, %136 ]
  %75 = phi ptr [ %153, %150 ], [ %137, %136 ]
  %76 = load i16, ptr %75, align 2, !tbaa !200
  switch i16 %76, label %81 [
    i16 0, label %154
    i16 -1, label %77
    i16 60, label %80
  ]

77:                                               ; preds = %72
  %78 = getelementptr inbounds i16, ptr %75, i64 1
  %79 = load i16, ptr %78, align 2, !tbaa !200
  br label %81

80:                                               ; preds = %72
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 248, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %81

81:                                               ; preds = %72, %80, %77
  %82 = phi i8 [ %73, %77 ], [ 0, %80 ], [ %73, %72 ]
  %83 = phi i16 [ %79, %77 ], [ %76, %80 ], [ %76, %72 ]
  %84 = phi ptr [ %78, %77 ], [ %75, %80 ], [ %75, %72 ]
  %85 = zext i16 %83 to i64
  br i1 %74, label %86, label %108

86:                                               ; preds = %81
  %87 = load ptr, ptr %28, align 8, !tbaa !448
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %87, i64 0, i32 28
  %89 = load ptr, ptr %88, align 8, !tbaa !449
  %90 = getelementptr inbounds i8, ptr %89, i64 %85
  %91 = load i8, ptr %90, align 1, !tbaa !455
  %92 = icmp slt i8 %91, 0
  br i1 %92, label %106, label %93

93:                                               ; preds = %86
  br i1 %152, label %138, label %94

94:                                               ; preds = %93
  %95 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 1
  %96 = load i32, ptr %4, align 8, !tbaa !291
  %97 = load i32, ptr %95, align 4, !tbaa !292
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
  br label %100

100:                                              ; preds = %94, %99
  %101 = load ptr, ptr %12, align 8, !tbaa !293
  %102 = load i32, ptr %4, align 8, !tbaa !291
  %103 = add i32 %102, 1
  store i32 %103, ptr %4, align 8, !tbaa !291
  %104 = zext i32 %102 to i64
  %105 = getelementptr inbounds i16, ptr %101, i64 %104
  store i16 32, ptr %105, align 2, !tbaa !200
  br label %138

106:                                              ; preds = %86
  %107 = getelementptr inbounds i16, ptr %84, i64 1
  br label %136

108:                                              ; preds = %81
  %109 = load ptr, ptr %24, align 8, !tbaa !448
  %110 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %109, i64 0, i32 28
  %111 = load ptr, ptr %110, align 8, !tbaa !449
  %112 = getelementptr inbounds i8, ptr %111, i64 %85
  %113 = load i8, ptr %112, align 1, !tbaa !455
  %114 = icmp slt i8 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %108
  %116 = getelementptr inbounds i16, ptr %84, i64 1
  %117 = load i8, ptr %25, align 2, !tbaa !446, !range !158, !noundef !254
  %118 = icmp eq i8 %117, 0
  %119 = load i8, ptr %26, align 8, !range !158
  %120 = icmp eq i8 %119, 0
  %121 = select i1 %118, i1 true, i1 %120
  %122 = or i1 %121, %19
  br i1 %122, label %136, label %123

123:                                              ; preds = %115
  %124 = icmp ne i16 %83, 32
  %125 = select i1 %152, i1 true, i1 %124
  br i1 %125, label %134, label %126

126:                                              ; preds = %123
  %127 = load i16, ptr %116, align 2, !tbaa !200
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %126
  %130 = zext i16 %127 to i64
  %131 = getelementptr inbounds i8, ptr %111, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !455
  %133 = icmp slt i8 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129, %126, %123
  %135 = load ptr, ptr %27, align 8, !tbaa !160
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %135, i32 noundef 83, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %136

136:                                              ; preds = %134, %129, %115, %106
  %137 = phi ptr [ %116, %134 ], [ %116, %129 ], [ %116, %115 ], [ %107, %106 ]
  br label %72, !llvm.loop !456

138:                                              ; preds = %108, %93, %100
  %139 = load i32, ptr %4, align 8, !tbaa !291
  %140 = load i32, ptr %29, align 4, !tbaa !292
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
  br label %143

143:                                              ; preds = %138, %142
  %144 = load ptr, ptr %12, align 8, !tbaa !293
  %145 = load i32, ptr %4, align 8, !tbaa !291
  %146 = add i32 %145, 1
  store i32 %146, ptr %4, align 8, !tbaa !291
  %147 = zext i32 %145 to i64
  %148 = getelementptr inbounds i16, ptr %144, i64 %147
  store i16 %83, ptr %148, align 2, !tbaa !200
  %149 = getelementptr inbounds i16, ptr %84, i64 1
  br label %150, !llvm.loop !456

150:                                              ; preds = %23, %143
  %151 = phi i8 [ 1, %23 ], [ %82, %143 ]
  %152 = phi i1 [ true, %23 ], [ false, %143 ]
  %153 = phi ptr [ %3, %23 ], [ %149, %143 ]
  br label %72

154:                                              ; preds = %72, %32
  %155 = phi i8 [ %33, %32 ], [ %73, %72 ]
  %156 = and i8 %155, 1
  %157 = icmp ne i8 %156, 0
  ret i1 %157
}

declare void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 !prof !457 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !458
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !460
  %7 = load ptr, ptr %0, align 8, !tbaa !461
  %8 = load ptr, ptr %4, align 8, !tbaa !155
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !462
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !463
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !168
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !464

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !458
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !465
  %22 = load ptr, ptr %19, align 8, !tbaa !155
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !467
  br i1 %25, label %30, label %26, !prof !468

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !168
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !469, !llvm.loop !470

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !471

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !472
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !473
  %6 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !475
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.13", ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !476
  %10 = icmp eq i32 %5, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %3
  %12 = load ptr, ptr %0, align 8, !tbaa !478
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 96, ptr noundef %12)
  %14 = load ptr, ptr %0, align 8, !tbaa !478
  invoke void @_ZN11xercesc_2_713PSVIAttributeC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %13, ptr noundef %14)
          to label %15 unwind label %42

15:                                               ; preds = %11
  %16 = load ptr, ptr %6, align 8, !tbaa !475
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef 1)
  %17 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.13", ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !479
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.13", ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !476
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  store ptr %13, ptr %22, align 8, !tbaa !168
  %23 = add i32 %20, 1
  store i32 %23, ptr %19, align 4, !tbaa !476
  %24 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !480
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %25, i32 noundef 1)
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !481
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %25, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !483
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %27, i64 %30
  store ptr %1, ptr %31, align 8, !tbaa !168
  %32 = add i32 %29, 1
  store i32 %32, ptr %28, align 4, !tbaa !483
  %33 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !484
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %34, i32 noundef 1)
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %34, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !481
  %37 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %34, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !483
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %36, i64 %39
  store ptr %2, ptr %40, align 8, !tbaa !168
  %41 = add i32 %38, 1
  store i32 %41, ptr %37, align 4, !tbaa !483
  br label %58

42:                                               ; preds = %11
  %43 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #14
  resume { ptr, i32 } %43

44:                                               ; preds = %3
  %45 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef %5)
  %46 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !480
  %48 = load i32, ptr %4, align 8, !tbaa !473
  %49 = load ptr, ptr %47, align 8, !tbaa !155
  %50 = getelementptr inbounds ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(40) %47, ptr noundef %1, i32 noundef %48)
  %52 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !484
  %54 = load i32, ptr %4, align 8, !tbaa !473
  %55 = load ptr, ptr %53, align 8, !tbaa !155
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  %57 = load ptr, ptr %56, align 8
  tail call void %57(ptr noundef nonnull align 8 dereferenceable(40) %53, ptr noundef %2, i32 noundef %54)
  br label %58

58:                                               ; preds = %44, %15
  %59 = phi ptr [ %13, %15 ], [ %45, %44 ]
  %60 = load i32, ptr %4, align 8, !tbaa !473
  %61 = add i32 %60, 1
  store i32 %61, ptr %4, align 8, !tbaa !473
  ret ptr %59
}

declare noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef) local_unnamed_addr #6

declare void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #7 align 2 !prof !485 {
  store i32 0, ptr %3, align 8, !tbaa !291
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !293
  store i16 0, ptr %6, align 2, !tbaa !200
  %7 = load i16, ptr %2, align 2, !tbaa !200
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %56, label %9, !prof !486

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 1
  br label %12

12:                                               ; preds = %9, %44
  %13 = phi i16 [ %7, %9 ], [ %51, %44 ]
  %14 = phi ptr [ %2, %9 ], [ %50, %44 ]
  %15 = phi i8 [ 1, %9 ], [ %28, %44 ]
  %16 = icmp eq i16 %13, -1
  br i1 %16, label %17, label %20, !prof !487

17:                                               ; preds = %12
  %18 = getelementptr inbounds i16, ptr %14, i64 1
  %19 = load i16, ptr %18, align 2, !tbaa !200
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i16 [ %19, %17 ], [ %13, %12 ]
  %22 = phi ptr [ %18, %17 ], [ %14, %12 ]
  br i1 %16, label %27, label %23, !prof !487

23:                                               ; preds = %20
  %24 = load i16, ptr %22, align 2, !tbaa !200
  %25 = icmp eq i16 %24, 60
  br i1 %25, label %26, label %27, !prof !487

26:                                               ; preds = %23
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 248, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %27

27:                                               ; preds = %26, %23, %20
  %28 = phi i8 [ %15, %20 ], [ 0, %26 ], [ %15, %23 ]
  br i1 %16, label %38, label %29, !prof !487

29:                                               ; preds = %27
  %30 = load ptr, ptr %10, align 8, !tbaa !448
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %30, i64 0, i32 28
  %32 = load ptr, ptr %31, align 8, !tbaa !449
  %33 = zext i16 %21 to i64
  %34 = getelementptr inbounds i8, ptr %32, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !455
  %36 = icmp slt i8 %35, 0
  %37 = select i1 %36, i16 32, i16 %21, !prof !488
  br label %38

38:                                               ; preds = %29, %27
  %39 = phi i16 [ %21, %27 ], [ %37, %29 ]
  %40 = load i32, ptr %3, align 8, !tbaa !291
  %41 = load i32, ptr %11, align 4, !tbaa !292
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44, !prof !487

43:                                               ; preds = %38
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 1)
  br label %44

44:                                               ; preds = %38, %43
  %45 = load ptr, ptr %5, align 8, !tbaa !293
  %46 = load i32, ptr %3, align 8, !tbaa !291
  %47 = add i32 %46, 1
  store i32 %47, ptr %3, align 8, !tbaa !291
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds i16, ptr %45, i64 %48
  store i16 %39, ptr %49, align 2, !tbaa !200
  %50 = getelementptr inbounds i16, ptr %22, i64 1
  %51 = load i16, ptr %50, align 2, !tbaa !200
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %12, !prof !489, !llvm.loop !490

53:                                               ; preds = %44
  %54 = and i8 %28, 1
  %55 = icmp ne i8 %54, 0
  br label %56

56:                                               ; preds = %53, %4
  %57 = phi i1 [ true, %4 ], [ %55, %53 ]
  ret i1 %57
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !491 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !183
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !351

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !352
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.4, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !350
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !168
  ret ptr %18
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !393
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !394
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !391, !range !158, !noundef !254
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !492
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %21)
          to label %27 unwind label %24

24:                                               ; preds = %23
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #15
  unreachable

27:                                               ; preds = %23
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #14
  br label %28

28:                                               ; preds = %20, %27, %16
  store ptr %3, ptr %14, align 8, !tbaa !492
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %29, align 8, !tbaa !494
  %30 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 3
  store i32 %2, ptr %30, align 8, !tbaa !495
  br label %48

31:                                               ; preds = %13
  %32 = load ptr, ptr %0, align 8, !tbaa !389
  %33 = load ptr, ptr %32, align 8, !tbaa !155
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef 32)
  %37 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !392
  %39 = load i32, ptr %5, align 4, !tbaa !136
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !168
  store ptr %3, ptr %36, align 8, !tbaa !492
  %43 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !496
  %44 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  store ptr %1, ptr %44, align 8, !tbaa !494
  %45 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 3
  store i32 %2, ptr %45, align 8, !tbaa !495
  store ptr %36, ptr %41, align 8, !tbaa !168
  %46 = load i32, ptr %9, align 4, !tbaa !394
  %47 = add i32 %46, 1
  store i32 %47, ptr %9, align 4, !tbaa !394
  br label %48

48:                                               ; preds = %31, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret void
}

declare void @_ZN11xercesc_2_713PSVIAttribute8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !497 {
  %2 = load ptr, ptr %0, align 8, !tbaa !208
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !359

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !210
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !360

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !155
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !361

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #17
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #15
  unreachable
}

declare void @_ZN11xercesc_2_77XMLAttrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) unnamed_addr #6

declare void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef) local_unnamed_addr #6

declare noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getAttributePSVIByNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef) local_unnamed_addr #6

declare noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712IGXMLScanner13resolvePrefixEPKtRNS_9XMLBufferENS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %3) local_unnamed_addr #7 align 2 !prof !134 {
  %5 = alloca i8, align 1
  %6 = icmp eq ptr %1, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = load i16, ptr %1, align 2, !tbaa !200
  %9 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !200
  %10 = icmp eq i16 %8, %9
  br i1 %10, label %14, label %28

11:                                               ; preds = %4
  %12 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !200
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %25, label %28

14:                                               ; preds = %7, %19
  %15 = phi i16 [ %22, %19 ], [ %8, %7 ]
  %16 = phi ptr [ %21, %19 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %7 ]
  %17 = phi ptr [ %20, %19 ], [ %1, %7 ]
  %18 = icmp eq i16 %15, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds i16, ptr %17, i64 1
  %21 = getelementptr inbounds i16, ptr %16, i64 1
  %22 = load i16, ptr %20, align 2, !tbaa !200
  %23 = load i16, ptr %21, align 2, !tbaa !200
  %24 = icmp eq i16 %22, %23
  br i1 %24, label %14, label %28, !llvm.loop !217

25:                                               ; preds = %14, %11
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %27 = load i32, ptr %26, align 8, !tbaa !211
  br label %58

28:                                               ; preds = %19, %7, %11
  br i1 %6, label %33, label %29

29:                                               ; preds = %28
  %30 = load i16, ptr %1, align 2, !tbaa !200
  %31 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !200
  %32 = icmp eq i16 %30, %31
  br i1 %32, label %36, label %50

33:                                               ; preds = %28
  %34 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !200
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %47, label %50

36:                                               ; preds = %29, %41
  %37 = phi i16 [ %44, %41 ], [ %30, %29 ]
  %38 = phi ptr [ %43, %41 ], [ @_ZN11xercesc_2_76XMLUni11fgXMLStringE, %29 ]
  %39 = phi ptr [ %42, %41 ], [ %1, %29 ]
  %40 = icmp eq i16 %37, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds i16, ptr %39, i64 1
  %43 = getelementptr inbounds i16, ptr %38, i64 1
  %44 = load i16, ptr %42, align 2, !tbaa !200
  %45 = load i16, ptr %43, align 2, !tbaa !200
  %46 = icmp eq i16 %44, %45
  br i1 %46, label %36, label %50, !llvm.loop !217

47:                                               ; preds = %36, %33
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %49 = load i32, ptr %48, align 4, !tbaa !403
  br label %58

50:                                               ; preds = %41, %29, %33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #14
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %52 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %51, ptr noundef %1, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %53 = load i8, ptr %5, align 1, !tbaa !185, !range !158, !noundef !254
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 277, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %56

56:                                               ; preds = %55, %50
  %57 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %52, ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #14
  br label %58

58:                                               ; preds = %56, %47, %25
  %59 = phi i32 [ %27, %25 ], [ %49, %47 ], [ %52, %56 ]
  ret i32 %59
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !498 {
  %3 = alloca %"class.xercesc_2_7::XMLDTDDescriptionImpl", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %5 = load ptr, ptr %4, align 8, !tbaa !246
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  %7 = load i8, ptr %6, align 1, !tbaa !499, !range !158, !noundef !254
  %8 = icmp ne i8 %7, 0
  tail call void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(80) %5, i1 noundef zeroext %8)
  %9 = load ptr, ptr %4, align 8, !tbaa !246
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %11 = load i8, ptr %10, align 2, !tbaa !500, !range !158, !noundef !254
  %12 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %9, i64 0, i32 1
  store i8 %11, ptr %12, align 1, !tbaa !501
  %13 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !319
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  %19 = select i1 %15, i1 true, i1 %18, !prof !206
  br i1 %19, label %22, label %20, !prof !206

20:                                               ; preds = %2
  %21 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getXSModelEv(ptr noundef nonnull align 8 dereferenceable(80) %9)
  store ptr %21, ptr %13, align 8, !tbaa !319
  br label %22

22:                                               ; preds = %20, %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %24 = load ptr, ptr %23, align 8, !tbaa !207
  call void @_ZN11xercesc_2_721XMLDTDDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE, ptr noundef %24)
  %25 = load ptr, ptr %4, align 8, !tbaa !246
  %26 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPNS_21XMLGrammarDescriptionE(ptr noundef nonnull align 8 dereferenceable(80) %25, ptr noundef nonnull %3)
          to label %27 unwind label %38, !prof !206

27:                                               ; preds = %22
  %28 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 11
  store ptr %26, ptr %28, align 8, !tbaa !503
  call void @_ZN11xercesc_2_721XMLDTDDescriptionImplD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  %29 = load ptr, ptr %28, align 8, !tbaa !503
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %42, !prof !206

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %33 = load ptr, ptr %32, align 8, !tbaa !504
  %34 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %33)
  %35 = load ptr, ptr %32, align 8, !tbaa !504
  invoke void @_ZN11xercesc_2_710DTDGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %34, ptr noundef %35)
          to label %36 unwind label %40, !prof !206

36:                                               ; preds = %31
  store ptr %34, ptr %28, align 8, !tbaa !503
  %37 = load ptr, ptr %4, align 8, !tbaa !246
  call void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80) %37, ptr noundef nonnull %34)
  br label %46

38:                                               ; preds = %22
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_721XMLDTDDescriptionImplD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %303

40:                                               ; preds = %31
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %34, ptr noundef %33) #14
  br label %303

42:                                               ; preds = %27
  %43 = load ptr, ptr %29, align 8, !tbaa !155
  %44 = getelementptr inbounds ptr, ptr %43, i64 20
  %45 = load ptr, ptr %44, align 8
  call void %45(ptr noundef nonnull align 8 dereferenceable(61) %29)
  br label %46

46:                                               ; preds = %42, %36
  %47 = load ptr, ptr %28, align 8, !tbaa !503
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %47, ptr %48, align 8, !tbaa !140
  %49 = load ptr, ptr %47, align 8, !tbaa !155
  %50 = getelementptr inbounds ptr, ptr %49, i64 5
  %51 = load ptr, ptr %50, align 8
  %52 = call noundef i32 %51(ptr noundef nonnull align 8 dereferenceable(8) %47), !prof !505
  %53 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  store i32 %52, ptr %53, align 4, !tbaa !186
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr null, ptr %54, align 8, !tbaa !506
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %56 = load i8, ptr %55, align 1, !tbaa !507, !range !158, !noundef !254
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %87, label %58, !prof !206

58:                                               ; preds = %46
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %60 = load ptr, ptr %59, align 8, !tbaa !160
  %61 = load ptr, ptr %60, align 8, !tbaa !155
  %62 = getelementptr inbounds ptr, ptr %61, i64 12
  %63 = load ptr, ptr %62, align 8
  %64 = call noundef zeroext i1 %63(ptr noundef nonnull align 8 dereferenceable(40) %60)
  %65 = load ptr, ptr %59, align 8, !tbaa !160
  br i1 %64, label %66, label %71

66:                                               ; preds = %58
  %67 = load ptr, ptr %48, align 8, !tbaa !140
  %68 = load ptr, ptr %65, align 8, !tbaa !155
  %69 = getelementptr inbounds ptr, ptr %68, i64 11
  %70 = load ptr, ptr %69, align 8
  call void %70(ptr noundef nonnull align 8 dereferenceable(40) %65, ptr noundef %67)
  br label %95

71:                                               ; preds = %58
  %72 = load ptr, ptr %65, align 8, !tbaa !155
  %73 = getelementptr inbounds ptr, ptr %72, i64 13
  %74 = load ptr, ptr %73, align 8
  %75 = call noundef zeroext i1 %74(ptr noundef nonnull align 8 dereferenceable(40) %65)
  br i1 %75, label %76, label %95

76:                                               ; preds = %71
  %77 = load ptr, ptr %59, align 8, !tbaa !160
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %79 = load ptr, ptr %78, align 8, !tbaa !508
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %77, i64 0, i32 2
  store ptr %79, ptr %80, align 8, !tbaa !509
  %81 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %77, i64 0, i32 13, i32 2
  store ptr %79, ptr %81, align 8, !tbaa !510
  %82 = load ptr, ptr %4, align 8, !tbaa !246
  %83 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %77, i64 0, i32 3
  store ptr %82, ptr %83, align 8, !tbaa !511
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %85 = load i8, ptr %84, align 1, !tbaa !512, !range !158, !noundef !254
  %86 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %77, i64 0, i32 13, i32 1
  store i8 %85, ptr %86, align 8, !tbaa !513
  br label %95

87:                                               ; preds = %46
  %88 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 9
  %89 = load ptr, ptr %88, align 8, !tbaa !514
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  store ptr %89, ptr %90, align 8, !tbaa !160
  %91 = load ptr, ptr %48, align 8, !tbaa !140
  %92 = load ptr, ptr %89, align 8, !tbaa !155
  %93 = getelementptr inbounds ptr, ptr %92, i64 11
  %94 = load ptr, ptr %93, align 8
  call void %94(ptr noundef nonnull align 8 dereferenceable(40) %89, ptr noundef %91), !prof !515
  br label %95

95:                                               ; preds = %66, %76, %71, %87
  %96 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %97 = load i32, ptr %96, align 8, !tbaa !516
  %98 = icmp eq i32 %97, 1
  %99 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %100 = zext i1 %98 to i8
  store i8 %100, ptr %99, align 8, !tbaa !253
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 24
  %102 = load i8, ptr %101, align 2, !tbaa !517, !range !158, !noundef !254
  %103 = icmp ne i8 %102, 0
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  %105 = load i8, ptr %104, align 2, !range !158
  %106 = icmp ne i8 %105, 0
  %107 = select i1 %103, i1 %106, i1 false, !prof !199
  %108 = zext i1 %107 to i8
  store i8 %108, ptr %101, align 2, !tbaa !517
  %109 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %110 = load ptr, ptr %109, align 8, !tbaa !518
  %111 = icmp eq ptr %110, null
  br i1 %111, label %116, label %112, !prof !199

112:                                              ; preds = %95
  %113 = load ptr, ptr %110, align 8, !tbaa !155
  %114 = getelementptr inbounds ptr, ptr %113, i64 9
  %115 = load ptr, ptr %114, align 8
  call void %115(ptr noundef nonnull align 8 dereferenceable(8) %110), !prof !519
  br label %116

116:                                              ; preds = %112, %95
  %117 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %118 = load ptr, ptr %117, align 8, !tbaa !520
  %119 = icmp eq ptr %118, null
  br i1 %119, label %124, label %120, !prof !521

120:                                              ; preds = %116
  %121 = load ptr, ptr %118, align 8, !tbaa !155
  %122 = getelementptr inbounds ptr, ptr %121, i64 4
  %123 = load ptr, ptr %122, align 8
  call void %123(ptr noundef nonnull align 8 dereferenceable(8) %118), !prof !522
  br label %124

124:                                              ; preds = %120, %116
  %125 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %126 = load ptr, ptr %125, align 8, !tbaa !508
  %127 = icmp eq ptr %126, null
  br i1 %127, label %132, label %128, !prof !199

128:                                              ; preds = %124
  %129 = load ptr, ptr %126, align 8, !tbaa !155
  %130 = getelementptr inbounds ptr, ptr %129, i64 3
  %131 = load ptr, ptr %130, align 8
  call void %131(ptr noundef nonnull align 8 dereferenceable(8) %126), !prof !523
  br label %132

132:                                              ; preds = %128, %124
  %133 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %134 = load ptr, ptr %133, align 8, !tbaa !524
  %135 = load ptr, ptr %134, align 8, !tbaa !155
  %136 = getelementptr inbounds ptr, ptr %135, i64 4
  %137 = load ptr, ptr %136, align 8
  call void %137(ptr noundef nonnull align 8 dereferenceable(16) %134), !prof !525
  %138 = load ptr, ptr %133, align 8, !tbaa !524
  %139 = load ptr, ptr %138, align 8, !tbaa !155
  %140 = getelementptr inbounds ptr, ptr %139, i64 9
  %141 = load ptr, ptr %140, align 8
  %142 = call noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(16) %138, ptr noundef null), !prof !526
  %143 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 48
  store i8 0, ptr %143, align 8, !tbaa !527
  %144 = load ptr, ptr %23, align 8, !tbaa !207
  %145 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %146 = load ptr, ptr %145, align 8, !tbaa !320
  %147 = load ptr, ptr %144, align 8, !tbaa !155
  %148 = getelementptr inbounds ptr, ptr %147, i64 3
  %149 = load ptr, ptr %148, align 8
  call void %149(ptr noundef nonnull align 8 dereferenceable(8) %144, ptr noundef %146), !prof !528
  store ptr null, ptr %145, align 8, !tbaa !320
  %150 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  %151 = load ptr, ptr %150, align 8, !tbaa !529
  %152 = icmp eq ptr %151, null
  br i1 %152, label %154, label %153, !prof !199

153:                                              ; preds = %132
  call void @_ZN11xercesc_2_725IdentityConstraintHandler5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %151)
  br label %154

154:                                              ; preds = %153, %132
  %155 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %156 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %157 = load i32, ptr %156, align 4, !tbaa !251
  %158 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 29
  %159 = load i32, ptr %158, align 8, !tbaa !530
  %160 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %161 = load i32, ptr %160, align 4, !tbaa !403
  %162 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %163 = load i32, ptr %162, align 8, !tbaa !211
  call void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104) %155, i32 noundef %157, i32 noundef %159, i32 noundef %161, i32 noundef %163)
  %164 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 32
  %165 = load i32, ptr %164, align 4, !tbaa !531
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %174, !prof !206

167:                                              ; preds = %154
  %168 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %169 = load ptr, ptr %168, align 8, !tbaa !252
  %170 = load ptr, ptr %169, align 8, !tbaa !155
  %171 = getelementptr inbounds ptr, ptr %170, i64 5
  %172 = load ptr, ptr %171, align 8
  %173 = call noundef i32 %172(ptr noundef nonnull align 8 dereferenceable(40) %169, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE), !prof !532
  store i32 %173, ptr %164, align 4, !tbaa !531
  br label %174

174:                                              ; preds = %167, %154
  %175 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 0, ptr %175, align 1, !tbaa !533
  %176 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 0, ptr %176, align 2, !tbaa !446
  %177 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  store i32 0, ptr %177, align 8, !tbaa !534
  %178 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 1, ptr %178, align 1, !tbaa !535
  %179 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 1
  store i8 0, ptr %179, align 8, !tbaa !536
  %180 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 22
  %181 = load ptr, ptr %180, align 8, !tbaa !537
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %190, !prof !206

183:                                              ; preds = %174
  %184 = load ptr, ptr %23, align 8, !tbaa !207
  %185 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %184)
  %186 = load ptr, ptr %23, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_711PSVIElementC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %185, ptr noundef %186)
          to label %187 unwind label %188, !prof !206

187:                                              ; preds = %183
  store ptr %185, ptr %180, align 8, !tbaa !537
  br label %190

188:                                              ; preds = %183
  %189 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %185, ptr noundef %184) #14
  br label %303

190:                                              ; preds = %187, %174
  %191 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 23
  %192 = load ptr, ptr %191, align 8, !tbaa !538
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %212, !prof !206

194:                                              ; preds = %190
  %195 = load ptr, ptr %23, align 8, !tbaa !207
  %196 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %195)
  %197 = load ptr, ptr %23, align 8, !tbaa !207
  %198 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %196, i64 0, i32 1
  store i8 0, ptr %198, align 8, !tbaa !539
  %199 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %196, i64 0, i32 1, i32 1
  store i32 0, ptr %199, align 4, !tbaa !541
  %200 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %196, i64 0, i32 1, i32 2
  store i32 8, ptr %200, align 8, !tbaa !542
  %201 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %196, i64 0, i32 1, i32 3
  store ptr null, ptr %201, align 8, !tbaa !543
  %202 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %196, i64 0, i32 1, i32 4
  store ptr %197, ptr %202, align 8, !tbaa !544
  %203 = load ptr, ptr %197, align 8, !tbaa !155
  %204 = getelementptr inbounds ptr, ptr %203, i64 2
  %205 = load ptr, ptr %204, align 8
  %206 = invoke noundef ptr %205(ptr noundef nonnull align 8 dereferenceable(8) %197, i64 noundef 8)
          to label %207 unwind label %210, !prof !545

207:                                              ; preds = %194
  store ptr %206, ptr %201, align 8, !tbaa !543
  %208 = load i32, ptr %200, align 8, !tbaa !542
  %209 = zext i32 %208 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %206, i8 0, i64 %209, i1 false), !prof !546
  store ptr %196, ptr %191, align 8, !tbaa !538
  br label %214

210:                                              ; preds = %194
  %211 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %196, ptr noundef %195) #14
  br label %303

212:                                              ; preds = %190
  %213 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %192, i64 0, i32 1, i32 1
  store i32 0, ptr %213, align 4, !tbaa !541
  br label %214

214:                                              ; preds = %212, %207
  call void @_ZN11xercesc_2_712IGXMLScanner20resetPSVIElemContextEv(ptr noundef nonnull align 8 dereferenceable(1024) %0)
  %215 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 9
  %216 = load ptr, ptr %215, align 8, !tbaa !514
  %217 = load ptr, ptr %216, align 8, !tbaa !155
  %218 = getelementptr inbounds ptr, ptr %217, i64 6
  %219 = load ptr, ptr %218, align 8
  call void %219(ptr noundef nonnull align 8 dereferenceable(48) %216), !prof !547
  %220 = load ptr, ptr %215, align 8, !tbaa !514
  %221 = load ptr, ptr %125, align 8, !tbaa !508
  %222 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %220, i64 0, i32 2
  store ptr %221, ptr %222, align 8, !tbaa !509
  %223 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 10
  %224 = load ptr, ptr %223, align 8, !tbaa !548
  %225 = load ptr, ptr %224, align 8, !tbaa !155
  %226 = getelementptr inbounds ptr, ptr %225, i64 6
  %227 = load ptr, ptr %226, align 8
  call void %227(ptr noundef nonnull align 8 dereferenceable(186) %224), !prof !549
  %228 = load ptr, ptr %223, align 8, !tbaa !548
  %229 = load ptr, ptr %125, align 8, !tbaa !508
  %230 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %228, i64 0, i32 2
  store ptr %229, ptr %230, align 8, !tbaa !509
  %231 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %228, i64 0, i32 13, i32 2
  store ptr %229, ptr %231, align 8, !tbaa !510
  %232 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %233 = load i8, ptr %232, align 1, !tbaa !512, !range !158, !noundef !254
  %234 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %228, i64 0, i32 13, i32 1
  store i8 %233, ptr %234, align 8, !tbaa !513
  %235 = load ptr, ptr %4, align 8, !tbaa !246
  %236 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %228, i64 0, i32 3
  store ptr %235, ptr %236, align 8, !tbaa !511
  %237 = load i8, ptr %55, align 1, !tbaa !507, !range !158, !noundef !254
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %245, label %239, !prof !206

239:                                              ; preds = %214
  %240 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %241 = load ptr, ptr %240, align 8, !tbaa !160
  %242 = load ptr, ptr %241, align 8, !tbaa !155
  %243 = getelementptr inbounds ptr, ptr %242, i64 6
  %244 = load ptr, ptr %243, align 8
  call void %244(ptr noundef nonnull align 8 dereferenceable(40) %241)
  br label %245

245:                                              ; preds = %239, %214
  %246 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %247 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %248 = load i8, ptr %247, align 1, !tbaa !550, !range !158, !noundef !254
  %249 = icmp ne i8 %248, 0
  %250 = call noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %246, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext true, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %249)
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %275, !prof !199

252:                                              ; preds = %245
  %253 = load ptr, ptr %1, align 8, !tbaa !155
  %254 = getelementptr inbounds ptr, ptr %253, i64 6
  %255 = load ptr, ptr %254, align 8
  %256 = call noundef zeroext i1 %255(ptr noundef nonnull align 8 dereferenceable(41) %1)
  %257 = call ptr @__cxa_allocate_exception(i64 48) #14
  %258 = load ptr, ptr %1, align 8, !tbaa !155
  %259 = getelementptr inbounds ptr, ptr %258, i64 5
  %260 = load ptr, ptr %259, align 8
  br i1 %256, label %261, label %268

261:                                              ; preds = %252
  %262 = invoke noundef ptr %260(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %263 unwind label %266

263:                                              ; preds = %261
  %264 = load ptr, ptr %23, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %257, ptr noundef nonnull @.str, i32 noundef 1258, i32 noundef 76, ptr noundef %262, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %264)
          to label %265 unwind label %266

265:                                              ; preds = %263
  call void @__cxa_throw(ptr nonnull %257, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

266:                                              ; preds = %263, %261
  %267 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %257) #14
  br label %303

268:                                              ; preds = %252
  %269 = invoke noundef ptr %260(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %270 unwind label %273

270:                                              ; preds = %268
  %271 = load ptr, ptr %23, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %257, ptr noundef nonnull @.str, i32 noundef 1260, i32 noundef 2, ptr noundef %269, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %271)
          to label %272 unwind label %273

272:                                              ; preds = %270
  call void @__cxa_throw(ptr nonnull %257, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

273:                                              ; preds = %270, %268
  %274 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %257) #14
  br label %303

275:                                              ; preds = %245
  %276 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %246, ptr noundef nonnull %250, ptr noundef null)
  %277 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %278 = load ptr, ptr %277, align 8, !tbaa !551
  %279 = icmp eq ptr %278, null
  br i1 %279, label %287, label %280, !prof !206

280:                                              ; preds = %275
  %281 = load ptr, ptr %278, align 8, !tbaa !155
  %282 = getelementptr inbounds ptr, ptr %281, i64 3
  %283 = load ptr, ptr %282, align 8
  %284 = call noundef i32 %283(ptr noundef nonnull align 8 dereferenceable(12) %278)
  %285 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  store i32 %284, ptr %285, align 4, !tbaa !552
  %286 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  store i32 0, ptr %286, align 8, !tbaa !553
  br label %287

287:                                              ; preds = %280, %275
  %288 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 16
  store i32 0, ptr %288, align 8, !tbaa !177
  %289 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 36
  %290 = load i32, ptr %289, align 8, !tbaa !554
  %291 = icmp ugt i32 %290, 31
  br i1 %291, label %292, label %295, !prof !199

292:                                              ; preds = %287
  %293 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 17
  %294 = load ptr, ptr %293, align 8, !tbaa !259
  call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %294)
  call void @_ZN11xercesc_2_710XMLScanner16recreateUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
  br label %296

295:                                              ; preds = %287
  call void @_ZN11xercesc_2_710XMLScanner13resetUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
  br label %296

296:                                              ; preds = %295, %292
  %297 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 18
  %298 = load ptr, ptr %297, align 8, !tbaa !281
  call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %298)
  %299 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 19
  %300 = load ptr, ptr %299, align 8, !tbaa !288
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %300)
  %301 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 14
  %302 = load ptr, ptr %301, align 8, !tbaa !555
  call void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %302)
  ret void

303:                                              ; preds = %266, %273, %210, %188, %40, %38
  %304 = phi { ptr, i32 } [ %211, %210 ], [ %189, %188 ], [ %41, %40 ], [ %39, %38 ], [ %267, %266 ], [ %274, %273 ]
  resume { ptr, i32 } %304
}

declare void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #6

declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getXSModelEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

declare void @_ZN11xercesc_2_721XMLDTDDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #6

declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPNS_21XMLGrammarDescriptionE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_721XMLDTDDescriptionImplD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN11xercesc_2_710DTDGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61), ptr noundef) unnamed_addr #6

declare void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #6

declare void @_ZN11xercesc_2_725IdentityConstraintHandler5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #6

declare void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN11xercesc_2_711PSVIElementC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #6

declare void @_ZN11xercesc_2_712IGXMLScanner20resetPSVIElemContextEv(ptr noundef nonnull align 8 dereferenceable(1024)) local_unnamed_addr #6

declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(41), i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !556 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !419
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5, !prof !557

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !262
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !558

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %35, %5
  store i32 0, ptr %2, align 8, !tbaa !419
  br label %42

13:                                               ; preds = %9, %35
  %14 = phi i64 [ 0, %9 ], [ %38, %35 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !265
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19, !prof !559

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.18", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !427
  %23 = load i8, ptr %11, align 8, !tbaa !425, !range !158, !noundef !254
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !420

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !274
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %26) #17
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !263
  %31 = load ptr, ptr %30, align 8, !tbaa !155
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20), !prof !560
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !prof !420, !llvm.loop !561

35:                                               ; preds = %29, %13
  %36 = load ptr, ptr %10, align 8, !tbaa !265
  %37 = getelementptr inbounds ptr, ptr %36, i64 %14
  store ptr null, ptr %37, align 8, !tbaa !168
  %38 = add nuw nsw i64 %14, 1
  %39 = load i32, ptr %6, align 8, !tbaa !262
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %13, label %12, !prof !562, !llvm.loop !563

42:                                               ; preds = %1, %12
  ret void
}

declare void @_ZN11xercesc_2_710XMLScanner16recreateUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #6

declare void @_ZN11xercesc_2_710XMLScanner13resetUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !564 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !430
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5, !prof !565

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !428
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %35, %5
  store i32 0, ptr %2, align 4, !tbaa !430
  br label %42

13:                                               ; preds = %9, %35
  %14 = phi i64 [ 0, %9 ], [ %38, %35 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !437
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.20", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !438
  %23 = load i8, ptr %11, align 8, !tbaa !431, !range !158, !noundef !254
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !432
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %26) #17
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !436
  %31 = load ptr, ptr %30, align 8, !tbaa !155
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20)
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !566

35:                                               ; preds = %29, %13
  %36 = load ptr, ptr %10, align 8, !tbaa !437
  %37 = getelementptr inbounds ptr, ptr %36, i64 %14
  store ptr null, ptr %37, align 8, !tbaa !168
  %38 = add nuw nsw i64 %14, 1
  %39 = load i32, ptr %6, align 8, !tbaa !428
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %13, label %12, !llvm.loop !567

42:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #7 comdat align 2 !prof !568 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !569
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !571

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %31, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !572
  ret void

9:                                                ; preds = %5, %31
  %10 = phi i64 [ 0, %5 ], [ %34, %31 ]
  %11 = load ptr, ptr %6, align 8, !tbaa !573
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !168
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15, !prof !574

15:                                               ; preds = %9, %25
  %16 = phi ptr [ %18, %25 ], [ %13, %9 ]
  %17 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.24", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !575
  %19 = load ptr, ptr %16, align 8, !tbaa !577
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !578

21:                                               ; preds = %15
  %22 = load ptr, ptr %19, align 8, !tbaa !155
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(80) %19) #14, !prof !579
  br label %25

25:                                               ; preds = %21, %15
  %26 = load ptr, ptr %0, align 8, !tbaa !580
  %27 = load ptr, ptr %26, align 8, !tbaa !155
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull %16), !prof !581
  %30 = icmp eq ptr %18, null
  br i1 %30, label %31, label %15, !prof !582, !llvm.loop !583

31:                                               ; preds = %25, %9
  %32 = load ptr, ptr %6, align 8, !tbaa !573
  %33 = getelementptr inbounds ptr, ptr %32, i64 %10
  store ptr null, ptr %33, align 8, !tbaa !168
  %34 = add nuw nsw i64 %10, 1
  %35 = load i32, ptr %2, align 8, !tbaa !569
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %9, label %7, !prof !584, !llvm.loop !585
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr nocapture noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #3 align 2 !prof !586 {
  %3 = load i32, ptr %1, align 8, !tbaa !291
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %309, label %5, !prof !587

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %7 = load i8, ptr %6, align 8, !tbaa !253, !range !158, !noundef !254
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %294, label %9, !prof !588

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !293
  %12 = zext i32 %3 to i64
  %13 = getelementptr inbounds i16, ptr %11, i64 %12
  store i16 0, ptr %13, align 2, !tbaa !200
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %15 = tail call noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %14)
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %17 = load ptr, ptr %16, align 8, !tbaa !140
  %18 = load ptr, ptr %17, align 8, !tbaa !155
  %19 = getelementptr inbounds ptr, ptr %18, i64 5
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef i32 %20(ptr noundef nonnull align 8 dereferenceable(8) %17), !prof !589
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %44, !prof !590

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %25 = load ptr, ptr %24, align 8, !tbaa !160
  %26 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %25, i64 0, i32 14
  %27 = load ptr, ptr %26, align 8, !tbaa !161
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.7", ptr %27, i64 0, i32 1, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !165
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31, !prof !591

31:                                               ; preds = %23
  %32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %27)
  %33 = load ptr, ptr %32, align 8, !tbaa !168
  br label %34

34:                                               ; preds = %23, %31
  %35 = phi ptr [ %33, %31 ], [ null, %23 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %50, label %37, !prof !592

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %35, i64 0, i32 10
  %39 = load i32, ptr %38, align 8, !tbaa !593
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 0, i32 2, !prof !594
  %42 = icmp eq i32 %39, 4
  %43 = select i1 %42, i32 1, i32 %41, !prof !595
  br label %50

44:                                               ; preds = %9
  %45 = load ptr, ptr %15, align 8, !tbaa !596
  %46 = load ptr, ptr %45, align 8, !tbaa !155
  %47 = getelementptr inbounds ptr, ptr %46, i64 7
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef i32 %48(ptr noundef nonnull align 8 dereferenceable(33) %45)
  br label %50

50:                                               ; preds = %37, %34, %44
  %51 = phi i32 [ %49, %44 ], [ 2, %34 ], [ %43, %37 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56, !prof !591

53:                                               ; preds = %50
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %55 = load ptr, ptr %54, align 8, !tbaa !160
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %55, i32 noundef 22)
  br label %306

56:                                               ; preds = %50
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !448
  %59 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj(ptr noundef nonnull align 8 dereferenceable(163992) %58, ptr noundef %11, i32 noundef %3)
  br i1 %59, label %60, label %179, !prof !598

60:                                               ; preds = %56
  switch i32 %51, label %306 [
    i32 1, label %61
    i32 2, label %69
  ], !prof !599

61:                                               ; preds = %60
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %63 = load ptr, ptr %62, align 8, !tbaa !518
  %64 = icmp eq ptr %63, null
  br i1 %64, label %306, label %65, !prof !600

65:                                               ; preds = %61
  %66 = load ptr, ptr %63, align 8, !tbaa !155
  %67 = getelementptr inbounds ptr, ptr %66, i64 8
  %68 = load ptr, ptr %67, align 8
  tail call void %68(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef %11, i32 noundef %3, i1 noundef zeroext false), !prof !601
  br label %306

69:                                               ; preds = %60
  %70 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !186
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %81, label %73, !prof !602

73:                                               ; preds = %69
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %75 = load ptr, ptr %74, align 8, !tbaa !518
  %76 = icmp eq ptr %75, null
  br i1 %76, label %306, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %75, align 8, !tbaa !155
  %79 = getelementptr inbounds ptr, ptr %78, i64 2
  %80 = load ptr, ptr %79, align 8
  tail call void %80(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef %11, i32 noundef %3, i1 noundef zeroext false)
  br label %306

81:                                               ; preds = %69
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %83 = load ptr, ptr %82, align 8, !tbaa !160
  %84 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %83, i64 0, i32 7
  %85 = load ptr, ptr %84, align 8, !tbaa !170
  %86 = icmp eq ptr %85, null
  br i1 %86, label %98, label %87, !prof !602

87:                                               ; preds = %81
  %88 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %85, i64 0, i32 5
  %89 = load i16, ptr %88, align 4, !tbaa !300
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  tail call void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %83, ptr noundef nonnull %85, ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(40) %92)
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !293
  %95 = load i32, ptr %92, align 8, !tbaa !291
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i16, ptr %94, i64 %96
  store i16 0, ptr %97, align 2, !tbaa !200
  br label %98

98:                                               ; preds = %81, %87, %91
  %99 = phi ptr [ %94, %91 ], [ %11, %87 ], [ %11, %81 ]
  %100 = phi i32 [ %95, %91 ], [ %3, %87 ], [ %3, %81 ]
  %101 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %83, i64 0, i32 9
  %102 = icmp eq ptr %99, null
  br i1 %102, label %129, label %103, !prof !310

103:                                              ; preds = %98
  %104 = load i16, ptr %99, align 2, !tbaa !200
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %129, label %106, !prof !311

106:                                              ; preds = %103, %106
  %107 = phi i32 [ %112, %106 ], [ 0, %103 ]
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i16, ptr %99, i64 %108
  %110 = load i16, ptr %109, align 2, !tbaa !200
  %111 = icmp eq i16 %110, 0
  %112 = add i32 %107, 1
  br i1 %111, label %113, label %106, !prof !312, !llvm.loop !313

113:                                              ; preds = %106
  %114 = load i32, ptr %101, align 8, !tbaa !291
  %115 = add i32 %114, %107
  %116 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %83, i64 0, i32 9, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !292
  %118 = icmp ult i32 %115, %117
  br i1 %118, label %120, label %119, !prof !314

119:                                              ; preds = %113
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %101, i32 noundef %107)
  br label %120

120:                                              ; preds = %119, %113
  %121 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %83, i64 0, i32 9, i32 6
  %122 = load ptr, ptr %121, align 8, !tbaa !293
  %123 = load i32, ptr %101, align 8, !tbaa !291
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i16, ptr %122, i64 %124
  %126 = shl nuw nsw i64 %108, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %125, ptr nonnull align 2 %99, i64 %126, i1 false), !prof !603
  %127 = load i32, ptr %101, align 8, !tbaa !291
  %128 = add i32 %127, %107
  store i32 %128, ptr %101, align 8, !tbaa !291
  br label %129

129:                                              ; preds = %98, %103, %120
  %130 = load i8, ptr %6, align 8, !tbaa !253, !range !158, !noundef !254
  %131 = icmp ne i8 %130, 0
  %132 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  %133 = load i8, ptr %132, align 4, !range !158
  %134 = icmp ne i8 %133, 0
  %135 = select i1 %131, i1 %134, i1 false, !prof !602
  %136 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  %137 = load ptr, ptr %136, align 8
  %138 = icmp ne ptr %137, null
  %139 = select i1 %135, i1 %138, i1 false, !prof !602
  br i1 %139, label %140, label %166, !prof !602

140:                                              ; preds = %129
  %141 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %137, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !604
  %143 = load i32, ptr %142, align 8, !tbaa !606
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %166, label %145, !prof !608

145:                                              ; preds = %140
  %146 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5
  %147 = icmp eq i32 %100, 0
  br i1 %147, label %165, label %148, !prof !609

148:                                              ; preds = %145
  %149 = load i32, ptr %146, align 8, !tbaa !291
  %150 = add i32 %149, %100
  %151 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5, i32 1
  %152 = load i32, ptr %151, align 4, !tbaa !292
  %153 = icmp ult i32 %150, %152
  br i1 %153, label %155, label %154, !prof !610

154:                                              ; preds = %148
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %146, i32 noundef %100)
  br label %155

155:                                              ; preds = %154, %148
  %156 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5, i32 6
  %157 = load ptr, ptr %156, align 8, !tbaa !293
  %158 = load i32, ptr %146, align 8, !tbaa !291
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i16, ptr %157, i64 %159
  %161 = zext i32 %100 to i64
  %162 = shl nuw nsw i64 %161, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %160, ptr align 2 %99, i64 %162, i1 false), !prof !611
  %163 = load i32, ptr %146, align 8, !tbaa !291
  %164 = add i32 %163, %100
  store i32 %164, ptr %146, align 8, !tbaa !291
  br label %166

165:                                              ; preds = %145
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %146, ptr noundef %99)
  br label %166

166:                                              ; preds = %165, %155, %129, %140
  %167 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %168 = load ptr, ptr %167, align 8, !tbaa !518
  %169 = icmp eq ptr %168, null
  br i1 %169, label %306, label %170, !prof !608

170:                                              ; preds = %166
  %171 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  %172 = load i8, ptr %171, align 8, !tbaa !304, !range !158, !noundef !254
  %173 = icmp eq i8 %172, 0
  %174 = load ptr, ptr %168, align 8, !tbaa !155
  %175 = getelementptr inbounds ptr, ptr %174, i64 2
  %176 = load ptr, ptr %175, align 8
  br i1 %173, label %178, label %177, !prof !608

177:                                              ; preds = %170
  tail call void %176(ptr noundef nonnull align 8 dereferenceable(8) %168, ptr noundef %99, i32 noundef %100, i1 noundef zeroext false), !prof !612
  br label %306

178:                                              ; preds = %170
  tail call void %176(ptr noundef nonnull align 8 dereferenceable(8) %168, ptr noundef %11, i32 noundef %3, i1 noundef zeroext false)
  br label %306

179:                                              ; preds = %56
  %180 = icmp eq i32 %51, 2
  br i1 %180, label %181, label %291, !prof !613

181:                                              ; preds = %179
  %182 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %183 = load i32, ptr %182, align 4, !tbaa !186
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %193, label %185, !prof !613

185:                                              ; preds = %181
  %186 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %187 = load ptr, ptr %186, align 8, !tbaa !518
  %188 = icmp eq ptr %187, null
  br i1 %188, label %306, label %189

189:                                              ; preds = %185
  %190 = load ptr, ptr %187, align 8, !tbaa !155
  %191 = getelementptr inbounds ptr, ptr %190, i64 2
  %192 = load ptr, ptr %191, align 8
  tail call void %192(ptr noundef nonnull align 8 dereferenceable(8) %187, ptr noundef %11, i32 noundef %3, i1 noundef zeroext false)
  br label %306

193:                                              ; preds = %181
  %194 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %195 = load ptr, ptr %194, align 8, !tbaa !160
  %196 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %195, i64 0, i32 7
  %197 = load ptr, ptr %196, align 8, !tbaa !170
  %198 = icmp eq ptr %197, null
  br i1 %198, label %210, label %199, !prof !614

199:                                              ; preds = %193
  %200 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %197, i64 0, i32 5
  %201 = load i16, ptr %200, align 4, !tbaa !300
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %210, label %203, !prof !615

203:                                              ; preds = %199
  %204 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  tail call void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %195, ptr noundef nonnull %197, ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(40) %204)
  %205 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 6
  %206 = load ptr, ptr %205, align 8, !tbaa !293
  %207 = load i32, ptr %204, align 8, !tbaa !291
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i16, ptr %206, i64 %208
  store i16 0, ptr %209, align 2, !tbaa !200
  br label %210

210:                                              ; preds = %193, %199, %203
  %211 = phi i32 [ %207, %203 ], [ %3, %199 ], [ %3, %193 ]
  %212 = phi ptr [ %206, %203 ], [ %11, %199 ], [ %11, %193 ]
  %213 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %195, i64 0, i32 9
  %214 = icmp eq ptr %212, null
  br i1 %214, label %241, label %215, !prof !310

215:                                              ; preds = %210
  %216 = load i16, ptr %212, align 2, !tbaa !200
  %217 = icmp eq i16 %216, 0
  br i1 %217, label %241, label %218, !prof !311

218:                                              ; preds = %215, %218
  %219 = phi i32 [ %224, %218 ], [ 0, %215 ]
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i16, ptr %212, i64 %220
  %222 = load i16, ptr %221, align 2, !tbaa !200
  %223 = icmp eq i16 %222, 0
  %224 = add i32 %219, 1
  br i1 %223, label %225, label %218, !prof !312, !llvm.loop !313

225:                                              ; preds = %218
  %226 = load i32, ptr %213, align 8, !tbaa !291
  %227 = add i32 %226, %219
  %228 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %195, i64 0, i32 9, i32 1
  %229 = load i32, ptr %228, align 4, !tbaa !292
  %230 = icmp ult i32 %227, %229
  br i1 %230, label %232, label %231, !prof !314

231:                                              ; preds = %225
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %213, i32 noundef %219)
  br label %232

232:                                              ; preds = %231, %225
  %233 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %195, i64 0, i32 9, i32 6
  %234 = load ptr, ptr %233, align 8, !tbaa !293
  %235 = load i32, ptr %213, align 8, !tbaa !291
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds i16, ptr %234, i64 %236
  %238 = shl nuw nsw i64 %220, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %237, ptr nonnull align 2 %212, i64 %238, i1 false), !prof !616
  %239 = load i32, ptr %213, align 8, !tbaa !291
  %240 = add i32 %239, %219
  store i32 %240, ptr %213, align 8, !tbaa !291
  br label %241

241:                                              ; preds = %210, %215, %232
  %242 = load i8, ptr %6, align 8, !tbaa !253, !range !158, !noundef !254
  %243 = icmp ne i8 %242, 0
  %244 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  %245 = load i8, ptr %244, align 4, !range !158
  %246 = icmp ne i8 %245, 0
  %247 = select i1 %243, i1 %246, i1 false, !prof !613
  %248 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  %249 = load ptr, ptr %248, align 8
  %250 = icmp ne ptr %249, null
  %251 = select i1 %247, i1 %250, i1 false, !prof !613
  br i1 %251, label %252, label %278, !prof !613

252:                                              ; preds = %241
  %253 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %249, i64 0, i32 3
  %254 = load ptr, ptr %253, align 8, !tbaa !604
  %255 = load i32, ptr %254, align 8, !tbaa !606
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %278, label %257, !prof !617

257:                                              ; preds = %252
  %258 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5
  %259 = icmp eq i32 %211, 0
  br i1 %259, label %277, label %260, !prof !609

260:                                              ; preds = %257
  %261 = load i32, ptr %258, align 8, !tbaa !291
  %262 = add i32 %261, %211
  %263 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5, i32 1
  %264 = load i32, ptr %263, align 4, !tbaa !292
  %265 = icmp ult i32 %262, %264
  br i1 %265, label %267, label %266, !prof !610

266:                                              ; preds = %260
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %258, i32 noundef %211)
  br label %267

267:                                              ; preds = %266, %260
  %268 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5, i32 6
  %269 = load ptr, ptr %268, align 8, !tbaa !293
  %270 = load i32, ptr %258, align 8, !tbaa !291
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds i16, ptr %269, i64 %271
  %273 = zext i32 %211 to i64
  %274 = shl nuw nsw i64 %273, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %272, ptr align 2 %212, i64 %274, i1 false), !prof !618
  %275 = load i32, ptr %258, align 8, !tbaa !291
  %276 = add i32 %275, %211
  store i32 %276, ptr %258, align 8, !tbaa !291
  br label %278

277:                                              ; preds = %257
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %258, ptr noundef %212)
  br label %278

278:                                              ; preds = %277, %267, %241, %252
  %279 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %280 = load ptr, ptr %279, align 8, !tbaa !518
  %281 = icmp eq ptr %280, null
  br i1 %281, label %306, label %282, !prof !617

282:                                              ; preds = %278
  %283 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  %284 = load i8, ptr %283, align 8, !tbaa !304, !range !158, !noundef !254
  %285 = icmp eq i8 %284, 0
  %286 = load ptr, ptr %280, align 8, !tbaa !155
  %287 = getelementptr inbounds ptr, ptr %286, i64 2
  %288 = load ptr, ptr %287, align 8
  br i1 %285, label %290, label %289, !prof !617

289:                                              ; preds = %282
  tail call void %288(ptr noundef nonnull align 8 dereferenceable(8) %280, ptr noundef %212, i32 noundef %211, i1 noundef zeroext false), !prof !619
  br label %306

290:                                              ; preds = %282
  tail call void %288(ptr noundef nonnull align 8 dereferenceable(8) %280, ptr noundef %11, i32 noundef %3, i1 noundef zeroext false)
  br label %306

291:                                              ; preds = %179
  %292 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %293 = load ptr, ptr %292, align 8, !tbaa !160
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %293, i32 noundef 22)
  br label %306

294:                                              ; preds = %5
  %295 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %296 = load ptr, ptr %295, align 8, !tbaa !518
  %297 = icmp eq ptr %296, null
  br i1 %297, label %306, label %298, !prof !620

298:                                              ; preds = %294
  %299 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %300 = load ptr, ptr %299, align 8, !tbaa !293
  %301 = zext i32 %3 to i64
  %302 = getelementptr inbounds i16, ptr %300, i64 %301
  store i16 0, ptr %302, align 2, !tbaa !200
  %303 = load ptr, ptr %296, align 8, !tbaa !155
  %304 = getelementptr inbounds ptr, ptr %303, i64 2
  %305 = load ptr, ptr %304, align 8
  tail call void %305(ptr noundef nonnull align 8 dereferenceable(8) %296, ptr noundef %300, i32 noundef %3, i1 noundef zeroext false), !prof !621
  br label %306

306:                                              ; preds = %291, %53, %185, %189, %65, %61, %77, %73, %60, %177, %178, %166, %289, %290, %278, %294, %298
  store i32 0, ptr %1, align 8, !tbaa !291
  %307 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %308 = load ptr, ptr %307, align 8, !tbaa !293
  store i16 0, ptr %308, align 2, !tbaa !200
  br label %309

309:                                              ; preds = %2, %306
  ret void
}

declare noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #6

declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !622 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %22, label %5, !prof !609

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !291
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !292
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %12, label %11, !prof !610

11:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2)
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !293
  %15 = load i32, ptr %0, align 8, !tbaa !291
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i16, ptr %14, i64 %16
  %18 = zext i32 %2 to i64
  %19 = shl nuw nsw i64 %18, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %17, ptr align 2 %1, i64 %19, i1 false), !prof !623
  %20 = load i32, ptr %0, align 8, !tbaa !291
  %21 = add i32 %20, %2
  store i32 %21, ptr %0, align 8, !tbaa !291
  br label %23

22:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1)
  br label %23

23:                                               ; preds = %22, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #7 align 2 !prof !134 {
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %1, i16 noundef zeroext 58)
  tail call void @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef %2, i32 noundef %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !624 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %6 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  %7 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %8 unwind label %38, !prof !625

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !293
  %11 = load i32, ptr %6, align 8, !tbaa !291
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i16, ptr %10, i64 %12
  store i16 0, ptr %13, align 2, !tbaa !200
  %14 = icmp eq i32 %3, -1
  br i1 %14, label %93, label %15, !prof !224

15:                                               ; preds = %8
  %16 = sext i32 %3 to i64
  %17 = getelementptr i16, ptr %1, i64 %16
  %18 = getelementptr i16, ptr %17, i64 1
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20, !prof !331

20:                                               ; preds = %15
  %21 = load i16, ptr %18, align 2, !tbaa !200
  %22 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !200
  %23 = icmp eq i16 %21, %22
  br i1 %23, label %27, label %42, !prof !626

24:                                               ; preds = %15
  %25 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !200
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %81, label %42

27:                                               ; preds = %20, %32
  %28 = phi i16 [ %35, %32 ], [ %21, %20 ]
  %29 = phi ptr [ %34, %32 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %20 ]
  %30 = phi ptr [ %33, %32 ], [ %18, %20 ]
  %31 = icmp eq i16 %28, 0
  br i1 %31, label %81, label %32, !prof !464

32:                                               ; preds = %27
  %33 = getelementptr inbounds i16, ptr %30, i64 1
  %34 = getelementptr inbounds i16, ptr %29, i64 1
  %35 = load i16, ptr %33, align 2, !tbaa !200
  %36 = load i16, ptr %34, align 2, !tbaa !200
  %37 = icmp eq i16 %35, %36
  br i1 %37, label %27, label %42, !prof !464, !llvm.loop !217

38:                                               ; preds = %4
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %169

40:                                               ; preds = %81, %92, %153, %162, %155
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %169

42:                                               ; preds = %32, %20, %24
  br i1 %19, label %47, label %43, !prof !331

43:                                               ; preds = %42
  %44 = load i16, ptr %18, align 2, !tbaa !200
  %45 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !200
  %46 = icmp eq i16 %44, %45
  br i1 %46, label %50, label %83, !prof !626

47:                                               ; preds = %42
  %48 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !200
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %61, label %83

50:                                               ; preds = %43, %55
  %51 = phi i16 [ %58, %55 ], [ %44, %43 ]
  %52 = phi ptr [ %57, %55 ], [ @_ZN11xercesc_2_76XMLUni11fgXMLStringE, %43 ]
  %53 = phi ptr [ %56, %55 ], [ %18, %43 ]
  %54 = icmp eq i16 %51, 0
  br i1 %54, label %61, label %55, !prof !464

55:                                               ; preds = %50
  %56 = getelementptr inbounds i16, ptr %53, i64 1
  %57 = getelementptr inbounds i16, ptr %52, i64 1
  %58 = load i16, ptr %56, align 2, !tbaa !200
  %59 = load i16, ptr %57, align 2, !tbaa !200
  %60 = icmp eq i16 %58, %59
  br i1 %60, label %50, label %83, !prof !464, !llvm.loop !217

61:                                               ; preds = %50, %47
  %62 = icmp eq ptr %10, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %61
  %64 = load i16, ptr %10, align 2, !tbaa !200
  %65 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, align 2, !tbaa !200
  %66 = icmp eq i16 %64, %65
  br i1 %66, label %70, label %81

67:                                               ; preds = %61
  %68 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, align 2, !tbaa !200
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %83, label %81

70:                                               ; preds = %63, %75
  %71 = phi i16 [ %78, %75 ], [ %64, %63 ]
  %72 = phi ptr [ %77, %75 ], [ @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, %63 ]
  %73 = phi ptr [ %76, %75 ], [ %10, %63 ]
  %74 = icmp eq i16 %71, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds i16, ptr %73, i64 1
  %77 = getelementptr inbounds i16, ptr %72, i64 1
  %78 = load i16, ptr %76, align 2, !tbaa !200
  %79 = load i16, ptr %77, align 2, !tbaa !200
  %80 = icmp eq i16 %78, %79
  br i1 %80, label %70, label %81, !llvm.loop !217

81:                                               ; preds = %27, %75, %24, %67, %63
  %82 = phi i32 [ 303, %63 ], [ 303, %67 ], [ 301, %24 ], [ 303, %75 ], [ 301, %27 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %82)
          to label %83 unwind label %40

83:                                               ; preds = %55, %70, %81, %43, %67, %47
  %84 = icmp eq ptr %10, null
  br i1 %84, label %92, label %85, !prof !331

85:                                               ; preds = %83
  %86 = load i16, ptr %10, align 2, !tbaa !200
  %87 = icmp eq i16 %86, 0
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 61
  %89 = load i32, ptr %88, align 8
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %87, i1 %90, i1 false, !prof !331
  br i1 %91, label %92, label %93, !prof !331

92:                                               ; preds = %85, %83
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 300, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %93 unwind label %40

93:                                               ; preds = %92, %85, %8
  %94 = phi ptr [ %18, %85 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %8 ], [ %18, %92 ]
  %95 = icmp eq ptr %10, null
  br i1 %95, label %100, label %96, !prof !627

96:                                               ; preds = %93
  %97 = load i16, ptr %10, align 2, !tbaa !200
  %98 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, align 2, !tbaa !200
  %99 = icmp eq i16 %97, %98
  br i1 %99, label %103, label %114, !prof !332

100:                                              ; preds = %93
  %101 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, align 2, !tbaa !200
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %153, label %114

103:                                              ; preds = %96, %108
  %104 = phi i16 [ %111, %108 ], [ %97, %96 ]
  %105 = phi ptr [ %110, %108 ], [ @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, %96 ]
  %106 = phi ptr [ %109, %108 ], [ %10, %96 ]
  %107 = icmp eq i16 %104, 0
  br i1 %107, label %153, label %108, !prof !628

108:                                              ; preds = %103
  %109 = getelementptr inbounds i16, ptr %106, i64 1
  %110 = getelementptr inbounds i16, ptr %105, i64 1
  %111 = load i16, ptr %109, align 2, !tbaa !200
  %112 = load i16, ptr %110, align 2, !tbaa !200
  %113 = icmp eq i16 %111, %112
  br i1 %113, label %103, label %114, !prof !629, !llvm.loop !217

114:                                              ; preds = %108, %96, %100
  br i1 %95, label %119, label %115, !prof !627

115:                                              ; preds = %114
  %116 = load i16, ptr %10, align 2, !tbaa !200
  %117 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, align 2, !tbaa !200
  %118 = icmp eq i16 %116, %117
  br i1 %118, label %122, label %155, !prof !332

119:                                              ; preds = %114
  %120 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, align 2, !tbaa !200
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %133, label %155

122:                                              ; preds = %115, %127
  %123 = phi i16 [ %130, %127 ], [ %116, %115 ]
  %124 = phi ptr [ %129, %127 ], [ @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, %115 ]
  %125 = phi ptr [ %128, %127 ], [ %10, %115 ]
  %126 = icmp eq i16 %123, 0
  br i1 %126, label %133, label %127, !prof !630

127:                                              ; preds = %122
  %128 = getelementptr inbounds i16, ptr %125, i64 1
  %129 = getelementptr inbounds i16, ptr %124, i64 1
  %130 = load i16, ptr %128, align 2, !tbaa !200
  %131 = load i16, ptr %129, align 2, !tbaa !200
  %132 = icmp eq i16 %130, %131
  br i1 %132, label %122, label %155, !prof !631, !llvm.loop !217

133:                                              ; preds = %122, %119
  %134 = icmp eq ptr %94, null
  br i1 %134, label %139, label %135

135:                                              ; preds = %133
  %136 = load i16, ptr %94, align 2, !tbaa !200
  %137 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !200
  %138 = icmp eq i16 %136, %137
  br i1 %138, label %142, label %153

139:                                              ; preds = %133
  %140 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !200
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %155, label %153

142:                                              ; preds = %135, %147
  %143 = phi i16 [ %150, %147 ], [ %136, %135 ]
  %144 = phi ptr [ %149, %147 ], [ @_ZN11xercesc_2_76XMLUni11fgXMLStringE, %135 ]
  %145 = phi ptr [ %148, %147 ], [ %94, %135 ]
  %146 = icmp eq i16 %143, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds i16, ptr %145, i64 1
  %149 = getelementptr inbounds i16, ptr %144, i64 1
  %150 = load i16, ptr %148, align 2, !tbaa !200
  %151 = load i16, ptr %149, align 2, !tbaa !200
  %152 = icmp eq i16 %150, %151
  br i1 %152, label %142, label %153, !llvm.loop !217

153:                                              ; preds = %103, %147, %139, %135, %100
  %154 = phi i32 [ 302, %100 ], [ 304, %135 ], [ 304, %139 ], [ 304, %147 ], [ 302, %103 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %154)
          to label %155 unwind label %40

155:                                              ; preds = %127, %142, %153, %115, %139, %119
  %156 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %157 = load ptr, ptr %156, align 8, !tbaa !252
  %158 = load ptr, ptr %157, align 8, !tbaa !155
  %159 = getelementptr inbounds ptr, ptr %158, i64 5
  %160 = load ptr, ptr %159, align 8
  %161 = invoke noundef i32 %160(ptr noundef nonnull align 8 dereferenceable(40) %157, ptr noundef %10)
          to label %162 unwind label %40, !prof !632

162:                                              ; preds = %155
  %163 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  invoke void @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104) %163, ptr noundef %94, i32 noundef %161)
          to label %164 unwind label %40, !prof !625

164:                                              ; preds = %162
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %168 unwind label %165, !prof !625

165:                                              ; preds = %164
  %166 = landingpad { ptr, i32 }
          catch ptr null
  %167 = extractvalue { ptr, i32 } %166, 0
  tail call void @__clang_call_terminate(ptr %167) #15
  unreachable

168:                                              ; preds = %164
  ret void

169:                                              ; preds = %40, %38
  %170 = phi { ptr, i32 } [ %41, %40 ], [ %39, %38 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %174 unwind label %171

171:                                              ; preds = %169
  %172 = landingpad { ptr, i32 }
          catch ptr null
  %173 = extractvalue { ptr, i32 } %172, 0
  tail call void @__clang_call_terminate(ptr %173) #15
  unreachable

174:                                              ; preds = %169
  resume { ptr, i32 } %170
}

declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #6

declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #6

declare void @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi(ptr noundef nonnull align 8 dereferenceable(1024) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !633 {
  %3 = alloca i32, align 4
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %84, !prof !634

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 6
  %7 = zext nneg i32 %1 to i64
  br label %8

8:                                                ; preds = %5, %81
  %9 = phi i64 [ 0, %5 ], [ %82, %81 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !635
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !190
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %9, %13
  br i1 %14, label %24, label %15, !prof !636

15:                                               ; preds = %8
  %16 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %17 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %10, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !193
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull @.str.4, i32 noundef 249, i32 noundef 116, ptr noundef %18)
          to label %19 unwind label %22

19:                                               ; preds = %15
  tail call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

20:                                               ; preds = %332, %22
  %21 = phi { ptr, i32 } [ %23, %22 ], [ %333, %332 ]
  resume { ptr, i32 } %21

22:                                               ; preds = %15
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %16) #14
  br label %20

24:                                               ; preds = %8
  %25 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %10, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !194
  %27 = getelementptr inbounds ptr, ptr %26, i64 %9
  %28 = load ptr, ptr %27, align 8, !tbaa !168
  %29 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !195
  %31 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef %30, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE, i32 noundef 6)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %53, label %33, !prof !212

33:                                               ; preds = %24
  %34 = icmp eq ptr %30, null
  br i1 %34, label %39, label %35, !prof !213

35:                                               ; preds = %33
  %36 = load i16, ptr %30, align 2, !tbaa !200
  %37 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !200
  %38 = icmp eq i16 %36, %37
  br i1 %38, label %42, label %81, !prof !637

39:                                               ; preds = %33
  %40 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !200
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %53, label %81

42:                                               ; preds = %35, %47
  %43 = phi i16 [ %50, %47 ], [ %36, %35 ]
  %44 = phi ptr [ %49, %47 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %35 ]
  %45 = phi ptr [ %48, %47 ], [ %30, %35 ]
  %46 = icmp eq i16 %43, 0
  br i1 %46, label %53, label %47, !prof !638

47:                                               ; preds = %42
  %48 = getelementptr inbounds i16, ptr %45, i64 1
  %49 = getelementptr inbounds i16, ptr %44, i64 1
  %50 = load i16, ptr %48, align 2, !tbaa !200
  %51 = load i16, ptr %49, align 2, !tbaa !200
  %52 = icmp eq i16 %50, %51
  br i1 %52, label %42, label %81, !prof !639, !llvm.loop !217

53:                                               ; preds = %42, %39, %24
  %54 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 8
  %55 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %28, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !294
  %57 = load ptr, ptr %54, align 8, !tbaa !197
  %58 = getelementptr inbounds i32, ptr %57, i64 %9
  %59 = load i32, ptr %58, align 4, !tbaa !136
  tail call void @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %30, ptr noundef %56, i32 noundef %59)
  %60 = icmp eq ptr %56, null
  br i1 %60, label %65, label %61, !prof !627

61:                                               ; preds = %53
  %62 = load i16, ptr %56, align 2, !tbaa !200
  %63 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, align 2, !tbaa !200
  %64 = icmp eq i16 %62, %63
  br i1 %64, label %68, label %81, !prof !640

65:                                               ; preds = %53
  %66 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, align 2, !tbaa !200
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %79, label %81

68:                                               ; preds = %61, %73
  %69 = phi i16 [ %76, %73 ], [ %62, %61 ]
  %70 = phi ptr [ %75, %73 ], [ @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, %61 ]
  %71 = phi ptr [ %74, %73 ], [ %56, %61 ]
  %72 = icmp eq i16 %69, 0
  br i1 %72, label %79, label %73, !prof !641

73:                                               ; preds = %68
  %74 = getelementptr inbounds i16, ptr %71, i64 1
  %75 = getelementptr inbounds i16, ptr %70, i64 1
  %76 = load i16, ptr %74, align 2, !tbaa !200
  %77 = load i16, ptr %75, align 2, !tbaa !200
  %78 = icmp eq i16 %76, %77
  br i1 %78, label %68, label %81, !prof !642, !llvm.loop !217

79:                                               ; preds = %68, %65
  %80 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 1
  store i8 1, ptr %80, align 8, !tbaa !536
  br label %81

81:                                               ; preds = %47, %73, %35, %61, %65, %79, %39
  %82 = add nuw nsw i64 %9, 1
  %83 = icmp eq i64 %82, %7
  br i1 %83, label %84, label %8, !prof !643, !llvm.loop !644

84:                                               ; preds = %81, %2
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  %86 = load i8, ptr %85, align 2, !tbaa !645, !range !158, !noundef !254
  %87 = icmp eq i8 %86, 0
  %88 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 1
  %89 = load i8, ptr %88, align 8, !range !158
  %90 = icmp eq i8 %89, 0
  %91 = select i1 %87, i1 true, i1 %90, !prof !187
  br i1 %91, label %337, label %92, !prof !187

92:                                               ; preds = %84
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %94 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %93)
  %95 = icmp sgt i32 %1, 0
  br i1 %95, label %96, label %270, !prof !646

96:                                               ; preds = %92
  %97 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 6
  %98 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 8
  %99 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 32
  %100 = zext nneg i32 %1 to i64
  br label %101

101:                                              ; preds = %96, %267
  %102 = phi i64 [ 0, %96 ], [ %268, %267 ]
  %103 = load ptr, ptr %97, align 8, !tbaa !635
  %104 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %103, i64 0, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !190
  %106 = zext i32 %105 to i64
  %107 = icmp ult i64 %102, %106
  br i1 %107, label %116, label %108, !prof !636

108:                                              ; preds = %101
  %109 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %110 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %103, i64 0, i32 5
  %111 = load ptr, ptr %110, align 8, !tbaa !193
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %109, ptr noundef nonnull @.str.4, i32 noundef 249, i32 noundef 116, ptr noundef %111)
          to label %112 unwind label %114

112:                                              ; preds = %108
  invoke void @__cxa_throw(ptr nonnull %109, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %113 unwind label %137

113:                                              ; preds = %112
  unreachable

114:                                              ; preds = %108
  %115 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %109) #14
  br label %332

116:                                              ; preds = %101
  %117 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %103, i64 0, i32 4
  %118 = load ptr, ptr %117, align 8, !tbaa !194
  %119 = getelementptr inbounds ptr, ptr %118, i64 %102
  %120 = load ptr, ptr %119, align 8, !tbaa !168
  %121 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %120, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !195
  %123 = load ptr, ptr %98, align 8, !tbaa !197
  %124 = getelementptr inbounds i32, ptr %123, i64 %102
  %125 = load i32, ptr %124, align 4, !tbaa !136
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %141, label %127, !prof !647

127:                                              ; preds = %116
  %128 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69
  store i32 0, ptr %128, align 8, !tbaa !291
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %128, ptr noundef %122, i32 noundef %125)
          to label %129 unwind label %139, !prof !330

129:                                              ; preds = %127
  %130 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69, i32 6
  %131 = load ptr, ptr %130, align 8, !tbaa !293
  %132 = load i32, ptr %128, align 8, !tbaa !291
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i16, ptr %131, i64 %133
  store i16 0, ptr %134, align 2, !tbaa !200
  br label %141

135:                                              ; preds = %274
  %136 = landingpad { ptr, i32 }
          cleanup
  br label %332

137:                                              ; preds = %112
  %138 = landingpad { ptr, i32 }
          cleanup
  br label %332

139:                                              ; preds = %127, %141
  %140 = landingpad { ptr, i32 }
          cleanup
  br label %332

141:                                              ; preds = %129, %116
  %142 = phi ptr [ %131, %129 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %116 ]
  %143 = invoke noundef i32 @_ZN11xercesc_2_712IGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %142, i32 noundef 0)
          to label %144 unwind label %139, !prof !648

144:                                              ; preds = %141
  %145 = load i32, ptr %99, align 4, !tbaa !531
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %267, !prof !649

147:                                              ; preds = %144
  %148 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %120, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !294
  %150 = sext i32 %125 to i64
  %151 = getelementptr i16, ptr %122, i64 %150
  %152 = getelementptr i16, ptr %151, i64 1
  %153 = icmp eq ptr %152, null
  br i1 %153, label %158, label %154, !prof !464

154:                                              ; preds = %147
  %155 = load i16, ptr %152, align 2, !tbaa !200
  %156 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols21fgXSI_SCHEMALOCACTIONE, align 2, !tbaa !200
  %157 = icmp eq i16 %155, %156
  br i1 %157, label %161, label %175, !prof !650

158:                                              ; preds = %147
  %159 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols21fgXSI_SCHEMALOCACTIONE, align 2, !tbaa !200
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %172, label %175

161:                                              ; preds = %154, %166
  %162 = phi i16 [ %169, %166 ], [ %155, %154 ]
  %163 = phi ptr [ %168, %166 ], [ @_ZN11xercesc_2_713SchemaSymbols21fgXSI_SCHEMALOCACTIONE, %154 ]
  %164 = phi ptr [ %167, %166 ], [ %152, %154 ]
  %165 = icmp eq i16 %162, 0
  br i1 %165, label %172, label %166, !prof !651

166:                                              ; preds = %161
  %167 = getelementptr inbounds i16, ptr %164, i64 1
  %168 = getelementptr inbounds i16, ptr %163, i64 1
  %169 = load i16, ptr %167, align 2, !tbaa !200
  %170 = load i16, ptr %168, align 2, !tbaa !200
  %171 = icmp eq i16 %169, %170
  br i1 %171, label %161, label %175, !prof !652, !llvm.loop !217

172:                                              ; preds = %161, %158
  invoke void @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %149)
          to label %195 unwind label %173, !prof !650

173:                                              ; preds = %214, %238, %194, %172
  %174 = landingpad { ptr, i32 }
          cleanup
  br label %332

175:                                              ; preds = %166, %154, %158
  br i1 %153, label %180, label %176

176:                                              ; preds = %175
  %177 = load i16, ptr %152, align 2, !tbaa !200
  %178 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols32fgXSI_NONAMESPACESCHEMALOCACTIONE, align 2, !tbaa !200
  %179 = icmp eq i16 %177, %178
  br i1 %179, label %183, label %195

180:                                              ; preds = %175
  %181 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols32fgXSI_NONAMESPACESCHEMALOCACTIONE, align 2, !tbaa !200
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %194, label %195

183:                                              ; preds = %176, %188
  %184 = phi i16 [ %191, %188 ], [ %177, %176 ]
  %185 = phi ptr [ %190, %188 ], [ @_ZN11xercesc_2_713SchemaSymbols32fgXSI_NONAMESPACESCHEMALOCACTIONE, %176 ]
  %186 = phi ptr [ %189, %188 ], [ %152, %176 ]
  %187 = icmp eq i16 %184, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %183
  %189 = getelementptr inbounds i16, ptr %186, i64 1
  %190 = getelementptr inbounds i16, ptr %185, i64 1
  %191 = load i16, ptr %189, align 2, !tbaa !200
  %192 = load i16, ptr %190, align 2, !tbaa !200
  %193 = icmp eq i16 %191, %192
  br i1 %193, label %183, label %195, !llvm.loop !217

194:                                              ; preds = %183, %180
  invoke void @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %149, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
          to label %195 unwind label %173

195:                                              ; preds = %188, %176, %194, %180, %172
  br i1 %153, label %200, label %196, !prof !464

196:                                              ; preds = %195
  %197 = load i16, ptr %152, align 2, !tbaa !200
  %198 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols10fgXSI_TYPEE, align 2, !tbaa !200
  %199 = icmp eq i16 %197, %198
  br i1 %199, label %203, label %215, !prof !464

200:                                              ; preds = %195
  %201 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols10fgXSI_TYPEE, align 2, !tbaa !200
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %214, label %215

203:                                              ; preds = %196, %208
  %204 = phi i16 [ %211, %208 ], [ %197, %196 ]
  %205 = phi ptr [ %210, %208 ], [ @_ZN11xercesc_2_713SchemaSymbols10fgXSI_TYPEE, %196 ]
  %206 = phi ptr [ %209, %208 ], [ %152, %196 ]
  %207 = icmp eq i16 %204, 0
  br i1 %207, label %214, label %208

208:                                              ; preds = %203
  %209 = getelementptr inbounds i16, ptr %206, i64 1
  %210 = getelementptr inbounds i16, ptr %205, i64 1
  %211 = load i16, ptr %209, align 2, !tbaa !200
  %212 = load i16, ptr %210, align 2, !tbaa !200
  %213 = icmp eq i16 %211, %212
  br i1 %213, label %203, label %215, !prof !464, !llvm.loop !217

214:                                              ; preds = %203, %200
  store i32 0, ptr %94, align 8, !tbaa !291
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %94, ptr noundef %149)
          to label %267 unwind label %173

215:                                              ; preds = %208, %196, %200
  br i1 %153, label %220, label %216, !prof !464

216:                                              ; preds = %215
  %217 = load i16, ptr %152, align 2, !tbaa !200
  %218 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols10fgATT_NILLE, align 2, !tbaa !200
  %219 = icmp eq i16 %217, %218
  br i1 %219, label %223, label %267, !prof !464

220:                                              ; preds = %215
  %221 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols10fgATT_NILLE, align 2, !tbaa !200
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %234, label %267

223:                                              ; preds = %216, %228
  %224 = phi i16 [ %231, %228 ], [ %217, %216 ]
  %225 = phi ptr [ %230, %228 ], [ @_ZN11xercesc_2_713SchemaSymbols10fgATT_NILLE, %216 ]
  %226 = phi ptr [ %229, %228 ], [ %152, %216 ]
  %227 = icmp eq i16 %224, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %223
  %229 = getelementptr inbounds i16, ptr %226, i64 1
  %230 = getelementptr inbounds i16, ptr %225, i64 1
  %231 = load i16, ptr %229, align 2, !tbaa !200
  %232 = load i16, ptr %230, align 2, !tbaa !200
  %233 = icmp eq i16 %231, %232
  br i1 %233, label %223, label %267, !prof !464, !llvm.loop !217

234:                                              ; preds = %223, %220
  %235 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %236 = load ptr, ptr %235, align 8, !tbaa !160
  %237 = icmp eq ptr %236, null
  br i1 %237, label %267, label %238

238:                                              ; preds = %234
  %239 = load ptr, ptr %236, align 8, !tbaa !155
  %240 = getelementptr inbounds ptr, ptr %239, i64 13
  %241 = load ptr, ptr %240, align 8
  %242 = invoke noundef zeroext i1 %241(ptr noundef nonnull align 8 dereferenceable(40) %236)
          to label %243 unwind label %173

243:                                              ; preds = %238
  br i1 %242, label %244, label %267

244:                                              ; preds = %243
  %245 = icmp eq ptr %149, null
  br i1 %245, label %250, label %246

246:                                              ; preds = %244
  %247 = load i16, ptr %149, align 2, !tbaa !200
  %248 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_TRUEE, align 2, !tbaa !200
  %249 = icmp eq i16 %247, %248
  br i1 %249, label %253, label %267

250:                                              ; preds = %244
  %251 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_TRUEE, align 2, !tbaa !200
  %252 = icmp eq i16 %251, 0
  br i1 %252, label %264, label %267

253:                                              ; preds = %246, %258
  %254 = phi i16 [ %261, %258 ], [ %247, %246 ]
  %255 = phi ptr [ %260, %258 ], [ @_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_TRUEE, %246 ]
  %256 = phi ptr [ %259, %258 ], [ %149, %246 ]
  %257 = icmp eq i16 %254, 0
  br i1 %257, label %264, label %258

258:                                              ; preds = %253
  %259 = getelementptr inbounds i16, ptr %256, i64 1
  %260 = getelementptr inbounds i16, ptr %255, i64 1
  %261 = load i16, ptr %259, align 2, !tbaa !200
  %262 = load i16, ptr %260, align 2, !tbaa !200
  %263 = icmp eq i16 %261, %262
  br i1 %263, label %253, label %267, !llvm.loop !217

264:                                              ; preds = %253, %250
  %265 = load ptr, ptr %235, align 8, !tbaa !160
  %266 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %265, i64 0, i32 5
  store i8 1, ptr %266, align 8, !tbaa !653
  br label %267

267:                                              ; preds = %228, %258, %216, %246, %214, %264, %250, %243, %234, %220, %144
  %268 = add nuw nsw i64 %102, 1
  %269 = icmp eq i64 %268, %100
  br i1 %269, label %270, label %101, !prof !654, !llvm.loop !655

270:                                              ; preds = %267, %92
  %271 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %272 = load ptr, ptr %271, align 8, !tbaa !160
  %273 = icmp eq ptr %272, null
  br i1 %273, label %328, label %274, !prof !656

274:                                              ; preds = %270
  %275 = load ptr, ptr %272, align 8, !tbaa !155
  %276 = getelementptr inbounds ptr, ptr %275, i64 13
  %277 = load ptr, ptr %276, align 8
  %278 = invoke noundef zeroext i1 %277(ptr noundef nonnull align 8 dereferenceable(40) %272)
          to label %279 unwind label %135, !prof !657

279:                                              ; preds = %274
  %280 = load i32, ptr %94, align 8
  %281 = icmp ne i32 %280, 0
  %282 = select i1 %278, i1 %281, i1 false, !prof !658
  br i1 %282, label %283, label %328, !prof !656

283:                                              ; preds = %279
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 -1, ptr %3, align 4, !tbaa !136
  %284 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %94, i64 0, i32 6
  %285 = load ptr, ptr %284, align 8, !tbaa !293
  %286 = zext i32 %280 to i64
  %287 = getelementptr inbounds i16, ptr %285, i64 %286
  store i16 0, ptr %287, align 2, !tbaa !200
  %288 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %289 = load ptr, ptr %0, align 8, !tbaa !155
  %290 = getelementptr inbounds ptr, ptr %289, i64 7
  %291 = load ptr, ptr %290, align 8
  %292 = invoke noundef i32 %291(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %285, ptr noundef nonnull align 8 dereferenceable(40) %288, i16 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %293 unwind label %324

293:                                              ; preds = %283
  %294 = load ptr, ptr %271, align 8, !tbaa !160
  %295 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %296 = load ptr, ptr %295, align 8, !tbaa !293
  %297 = load i32, ptr %288, align 8, !tbaa !291
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds i16, ptr %296, i64 %298
  store i16 0, ptr %299, align 2, !tbaa !200
  %300 = load ptr, ptr %284, align 8, !tbaa !293
  %301 = load i32, ptr %94, align 8, !tbaa !291
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds i16, ptr %300, i64 %302
  store i16 0, ptr %303, align 2, !tbaa !200
  %304 = load i32, ptr %3, align 4, !tbaa !136
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i16, ptr %300, i64 %305
  %307 = getelementptr inbounds i16, ptr %306, i64 1
  %308 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %294, i64 0, i32 4
  %309 = load ptr, ptr %308, align 8, !tbaa !659
  %310 = icmp eq ptr %309, null
  br i1 %310, label %315, label %311

311:                                              ; preds = %293
  %312 = load ptr, ptr %309, align 8, !tbaa !155
  %313 = getelementptr inbounds ptr, ptr %312, i64 1
  %314 = load ptr, ptr %313, align 8
  call void %314(ptr noundef nonnull align 8 dereferenceable(56) %309) #14
  br label %315

315:                                              ; preds = %311, %293
  %316 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %294, i64 0, i32 1
  %317 = load ptr, ptr %316, align 8, !tbaa !660
  %318 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %317)
          to label %319 unwind label %324

319:                                              ; preds = %315
  %320 = load ptr, ptr %316, align 8, !tbaa !660
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %318, ptr noundef %296, ptr noundef nonnull %307, i32 noundef %292, ptr noundef %320)
          to label %323 unwind label %321

321:                                              ; preds = %319
  %322 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %318, ptr noundef %317) #14
  br label %326

323:                                              ; preds = %319
  store ptr %318, ptr %308, align 8, !tbaa !659
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %328

324:                                              ; preds = %315, %283
  %325 = landingpad { ptr, i32 }
          cleanup
  br label %326

326:                                              ; preds = %321, %324
  %327 = phi { ptr, i32 } [ %325, %324 ], [ %322, %321 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %332

328:                                              ; preds = %323, %279, %270
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %93, ptr noundef nonnull align 8 dereferenceable(40) %94)
          to label %337 unwind label %329, !prof !658

329:                                              ; preds = %328
  %330 = landingpad { ptr, i32 }
          catch ptr null
  %331 = extractvalue { ptr, i32 } %330, 0
  call void @__clang_call_terminate(ptr %331) #15
  unreachable

332:                                              ; preds = %137, %114, %173, %139, %326, %135
  %333 = phi { ptr, i32 } [ %327, %326 ], [ %136, %135 ], [ %174, %173 ], [ %140, %139 ], [ %138, %137 ], [ %115, %114 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %93, ptr noundef nonnull align 8 dereferenceable(40) %94)
          to label %20 unwind label %334

334:                                              ; preds = %332
  %335 = landingpad { ptr, i32 }
          catch ptr null
  %336 = extractvalue { ptr, i32 } %335, 0
  call void @__clang_call_terminate(ptr %336) #15
  unreachable

337:                                              ; preds = %328, %84
  ret void
}

declare noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !661 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %5 = load ptr, ptr %4, align 8, !tbaa !207
  %6 = icmp eq ptr %1, null
  br i1 %6, label %27, label %7, !prof !464

7:                                                ; preds = %2
  %8 = load i16, ptr %1, align 2, !tbaa !200
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %21, label %10, !prof !464

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %12, %10 ], [ %1, %7 ]
  %12 = getelementptr inbounds i16, ptr %11, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !200
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %10, !prof !662, !llvm.loop !203

15:                                               ; preds = %10
  %16 = ptrtoint ptr %12 to i64
  %17 = ptrtoint ptr %1 to i64
  %18 = sub i64 %16, %17
  %19 = add i64 %18, 2
  %20 = and i64 %19, 8589934590
  br label %21

21:                                               ; preds = %15, %7
  %22 = phi i64 [ %20, %15 ], [ 2, %7 ]
  %23 = load ptr, ptr %5, align 8, !tbaa !155
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %22), !prof !663
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %22, i1 false), !prof !664
  br label %27

27:                                               ; preds = %2, %21
  %28 = phi ptr [ %26, %21 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %29 = load ptr, ptr %4, align 8, !tbaa !207
  store ptr %28, ptr %3, align 8, !tbaa !208
  %30 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %3, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !210
  invoke void @_ZN11xercesc_2_712IGXMLScanner21processSchemaLocationEPt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %28)
          to label %31 unwind label %41, !prof !650

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 13
  %33 = load ptr, ptr %32, align 8, !tbaa !665
  %34 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.5", ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !666
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40, !prof !650

38:                                               ; preds = %31
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %61, label %45, !prof !668

40:                                               ; preds = %31
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 295)
          to label %61 unwind label %43

41:                                               ; preds = %27
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %62

43:                                               ; preds = %40
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %62

45:                                               ; preds = %38, %56
  %46 = phi i32 [ %57, %56 ], [ 0, %38 ]
  %47 = load ptr, ptr %32, align 8, !tbaa !665
  %48 = or disjoint i32 %46, 1
  %49 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPtE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %47, i32 noundef %48)
          to label %50 unwind label %59, !prof !650

50:                                               ; preds = %45
  %51 = load ptr, ptr %49, align 8, !tbaa !168
  %52 = load ptr, ptr %32, align 8, !tbaa !665
  %53 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPtE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %52, i32 noundef %46)
          to label %54 unwind label %59, !prof !650

54:                                               ; preds = %50
  %55 = load ptr, ptr %53, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %51, ptr noundef %55)
          to label %56 unwind label %59, !prof !650

56:                                               ; preds = %54
  %57 = add i32 %46, 2
  %58 = icmp ult i32 %57, %35
  br i1 %58, label %45, label %61, !prof !668, !llvm.loop !669

59:                                               ; preds = %54, %50, %45
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %62

61:                                               ; preds = %56, %38, %40
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret void

62:                                               ; preds = %43, %59, %41
  %63 = phi { ptr, i32 } [ %42, %41 ], [ %44, %43 ], [ %60, %59 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  resume { ptr, i32 } %63
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !661 {
  %4 = alloca %"class.xercesc_2_7::XMLSchemaDescriptionImpl", align 8
  %5 = alloca %"class.xercesc_2_7::XSDDOMParser", align 8
  %6 = alloca i16, align 2
  %7 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %8 = alloca %"class.xercesc_2_7::XMLResourceIdentifier", align 8
  %9 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %10 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %11 = alloca %"class.xercesc_2_7::TraverseSchema", align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %13 = load ptr, ptr %12, align 8, !tbaa !207
  call void @_ZN11xercesc_2_724XMLSchemaDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %2, ptr noundef %13)
  invoke void @_ZN11xercesc_2_724XMLSchemaDescriptionImpl16setLocationHintsEPKt(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %1)
          to label %14 unwind label %56, !prof !650

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %16 = load ptr, ptr %15, align 8, !tbaa !246
  %17 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPNS_21XMLGrammarDescriptionE(ptr noundef nonnull align 8 dereferenceable(80) %16, ptr noundef nonnull %4)
          to label %18 unwind label %56, !prof !650

18:                                               ; preds = %14
  call void @_ZN11xercesc_2_724XMLSchemaDescriptionImplD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  %19 = icmp eq ptr %17, null
  br i1 %19, label %26, label %20, !prof !650

20:                                               ; preds = %18
  %21 = load ptr, ptr %17, align 8, !tbaa !155
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  %24 = call noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(8) %17)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %439

26:                                               ; preds = %20, %18
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %5) #14
  %27 = load ptr, ptr %12, align 8, !tbaa !207
  call void @_ZN11xercesc_2_712XSDDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(368) %5, ptr noundef null, ptr noundef %27, ptr noundef null)
  invoke void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %5, i32 noundef 0)
          to label %28 unwind label %58, !prof !650

28:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200) %5, i1 noundef zeroext true)
          to label %29 unwind label %58, !prof !650

29:                                               ; preds = %28
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %31 = load ptr, ptr %30, align 8, !tbaa !520
  invoke void @_ZN11xercesc_2_712XSDDOMParser20setUserEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(368) %5, ptr noundef %31)
          to label %32 unwind label %58, !prof !650

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %34 = load ptr, ptr %33, align 8, !tbaa !508
  invoke void @_ZN11xercesc_2_712XSDDOMParser20setUserErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(368) %5, ptr noundef %34)
          to label %35 unwind label %58, !prof !650

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %37 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %38 unwind label %60, !prof !650

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #14
  store i16 -1, ptr %6, align 2, !tbaa !200
  invoke void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %6, ptr noundef nonnull align 8 dereferenceable(40) %37)
          to label %39 unwind label %62, !prof !650

39:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #14
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %37, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !293
  %42 = load i32, ptr %37, align 8, !tbaa !291
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i16, ptr %41, i64 %43
  store i16 0, ptr %44, align 2, !tbaa !200
  %45 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %46 unwind label %64, !prof !650

46:                                               ; preds = %39
  %47 = load ptr, ptr %30, align 8, !tbaa !520
  %48 = icmp eq ptr %47, null
  br i1 %48, label %94, label %49, !prof !650

49:                                               ; preds = %46
  %50 = load ptr, ptr %47, align 8, !tbaa !155
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef zeroext i1 %52(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef %41, ptr noundef nonnull align 8 dereferenceable(40) %45)
          to label %54 unwind label %66

54:                                               ; preds = %49
  br i1 %53, label %68, label %55

55:                                               ; preds = %54
  store i32 0, ptr %45, align 8, !tbaa !291
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %45, ptr noundef %41)
          to label %68 unwind label %66

56:                                               ; preds = %14, %3
  %57 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_724XMLSchemaDescriptionImplD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  br label %496

58:                                               ; preds = %32, %29, %28, %26
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %437

60:                                               ; preds = %35
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %437

62:                                               ; preds = %38
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #14
  br label %432

64:                                               ; preds = %39
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %432

66:                                               ; preds = %94, %55, %49
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %427

68:                                               ; preds = %55, %54
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #14
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %69, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %70 unwind label %88

70:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #14
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %45, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !293
  %73 = load i32, ptr %45, align 8, !tbaa !291
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i16, ptr %72, i64 %74
  store i16 0, ptr %75, align 2, !tbaa !200
  %76 = load ptr, ptr %7, align 8, !tbaa !670
  store i32 0, ptr %8, align 8, !tbaa !672
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %8, i64 0, i32 1
  store ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %77, align 8, !tbaa !675
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %8, i64 0, i32 2
  store ptr %72, ptr %78, align 8, !tbaa !676
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %8, i64 0, i32 3
  store ptr %76, ptr %79, align 8, !tbaa !677
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %8, i64 0, i32 4
  store ptr %2, ptr %80, align 8, !tbaa !678
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %8, i64 0, i32 5
  store ptr %69, ptr %81, align 8, !tbaa !679
  %82 = load ptr, ptr %30, align 8, !tbaa !520
  %83 = load ptr, ptr %82, align 8, !tbaa !155
  %84 = getelementptr inbounds ptr, ptr %83, i64 6
  %85 = load ptr, ptr %84, align 8
  %86 = invoke noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(8) %82, ptr noundef nonnull %8)
          to label %87 unwind label %90

87:                                               ; preds = %70
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #14
  br label %95

88:                                               ; preds = %68
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %92

90:                                               ; preds = %70
  %91 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #14
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi { ptr, i32 } [ %91, %90 ], [ %89, %88 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #14
  br label %427

94:                                               ; preds = %46
  store i32 0, ptr %45, align 8, !tbaa !291
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %45, ptr noundef %41)
          to label %95 unwind label %66, !prof !650

95:                                               ; preds = %94, %87
  %96 = phi ptr [ %86, %87 ], [ null, %94 ]
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %196, !prof !650

98:                                               ; preds = %95
  %99 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %100 = load i8, ptr %99, align 1, !tbaa !680, !range !158, !noundef !254
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %413, !prof !650

102:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #14
  %103 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %103, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %104 unwind label %144, !prof !650

104:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %10) #14
  %105 = load ptr, ptr %12, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %10, ptr noundef %105)
          to label %106 unwind label %146, !prof !650

106:                                              ; preds = %104
  %107 = load ptr, ptr %9, align 8, !tbaa !670
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %45, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !293
  %110 = load i32, ptr %45, align 8, !tbaa !291
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i16, ptr %109, i64 %111
  store i16 0, ptr %112, align 2, !tbaa !200
  %113 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr noundef nonnull align 8 dereferenceable(81) %10, ptr noundef %107, ptr noundef %109, ptr noundef nonnull align 8 dereferenceable(81) %10)
          to label %114 unwind label %148, !prof !650

114:                                              ; preds = %106
  br i1 %113, label %115, label %118, !prof !464

115:                                              ; preds = %114
  %116 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %10)
          to label %117 unwind label %148

117:                                              ; preds = %115
  br i1 %116, label %118, label %166

118:                                              ; preds = %117, %114
  %119 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %120 = load i8, ptr %119, align 8, !tbaa !681, !range !158, !noundef !254
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %161, !prof !650

122:                                              ; preds = %118
  %123 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %124 unwind label %150, !prof !650

124:                                              ; preds = %122
  %125 = load ptr, ptr %108, align 8, !tbaa !293
  %126 = load i32, ptr %45, align 8, !tbaa !291
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i16, ptr %125, i64 %127
  store i16 0, ptr %128, align 2, !tbaa !200
  invoke void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef %125, ptr noundef nonnull align 8 dereferenceable(40) %123)
          to label %129 unwind label %152, !prof !650

129:                                              ; preds = %124
  %130 = load ptr, ptr %12, align 8, !tbaa !207
  %131 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %130)
          to label %132 unwind label %152, !prof !650

132:                                              ; preds = %129
  %133 = load ptr, ptr %9, align 8, !tbaa !670
  %134 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %123, i64 0, i32 6
  %135 = load ptr, ptr %134, align 8, !tbaa !293
  %136 = load i32, ptr %123, align 8, !tbaa !291
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i16, ptr %135, i64 %137
  store i16 0, ptr %138, align 2, !tbaa !200
  %139 = load ptr, ptr %12, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %131, ptr noundef %133, ptr noundef %135, ptr noundef %139)
          to label %140 unwind label %154, !prof !650

140:                                              ; preds = %132
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(40) %123)
          to label %188 unwind label %141, !prof !650

141:                                              ; preds = %140
  %142 = landingpad { ptr, i32 }
          catch ptr null
  %143 = extractvalue { ptr, i32 } %142, 0
  call void @__clang_call_terminate(ptr %143) #15
  unreachable

144:                                              ; preds = %102
  %145 = landingpad { ptr, i32 }
          cleanup
  br label %194

146:                                              ; preds = %104
  %147 = landingpad { ptr, i32 }
          cleanup
  br label %192

148:                                              ; preds = %176, %181, %170, %115, %106
  %149 = landingpad { ptr, i32 }
          cleanup
  br label %190

150:                                              ; preds = %122
  %151 = landingpad { ptr, i32 }
          cleanup
  br label %190

152:                                              ; preds = %129, %124
  %153 = landingpad { ptr, i32 }
          cleanup
  br label %156

154:                                              ; preds = %132
  %155 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %131, ptr noundef %130) #14
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi { ptr, i32 } [ %155, %154 ], [ %153, %152 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(40) %123)
          to label %190 unwind label %158

158:                                              ; preds = %156
  %159 = landingpad { ptr, i32 }
          catch ptr null
  %160 = extractvalue { ptr, i32 } %159, 0
  call void @__clang_call_terminate(ptr %160) #15
  unreachable

161:                                              ; preds = %118
  %162 = call ptr @__cxa_allocate_exception(i64 48) #14
  %163 = load ptr, ptr %12, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %162, ptr noundef nonnull @.str, i32 noundef 1736, i32 noundef 99, ptr noundef %163)
          to label %176 unwind label %164

164:                                              ; preds = %161
  %165 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %162) #14
  br label %190

166:                                              ; preds = %117
  %167 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %168 = load i8, ptr %167, align 8, !tbaa !681, !range !158, !noundef !254
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %181, label %170

170:                                              ; preds = %166
  %171 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81) %10)
          to label %172 unwind label %148

172:                                              ; preds = %170
  br i1 %171, label %173, label %181

173:                                              ; preds = %172
  %174 = call ptr @__cxa_allocate_exception(i64 48) #14
  %175 = load ptr, ptr %12, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %174, ptr noundef nonnull @.str, i32 noundef 1741, i32 noundef 99, ptr noundef %175)
          to label %176 unwind label %179

176:                                              ; preds = %173, %161
  %177 = phi ptr [ %162, %161 ], [ %174, %173 ]
  invoke void @__cxa_throw(ptr nonnull %177, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %178 unwind label %148

178:                                              ; preds = %176
  unreachable

179:                                              ; preds = %173
  %180 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %174) #14
  br label %190

181:                                              ; preds = %172, %166
  %182 = load ptr, ptr %12, align 8, !tbaa !207
  %183 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %182)
          to label %184 unwind label %148

184:                                              ; preds = %181
  %185 = load ptr, ptr %12, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %183, ptr noundef nonnull align 8 dereferenceable(81) %10, ptr noundef %185)
          to label %188 unwind label %186

186:                                              ; preds = %184
  %187 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %183, ptr noundef %182) #14
  br label %190

188:                                              ; preds = %140, %184
  %189 = phi ptr [ %183, %184 ], [ %131, %140 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %10) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #14
  br label %196

190:                                              ; preds = %150, %156, %186, %179, %164, %148
  %191 = phi { ptr, i32 } [ %149, %148 ], [ %165, %164 ], [ %180, %179 ], [ %187, %186 ], [ %151, %150 ], [ %157, %156 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %10) #14
  br label %192

192:                                              ; preds = %190, %146
  %193 = phi { ptr, i32 } [ %191, %190 ], [ %147, %146 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #14
  br label %194

194:                                              ; preds = %192, %144
  %195 = phi { ptr, i32 } [ %193, %192 ], [ %145, %144 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #14
  br label %427

196:                                              ; preds = %188, %95
  %197 = phi ptr [ %96, %95 ], [ %189, %188 ]
  %198 = load ptr, ptr %197, align 8, !tbaa !155
  %199 = getelementptr inbounds ptr, ptr %198, i64 6
  %200 = load ptr, ptr %199, align 8
  %201 = invoke noundef zeroext i1 %200(ptr noundef nonnull align 8 dereferenceable(41) %197)
          to label %202 unwind label %220, !prof !682

202:                                              ; preds = %196
  %203 = load ptr, ptr %197, align 8, !tbaa !155
  %204 = getelementptr inbounds ptr, ptr %203, i64 10
  %205 = load ptr, ptr %204, align 8
  invoke void %205(ptr noundef nonnull align 8 dereferenceable(41) %197, i1 noundef zeroext false)
          to label %206 unwind label %220, !prof !683

206:                                              ; preds = %202
  invoke void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef nonnull align 8 dereferenceable(41) %197)
          to label %207 unwind label %220, !prof !650

207:                                              ; preds = %206
  %208 = load ptr, ptr %197, align 8, !tbaa !155
  %209 = getelementptr inbounds ptr, ptr %208, i64 10
  %210 = load ptr, ptr %209, align 8
  invoke void %210(ptr noundef nonnull align 8 dereferenceable(41) %197, i1 noundef zeroext %201)
          to label %211 unwind label %220, !prof !683

211:                                              ; preds = %207
  %212 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %5, i64 0, i32 1
  %213 = load i8, ptr %212, align 8, !tbaa !684, !range !158, !noundef !254
  %214 = icmp eq i8 %213, 0
  %215 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %216 = load i8, ptr %215, align 1, !range !158
  %217 = icmp eq i8 %216, 0
  %218 = select i1 %214, i1 true, i1 %217, !prof !650
  br i1 %218, label %222, label %219, !prof !650

219:                                              ; preds = %211
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 297)
          to label %222 unwind label %220

220:                                              ; preds = %219, %207, %206, %202, %196
  %221 = landingpad { ptr, i32 }
          cleanup
  br label %422

222:                                              ; preds = %219, %211
  %223 = invoke noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %5)
          to label %224 unwind label %276, !prof !650

224:                                              ; preds = %222
  %225 = icmp eq ptr %223, null
  br i1 %225, label %401, label %226, !prof !464

226:                                              ; preds = %224
  %227 = load ptr, ptr %223, align 8, !tbaa !155
  %228 = getelementptr inbounds ptr, ptr %227, i64 13
  %229 = load ptr, ptr %228, align 8
  %230 = invoke noundef ptr %229(ptr noundef nonnull align 8 dereferenceable(32) %223)
          to label %231 unwind label %278, !prof !694

231:                                              ; preds = %226
  %232 = icmp eq ptr %230, null
  br i1 %232, label %401, label %233, !prof !464

233:                                              ; preds = %231
  %234 = load ptr, ptr %230, align 8, !tbaa !155
  %235 = getelementptr inbounds ptr, ptr %234, i64 41
  %236 = load ptr, ptr %235, align 8
  %237 = invoke noundef ptr %236(ptr noundef nonnull align 8 dereferenceable(8) %230, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgATT_TARGETNAMESPACEE)
          to label %238 unwind label %280, !prof !695

238:                                              ; preds = %233
  %239 = icmp eq ptr %237, null
  %240 = icmp eq ptr %2, null
  %241 = or i1 %240, %239
  br i1 %241, label %246, label %242, !prof !464

242:                                              ; preds = %238
  %243 = load i16, ptr %237, align 2, !tbaa !200
  %244 = load i16, ptr %2, align 2, !tbaa !200
  %245 = icmp eq i16 %243, %244
  br i1 %245, label %254, label %265, !prof !650

246:                                              ; preds = %238
  br i1 %239, label %250, label %247

247:                                              ; preds = %246
  %248 = load i16, ptr %237, align 2, !tbaa !200
  %249 = icmp eq i16 %248, 0
  br i1 %249, label %250, label %265

250:                                              ; preds = %247, %246
  br i1 %240, label %285, label %251

251:                                              ; preds = %250
  %252 = load i16, ptr %2, align 2, !tbaa !200
  %253 = icmp eq i16 %252, 0
  br i1 %253, label %285, label %265

254:                                              ; preds = %242, %259
  %255 = phi i16 [ %262, %259 ], [ %243, %242 ]
  %256 = phi ptr [ %261, %259 ], [ %2, %242 ]
  %257 = phi ptr [ %260, %259 ], [ %237, %242 ]
  %258 = icmp eq i16 %255, 0
  br i1 %258, label %285, label %259, !prof !696

259:                                              ; preds = %254
  %260 = getelementptr inbounds i16, ptr %257, i64 1
  %261 = getelementptr inbounds i16, ptr %256, i64 1
  %262 = load i16, ptr %260, align 2, !tbaa !200
  %263 = load i16, ptr %261, align 2, !tbaa !200
  %264 = icmp eq i16 %262, %263
  br i1 %264, label %254, label %265, !prof !697, !llvm.loop !217

265:                                              ; preds = %259, %242, %251, %247
  %266 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %267 = load i8, ptr %266, align 8, !tbaa !253, !range !158, !noundef !254
  %268 = icmp ne i8 %267, 0
  %269 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %270 = load i32, ptr %269, align 8
  %271 = icmp eq i32 %270, 2
  %272 = select i1 %268, i1 true, i1 %271
  br i1 %272, label %273, label %282

273:                                              ; preds = %265
  %274 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %275 = load ptr, ptr %274, align 8, !tbaa !160
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %275, i32 noundef 69, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null)
          to label %282 unwind label %280

276:                                              ; preds = %222
  %277 = landingpad { ptr, i32 }
          cleanup
  br label %422

278:                                              ; preds = %226
  %279 = landingpad { ptr, i32 }
          cleanup
  br label %422

280:                                              ; preds = %335, %328, %313, %288, %282, %273, %233
  %281 = landingpad { ptr, i32 }
          cleanup
  br label %422

282:                                              ; preds = %273, %265
  %283 = load ptr, ptr %15, align 8, !tbaa !246
  %284 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %283, ptr noundef %237)
          to label %285 unwind label %280

285:                                              ; preds = %254, %251, %250, %282
  %286 = phi ptr [ %284, %282 ], [ %17, %250 ], [ %17, %251 ], [ %17, %254 ]
  %287 = icmp eq ptr %286, null
  br i1 %287, label %295, label %288, !prof !650

288:                                              ; preds = %285
  %289 = load ptr, ptr %286, align 8, !tbaa !155
  %290 = getelementptr inbounds ptr, ptr %289, i64 5
  %291 = load ptr, ptr %290, align 8
  %292 = invoke noundef i32 %291(ptr noundef nonnull align 8 dereferenceable(8) %286)
          to label %293 unwind label %280

293:                                              ; preds = %288
  %294 = icmp eq i32 %292, 0
  br i1 %294, label %295, label %401

295:                                              ; preds = %293, %285
  %296 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %297 = load i32, ptr %296, align 8, !tbaa !516
  %298 = icmp eq i32 %297, 2
  br i1 %298, label %299, label %313, !prof !650

299:                                              ; preds = %295
  %300 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %301 = load i8, ptr %300, align 8, !tbaa !253, !range !158, !noundef !254
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %303, label %313, !prof !650

303:                                              ; preds = %299
  store i8 1, ptr %300, align 8, !tbaa !253
  %304 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %305 = load ptr, ptr %304, align 8, !tbaa !698
  %306 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %307 = load i32, ptr %306, align 4, !tbaa !699
  %308 = add i32 %307, -1
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds ptr, ptr %305, i64 %309
  %311 = load ptr, ptr %310, align 8, !tbaa !168
  %312 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %311, i64 0, i32 8
  store i8 1, ptr %312, align 8, !tbaa !700
  br label %313

313:                                              ; preds = %295, %303, %299
  %314 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %315 = load ptr, ptr %314, align 8, !tbaa !160
  %316 = load ptr, ptr %315, align 8, !tbaa !155
  %317 = getelementptr inbounds ptr, ptr %316, i64 13
  %318 = load ptr, ptr %317, align 8
  %319 = invoke noundef zeroext i1 %318(ptr noundef nonnull align 8 dereferenceable(40) %315)
          to label %320 unwind label %280, !prof !701

320:                                              ; preds = %313
  br i1 %319, label %335, label %321, !prof !464

321:                                              ; preds = %320
  %322 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %323 = load i8, ptr %322, align 1, !tbaa !507, !range !158, !noundef !254
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %332, label %325, !prof !650

325:                                              ; preds = %321
  %326 = call ptr @__cxa_allocate_exception(i64 48) #14
  %327 = load ptr, ptr %12, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %326, ptr noundef nonnull @.str, i32 noundef 1791, i32 noundef 158, ptr noundef %327)
          to label %328 unwind label %330

328:                                              ; preds = %325
  invoke void @__cxa_throw(ptr nonnull %326, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %329 unwind label %280

329:                                              ; preds = %328
  unreachable

330:                                              ; preds = %325
  %331 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %326) #14
  br label %422

332:                                              ; preds = %321
  %333 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 10
  %334 = load ptr, ptr %333, align 8, !tbaa !548
  store ptr %334, ptr %314, align 8, !tbaa !160
  br label %335

335:                                              ; preds = %332, %320
  %336 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %337 = load ptr, ptr %336, align 8, !tbaa !504
  %338 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 160, ptr noundef %337)
          to label %339 unwind label %280, !prof !650

339:                                              ; preds = %335
  %340 = load ptr, ptr %336, align 8, !tbaa !504
  invoke void @_ZN11xercesc_2_713SchemaGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %338, ptr noundef %340)
          to label %341 unwind label %381, !prof !650

341:                                              ; preds = %339
  %342 = load ptr, ptr %338, align 8, !tbaa !155
  %343 = getelementptr inbounds ptr, ptr %342, i64 22
  %344 = load ptr, ptr %343, align 8
  %345 = invoke noundef ptr %344(ptr noundef nonnull align 8 dereferenceable(8) %338)
          to label %346 unwind label %383, !prof !702

346:                                              ; preds = %341
  %347 = load ptr, ptr %345, align 8, !tbaa !155
  %348 = getelementptr inbounds ptr, ptr %347, i64 13
  %349 = load ptr, ptr %348, align 8
  invoke void %349(ptr noundef nonnull align 8 dereferenceable(16) %345, i32 noundef 3)
          to label %350 unwind label %383, !prof !703

350:                                              ; preds = %346
  %351 = load ptr, ptr %197, align 8, !tbaa !155
  %352 = getelementptr inbounds ptr, ptr %351, i64 5
  %353 = load ptr, ptr %352, align 8
  %354 = invoke noundef ptr %353(ptr noundef nonnull align 8 dereferenceable(41) %197)
          to label %355 unwind label %383, !prof !704

355:                                              ; preds = %350
  %356 = load ptr, ptr %345, align 8, !tbaa !155
  %357 = getelementptr inbounds ptr, ptr %356, i64 15
  %358 = load ptr, ptr %357, align 8
  invoke void %358(ptr noundef nonnull align 8 dereferenceable(16) %345, ptr noundef %354)
          to label %359 unwind label %383, !prof !705

359:                                              ; preds = %355
  call void @llvm.lifetime.start.p0(i64 552, ptr nonnull %11) #14
  %360 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %361 = load ptr, ptr %360, align 8, !tbaa !252
  %362 = load ptr, ptr %15, align 8, !tbaa !246
  %363 = load ptr, ptr %197, align 8, !tbaa !155
  %364 = getelementptr inbounds ptr, ptr %363, i64 5
  %365 = load ptr, ptr %364, align 8
  %366 = invoke noundef ptr %365(ptr noundef nonnull align 8 dereferenceable(41) %197)
          to label %367 unwind label %385, !prof !704

367:                                              ; preds = %359
  %368 = load ptr, ptr %30, align 8, !tbaa !520
  %369 = load ptr, ptr %33, align 8, !tbaa !508
  %370 = load ptr, ptr %12, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_714TraverseSchemaC1EPNS_10DOMElementEPNS_13XMLStringPoolEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_10XMLScannerEPKtPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(552) %11, ptr noundef nonnull %230, ptr noundef %361, ptr noundef nonnull %338, ptr noundef %362, ptr noundef nonnull %0, ptr noundef %366, ptr noundef %368, ptr noundef %369, ptr noundef %370)
          to label %371 unwind label %385, !prof !650

371:                                              ; preds = %367
  %372 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %373 = load i32, ptr %372, align 4, !tbaa !186
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %389, !prof !650

375:                                              ; preds = %371
  %376 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %338, ptr %376, align 8, !tbaa !140
  store i32 1, ptr %372, align 4, !tbaa !186
  %377 = load ptr, ptr %314, align 8, !tbaa !160
  %378 = load ptr, ptr %377, align 8, !tbaa !155
  %379 = getelementptr inbounds ptr, ptr %378, i64 11
  %380 = load ptr, ptr %379, align 8
  invoke void %380(ptr noundef nonnull align 8 dereferenceable(40) %377, ptr noundef nonnull %338)
          to label %389 unwind label %387, !prof !706

381:                                              ; preds = %339
  %382 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %338, ptr noundef %337) #14
  br label %422

383:                                              ; preds = %355, %350, %346, %341
  %384 = landingpad { ptr, i32 }
          cleanup
  br label %422

385:                                              ; preds = %367, %359
  %386 = landingpad { ptr, i32 }
          cleanup
  br label %399

387:                                              ; preds = %393, %375
  %388 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_714TraverseSchemaD1Ev(ptr noundef nonnull align 8 dereferenceable(552) %11) #14
  br label %399

389:                                              ; preds = %375, %371
  %390 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %391 = load i8, ptr %390, align 8, !tbaa !253, !range !158, !noundef !254
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %398, label %393, !prof !464

393:                                              ; preds = %389
  %394 = load ptr, ptr %314, align 8, !tbaa !160
  %395 = load ptr, ptr %394, align 8, !tbaa !155
  %396 = getelementptr inbounds ptr, ptr %395, i64 4
  %397 = load ptr, ptr %396, align 8
  invoke void %397(ptr noundef nonnull align 8 dereferenceable(40) %394, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %398 unwind label %387, !prof !707

398:                                              ; preds = %393, %389
  call void @_ZN11xercesc_2_714TraverseSchemaD1Ev(ptr noundef nonnull align 8 dereferenceable(552) %11) #14
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %11) #14
  br label %401

399:                                              ; preds = %387, %385
  %400 = phi { ptr, i32 } [ %388, %387 ], [ %386, %385 ]
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %11) #14
  br label %422

401:                                              ; preds = %224, %293, %398, %231
  %402 = load ptr, ptr %197, align 8, !tbaa !155
  %403 = getelementptr inbounds ptr, ptr %402, i64 1
  %404 = load ptr, ptr %403, align 8
  call void %404(ptr noundef nonnull align 8 dereferenceable(41) %197) #14, !prof !708
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(40) %45)
          to label %408 unwind label %405, !prof !650

405:                                              ; preds = %401
  %406 = landingpad { ptr, i32 }
          catch ptr null
  %407 = extractvalue { ptr, i32 } %406, 0
  call void @__clang_call_terminate(ptr %407) #15
  unreachable

408:                                              ; preds = %401
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(40) %37)
          to label %412 unwind label %409, !prof !650

409:                                              ; preds = %408
  %410 = landingpad { ptr, i32 }
          catch ptr null
  %411 = extractvalue { ptr, i32 } %410, 0
  call void @__clang_call_terminate(ptr %411) #15
  unreachable

412:                                              ; preds = %408
  call void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368) %5) #14
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %5) #14
  br label %487

413:                                              ; preds = %98
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(40) %45)
          to label %417 unwind label %414

414:                                              ; preds = %413
  %415 = landingpad { ptr, i32 }
          catch ptr null
  %416 = extractvalue { ptr, i32 } %415, 0
  call void @__clang_call_terminate(ptr %416) #15
  unreachable

417:                                              ; preds = %413
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(40) %37)
          to label %421 unwind label %418

418:                                              ; preds = %417
  %419 = landingpad { ptr, i32 }
          catch ptr null
  %420 = extractvalue { ptr, i32 } %419, 0
  call void @__clang_call_terminate(ptr %420) #15
  unreachable

421:                                              ; preds = %417
  call void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368) %5) #14
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %5) #14
  br label %495

422:                                              ; preds = %220, %278, %383, %399, %381, %330, %280, %276
  %423 = phi { ptr, i32 } [ %221, %220 ], [ %277, %276 ], [ %279, %278 ], [ %382, %381 ], [ %281, %280 ], [ %331, %330 ], [ %400, %399 ], [ %384, %383 ]
  %424 = load ptr, ptr %197, align 8, !tbaa !155
  %425 = getelementptr inbounds ptr, ptr %424, i64 1
  %426 = load ptr, ptr %425, align 8
  call void %426(ptr noundef nonnull align 8 dereferenceable(41) %197) #14
  br label %427

427:                                              ; preds = %422, %194, %92, %66
  %428 = phi { ptr, i32 } [ %423, %422 ], [ %195, %194 ], [ %93, %92 ], [ %67, %66 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(40) %45)
          to label %432 unwind label %429

429:                                              ; preds = %427
  %430 = landingpad { ptr, i32 }
          catch ptr null
  %431 = extractvalue { ptr, i32 } %430, 0
  call void @__clang_call_terminate(ptr %431) #15
  unreachable

432:                                              ; preds = %64, %427, %62
  %433 = phi { ptr, i32 } [ %63, %62 ], [ %65, %64 ], [ %428, %427 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(40) %37)
          to label %437 unwind label %434

434:                                              ; preds = %432
  %435 = landingpad { ptr, i32 }
          catch ptr null
  %436 = extractvalue { ptr, i32 } %435, 0
  call void @__clang_call_terminate(ptr %436) #15
  unreachable

437:                                              ; preds = %60, %432, %58
  %438 = phi { ptr, i32 } [ %59, %58 ], [ %61, %60 ], [ %433, %432 ]
  call void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368) %5) #14
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %5) #14
  br label %496

439:                                              ; preds = %20
  %440 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %441 = load i32, ptr %440, align 8, !tbaa !516
  %442 = icmp eq i32 %441, 2
  br i1 %442, label %443, label %457

443:                                              ; preds = %439
  %444 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %445 = load i8, ptr %444, align 8, !tbaa !253, !range !158, !noundef !254
  %446 = icmp eq i8 %445, 0
  br i1 %446, label %447, label %457

447:                                              ; preds = %443
  store i8 1, ptr %444, align 8, !tbaa !253
  %448 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %449 = load ptr, ptr %448, align 8, !tbaa !698
  %450 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %451 = load i32, ptr %450, align 4, !tbaa !699
  %452 = add i32 %451, -1
  %453 = zext i32 %452 to i64
  %454 = getelementptr inbounds ptr, ptr %449, i64 %453
  %455 = load ptr, ptr %454, align 8, !tbaa !168
  %456 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %455, i64 0, i32 8
  store i8 1, ptr %456, align 8, !tbaa !700
  br label %457

457:                                              ; preds = %447, %443, %439
  %458 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %459 = load ptr, ptr %458, align 8, !tbaa !160
  %460 = load ptr, ptr %459, align 8, !tbaa !155
  %461 = getelementptr inbounds ptr, ptr %460, i64 13
  %462 = load ptr, ptr %461, align 8
  %463 = call noundef zeroext i1 %462(ptr noundef nonnull align 8 dereferenceable(40) %459)
  br i1 %463, label %477, label %464

464:                                              ; preds = %457
  %465 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %466 = load i8, ptr %465, align 1, !tbaa !507, !range !158, !noundef !254
  %467 = icmp eq i8 %466, 0
  br i1 %467, label %474, label %468

468:                                              ; preds = %464
  %469 = call ptr @__cxa_allocate_exception(i64 48) #14
  %470 = load ptr, ptr %12, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %469, ptr noundef nonnull @.str, i32 noundef 1844, i32 noundef 158, ptr noundef %470)
          to label %471 unwind label %472

471:                                              ; preds = %468
  call void @__cxa_throw(ptr nonnull %469, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

472:                                              ; preds = %468
  %473 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %469) #14
  br label %496

474:                                              ; preds = %464
  %475 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 10
  %476 = load ptr, ptr %475, align 8, !tbaa !548
  store ptr %476, ptr %458, align 8, !tbaa !160
  br label %477

477:                                              ; preds = %474, %457
  %478 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %479 = load i32, ptr %478, align 4, !tbaa !186
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %487

481:                                              ; preds = %477
  %482 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %17, ptr %482, align 8, !tbaa !140
  store i32 1, ptr %478, align 4, !tbaa !186
  %483 = load ptr, ptr %458, align 8, !tbaa !160
  %484 = load ptr, ptr %483, align 8, !tbaa !155
  %485 = getelementptr inbounds ptr, ptr %484, i64 11
  %486 = load ptr, ptr %485, align 8
  call void %486(ptr noundef nonnull align 8 dereferenceable(40) %483, ptr noundef nonnull %17)
  br label %487

487:                                              ; preds = %412, %477, %481
  %488 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %489 = load ptr, ptr %488, align 8, !tbaa !257
  %490 = icmp eq ptr %489, null
  br i1 %490, label %495, label %491, !prof !650

491:                                              ; preds = %487
  %492 = load ptr, ptr %15, align 8, !tbaa !246
  %493 = call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getXSModelEv(ptr noundef nonnull align 8 dereferenceable(80) %492)
  %494 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  store ptr %493, ptr %494, align 8, !tbaa !319
  br label %495

495:                                              ; preds = %487, %491, %421
  ret void

496:                                              ; preds = %472, %437, %56
  %497 = phi { ptr, i32 } [ %438, %437 ], [ %473, %472 ], [ %57, %56 ]
  resume { ptr, i32 } %497
}

declare void @_ZN11xercesc_2_712IGXMLScanner21processSchemaLocationEPt(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPtE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !709 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.5", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !666
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !330

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.5", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !710
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.5", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !711
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

declare void @_ZN11xercesc_2_724XMLSchemaDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) unnamed_addr #6

declare void @_ZN11xercesc_2_724XMLSchemaDescriptionImpl16setLocationHintsEPKt(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_724XMLSchemaDescriptionImplD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare void @_ZN11xercesc_2_712XSDDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(368), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

declare void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #6

declare void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN11xercesc_2_712XSDDOMParser20setUserEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(368), ptr noundef) local_unnamed_addr #6

declare void @_ZN11xercesc_2_712XSDDOMParser20setUserErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(368), ptr noundef) local_unnamed_addr #6

declare void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef, ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

declare void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #6

declare noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #6

declare void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

declare void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

declare noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #6

declare void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81)) unnamed_addr #2

declare void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #6

declare noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

declare void @_ZN11xercesc_2_713SchemaGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #6

declare void @_ZN11xercesc_2_714TraverseSchemaC1EPNS_10DOMElementEPNS_13XMLStringPoolEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_10XMLScannerEPKtPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_714TraverseSchemaD1Ev(ptr noundef nonnull align 8 dereferenceable(552)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712IGXMLScanner15resolveSystemIdEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %4 = alloca i16, align 2
  %5 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %6 = alloca %"class.xercesc_2_7::XMLResourceIdentifier", align 8
  %7 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %8 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %10 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #14
  store i16 -1, ptr %4, align 2, !tbaa !200
  invoke void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %11 unwind label %29

11:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #14
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !293
  %14 = load i32, ptr %10, align 8, !tbaa !291
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i16, ptr %13, i64 %15
  store i16 0, ptr %16, align 2, !tbaa !200
  %17 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %18 unwind label %31

18:                                               ; preds = %11
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %20 = load ptr, ptr %19, align 8, !tbaa !520
  %21 = icmp eq ptr %20, null
  br i1 %21, label %61, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !tbaa !155
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(40) %17)
          to label %27 unwind label %33

27:                                               ; preds = %22
  br i1 %26, label %35, label %28

28:                                               ; preds = %27
  store i32 0, ptr %17, align 8, !tbaa !291
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef %13)
          to label %35 unwind label %33

29:                                               ; preds = %3
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #14
  br label %179

31:                                               ; preds = %11
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %179

33:                                               ; preds = %61, %28, %22
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %174

35:                                               ; preds = %28, %27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %36, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %37 unwind label %55

37:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #14
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %17, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !293
  %40 = load i32, ptr %17, align 8, !tbaa !291
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i16, ptr %39, i64 %41
  store i16 0, ptr %42, align 2, !tbaa !200
  %43 = load ptr, ptr %5, align 8, !tbaa !670
  store i32 4, ptr %6, align 8, !tbaa !672
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %6, i64 0, i32 1
  store ptr %2, ptr %44, align 8, !tbaa !675
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %6, i64 0, i32 2
  store ptr %39, ptr %45, align 8, !tbaa !676
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %6, i64 0, i32 3
  store ptr %43, ptr %46, align 8, !tbaa !677
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %6, i64 0, i32 4
  store ptr null, ptr %47, align 8, !tbaa !678
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %6, i64 0, i32 5
  store ptr %36, ptr %48, align 8, !tbaa !679
  %49 = load ptr, ptr %19, align 8, !tbaa !520
  %50 = load ptr, ptr %49, align 8, !tbaa !155
  %51 = getelementptr inbounds ptr, ptr %50, i64 6
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull %6)
          to label %54 unwind label %57

54:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %62

55:                                               ; preds = %35
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %59

57:                                               ; preds = %37
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #14
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi { ptr, i32 } [ %58, %57 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %174

61:                                               ; preds = %18
  store i32 0, ptr %17, align 8, !tbaa !291
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef %13)
          to label %62 unwind label %33

62:                                               ; preds = %61, %54
  %63 = phi ptr [ %53, %54 ], [ null, %61 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %164

65:                                               ; preds = %62
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %67 = load i8, ptr %66, align 1, !tbaa !680, !range !158, !noundef !254
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %164

69:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #14
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %70, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %71 unwind label %112

71:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %8) #14
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %73 = load ptr, ptr %72, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %8, ptr noundef %73)
          to label %74 unwind label %114

74:                                               ; preds = %71
  %75 = load ptr, ptr %7, align 8, !tbaa !670
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %17, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !293
  %78 = load i32, ptr %17, align 8, !tbaa !291
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i16, ptr %77, i64 %79
  store i16 0, ptr %80, align 2, !tbaa !200
  %81 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr noundef nonnull align 8 dereferenceable(81) %8, ptr noundef %75, ptr noundef %77, ptr noundef nonnull align 8 dereferenceable(81) %8)
          to label %82 unwind label %116

82:                                               ; preds = %74
  br i1 %81, label %83, label %86

83:                                               ; preds = %82
  %84 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %8)
          to label %85 unwind label %116

85:                                               ; preds = %83
  br i1 %84, label %86, label %134

86:                                               ; preds = %85, %82
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %88 = load i8, ptr %87, align 8, !tbaa !681, !range !158, !noundef !254
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %129

90:                                               ; preds = %86
  %91 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %92 unwind label %118

92:                                               ; preds = %90
  %93 = load ptr, ptr %76, align 8, !tbaa !293
  %94 = load i32, ptr %17, align 8, !tbaa !291
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i16, ptr %93, i64 %95
  store i16 0, ptr %96, align 2, !tbaa !200
  invoke void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef %93, ptr noundef nonnull align 8 dereferenceable(40) %91)
          to label %97 unwind label %120

97:                                               ; preds = %92
  %98 = load ptr, ptr %72, align 8, !tbaa !207
  %99 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %98)
          to label %100 unwind label %120

100:                                              ; preds = %97
  %101 = load ptr, ptr %7, align 8, !tbaa !670
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %91, i64 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !293
  %104 = load i32, ptr %91, align 8, !tbaa !291
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i16, ptr %103, i64 %105
  store i16 0, ptr %106, align 2, !tbaa !200
  %107 = load ptr, ptr %72, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %99, ptr noundef %101, ptr noundef %103, ptr noundef %107)
          to label %108 unwind label %122

108:                                              ; preds = %100
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %91)
          to label %156 unwind label %109

109:                                              ; preds = %108
  %110 = landingpad { ptr, i32 }
          catch ptr null
  %111 = extractvalue { ptr, i32 } %110, 0
  call void @__clang_call_terminate(ptr %111) #15
  unreachable

112:                                              ; preds = %69
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %162

114:                                              ; preds = %71
  %115 = landingpad { ptr, i32 }
          cleanup
  br label %160

116:                                              ; preds = %144, %149, %138, %83, %74
  %117 = landingpad { ptr, i32 }
          cleanup
  br label %158

118:                                              ; preds = %90
  %119 = landingpad { ptr, i32 }
          cleanup
  br label %158

120:                                              ; preds = %97, %92
  %121 = landingpad { ptr, i32 }
          cleanup
  br label %124

122:                                              ; preds = %100
  %123 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %99, ptr noundef %98) #14
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi { ptr, i32 } [ %123, %122 ], [ %121, %120 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %91)
          to label %158 unwind label %126

126:                                              ; preds = %124
  %127 = landingpad { ptr, i32 }
          catch ptr null
  %128 = extractvalue { ptr, i32 } %127, 0
  call void @__clang_call_terminate(ptr %128) #15
  unreachable

129:                                              ; preds = %86
  %130 = call ptr @__cxa_allocate_exception(i64 48) #14
  %131 = load ptr, ptr %72, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %130, ptr noundef nonnull @.str, i32 noundef 1923, i32 noundef 99, ptr noundef %131)
          to label %144 unwind label %132

132:                                              ; preds = %129
  %133 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %130) #14
  br label %158

134:                                              ; preds = %85
  %135 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %136 = load i8, ptr %135, align 8, !tbaa !681, !range !158, !noundef !254
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %134
  %139 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81) %8)
          to label %140 unwind label %116

140:                                              ; preds = %138
  br i1 %139, label %141, label %149

141:                                              ; preds = %140
  %142 = call ptr @__cxa_allocate_exception(i64 48) #14
  %143 = load ptr, ptr %72, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %142, ptr noundef nonnull @.str, i32 noundef 1928, i32 noundef 99, ptr noundef %143)
          to label %144 unwind label %147

144:                                              ; preds = %141, %129
  %145 = phi ptr [ %130, %129 ], [ %142, %141 ]
  invoke void @__cxa_throw(ptr nonnull %145, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %146 unwind label %116

146:                                              ; preds = %144
  unreachable

147:                                              ; preds = %141
  %148 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %142) #14
  br label %158

149:                                              ; preds = %140, %134
  %150 = load ptr, ptr %72, align 8, !tbaa !207
  %151 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %150)
          to label %152 unwind label %116

152:                                              ; preds = %149
  %153 = load ptr, ptr %72, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %151, ptr noundef nonnull align 8 dereferenceable(81) %8, ptr noundef %153)
          to label %156 unwind label %154

154:                                              ; preds = %152
  %155 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %151, ptr noundef %150) #14
  br label %158

156:                                              ; preds = %108, %152
  %157 = phi ptr [ %151, %152 ], [ %99, %108 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %8) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #14
  br label %164

158:                                              ; preds = %118, %124, %154, %147, %132, %116
  %159 = phi { ptr, i32 } [ %117, %116 ], [ %133, %132 ], [ %148, %147 ], [ %155, %154 ], [ %119, %118 ], [ %125, %124 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %8) #14
  br label %160

160:                                              ; preds = %158, %114
  %161 = phi { ptr, i32 } [ %159, %158 ], [ %115, %114 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %8) #14
  br label %162

162:                                              ; preds = %160, %112
  %163 = phi { ptr, i32 } [ %161, %160 ], [ %113, %112 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #14
  br label %174

164:                                              ; preds = %62, %156, %65
  %165 = phi ptr [ null, %65 ], [ %63, %62 ], [ %157, %156 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %17)
          to label %169 unwind label %166

166:                                              ; preds = %164
  %167 = landingpad { ptr, i32 }
          catch ptr null
  %168 = extractvalue { ptr, i32 } %167, 0
  call void @__clang_call_terminate(ptr %168) #15
  unreachable

169:                                              ; preds = %164
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %173 unwind label %170

170:                                              ; preds = %169
  %171 = landingpad { ptr, i32 }
          catch ptr null
  %172 = extractvalue { ptr, i32 } %171, 0
  call void @__clang_call_terminate(ptr %172) #15
  unreachable

173:                                              ; preds = %169
  ret ptr %165

174:                                              ; preds = %162, %59, %33
  %175 = phi { ptr, i32 } [ %163, %162 ], [ %60, %59 ], [ %34, %33 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %17)
          to label %179 unwind label %176

176:                                              ; preds = %174
  %177 = landingpad { ptr, i32 }
          catch ptr null
  %178 = extractvalue { ptr, i32 } %177, 0
  call void @__clang_call_terminate(ptr %178) #15
  unreachable

179:                                              ; preds = %31, %174, %29
  %180 = phi { ptr, i32 } [ %30, %29 ], [ %32, %31 ], [ %175, %174 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %184 unwind label %181

181:                                              ; preds = %179
  %182 = landingpad { ptr, i32 }
          catch ptr null
  %183 = extractvalue { ptr, i32 } %182, 0
  call void @__clang_call_terminate(ptr %183) #15
  unreachable

184:                                              ; preds = %179
  resume { ptr, i32 } %180
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712IGXMLScanner20loadXMLSchemaGrammarERKNS_11InputSourceEb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %4 = alloca %"class.xercesc_2_7::XSDDOMParser", align 8
  %5 = alloca %"class.xercesc_2_7::TraverseSchema", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !548
  %8 = load ptr, ptr %7, align 8, !tbaa !155
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(186) %7)
  %11 = load ptr, ptr %6, align 8, !tbaa !548
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %13 = load ptr, ptr %12, align 8, !tbaa !508
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %11, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !509
  %15 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %11, i64 0, i32 13, i32 2
  store ptr %13, ptr %15, align 8, !tbaa !510
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %17 = load i8, ptr %16, align 1, !tbaa !512, !range !158, !noundef !254
  %18 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %11, i64 0, i32 13, i32 1
  store i8 %17, ptr %18, align 8, !tbaa !513
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %20 = load ptr, ptr %19, align 8, !tbaa !246
  %21 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %11, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !511
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %23 = load i8, ptr %22, align 1, !tbaa !507, !range !158, !noundef !254
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %27 = load ptr, ptr %26, align 8, !tbaa !160
  %28 = load ptr, ptr %27, align 8, !tbaa !155
  %29 = getelementptr inbounds ptr, ptr %28, i64 6
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(40) %27)
  br label %31

31:                                               ; preds = %25, %3
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %33 = load ptr, ptr %32, align 8, !tbaa !160
  %34 = load ptr, ptr %33, align 8, !tbaa !155
  %35 = getelementptr inbounds ptr, ptr %34, i64 13
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(40) %33)
  br i1 %37, label %54, label %38

38:                                               ; preds = %31
  %39 = load i8, ptr %22, align 1, !tbaa !507, !range !158, !noundef !254
  %40 = icmp eq i8 %39, 0
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %42 = load i8, ptr %41, align 8, !range !158
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %40, i1 true, i1 %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %48 = load ptr, ptr %47, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %46, ptr noundef nonnull @.str, i32 noundef 1954, i32 noundef 158, ptr noundef %48)
          to label %49 unwind label %50

49:                                               ; preds = %45
  tail call void @__cxa_throw(ptr nonnull %46, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

50:                                               ; preds = %45
  %51 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %46) #14
  br label %186

52:                                               ; preds = %38
  %53 = load ptr, ptr %6, align 8, !tbaa !548
  store ptr %53, ptr %32, align 8, !tbaa !160
  br label %54

54:                                               ; preds = %52, %31
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %4) #14
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %56 = load ptr, ptr %55, align 8, !tbaa !207
  call void @_ZN11xercesc_2_712XSDDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(368) %4, ptr noundef null, ptr noundef %56, ptr noundef null)
  invoke void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %4, i32 noundef 0)
          to label %57 unwind label %85

57:                                               ; preds = %54
  invoke void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200) %4, i1 noundef zeroext true)
          to label %58 unwind label %85

58:                                               ; preds = %57
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %60 = load ptr, ptr %59, align 8, !tbaa !520
  invoke void @_ZN11xercesc_2_712XSDDOMParser20setUserEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(368) %4, ptr noundef %60)
          to label %61 unwind label %85

61:                                               ; preds = %58
  %62 = load ptr, ptr %12, align 8, !tbaa !508
  invoke void @_ZN11xercesc_2_712XSDDOMParser20setUserErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(368) %4, ptr noundef %62)
          to label %63 unwind label %85

63:                                               ; preds = %61
  %64 = load ptr, ptr %1, align 8, !tbaa !155
  %65 = getelementptr inbounds ptr, ptr %64, i64 6
  %66 = load ptr, ptr %65, align 8
  %67 = invoke noundef zeroext i1 %66(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %68 unwind label %87

68:                                               ; preds = %63
  %69 = load ptr, ptr %1, align 8, !tbaa !155
  %70 = getelementptr inbounds ptr, ptr %69, i64 10
  %71 = load ptr, ptr %70, align 8
  invoke void %71(ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext false)
          to label %72 unwind label %87

72:                                               ; preds = %68
  invoke void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %73 unwind label %87

73:                                               ; preds = %72
  %74 = load ptr, ptr %1, align 8, !tbaa !155
  %75 = getelementptr inbounds ptr, ptr %74, i64 10
  %76 = load ptr, ptr %75, align 8
  invoke void %76(ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %67)
          to label %77 unwind label %87

77:                                               ; preds = %73
  %78 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %4, i64 0, i32 1
  %79 = load i8, ptr %78, align 8, !tbaa !684, !range !158, !noundef !254
  %80 = icmp eq i8 %79, 0
  %81 = load i8, ptr %16, align 1, !range !158
  %82 = icmp eq i8 %81, 0
  %83 = select i1 %80, i1 true, i1 %82
  br i1 %83, label %89, label %84

84:                                               ; preds = %77
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 297)
          to label %89 unwind label %87

85:                                               ; preds = %61, %58, %57, %54
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %184

87:                                               ; preds = %84, %73, %72, %68, %63
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %184

89:                                               ; preds = %84, %77
  %90 = invoke noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %4)
          to label %91 unwind label %150

91:                                               ; preds = %89
  %92 = icmp eq ptr %90, null
  br i1 %92, label %181, label %93

93:                                               ; preds = %91
  %94 = load ptr, ptr %90, align 8, !tbaa !155
  %95 = getelementptr inbounds ptr, ptr %94, i64 13
  %96 = load ptr, ptr %95, align 8
  %97 = invoke noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(32) %90)
          to label %98 unwind label %152

98:                                               ; preds = %93
  %99 = icmp eq ptr %97, null
  br i1 %99, label %179, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %102 = load ptr, ptr %101, align 8, !tbaa !504
  %103 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 160, ptr noundef %102)
          to label %104 unwind label %154

104:                                              ; preds = %100
  %105 = load ptr, ptr %101, align 8, !tbaa !504
  invoke void @_ZN11xercesc_2_713SchemaGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %103, ptr noundef %105)
          to label %106 unwind label %156

106:                                              ; preds = %104
  %107 = load ptr, ptr %103, align 8, !tbaa !155
  %108 = getelementptr inbounds ptr, ptr %107, i64 22
  %109 = load ptr, ptr %108, align 8
  %110 = invoke noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(160) %103)
          to label %111 unwind label %158

111:                                              ; preds = %106
  %112 = load ptr, ptr %110, align 8, !tbaa !155
  %113 = getelementptr inbounds ptr, ptr %112, i64 13
  %114 = load ptr, ptr %113, align 8
  invoke void %114(ptr noundef nonnull align 8 dereferenceable(16) %110, i32 noundef 3)
          to label %115 unwind label %158

115:                                              ; preds = %111
  %116 = load ptr, ptr %1, align 8, !tbaa !155
  %117 = getelementptr inbounds ptr, ptr %116, i64 5
  %118 = load ptr, ptr %117, align 8
  %119 = invoke noundef ptr %118(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %120 unwind label %158

120:                                              ; preds = %115
  %121 = load ptr, ptr %110, align 8, !tbaa !155
  %122 = getelementptr inbounds ptr, ptr %121, i64 15
  %123 = load ptr, ptr %122, align 8
  invoke void %123(ptr noundef nonnull align 8 dereferenceable(16) %110, ptr noundef %119)
          to label %124 unwind label %158

124:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 552, ptr nonnull %5) #14
  %125 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %126 = load ptr, ptr %125, align 8, !tbaa !252
  %127 = load ptr, ptr %19, align 8, !tbaa !246
  %128 = load ptr, ptr %1, align 8, !tbaa !155
  %129 = getelementptr inbounds ptr, ptr %128, i64 5
  %130 = load ptr, ptr %129, align 8
  %131 = invoke noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %132 unwind label %160

132:                                              ; preds = %124
  %133 = load ptr, ptr %59, align 8, !tbaa !520
  %134 = load ptr, ptr %12, align 8, !tbaa !508
  %135 = load ptr, ptr %55, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_714TraverseSchemaC1EPNS_10DOMElementEPNS_13XMLStringPoolEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_10XMLScannerEPKtPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(552) %5, ptr noundef nonnull %97, ptr noundef %126, ptr noundef nonnull %103, ptr noundef %127, ptr noundef nonnull %0, ptr noundef %131, ptr noundef %133, ptr noundef %134, ptr noundef %135)
          to label %136 unwind label %160

136:                                              ; preds = %132
  %137 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %138 = load i8, ptr %137, align 8, !tbaa !253, !range !158, !noundef !254
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %164, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr %32, align 8, !tbaa !160
  %142 = load ptr, ptr %141, align 8, !tbaa !155
  %143 = getelementptr inbounds ptr, ptr %142, i64 11
  %144 = load ptr, ptr %143, align 8
  invoke void %144(ptr noundef nonnull align 8 dereferenceable(40) %141, ptr noundef nonnull %103)
          to label %145 unwind label %162

145:                                              ; preds = %140
  %146 = load ptr, ptr %32, align 8, !tbaa !160
  %147 = load ptr, ptr %146, align 8, !tbaa !155
  %148 = getelementptr inbounds ptr, ptr %147, i64 4
  %149 = load ptr, ptr %148, align 8
  invoke void %149(ptr noundef nonnull align 8 dereferenceable(40) %146, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %164 unwind label %162

150:                                              ; preds = %89
  %151 = landingpad { ptr, i32 }
          cleanup
  br label %184

152:                                              ; preds = %93
  %153 = landingpad { ptr, i32 }
          cleanup
  br label %184

154:                                              ; preds = %100
  %155 = landingpad { ptr, i32 }
          cleanup
  br label %184

156:                                              ; preds = %104
  %157 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %103, ptr noundef %102) #14
  br label %184

158:                                              ; preds = %120, %115, %111, %106
  %159 = landingpad { ptr, i32 }
          cleanup
  br label %184

160:                                              ; preds = %132, %124
  %161 = landingpad { ptr, i32 }
          cleanup
  br label %177

162:                                              ; preds = %171, %165, %145, %140
  %163 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_714TraverseSchemaD1Ev(ptr noundef nonnull align 8 dereferenceable(552) %5) #14
  br label %177

164:                                              ; preds = %145, %136
  br i1 %2, label %165, label %167

165:                                              ; preds = %164
  %166 = load ptr, ptr %19, align 8, !tbaa !246
  invoke void @_ZN11xercesc_2_715GrammarResolver13cacheGrammarsEv(ptr noundef nonnull align 8 dereferenceable(80) %166)
          to label %167 unwind label %162

167:                                              ; preds = %165, %164
  %168 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %169 = load ptr, ptr %168, align 8, !tbaa !257
  %170 = icmp eq ptr %169, null
  br i1 %170, label %176, label %171

171:                                              ; preds = %167
  %172 = load ptr, ptr %19, align 8, !tbaa !246
  %173 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getXSModelEv(ptr noundef nonnull align 8 dereferenceable(80) %172)
          to label %174 unwind label %162

174:                                              ; preds = %171
  %175 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  store ptr %173, ptr %175, align 8, !tbaa !319
  br label %176

176:                                              ; preds = %174, %167
  call void @_ZN11xercesc_2_714TraverseSchemaD1Ev(ptr noundef nonnull align 8 dereferenceable(552) %5) #14
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %5) #14
  br label %179

177:                                              ; preds = %162, %160
  %178 = phi { ptr, i32 } [ %163, %162 ], [ %161, %160 ]
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %5) #14
  br label %184

179:                                              ; preds = %98, %176
  %180 = phi ptr [ %103, %176 ], [ undef, %98 ]
  br i1 %99, label %181, label %182

181:                                              ; preds = %179, %91
  br label %182

182:                                              ; preds = %179, %181
  %183 = phi ptr [ null, %181 ], [ %180, %179 ]
  call void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368) %4) #14
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %4) #14
  ret ptr %183

184:                                              ; preds = %87, %152, %158, %177, %156, %154, %150, %85
  %185 = phi { ptr, i32 } [ %86, %85 ], [ %88, %87 ], [ %151, %150 ], [ %153, %152 ], [ %157, %156 ], [ %155, %154 ], [ %178, %177 ], [ %159, %158 ]
  call void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368) %4) #14
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %4) #14
  br label %186

186:                                              ; preds = %184, %50
  %187 = phi { ptr, i32 } [ %185, %184 ], [ %51, %50 ]
  resume { ptr, i32 } %187
}

declare void @_ZN11xercesc_2_715GrammarResolver13cacheGrammarsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !712 {
  %4 = alloca i16, align 2
  %5 = alloca [9 x i16], align 16
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store i32 0, ptr %2, align 8, !tbaa !291
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !293
  store i16 0, ptr %10, align 2, !tbaa !200
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #14
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %12 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef nonnull align 2 dereferenceable(2) %4)
  br i1 %12, label %13, label %164, !prof !192

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !448
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %15, i64 0, i32 15
  %17 = load i32, ptr %16, align 8, !tbaa !713
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  br label %19

19:                                               ; preds = %154, %13
  %20 = phi i1 [ undef, %13 ], [ %153, %154 ]
  br label %21

21:                                               ; preds = %19, %160
  %22 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %11)
          to label %23 unwind label %48, !prof !714

23:                                               ; preds = %21
  %24 = zext i16 %22 to i32
  %25 = load i16, ptr %4, align 2, !tbaa !200
  %26 = icmp eq i16 %22, %25
  br i1 %26, label %131, label %27, !prof !715

27:                                               ; preds = %23
  %28 = icmp eq i16 %22, 38
  br i1 %28, label %81, label %29, !prof !716

29:                                               ; preds = %27
  %30 = add i16 %22, 8192
  %31 = icmp ult i16 %30, -2048
  br i1 %31, label %32, label %61, !prof !717

32:                                               ; preds = %29
  %33 = load ptr, ptr %14, align 8, !tbaa !448
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %33, i64 0, i32 28
  %35 = load ptr, ptr %34, align 8, !tbaa !449
  %36 = zext i16 %22 to i64
  %37 = getelementptr inbounds i8, ptr %35, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !455
  %39 = and i8 %38, 64
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %139, !prof !716

41:                                               ; preds = %32
  %42 = icmp eq i16 %22, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %41
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %45 = call ptr @__cxa_allocate_exception(i64 48) #14
  %46 = load ptr, ptr %44, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr noundef nonnull @.str, i32 noundef 2074, i32 noundef 47, ptr noundef %46)
          to label %47 unwind label %52

47:                                               ; preds = %43
  invoke void @__cxa_throw(ptr nonnull %45, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %166 unwind label %50

48:                                               ; preds = %21, %69, %79, %80, %138, %68, %144
  %49 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %155

50:                                               ; preds = %47
  %51 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %155

52:                                               ; preds = %43
  %53 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @__cxa_free_exception(ptr %45) #14
  br label %155

54:                                               ; preds = %41
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %5) #14
  %56 = load ptr, ptr %55, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %24, ptr noundef nonnull %5, i32 noundef 8, i32 noundef 16, ptr noundef %56)
          to label %57 unwind label %59

57:                                               ; preds = %54
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 218, ptr noundef %1, ptr noundef nonnull %5, ptr noundef null, ptr noundef null)
          to label %58 unwind label %59

58:                                               ; preds = %57
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %5) #14
  br label %139

59:                                               ; preds = %57, %54
  %60 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %5) #14
  br label %155

61:                                               ; preds = %29
  %62 = icmp ult i16 %22, -9216
  br i1 %62, label %63, label %80

63:                                               ; preds = %61
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %65 = load i32, ptr %2, align 8, !tbaa !291
  %66 = load i32, ptr %64, align 4, !tbaa !292
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
          to label %69 unwind label %48

69:                                               ; preds = %68, %63
  %70 = load ptr, ptr %9, align 8, !tbaa !293
  %71 = load i32, ptr %2, align 8, !tbaa !291
  %72 = add i32 %71, 1
  store i32 %72, ptr %2, align 8, !tbaa !291
  %73 = zext i32 %71 to i64
  %74 = getelementptr inbounds i16, ptr %70, i64 %73
  store i16 %22, ptr %74, align 2, !tbaa !200
  %75 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %11)
          to label %76 unwind label %48

76:                                               ; preds = %69
  %77 = add i16 %75, 8192
  %78 = icmp ult i16 %77, -1024
  br i1 %78, label %79, label %139

79:                                               ; preds = %76
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %139 unwind label %48

80:                                               ; preds = %61
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 282)
          to label %139 unwind label %48

81:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #14
  %82 = load ptr, ptr %0, align 8, !tbaa !155
  %83 = getelementptr inbounds ptr, ptr %82, i64 13
  %84 = load ptr, ptr %83, align 8
  %85 = invoke noundef i32 %84(ptr noundef nonnull align 8 dereferenceable(1024) %0, i1 noundef zeroext true, ptr noundef nonnull align 2 dereferenceable(2) %7, ptr noundef nonnull align 2 dereferenceable(2) %8, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %86 unwind label %103

86:                                               ; preds = %81
  %87 = icmp eq i32 %85, 1
  br i1 %87, label %88, label %130

88:                                               ; preds = %86
  %89 = load i8, ptr %6, align 1, !tbaa !185, !range !158, !noundef !254
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %93 = load i32, ptr %2, align 8, !tbaa !291
  %94 = load i32, ptr %92, align 4, !tbaa !292
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
          to label %97 unwind label %103

97:                                               ; preds = %96, %91
  %98 = load ptr, ptr %9, align 8, !tbaa !293
  %99 = load i32, ptr %2, align 8, !tbaa !291
  %100 = add i32 %99, 1
  store i32 %100, ptr %2, align 8, !tbaa !291
  %101 = zext i32 %99 to i64
  %102 = getelementptr inbounds i16, ptr %98, i64 %101
  store i16 -1, ptr %102, align 2, !tbaa !200
  br label %105

103:                                              ; preds = %123, %111, %96, %81
  %104 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #14
  br label %155

105:                                              ; preds = %97, %88
  %106 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %107 = load i16, ptr %7, align 2, !tbaa !200
  %108 = load i32, ptr %2, align 8, !tbaa !291
  %109 = load i32, ptr %106, align 4, !tbaa !292
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
          to label %112 unwind label %103

112:                                              ; preds = %111, %105
  %113 = load ptr, ptr %9, align 8, !tbaa !293
  %114 = load i32, ptr %2, align 8, !tbaa !291
  %115 = add i32 %114, 1
  store i32 %115, ptr %2, align 8, !tbaa !291
  %116 = zext i32 %114 to i64
  %117 = getelementptr inbounds i16, ptr %113, i64 %116
  store i16 %107, ptr %117, align 2, !tbaa !200
  %118 = load i16, ptr %8, align 2, !tbaa !200
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %112
  %121 = load i32, ptr %106, align 4, !tbaa !292
  %122 = icmp eq i32 %115, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
          to label %124 unwind label %103

124:                                              ; preds = %123, %120
  %125 = load ptr, ptr %9, align 8, !tbaa !293
  %126 = load i32, ptr %2, align 8, !tbaa !291
  %127 = add i32 %126, 1
  store i32 %127, ptr %2, align 8, !tbaa !291
  %128 = zext i32 %126 to i64
  %129 = getelementptr inbounds i16, ptr %125, i64 %128
  store i16 %118, ptr %129, align 2, !tbaa !200
  br label %130

130:                                              ; preds = %112, %86, %124
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #14
  br label %151

131:                                              ; preds = %23
  %132 = load ptr, ptr %14, align 8, !tbaa !448
  %133 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %132, i64 0, i32 15
  %134 = load i32, ptr %133, align 8, !tbaa !713
  %135 = icmp eq i32 %17, %134
  br i1 %135, label %151, label %136, !prof !192

136:                                              ; preds = %131
  %137 = icmp ugt i32 %17, %134
  br i1 %137, label %138, label %139

138:                                              ; preds = %136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %151 unwind label %48

139:                                              ; preds = %80, %79, %136, %76, %32, %58
  %140 = phi i16 [ %22, %32 ], [ %22, %58 ], [ %75, %76 ], [ %22, %136 ], [ %75, %79 ], [ %22, %80 ]
  %141 = load i32, ptr %2, align 8, !tbaa !291
  %142 = load i32, ptr %18, align 4, !tbaa !292
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %145, !prof !716

144:                                              ; preds = %139
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
          to label %145 unwind label %48

145:                                              ; preds = %144, %139
  %146 = load ptr, ptr %9, align 8, !tbaa !293
  %147 = load i32, ptr %2, align 8, !tbaa !291
  %148 = add i32 %147, 1
  store i32 %148, ptr %2, align 8, !tbaa !291
  %149 = zext i32 %147 to i64
  %150 = getelementptr inbounds i16, ptr %146, i64 %149
  store i16 %140, ptr %150, align 2, !tbaa !200
  br label %151

151:                                              ; preds = %138, %131, %145, %130
  %152 = phi i32 [ 4, %130 ], [ 0, %145 ], [ 1, %131 ], [ 1, %138 ]
  %153 = phi i1 [ %20, %130 ], [ %20, %145 ], [ %135, %131 ], [ %135, %138 ]
  switch i32 %152, label %164 [
    i32 0, label %154
    i32 4, label %154
  ], !prof !718

154:                                              ; preds = %151, %151
  br label %19, !llvm.loop !719

155:                                              ; preds = %48, %50, %103, %59, %52
  %156 = phi { ptr, i32 } [ %53, %52 ], [ %60, %59 ], [ %104, %103 ], [ %49, %48 ], [ %51, %50 ]
  %157 = extractvalue { ptr, i32 } %156, 1
  %158 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #14
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = extractvalue { ptr, i32 } %156, 0
  %162 = call ptr @__cxa_begin_catch(ptr %161) #14
  call void @__cxa_end_catch()
  br label %21, !llvm.loop !720

163:                                              ; preds = %155
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #14
  resume { ptr, i32 } %156

164:                                              ; preds = %151, %3
  %165 = phi i1 [ false, %3 ], [ %153, %151 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #14
  ret i1 %165

166:                                              ; preds = %47
  unreachable
}

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #6

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #9

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !721 {
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  %9 = alloca [9 x i16], align 16
  %10 = icmp eq ptr %1, null
  br i1 %10, label %15, label %11, !prof !722

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !317
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %4, %11
  %16 = phi i1 [ %14, %11 ], [ true, %4 ]
  store i32 0, ptr %3, align 8, !tbaa !291
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !293
  store i16 0, ptr %18, align 2, !tbaa !200
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #14
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %20 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %19, ptr noundef nonnull align 2 dereferenceable(2) %5)
  br i1 %20, label %21, label %253, !prof !722

21:                                               ; preds = %15
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !448
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %23, i64 0, i32 15
  %25 = load i32, ptr %24, align 8, !tbaa !713
  br i1 %10, label %30, label %26, !prof !722

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 5
  %28 = load i8, ptr %27, align 1, !tbaa !443, !range !158, !noundef !254
  %29 = icmp eq i8 %28, 0
  br label %30

30:                                               ; preds = %21, %26
  %31 = phi i1 [ %29, %26 ], [ true, %21 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #14
  store i16 0, ptr %7, align 2, !tbaa !200
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #14
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 1
  br label %33

33:                                               ; preds = %121, %30
  %34 = phi i32 [ 1, %30 ], [ %122, %121 ]
  %35 = phi i8 [ 0, %30 ], [ %123, %121 ]
  %36 = phi i8 [ 0, %30 ], [ %124, %121 ]
  br label %37

37:                                               ; preds = %224, %33
  %38 = phi i32 [ %34, %33 ], [ 0, %224 ]
  %39 = phi i8 [ %36, %33 ], [ %126, %224 ]
  br label %40

40:                                               ; preds = %37, %81
  %41 = phi i8 [ 0, %81 ], [ %39, %37 ]
  %42 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %19)
          to label %43 unwind label %50, !prof !723

43:                                               ; preds = %40
  store i16 %42, ptr %6, align 2, !tbaa !200
  %44 = icmp eq i16 %42, 0
  br i1 %44, label %45, label %63, !prof !724

45:                                               ; preds = %43
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %47 = call ptr @__cxa_allocate_exception(i64 48) #14
  %48 = load ptr, ptr %46, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %47, ptr noundef nonnull @.str, i32 noundef 2217, i32 noundef 47, ptr noundef %48)
          to label %49 unwind label %61

49:                                               ; preds = %45
  invoke void @__cxa_throw(ptr nonnull %47, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %255 unwind label %59

50:                                               ; preds = %76, %40
  %51 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %111

52:                                               ; preds = %88, %90, %92, %132, %221, %211
  %53 = phi i32 [ 0, %211 ], [ %38, %92 ], [ %38, %90 ], [ %38, %88 ], [ %38, %132 ], [ 0, %221 ]
  %54 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %111

55:                                               ; preds = %148, %176, %232, %244
  %56 = phi i32 [ %226, %244 ], [ %226, %232 ], [ 0, %176 ], [ %34, %148 ]
  %57 = phi i8 [ %227, %244 ], [ %227, %232 ], [ %35, %176 ], [ %35, %148 ]
  %58 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %111

59:                                               ; preds = %49, %73
  %60 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %111

61:                                               ; preds = %45
  %62 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @__cxa_free_exception(ptr %47) #14
  br label %111

63:                                               ; preds = %43
  %64 = load i16, ptr %5, align 2, !tbaa !200
  %65 = icmp eq i16 %42, %64
  br i1 %65, label %66, label %74, !prof !725

66:                                               ; preds = %63
  %67 = load ptr, ptr %22, align 8, !tbaa !448
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %67, i64 0, i32 15
  %69 = load i32, ptr %68, align 8, !tbaa !713
  %70 = icmp eq i32 %25, %69
  br i1 %70, label %251, label %71, !prof !722

71:                                               ; preds = %66
  %72 = icmp ugt i32 %25, %69
  br i1 %72, label %73, label %74

73:                                               ; preds = %71
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %251 unwind label %59

74:                                               ; preds = %71, %63
  store i8 0, ptr %8, align 1, !tbaa !185
  %75 = icmp eq i16 %42, 38
  br i1 %75, label %76, label %83, !prof !726

76:                                               ; preds = %74
  %77 = load ptr, ptr %0, align 8, !tbaa !155
  %78 = getelementptr inbounds ptr, ptr %77, i64 13
  %79 = load ptr, ptr %78, align 8
  %80 = invoke noundef i32 %79(ptr noundef nonnull align 8 dereferenceable(1024) %0, i1 noundef zeroext true, ptr noundef nonnull align 2 dereferenceable(2) %6, ptr noundef nonnull align 2 dereferenceable(2) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %81 unwind label %50

81:                                               ; preds = %76
  %82 = icmp eq i32 %80, 1
  br i1 %82, label %125, label %40, !llvm.loop !727

83:                                               ; preds = %74
  %84 = and i16 %42, -1024
  %85 = and i8 %41, 1
  %86 = icmp eq i8 %85, 0
  switch i16 %84, label %91 [
    i16 -10240, label %87
    i16 -9216, label %89
  ], !prof !728

87:                                               ; preds = %83
  br i1 %86, label %125, label %88

88:                                               ; preds = %87
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %125 unwind label %52

89:                                               ; preds = %83
  br i1 %86, label %90, label %125

90:                                               ; preds = %89
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 282)
          to label %125 unwind label %52

91:                                               ; preds = %83
  br i1 %86, label %93, label %92, !prof !729

92:                                               ; preds = %91
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %93 unwind label %52

93:                                               ; preds = %92, %91
  %94 = load ptr, ptr %22, align 8, !tbaa !448
  %95 = load i16, ptr %6, align 2, !tbaa !200
  %96 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %94, i64 0, i32 28
  %97 = load ptr, ptr %96, align 8, !tbaa !449
  %98 = zext i16 %95 to i64
  %99 = getelementptr inbounds i8, ptr %97, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !455
  %101 = and i8 %100, 64
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %125, !prof !726

103:                                              ; preds = %93
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %9) #14
  %105 = zext i16 %95 to i32
  %106 = load ptr, ptr %104, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %105, ptr noundef nonnull %9, i32 noundef 8, i32 noundef 16, ptr noundef %106)
          to label %107 unwind label %109

107:                                              ; preds = %103
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 218, ptr noundef %2, ptr noundef nonnull %9, ptr noundef null, ptr noundef null)
          to label %108 unwind label %109

108:                                              ; preds = %107
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %9) #14
  br label %125

109:                                              ; preds = %107, %103
  %110 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %9) #14
  br label %111

111:                                              ; preds = %59, %52, %55, %50, %109, %61
  %112 = phi i32 [ %38, %109 ], [ %38, %61 ], [ %38, %59 ], [ %38, %50 ], [ %53, %52 ], [ %56, %55 ]
  %113 = phi i8 [ %35, %109 ], [ %35, %61 ], [ %35, %59 ], [ %35, %50 ], [ %35, %52 ], [ %57, %55 ]
  %114 = phi { ptr, i32 } [ %110, %109 ], [ %62, %61 ], [ %60, %59 ], [ %51, %50 ], [ %54, %52 ], [ %58, %55 ]
  %115 = extractvalue { ptr, i32 } %114, 1
  %116 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #14
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %252

118:                                              ; preds = %111
  %119 = extractvalue { ptr, i32 } %114, 0
  %120 = call ptr @__cxa_begin_catch(ptr %119) #14
  store i8 0, ptr %8, align 1, !tbaa !185
  call void @__cxa_end_catch()
  br label %121

121:                                              ; preds = %118, %245, %233
  %122 = phi i32 [ %112, %118 ], [ %226, %245 ], [ %226, %233 ]
  %123 = phi i8 [ %113, %118 ], [ %227, %245 ], [ %227, %233 ]
  %124 = phi i8 [ 0, %118 ], [ %126, %245 ], [ %126, %233 ]
  br label %33, !llvm.loop !727

125:                                              ; preds = %81, %90, %88, %89, %108, %93, %87
  %126 = phi i8 [ 1, %87 ], [ 0, %93 ], [ 0, %108 ], [ 0, %89 ], [ %41, %88 ], [ 0, %90 ], [ %41, %81 ]
  %127 = load i8, ptr %8, align 1, !tbaa !185, !range !158, !noundef !254
  %128 = icmp eq i8 %127, 0
  %129 = load i16, ptr %6, align 2
  %130 = icmp eq i16 %129, 60
  %131 = select i1 %128, i1 %130, i1 false, !prof !729
  br i1 %131, label %132, label %133, !prof !726

132:                                              ; preds = %125
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 248, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %133 unwind label %52

133:                                              ; preds = %132, %125
  br i1 %16, label %134, label %152, !prof !729

134:                                              ; preds = %133
  %135 = load i8, ptr %8, align 1, !tbaa !185, !range !158, !noundef !254
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %225, !prof !729

137:                                              ; preds = %134
  %138 = load i16, ptr %6, align 2
  switch i16 %138, label %225 [
    i16 13, label %139
    i16 10, label %139
    i16 9, label %139
  ], !prof !730

139:                                              ; preds = %137, %137, %137
  %140 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %141 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %142 = load i8, ptr %140, align 2, !tbaa !446, !range !158, !noundef !254
  %143 = icmp eq i8 %142, 0
  %144 = load i8, ptr %141, align 8, !range !158
  %145 = icmp eq i8 %144, 0
  %146 = select i1 %143, i1 true, i1 %145
  %147 = or i1 %146, %31
  br i1 %147, label %151, label %148

148:                                              ; preds = %139
  %149 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %150 = load ptr, ptr %149, align 8, !tbaa !160
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %150, i32 noundef 83, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %151 unwind label %55

151:                                              ; preds = %139, %148
  store i16 32, ptr %6, align 2, !tbaa !200
  br label %225

152:                                              ; preds = %133
  %153 = icmp eq i32 %38, 0
  br i1 %153, label %154, label %183

154:                                              ; preds = %152
  %155 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 1
  %156 = load i8, ptr %8, align 1, !tbaa !185, !range !158, !noundef !254
  %157 = icmp ne i8 %156, 0
  %158 = load i16, ptr %6, align 2
  %159 = icmp ne i16 %158, 32
  %160 = select i1 %157, i1 %159, i1 false
  br i1 %160, label %169, label %161

161:                                              ; preds = %154
  %162 = load ptr, ptr %22, align 8, !tbaa !448
  %163 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %162, i64 0, i32 28
  %164 = load ptr, ptr %163, align 8, !tbaa !449
  %165 = zext i16 %158 to i64
  %166 = getelementptr inbounds i8, ptr %164, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !455
  %168 = icmp slt i8 %167, 0
  br i1 %168, label %224, label %169

169:                                              ; preds = %154, %161
  %170 = and i8 %35, 1
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %225, label %172

172:                                              ; preds = %169
  %173 = load i32, ptr %3, align 8, !tbaa !291
  %174 = load i32, ptr %155, align 4, !tbaa !292
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 1)
          to label %177 unwind label %55

177:                                              ; preds = %176, %172
  %178 = load ptr, ptr %17, align 8, !tbaa !293
  %179 = load i32, ptr %3, align 8, !tbaa !291
  %180 = add i32 %179, 1
  store i32 %180, ptr %3, align 8, !tbaa !291
  %181 = zext i32 %179 to i64
  %182 = getelementptr inbounds i16, ptr %178, i64 %181
  store i16 32, ptr %182, align 2, !tbaa !200
  br label %225

183:                                              ; preds = %152
  %184 = load i16, ptr %6, align 2
  %185 = icmp eq i16 %184, 32
  br i1 %185, label %197, label %186

186:                                              ; preds = %183
  %187 = load ptr, ptr %22, align 8, !tbaa !448
  %188 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %187, i64 0, i32 28
  %189 = load ptr, ptr %188, align 8, !tbaa !449
  %190 = zext i16 %184 to i64
  %191 = getelementptr inbounds i8, ptr %189, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !455
  %193 = icmp slt i8 %192, 0
  %194 = load i8, ptr %8, align 1, !range !158
  %195 = icmp eq i8 %194, 0
  %196 = select i1 %193, i1 %195, i1 false
  br i1 %196, label %197, label %225

197:                                              ; preds = %186, %183
  %198 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %199 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %200 = load i8, ptr %198, align 2, !tbaa !446, !range !158, !noundef !254
  %201 = icmp eq i8 %200, 0
  %202 = load i8, ptr %199, align 8, !range !158
  %203 = icmp eq i8 %202, 0
  %204 = select i1 %201, i1 true, i1 %203
  %205 = or i1 %204, %31
  br i1 %205, label %224, label %206

206:                                              ; preds = %197
  %207 = and i8 %35, 1
  %208 = icmp eq i8 %207, 0
  %209 = icmp ne i16 %184, 32
  %210 = or i1 %208, %209
  br i1 %210, label %221, label %211

211:                                              ; preds = %206
  %212 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %19)
          to label %213 unwind label %52

213:                                              ; preds = %211
  %214 = load ptr, ptr %22, align 8, !tbaa !448
  %215 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %214, i64 0, i32 28
  %216 = load ptr, ptr %215, align 8, !tbaa !449
  %217 = zext i16 %212 to i64
  %218 = getelementptr inbounds i8, ptr %216, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !455
  %220 = icmp slt i8 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %213, %206
  %222 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %223 = load ptr, ptr %222, align 8, !tbaa !160
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %223, i32 noundef 83, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %224 unwind label %52

224:                                              ; preds = %221, %213, %197, %161
  br label %37, !llvm.loop !727

225:                                              ; preds = %186, %137, %177, %169, %134, %151
  %226 = phi i32 [ %34, %134 ], [ %34, %151 ], [ 1, %177 ], [ 1, %169 ], [ %34, %137 ], [ 1, %186 ]
  %227 = phi i8 [ %35, %134 ], [ %35, %151 ], [ 1, %177 ], [ 1, %169 ], [ %35, %137 ], [ 1, %186 ]
  %228 = load i16, ptr %6, align 2, !tbaa !200
  %229 = load i32, ptr %3, align 8, !tbaa !291
  %230 = load i32, ptr %32, align 4, !tbaa !292
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %233, !prof !726

232:                                              ; preds = %225
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 1)
          to label %233 unwind label %55

233:                                              ; preds = %232, %225
  %234 = load ptr, ptr %17, align 8, !tbaa !293
  %235 = load i32, ptr %3, align 8, !tbaa !291
  %236 = add i32 %235, 1
  store i32 %236, ptr %3, align 8, !tbaa !291
  %237 = zext i32 %235 to i64
  %238 = getelementptr inbounds i16, ptr %234, i64 %237
  store i16 %228, ptr %238, align 2, !tbaa !200
  %239 = load i16, ptr %7, align 2, !tbaa !200
  %240 = icmp eq i16 %239, 0
  br i1 %240, label %121, label %241, !prof !729

241:                                              ; preds = %233
  %242 = load i32, ptr %32, align 4, !tbaa !292
  %243 = icmp eq i32 %236, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 1)
          to label %245 unwind label %55

245:                                              ; preds = %244, %241
  %246 = load ptr, ptr %17, align 8, !tbaa !293
  %247 = load i32, ptr %3, align 8, !tbaa !291
  %248 = add i32 %247, 1
  store i32 %248, ptr %3, align 8, !tbaa !291
  %249 = zext i32 %247 to i64
  %250 = getelementptr inbounds i16, ptr %246, i64 %249
  store i16 %239, ptr %250, align 2, !tbaa !200
  store i16 0, ptr %7, align 2, !tbaa !200
  br label %121

251:                                              ; preds = %73, %66
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #14
  br label %253

252:                                              ; preds = %111
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #14
  resume { ptr, i32 } %114

253:                                              ; preds = %15, %251
  %254 = phi i1 [ %70, %251 ], [ false, %15 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #14
  ret i1 %254

255:                                              ; preds = %49
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner13scanCDSectionEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = alloca [9 x i16], align 16
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %3, i16 noundef zeroext 91)
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 261)
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext false)
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %3, i16 noundef zeroext 91)
  br i1 %7, label %8, label %255

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %10 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %12 = invoke noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %11)
          to label %13 unwind label %44

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %15 = load ptr, ptr %14, align 8, !tbaa !140
  %16 = load ptr, ptr %15, align 8, !tbaa !155
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %20 unwind label %46

20:                                               ; preds = %13
  %21 = icmp eq i32 %19, 1
  br i1 %21, label %22, label %50

22:                                               ; preds = %20
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %24 = load ptr, ptr %23, align 8, !tbaa !160
  %25 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %24, i64 0, i32 14
  %26 = load ptr, ptr %25, align 8, !tbaa !161
  %27 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.7", ptr %26, i64 0, i32 1, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !165
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %26)
          to label %32 unwind label %48

32:                                               ; preds = %30
  %33 = load ptr, ptr %31, align 8, !tbaa !168
  br label %34

34:                                               ; preds = %32, %22
  %35 = phi ptr [ %33, %32 ], [ null, %22 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %56, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %35, i64 0, i32 10
  %39 = load i32, ptr %38, align 8, !tbaa !593
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 0, i32 2
  %42 = icmp eq i32 %39, 4
  %43 = select i1 %42, i32 1, i32 %41
  br label %56

44:                                               ; preds = %8
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %256

46:                                               ; preds = %50, %13
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %256

48:                                               ; preds = %30
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %256

50:                                               ; preds = %20
  %51 = load ptr, ptr %12, align 8, !tbaa !596
  %52 = load ptr, ptr %51, align 8, !tbaa !155
  %53 = getelementptr inbounds ptr, ptr %52, i64 7
  %54 = load ptr, ptr %53, align 8
  %55 = invoke noundef i32 %54(ptr noundef nonnull align 8 dereferenceable(33) %51)
          to label %56 unwind label %46

56:                                               ; preds = %37, %50, %34
  %57 = phi i32 [ 2, %34 ], [ %55, %50 ], [ %43, %37 ]
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %61 = icmp eq i32 %57, 1
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 1
  %67 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 6
  %68 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %69 = icmp ne i32 %57, 2
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 6
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 6
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  %76 = icmp eq i32 %57, 2
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  %78 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  %79 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 6
  br label %82

82:                                               ; preds = %247, %56
  %83 = phi i8 [ 0, %56 ], [ %248, %247 ]
  %84 = phi i8 [ 0, %56 ], [ %249, %247 ]
  %85 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %86 unwind label %94

86:                                               ; preds = %82
  %87 = icmp eq i16 %85, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %86
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 264)
          to label %89 unwind label %96

89:                                               ; preds = %88
  %90 = call ptr @__cxa_allocate_exception(i64 48) #14
  %91 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %92 = load ptr, ptr %91, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %90, ptr noundef nonnull @.str, i32 noundef 2442, i32 noundef 47, ptr noundef %92)
          to label %93 unwind label %98

93:                                               ; preds = %89
  invoke void @__cxa_throw(ptr nonnull %90, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %262 unwind label %96

94:                                               ; preds = %216, %82, %120, %132, %193, %198, %214, %125, %240
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %256

96:                                               ; preds = %88, %93
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %256

98:                                               ; preds = %89
  %99 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %90) #14
  br label %256

100:                                              ; preds = %86
  %101 = load i8, ptr %58, align 8, !tbaa !253, !range !158, !noundef !254
  %102 = icmp eq i8 %101, 0
  %103 = load i8, ptr %59, align 2, !range !158
  %104 = icmp eq i8 %103, 0
  %105 = select i1 %102, i1 true, i1 %104
  br i1 %105, label %122, label %106

106:                                              ; preds = %100
  %107 = load ptr, ptr %60, align 8, !tbaa !448
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %107, i64 0, i32 28
  %109 = load ptr, ptr %108, align 8, !tbaa !449
  %110 = zext i16 %85 to i64
  %111 = getelementptr inbounds i8, ptr %109, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !455
  %113 = icmp slt i8 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %106
  %115 = load ptr, ptr %12, align 8, !tbaa !596
  %116 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %115, i64 0, i32 5
  %117 = load i8, ptr %116, align 8, !tbaa !731, !range !158, !noundef !254
  %118 = icmp ne i8 %117, 0
  %119 = and i1 %61, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load ptr, ptr %62, align 8, !tbaa !160
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %121, i32 noundef 84)
          to label %122 unwind label %94

122:                                              ; preds = %120, %114, %106, %100
  %123 = zext i16 %85 to i32
  %124 = icmp eq i16 %85, 93
  br i1 %124, label %125, label %206

125:                                              ; preds = %122
  %126 = load ptr, ptr %63, align 8, !tbaa !448
  %127 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %126, ptr noundef nonnull @_ZZN11xercesc_2_712IGXMLScanner13scanCDSectionEvE10CDataClose)
          to label %128 unwind label %94

128:                                              ; preds = %125
  br i1 %127, label %129, label %206

129:                                              ; preds = %128
  %130 = and i8 %83, 1
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %133 unwind label %94

133:                                              ; preds = %132, %129
  %134 = load i32, ptr %68, align 4, !tbaa !186
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %189

136:                                              ; preds = %133
  %137 = load i32, ptr %10, align 8, !tbaa !291
  %138 = load ptr, ptr %71, align 8, !tbaa !293
  %139 = zext i32 %137 to i64
  %140 = getelementptr inbounds i16, ptr %138, i64 %139
  store i16 0, ptr %140, align 2, !tbaa !200
  %141 = load ptr, ptr %72, align 8, !tbaa !160
  %142 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %141, i64 0, i32 7
  %143 = load ptr, ptr %142, align 8, !tbaa !170
  %144 = icmp eq ptr %143, null
  br i1 %144, label %163, label %145

145:                                              ; preds = %136
  %146 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %143, i64 0, i32 5
  %147 = load i16, ptr %146, align 4, !tbaa !300
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %163, label %149

149:                                              ; preds = %145
  invoke void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %141, ptr noundef nonnull %143, ptr noundef %138, ptr noundef nonnull align 8 dereferenceable(40) %73)
          to label %150 unwind label %161

150:                                              ; preds = %149
  %151 = load ptr, ptr %74, align 8, !tbaa !293
  %152 = load i32, ptr %73, align 8, !tbaa !291
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i16, ptr %151, i64 %153
  store i16 0, ptr %154, align 2, !tbaa !200
  %155 = load i8, ptr %75, align 8, !tbaa !304, !range !158, !noundef !254
  %156 = icmp eq i8 %155, 0
  %157 = load i8, ptr %58, align 8, !range !158
  %158 = icmp eq i8 %157, 0
  %159 = select i1 %156, i1 true, i1 %158
  br i1 %159, label %163, label %160

160:                                              ; preds = %150
  store i32 0, ptr %10, align 8, !tbaa !291
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef %151)
          to label %163 unwind label %161

161:                                              ; preds = %160, %168, %188, %172, %149
  %162 = landingpad { ptr, i32 }
          cleanup
  br label %256

163:                                              ; preds = %160, %150, %145, %136
  %164 = phi i32 [ %152, %150 ], [ %137, %145 ], [ %137, %136 ], [ %152, %160 ]
  %165 = phi ptr [ %151, %150 ], [ %138, %145 ], [ %138, %136 ], [ %151, %160 ]
  %166 = load i8, ptr %58, align 8, !tbaa !253, !range !158, !noundef !254
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %163
  %169 = load ptr, ptr %72, align 8, !tbaa !160
  %170 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %169, i64 0, i32 9
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %170, ptr noundef %165)
          to label %171 unwind label %161

171:                                              ; preds = %168
  br i1 %76, label %174, label %172

172:                                              ; preds = %171
  %173 = load ptr, ptr %72, align 8, !tbaa !160
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %173, i32 noundef 22)
          to label %174 unwind label %161

174:                                              ; preds = %172, %171, %163
  %175 = load i8, ptr %58, align 8, !tbaa !253, !range !158, !noundef !254
  %176 = icmp ne i8 %175, 0
  %177 = load i8, ptr %77, align 4, !range !158
  %178 = icmp ne i8 %177, 0
  %179 = select i1 %176, i1 %178, i1 false
  %180 = load ptr, ptr %78, align 8
  %181 = icmp ne ptr %180, null
  %182 = select i1 %179, i1 %181, i1 false
  br i1 %182, label %183, label %195

183:                                              ; preds = %174
  %184 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %180, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !604
  %186 = load i32, ptr %185, align 8, !tbaa !606
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %195, label %188

188:                                              ; preds = %183
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %79, ptr noundef %165, i32 noundef %164)
          to label %195 unwind label %161

189:                                              ; preds = %133
  %190 = load i8, ptr %58, align 8, !tbaa !253, !range !158, !noundef !254
  %191 = icmp ne i8 %190, 0
  %192 = and i1 %69, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = load ptr, ptr %70, align 8, !tbaa !160
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %194, i32 noundef 22)
          to label %195 unwind label %94

195:                                              ; preds = %193, %174, %183, %188, %189
  %196 = load ptr, ptr %80, align 8, !tbaa !518
  %197 = icmp eq ptr %196, null
  br i1 %197, label %247, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr %81, align 8, !tbaa !293
  %200 = load i32, ptr %10, align 8, !tbaa !291
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i16, ptr %199, i64 %201
  store i16 0, ptr %202, align 2, !tbaa !200
  %203 = load ptr, ptr %196, align 8, !tbaa !155
  %204 = getelementptr inbounds ptr, ptr %203, i64 2
  %205 = load ptr, ptr %204, align 8
  invoke void %205(ptr noundef nonnull align 8 dereferenceable(8) %196, ptr noundef %199, i32 noundef %200, i1 noundef zeroext true)
          to label %247 unwind label %94

206:                                              ; preds = %128, %122
  %207 = and i8 %84, 1
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %234

209:                                              ; preds = %206
  %210 = and i16 %85, -1024
  %211 = and i8 %83, 1
  %212 = icmp eq i8 %211, 0
  switch i16 %210, label %218 [
    i16 -10240, label %213
    i16 -9216, label %215
  ]

213:                                              ; preds = %209
  br i1 %212, label %234, label %214

214:                                              ; preds = %213
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %234 unwind label %94

215:                                              ; preds = %209
  br i1 %212, label %216, label %234

216:                                              ; preds = %218, %215
  %217 = phi i32 [ 282, %215 ], [ 249, %218 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %217)
          to label %234 unwind label %94

218:                                              ; preds = %209
  br i1 %212, label %219, label %216

219:                                              ; preds = %218
  %220 = load ptr, ptr %64, align 8, !tbaa !448
  %221 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %220, i64 0, i32 28
  %222 = load ptr, ptr %221, align 8, !tbaa !449
  %223 = zext i16 %85 to i64
  %224 = getelementptr inbounds i8, ptr %222, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !455
  %226 = and i8 %225, 64
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %219
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %2) #14
  %229 = load ptr, ptr %65, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %123, ptr noundef nonnull %2, i32 noundef 8, i32 noundef 16, ptr noundef %229)
          to label %230 unwind label %232

230:                                              ; preds = %228
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 196, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %231 unwind label %232

231:                                              ; preds = %230
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #14
  br label %234

232:                                              ; preds = %230, %228
  %233 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #14
  br label %256

234:                                              ; preds = %216, %214, %215, %219, %231, %213, %206
  %235 = phi i8 [ %83, %206 ], [ 1, %213 ], [ 0, %231 ], [ 0, %219 ], [ 0, %215 ], [ %83, %214 ], [ 0, %216 ]
  %236 = phi i8 [ %84, %206 ], [ %84, %213 ], [ 1, %231 ], [ %84, %219 ], [ %84, %215 ], [ %84, %214 ], [ %84, %216 ]
  %237 = load i32, ptr %10, align 8, !tbaa !291
  %238 = load i32, ptr %66, align 4, !tbaa !292
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 1)
          to label %241 unwind label %94

241:                                              ; preds = %240, %234
  %242 = load ptr, ptr %67, align 8, !tbaa !293
  %243 = load i32, ptr %10, align 8, !tbaa !291
  %244 = add i32 %243, 1
  store i32 %244, ptr %10, align 8, !tbaa !291
  %245 = zext i32 %243 to i64
  %246 = getelementptr inbounds i16, ptr %242, i64 %245
  store i16 %85, ptr %246, align 2, !tbaa !200
  br label %247

247:                                              ; preds = %198, %241, %195
  %248 = phi i8 [ %83, %195 ], [ %235, %241 ], [ %83, %198 ]
  %249 = phi i8 [ %84, %195 ], [ %236, %241 ], [ %84, %198 ]
  %250 = phi i1 [ false, %195 ], [ true, %241 ], [ false, %198 ]
  br i1 %250, label %82, label %251

251:                                              ; preds = %247
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %255 unwind label %252

252:                                              ; preds = %251
  %253 = landingpad { ptr, i32 }
          catch ptr null
  %254 = extractvalue { ptr, i32 } %253, 0
  call void @__clang_call_terminate(ptr %254) #15
  unreachable

255:                                              ; preds = %251, %5
  ret void

256:                                              ; preds = %94, %96, %46, %48, %232, %161, %98, %44
  %257 = phi { ptr, i32 } [ %45, %44 ], [ %49, %48 ], [ %47, %46 ], [ %162, %161 ], [ %233, %232 ], [ %99, %98 ], [ %95, %94 ], [ %97, %96 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %261 unwind label %258

258:                                              ; preds = %256
  %259 = landingpad { ptr, i32 }
          catch ptr null
  %260 = extractvalue { ptr, i32 } %259, 0
  call void @__clang_call_terminate(ptr %260) #15
  unreachable

261:                                              ; preds = %256
  resume { ptr, i32 } %257

262:                                              ; preds = %93
  unreachable
}

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !586 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca [9 x i16], align 16
  store i32 0, ptr %1, align 8, !tbaa !291
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !293
  store i16 0, ptr %8, align 2, !tbaa !200
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 7
  %10 = load i8, ptr %9, align 8, !tbaa !732, !range !158, !noundef !254
  store i8 1, ptr %9, align 8, !tbaa !732
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #14
  store i16 0, ptr %4, align 2, !tbaa !200
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #14
  store i8 0, ptr %5, align 1, !tbaa !185
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  br label %13

13:                                               ; preds = %2, %236
  %14 = phi i32 [ 0, %2 ], [ %239, %236 ]
  %15 = phi i8 [ 0, %2 ], [ %238, %236 ]
  %16 = phi i8 [ 1, %2 ], [ %237, %236 ]
  br label %17

17:                                               ; preds = %232, %13
  %18 = phi i8 [ %15, %13 ], [ %194, %232 ]
  %19 = phi i32 [ %14, %13 ], [ %208, %232 ]
  %20 = icmp eq i32 %19, 0
  br label %21

21:                                               ; preds = %17, %143
  %22 = phi i8 [ %144, %143 ], [ %18, %17 ]
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %20, i1 %24, i1 false, !prof !733
  br i1 %25, label %26, label %81, !prof !733

26:                                               ; preds = %21
  %27 = load ptr, ptr %11, align 8, !tbaa !448
  %28 = load i32, ptr %27, align 8, !tbaa !734
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %27, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !735
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %32, label %48, !prof !736

32:                                               ; preds = %26
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %27, i64 0, i32 28
  %34 = load ptr, ptr %33, align 8, !tbaa !449
  br label %35

35:                                               ; preds = %32, %45
  %36 = phi i32 [ %28, %32 ], [ %46, %45 ]
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %27, i64 0, i32 1, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !200
  %40 = zext i16 %39 to i64
  %41 = getelementptr inbounds i8, ptr %34, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !455
  %43 = and i8 %42, 8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %45, !prof !737

45:                                               ; preds = %35
  %46 = add nuw i32 %36, 1
  store i32 %46, ptr %27, align 8, !tbaa !734
  %47 = icmp eq i32 %46, %30
  br i1 %47, label %48, label %35, !prof !738, !llvm.loop !739

48:                                               ; preds = %45, %35, %26
  %49 = phi i32 [ %28, %26 ], [ %30, %45 ], [ %36, %35 ]
  %50 = icmp eq i32 %28, %49
  br i1 %50, label %81, label %51, !prof !740

51:                                               ; preds = %48
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 1
  %53 = sub i32 %49, %28
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %27, i64 0, i32 5
  %56 = load i64, ptr %55, align 8, !tbaa !741
  %57 = add nsw i64 %56, %54
  store i64 %57, ptr %55, align 8, !tbaa !741
  %58 = zext i32 %28 to i64
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %27, i64 0, i32 1, i64 %58
  %60 = load i32, ptr %1, align 8, !tbaa !291
  %61 = add i32 %60, %53
  %62 = load i32, ptr %52, align 4, !tbaa !292
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %65, label %64, !prof !610

64:                                               ; preds = %51
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %53)
          to label %65 unwind label %73

65:                                               ; preds = %64, %51
  %66 = load ptr, ptr %7, align 8, !tbaa !293
  %67 = load i32, ptr %1, align 8, !tbaa !291
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i16, ptr %66, i64 %68
  %70 = shl nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %69, ptr nonnull align 2 %59, i64 %70, i1 false), !prof !742
  %71 = load i32, ptr %1, align 8, !tbaa !291
  %72 = add i32 %71, %53
  store i32 %72, ptr %1, align 8, !tbaa !291
  br label %81

73:                                               ; preds = %64, %108, %91, %114
  %74 = phi i32 [ %19, %114 ], [ %19, %91 ], [ %19, %108 ], [ 0, %64 ]
  %75 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %172

76:                                               ; preds = %225, %213, %206, %152, %150, %148
  %77 = phi i32 [ 2, %206 ], [ %19, %148 ], [ %19, %150 ], [ %19, %152 ], [ %208, %213 ], [ %208, %225 ]
  %78 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %172

79:                                               ; preds = %110
  %80 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %172

81:                                               ; preds = %65, %48, %21
  %82 = load ptr, ptr %12, align 8, !tbaa !448
  %83 = load i32, ptr %82, align 8, !tbaa !734
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %82, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !735
  %86 = icmp ult i32 %83, %85
  br i1 %86, label %94, label %87, !prof !743

87:                                               ; preds = %81
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %82, i64 0, i32 10
  %89 = load i8, ptr %88, align 1, !tbaa !744, !range !158, !noundef !254
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %109, !prof !745

91:                                               ; preds = %87
  %92 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %82)
          to label %93 unwind label %73, !prof !745

93:                                               ; preds = %91
  br i1 %92, label %94, label %109, !prof !745

94:                                               ; preds = %93, %81
  %95 = load i32, ptr %82, align 8, !tbaa !734
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %82, i64 0, i32 1, i64 %96
  %98 = load i16, ptr %97, align 2, !tbaa !200
  %99 = icmp eq i16 %98, 60
  br i1 %99, label %109, label %100, !prof !746

100:                                              ; preds = %94
  %101 = add i32 %95, 1
  store i32 %101, ptr %82, align 8, !tbaa !734
  store i16 %98, ptr %3, align 2, !tbaa !200
  %102 = and i16 %98, -8368
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %108, label %104, !prof !747

104:                                              ; preds = %100
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %82, i64 0, i32 5
  %106 = load i64, ptr %105, align 8, !tbaa !741
  %107 = add nsw i64 %106, 1
  store i64 %107, ptr %105, align 8, !tbaa !741
  br label %111

108:                                              ; preds = %100
  invoke void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %82, ptr noundef nonnull align 2 dereferenceable(2) %3, i1 noundef zeroext false)
          to label %111 unwind label %73, !prof !748

109:                                              ; preds = %94, %93, %87
  br i1 %24, label %236, label %110, !prof !749

110:                                              ; preds = %109
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %236 unwind label %79

111:                                              ; preds = %108, %104
  store i8 0, ptr %5, align 1, !tbaa !185
  %112 = load i16, ptr %3, align 2
  %113 = icmp eq i16 %112, 38
  br i1 %113, label %114, label %145, !prof !750

114:                                              ; preds = %111
  %115 = load ptr, ptr %0, align 8, !tbaa !155
  %116 = getelementptr inbounds ptr, ptr %115, i64 16
  %117 = load ptr, ptr %116, align 8
  invoke void %117(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %118 unwind label %73

118:                                              ; preds = %114
  %119 = load i8, ptr %9, align 8, !tbaa !732, !range !158, !noundef !254
  store i8 0, ptr %9, align 8, !tbaa !732
  %120 = load ptr, ptr %0, align 8, !tbaa !155
  %121 = getelementptr inbounds ptr, ptr %120, i64 13
  %122 = load ptr, ptr %121, align 8
  %123 = invoke noundef i32 %122(ptr noundef nonnull align 8 dereferenceable(1024) %0, i1 noundef zeroext false, ptr noundef nonnull align 2 dereferenceable(2) %3, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %124 unwind label %126

124:                                              ; preds = %118
  %125 = icmp eq i32 %123, 1
  br i1 %125, label %128, label %143, !llvm.loop !751

126:                                              ; preds = %118
  %127 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  store i8 %119, ptr %9, align 8, !tbaa !732
  br label %172

128:                                              ; preds = %124
  %129 = load i8, ptr %5, align 1, !tbaa !185, !range !158, !noundef !254
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %133 = load i32, ptr %132, align 4, !tbaa !699
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !698
  %138 = add i32 %133, -1
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %137, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !168
  %142 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %141, i64 0, i32 10
  store i8 1, ptr %142, align 2, !tbaa !752
  br label %143

143:                                              ; preds = %135, %131, %128, %124
  %144 = phi i8 [ 0, %124 ], [ %22, %128 ], [ %22, %131 ], [ %22, %135 ]
  store i8 %119, ptr %9, align 8, !tbaa !732
  br i1 %125, label %193, label %21

145:                                              ; preds = %111
  %146 = and i16 %112, -1024
  switch i16 %146, label %151 [
    i16 -10240, label %147
    i16 -9216, label %149
  ], !prof !753

147:                                              ; preds = %145
  br i1 %24, label %193, label %148

148:                                              ; preds = %147
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %193 unwind label %76

149:                                              ; preds = %145
  br i1 %24, label %150, label %193

150:                                              ; preds = %149
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 282)
          to label %193 unwind label %76

151:                                              ; preds = %145
  br i1 %24, label %153, label %152, !prof !754

152:                                              ; preds = %151
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %153 unwind label %76

153:                                              ; preds = %152, %151
  %154 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !448
  %156 = load i16, ptr %3, align 2, !tbaa !200
  %157 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %155, i64 0, i32 28
  %158 = load ptr, ptr %157, align 8, !tbaa !449
  %159 = zext i16 %156 to i64
  %160 = getelementptr inbounds i8, ptr %158, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !455
  %162 = and i8 %161, 64
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %193, !prof !750

164:                                              ; preds = %153
  %165 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %6) #14
  %166 = zext i16 %156 to i32
  %167 = load ptr, ptr %165, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %166, ptr noundef nonnull %6, i32 noundef 8, i32 noundef 16, ptr noundef %167)
          to label %168 unwind label %170

168:                                              ; preds = %164
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 196, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %169 unwind label %170

169:                                              ; preds = %168
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %6) #14
  br label %193

170:                                              ; preds = %168, %164
  %171 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %6) #14
  br label %172

172:                                              ; preds = %79, %76, %73, %170, %126
  %173 = phi { ptr, i32 } [ %127, %126 ], [ %171, %170 ], [ %80, %79 ], [ %75, %73 ], [ %78, %76 ]
  %174 = phi i32 [ %19, %126 ], [ %19, %170 ], [ %19, %79 ], [ %74, %73 ], [ %77, %76 ]
  %175 = extractvalue { ptr, i32 } %173, 1
  %176 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #14
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %327

178:                                              ; preds = %172
  %179 = extractvalue { ptr, i32 } %173, 0
  %180 = call ptr @__cxa_begin_catch(ptr %179) #14
  %181 = load ptr, ptr %0, align 8, !tbaa !155
  %182 = getelementptr inbounds ptr, ptr %181, i64 16
  %183 = load ptr, ptr %182, align 8
  invoke void %183(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %184 unwind label %233

184:                                              ; preds = %178
  %185 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %186 = load ptr, ptr %185, align 8, !tbaa !518
  %187 = icmp eq ptr %186, null
  br i1 %187, label %235, label %188

188:                                              ; preds = %184
  %189 = load ptr, ptr %180, align 8, !tbaa !755
  %190 = load ptr, ptr %186, align 8, !tbaa !155
  %191 = getelementptr inbounds ptr, ptr %190, i64 7
  %192 = load ptr, ptr %191, align 8
  invoke void %192(ptr noundef nonnull align 8 dereferenceable(8) %186, ptr noundef nonnull align 8 dereferenceable(72) %189)
          to label %235 unwind label %233

193:                                              ; preds = %143, %150, %148, %149, %169, %153, %147
  %194 = phi i8 [ 1, %147 ], [ 0, %153 ], [ 0, %169 ], [ 0, %149 ], [ %22, %148 ], [ 0, %150 ], [ %144, %143 ]
  %195 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 1
  %196 = load i8, ptr %5, align 1, !tbaa !185, !range !158, !noundef !254
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %207, !prof !754

198:                                              ; preds = %193
  %199 = load i16, ptr %3, align 2, !tbaa !200
  switch i16 %199, label %207 [
    i16 93, label %200
    i16 62, label %204
  ], !prof !753

200:                                              ; preds = %198
  br i1 %20, label %207, label %201

201:                                              ; preds = %200
  %202 = icmp eq i32 %19, 1
  %203 = select i1 %202, i32 2, i32 %19
  br label %207

204:                                              ; preds = %198
  %205 = icmp eq i32 %19, 2
  br i1 %205, label %206, label %207

206:                                              ; preds = %204
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 262)
          to label %207 unwind label %76

207:                                              ; preds = %206, %193, %198, %204, %200, %201
  %208 = phi i32 [ %203, %201 ], [ 1, %200 ], [ 0, %204 ], [ 0, %198 ], [ 0, %193 ], [ 0, %206 ]
  %209 = load i16, ptr %3, align 2, !tbaa !200
  %210 = load i32, ptr %1, align 8, !tbaa !291
  %211 = load i32, ptr %195, align 4, !tbaa !292
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %214, !prof !750

213:                                              ; preds = %207
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
          to label %214 unwind label %76

214:                                              ; preds = %213, %207
  %215 = load ptr, ptr %7, align 8, !tbaa !293
  %216 = load i32, ptr %1, align 8, !tbaa !291
  %217 = add i32 %216, 1
  store i32 %217, ptr %1, align 8, !tbaa !291
  %218 = zext i32 %216 to i64
  %219 = getelementptr inbounds i16, ptr %215, i64 %218
  store i16 %209, ptr %219, align 2, !tbaa !200
  %220 = load i16, ptr %4, align 2, !tbaa !200
  %221 = icmp eq i16 %220, 0
  br i1 %221, label %232, label %222, !prof !754

222:                                              ; preds = %214
  %223 = load i32, ptr %195, align 4, !tbaa !292
  %224 = icmp eq i32 %217, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %222
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
          to label %226 unwind label %76

226:                                              ; preds = %225, %222
  %227 = load ptr, ptr %7, align 8, !tbaa !293
  %228 = load i32, ptr %1, align 8, !tbaa !291
  %229 = add i32 %228, 1
  store i32 %229, ptr %1, align 8, !tbaa !291
  %230 = zext i32 %228 to i64
  %231 = getelementptr inbounds i16, ptr %227, i64 %230
  store i16 %220, ptr %231, align 2, !tbaa !200
  store i16 0, ptr %4, align 2, !tbaa !200
  br label %232

232:                                              ; preds = %226, %214
  br label %17, !llvm.loop !751

233:                                              ; preds = %188, %178
  %234 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %327 unwind label %329

235:                                              ; preds = %188, %184
  invoke void @__cxa_end_catch()
          to label %236 unwind label %242

236:                                              ; preds = %235, %109, %110
  %237 = phi i8 [ 0, %110 ], [ 0, %109 ], [ %16, %235 ]
  %238 = phi i8 [ %22, %110 ], [ %22, %109 ], [ 0, %235 ]
  %239 = phi i32 [ %19, %110 ], [ %19, %109 ], [ %174, %235 ]
  %240 = and i8 %237, 1
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %244, label %13, !prof !749, !llvm.loop !757

242:                                              ; preds = %235
  %243 = landingpad { ptr, i32 }
          cleanup
  br label %327

244:                                              ; preds = %236
  %245 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %246 = load i8, ptr %245, align 8, !tbaa !253, !range !158, !noundef !254
  %247 = icmp eq i8 %246, 0
  %248 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %249 = load i8, ptr %248, align 2, !range !158
  %250 = icmp eq i8 %249, 0
  %251 = select i1 %247, i1 true, i1 %250, !prof !588
  br i1 %251, label %320, label %252, !prof !588

252:                                              ; preds = %244
  %253 = load ptr, ptr %7, align 8, !tbaa !293
  %254 = load i32, ptr %1, align 8, !tbaa !291
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds i16, ptr %253, i64 %255
  store i16 0, ptr %256, align 2, !tbaa !200
  %257 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %258 = load ptr, ptr %257, align 8, !tbaa !448
  %259 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18containsWhiteSpaceEPKtj(ptr noundef nonnull align 8 dereferenceable(163992) %258, ptr noundef %253, i32 noundef %254)
          to label %260 unwind label %300, !prof !590

260:                                              ; preds = %252
  br i1 %259, label %261, label %320, !prof !758

261:                                              ; preds = %260
  %262 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %263 = invoke noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %262)
          to label %264 unwind label %302, !prof !759

264:                                              ; preds = %261
  %265 = load ptr, ptr %263, align 8, !tbaa !596
  %266 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %265, i64 0, i32 5
  %267 = load i8, ptr %266, align 8, !tbaa !731, !range !158, !noundef !254
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %320, label %269, !prof !759

269:                                              ; preds = %264
  %270 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %271 = load ptr, ptr %270, align 8, !tbaa !140
  %272 = load ptr, ptr %271, align 8, !tbaa !155
  %273 = getelementptr inbounds ptr, ptr %272, i64 5
  %274 = load ptr, ptr %273, align 8
  %275 = invoke noundef i32 %274(ptr noundef nonnull align 8 dereferenceable(8) %271)
          to label %276 unwind label %304

276:                                              ; preds = %269
  %277 = icmp eq i32 %275, 1
  br i1 %277, label %278, label %308

278:                                              ; preds = %276
  %279 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %280 = load ptr, ptr %279, align 8, !tbaa !160
  %281 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %280, i64 0, i32 14
  %282 = load ptr, ptr %281, align 8, !tbaa !161
  %283 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.7", ptr %282, i64 0, i32 1, i32 1
  %284 = load i32, ptr %283, align 4, !tbaa !165
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %290, label %286

286:                                              ; preds = %278
  %287 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %282)
          to label %288 unwind label %306

288:                                              ; preds = %286
  %289 = load ptr, ptr %287, align 8, !tbaa !168
  br label %290

290:                                              ; preds = %288, %278
  %291 = phi ptr [ %289, %288 ], [ null, %278 ]
  %292 = icmp eq ptr %291, null
  br i1 %292, label %314, label %293

293:                                              ; preds = %290
  %294 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %291, i64 0, i32 10
  %295 = load i32, ptr %294, align 8, !tbaa !593
  %296 = icmp eq i32 %295, 0
  %297 = select i1 %296, i32 0, i32 2
  %298 = icmp eq i32 %295, 4
  %299 = select i1 %298, i32 1, i32 %297
  br label %314

300:                                              ; preds = %252
  %301 = landingpad { ptr, i32 }
          cleanup
  br label %327

302:                                              ; preds = %261
  %303 = landingpad { ptr, i32 }
          cleanup
  br label %327

304:                                              ; preds = %317, %308, %269
  %305 = landingpad { ptr, i32 }
          cleanup
  br label %327

306:                                              ; preds = %286
  %307 = landingpad { ptr, i32 }
          cleanup
  br label %327

308:                                              ; preds = %276
  %309 = load ptr, ptr %263, align 8, !tbaa !596
  %310 = load ptr, ptr %309, align 8, !tbaa !155
  %311 = getelementptr inbounds ptr, ptr %310, i64 7
  %312 = load ptr, ptr %311, align 8
  %313 = invoke noundef i32 %312(ptr noundef nonnull align 8 dereferenceable(33) %309)
          to label %314 unwind label %304

314:                                              ; preds = %293, %308, %290
  %315 = phi i32 [ 2, %290 ], [ %313, %308 ], [ %299, %293 ]
  %316 = icmp eq i32 %315, 1
  br i1 %316, label %317, label %320

317:                                              ; preds = %314
  %318 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %319 = load ptr, ptr %318, align 8, !tbaa !160
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %319, i32 noundef 84)
          to label %320 unwind label %304

320:                                              ; preds = %317, %260, %314, %264, %244
  %321 = load ptr, ptr %0, align 8, !tbaa !155
  %322 = getelementptr inbounds ptr, ptr %321, i64 16
  %323 = load ptr, ptr %322, align 8
  invoke void %323(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %324 unwind label %325, !prof !760

324:                                              ; preds = %320
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #14
  store i8 %10, ptr %9, align 8, !tbaa !732
  ret void

325:                                              ; preds = %320
  %326 = landingpad { ptr, i32 }
          cleanup
  br label %327

327:                                              ; preds = %172, %233, %300, %304, %306, %302, %242, %325
  %328 = phi { ptr, i32 } [ %326, %325 ], [ %243, %242 ], [ %301, %300 ], [ %303, %302 ], [ %305, %304 ], [ %307, %306 ], [ %234, %233 ], [ %173, %172 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #14
  store i8 %10, ptr %9, align 8, !tbaa !732
  resume { ptr, i32 } %328

329:                                              ; preds = %233
  %330 = landingpad { ptr, i32 }
          catch ptr null
  %331 = extractvalue { ptr, i32 } %330, 0
  call void @__clang_call_terminate(ptr %331) #15
  unreachable
}

declare noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18containsWhiteSpaceEPKtj(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712IGXMLScanner13scanEntityRefEbRtS1_Rb(ptr noundef nonnull align 8 dereferenceable(1024) %0, i1 noundef zeroext %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %4) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca [16 x i16], align 16
  %11 = alloca [16 x i16], align 16
  store i16 0, ptr %3, align 2, !tbaa !200
  store i8 0, ptr %4, align 1, !tbaa !185
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !448
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %14, i64 0, i32 15
  %16 = load i32, ptr %15, align 8, !tbaa !713
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %12, i16 noundef zeroext 35)
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3)
  br i1 %19, label %20, label %313

20:                                               ; preds = %18
  store i8 1, ptr %4, align 1, !tbaa !185
  %21 = load ptr, ptr %13, align 8, !tbaa !448
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %21, i64 0, i32 15
  %23 = load i32, ptr %22, align 8, !tbaa !713
  %24 = icmp eq i32 %16, %23
  br i1 %24, label %313, label %25

25:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
  br label %313

26:                                               ; preds = %5
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %28 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %27)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %30 = load i8, ptr %29, align 2, !tbaa !761, !range !158, !noundef !254
  %31 = icmp eq i8 %30, 0
  store i32 0, ptr %28, align 8, !tbaa !291
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %28, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !293
  store i16 0, ptr %33, align 2, !tbaa !200
  %34 = load ptr, ptr %13, align 8, !tbaa !448
  br i1 %31, label %37, label %35

35:                                               ; preds = %26
  %36 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %34, ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull %8)
          to label %39 unwind label %45

37:                                               ; preds = %26
  %38 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %34, ptr noundef nonnull align 8 dereferenceable(40) %28, i1 noundef zeroext false)
          to label %39 unwind label %45

39:                                               ; preds = %37, %35
  %40 = phi i1 [ %36, %35 ], [ %38, %37 ]
  br i1 %40, label %52, label %41

41:                                               ; preds = %39
  %42 = load i32, ptr %28, align 8, !tbaa !291
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 226)
          to label %302 unwind label %45

45:                                               ; preds = %37, %35, %66, %55, %52, %47, %44
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %307

47:                                               ; preds = %41
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %28, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !293
  %50 = zext i32 %42 to i64
  %51 = getelementptr inbounds i16, ptr %49, i64 %50
  store i16 0, ptr %51, align 2, !tbaa !200
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 310, ptr noundef %49, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %302 unwind label %45

52:                                               ; preds = %39
  %53 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %12, i16 noundef zeroext 59)
          to label %54 unwind label %45

54:                                               ; preds = %52
  br i1 %53, label %61, label %55

55:                                               ; preds = %54
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %28, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !293
  %58 = load i32, ptr %28, align 8, !tbaa !291
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i16, ptr %57, i64 %59
  store i16 0, ptr %60, align 2, !tbaa !200
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 229, ptr noundef %57, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %61 unwind label %45

61:                                               ; preds = %55, %54
  %62 = load ptr, ptr %13, align 8, !tbaa !448
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %62, i64 0, i32 15
  %64 = load i32, ptr %63, align 8, !tbaa !713
  %65 = icmp eq i32 %16, %64
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %67 unwind label %45

67:                                               ; preds = %66, %61
  %68 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 11
  %69 = load ptr, ptr %68, align 8, !tbaa !503
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %28, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !293
  %72 = load i32, ptr %28, align 8, !tbaa !291
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i16, ptr %71, i64 %73
  store i16 0, ptr %74, align 2, !tbaa !200
  %75 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  %76 = invoke noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %75, ptr noundef %71, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %77 unwind label %105

77:                                               ; preds = %67
  %78 = icmp eq ptr %76, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %77
  %80 = load ptr, ptr %76, align 8, !tbaa !762
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi ptr [ %80, %79 ], [ null, %77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %69, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !764
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  %87 = invoke noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %86, ptr noundef %71, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %88 unwind label %105

88:                                               ; preds = %84
  %89 = icmp eq ptr %87, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %88
  %91 = load ptr, ptr %87, align 8, !tbaa !762
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi ptr [ %91, %90 ], [ null, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %94

94:                                               ; preds = %92, %81
  %95 = phi ptr [ %93, %92 ], [ %82, %81 ]
  %96 = icmp eq ptr %95, null
  %97 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %98 = load i8, ptr %97, align 2, !tbaa !446, !range !158, !noundef !254
  %99 = icmp eq i8 %98, 0
  br i1 %96, label %100, label %118

100:                                              ; preds = %94
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  %102 = load i8, ptr %101, align 1, !range !158
  %103 = icmp eq i8 %102, 0
  %104 = select i1 %99, i1 %103, i1 false
  br i1 %104, label %107, label %142

105:                                              ; preds = %142, %84, %67, %240, %149, %125, %119, %111
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %307

107:                                              ; preds = %100
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %109 = load i8, ptr %108, align 8, !tbaa !253, !range !158, !noundef !254
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %302, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %113 = load ptr, ptr %112, align 8, !tbaa !160
  %114 = load ptr, ptr %70, align 8, !tbaa !293
  %115 = load i32, ptr %28, align 8, !tbaa !291
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i16, ptr %114, i64 %116
  store i16 0, ptr %117, align 2, !tbaa !200
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %113, i32 noundef 85, ptr noundef %114, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %302 unwind label %105

118:                                              ; preds = %94
  br i1 %99, label %130, label %119

119:                                              ; preds = %118
  %120 = load ptr, ptr %95, align 8, !tbaa !155
  %121 = getelementptr inbounds ptr, ptr %120, i64 5
  %122 = load ptr, ptr %121, align 8
  %123 = invoke noundef zeroext i1 %122(ptr noundef nonnull align 8 dereferenceable(72) %95)
          to label %124 unwind label %105

124:                                              ; preds = %119
  br i1 %123, label %130, label %125

125:                                              ; preds = %124
  %126 = load ptr, ptr %70, align 8, !tbaa !293
  %127 = load i32, ptr %28, align 8, !tbaa !291
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i16, ptr %126, i64 %128
  store i16 0, ptr %129, align 2, !tbaa !200
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 298, ptr noundef %126, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %130 unwind label %105

130:                                              ; preds = %125, %124, %118
  %131 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %95, i64 0, i32 6
  %132 = load ptr, ptr %131, align 8, !tbaa !766
  %133 = icmp ne ptr %132, null
  %134 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %95, i64 0, i32 7
  %135 = load ptr, ptr %134, align 8
  %136 = icmp ne ptr %135, null
  %137 = select i1 %133, i1 true, i1 %136
  br i1 %137, label %138, label %240

138:                                              ; preds = %130
  %139 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %95, i64 0, i32 5
  %140 = load ptr, ptr %139, align 8, !tbaa !768
  %141 = icmp eq ptr %140, null
  br i1 %141, label %148, label %142

142:                                              ; preds = %138, %100
  %143 = phi i32 [ 227, %100 ], [ 228, %138 ]
  %144 = load ptr, ptr %70, align 8, !tbaa !293
  %145 = load i32, ptr %28, align 8, !tbaa !291
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i16, ptr %144, i64 %146
  store i16 0, ptr %147, align 2, !tbaa !200
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %143, ptr noundef %144, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %302 unwind label %105

148:                                              ; preds = %138
  br i1 %1, label %149, label %150

149:                                              ; preds = %148
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 270)
          to label %150 unwind label %105

150:                                              ; preds = %149, %148
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %151 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %95, i64 0, i32 8
  %152 = load ptr, ptr %151, align 8, !tbaa !769
  %153 = load ptr, ptr %134, align 8, !tbaa !770
  %154 = load ptr, ptr %131, align 8, !tbaa !766
  %155 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %156 = load i8, ptr %155, align 1, !tbaa !550, !range !158, !noundef !254
  %157 = icmp ne i8 %156, 0
  %158 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %159 = load i8, ptr %158, align 1, !tbaa !680, !range !158, !noundef !254
  %160 = icmp ne i8 %159, 0
  %161 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_S2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef %152, ptr noundef %153, ptr noundef %154, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %9, i1 noundef zeroext %157, i1 noundef zeroext %160)
          to label %162 unwind label %181

162:                                              ; preds = %150
  %163 = load ptr, ptr %9, align 8, !tbaa !168
  %164 = icmp eq ptr %161, null
  br i1 %164, label %165, label %187

165:                                              ; preds = %162
  %166 = call ptr @__cxa_allocate_exception(i64 48) #14
  %167 = load ptr, ptr %9, align 8, !tbaa !168
  %168 = icmp eq ptr %167, null
  br i1 %168, label %174, label %169

169:                                              ; preds = %165
  %170 = load ptr, ptr %167, align 8, !tbaa !155
  %171 = getelementptr inbounds ptr, ptr %170, i64 5
  %172 = load ptr, ptr %171, align 8
  %173 = invoke noundef ptr %172(ptr noundef nonnull align 8 dereferenceable(41) %167)
          to label %176 unwind label %183

174:                                              ; preds = %165
  %175 = load ptr, ptr %134, align 8, !tbaa !770
  br label %176

176:                                              ; preds = %169, %174
  %177 = phi ptr [ %175, %174 ], [ %173, %169 ]
  %178 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %179 = load ptr, ptr %178, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %166, ptr noundef nonnull @.str, i32 noundef 2954, i32 noundef 46, ptr noundef %177, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %179)
          to label %180 unwind label %183

180:                                              ; preds = %176
  invoke void @__cxa_throw(ptr nonnull %166, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %315 unwind label %185

181:                                              ; preds = %150
  %182 = landingpad { ptr, i32 }
          cleanup
  br label %238

183:                                              ; preds = %176, %169
  %184 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %166) #14
  br label %231

185:                                              ; preds = %223, %220, %216, %190, %187, %180
  %186 = landingpad { ptr, i32 }
          cleanup
  br label %231

187:                                              ; preds = %162
  %188 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull %161, ptr noundef nonnull %95)
          to label %189 unwind label %185

189:                                              ; preds = %187
  br i1 %188, label %193, label %190

190:                                              ; preds = %189
  %191 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %95, i64 0, i32 4
  %192 = load ptr, ptr %191, align 8, !tbaa !771
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 230, ptr noundef %192, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %224 unwind label %185

193:                                              ; preds = %189
  %194 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %195 = load ptr, ptr %194, align 8, !tbaa !551
  %196 = icmp eq ptr %195, null
  br i1 %196, label %211, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  %199 = load i32, ptr %198, align 8, !tbaa !553
  %200 = add i32 %199, 1
  store i32 %200, ptr %198, align 8, !tbaa !553
  %201 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  %202 = load i32, ptr %201, align 4, !tbaa !552
  %203 = icmp ugt i32 %200, %202
  br i1 %203, label %204, label %211

204:                                              ; preds = %197
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #14
  %205 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %206 = load ptr, ptr %205, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %202, ptr noundef nonnull %10, i32 noundef 15, i32 noundef 10, ptr noundef %206)
          to label %207 unwind label %209

207:                                              ; preds = %204
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 172, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %208 unwind label %209

208:                                              ; preds = %207
  store i32 0, ptr %198, align 8, !tbaa !553
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #14
  br label %211

209:                                              ; preds = %207, %204
  %210 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #14
  br label %231

211:                                              ; preds = %208, %197, %193
  %212 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %213 = load ptr, ptr %212, align 8, !tbaa !518
  %214 = icmp eq ptr %213, null
  %215 = or i1 %214, %1
  br i1 %215, label %220, label %216

216:                                              ; preds = %211
  %217 = load ptr, ptr %213, align 8, !tbaa !155
  %218 = getelementptr inbounds ptr, ptr %217, i64 12
  %219 = load ptr, ptr %218, align 8
  invoke void %219(ptr noundef nonnull align 8 dereferenceable(8) %213, ptr noundef nonnull align 8 dereferenceable(72) %95)
          to label %220 unwind label %185

220:                                              ; preds = %216, %211
  %221 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext true)
          to label %222 unwind label %185

222:                                              ; preds = %220
  br i1 %221, label %223, label %224

223:                                              ; preds = %222
  invoke void @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 0)
          to label %224 unwind label %185

224:                                              ; preds = %223, %222, %190
  %225 = icmp eq ptr %163, null
  br i1 %225, label %230, label %226

226:                                              ; preds = %224
  %227 = load ptr, ptr %163, align 8, !tbaa !155
  %228 = getelementptr inbounds ptr, ptr %227, i64 1
  %229 = load ptr, ptr %228, align 8
  call void %229(ptr noundef nonnull align 8 dereferenceable(41) %163) #14
  br label %230

230:                                              ; preds = %224, %226
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  br i1 %188, label %301, label %302

231:                                              ; preds = %209, %185, %183
  %232 = phi { ptr, i32 } [ %186, %185 ], [ %210, %209 ], [ %184, %183 ]
  %233 = icmp eq ptr %163, null
  br i1 %233, label %238, label %234

234:                                              ; preds = %231
  %235 = load ptr, ptr %163, align 8, !tbaa !155
  %236 = getelementptr inbounds ptr, ptr %235, i64 1
  %237 = load ptr, ptr %236, align 8
  call void %237(ptr noundef nonnull align 8 dereferenceable(41) %163) #14
  br label %238

238:                                              ; preds = %234, %231, %181
  %239 = phi { ptr, i32 } [ %182, %181 ], [ %232, %231 ], [ %232, %234 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  br label %307

240:                                              ; preds = %130
  %241 = load ptr, ptr %95, align 8, !tbaa !155
  %242 = getelementptr inbounds ptr, ptr %241, i64 7
  %243 = load ptr, ptr %242, align 8
  %244 = invoke noundef zeroext i1 %243(ptr noundef nonnull align 8 dereferenceable(72) %95)
          to label %245 unwind label %105

245:                                              ; preds = %240
  br i1 %244, label %246, label %250

246:                                              ; preds = %245
  %247 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %95, i64 0, i32 3
  %248 = load ptr, ptr %247, align 8, !tbaa !772
  %249 = load i16, ptr %248, align 2, !tbaa !200
  store i16 %249, ptr %2, align 2, !tbaa !200
  store i8 1, ptr %4, align 1, !tbaa !185
  br label %302

250:                                              ; preds = %245
  %251 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %95, i64 0, i32 4
  %252 = load ptr, ptr %251, align 8, !tbaa !771
  %253 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %95, i64 0, i32 3
  %254 = load ptr, ptr %253, align 8, !tbaa !772
  %255 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %95, i64 0, i32 2
  %256 = load i32, ptr %255, align 4, !tbaa !773
  %257 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr18createIntEntReaderEPKtNS_9XMLReader7RefFromENS3_5TypesES2_jbb(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef %252, i32 noundef 1, i32 noundef 1, ptr noundef %254, i32 noundef %256, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %258 unwind label %265

258:                                              ; preds = %250
  %259 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef %257, ptr noundef nonnull %95)
          to label %260 unwind label %265

260:                                              ; preds = %258
  br i1 %259, label %267, label %261

261:                                              ; preds = %260
  %262 = load ptr, ptr %251, align 8, !tbaa !771
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 230, ptr noundef %262, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %267 unwind label %265

263:                                              ; preds = %298
  %264 = landingpad { ptr, i32 }
          cleanup
  br label %307

265:                                              ; preds = %250, %258, %261, %290, %294, %297
  %266 = landingpad { ptr, i32 }
          cleanup
  br label %307

267:                                              ; preds = %261, %260
  %268 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %269 = load ptr, ptr %268, align 8, !tbaa !551
  %270 = icmp eq ptr %269, null
  br i1 %270, label %285, label %271

271:                                              ; preds = %267
  %272 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  %273 = load i32, ptr %272, align 8, !tbaa !553
  %274 = add i32 %273, 1
  store i32 %274, ptr %272, align 8, !tbaa !553
  %275 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  %276 = load i32, ptr %275, align 4, !tbaa !552
  %277 = icmp ugt i32 %274, %276
  br i1 %277, label %278, label %285

278:                                              ; preds = %271
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #14
  %279 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %280 = load ptr, ptr %279, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %276, ptr noundef nonnull %11, i32 noundef 15, i32 noundef 10, ptr noundef %280)
          to label %281 unwind label %283

281:                                              ; preds = %278
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 172, ptr noundef nonnull %11, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %282 unwind label %283

282:                                              ; preds = %281
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #14
  br label %285

283:                                              ; preds = %281, %278
  %284 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #14
  br label %307

285:                                              ; preds = %267, %282, %271
  %286 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %287 = load ptr, ptr %286, align 8, !tbaa !518
  %288 = icmp eq ptr %287, null
  %289 = or i1 %288, %1
  br i1 %289, label %294, label %290

290:                                              ; preds = %285
  %291 = load ptr, ptr %287, align 8, !tbaa !155
  %292 = getelementptr inbounds ptr, ptr %291, i64 12
  %293 = load ptr, ptr %292, align 8
  invoke void %293(ptr noundef nonnull align 8 dereferenceable(8) %287, ptr noundef nonnull align 8 dereferenceable(72) %95)
          to label %294 unwind label %265

294:                                              ; preds = %290, %285
  %295 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext true)
          to label %296 unwind label %265

296:                                              ; preds = %294
  br i1 %295, label %297, label %301

297:                                              ; preds = %296
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 220)
          to label %298 unwind label %265

298:                                              ; preds = %297, %300
  %299 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %12)
          to label %300 unwind label %263

300:                                              ; preds = %298
  switch i16 %299, label %298 [
    i16 62, label %301
    i16 0, label %301
  ]

301:                                              ; preds = %300, %300, %296, %230
  br label %302

302:                                              ; preds = %142, %111, %44, %246, %301, %230, %107, %47
  %303 = phi i32 [ 2, %47 ], [ 0, %301 ], [ 2, %230 ], [ 1, %246 ], [ 2, %107 ], [ 2, %44 ], [ 2, %111 ], [ 2, %142 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(40) %28)
          to label %313 unwind label %304

304:                                              ; preds = %302
  %305 = landingpad { ptr, i32 }
          catch ptr null
  %306 = extractvalue { ptr, i32 } %305, 0
  call void @__clang_call_terminate(ptr %306) #15
  unreachable

307:                                              ; preds = %263, %265, %105, %238, %283, %45
  %308 = phi { ptr, i32 } [ %46, %45 ], [ %106, %105 ], [ %239, %238 ], [ %284, %283 ], [ %264, %263 ], [ %266, %265 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(40) %28)
          to label %312 unwind label %309

309:                                              ; preds = %307
  %310 = landingpad { ptr, i32 }
          catch ptr null
  %311 = extractvalue { ptr, i32 } %310, 0
  call void @__clang_call_terminate(ptr %311) #15
  unreachable

312:                                              ; preds = %307
  resume { ptr, i32 } %308

313:                                              ; preds = %302, %20, %25, %18
  %314 = phi i32 [ 2, %18 ], [ 1, %25 ], [ 1, %20 ], [ %303, %302 ]
  ret i32 %314

315:                                              ; preds = %180
  unreachable
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #6

declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_S2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776), i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #6

declare noundef ptr @_ZN11xercesc_2_79ReaderMgr18createIntEntReaderEPKtNS_9XMLReader7RefFromENS3_5TypesES2_jbb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner13switchGrammarEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !774 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !246
  %5 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14, !prof !775

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 24
  %9 = load i8, ptr %8, align 2, !tbaa !517, !range !158, !noundef !254
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !503
  br label %14

14:                                               ; preds = %11, %7, %2
  %15 = phi ptr [ %5, %2 ], [ null, %7 ], [ %13, %11 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %83, label %17, !prof !775

17:                                               ; preds = %14
  %18 = load ptr, ptr %15, align 8, !tbaa !155
  %19 = getelementptr inbounds ptr, ptr %18, i64 5
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef i32 %20(ptr noundef nonnull align 8 dereferenceable(8) %15), !prof !776
  switch i32 %21, label %72 [
    i32 1, label %22
    i32 0, label %44
  ], !prof !777

22:                                               ; preds = %17
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %24 = load ptr, ptr %23, align 8, !tbaa !160
  %25 = load ptr, ptr %24, align 8, !tbaa !155
  %26 = getelementptr inbounds ptr, ptr %25, i64 13
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(40) %24), !prof !778
  br i1 %28, label %42, label %29, !prof !779

29:                                               ; preds = %22
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %31 = load i8, ptr %30, align 1, !tbaa !507, !range !158, !noundef !254
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %36 = load ptr, ptr %35, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %34, ptr noundef nonnull @.str, i32 noundef 3068, i32 noundef 158, ptr noundef %36)
          to label %37 unwind label %38

37:                                               ; preds = %33
  tail call void @__cxa_throw(ptr nonnull %34, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

38:                                               ; preds = %33
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %80

40:                                               ; preds = %29
  %41 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 10
  br label %68

42:                                               ; preds = %22
  %43 = icmp eq i32 %21, 0
  br i1 %43, label %44, label %72, !prof !775

44:                                               ; preds = %42, %17
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 24
  %46 = load i8, ptr %45, align 2, !tbaa !517, !range !158, !noundef !254
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %83

48:                                               ; preds = %44
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %50 = load ptr, ptr %49, align 8, !tbaa !160
  %51 = load ptr, ptr %50, align 8, !tbaa !155
  %52 = getelementptr inbounds ptr, ptr %51, i64 12
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef zeroext i1 %53(ptr noundef nonnull align 8 dereferenceable(40) %50)
  br i1 %54, label %72, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %57 = load i8, ptr %56, align 1, !tbaa !507, !range !158, !noundef !254
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %62 = load ptr, ptr %61, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %60, ptr noundef nonnull @.str, i32 noundef 3080, i32 noundef 44, ptr noundef %62)
          to label %63 unwind label %64

63:                                               ; preds = %59
  tail call void @__cxa_throw(ptr nonnull %60, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

64:                                               ; preds = %59
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %80

66:                                               ; preds = %55
  %67 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 9
  br label %68

68:                                               ; preds = %40, %66
  %69 = phi ptr [ %67, %66 ], [ %41, %40 ]
  %70 = phi ptr [ %49, %66 ], [ %23, %40 ]
  %71 = load ptr, ptr %69, align 8, !tbaa !168
  store ptr %71, ptr %70, align 8, !tbaa !160
  br label %72

72:                                               ; preds = %68, %17, %42, %48
  %73 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  store i32 %21, ptr %73, align 4, !tbaa !186
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %15, ptr %74, align 8, !tbaa !140
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %76 = load ptr, ptr %75, align 8, !tbaa !160
  %77 = load ptr, ptr %76, align 8, !tbaa !155
  %78 = getelementptr inbounds ptr, ptr %77, i64 11
  %79 = load ptr, ptr %78, align 8
  tail call void %79(ptr noundef nonnull align 8 dereferenceable(40) %76, ptr noundef nonnull %15), !prof !780
  br label %83

80:                                               ; preds = %64, %38
  %81 = phi ptr [ %60, %64 ], [ %34, %38 ]
  %82 = phi { ptr, i32 } [ %65, %64 ], [ %39, %38 ]
  tail call void @__cxa_free_exception(ptr %81) #14
  resume { ptr, i32 } %82

83:                                               ; preds = %72, %44, %14
  %84 = phi i1 [ false, %14 ], [ true, %72 ], [ false, %44 ]
  ret i1 %84
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner20laxElementValidationEPNS_5QNameEPNS_25ContentLeafNameTypeVectorEPKNS_15XMLContentModelEj(ptr nocapture noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %6 = alloca %"class.xercesc_2_7::SubstitutionGroupComparator", align 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !339
  %9 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !781
  %11 = zext i32 %4 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !136
  %14 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4, !tbaa !136
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %143, label %16

16:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %18 = load ptr, ptr %17, align 8, !tbaa !246
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %20 = load ptr, ptr %19, align 8, !tbaa !252
  store ptr %18, ptr %6, align 8, !tbaa !782
  %21 = getelementptr inbounds %"class.xercesc_2_7::SubstitutionGroupComparator", ptr %6, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !784
  %22 = icmp eq ptr %2, null
  br i1 %22, label %122, label %23

23:                                               ; preds = %16
  %24 = tail call noundef i32 @_ZNK11xercesc_2_725ContentLeafNameTypeVector12getLeafCountEv(ptr noundef nonnull align 8 dereferenceable(28) %2)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %110, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1, i64 0, i32 6
  br label %28

28:                                               ; preds = %26, %107
  %29 = phi i8 [ 0, %26 ], [ %106, %107 ]
  %30 = phi i8 [ 0, %26 ], [ %105, %107 ]
  %31 = phi i32 [ 0, %26 ], [ %108, %107 ]
  %32 = call noundef ptr @_ZNK11xercesc_2_725ContentLeafNameTypeVector13getLeafNameAtEj(ptr noundef nonnull align 8 dereferenceable(28) %2, i32 noundef %31)
  %33 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %32, i64 0, i32 4
  %34 = load i32, ptr %33, align 4, !tbaa !339
  %35 = call noundef i32 @_ZNK11xercesc_2_725ContentLeafNameTypeVector13getLeafTypeAtEj(ptr noundef nonnull align 8 dereferenceable(28) %2, i32 noundef %31)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %80

37:                                               ; preds = %28
  %38 = icmp eq i32 %34, %8
  br i1 %38, label %39, label %69

39:                                               ; preds = %37
  %40 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %32, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !342
  %42 = load ptr, ptr %27, align 8, !tbaa !342
  %43 = icmp eq ptr %41, null
  %44 = icmp eq ptr %42, null
  %45 = or i1 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load i16, ptr %41, align 2, !tbaa !200
  %48 = load i16, ptr %42, align 2, !tbaa !200
  %49 = icmp eq i16 %47, %48
  br i1 %49, label %58, label %69

50:                                               ; preds = %39
  br i1 %43, label %54, label %51

51:                                               ; preds = %50
  %52 = load i16, ptr %41, align 2, !tbaa !200
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %51, %50
  br i1 %44, label %71, label %55

55:                                               ; preds = %54
  %56 = load i16, ptr %42, align 2, !tbaa !200
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %71, label %69

58:                                               ; preds = %46, %63
  %59 = phi i16 [ %66, %63 ], [ %47, %46 ]
  %60 = phi ptr [ %65, %63 ], [ %42, %46 ]
  %61 = phi ptr [ %64, %63 ], [ %41, %46 ]
  %62 = icmp eq i16 %59, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds i16, ptr %61, i64 1
  %65 = getelementptr inbounds i16, ptr %60, i64 1
  %66 = load i16, ptr %64, align 2, !tbaa !200
  %67 = load i16, ptr %65, align 2, !tbaa !200
  %68 = icmp eq i16 %66, %67
  br i1 %68, label %58, label %69, !llvm.loop !217

69:                                               ; preds = %63, %46, %55, %51, %37
  %70 = call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %1, ptr noundef nonnull %32)
  br i1 %70, label %71, label %103

71:                                               ; preds = %58, %55, %54, %69
  %72 = load ptr, ptr %3, align 8, !tbaa !155
  %73 = getelementptr inbounds ptr, ptr %72, i64 6
  %74 = load ptr, ptr %73, align 8
  %75 = call noundef i32 %74(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %13, i32 noundef %31)
  %76 = icmp eq i32 %75, %14
  br i1 %76, label %103, label %77

77:                                               ; preds = %71
  %78 = load ptr, ptr %9, align 8, !tbaa !781
  %79 = getelementptr inbounds i32, ptr %78, i64 %11
  store i32 %75, ptr %79, align 4, !tbaa !136
  br label %103

80:                                               ; preds = %28
  %81 = and i32 %35, 15
  switch i32 %81, label %103 [
    i32 6, label %88
    i32 7, label %82
    i32 8, label %84
  ]

82:                                               ; preds = %80
  %83 = icmp ne i32 %34, %8
  br label %86

84:                                               ; preds = %80
  %85 = icmp eq i32 %34, %8
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i1 [ %83, %82 ], [ %85, %84 ]
  br i1 %87, label %88, label %103

88:                                               ; preds = %80, %86
  %89 = load ptr, ptr %3, align 8, !tbaa !155
  %90 = getelementptr inbounds ptr, ptr %89, i64 6
  %91 = load ptr, ptr %90, align 8
  %92 = call noundef i32 %91(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %13, i32 noundef %31)
  %93 = icmp eq i32 %92, %14
  br i1 %93, label %103, label %94

94:                                               ; preds = %88
  %95 = load ptr, ptr %9, align 8, !tbaa !781
  %96 = getelementptr inbounds i32, ptr %95, i64 %11
  store i32 %92, ptr %96, align 4, !tbaa !136
  %97 = add i32 %35, -38
  %98 = icmp ult i32 %97, 3
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = add i32 %35, -22
  %101 = icmp ult i32 %100, 3
  %102 = select i1 %101, i8 1, i8 %30
  br label %103

103:                                              ; preds = %88, %71, %99, %94, %80, %86, %69, %77
  %104 = phi i1 [ false, %77 ], [ false, %94 ], [ true, %69 ], [ true, %86 ], [ true, %80 ], [ false, %99 ], [ true, %71 ], [ true, %88 ]
  %105 = phi i8 [ %30, %77 ], [ %30, %94 ], [ %30, %69 ], [ %30, %86 ], [ %30, %80 ], [ %102, %99 ], [ %30, %71 ], [ %30, %88 ]
  %106 = phi i8 [ %29, %77 ], [ 1, %94 ], [ %29, %69 ], [ %29, %86 ], [ %29, %80 ], [ %29, %99 ], [ %29, %71 ], [ %29, %88 ]
  br i1 %104, label %107, label %110

107:                                              ; preds = %103
  %108 = add nuw i32 %31, 1
  %109 = icmp eq i32 %108, %24
  br i1 %109, label %110, label %28, !llvm.loop !785

110:                                              ; preds = %107, %103, %23
  %111 = phi i32 [ 0, %23 ], [ %24, %107 ], [ %31, %103 ]
  %112 = phi i8 [ 0, %23 ], [ %105, %103 ], [ %105, %107 ]
  %113 = phi i8 [ 0, %23 ], [ %106, %103 ], [ %106, %107 ]
  %114 = icmp eq i32 %111, %24
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load ptr, ptr %9, align 8, !tbaa !781
  %117 = getelementptr inbounds i32, ptr %116, i64 %11
  store i32 %14, ptr %117, align 4, !tbaa !136
  %118 = and i8 %112, 1
  %119 = icmp ne i8 %118, 0
  br label %120

120:                                              ; preds = %110, %115
  %121 = phi i1 [ %119, %115 ], [ undef, %110 ]
  br i1 %114, label %141, label %122

122:                                              ; preds = %120, %16
  %123 = phi i8 [ %112, %120 ], [ 0, %16 ]
  %124 = phi i8 [ %113, %120 ], [ 0, %16 ]
  %125 = and i8 %124, 1
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  store i8 0, ptr %128, align 8, !tbaa !253
  %129 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !698
  %131 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %132 = load i32, ptr %131, align 4, !tbaa !699
  %133 = add i32 %132, -1
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds ptr, ptr %130, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !168
  %137 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %136, i64 0, i32 8
  store i8 0, ptr %137, align 8, !tbaa !700
  br label %138

138:                                              ; preds = %127, %122
  %139 = and i8 %123, 1
  %140 = icmp ne i8 %139, 0
  br label %141

141:                                              ; preds = %120, %138
  %142 = phi i1 [ %140, %138 ], [ %121, %120 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  br label %143

143:                                              ; preds = %5, %141
  %144 = phi i1 [ %142, %141 ], [ false, %5 ]
  ret i1 %144
}

declare noundef i32 @_ZNK11xercesc_2_725ContentLeafNameTypeVector12getLeafCountEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #6

declare noundef ptr @_ZNK11xercesc_2_725ContentLeafNameTypeVector13getLeafNameAtEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) local_unnamed_addr #6

declare noundef i32 @_ZNK11xercesc_2_725ContentLeafNameTypeVector13getLeafTypeAtEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !786 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.6", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !406
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !787

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.6", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !788
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.6", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !789
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !790 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.7", ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !165
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15, !prof !791

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.7", ptr %0, i64 0, i32 1, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !792
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i32 noundef 61, i32 noundef 80, ptr noundef %8)
          to label %9 unwind label %13

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

10:                                               ; preds = %25, %13
  %11 = phi ptr [ %21, %25 ], [ %6, %13 ]
  %12 = phi { ptr, i32 } [ %26, %25 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %11) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %10

15:                                               ; preds = %1
  %16 = add nsw i32 %3, -1
  %17 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.7", ptr %0, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !165
  %19 = icmp ugt i32 %18, %16
  br i1 %19, label %27, label %20, !prof !793

20:                                               ; preds = %15
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %22 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.7", ptr %0, i64 0, i32 1, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !792
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.2, i32 noundef 198, i32 noundef 116, ptr noundef %23)
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %10

27:                                               ; preds = %15
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.7", ptr %0, i64 0, i32 1, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !794
  %30 = zext i32 %16 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  ret ptr %31
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #6

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 !prof !134 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 !prof !134 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !795
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !155
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 !prof !134 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 !prof !134 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !795
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !155
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !394
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !393
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %39, %5
  store i32 0, ptr %2, align 4, !tbaa !394
  br label %46

13:                                               ; preds = %9, %39
  %14 = phi i64 [ 0, %9 ], [ %42, %39 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !392
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %13, %33
  %20 = phi ptr [ %22, %33 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !496
  %23 = load i8, ptr %11, align 8, !tbaa !391, !range !158, !noundef !254
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !492
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %26)
          to label %32 unwind label %29

29:                                               ; preds = %28
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #15
  unreachable

32:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #14
  br label %33

33:                                               ; preds = %25, %32, %19
  %34 = load ptr, ptr %0, align 8, !tbaa !389
  %35 = load ptr, ptr %34, align 8, !tbaa !155
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull %20)
  %38 = icmp eq ptr %22, null
  br i1 %38, label %39, label %19, !llvm.loop !798

39:                                               ; preds = %33, %13
  %40 = load ptr, ptr %10, align 8, !tbaa !392
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !168
  %42 = add nuw nsw i64 %14, 1
  %43 = load i32, ptr %6, align 8, !tbaa !393
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %13, label %12, !llvm.loop !799

46:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %6 = load ptr, ptr %0, align 8, !tbaa !389
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.3, i32 noundef 93, i32 noundef 48, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #14
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !389
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !393
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !155
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15)
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !392
  %21 = load i32, ptr %12, align 8, !tbaa !393
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !392
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !168
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !800
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 !prof !134 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 !prof !134 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !795
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !155
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat align 2 !prof !801 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.9", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !227
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.9", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !228
  %9 = load ptr, ptr %0, align 8, !tbaa !229
  %10 = load ptr, ptr %6, align 8, !tbaa !155
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9), !prof !802
  store i32 %12, ptr %3, align 4, !tbaa !136
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.9", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !231
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19, !prof !232

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !233
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32, !prof !235

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !227
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !236
  %28 = load ptr, ptr %25, align 8, !tbaa !155
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27), !prof !803
  br i1 %31, label %36, label %32, !prof !235

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.10", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !168
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !prof !238, !llvm.loop !239

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ %20, %24 ], [ null, %32 ]
  ret ptr %37
}

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #6

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #6

declare void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

declare void @_ZN11xercesc_2_713PSVIAttributeC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.13", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !476
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.13", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !804
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.4, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.13", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !479
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !168
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 !prof !134 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.13", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !476
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.13", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !805
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.13", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !804
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !155
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !476
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.13", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !168
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !479
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !168
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !168
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !806

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !804
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.13", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !479
  %52 = load ptr, ptr %49, align 8, !tbaa !155
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !479
  store i32 %12, ptr %6, align 8, !tbaa !805
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !807 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !483
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !808
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !809

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !810
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !155
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16), !prof !811
  %21 = load i32, ptr %3, align 4, !tbaa !483
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23, !prof !571

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48, !prof !812

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !168
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !481
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !168
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !168
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !prof !813, !llvm.loop !814

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !810
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !481
  %52 = load ptr, ptr %49, align 8, !tbaa !155
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51), !prof !815
  store ptr %20, ptr %50, align 8, !tbaa !481
  store i32 %12, ptr %6, align 8, !tbaa !808
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

declare void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #6

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 !prof !134 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 !prof !134 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !795
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !155
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #6

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 !prof !134 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 !prof !134 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !795
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !155
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 !prof !134 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 !prof !134 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !795
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !155
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #6

declare void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 2 dereferenceable(2), i1 noundef zeroext) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #7 comdat align 2 !prof !816 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.15", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !817
  %6 = icmp eq ptr %1, null
  br i1 %6, label %30, label %7, !prof !345

7:                                                ; preds = %3
  %8 = load i16, ptr %1, align 2, !tbaa !200
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %30, label %10, !prof !345

10:                                               ; preds = %7
  %11 = zext i16 %8 to i32
  %12 = getelementptr inbounds i16, ptr %1, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !200
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %27, label %15, !prof !819

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
  %25 = load i16, ptr %24, align 2, !tbaa !200
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %15, !prof !820, !llvm.loop !821

27:                                               ; preds = %15, %10
  %28 = phi i32 [ %11, %10 ], [ %23, %15 ]
  %29 = urem i32 %28, %5
  br label %30

30:                                               ; preds = %3, %7, %27
  %31 = phi i32 [ %29, %27 ], [ 0, %7 ], [ 0, %3 ]
  store i32 %31, ptr %2, align 4, !tbaa !136
  %32 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.15", ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !822
  %34 = zext i32 %31 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !168
  %37 = icmp eq ptr %36, null
  br i1 %37, label %72, label %38, !prof !650

38:                                               ; preds = %30, %68
  %39 = phi ptr [ %70, %68 ], [ %36, %30 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !762
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !771
  %43 = icmp eq ptr %42, null
  %44 = or i1 %6, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i16, ptr %1, align 2, !tbaa !200
  %47 = load i16, ptr %42, align 2, !tbaa !200
  %48 = icmp eq i16 %46, %47
  br i1 %48, label %57, label %68

49:                                               ; preds = %38
  br i1 %6, label %53, label %50

50:                                               ; preds = %49
  %51 = load i16, ptr %1, align 2, !tbaa !200
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %50, %49
  br i1 %43, label %72, label %54

54:                                               ; preds = %53
  %55 = load i16, ptr %42, align 2, !tbaa !200
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
  %65 = load i16, ptr %63, align 2, !tbaa !200
  %66 = load i16, ptr %64, align 2, !tbaa !200
  %67 = icmp eq i16 %65, %66
  br i1 %67, label %57, label %68, !llvm.loop !217

68:                                               ; preds = %62, %45, %54, %50
  %69 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %39, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !168
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %38, !prof !650, !llvm.loop !823

72:                                               ; preds = %68, %53, %54, %57, %30
  %73 = phi ptr [ null, %30 ], [ %39, %57 ], [ %39, %54 ], [ %39, %53 ], [ null, %68 ]
  ret ptr %73
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.19", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !262
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !263
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !155
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %13 = load ptr, ptr %0, align 8, !tbaa !263
  store ptr %12, ptr %2, align 8, !tbaa !824
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.19", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !826
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !262
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 6
  br label %28

20:                                               ; preds = %52, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !265
  %23 = load ptr, ptr %2, align 8, !tbaa !824
  store ptr null, ptr %2, align 8, !tbaa !824
  store ptr %23, ptr %21, align 8, !tbaa !265
  store i32 %5, ptr %3, align 8, !tbaa !262
  %24 = load ptr, ptr %0, align 8, !tbaa !263
  %25 = load ptr, ptr %24, align 8, !tbaa !155
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22)
          to label %57 unwind label %58

28:                                               ; preds = %17, %52
  %29 = phi i64 [ 0, %17 ], [ %53, %52 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !265
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !168
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %28 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.18", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !427
  %38 = load ptr, ptr %19, align 8, !tbaa !260
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.18", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !267
  %41 = load ptr, ptr %0, align 8, !tbaa !263
  %42 = load ptr, ptr %38, align 8, !tbaa !155
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41)
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !168
  store ptr %48, ptr %36, align 8, !tbaa !427
  store ptr %35, ptr %47, align 8, !tbaa !168
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !827

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %60

52:                                               ; preds = %45, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %3, align 8, !tbaa !262
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %20, !llvm.loop !828

57:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret void

58:                                               ; preds = %20
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi { ptr, i32 } [ %51, %50 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  resume { ptr, i32 } %61
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !824
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.19", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !826
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !155
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #17
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #15
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #7 comdat align 2 !prof !134 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !829
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !428
  %9 = load ptr, ptr %0, align 8, !tbaa !436
  %10 = load ptr, ptr %6, align 8, !tbaa !155
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9)
  store i32 %12, ptr %3, align 4, !tbaa !136
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !437
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = load ptr, ptr %5, align 8, !tbaa !829
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.20", ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !434
  %24 = load ptr, ptr %21, align 8, !tbaa !155
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %1, ptr noundef %23)
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.20", ptr %20, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !435
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %36, label %32

32:                                               ; preds = %28, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.20", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !168
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !830

36:                                               ; preds = %28, %32, %4
  %37 = phi ptr [ null, %4 ], [ %20, %28 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.22", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !428
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !436
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !155
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %14 = load ptr, ptr %0, align 8, !tbaa !436
  store ptr %13, ptr %2, align 8, !tbaa !831
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.22", ptr %2, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !833
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %16 = load i32, ptr %3, align 8, !tbaa !428
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  br label %29

21:                                               ; preds = %53, %1
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !437
  %24 = load ptr, ptr %2, align 8, !tbaa !831
  store ptr null, ptr %2, align 8, !tbaa !831
  store ptr %24, ptr %22, align 8, !tbaa !437
  store i32 %6, ptr %3, align 8, !tbaa !428
  %25 = load ptr, ptr %0, align 8, !tbaa !436
  %26 = load ptr, ptr %25, align 8, !tbaa !155
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %23)
          to label %58 unwind label %59

29:                                               ; preds = %18, %53
  %30 = phi i64 [ 0, %18 ], [ %54, %53 ]
  %31 = load ptr, ptr %19, align 8, !tbaa !437
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !168
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %29, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %29 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.20", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !438
  %39 = load ptr, ptr %20, align 8, !tbaa !829
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.20", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !434
  %42 = load ptr, ptr %0, align 8, !tbaa !436
  %43 = load ptr, ptr %39, align 8, !tbaa !155
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42)
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !168
  store ptr %49, ptr %37, align 8, !tbaa !438
  store ptr %36, ptr %48, align 8, !tbaa !168
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !834

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %61

53:                                               ; preds = %46, %29
  %54 = add nuw nsw i64 %30, 1
  %55 = load i32, ptr %3, align 8, !tbaa !428
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %29, label %21, !llvm.loop !835

58:                                               ; preds = %21
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret void

59:                                               ; preds = %21
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %61

61:                                               ; preds = %59, %51
  %62 = phi { ptr, i32 } [ %52, %51 ], [ %60, %59 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  resume { ptr, i32 } %62
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #7 comdat align 2 !prof !134 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !829
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !428
  %9 = load ptr, ptr %0, align 8, !tbaa !436
  %10 = load ptr, ptr %6, align 8, !tbaa !155
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9)
  store i32 %12, ptr %3, align 4, !tbaa !136
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !437
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.20", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !435
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !829
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.20", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !434
  %28 = load ptr, ptr %25, align 8, !tbaa !155
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27)
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.20", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !168
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !836

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ %20, %24 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !831
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.22", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !833
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !155
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #17
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #15
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #7 comdat align 2 !prof !134 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !395
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !393
  %9 = load ptr, ptr %0, align 8, !tbaa !389
  %10 = load ptr, ptr %6, align 8, !tbaa !155
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9)
  store i32 %12, ptr %3, align 4, !tbaa !136
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !392
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = load ptr, ptr %5, align 8, !tbaa !395
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !494
  %24 = load ptr, ptr %21, align 8, !tbaa !155
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %1, ptr noundef %23)
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !495
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %36, label %32

32:                                               ; preds = %28, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !168
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !837

36:                                               ; preds = %28, %32, %4
  %37 = phi ptr [ null, %4 ], [ %20, %28 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 !prof !838 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !183
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !839
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !840

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !352
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !155
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !183
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !168
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !350
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !168
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !168
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !841

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !352
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !350
  %52 = load ptr, ptr %49, align 8, !tbaa !155
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !350
  store i32 %12, ptr %6, align 8, !tbaa !839
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.23", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !393
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !389
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !155
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %14 = load ptr, ptr %0, align 8, !tbaa !389
  store ptr %13, ptr %2, align 8, !tbaa !842
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.23", ptr %2, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !844
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %16 = load i32, ptr %3, align 8, !tbaa !393
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 5
  br label %29

21:                                               ; preds = %53, %1
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !392
  %24 = load ptr, ptr %2, align 8, !tbaa !842
  store ptr null, ptr %2, align 8, !tbaa !842
  store ptr %24, ptr %22, align 8, !tbaa !392
  store i32 %6, ptr %3, align 8, !tbaa !393
  %25 = load ptr, ptr %0, align 8, !tbaa !389
  %26 = load ptr, ptr %25, align 8, !tbaa !155
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %23)
          to label %58 unwind label %59

29:                                               ; preds = %18, %53
  %30 = phi i64 [ 0, %18 ], [ %54, %53 ]
  %31 = load ptr, ptr %19, align 8, !tbaa !392
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !168
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %29, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %29 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !496
  %39 = load ptr, ptr %20, align 8, !tbaa !395
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !494
  %42 = load ptr, ptr %0, align 8, !tbaa !389
  %43 = load ptr, ptr %39, align 8, !tbaa !155
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42)
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !168
  store ptr %49, ptr %37, align 8, !tbaa !496
  store ptr %36, ptr %48, align 8, !tbaa !168
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !845

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %61

53:                                               ; preds = %46, %29
  %54 = add nuw nsw i64 %30, 1
  %55 = load i32, ptr %3, align 8, !tbaa !393
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %29, label %21, !llvm.loop !846

58:                                               ; preds = %21
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret void

59:                                               ; preds = %21
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %61

61:                                               ; preds = %59, %51
  %62 = phi { ptr, i32 } [ %52, %51 ], [ %60, %59 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  resume { ptr, i32 } %62
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #7 comdat align 2 !prof !134 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !395
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !393
  %9 = load ptr, ptr %0, align 8, !tbaa !389
  %10 = load ptr, ptr %6, align 8, !tbaa !155
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9)
  store i32 %12, ptr %3, align 4, !tbaa !136
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.4", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !392
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !495
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !395
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !494
  %28 = load ptr, ptr %25, align 8, !tbaa !155
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27)
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !168
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !847

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ %20, %24 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !842
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.23", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !844
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !155
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #17
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #15
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(none) }
attributes #10 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!133}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!35 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, i64 832911}
!36 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, i64 190050}
!37 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb, i64 514}
!38 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_79XMLString10copyStringEPtPKt, i64 3}
!39 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_712IGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE, i64 191815}
!40 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj, i64 191813}
!41 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt, i64 650}
!42 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_710XMLScanner13getNewUIntPtrEv, i64 13}
!43 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj, i64 663}
!44 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_712IGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE, i64 191811}
!45 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE, i64 190034}
!46 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_712IGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE, i64 3}
!47 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv, i64 2}
!48 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, i64 160}
!49 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 7}
!50 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb, i64 7}
!51 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj, i64 7}
!52 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_75QName7setNameEPKtS2_j, i64 191807}
!53 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_77XMLAttr8setValueEPKt, i64 191807}
!54 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, i64 1}
!55 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv, i64 189534}
!56 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, i64 190050}
!57 = !{ptr @_ZN11xercesc_2_712IGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE, ptr @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb, i64 382977}
!58 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb, i64 3}
!59 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplC1EPKtPNS_13MemoryManagerE, i64 3}
!60 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPNS_21XMLGrammarDescriptionE, i64 3}
!61 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplD1Ev, i64 3}
!62 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 9}
!63 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_710DTDGrammarC1EPNS_13MemoryManagerE, i64 3}
!64 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE, i64 3}
!65 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_725IdentityConstraintHandler5resetEv, i64 3}
!66 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_79ElemStack5resetEjjjj, i64 3}
!67 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_711PSVIElementC1EPNS_13MemoryManagerE, i64 3}
!68 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712IGXMLScanner20resetPSVIElemContextEv, i64 3}
!69 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb, i64 3}
!70 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE, i64 3}
!71 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_710XMLScanner13resetUIntPoolEv, i64 3}
!72 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, i64 3}
!73 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv, i64 3}
!74 = !{ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv, i64 3}
!75 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79ElemStack10topElementEv, i64 1511514}
!76 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, i64 1511514}
!77 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj, i64 1511514}
!78 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE, i64 121265}
!79 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!80 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!81 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i, ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, i64 4}
!82 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i, ptr @_ZN11xercesc_2_712IGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE, i64 4}
!83 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i, ptr @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj, i64 4}
!84 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i, ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, i64 4}
!85 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j, i64 191815}
!86 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_i, i64 4}
!87 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, i64 189536}
!88 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, i64 2}
!89 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZN11xercesc_2_712IGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE, i64 191165}
!90 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt, i64 1}
!91 = !{ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, i64 189536}
!92 = !{ptr @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt, ptr @_ZN11xercesc_2_712IGXMLScanner21processSchemaLocationEPt, i64 1}
!93 = !{ptr @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt, ptr @_ZN11xercesc_2_713ValueVectorOfIPtE9elementAtEj, i64 2}
!94 = !{ptr @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt, ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, i64 1}
!95 = !{ptr @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt, ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, i64 1}
!96 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_724XMLSchemaDescriptionImplC1EPKtPNS_13MemoryManagerE, i64 1}
!97 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_724XMLSchemaDescriptionImpl16setLocationHintsEPKt, i64 2}
!98 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPNS_21XMLGrammarDescriptionE, i64 1}
!99 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_724XMLSchemaDescriptionImplD1Ev, i64 1}
!100 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_712XSDDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, i64 1}
!101 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE, i64 1}
!102 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb, i64 1}
!103 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_712XSDDOMParser20setUserEntityHandlerEPNS_16XMLEntityHandlerE, i64 1}
!104 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_712XSDDOMParser20setUserErrorReporterEPNS_16XMLErrorReporterE, i64 1}
!105 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, i64 3}
!106 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE, i64 1}
!107 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 1}
!108 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE, i64 1}
!109 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE, i64 1}
!110 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_, i64 1}
!111 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE, i64 1}
!112 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 2}
!113 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE, i64 1}
!114 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, i64 3}
!115 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_76XMLURLD1Ev, i64 1}
!116 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE, i64 1}
!117 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv, i64 1}
!118 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_713SchemaGrammarC1EPNS_13MemoryManagerE, i64 1}
!119 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_714TraverseSchemaC1EPNS_10DOMElementEPNS_13XMLStringPoolEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_10XMLScannerEPKtPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_13MemoryManagerE, i64 1}
!120 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_714TraverseSchemaD1Ev, i64 1}
!121 = !{ptr @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_, ptr @_ZN11xercesc_2_712XSDDOMParserD1Ev, i64 1}
!122 = !{ptr @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt, i64 191815}
!123 = !{ptr @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr11getNextCharEv, i64 2281915}
!124 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt, i64 222}
!125 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr11getNextCharEv, i64 3832}
!126 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!127 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 2493}
!128 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLReader9handleEOLERtb, i64 1019520}
!129 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLReader18containsWhiteSpaceEPKtj, i64 1511514}
!130 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79ElemStack10topElementEv, i64 1275875}
!131 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, i64 1512649}
!132 = !{ptr @_ZN11xercesc_2_712IGXMLScanner13switchGrammarEPKt, ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt, i64 496163}
!133 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!134 = !{!"function_entry_count", i64 0}
!135 = !{!"function_entry_count", i64 833461}
!136 = !{!137, !137, i64 0}
!137 = !{!"int", !138, i64 0}
!138 = !{!"omnipotent char", !139, i64 0}
!139 = !{!"Simple C++ TBAA"}
!140 = !{!141, !145, i64 296}
!141 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !142, i64 0, !143, i64 8, !144, i64 16, !144, i64 17, !144, i64 18, !144, i64 19, !144, i64 20, !144, i64 21, !144, i64 22, !144, i64 23, !144, i64 24, !144, i64 25, !144, i64 26, !144, i64 27, !144, i64 28, !144, i64 29, !144, i64 30, !144, i64 31, !144, i64 32, !144, i64 33, !144, i64 34, !144, i64 35, !144, i64 36, !144, i64 37, !144, i64 38, !137, i64 40, !137, i64 44, !137, i64 48, !137, i64 52, !137, i64 56, !137, i64 60, !137, i64 64, !137, i64 68, !145, i64 72, !137, i64 80, !137, i64 84, !137, i64 88, !137, i64 92, !137, i64 96, !145, i64 104, !145, i64 112, !145, i64 120, !145, i64 128, !145, i64 136, !145, i64 144, !145, i64 152, !145, i64 160, !145, i64 168, !144, i64 176, !146, i64 184, !145, i64 264, !149, i64 272, !145, i64 280, !145, i64 288, !145, i64 296, !145, i64 304, !145, i64 312, !145, i64 320, !145, i64 328, !145, i64 336, !145, i64 344, !148, i64 352, !145, i64 360, !150, i64 368, !151, i64 392, !151, i64 432, !151, i64 472, !151, i64 512, !151, i64 552, !151, i64 592, !151, i64 632, !152, i64 672}
!142 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!143 = !{!"long", !138, i64 0}
!144 = !{!"bool", !138, i64 0}
!145 = !{!"any pointer", !138, i64 0}
!146 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !147, i64 0, !145, i64 8, !145, i64 16, !145, i64 24, !145, i64 32, !137, i64 40, !145, i64 48, !144, i64 56, !148, i64 60, !144, i64 64, !145, i64 72}
!147 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!148 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !138, i64 0}
!149 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !138, i64 0}
!150 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !137, i64 0, !145, i64 8, !145, i64 16}
!151 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !137, i64 0, !137, i64 4, !137, i64 8, !144, i64 12, !145, i64 16, !145, i64 24, !145, i64 32}
!152 = !{!"_ZTSN11xercesc_2_79ElemStackE", !137, i64 0, !137, i64 4, !153, i64 8, !145, i64 48, !137, i64 56, !137, i64 60, !137, i64 64, !137, i64 68, !137, i64 72, !137, i64 76, !137, i64 80, !145, i64 88, !145, i64 96}
!153 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !154, i64 0, !145, i64 8, !145, i64 16, !145, i64 24, !137, i64 32, !137, i64 36}
!154 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!155 = !{!156, !156, i64 0}
!156 = !{!"vtable pointer", !139, i64 0}
!157 = !{!"VP", i32 0, i64 833461, i64 -6289420323266357339, i64 832911, i64 -908290396823866376, i64 550}
!158 = !{i8 0, i8 2}
!159 = !{!"branch_weights", i32 550, i32 832911}
!160 = !{!141, !145, i64 264}
!161 = !{!162, !145, i64 168}
!162 = !{!"_ZTSN11xercesc_2_715SchemaValidatorE", !163, i64 0, !145, i64 40, !145, i64 48, !145, i64 56, !145, i64 64, !144, i64 72, !145, i64 80, !145, i64 88, !151, i64 96, !144, i64 136, !144, i64 137, !164, i64 144, !145, i64 168, !145, i64 176, !144, i64 184, !144, i64 185}
!163 = !{!"_ZTSN11xercesc_2_712XMLValidatorE", !145, i64 8, !145, i64 16, !145, i64 24, !145, i64 32}
!164 = !{!"_ZTSN11xercesc_2_716XSDErrorReporterE", !144, i64 8, !145, i64 16}
!165 = !{!166, !137, i64 4}
!166 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEEE", !144, i64 0, !137, i64 4, !137, i64 8, !145, i64 16, !145, i64 24}
!167 = !{!"branch_weights", i32 0, i32 832911}
!168 = !{!145, !145, i64 0}
!169 = !{!"branch_weights", i32 336748, i32 496163}
!170 = !{!162, !145, i64 80}
!171 = !{!"branch_weights", i32 337298, i32 496163}
!172 = !{!173, !145, i64 128}
!173 = !{!"_ZTSN11xercesc_2_715ComplexTypeInfoE", !154, i64 0, !144, i64 8, !144, i64 9, !144, i64 10, !144, i64 11, !144, i64 12, !137, i64 16, !137, i64 20, !137, i64 24, !137, i64 28, !137, i64 32, !137, i64 36, !137, i64 40, !137, i64 44, !145, i64 48, !145, i64 56, !145, i64 64, !145, i64 72, !145, i64 80, !145, i64 88, !145, i64 96, !145, i64 104, !145, i64 112, !145, i64 120, !145, i64 128, !145, i64 136, !145, i64 144, !145, i64 152, !145, i64 160, !145, i64 168}
!174 = !{!175, !137, i64 28}
!175 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEE", !145, i64 0, !144, i64 8, !145, i64 16, !137, i64 24, !137, i64 28, !145, i64 32}
!176 = !{!"VP", i32 0, i64 337298, i64 -9087825873615977027, i64 336748, i64 -71788823611994443, i64 550}
!177 = !{!178, !137, i64 920}
!178 = !{!"_ZTSN11xercesc_2_712IGXMLScannerE", !141, i64 0, !144, i64 776, !179, i64 780, !137, i64 784, !145, i64 792, !151, i64 800, !145, i64 840, !137, i64 848, !145, i64 856, !145, i64 864, !145, i64 872, !145, i64 880, !145, i64 888, !145, i64 896, !145, i64 904, !145, i64 912, !137, i64 920, !145, i64 928, !145, i64 936, !145, i64 944, !145, i64 952, !145, i64 960, !145, i64 968, !145, i64 976, !180, i64 984}
!179 = !{!"_ZTSN11xercesc_2_77Grammar11GrammarTypeE", !138, i64 0}
!180 = !{!"_ZTSN11xercesc_2_715PSVIElemContextE", !144, i64 0, !144, i64 1, !137, i64 4, !137, i64 8, !137, i64 12, !145, i64 16, !145, i64 24, !145, i64 32}
!181 = !{!"branch_weights", i32 189535, i32 643926}
!182 = !{!"branch_weights", i32 190050, i32 643411}
!183 = !{!184, !137, i64 12}
!184 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !144, i64 8, !137, i64 12, !137, i64 16, !145, i64 24, !145, i64 32}
!185 = !{!144, !144, i64 0}
!186 = !{!178, !179, i64 780}
!187 = !{!"branch_weights", i32 514, i32 189536}
!188 = !{!"branch_weights", i32 514, i32 0}
!189 = !{!"branch_weights", i32 1, i32 190049}
!190 = !{!191, !137, i64 12}
!191 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE", !144, i64 8, !137, i64 12, !137, i64 16, !145, i64 24, !145, i64 32}
!192 = !{!"branch_weights", i32 191815, i32 0}
!193 = !{!191, !145, i64 32}
!194 = !{!191, !145, i64 24}
!195 = !{!196, !145, i64 24}
!196 = !{!"_ZTSN11xercesc_2_712KVStringPairE", !154, i64 0, !143, i64 8, !143, i64 16, !145, i64 24, !145, i64 32, !145, i64 40}
!197 = !{!178, !145, i64 856}
!198 = !{!"branch_weights", i32 191812, i32 3}
!199 = !{!"branch_weights", i32 0, i32 3}
!200 = !{!201, !201, i64 0}
!201 = !{!"short", !138, i64 0}
!202 = !{!"branch_weights", i32 3, i32 33}
!203 = distinct !{!203, !204, !205}
!204 = !{!"llvm.loop.mustprogress"}
!205 = !{!"llvm.loop.unroll.disable"}
!206 = !{!"branch_weights", i32 3, i32 0}
!207 = !{!141, !145, i64 360}
!208 = !{!209, !145, i64 0}
!209 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !145, i64 0, !145, i64 8}
!210 = !{!209, !145, i64 8}
!211 = !{!141, !137, i64 64}
!212 = !{!"branch_weights", i32 2, i32 191813}
!213 = !{!"branch_weights", i32 0, i32 191813}
!214 = !{!"branch_weights", i32 44, i32 191767}
!215 = !{!"branch_weights", i32 2, i32 42}
!216 = !{!"branch_weights", i32 0, i32 44}
!217 = distinct !{!217, !204, !205}
!218 = !{!"branch_weights", i32 191811, i32 0}
!219 = !{!"branch_weights", i32 0, i32 191811}
!220 = !{!"branch_weights", i32 42, i32 191768}
!221 = !{!"branch_weights", i32 1, i32 41}
!222 = !{!"branch_weights", i32 0, i32 42}
!223 = !{!"branch_weights", i32 1, i32 191810}
!224 = !{!"branch_weights", i32 2, i32 2}
!225 = !{!"branch_weights", i32 0, i32 191162, i32 650}
!226 = !{!"branch_weights", i32 0, i32 191162}
!227 = !{!175, !145, i64 32}
!228 = !{!175, !137, i64 24}
!229 = !{!175, !145, i64 0}
!230 = !{!"VP", i32 0, i64 191162, i64 3024540859536234746, i64 191162}
!231 = !{!175, !145, i64 16}
!232 = !{!"branch_weights", i32 1, i32 207}
!233 = !{!234, !137, i64 24}
!234 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_12SchemaAttDefEEE", !145, i64 0, !145, i64 8, !145, i64 16, !137, i64 24}
!235 = !{!"branch_weights", i32 349755, i32 0}
!236 = !{!234, !145, i64 16}
!237 = !{!"VP", i32 0, i64 191147, i64 -1309333655503989351, i64 191147}
!238 = !{!"branch_weights", i32 207, i32 2797833}
!239 = distinct !{!239, !204, !205}
!240 = !{!234, !145, i64 0}
!241 = !{!242, !245, i64 16}
!242 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !154, i64 0, !243, i64 8, !244, i64 12, !245, i64 16, !144, i64 20, !144, i64 21, !137, i64 24, !145, i64 32, !145, i64 40, !145, i64 48}
!243 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !138, i64 0}
!244 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !138, i64 0}
!245 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !138, i64 0}
!246 = !{!141, !145, i64 280}
!247 = !{!248, !145, i64 48}
!248 = !{!"_ZTSN11xercesc_2_713SchemaGrammarE", !249, i64 0, !145, i64 8, !145, i64 16, !145, i64 24, !145, i64 32, !145, i64 40, !145, i64 48, !145, i64 56, !145, i64 64, !145, i64 72, !145, i64 80, !145, i64 88, !145, i64 96, !145, i64 104, !145, i64 112, !145, i64 120, !144, i64 128, !250, i64 136}
!249 = !{!"_ZTSN11xercesc_2_77GrammarE", !154, i64 0}
!250 = !{!"_ZTSN11xercesc_2_724DatatypeValidatorFactoryE", !154, i64 0, !145, i64 8, !145, i64 16}
!251 = !{!141, !137, i64 52}
!252 = !{!141, !145, i64 312}
!253 = !{!141, !144, i64 24}
!254 = !{}
!255 = !{!"branch_weights", i32 650, i32 0}
!256 = !{!178, !144, i64 985}
!257 = !{!141, !145, i64 160}
!258 = !{!"branch_weights", i32 191162, i32 650}
!259 = !{!178, !145, i64 928}
!260 = !{!261, !145, i64 40}
!261 = !{!"_ZTSN11xercesc_2_714RefHashTableOfIjEE", !145, i64 0, !144, i64 8, !145, i64 16, !137, i64 24, !137, i64 28, !137, i64 32, !145, i64 40}
!262 = !{!261, !137, i64 24}
!263 = !{!261, !145, i64 0}
!264 = !{!"VP", i32 0, i64 191162, i64 4592451362407133634, i64 191162}
!265 = !{!261, !145, i64 16}
!266 = !{!"branch_weights", i32 1, i32 191}
!267 = !{!268, !145, i64 16}
!268 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemIjEE", !145, i64 0, !145, i64 8, !145, i64 16}
!269 = !{!"VP", i32 0, i64 191150, i64 2119983950972065349, i64 191150}
!270 = !{!"branch_weights", i32 392048, i32 0}
!271 = !{!"branch_weights", i32 191, i32 3136193}
!272 = distinct !{!272, !204, !205}
!273 = !{!"branch_weights", i32 24, i32 392048}
!274 = !{!268, !145, i64 0}
!275 = !{!"branch_weights", i32 13, i32 191149}
!276 = !{!"branch_weights", i32 13, i32 0}
!277 = !{!"branch_weights", i32 191149, i32 0}
!278 = !{!279, !145, i64 16}
!279 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !154, i64 0, !145, i64 8, !145, i64 16, !280, i64 24, !137, i64 28, !144, i64 32}
!280 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !138, i64 0}
!281 = !{!178, !145, i64 936}
!282 = !{!"VP", i32 0, i64 650, i64 3024540859536234746, i64 650}
!283 = !{!"branch_weights", i32 29, i32 843}
!284 = !{!"branch_weights", i32 0, i32 29}
!285 = distinct !{!285, !204, !205}
!286 = !{!"VP", i32 0, i64 21, i64 -1309333655503989351, i64 21}
!287 = !{!"branch_weights", i32 0, i32 650}
!288 = !{!178, !145, i64 944}
!289 = !{!"branch_weights", i32 191812, i32 0}
!290 = !{!"branch_weights", i32 0, i32 191812}
!291 = !{!151, !137, i64 0}
!292 = !{!151, !137, i64 4}
!293 = !{!151, !145, i64 32}
!294 = !{!196, !145, i64 32}
!295 = !{!296, !145, i64 80}
!296 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !242, i64 0, !137, i64 56, !297, i64 60, !298, i64 64, !299, i64 68, !145, i64 72, !145, i64 80, !145, i64 88, !145, i64 96, !145, i64 104, !145, i64 112}
!297 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !138, i64 0}
!298 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !138, i64 0}
!299 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !138, i64 0}
!300 = !{!301, !201, i64 12}
!301 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !154, i64 0, !144, i64 8, !144, i64 9, !144, i64 10, !144, i64 11, !201, i64 12, !137, i64 16, !137, i64 20, !137, i64 24, !302, i64 28, !303, i64 32, !145, i64 40, !145, i64 48, !145, i64 56, !145, i64 64, !145, i64 72, !145, i64 80, !145, i64 88, !145, i64 96}
!302 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !138, i64 0}
!303 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !138, i64 0}
!304 = !{!141, !144, i64 32}
!305 = !{!162, !145, i64 176}
!306 = !{!162, !144, i64 184}
!307 = !{!"branch_weights", i32 191162, i32 0}
!308 = !{!"branch_weights", i32 1127, i32 190035}
!309 = !{!"branch_weights", i32 190035, i32 0}
!310 = !{!"branch_weights", i32 0, i32 789922}
!311 = !{!"branch_weights", i32 284, i32 789638}
!312 = !{!"branch_weights", i32 789638, i32 41628303}
!313 = distinct !{!313, !204, !205}
!314 = !{!"branch_weights", i32 789636, i32 2}
!315 = !{!"VP", i32 1, i64 189966, i64 17, i64 61444, i64 33, i64 19582, i64 65, i64 17642, i64 16, i64 15794}
!316 = !{!"VP", i32 0, i64 191162, i64 4551225452058300029, i64 191162}
!317 = !{!242, !244, i64 12}
!318 = !{!178, !145, i64 952}
!319 = !{!178, !145, i64 960}
!320 = !{!141, !145, i64 320}
!321 = !{!242, !145, i64 32}
!322 = !{!323, !328, i64 64}
!323 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinitionE", !324, i64 0, !137, i64 56, !137, i64 60, !328, i64 64, !145, i64 72, !145, i64 80, !145, i64 88, !145, i64 96, !145, i64 104, !145, i64 112, !145, i64 120}
!324 = !{!"_ZTSN11xercesc_2_716XSTypeDefinitionE", !325, i64 0, !327, i64 36, !201, i64 40, !145, i64 48}
!325 = !{!"_ZTSN11xercesc_2_78XSObjectE", !326, i64 8, !145, i64 16, !145, i64 24, !137, i64 32}
!326 = !{!"_ZTSN11xercesc_2_711XSConstants14COMPONENT_TYPEE", !138, i64 0}
!327 = !{!"_ZTSN11xercesc_2_716XSTypeDefinition13TYPE_CATEGORYE", !138, i64 0}
!328 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition7VARIETYE", !138, i64 0}
!329 = !{!"branch_weights", i32 1, i32 2}
!330 = !{!"branch_weights", i32 2, i32 0}
!331 = !{!"branch_weights", i32 0, i32 2}
!332 = !{!"branch_weights", i32 127, i32 1}
!333 = !{!"branch_weights", i32 5249, i32 127}
!334 = !{!"branch_weights", i32 650, i32 191165}
!335 = !{!"branch_weights", i32 490, i32 160}
!336 = !{!"branch_weights", i32 160, i32 0}
!337 = !{!338, !145, i64 24}
!338 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !144, i64 0, !244, i64 4, !137, i64 8, !145, i64 16, !145, i64 24, !145, i64 32, !145, i64 40, !144, i64 48}
!339 = !{!340, !137, i64 20}
!340 = !{!"_ZTSN11xercesc_2_75QNameE", !154, i64 0, !137, i64 8, !137, i64 12, !137, i64 16, !137, i64 20, !145, i64 24, !145, i64 32, !145, i64 40, !145, i64 48}
!341 = !{!"branch_weights", i32 157, i32 3}
!342 = !{!340, !145, i64 32}
!343 = !{!"branch_weights", i32 0, i32 157}
!344 = !{!"branch_weights", i32 5, i32 152}
!345 = !{!"branch_weights", i32 0, i32 5}
!346 = distinct !{!346, !204, !205}
!347 = !{!141, !145, i64 112}
!348 = !{!"branch_weights", i32 191808, i32 7}
!349 = !{!"branch_weights", i32 7, i32 0}
!350 = !{!184, !145, i64 24}
!351 = !{!"branch_weights", i32 201935, i32 0}
!352 = !{!184, !145, i64 32}
!353 = !{!"branch_weights", i32 191808, i32 0}
!354 = !{!338, !244, i64 4}
!355 = !{!338, !144, i64 48}
!356 = !{!338, !145, i64 40}
!357 = !{!338, !144, i64 0}
!358 = !{!338, !145, i64 16}
!359 = !{!"branch_weights", i32 191815, i32 52059}
!360 = !{!"branch_weights", i32 0, i32 52059}
!361 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!362 = !{!"branch_weights", i32 1766, i32 190049}
!363 = distinct !{!363, !204, !205}
!364 = !{!"branch_weights", i32 189535, i32 515}
!365 = !{!"branch_weights", i32 189535, i32 0}
!366 = !{!"VP", i32 0, i64 390445, i64 -7904601540171109589, i64 390445}
!367 = !{!"branch_weights", i32 200910, i32 189535}
!368 = !{!"VP", i32 0, i64 200910, i64 8888819793864936031, i64 200910}
!369 = !{!242, !243, i64 8}
!370 = !{!"VP", i32 0, i64 200909, i64 4592451362407133634, i64 200909}
!371 = !{!"VP", i32 0, i64 200896, i64 2119983950972065349, i64 200896}
!372 = !{!"branch_weights", i32 11, i32 200899}
!373 = !{!"branch_weights", i32 9737, i32 191162}
!374 = !{!"branch_weights", i32 0, i32 9748}
!375 = !{!"branch_weights", i32 9748, i32 0}
!376 = !{!"VP", i32 0, i64 9748, i64 4551225452058300029, i64 9748}
!377 = !{!141, !145, i64 104}
!378 = !{!"VP", i32 0, i64 9748, i64 8498849983737978490, i64 9748}
!379 = !{!340, !145, i64 24}
!380 = !{!296, !145, i64 72}
!381 = !{!382, !383, i64 48}
!382 = !{!"_ZTSN11xercesc_2_78PSVIItemE", !145, i64 8, !145, i64 16, !145, i64 24, !145, i64 32, !145, i64 40, !383, i64 48, !384, i64 52, !144, i64 56, !145, i64 64, !145, i64 72}
!383 = !{!"_ZTSN11xercesc_2_78PSVIItem14VALIDITY_STATEE", !138, i64 0}
!384 = !{!"_ZTSN11xercesc_2_78PSVIItem15ASSESSMENT_TYPEE", !138, i64 0}
!385 = distinct !{!385, !204, !205}
!386 = !{!"branch_weights", i32 190050, i32 0}
!387 = !{!"function_entry_count", i64 514}
!388 = !{!"branch_weights", i32 0, i32 514}
!389 = !{!390, !145, i64 0}
!390 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEEE", !145, i64 0, !144, i64 8, !145, i64 16, !137, i64 24, !137, i64 28, !145, i64 32}
!391 = !{!390, !144, i64 8}
!392 = !{!390, !145, i64 16}
!393 = !{!390, !137, i64 24}
!394 = !{!390, !137, i64 28}
!395 = !{!390, !145, i64 32}
!396 = !{!"function_entry_count", i64 382980}
!397 = !{!"branch_weights", i32 0, i32 382980}
!398 = !{!"branch_weights", i32 20, i32 382957}
!399 = !{!"branch_weights", i32 3, i32 17}
!400 = !{!"branch_weights", i32 0, i32 20}
!401 = !{!"branch_weights", i32 0, i32 382977}
!402 = !{!"branch_weights", i32 2, i32 382975}
!403 = !{!141, !137, i64 60}
!404 = !{!"branch_weights", i32 382977, i32 0}
!405 = !{!296, !145, i64 104}
!406 = !{!407, !137, i64 4}
!407 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIjEE", !144, i64 0, !137, i64 4, !137, i64 8, !145, i64 16, !145, i64 24}
!408 = distinct !{!408, !204, !205}
!409 = !{!410, !145, i64 40}
!410 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEEE", !145, i64 0, !144, i64 8, !145, i64 16, !137, i64 24, !137, i64 28, !137, i64 32, !145, i64 40}
!411 = !{!410, !137, i64 24}
!412 = !{!410, !145, i64 0}
!413 = !{!410, !145, i64 16}
!414 = !{!415, !145, i64 16}
!415 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_9XMLAttDefEEE", !145, i64 0, !145, i64 8, !145, i64 16}
!416 = distinct !{!416, !204, !205}
!417 = !{!415, !145, i64 0}
!418 = !{!"function_entry_count", i64 885}
!419 = !{!261, !137, i64 32}
!420 = !{!"branch_weights", i32 885, i32 0}
!421 = !{!"VP", i32 0, i64 885, i64 3024540859536234746, i64 872, i64 4592451362407133634, i64 13}
!422 = !{!"branch_weights", i32 856, i32 29}
!423 = !{!"VP", i32 0, i64 29, i64 -1309333655503989351, i64 29}
!424 = !{!"branch_weights", i32 29, i32 0}
!425 = !{!261, !144, i64 8}
!426 = !{!"VP", i32 0, i64 885, i64 8345045103670217670, i64 885}
!427 = !{!268, !145, i64 8}
!428 = !{!429, !137, i64 24}
!429 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfIjEE", !145, i64 0, !144, i64 8, !145, i64 16, !137, i64 24, !137, i64 28, !145, i64 32}
!430 = !{!429, !137, i64 28}
!431 = !{!429, !144, i64 8}
!432 = !{!433, !145, i64 0}
!433 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemIjEE", !145, i64 0, !145, i64 8, !145, i64 16, !137, i64 24}
!434 = !{!433, !145, i64 16}
!435 = !{!433, !137, i64 24}
!436 = !{!429, !145, i64 0}
!437 = !{!429, !145, i64 16}
!438 = !{!433, !145, i64 8}
!439 = !{!"function_entry_count", i64 1087}
!440 = !{!"VP", i32 1, i64 1086, i64 17, i64 351, i64 33, i64 112, i64 65, i64 100, i64 16, i64 90}
!441 = !{!"function_entry_count", i64 191812}
!442 = !{!"branch_weights", i32 650, i32 191162}
!443 = !{!242, !144, i64 21}
!444 = !{!"branch_weights", i32 2089987, i32 191812, i32 0}
!445 = !{!"branch_weights", i32 0, i32 2089987}
!446 = !{!141, !144, i64 22}
!447 = distinct !{!447, !204, !205}
!448 = !{!146, !145, i64 16}
!449 = !{!450, !145, i64 163968}
!450 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !137, i64 0, !138, i64 4, !137, i64 32772, !138, i64 32776, !138, i64 49160, !143, i64 114696, !143, i64 114704, !451, i64 114712, !145, i64 114720, !144, i64 114728, !144, i64 114729, !145, i64 114736, !137, i64 114744, !138, i64 114748, !137, i64 163900, !137, i64 163904, !452, i64 163908, !144, i64 163912, !453, i64 163916, !137, i64 163920, !144, i64 163924, !144, i64 163925, !145, i64 163928, !145, i64 163936, !144, i64 163944, !144, i64 163945, !145, i64 163952, !454, i64 163960, !145, i64 163968, !144, i64 163976, !148, i64 163980, !145, i64 163984}
!451 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !138, i64 0}
!452 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !138, i64 0}
!453 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !138, i64 0}
!454 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !138, i64 0}
!455 = !{!138, !138, i64 0}
!456 = distinct !{!456, !204, !205}
!457 = !{!"function_entry_count", i64 108}
!458 = !{!459, !145, i64 40}
!459 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEEE", !145, i64 0, !144, i64 8, !145, i64 16, !137, i64 24, !137, i64 28, !137, i64 32, !145, i64 40}
!460 = !{!459, !137, i64 24}
!461 = !{!459, !145, i64 0}
!462 = !{!"VP", i32 0, i64 108, i64 3024540859536234746, i64 108}
!463 = !{!459, !145, i64 16}
!464 = !{!"branch_weights", i32 0, i32 1}
!465 = !{!466, !145, i64 16}
!466 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_17DatatypeValidatorEEE", !145, i64 0, !145, i64 8, !145, i64 16}
!467 = !{!"VP", i32 0, i64 118, i64 -1309333655503989351, i64 118}
!468 = !{!"branch_weights", i32 108, i32 10}
!469 = !{!"branch_weights", i32 0, i32 118}
!470 = distinct !{!470, !204, !205}
!471 = !{!"branch_weights", i32 0, i32 108}
!472 = !{!466, !145, i64 0}
!473 = !{!474, !137, i64 32}
!474 = !{!"_ZTSN11xercesc_2_717PSVIAttributeListE", !145, i64 0, !145, i64 8, !145, i64 16, !145, i64 24, !137, i64 32}
!475 = !{!474, !145, i64 8}
!476 = !{!477, !137, i64 12}
!477 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEEE", !144, i64 8, !137, i64 12, !137, i64 16, !145, i64 24, !145, i64 32}
!478 = !{!474, !145, i64 0}
!479 = !{!477, !145, i64 24}
!480 = !{!474, !145, i64 16}
!481 = !{!482, !145, i64 24}
!482 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !144, i64 8, !137, i64 12, !137, i64 16, !145, i64 24, !145, i64 32}
!483 = !{!482, !137, i64 12}
!484 = !{!474, !145, i64 24}
!485 = !{!"function_entry_count", i64 7}
!486 = !{!"branch_weights", i32 1, i32 223}
!487 = !{!"branch_weights", i32 0, i32 248}
!488 = !{!"branch_weights", i32 1, i32 247}
!489 = !{!"branch_weights", i32 223, i32 7713}
!490 = distinct !{!490, !204, !205}
!491 = !{!"function_entry_count", i64 379}
!492 = !{!493, !145, i64 0}
!493 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_7XMLAttrEEE", !145, i64 0, !145, i64 8, !145, i64 16, !137, i64 24}
!494 = !{!493, !145, i64 16}
!495 = !{!493, !137, i64 24}
!496 = !{!493, !145, i64 8}
!497 = !{!"function_entry_count", i64 52059}
!498 = !{!"function_entry_count", i64 3}
!499 = !{!141, !144, i64 29}
!500 = !{!141, !144, i64 30}
!501 = !{!502, !144, i64 1}
!502 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !144, i64 0, !144, i64 1, !144, i64 2, !145, i64 8, !145, i64 16, !145, i64 24, !145, i64 32, !145, i64 40, !145, i64 48, !145, i64 56, !145, i64 64, !145, i64 72}
!503 = !{!178, !145, i64 880}
!504 = !{!141, !145, i64 288}
!505 = !{!"VP", i32 0, i64 3, i64 -908290396823866376, i64 3}
!506 = !{!141, !145, i64 304}
!507 = !{!141, !144, i64 25}
!508 = !{!141, !145, i64 144}
!509 = !{!163, !145, i64 16}
!510 = !{!164, !145, i64 16}
!511 = !{!162, !145, i64 56}
!512 = !{!141, !144, i64 19}
!513 = !{!164, !144, i64 8}
!514 = !{!178, !145, i64 864}
!515 = !{!"VP", i32 0, i64 3, i64 904836365347592004, i64 3}
!516 = !{!141, !149, i64 272}
!517 = !{!141, !144, i64 38}
!518 = !{!141, !145, i64 120}
!519 = !{!"VP", i32 0, i64 3, i64 -6986800612215443991, i64 1, i64 5917074840883967680, i64 1, i64 8206024640975804416, i64 1}
!520 = !{!141, !145, i64 136}
!521 = !{!"branch_weights", i32 2, i32 1}
!522 = !{!"VP", i32 0, i64 1, i64 -4370484139658730989, i64 1}
!523 = !{!"VP", i32 0, i64 3, i64 -2275993542076608500, i64 1, i64 -5752309888053174045, i64 1, i64 5500132202510016629, i64 1}
!524 = !{!141, !145, i64 168}
!525 = !{!"VP", i32 0, i64 3, i64 -2129057095305504596, i64 3}
!526 = !{!"VP", i32 0, i64 3, i64 4041352807516153901, i64 3}
!527 = !{!141, !144, i64 176}
!528 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
!529 = !{!178, !145, i64 888}
!530 = !{!141, !137, i64 56}
!531 = !{!141, !137, i64 68}
!532 = !{!"VP", i32 0, i64 3, i64 8828421665688538749, i64 3}
!533 = !{!141, !144, i64 21}
!534 = !{!141, !137, i64 40}
!535 = !{!141, !144, i64 23}
!536 = !{!178, !144, i64 776}
!537 = !{!178, !145, i64 968}
!538 = !{!178, !145, i64 976}
!539 = !{!540, !144, i64 0}
!540 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIbEE", !144, i64 0, !137, i64 4, !137, i64 8, !145, i64 16, !145, i64 24}
!541 = !{!540, !137, i64 4}
!542 = !{!540, !137, i64 8}
!543 = !{!540, !145, i64 16}
!544 = !{!540, !145, i64 24}
!545 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
!546 = !{!"VP", i32 1, i64 3, i64 8, i64 3}
!547 = !{!"VP", i32 0, i64 3, i64 -5363407099609564311, i64 3}
!548 = !{!178, !145, i64 872}
!549 = !{!"VP", i32 0, i64 3, i64 3963476283337215600, i64 3}
!550 = !{!141, !144, i64 17}
!551 = !{!141, !145, i64 344}
!552 = !{!141, !137, i64 44}
!553 = !{!141, !137, i64 48}
!554 = !{!141, !137, i64 88}
!555 = !{!178, !145, i64 904}
!556 = !{!"function_entry_count", i64 190248}
!557 = !{!"branch_weights", i32 189544, i32 704}
!558 = !{!"branch_weights", i32 1, i32 703}
!559 = !{!"branch_weights", i32 4167, i32 885}
!560 = !{!"VP", i32 0, i64 885, i64 -7405368087501025645, i64 885}
!561 = distinct !{!561, !204, !205}
!562 = !{!"branch_weights", i32 4349, i32 703}
!563 = distinct !{!563, !204, !205}
!564 = !{!"function_entry_count", i64 190056}
!565 = !{!"branch_weights", i32 190056, i32 0}
!566 = distinct !{!566, !204, !205}
!567 = distinct !{!567, !204, !205}
!568 = !{!"function_entry_count", i64 9}
!569 = !{!570, !137, i64 32}
!570 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEE", !145, i64 0, !145, i64 8, !145, i64 16, !137, i64 24, !137, i64 28, !137, i64 32}
!571 = !{!"branch_weights", i32 1, i32 143}
!572 = !{!570, !137, i64 28}
!573 = !{!570, !145, i64 8}
!574 = !{!"branch_weights", i32 454, i32 47}
!575 = !{!576, !145, i64 8}
!576 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEE", !145, i64 0, !145, i64 8}
!577 = !{!576, !145, i64 0}
!578 = !{!"branch_weights", i32 0, i32 47}
!579 = !{!"VP", i32 0, i64 47, i64 6620649524856465861, i64 47}
!580 = !{!570, !145, i64 0}
!581 = !{!"VP", i32 0, i64 47, i64 -7405368087501025645, i64 47}
!582 = !{!"branch_weights", i32 47, i32 0}
!583 = distinct !{!583, !204, !205}
!584 = !{!"branch_weights", i32 7873, i32 143}
!585 = distinct !{!585, !204, !205}
!586 = !{!"function_entry_count", i64 1512649}
!587 = !{!"branch_weights", i32 0, i32 1512649}
!588 = !{!"branch_weights", i32 1135, i32 1511514}
!589 = !{!"VP", i32 0, i64 1511514, i64 -6289420323266357339, i64 1511514}
!590 = !{!"branch_weights", i32 1511514, i32 0}
!591 = !{!"branch_weights", i32 0, i32 1511514}
!592 = !{!"branch_weights", i32 335386, i32 1176128}
!593 = !{!173, !137, i64 32}
!594 = !{!"branch_weights", i32 0, i32 1176128}
!595 = !{!"branch_weights", i32 912714, i32 263414}
!596 = !{!597, !145, i64 0}
!597 = !{!"_ZTSN11xercesc_2_79ElemStack9StackElemE", !145, i64 0, !137, i64 8, !137, i64 12, !137, i64 16, !145, i64 24, !145, i64 32, !137, i64 40, !137, i64 44, !144, i64 48, !144, i64 49, !144, i64 50, !137, i64 52, !145, i64 56, !137, i64 64, !145, i64 72, !137, i64 80, !137, i64 84}
!598 = !{!"branch_weights", i32 925594, i32 585920}
!599 = !{!"branch_weights", i32 0, i32 912714, i32 12880}
!600 = !{!"branch_weights", i32 0, i32 912714}
!601 = !{!"VP", i32 0, i64 912714, i64 1934475108968092020, i64 912714}
!602 = !{!"branch_weights", i32 12880, i32 0}
!603 = !{!"VP", i32 1, i64 12875, i64 17, i64 4164, i64 33, i64 1327, i64 65, i64 1195, i64 16, i64 1070}
!604 = !{!605, !145, i64 24}
!605 = !{!"_ZTSN11xercesc_2_725IdentityConstraintHandlerE", !145, i64 8, !145, i64 16, !145, i64 24, !145, i64 32, !145, i64 40}
!606 = !{!607, !137, i64 0}
!607 = !{!"_ZTSN11xercesc_2_717XPathMatcherStackE", !137, i64 0, !145, i64 8, !145, i64 16}
!608 = !{!"branch_weights", i32 0, i32 12880}
!609 = !{!"branch_weights", i32 0, i32 2718768}
!610 = !{!"branch_weights", i32 2718764, i32 4}
!611 = !{!"VP", i32 1, i64 12880, i64 33, i64 3121, i64 9, i64 2062, i64 17, i64 1942, i64 8, i64 1516}
!612 = !{!"VP", i32 0, i64 12880, i64 6466047598414072023, i64 12880}
!613 = !{!"branch_weights", i32 585920, i32 0}
!614 = !{!"branch_weights", i32 250534, i32 335386}
!615 = !{!"branch_weights", i32 214121, i32 121265}
!616 = !{!"VP", i32 1, i64 585708, i64 17, i64 189444, i64 33, i64 60377, i64 65, i64 54395, i64 16, i64 48695}
!617 = !{!"branch_weights", i32 0, i32 585920}
!618 = !{!"VP", i32 1, i64 585920, i64 33, i64 141979, i64 9, i64 93842, i64 17, i64 88365, i64 8, i64 68966}
!619 = !{!"VP", i32 0, i64 585920, i64 6466047598414072023, i64 585920}
!620 = !{!"branch_weights", i32 0, i32 1135}
!621 = !{!"VP", i32 0, i64 1135, i64 490065663467013723, i64 667, i64 -7462181331426179732, i64 468}
!622 = !{!"function_entry_count", i64 1523078}
!623 = !{!"VP", i32 1, i64 1523078, i64 33, i64 369071, i64 9, i64 243938, i64 17, i64 229702, i64 8, i64 179275}
!624 = !{!"function_entry_count", i64 4}
!625 = !{!"branch_weights", i32 4, i32 0}
!626 = !{!"branch_weights", i32 1, i32 1}
!627 = !{!"branch_weights", i32 0, i32 4}
!628 = !{!"branch_weights", i32 0, i32 64}
!629 = !{!"branch_weights", i32 1921, i32 127}
!630 = !{!"branch_weights", i32 0, i32 58}
!631 = !{!"branch_weights", i32 1729, i32 127}
!632 = !{!"VP", i32 0, i64 4, i64 8828421665688538749, i64 4}
!633 = !{!"function_entry_count", i64 190050}
!634 = !{!"branch_weights", i32 190049, i32 1}
!635 = !{!178, !145, i64 840}
!636 = !{!"branch_weights", i32 574788, i32 0}
!637 = !{!"branch_weights", i32 45, i32 191766}
!638 = !{!"branch_weights", i32 2, i32 43}
!639 = !{!"branch_weights", i32 0, i32 45}
!640 = !{!"branch_weights", i32 191, i32 1}
!641 = !{!"branch_weights", i32 1, i32 95}
!642 = !{!"branch_weights", i32 5953, i32 191}
!643 = !{!"branch_weights", i32 190049, i32 1766}
!644 = distinct !{!644, !204, !205}
!645 = !{!141, !144, i64 26}
!646 = !{!"branch_weights", i32 189535, i32 1}
!647 = !{!"branch_weights", i32 191163, i32 2}
!648 = !{!"branch_weights", i32 191165, i32 0}
!649 = !{!"branch_weights", i32 1, i32 191164}
!650 = !{!"branch_weights", i32 1, i32 0}
!651 = !{!"branch_weights", i32 1, i32 14}
!652 = !{!"branch_weights", i32 15, i32 0}
!653 = !{!162, !144, i64 72}
!654 = !{!"branch_weights", i32 189535, i32 1630}
!655 = distinct !{!655, !204, !205}
!656 = !{!"branch_weights", i32 0, i32 189536}
!657 = !{!"VP", i32 0, i64 189536, i64 -5622634898759239754, i64 189536}
!658 = !{!"branch_weights", i32 189536, i32 0}
!659 = !{!162, !145, i64 64}
!660 = !{!162, !145, i64 40}
!661 = !{!"function_entry_count", i64 1}
!662 = !{!"branch_weights", i32 1, i32 40}
!663 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!664 = !{!"VP", i32 1, i64 1, i64 65, i64 1}
!665 = !{!178, !145, i64 896}
!666 = !{!667, !137, i64 4}
!667 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPtEE", !144, i64 0, !137, i64 4, !137, i64 8, !145, i64 16, !145, i64 24}
!668 = !{!"branch_weights", i32 1, i32 127}
!669 = distinct !{!669, !204, !205}
!670 = !{!671, !145, i64 0}
!671 = !{!"_ZTSN11xercesc_2_79ReaderMgr17LastExtEntityInfoE", !145, i64 0, !145, i64 8, !143, i64 16, !143, i64 24}
!672 = !{!673, !674, i64 0}
!673 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !674, i64 0, !145, i64 8, !145, i64 16, !145, i64 24, !145, i64 32, !145, i64 40}
!674 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !138, i64 0}
!675 = !{!673, !145, i64 8}
!676 = !{!673, !145, i64 16}
!677 = !{!673, !145, i64 24}
!678 = !{!673, !145, i64 32}
!679 = !{!673, !145, i64 40}
!680 = !{!141, !144, i64 37}
!681 = !{!141, !144, i64 16}
!682 = !{!"VP", i32 0, i64 1, i64 -520264778821150526, i64 1}
!683 = !{!"VP", i32 0, i64 1, i64 1182781643851007636, i64 1}
!684 = !{!685, !144, i64 224}
!685 = !{!"_ZTSN11xercesc_2_712XSDDOMParserE", !686, i64 0, !144, i64 224, !137, i64 228, !137, i64 232, !137, i64 236, !145, i64 240, !145, i64 248, !145, i64 256, !151, i64 264, !164, i64 304, !693, i64 328}
!686 = !{!"_ZTSN11xercesc_2_715XercesDOMParserE", !687, i64 0, !145, i64 200, !145, i64 208, !145, i64 216}
!687 = !{!"_ZTSN11xercesc_2_717AbstractDOMParserE", !688, i64 0, !689, i64 8, !690, i64 16, !691, i64 24, !692, i64 32, !144, i64 40, !144, i64 41, !144, i64 42, !144, i64 43, !144, i64 44, !144, i64 45, !144, i64 46, !145, i64 48, !145, i64 56, !145, i64 64, !145, i64 72, !145, i64 80, !145, i64 88, !145, i64 96, !145, i64 104, !145, i64 112, !145, i64 120, !145, i64 128, !145, i64 136, !145, i64 144, !145, i64 152, !150, i64 160, !145, i64 184, !145, i64 192}
!688 = !{!"_ZTSN11xercesc_2_718XMLDocumentHandlerE"}
!689 = !{!"_ZTSN11xercesc_2_716XMLErrorReporterE"}
!690 = !{!"_ZTSN11xercesc_2_716XMLEntityHandlerE"}
!691 = !{!"_ZTSN11xercesc_2_714DocTypeHandlerE"}
!692 = !{!"_ZTSN11xercesc_2_711PSVIHandlerE"}
!693 = !{!"_ZTSN11xercesc_2_710XSDLocatorE", !147, i64 0, !143, i64 8, !143, i64 16, !145, i64 24, !145, i64 32}
!694 = !{!"VP", i32 0, i64 1, i64 3119278703134048353, i64 1}
!695 = !{!"VP", i32 0, i64 1, i64 -8251349461766846900, i64 1}
!696 = !{!"branch_weights", i32 1, i32 31}
!697 = !{!"branch_weights", i32 32, i32 0}
!698 = !{!152, !145, i64 48}
!699 = !{!152, !137, i64 60}
!700 = !{!597, !144, i64 48}
!701 = !{!"VP", i32 0, i64 1, i64 -1984415336261901014, i64 1}
!702 = !{!"VP", i32 0, i64 1, i64 -5575802696610893904, i64 1}
!703 = !{!"VP", i32 0, i64 1, i64 310575971083247667, i64 1}
!704 = !{!"VP", i32 0, i64 1, i64 -3228203282622328352, i64 1}
!705 = !{!"VP", i32 0, i64 1, i64 1191909077855538300, i64 1}
!706 = !{!"VP", i32 0, i64 1, i64 -8600786475566429199, i64 1}
!707 = !{!"VP", i32 0, i64 1, i64 2633881221138833613, i64 1}
!708 = !{!"VP", i32 0, i64 1, i64 5513836325237379100, i64 1}
!709 = !{!"function_entry_count", i64 2}
!710 = !{!667, !145, i64 24}
!711 = !{!667, !145, i64 16}
!712 = !{!"function_entry_count", i64 191815}
!713 = !{!450, !137, i64 163904}
!714 = !{!"branch_weights", i32 2281915, i32 0}
!715 = !{!"branch_weights", i32 191815, i32 2090100}
!716 = !{!"branch_weights", i32 0, i32 2090100}
!717 = !{!"branch_weights", i32 2090100, i32 0}
!718 = !{!"branch_weights", i32 191815, i32 2090100, i32 0}
!719 = distinct !{!719, !204, !205}
!720 = distinct !{!720, !204, !205}
!721 = !{!"function_entry_count", i64 222}
!722 = !{!"branch_weights", i32 222, i32 0}
!723 = !{!"branch_weights", i32 3832, i32 0}
!724 = !{!"branch_weights", i32 0, i32 3832}
!725 = !{!"branch_weights", i32 222, i32 3610}
!726 = !{!"branch_weights", i32 0, i32 3610}
!727 = distinct !{!727, !204, !205}
!728 = !{!"branch_weights", i32 3610, i32 0, i32 0}
!729 = !{!"branch_weights", i32 3610, i32 0}
!730 = !{!"branch_weights", i32 3610, i32 0, i32 0, i32 0}
!731 = !{!279, !144, i64 32}
!732 = !{!146, !144, i64 56}
!733 = !{!"branch_weights", i32 2534293, i32 0}
!734 = !{!450, !137, i64 0}
!735 = !{!450, !137, i64 32772}
!736 = !{!"branch_weights", i32 2492, i32 1}
!737 = !{!"branch_weights", i32 2531800, i32 39432940}
!738 = !{!"branch_weights", i32 2492, i32 41962248}
!739 = distinct !{!739, !204, !205}
!740 = !{!"branch_weights", i32 1937403, i32 596890}
!741 = !{!450, !143, i64 114696}
!742 = !{!"VP", i32 1, i64 596890, i64 33, i64 144637, i64 9, i64 95599, i64 17, i64 90019, i64 8, i64 70257}
!743 = !{!"branch_weights", i32 2531800, i32 2493}
!744 = !{!450, !144, i64 114729}
!745 = !{!"branch_weights", i32 2493, i32 0}
!746 = !{!"branch_weights", i32 1512649, i32 1021644}
!747 = !{!"branch_weights", i32 1019520, i32 2124}
!748 = !{!"branch_weights", i32 1019520, i32 0}
!749 = !{!"branch_weights", i32 1512649, i32 0}
!750 = !{!"branch_weights", i32 0, i32 1021644}
!751 = distinct !{!751, !204, !205}
!752 = !{!597, !144, i64 50}
!753 = !{!"branch_weights", i32 1021644, i32 0, i32 0}
!754 = !{!"branch_weights", i32 1021644, i32 0}
!755 = !{!756, !145, i64 0}
!756 = !{!"_ZTSN11xercesc_2_720EndOfEntityExceptionE", !145, i64 0, !137, i64 8}
!757 = distinct !{!757, !204, !205}
!758 = !{!"branch_weights", i32 1275875, i32 235639}
!759 = !{!"branch_weights", i32 1275875, i32 0}
!760 = !{!"VP", i32 0, i64 1512649, i64 8414379776928201523, i64 1512649}
!761 = !{!141, !144, i64 18}
!762 = !{!763, !145, i64 0}
!763 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEE", !145, i64 0, !145, i64 8}
!764 = !{!765, !145, i64 32}
!765 = !{!"_ZTSN11xercesc_2_710DTDGrammarE", !249, i64 0, !145, i64 8, !145, i64 16, !145, i64 24, !145, i64 32, !145, i64 40, !145, i64 48, !137, i64 56, !144, i64 60}
!766 = !{!767, !145, i64 40}
!767 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !154, i64 0, !137, i64 8, !137, i64 12, !145, i64 16, !145, i64 24, !145, i64 32, !145, i64 40, !145, i64 48, !145, i64 56, !145, i64 64}
!768 = !{!767, !145, i64 32}
!769 = !{!767, !145, i64 56}
!770 = !{!767, !145, i64 48}
!771 = !{!767, !145, i64 24}
!772 = !{!767, !145, i64 16}
!773 = !{!767, !137, i64 12}
!774 = !{!"function_entry_count", i64 496163}
!775 = !{!"branch_weights", i32 0, i32 496163}
!776 = !{!"VP", i32 0, i64 496163, i64 -6289420323266357339, i64 496163}
!777 = !{!"branch_weights", i32 0, i32 496163, i32 0}
!778 = !{!"VP", i32 0, i64 496163, i64 -5622634898759239754, i64 496163}
!779 = !{!"branch_weights", i32 496163, i32 0}
!780 = !{!"VP", i32 0, i64 496163, i64 -8600786475566429199, i64 496163}
!781 = !{!178, !145, i64 792}
!782 = !{!783, !145, i64 0}
!783 = !{!"_ZTSN11xercesc_2_727SubstitutionGroupComparatorE", !145, i64 0, !145, i64 8}
!784 = !{!783, !145, i64 8}
!785 = distinct !{!785, !204, !205}
!786 = !{!"function_entry_count", i64 832914}
!787 = !{!"branch_weights", i32 832914, i32 0}
!788 = !{!407, !145, i64 24}
!789 = !{!407, !145, i64 16}
!790 = !{!"function_entry_count", i64 4843157}
!791 = !{!"branch_weights", i32 0, i32 4843157}
!792 = !{!166, !145, i64 24}
!793 = !{!"branch_weights", i32 4843157, i32 0}
!794 = !{!166, !145, i64 16}
!795 = !{!796, !145, i64 40}
!796 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !797, i64 8, !145, i64 16, !137, i64 24, !145, i64 32, !145, i64 40}
!797 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !138, i64 0}
!798 = distinct !{!798, !204, !205}
!799 = distinct !{!799, !204, !205}
!800 = distinct !{!800, !204, !205}
!801 = !{!"function_entry_count", i64 158619}
!802 = !{!"VP", i32 0, i64 158619, i64 3024540859536234746, i64 158619}
!803 = !{!"VP", i32 0, i64 158607, i64 -1309333655503989351, i64 158607}
!804 = !{!477, !145, i64 32}
!805 = !{!477, !137, i64 16}
!806 = distinct !{!806, !204, !205}
!807 = !{!"function_entry_count", i64 188992}
!808 = !{!482, !137, i64 16}
!809 = !{!"branch_weights", i32 9, i32 188983}
!810 = !{!482, !145, i64 32}
!811 = !{!"VP", i32 0, i64 9, i64 8345045103670217670, i64 9}
!812 = !{!"branch_weights", i32 143, i32 1}
!813 = !{!"branch_weights", i32 143, i32 9329}
!814 = distinct !{!814, !204, !205}
!815 = !{!"VP", i32 0, i64 9, i64 -7405368087501025645, i64 9}
!816 = !{!"function_entry_count", i64 5}
!817 = !{!818, !137, i64 32}
!818 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEE", !145, i64 0, !145, i64 8, !145, i64 16, !137, i64 24, !137, i64 28, !137, i64 32}
!819 = !{!"branch_weights", i32 1, i32 159}
!820 = !{!"branch_weights", i32 159, i32 161}
!821 = distinct !{!821, !204, !205}
!822 = !{!818, !145, i64 8}
!823 = distinct !{!823, !204, !205}
!824 = !{!825, !145, i64 0}
!825 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEEE", !145, i64 0, !145, i64 8}
!826 = !{!825, !145, i64 8}
!827 = distinct !{!827, !204, !205}
!828 = distinct !{!828, !204, !205}
!829 = !{!429, !145, i64 32}
!830 = distinct !{!830, !204, !205}
!831 = !{!832, !145, i64 0}
!832 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEEE", !145, i64 0, !145, i64 8}
!833 = !{!832, !145, i64 8}
!834 = distinct !{!834, !204, !205}
!835 = distinct !{!835, !204, !205}
!836 = distinct !{!836, !204, !205}
!837 = distinct !{!837, !204, !205}
!838 = !{!"function_entry_count", i64 10}
!839 = !{!184, !137, i64 16}
!840 = !{!"branch_weights", i32 0, i32 10}
!841 = distinct !{!841, !204, !205}
!842 = !{!843, !145, i64 0}
!843 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEEE", !145, i64 0, !145, i64 8}
!844 = !{!843, !145, i64 8}
!845 = distinct !{!845, !204, !205}
!846 = distinct !{!846, !204, !205}
!847 = distinct !{!847, !204, !205}

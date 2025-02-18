; ModuleID = 'SGXMLScanner.cpp'
source_filename = "SGXMLScanner.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::SGXMLScanner" = type { %"class.xercesc_2_7::XMLScanner", i8, i32, i32, ptr, %"class.xercesc_2_7::XMLBuffer", ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.xercesc_2_7::PSVIElemContext" }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"struct.xercesc_2_7::PSVIElemContext" = type { i8, i8, i32, i32, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::PSVIAttributeList" = type <{ ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf" }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"class.xercesc_2_7::KVStringPair" = type { %"class.xercesc_2_7::XSerializable", i64, i64, ptr, ptr, ptr }
%"struct.xercesc_2_7::ElemStack::StackElem" = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, i32, ptr, i32, i32 }
%"class.xercesc_2_7::SchemaValidator" = type <{ %"class.xercesc_2_7::XMLValidator", ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, %"class.xercesc_2_7::XMLBuffer", i8, i8, [6 x i8], %"class.xercesc_2_7::XSDErrorReporter", ptr, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::XMLValidator" = type { ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSDErrorReporter" = type { ptr, i8, ptr }
%"class.xercesc_2_7::ValueStackOf.8" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf.9" }
%"class.xercesc_2_7::ValueVectorOf.9" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ComplexTypeInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.5" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLSchemaDescriptionImpl" = type { %"class.xercesc_2_7::XMLSchemaDescription", i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLSchemaDescription" = type { %"class.xercesc_2_7::XMLGrammarDescription" }
%"class.xercesc_2_7::XMLGrammarDescription" = type { %"class.xercesc_2_7::XSerializable", ptr }
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
%"class.xercesc_2_7::SubstitutionGroupComparator" = type { ptr, ptr }
%"class.xercesc_2_7::RefHash3KeysIdPool" = type { ptr, i8, ptr, i32, ptr, ptr, i32, i32 }
%"struct.xercesc_2_7::RefHash3KeysTableBucketElem" = type { ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf.12" = type { ptr, i8, ptr, i32, i32, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.2" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaGrammar" = type { %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::DatatypeValidatorFactory" }
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::DatatypeValidatorFactory" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::SchemaAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSSimpleTypeDefinition" = type { %"class.xercesc_2_7::XSTypeDefinition", i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSTypeDefinition" = type { %"class.xercesc_2_7::XSObject.base", i32, i16, ptr }
%"class.xercesc_2_7::XSObject.base" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::PSVIItem" = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem.13" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueHashTableOf" = type { ptr, ptr, i32, ptr }
%"struct.xercesc_2_7::ValueHashTableBucketElem" = type { i16, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf.7" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.3" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.15" = type { ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.16" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.4" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.11" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::IdentityConstraintHandler" = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::ArrayJanitor.17" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.18" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ValueStackOfIbE3popEv = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_ = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKtj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItED2Ev = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjED2Ev = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjE3putEPviPj = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv = comdat any

$_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_716ValueHashTableOfItE11containsKeyEPKv = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj = comdat any

$_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE = comdat any

$_ZNK11xercesc_2_712SGXMLScanner21getCurrentGrammarTypeEv = comdat any

$_ZNK11xercesc_2_712SGXMLScanner7getNameEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv = comdat any

$_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721MalformedURLException7getTypeEv = comdat any

$_ZNK11xercesc_2_721MalformedURLException9duplicateEv = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIbE15removeElementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIbE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED0Ev = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjE6rehashEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMLErrs5CodesE = comdat any

$_ZTIN11xercesc_2_77XMLErrs5CodesE = comdat any

$_ZTSN11xercesc_2_78XMLValid5CodesE = comdat any

$_ZTIN11xercesc_2_78XMLValid5CodesE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_720EndOfEntityExceptionE = comdat any

$_ZTIN11xercesc_2_720EndOfEntityExceptionE = comdat any

$_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTSN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTIN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = comdat any

@_ZTVN11xercesc_2_712SGXMLScannerE = dso_local unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712SGXMLScannerE, ptr @_ZN11xercesc_2_712SGXMLScannerD2Ev, ptr @_ZN11xercesc_2_712SGXMLScannerD0Ev, ptr @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_712SGXMLScanner21getCurrentGrammarTypeEv, ptr @_ZNK11xercesc_2_712SGXMLScanner7getNameEv, ptr @_ZN11xercesc_2_712SGXMLScanner17getEntityDeclPoolEv, ptr @_ZNK11xercesc_2_712SGXMLScanner17getEntityDeclPoolEv, ptr @_ZN11xercesc_2_712SGXMLScanner12resolveQNameEPKtRNS_9XMLBufferEsRi, ptr @_ZN11xercesc_2_712SGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712SGXMLScanner8scanNextERNS_13XMLPScanTokenE, ptr @_ZN11xercesc_2_712SGXMLScanner11loadGrammarERKNS_11InputSourceEsb, ptr @_ZN11xercesc_2_712SGXMLScanner13scanCDSectionEv, ptr @_ZN11xercesc_2_712SGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712SGXMLScanner13scanEntityRefEbRtS1_Rb, ptr @_ZN11xercesc_2_712SGXMLScanner15scanDocTypeDeclEv, ptr @_ZN11xercesc_2_712SGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712SGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712SGXMLScanner15resolveSystemIdEPKtS2_, ptr @_ZN11xercesc_2_712SGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_712SGXMLScanner10scanEndTagERb] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_77XMLErrs5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMLErrs5CodesE }, comdat, align 8
@_ZTSN11xercesc_2_78XMLValid5CodesE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_78XMLValid5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_78XMLValid5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78XMLValid5CodesE }, comdat, align 8
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@.str = private unnamed_addr constant [17 x i8] c"SGXMLScanner.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720EndOfEntityExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720EndOfEntityExceptionE }, comdat, align 8
@_ZZN11xercesc_2_712SGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERbE7tmpList = internal constant [6 x i16] [i16 39, i16 34, i16 62, i16 60, i16 47, i16 0], align 2
@_ZZN11xercesc_2_712SGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERbE7tmpList_0 = internal constant [4 x i16] [i16 62, i16 60, i16 47, i16 0], align 2
@_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722UnexpectedEOFExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZZN11xercesc_2_712SGXMLScanner15scanDocTypeDeclEvE9doctypeIE = internal constant [3 x i16] [i16 91, i16 62, i16 0], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni11fgXMLStringE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni5fgAmpE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L11chAmpersandE = internal constant i16 38, align 2
@_ZN11xercesc_2_76XMLUni4fgLTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L11chOpenAngleE = internal constant i16 60, align 2
@_ZN11xercesc_2_76XMLUni4fgGTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L12chCloseAngleE = internal constant i16 62, align 2
@_ZN11xercesc_2_76XMLUni6fgQuotE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L13chDoubleQuoteE = internal constant i16 34, align 2
@_ZN11xercesc_2_76XMLUni6fgAposE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L13chSingleQuoteE = internal constant i16 39, align 2
@_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols11fgDT_ANYURIE = external constant [0 x i16], align 2
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
@_ZZN11xercesc_2_712SGXMLScanner13scanCDSectionEvE10CDataClose = internal constant [3 x i16] [i16 93, i16 62, i16 0], align 2
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_715XMLContentModel13gInvalidTransE = external local_unnamed_addr constant i32, align 4
@_ZTSN11xercesc_2_712SGXMLScannerE = dso_local constant [30 x i8] c"N11xercesc_2_712SGXMLScannerE\00", align 1
@_ZTIN11xercesc_2_710XMLScannerE = external constant ptr
@_ZTIN11xercesc_2_712SGXMLScannerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712SGXMLScannerE, ptr @_ZTIN11xercesc_2_710XMLScannerE }, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev, ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv, ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE = external constant [0 x i16], align 2
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
@_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTVN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_721MalformedURLExceptionD0Ev, ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv, ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgSGXMLScannerE = external constant [0 x i16], align 2
@.str.4 = private unnamed_addr constant [36 x i8] c"./xercesc/util/RefHash3KeysIdPool.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@.str.5 = private unnamed_addr constant [34 x i8] c"./xercesc/util/ValueHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local constant [49 x i8] c"N11xercesc_2_711RefVectorOfINS_12KVStringPairEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local constant [53 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE7cleanupEv] }, comdat, align 8

@_ZN11xercesc_2_712SGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712SGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE
@_ZN11xercesc_2_712SGXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712SGXMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE
@_ZN11xercesc_2_712SGXMLScannerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712SGXMLScannerD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat !prof !55 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTVN11xercesc_2_712SGXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %5 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 1
  store i8 0, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  store i32 2, ptr %6, align 4, !tbaa !79
  %7 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 3
  store i32 16, ptr %7, align 8, !tbaa !80
  %8 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 4
  store ptr null, ptr %8, align 8, !tbaa !81
  %9 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5
  store i32 0, ptr %9, align 8, !tbaa !82
  %10 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5, i32 1
  store i32 1023, ptr %10, align 4, !tbaa !83
  %11 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5, i32 2
  store i32 0, ptr %11, align 8, !tbaa !84
  %12 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5, i32 3
  store i8 0, ptr %12, align 4, !tbaa !85
  %13 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5, i32 4
  store ptr %3, ptr %13, align 8, !tbaa !86
  %14 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5, i32 5
  %15 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %16 = load ptr, ptr %3, align 8, !tbaa !56
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 2048)
          to label %20 unwind label %25

20:                                               ; preds = %4
  store ptr %19, ptr %15, align 8, !tbaa !87
  store i16 0, ptr %19, align 2, !tbaa !88
  %21 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 6
  %22 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  store i32 32, ptr %22, align 8, !tbaa !90
  %23 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 9
  %24 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %23, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %24, i8 0, i64 48, i1 false)
  invoke void @_ZN11xercesc_2_712SGXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
          to label %42 unwind label %29

25:                                               ; preds = %4
  %26 = landingpad { ptr, i32 }
          cleanup
  %27 = extractvalue { ptr, i32 } %26, 0
  %28 = extractvalue { ptr, i32 } %26, 1
  br label %63

29:                                               ; preds = %20
  %30 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %31 = extractvalue { ptr, i32 } %30, 0
  %32 = extractvalue { ptr, i32 } %30, 1
  %33 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #18
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = tail call ptr @__cxa_begin_catch(ptr %31) #18
  invoke void @__cxa_rethrow() #20
          to label %71 unwind label %37

37:                                               ; preds = %35
  %38 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %39 unwind label %68

39:                                               ; preds = %37
  %40 = extractvalue { ptr, i32 } %38, 1
  %41 = extractvalue { ptr, i32 } %38, 0
  br label %43

42:                                               ; preds = %20
  ret void

43:                                               ; preds = %39, %29
  %44 = phi ptr [ null, %39 ], [ @_ZN11xercesc_2_712SGXMLScanner7cleanUpEv, %29 ]
  %45 = phi ptr [ null, %39 ], [ %0, %29 ]
  %46 = phi i32 [ %40, %39 ], [ %32, %29 ]
  %47 = phi ptr [ %41, %39 ], [ %31, %29 ]
  %48 = icmp eq ptr %45, null
  %49 = or i1 %34, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %43
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(1000) %45)
          to label %54 unwind label %51

51:                                               ; preds = %50
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #19
  unreachable

54:                                               ; preds = %43, %50
  %55 = load ptr, ptr %13, align 8, !tbaa !86
  %56 = load ptr, ptr %15, align 8, !tbaa !87
  %57 = load ptr, ptr %55, align 8, !tbaa !56
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  invoke void %59(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %56)
          to label %63 unwind label %60

60:                                               ; preds = %54
  %61 = landingpad { ptr, i32 }
          catch ptr null
  %62 = extractvalue { ptr, i32 } %61, 0
  tail call void @__clang_call_terminate(ptr %62) #19
  unreachable

63:                                               ; preds = %54, %25
  %64 = phi i32 [ %28, %25 ], [ %46, %54 ]
  %65 = phi ptr [ %27, %25 ], [ %47, %54 ]
  tail call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #18
  %66 = insertvalue { ptr, i32 } poison, ptr %65, 0
  %67 = insertvalue { ptr, i32 } %66, i32 %64, 1
  resume { ptr, i32 } %67

68:                                               ; preds = %37
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  tail call void @__clang_call_terminate(ptr %70) #19
  unreachable

71:                                               ; preds = %35
  unreachable
}

declare void @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = load ptr, ptr %3, align 8, !tbaa !56
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
  %9 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %10, align 8, !tbaa !56
  %14 = getelementptr inbounds ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(160) %10) #18
  br label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %18) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #18
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !94
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !56
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(40) %23) #18
  br label %29

29:                                               ; preds = %25, %21
  %30 = load ptr, ptr %2, align 8, !tbaa !91
  %31 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !95
  %33 = load ptr, ptr %30, align 8, !tbaa !56
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32)
  %36 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 11
  %37 = load ptr, ptr %36, align 8, !tbaa !96
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %29
  %40 = load ptr, ptr %37, align 8, !tbaa !56
  %41 = getelementptr inbounds ptr, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(186) %37) #18
  br label %43

43:                                               ; preds = %39, %29
  %44 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 12
  %45 = load ptr, ptr %44, align 8, !tbaa !97
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %45, align 8, !tbaa !56
  %49 = getelementptr inbounds ptr, ptr %48, i64 1
  %50 = load ptr, ptr %49, align 8
  tail call void %50(ptr noundef nonnull align 8 dereferenceable(48) %45) #18
  br label %51

51:                                               ; preds = %47, %43
  %52 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 13
  %53 = load ptr, ptr %52, align 8, !tbaa !98
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %53) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %53) #18
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 15
  %58 = load ptr, ptr %57, align 8, !tbaa !99
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  invoke void @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %58)
          to label %64 unwind label %61

61:                                               ; preds = %60
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  tail call void @__clang_call_terminate(ptr %63) #19
  unreachable

64:                                               ; preds = %60
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %58) #18
  br label %65

65:                                               ; preds = %64, %56
  %66 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 16
  %67 = load ptr, ptr %66, align 8, !tbaa !100
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %67) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %67) #18
  br label %70

70:                                               ; preds = %69, %65
  %71 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 17
  %72 = load ptr, ptr %71, align 8, !tbaa !101
  %73 = icmp eq ptr %72, null
  br i1 %73, label %99, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %72, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !102
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %76, align 8, !tbaa !56
  %80 = getelementptr inbounds ptr, ptr %79, i64 1
  %81 = load ptr, ptr %80, align 8
  tail call void %81(ptr noundef nonnull align 8 dereferenceable(40) %76) #18
  br label %82

82:                                               ; preds = %78, %74
  %83 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %72, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !104
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %84, align 8, !tbaa !56
  %88 = getelementptr inbounds ptr, ptr %87, i64 1
  %89 = load ptr, ptr %88, align 8
  tail call void %89(ptr noundef nonnull align 8 dereferenceable(40) %84) #18
  br label %90

90:                                               ; preds = %86, %82
  %91 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %72, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !105
  %93 = icmp eq ptr %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %92, align 8, !tbaa !56
  %96 = getelementptr inbounds ptr, ptr %95, i64 1
  %97 = load ptr, ptr %96, align 8
  tail call void %97(ptr noundef nonnull align 8 dereferenceable(40) %92) #18
  br label %98

98:                                               ; preds = %90, %94
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %72) #18
  br label %99

99:                                               ; preds = %98, %70
  %100 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 19
  %101 = load ptr, ptr %100, align 8, !tbaa !106
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr %101, align 8, !tbaa !56
  %105 = getelementptr inbounds ptr, ptr %104, i64 1
  %106 = load ptr, ptr %105, align 8
  tail call void %106(ptr noundef nonnull align 8 dereferenceable(104) %101) #18
  br label %107

107:                                              ; preds = %103, %99
  %108 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 20
  %109 = load ptr, ptr %108, align 8, !tbaa !107
  %110 = icmp eq ptr %109, null
  br i1 %110, label %123, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %109, i64 0, i32 1, i32 4
  %113 = load ptr, ptr %112, align 8, !tbaa !108
  %114 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %109, i64 0, i32 1, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !110
  %116 = load ptr, ptr %113, align 8, !tbaa !56
  %117 = getelementptr inbounds ptr, ptr %116, i64 3
  %118 = load ptr, ptr %117, align 8
  invoke void %118(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef %115)
          to label %122 unwind label %119, !prof !111

119:                                              ; preds = %111
  %120 = landingpad { ptr, i32 }
          catch ptr null
  %121 = extractvalue { ptr, i32 } %120, 0
  tail call void @__clang_call_terminate(ptr %121) #19
  unreachable

122:                                              ; preds = %111
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %109) #18
  br label %123

123:                                              ; preds = %122, %107
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !80
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 2
  %8 = load ptr, ptr %3, align 8, !tbaa !56
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %7)
  %12 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 4
  store ptr %11, ptr %12, align 8, !tbaa !81
  %13 = load ptr, ptr %2, align 8, !tbaa !91
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %13)
  %15 = load ptr, ptr %2, align 8, !tbaa !91
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %14, align 8, !tbaa !56
  %16 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %14, i64 0, i32 1
  store i8 1, ptr %16, align 8, !tbaa !112
  %17 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %14, i64 0, i32 2
  store i32 0, ptr %17, align 4, !tbaa !114
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %14, i64 0, i32 3
  store i32 32, ptr %18, align 8, !tbaa !115
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %14, i64 0, i32 4
  store ptr null, ptr %19, align 8, !tbaa !116
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %14, i64 0, i32 5
  store ptr %15, ptr %20, align 8, !tbaa !117
  %21 = load ptr, ptr %15, align 8, !tbaa !56
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef 256)
          to label %25 unwind label %144

25:                                               ; preds = %1
  store ptr %24, ptr %19, align 8, !tbaa !116
  br label %26

26:                                               ; preds = %25, %26
  %27 = phi i64 [ 0, %25 ], [ %30, %26 ]
  %28 = load ptr, ptr %19, align 8, !tbaa !116
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !118
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, 32
  br i1 %31, label %32, label %26, !llvm.loop !119

32:                                               ; preds = %26
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %14, align 8, !tbaa !56
  %33 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 7
  store ptr %14, ptr %33, align 8, !tbaa !94
  %34 = load ptr, ptr %2, align 8, !tbaa !91
  %35 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 8
  %36 = load i32, ptr %35, align 8, !tbaa !90
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 2
  %39 = load ptr, ptr %34, align 8, !tbaa !56
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %38)
  %43 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 9
  store ptr %42, ptr %43, align 8, !tbaa !95
  %44 = load ptr, ptr %2, align 8, !tbaa !91
  %45 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 192, ptr noundef %44)
  %46 = load ptr, ptr %2, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_715SchemaValidatorC1EPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(186) %45, ptr noundef null, ptr noundef %46)
          to label %47 unwind label %146

47:                                               ; preds = %32
  %48 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 11
  store ptr %45, ptr %48, align 8, !tbaa !96
  tail call void @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull %45)
  %49 = load ptr, ptr %2, align 8, !tbaa !91
  %50 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %49)
  %51 = load ptr, ptr %2, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_725IdentityConstraintHandlerC1EPNS_10XMLScannerEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %50, ptr noundef nonnull %0, ptr noundef %51)
          to label %52 unwind label %148

52:                                               ; preds = %47
  %53 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 12
  store ptr %50, ptr %53, align 8, !tbaa !97
  %54 = load ptr, ptr %2, align 8, !tbaa !91
  %55 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %54)
  %56 = load ptr, ptr %2, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %55, i32 noundef 11, ptr noundef %56)
          to label %57 unwind label %150

57:                                               ; preds = %52
  %58 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 6
  store ptr %55, ptr %58, align 8, !tbaa !93
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %55, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni5fgAmpE, ptr noundef nonnull align 2 dereferenceable(2) @_ZN11xercesc_2_7L11chAmpersandE)
  %59 = load ptr, ptr %58, align 8, !tbaa !93
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgLTE, ptr noundef nonnull align 2 dereferenceable(2) @_ZN11xercesc_2_7L11chOpenAngleE)
  %60 = load ptr, ptr %58, align 8, !tbaa !93
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %60, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgGTE, ptr noundef nonnull align 2 dereferenceable(2) @_ZN11xercesc_2_7L12chCloseAngleE)
  %61 = load ptr, ptr %58, align 8, !tbaa !93
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni6fgQuotE, ptr noundef nonnull align 2 dereferenceable(2) @_ZN11xercesc_2_7L13chDoubleQuoteE)
  %62 = load ptr, ptr %58, align 8, !tbaa !93
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni6fgAposE, ptr noundef nonnull align 2 dereferenceable(2) @_ZN11xercesc_2_7L13chSingleQuoteE)
  %63 = load ptr, ptr %2, align 8, !tbaa !91
  %64 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %63)
  %65 = load ptr, ptr %2, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %64, i32 noundef 29, i1 noundef zeroext true, i32 noundef 128, ptr noundef %65)
          to label %66 unwind label %152

66:                                               ; preds = %57
  %67 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 13
  store ptr %64, ptr %67, align 8, !tbaa !98
  %68 = load ptr, ptr %2, align 8, !tbaa !91
  %69 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %68)
  %70 = load ptr, ptr %2, align 8, !tbaa !91
  %71 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %70)
          to label %72 unwind label %154

72:                                               ; preds = %66
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %71)
          to label %73 unwind label %156

73:                                               ; preds = %72
  %74 = load ptr, ptr %2, align 8, !tbaa !91
  store ptr %74, ptr %69, align 8, !tbaa !122
  %75 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %69, i64 0, i32 1
  store i8 0, ptr %75, align 8, !tbaa !124
  %76 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %69, i64 0, i32 2
  store ptr null, ptr %76, align 8, !tbaa !125
  %77 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %69, i64 0, i32 3
  store i32 131, ptr %77, align 8, !tbaa !126
  %78 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %69, i64 0, i32 4
  store i32 131, ptr %78, align 4, !tbaa !127
  %79 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %69, i64 0, i32 5
  store i32 0, ptr %79, align 8, !tbaa !128
  %80 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %69, i64 0, i32 6
  store ptr null, ptr %80, align 8, !tbaa !129
  %81 = load ptr, ptr %74, align 8, !tbaa !56
  %82 = getelementptr inbounds ptr, ptr %81, i64 2
  %83 = load ptr, ptr %82, align 8
  %84 = invoke noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %74, i64 noundef 1048)
          to label %85 unwind label %154

85:                                               ; preds = %73
  store ptr %84, ptr %76, align 8, !tbaa !125
  %86 = load i32, ptr %77, align 8, !tbaa !126
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %85
  %89 = zext i32 %86 to i64
  br label %90

90:                                               ; preds = %88, %90
  %91 = phi i64 [ 0, %88 ], [ %94, %90 ]
  %92 = load ptr, ptr %76, align 8, !tbaa !125
  %93 = getelementptr inbounds ptr, ptr %92, i64 %91
  store ptr null, ptr %93, align 8, !tbaa !118
  %94 = add nuw nsw i64 %91, 1
  %95 = icmp eq i64 %94, %89
  br i1 %95, label %96, label %90, !llvm.loop !130

96:                                               ; preds = %90, %85
  store ptr %71, ptr %80, align 8, !tbaa !129
  %97 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 15
  store ptr %69, ptr %97, align 8, !tbaa !99
  %98 = load ptr, ptr %2, align 8, !tbaa !91
  %99 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %98)
  %100 = load ptr, ptr %2, align 8, !tbaa !91
  %101 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %100)
          to label %102 unwind label %160

102:                                              ; preds = %96
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %101)
          to label %103 unwind label %162

103:                                              ; preds = %102
  %104 = load ptr, ptr %2, align 8, !tbaa !91
  store ptr %104, ptr %99, align 8, !tbaa !131
  %105 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %99, i64 0, i32 1
  store i8 0, ptr %105, align 8, !tbaa !133
  %106 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %99, i64 0, i32 2
  store ptr null, ptr %106, align 8, !tbaa !134
  %107 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %99, i64 0, i32 3
  store i32 7, ptr %107, align 8, !tbaa !135
  %108 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %99, i64 0, i32 4
  store i32 0, ptr %108, align 4, !tbaa !136
  %109 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %99, i64 0, i32 5
  store ptr null, ptr %109, align 8, !tbaa !137
  %110 = load ptr, ptr %104, align 8, !tbaa !56
  %111 = getelementptr inbounds ptr, ptr %110, i64 2
  %112 = load ptr, ptr %111, align 8
  %113 = invoke noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(8) %104, i64 noundef 56)
          to label %114 unwind label %160

114:                                              ; preds = %103
  store ptr %113, ptr %106, align 8, !tbaa !134
  %115 = load i32, ptr %107, align 8, !tbaa !135
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %114
  %118 = zext i32 %115 to i64
  br label %119

119:                                              ; preds = %117, %119
  %120 = phi i64 [ 0, %117 ], [ %123, %119 ]
  %121 = load ptr, ptr %106, align 8, !tbaa !134
  %122 = getelementptr inbounds ptr, ptr %121, i64 %120
  store ptr null, ptr %122, align 8, !tbaa !118
  %123 = add nuw nsw i64 %120, 1
  %124 = icmp eq i64 %123, %118
  br i1 %124, label %125, label %119, !llvm.loop !138

125:                                              ; preds = %119, %114
  store ptr %101, ptr %109, align 8, !tbaa !137
  %126 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 16
  store ptr %99, ptr %126, align 8, !tbaa !100
  %127 = load ptr, ptr %2, align 8, !tbaa !91
  %128 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %127)
  %129 = load ptr, ptr %2, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_717PSVIAttributeListC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %128, ptr noundef %129)
          to label %130 unwind label %166

130:                                              ; preds = %125
  %131 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 17
  store ptr %128, ptr %131, align 8, !tbaa !101
  %132 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %133 = load ptr, ptr %132, align 8, !tbaa !139
  %134 = icmp eq ptr %133, null
  br i1 %134, label %170, label %135

135:                                              ; preds = %130
  %136 = load ptr, ptr %133, align 8, !tbaa !56
  %137 = getelementptr inbounds ptr, ptr %136, i64 13
  %138 = load ptr, ptr %137, align 8
  %139 = tail call noundef zeroext i1 %138(ptr noundef nonnull align 8 dereferenceable(40) %133)
  br i1 %139, label %172, label %140

140:                                              ; preds = %135
  %141 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %142 = load ptr, ptr %2, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %141, ptr noundef nonnull @.str, i32 noundef 2017, i32 noundef 158, ptr noundef %142)
          to label %143 unwind label %168

143:                                              ; preds = %140
  tail call void @__cxa_throw(ptr nonnull %141, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

144:                                              ; preds = %1
  %145 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %14, ptr noundef %13) #18
  br label %173

146:                                              ; preds = %32
  %147 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %45, ptr noundef %44) #18
  br label %173

148:                                              ; preds = %47
  %149 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %50, ptr noundef %49) #18
  br label %173

150:                                              ; preds = %52
  %151 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %55, ptr noundef %54) #18
  br label %173

152:                                              ; preds = %57
  %153 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %64, ptr noundef %63) #18
  br label %173

154:                                              ; preds = %73, %66
  %155 = landingpad { ptr, i32 }
          cleanup
  br label %158

156:                                              ; preds = %72
  %157 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %71, ptr noundef %70) #18
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi { ptr, i32 } [ %155, %154 ], [ %157, %156 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %69, ptr noundef %68) #18
  br label %173

160:                                              ; preds = %103, %96
  %161 = landingpad { ptr, i32 }
          cleanup
  br label %164

162:                                              ; preds = %102
  %163 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %101, ptr noundef %100) #18
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi { ptr, i32 } [ %161, %160 ], [ %163, %162 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %99, ptr noundef %98) #18
  br label %173

166:                                              ; preds = %125
  %167 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %128, ptr noundef %127) #18
  br label %173

168:                                              ; preds = %140
  %169 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %141) #18
  br label %173

170:                                              ; preds = %130
  %171 = load ptr, ptr %48, align 8, !tbaa !96
  store ptr %171, ptr %132, align 8, !tbaa !139
  br label %172

172:                                              ; preds = %135, %170
  ret void

173:                                              ; preds = %168, %166, %164, %158, %152, %150, %148, %146, %144
  %174 = phi { ptr, i32 } [ %169, %168 ], [ %167, %166 ], [ %165, %164 ], [ %159, %158 ], [ %153, %152 ], [ %151, %150 ], [ %149, %148 ], [ %147, %146 ], [ %145, %144 ]
  resume { ptr, i32 } %174
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #6

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xercesc_2_710XMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTVN11xercesc_2_712SGXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %9 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 1
  store i8 0, ptr %9, align 8, !tbaa !59
  %10 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  store i32 2, ptr %10, align 4, !tbaa !79
  %11 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 3
  store i32 16, ptr %11, align 8, !tbaa !80
  %12 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 4
  store ptr null, ptr %12, align 8, !tbaa !81
  %13 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5
  store i32 0, ptr %13, align 8, !tbaa !82
  %14 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5, i32 1
  store i32 1023, ptr %14, align 4, !tbaa !83
  %15 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5, i32 2
  store i32 0, ptr %15, align 8, !tbaa !84
  %16 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5, i32 3
  store i8 0, ptr %16, align 4, !tbaa !85
  %17 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5, i32 4
  store ptr %7, ptr %17, align 8, !tbaa !86
  %18 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5, i32 5
  %19 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %20 = load ptr, ptr %7, align 8, !tbaa !56
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 2048)
          to label %24 unwind label %29

24:                                               ; preds = %8
  store ptr %23, ptr %19, align 8, !tbaa !87
  store i16 0, ptr %23, align 2, !tbaa !88
  %25 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 6
  %26 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  store i32 32, ptr %26, align 8, !tbaa !90
  %27 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 9
  %28 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %27, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %28, i8 0, i64 48, i1 false)
  invoke void @_ZN11xercesc_2_712SGXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
          to label %46 unwind label %33

29:                                               ; preds = %8
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = extractvalue { ptr, i32 } %30, 0
  %32 = extractvalue { ptr, i32 } %30, 1
  br label %67

33:                                               ; preds = %24
  %34 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %35 = extractvalue { ptr, i32 } %34, 0
  %36 = extractvalue { ptr, i32 } %34, 1
  %37 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #18
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = tail call ptr @__cxa_begin_catch(ptr %35) #18
  invoke void @__cxa_rethrow() #20
          to label %75 unwind label %41

41:                                               ; preds = %39
  %42 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %43 unwind label %72

43:                                               ; preds = %41
  %44 = extractvalue { ptr, i32 } %42, 1
  %45 = extractvalue { ptr, i32 } %42, 0
  br label %47

46:                                               ; preds = %24
  ret void

47:                                               ; preds = %43, %33
  %48 = phi ptr [ null, %43 ], [ @_ZN11xercesc_2_712SGXMLScanner7cleanUpEv, %33 ]
  %49 = phi ptr [ null, %43 ], [ %0, %33 ]
  %50 = phi i32 [ %44, %43 ], [ %36, %33 ]
  %51 = phi ptr [ %45, %43 ], [ %35, %33 ]
  %52 = icmp eq ptr %49, null
  %53 = or i1 %38, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(1000) %49)
          to label %58 unwind label %55

55:                                               ; preds = %54
  %56 = landingpad { ptr, i32 }
          catch ptr null
  %57 = extractvalue { ptr, i32 } %56, 0
  tail call void @__clang_call_terminate(ptr %57) #19
  unreachable

58:                                               ; preds = %47, %54
  %59 = load ptr, ptr %17, align 8, !tbaa !86
  %60 = load ptr, ptr %19, align 8, !tbaa !87
  %61 = load ptr, ptr %59, align 8, !tbaa !56
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef %60)
          to label %67 unwind label %64

64:                                               ; preds = %58
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  tail call void @__clang_call_terminate(ptr %66) #19
  unreachable

67:                                               ; preds = %58, %29
  %68 = phi i32 [ %32, %29 ], [ %50, %58 ]
  %69 = phi ptr [ %31, %29 ], [ %51, %58 ]
  tail call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #18
  %70 = insertvalue { ptr, i32 } poison, ptr %69, 0
  %71 = insertvalue { ptr, i32 } %70, i32 %68, 1
  resume { ptr, i32 } %71

72:                                               ; preds = %41
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  tail call void @__clang_call_terminate(ptr %74) #19
  unreachable

75:                                               ; preds = %39
  unreachable
}

declare void @_ZN11xercesc_2_710XMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTVN11xercesc_2_712SGXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_712SGXMLScanner7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
          to label %2 unwind label %14

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  %7 = load ptr, ptr %4, align 8, !tbaa !56
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6)
          to label %13 unwind label %10

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable

13:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #18
  ret void

14:                                               ; preds = %1
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #19
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScannerD0Ev(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #7 align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_712SGXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(1000) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_712SGXMLScanner17getEntityDeclPoolEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !55 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_712SGXMLScanner17getEntityDeclPoolEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !55 {
  ret ptr null
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner12scanDocumentERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 38
  %4 = load i32, ptr %3, align 8, !tbaa !140
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !140
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %7 = load ptr, ptr %0, align 8, !tbaa !56
  %8 = getelementptr inbounds ptr, ptr %7, i64 15
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %10 unwind label %18

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %12 = load ptr, ptr %11, align 8, !tbaa !141
  %13 = icmp eq ptr %12, null
  br i1 %13, label %54, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !56
  %16 = getelementptr inbounds ptr, ptr %15, i64 10
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %54 unwind label %18

18:                                               ; preds = %73, %69, %66, %65, %59, %58, %55, %54, %14, %2
  %19 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %20 = extractvalue { ptr, i32 } %19, 0
  %21 = extractvalue { ptr, i32 } %19, 1
  %22 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #18
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18, %31
  %25 = tail call ptr @__cxa_begin_catch(ptr %20) #18
  tail call void @__cxa_end_catch() #18
  br label %26

26:                                               ; preds = %24, %70, %114, %73
  invoke void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80) %6)
          to label %30 unwind label %27

27:                                               ; preds = %26
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #19
  unreachable

30:                                               ; preds = %26
  ret void

31:                                               ; preds = %18
  %32 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #18
  %33 = icmp eq i32 %21, %32
  br i1 %33, label %24, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #18
  %36 = icmp eq i32 %21, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = tail call ptr @__cxa_begin_catch(ptr %20) #18
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %39, align 1, !tbaa !142
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %38, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !143
  %42 = add i32 %41, -1
  %43 = icmp ult i32 %42, 4
  br i1 %43, label %44, label %91

44:                                               ; preds = %37
  %45 = load ptr, ptr %38, align 8, !tbaa !56
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(48) %38)
          to label %104 unwind label %82

49:                                               ; preds = %34
  %50 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #18
  %51 = icmp eq i32 %21, %50
  br i1 %51, label %52, label %124

52:                                               ; preds = %49
  %53 = tail call ptr @__cxa_begin_catch(ptr %20) #18
  invoke void @__cxa_rethrow() #20
          to label %143 unwind label %77

54:                                               ; preds = %14, %10
  invoke void @_ZN11xercesc_2_710XMLScanner10scanPrologEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %55 unwind label %18

55:                                               ; preds = %54
  %56 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80) %6)
          to label %57 unwind label %18

57:                                               ; preds = %55
  br i1 %56, label %58, label %59

58:                                               ; preds = %57
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 279)
          to label %70 unwind label %18

59:                                               ; preds = %57
  %60 = invoke noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner11scanContentEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
          to label %61 unwind label %18

61:                                               ; preds = %59
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %63 = load i8, ptr %62, align 8, !tbaa !146, !range !147, !noundef !148
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  invoke void @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %66 unwind label %18

66:                                               ; preds = %65, %61
  %67 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80) %6)
          to label %68 unwind label %18

68:                                               ; preds = %66
  br i1 %67, label %70, label %69

69:                                               ; preds = %68
  invoke void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %70 unwind label %18

70:                                               ; preds = %69, %68, %58
  %71 = load ptr, ptr %11, align 8, !tbaa !141
  %72 = icmp eq ptr %71, null
  br i1 %72, label %26, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %71, align 8, !tbaa !56
  %75 = getelementptr inbounds ptr, ptr %74, i64 5
  %76 = load ptr, ptr %75, align 8
  invoke void %76(ptr noundef nonnull align 8 dereferenceable(8) %71)
          to label %26 unwind label %18

77:                                               ; preds = %52
  %78 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %79 unwind label %140

79:                                               ; preds = %77
  %80 = extractvalue { ptr, i32 } %78, 1
  %81 = extractvalue { ptr, i32 } %78, 0
  br label %124

82:                                               ; preds = %104, %102, %100, %44
  %83 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %84 = extractvalue { ptr, i32 } %83, 0
  %85 = extractvalue { ptr, i32 } %83, 1
  %86 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #18
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %119

88:                                               ; preds = %82
  %89 = tail call ptr @__cxa_begin_catch(ptr %84) #18
  invoke void @__cxa_rethrow() #20
          to label %90 unwind label %109

90:                                               ; preds = %88
  unreachable

91:                                               ; preds = %37
  %92 = add i32 %41, -5
  %93 = icmp ult i32 %92, 397
  %94 = and i32 %41, -2
  %95 = icmp ne i32 %94, 402
  %96 = or i1 %93, %95
  %97 = load ptr, ptr %38, align 8, !tbaa !56
  %98 = getelementptr inbounds ptr, ptr %97, i64 2
  %99 = load ptr, ptr %98, align 8
  br i1 %96, label %100, label %102

100:                                              ; preds = %91
  %101 = invoke noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(48) %38)
          to label %104 unwind label %82

102:                                              ; preds = %91
  %103 = invoke noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(48) %38)
          to label %104 unwind label %82

104:                                              ; preds = %102, %100, %44
  %105 = phi i32 [ 7, %44 ], [ 292, %100 ], [ 157, %102 ]
  %106 = phi ptr [ %48, %44 ], [ %101, %100 ], [ %103, %102 ]
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %38, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %105, ptr noundef %106, ptr noundef %108, ptr noundef null, ptr noundef null)
          to label %114 unwind label %82

109:                                              ; preds = %88
  %110 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %111 unwind label %140

111:                                              ; preds = %109
  %112 = extractvalue { ptr, i32 } %110, 1
  %113 = extractvalue { ptr, i32 } %110, 0
  br label %119

114:                                              ; preds = %104
  invoke void @__cxa_end_catch()
          to label %26 unwind label %115

115:                                              ; preds = %114
  %116 = landingpad { ptr, i32 }
          cleanup
  %117 = extractvalue { ptr, i32 } %116, 0
  %118 = extractvalue { ptr, i32 } %116, 1
  br label %124

119:                                              ; preds = %111, %82
  %120 = phi i64 [ 0, %111 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %82 ]
  %121 = phi ptr [ null, %111 ], [ %6, %82 ]
  %122 = phi i32 [ %112, %111 ], [ %85, %82 ]
  %123 = phi ptr [ %113, %111 ], [ %84, %82 ]
  invoke void @__cxa_end_catch()
          to label %124 unwind label %140

124:                                              ; preds = %119, %115, %79, %49
  %125 = phi i64 [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %115 ], [ 0, %79 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %49 ], [ %120, %119 ]
  %126 = phi ptr [ %6, %115 ], [ null, %79 ], [ %6, %49 ], [ %121, %119 ]
  %127 = phi i32 [ %118, %115 ], [ %80, %79 ], [ %21, %49 ], [ %122, %119 ]
  %128 = phi ptr [ %117, %115 ], [ %81, %79 ], [ %20, %49 ], [ %123, %119 ]
  %129 = icmp eq ptr %126, null
  %130 = icmp eq i64 %125, 0
  %131 = or i1 %130, %129
  br i1 %131, label %137, label %132

132:                                              ; preds = %124
  %133 = inttoptr i64 %125 to ptr
  invoke void %133(ptr noundef nonnull align 8 dereferenceable(80) %126)
          to label %137 unwind label %134

134:                                              ; preds = %132
  %135 = landingpad { ptr, i32 }
          catch ptr null
  %136 = extractvalue { ptr, i32 } %135, 0
  tail call void @__clang_call_terminate(ptr %136) #19
  unreachable

137:                                              ; preds = %124, %132
  %138 = insertvalue { ptr, i32 } poison, ptr %128, 0
  %139 = insertvalue { ptr, i32 } %138, i32 %127, 1
  resume { ptr, i32 } %139

140:                                              ; preds = %119, %109, %77
  %141 = landingpad { ptr, i32 }
          catch ptr null
  %142 = extractvalue { ptr, i32 } %141, 0
  tail call void @__clang_call_terminate(ptr %142) #19
  unreachable

143:                                              ; preds = %52
  unreachable
}

declare void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80)) #4

declare void @_ZN11xercesc_2_710XMLScanner10scanPrologEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner11scanContentEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #18
  store i8 1, ptr %2, align 1, !tbaa !150
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  br label %10

10:                                               ; preds = %1, %93
  %11 = load i8, ptr %2, align 1, !tbaa !150, !range !147, !noundef !148
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %93, label %13

13:                                               ; preds = %10, %68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %14 = invoke noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %15 unwind label %22

15:                                               ; preds = %13
  switch i32 %14, label %58 [
    i32 1, label %16
    i32 4, label %25
    i32 0, label %39
    i32 2, label %47
    i32 3, label %48
    i32 5, label %52
    i32 6, label %53
  ]

16:                                               ; preds = %15
  %17 = load ptr, ptr %0, align 8, !tbaa !56
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %68 unwind label %22, !llvm.loop !151

20:                                               ; preds = %58
  %21 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %71

22:                                               ; preds = %13, %16, %42, %43, %47, %48, %52, %53, %67
  %23 = phi i1 [ false, %13 ], [ true, %42 ], [ true, %43 ], [ true, %47 ], [ true, %48 ], [ true, %52 ], [ true, %53 ], [ true, %67 ], [ false, %16 ]
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %71

25:                                               ; preds = %15
  %26 = load i32, ptr %5, align 4, !tbaa !152
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = invoke noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %6)
          to label %30 unwind label %36

30:                                               ; preds = %28
  %31 = load ptr, ptr %29, align 8, !tbaa !153
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !155
  %34 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %33)
          to label %35 unwind label %36

35:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 274, ptr noundef %34, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %38 unwind label %36

36:                                               ; preds = %30, %35, %28
  %37 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %71

38:                                               ; preds = %35, %25
  store i8 0, ptr %2, align 1, !tbaa !150
  br label %68, !llvm.loop !151

39:                                               ; preds = %15
  %40 = load i32, ptr %4, align 4, !tbaa !152
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 280)
          to label %43 unwind label %22

43:                                               ; preds = %42, %39
  %44 = load ptr, ptr %0, align 8, !tbaa !56
  %45 = getelementptr inbounds ptr, ptr %44, i64 11
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(1000) %0)
          to label %61 unwind label %22

47:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %61 unwind label %22

48:                                               ; preds = %15
  %49 = load ptr, ptr %0, align 8, !tbaa !56
  %50 = getelementptr inbounds ptr, ptr %49, i64 19
  %51 = load ptr, ptr %50, align 8
  invoke void %51(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %61 unwind label %22

52:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %61 unwind label %22

53:                                               ; preds = %15
  %54 = load ptr, ptr %0, align 8, !tbaa !56
  %55 = getelementptr inbounds ptr, ptr %54, i64 18
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef zeroext i1 %56(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %61 unwind label %22

58:                                               ; preds = %15, %60
  %59 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
          to label %60 unwind label %20

60:                                               ; preds = %58
  switch i16 %59, label %58 [
    i16 60, label %61
    i16 0, label %61
  ]

61:                                               ; preds = %60, %60, %53, %52, %48, %47, %43
  %62 = load i32, ptr %3, align 4, !tbaa !158
  %63 = load ptr, ptr %9, align 8, !tbaa !159
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %63, i64 0, i32 15
  %65 = load i32, ptr %64, align 8, !tbaa !160
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %68 unwind label %22

68:                                               ; preds = %16, %61, %67, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  %69 = load i8, ptr %2, align 1, !tbaa !150, !range !147, !noundef !148
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %93, label %13

71:                                               ; preds = %20, %22, %36
  %72 = phi { ptr, i32 } [ %37, %36 ], [ %21, %20 ], [ %24, %22 ]
  %73 = phi i1 [ false, %36 ], [ true, %20 ], [ %23, %22 ]
  %74 = extractvalue { ptr, i32 } %72, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  %75 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #18
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %71
  %78 = extractvalue { ptr, i32 } %72, 0
  %79 = call ptr @__cxa_begin_catch(ptr %78) #18
  br i1 %73, label %80, label %83

80:                                               ; preds = %77
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %83 unwind label %81

81:                                               ; preds = %87, %80
  %82 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %97 unwind label %99

83:                                               ; preds = %80, %77
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %85 = load ptr, ptr %84, align 8, !tbaa !141
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %79, align 8, !tbaa !166
  %89 = load ptr, ptr %85, align 8, !tbaa !56
  %90 = getelementptr inbounds ptr, ptr %89, i64 7
  %91 = load ptr, ptr %90, align 8
  invoke void %91(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef nonnull align 8 dereferenceable(72) %88)
          to label %92 unwind label %81

92:                                               ; preds = %83, %87
  call void @__cxa_end_catch()
  br label %93

93:                                               ; preds = %68, %10, %92
  %94 = load i8, ptr %2, align 1, !tbaa !150, !range !147, !noundef !148
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %10, !llvm.loop !168

96:                                               ; preds = %93
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #18
  ret i1 true

97:                                               ; preds = %71, %81
  %98 = phi { ptr, i32 } [ %82, %81 ], [ %72, %71 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #18
  resume { ptr, i32 } %98

99:                                               ; preds = %81
  %100 = landingpad { ptr, i32 }
          catch ptr null
  %101 = extractvalue { ptr, i32 } %100, 0
  call void @__clang_call_terminate(ptr %101) #19
  unreachable
}

declare void @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner8scanNextERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12isLegalTokenERKNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 298, i32 noundef 78, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  tail call void @__cxa_free_exception(ptr %7) #18
  br label %229

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  br label %17

17:                                               ; preds = %38, %15
  %18 = invoke noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %19 unwind label %20

19:                                               ; preds = %17
  switch i32 %18, label %71 [
    i32 1, label %45
    i32 4, label %54
  ]

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  %24 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #18
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %85

26:                                               ; preds = %20
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %28 = call ptr @__cxa_begin_catch(ptr %22) #18
  %29 = load ptr, ptr %27, align 8, !tbaa !141
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %28, align 8, !tbaa !166
  %33 = load ptr, ptr %29, align 8, !tbaa !56
  %34 = getelementptr inbounds ptr, ptr %33, i64 7
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(72) %32)
          to label %38 unwind label %36

36:                                               ; preds = %31
  %37 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  invoke void @__cxa_end_catch()
          to label %41 unwind label %234

38:                                               ; preds = %31, %26
  invoke void @__cxa_end_catch()
          to label %17 unwind label %39, !llvm.loop !169

39:                                               ; preds = %38
  %40 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %41

41:                                               ; preds = %36, %39
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %37, %36 ]
  %43 = extractvalue { ptr, i32 } %42, 0
  %44 = extractvalue { ptr, i32 } %42, 1
  br label %85

45:                                               ; preds = %19
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66
  %47 = load ptr, ptr %0, align 8, !tbaa !56
  %48 = getelementptr inbounds ptr, ptr %47, i64 12
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(40) %46)
          to label %92 unwind label %50

50:                                               ; preds = %45
  %51 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %52 = extractvalue { ptr, i32 } %51, 0
  %53 = extractvalue { ptr, i32 } %51, 1
  br label %85

54:                                               ; preds = %19
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %56 = load i32, ptr %55, align 4, !tbaa !152
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %92, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %60 = invoke noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %59)
          to label %61 unwind label %67

61:                                               ; preds = %58
  %62 = load ptr, ptr %60, align 8, !tbaa !153
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !155
  %65 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %64)
          to label %66 unwind label %67

66:                                               ; preds = %61
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 274, ptr noundef %65, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %92 unwind label %67

67:                                               ; preds = %61, %66, %58
  %68 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %69 = extractvalue { ptr, i32 } %68, 0
  %70 = extractvalue { ptr, i32 } %68, 1
  br label %85

71:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #18
  store i8 1, ptr %4, align 1, !tbaa !150
  switch i32 %18, label %134 [
    i32 0, label %72
    i32 2, label %123
    i32 3, label %124
    i32 5, label %128
    i32 6, label %129
  ]

72:                                               ; preds = %71
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %74 = load i32, ptr %73, align 4, !tbaa !152
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %119

76:                                               ; preds = %72
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 280)
          to label %119 unwind label %79

77:                                               ; preds = %134
  %78 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %81

79:                                               ; preds = %76, %119, %123, %124, %128, %129, %144, %152, %153, %158
  %80 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi { ptr, i32 } [ %78, %77 ], [ %80, %79 ]
  %83 = extractvalue { ptr, i32 } %82, 0
  %84 = extractvalue { ptr, i32 } %82, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #18
  br label %85

85:                                               ; preds = %20, %81, %67, %50, %41
  %86 = phi i32 [ %53, %50 ], [ %70, %67 ], [ %84, %81 ], [ %44, %41 ], [ %23, %20 ]
  %87 = phi ptr [ %52, %50 ], [ %69, %67 ], [ %83, %81 ], [ %43, %41 ], [ %22, %20 ]
  %88 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #18
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = call ptr @__cxa_begin_catch(ptr %87) #18
  call void @__cxa_end_catch() #18
  br label %92

92:                                               ; preds = %200, %54, %66, %45, %162, %90, %97
  %93 = phi i1 [ true, %45 ], [ false, %90 ], [ false, %97 ], [ true, %162 ], [ false, %66 ], [ false, %54 ], [ false, %200 ]
  br i1 %93, label %214, label %210

94:                                               ; preds = %85
  %95 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #18
  %96 = icmp eq i32 %86, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call ptr @__cxa_begin_catch(ptr %87) #18
  call void @__cxa_end_catch() #18
  br label %92

99:                                               ; preds = %94
  %100 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #18
  %101 = icmp eq i32 %86, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = call ptr @__cxa_begin_catch(ptr %87) #18
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %104, align 1, !tbaa !142
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %103, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !143
  %107 = add i32 %106, -1
  %108 = icmp ult i32 %107, 4
  br i1 %108, label %109, label %177

109:                                              ; preds = %102
  %110 = load ptr, ptr %103, align 8, !tbaa !56
  %111 = getelementptr inbounds ptr, ptr %110, i64 2
  %112 = load ptr, ptr %111, align 8
  %113 = invoke noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(48) %103)
          to label %190 unwind label %168

114:                                              ; preds = %99
  %115 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #18
  %116 = icmp eq i32 %86, %115
  br i1 %116, label %117, label %215

117:                                              ; preds = %114
  %118 = call ptr @__cxa_begin_catch(ptr %87) #18
  invoke void @__cxa_rethrow() #20
          to label %237 unwind label %163

119:                                              ; preds = %76, %72
  %120 = load ptr, ptr %0, align 8, !tbaa !56
  %121 = getelementptr inbounds ptr, ptr %120, i64 11
  %122 = load ptr, ptr %121, align 8
  invoke void %122(ptr noundef nonnull align 8 dereferenceable(1000) %0)
          to label %137 unwind label %79

123:                                              ; preds = %71
  invoke void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %137 unwind label %79

124:                                              ; preds = %71
  %125 = load ptr, ptr %0, align 8, !tbaa !56
  %126 = getelementptr inbounds ptr, ptr %125, i64 19
  %127 = load ptr, ptr %126, align 8
  invoke void %127(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %137 unwind label %79

128:                                              ; preds = %71
  invoke void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %137 unwind label %79

129:                                              ; preds = %71
  %130 = load ptr, ptr %0, align 8, !tbaa !56
  %131 = getelementptr inbounds ptr, ptr %130, i64 18
  %132 = load ptr, ptr %131, align 8
  %133 = invoke noundef zeroext i1 %132(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %137 unwind label %79

134:                                              ; preds = %71, %136
  %135 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %16)
          to label %136 unwind label %77

136:                                              ; preds = %134
  switch i16 %135, label %134 [
    i16 60, label %137
    i16 0, label %137
  ]

137:                                              ; preds = %136, %136, %129, %128, %124, %123, %119
  %138 = load i32, ptr %3, align 4, !tbaa !158
  %139 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !159
  %141 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %140, i64 0, i32 15
  %142 = load i32, ptr %141, align 8, !tbaa !160
  %143 = icmp eq i32 %138, %142
  br i1 %143, label %145, label %144

144:                                              ; preds = %137
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %145 unwind label %79

145:                                              ; preds = %144, %137
  %146 = load i8, ptr %4, align 1, !tbaa !150, !range !147, !noundef !148
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %145
  %149 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %150 = load i8, ptr %149, align 8, !tbaa !146, !range !147, !noundef !148
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  invoke void @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %153 unwind label %79

153:                                              ; preds = %152, %148
  invoke void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %154 unwind label %79

154:                                              ; preds = %153
  %155 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %156 = load ptr, ptr %155, align 8, !tbaa !141
  %157 = icmp eq ptr %156, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = load ptr, ptr %156, align 8, !tbaa !56
  %160 = getelementptr inbounds ptr, ptr %159, i64 5
  %161 = load ptr, ptr %160, align 8
  invoke void %161(ptr noundef nonnull align 8 dereferenceable(8) %156)
          to label %162 unwind label %79

162:                                              ; preds = %158, %154, %145
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #18
  br label %92

163:                                              ; preds = %117
  %164 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %165 unwind label %234

165:                                              ; preds = %163
  %166 = extractvalue { ptr, i32 } %164, 1
  %167 = extractvalue { ptr, i32 } %164, 0
  br label %215

168:                                              ; preds = %190, %188, %186, %109
  %169 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %170 = extractvalue { ptr, i32 } %169, 0
  %171 = extractvalue { ptr, i32 } %169, 1
  %172 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #18
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %205

174:                                              ; preds = %168
  %175 = call ptr @__cxa_begin_catch(ptr %170) #18
  invoke void @__cxa_rethrow() #20
          to label %176 unwind label %195

176:                                              ; preds = %174
  unreachable

177:                                              ; preds = %102
  %178 = add i32 %106, -5
  %179 = icmp ult i32 %178, 397
  %180 = and i32 %106, -2
  %181 = icmp ne i32 %180, 402
  %182 = or i1 %179, %181
  %183 = load ptr, ptr %103, align 8, !tbaa !56
  %184 = getelementptr inbounds ptr, ptr %183, i64 2
  %185 = load ptr, ptr %184, align 8
  br i1 %182, label %186, label %188

186:                                              ; preds = %177
  %187 = invoke noundef ptr %185(ptr noundef nonnull align 8 dereferenceable(48) %103)
          to label %190 unwind label %168

188:                                              ; preds = %177
  %189 = invoke noundef ptr %185(ptr noundef nonnull align 8 dereferenceable(48) %103)
          to label %190 unwind label %168

190:                                              ; preds = %188, %186, %109
  %191 = phi i32 [ 7, %109 ], [ 292, %186 ], [ 157, %188 ]
  %192 = phi ptr [ %113, %109 ], [ %187, %186 ], [ %189, %188 ]
  %193 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %103, i64 0, i32 4
  %194 = load ptr, ptr %193, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %191, ptr noundef %192, ptr noundef %194, ptr noundef null, ptr noundef null)
          to label %200 unwind label %168

195:                                              ; preds = %174
  %196 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %197 unwind label %234

197:                                              ; preds = %195
  %198 = extractvalue { ptr, i32 } %196, 1
  %199 = extractvalue { ptr, i32 } %196, 0
  br label %205

200:                                              ; preds = %190
  invoke void @__cxa_end_catch()
          to label %92 unwind label %201

201:                                              ; preds = %200
  %202 = landingpad { ptr, i32 }
          cleanup
  %203 = extractvalue { ptr, i32 } %202, 0
  %204 = extractvalue { ptr, i32 } %202, 1
  br label %215

205:                                              ; preds = %168, %197
  %206 = phi i64 [ 0, %197 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %168 ]
  %207 = phi ptr [ null, %197 ], [ %16, %168 ]
  %208 = phi i32 [ %198, %197 ], [ %171, %168 ]
  %209 = phi ptr [ %199, %197 ], [ %170, %168 ]
  invoke void @__cxa_end_catch()
          to label %215 unwind label %234

210:                                              ; preds = %92
  invoke void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80) %16)
          to label %214 unwind label %211

211:                                              ; preds = %210
  %212 = landingpad { ptr, i32 }
          catch ptr null
  %213 = extractvalue { ptr, i32 } %212, 0
  call void @__clang_call_terminate(ptr %213) #19
  unreachable

214:                                              ; preds = %92, %210
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret i1 %93

215:                                              ; preds = %205, %201, %165, %114
  %216 = phi i64 [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %201 ], [ 0, %165 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %114 ], [ %206, %205 ]
  %217 = phi ptr [ %16, %201 ], [ null, %165 ], [ %16, %114 ], [ %207, %205 ]
  %218 = phi i32 [ %204, %201 ], [ %166, %165 ], [ %86, %114 ], [ %208, %205 ]
  %219 = phi ptr [ %203, %201 ], [ %167, %165 ], [ %87, %114 ], [ %209, %205 ]
  %220 = icmp eq ptr %217, null
  %221 = icmp eq i64 %216, 0
  %222 = or i1 %221, %220
  br i1 %222, label %228, label %223

223:                                              ; preds = %215
  %224 = inttoptr i64 %216 to ptr
  invoke void %224(ptr noundef nonnull align 8 dereferenceable(80) %217)
          to label %228 unwind label %225

225:                                              ; preds = %223
  %226 = landingpad { ptr, i32 }
          catch ptr null
  %227 = extractvalue { ptr, i32 } %226, 0
  call void @__clang_call_terminate(ptr %227) #19
  unreachable

228:                                              ; preds = %215, %223
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  br label %229

229:                                              ; preds = %228, %11
  %230 = phi i32 [ %218, %228 ], [ %14, %11 ]
  %231 = phi ptr [ %219, %228 ], [ %13, %11 ]
  %232 = insertvalue { ptr, i32 } poison, ptr %231, 0
  %233 = insertvalue { ptr, i32 } %232, i32 %230, 1
  resume { ptr, i32 } %233

234:                                              ; preds = %205, %195, %163, %36
  %235 = landingpad { ptr, i32 }
          catch ptr null
  %236 = extractvalue { ptr, i32 } %235, 0
  call void @__clang_call_terminate(ptr %236) #19
  unreachable

237:                                              ; preds = %117
  unreachable
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12isLegalTokenERKNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712SGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !114
  store i8 0, ptr %3, align 1, !tbaa !150
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 6
  br label %13

13:                                               ; preds = %220, %4
  %14 = phi i32 [ 0, %4 ], [ %218, %220 ]
  %15 = phi i32 [ undef, %4 ], [ %219, %220 ]
  %16 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %13
  switch i16 %16, label %19 [
    i16 62, label %32
    i16 47, label %32
  ]

19:                                               ; preds = %18
  %20 = load ptr, ptr %9, align 8, !tbaa !159
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %20, i64 0, i32 28
  %22 = load ptr, ptr %21, align 8, !tbaa !170
  %23 = zext i16 %16 to i64
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !171
  %26 = icmp slt i8 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
  %29 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %8, i1 noundef zeroext false)
  %30 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
  br label %32

31:                                               ; preds = %19
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 207)
  br label %32

32:                                               ; preds = %18, %18, %31, %27, %13
  %33 = phi i16 [ %30, %27 ], [ %16, %31 ], [ %16, %13 ], [ %16, %18 ], [ %16, %18 ]
  %34 = load ptr, ptr %10, align 8, !tbaa !159
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %34, i64 0, i32 28
  %36 = load ptr, ptr %35, align 8, !tbaa !170
  %37 = zext i16 %33 to i64
  %38 = getelementptr inbounds i8, ptr %36, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !171
  %40 = and i8 %39, 16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %198

42:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %11, align 8, !tbaa !82
  %43 = load ptr, ptr %12, align 8, !tbaa !87
  store i16 0, ptr %43, align 2, !tbaa !88
  %44 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %34, ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull %5)
  br i1 %44, label %56, label %45

45:                                               ; preds = %42
  %46 = load i32, ptr %11, align 8, !tbaa !82
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174)
  br label %53

49:                                               ; preds = %45
  %50 = load ptr, ptr %12, align 8, !tbaa !87
  %51 = zext i32 %46 to i64
  %52 = getelementptr inbounds i16, ptr %50, i64 %51
  store i16 0, ptr %52, align 2, !tbaa !88
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 309, ptr noundef %50, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %53

53:                                               ; preds = %49, %48
  br label %54

54:                                               ; preds = %53, %54
  %55 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
  switch i16 %55, label %54 [
    i16 62, label %194
    i16 0, label %194
  ]

56:                                               ; preds = %42
  %57 = load ptr, ptr %12, align 8, !tbaa !87
  %58 = load i32, ptr %11, align 8, !tbaa !82
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i16, ptr %57, i64 %59
  store i16 0, ptr %60, align 2, !tbaa !88
  %61 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext false)
  br i1 %61, label %80, label %62

62:                                               ; preds = %56
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 180)
  %63 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull @_ZZN11xercesc_2_712SGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERbE7tmpList)
  switch i16 %63, label %64 [
    i16 62, label %76
    i16 47, label %76
    i16 39, label %75
    i16 34, label %75
  ]

64:                                               ; preds = %62
  %65 = load ptr, ptr %10, align 8, !tbaa !159
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %65, i64 0, i32 28
  %67 = load ptr, ptr %66, align 8, !tbaa !170
  %68 = zext i16 %63 to i64
  %69 = getelementptr inbounds i8, ptr %67, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !171
  %71 = icmp slt i8 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %64
  %73 = icmp eq i16 %63, 60
  br i1 %73, label %74, label %76

74:                                               ; preds = %72
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %76

75:                                               ; preds = %62, %62
  br label %76

76:                                               ; preds = %62, %62, %75, %64, %72, %74
  %77 = phi i1 [ false, %74 ], [ false, %62 ], [ false, %72 ], [ true, %64 ], [ true, %75 ], [ false, %62 ]
  %78 = phi i32 [ 1, %74 ], [ 2, %62 ], [ 1, %72 ], [ 0, %64 ], [ 0, %75 ], [ 2, %62 ]
  %79 = phi i32 [ %14, %74 ], [ %15, %62 ], [ %14, %72 ], [ %15, %64 ], [ %15, %75 ], [ %15, %62 ]
  br i1 %77, label %80, label %194

80:                                               ; preds = %76, %56
  %81 = phi i32 [ %15, %56 ], [ %79, %76 ]
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65
  %83 = call noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(40) %82)
  br i1 %83, label %100, label %84

84:                                               ; preds = %80
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 199)
  %85 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull @_ZZN11xercesc_2_712SGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERbE7tmpList_0)
  switch i16 %85, label %86 [
    i16 62, label %97
    i16 47, label %97
  ]

86:                                               ; preds = %84
  %87 = load ptr, ptr %10, align 8, !tbaa !159
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %87, i64 0, i32 28
  %89 = load ptr, ptr %88, align 8, !tbaa !170
  %90 = zext i16 %85 to i64
  %91 = getelementptr inbounds i8, ptr %89, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !171
  %93 = icmp slt i8 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %86
  %95 = icmp eq i16 %85, 60
  br i1 %95, label %96, label %97

96:                                               ; preds = %94
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %97

97:                                               ; preds = %84, %86, %84, %94, %96
  %98 = phi i1 [ false, %96 ], [ false, %94 ], [ true, %84 ], [ true, %86 ], [ true, %84 ]
  %99 = phi i32 [ %14, %96 ], [ %14, %94 ], [ %81, %84 ], [ %81, %86 ], [ %81, %84 ]
  br i1 %98, label %100, label %194

100:                                              ; preds = %97, %80
  %101 = phi i32 [ %81, %80 ], [ %99, %97 ]
  %102 = icmp ult i32 %14, %7
  br i1 %102, label %123, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 6
  %106 = load ptr, ptr %104, align 8, !tbaa !91
  %107 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %106)
  %108 = load i32, ptr %11, align 8, !tbaa !82
  %109 = load ptr, ptr %105, align 8, !tbaa !87
  %110 = load i32, ptr %82, align 8, !tbaa !82
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i16, ptr %109, i64 %111
  store i16 0, ptr %112, align 2, !tbaa !88
  %113 = load ptr, ptr %104, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_712KVStringPairC1EPKtjS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %107, ptr noundef %57, i32 noundef %108, ptr noundef %109, i32 noundef %110, ptr noundef %113)
          to label %114 unwind label %121

114:                                              ; preds = %103
  %115 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %2, i64 0, i32 4
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  %116 = load ptr, ptr %115, align 8, !tbaa !116
  %117 = load i32, ptr %6, align 4, !tbaa !114
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds ptr, ptr %116, i64 %118
  store ptr %107, ptr %119, align 8, !tbaa !118
  %120 = add i32 %117, 1
  store i32 %120, ptr %6, align 4, !tbaa !114
  br label %182

121:                                              ; preds = %103
  %122 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %107, ptr noundef %106) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  br label %221

123:                                              ; preds = %100
  %124 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 6
  %125 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %14)
  %126 = load i32, ptr %11, align 8, !tbaa !82
  %127 = load ptr, ptr %124, align 8, !tbaa !87
  %128 = load i32, ptr %82, align 8, !tbaa !82
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i16, ptr %127, i64 %129
  store i16 0, ptr %130, align 2, !tbaa !88
  %131 = zext i32 %126 to i64
  %132 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %125, i64 0, i32 1
  %133 = load i64, ptr %132, align 8, !tbaa !172
  %134 = icmp ugt i64 %133, %131
  br i1 %134, label %151, label %135

135:                                              ; preds = %123
  %136 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %125, i64 0, i32 5
  %137 = load ptr, ptr %136, align 8, !tbaa !174
  %138 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %125, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !175
  %140 = load ptr, ptr %137, align 8, !tbaa !56
  %141 = getelementptr inbounds ptr, ptr %140, i64 3
  %142 = load ptr, ptr %141, align 8
  call void %142(ptr noundef nonnull align 8 dereferenceable(8) %137, ptr noundef %139)
  %143 = add i32 %126, 1
  %144 = zext i32 %143 to i64
  store i64 %144, ptr %132, align 8, !tbaa !172
  %145 = load ptr, ptr %136, align 8, !tbaa !174
  %146 = shl nuw nsw i64 %144, 1
  %147 = load ptr, ptr %145, align 8, !tbaa !56
  %148 = getelementptr inbounds ptr, ptr %147, i64 2
  %149 = load ptr, ptr %148, align 8
  %150 = call noundef ptr %149(ptr noundef nonnull align 8 dereferenceable(8) %145, i64 noundef %146)
  store ptr %150, ptr %138, align 8, !tbaa !175
  br label %151

151:                                              ; preds = %135, %123
  %152 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %125, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !175
  %154 = add i32 %126, 1
  %155 = zext i32 %154 to i64
  %156 = shl nuw nsw i64 %155, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %153, ptr align 2 %57, i64 %156, i1 false)
  %157 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %125, i64 0, i32 2
  %158 = load i64, ptr %157, align 8, !tbaa !176
  %159 = icmp ugt i64 %158, %129
  br i1 %159, label %176, label %160

160:                                              ; preds = %151
  %161 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %125, i64 0, i32 5
  %162 = load ptr, ptr %161, align 8, !tbaa !174
  %163 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %125, i64 0, i32 4
  %164 = load ptr, ptr %163, align 8, !tbaa !177
  %165 = load ptr, ptr %162, align 8, !tbaa !56
  %166 = getelementptr inbounds ptr, ptr %165, i64 3
  %167 = load ptr, ptr %166, align 8
  call void %167(ptr noundef nonnull align 8 dereferenceable(8) %162, ptr noundef %164)
  %168 = add i32 %128, 1
  %169 = zext i32 %168 to i64
  store i64 %169, ptr %157, align 8, !tbaa !176
  %170 = load ptr, ptr %161, align 8, !tbaa !174
  %171 = shl nuw nsw i64 %169, 1
  %172 = load ptr, ptr %170, align 8, !tbaa !56
  %173 = getelementptr inbounds ptr, ptr %172, i64 2
  %174 = load ptr, ptr %173, align 8
  %175 = call noundef ptr %174(ptr noundef nonnull align 8 dereferenceable(8) %170, i64 noundef %171)
  store ptr %175, ptr %163, align 8, !tbaa !177
  br label %176

176:                                              ; preds = %151, %160
  %177 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %125, i64 0, i32 4
  %178 = load ptr, ptr %177, align 8, !tbaa !177
  %179 = add i32 %128, 1
  %180 = zext i32 %179 to i64
  %181 = shl nuw nsw i64 %180, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %178, ptr align 2 %127, i64 %181, i1 false)
  br label %182

182:                                              ; preds = %176, %114
  %183 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 8
  %184 = load i32, ptr %183, align 8, !tbaa !90
  %185 = icmp ult i32 %14, %184
  br i1 %185, label %187, label %186

186:                                              ; preds = %182
  call void @_ZN11xercesc_2_712SGXMLScanner22resizeRawAttrColonListEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  br label %187

187:                                              ; preds = %186, %182
  %188 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 9
  %189 = load i32, ptr %5, align 4, !tbaa !158
  %190 = load ptr, ptr %188, align 8, !tbaa !95
  %191 = zext i32 %14 to i64
  %192 = getelementptr inbounds i32, ptr %190, i64 %191
  store i32 %189, ptr %192, align 4, !tbaa !158
  %193 = add i32 %14, 1
  br label %194

194:                                              ; preds = %54, %54, %97, %187, %76
  %195 = phi i32 [ 2, %187 ], [ %78, %76 ], [ 1, %97 ], [ 1, %54 ], [ 1, %54 ]
  %196 = phi i32 [ %193, %187 ], [ %14, %76 ], [ %14, %97 ], [ %14, %54 ], [ %14, %54 ]
  %197 = phi i32 [ %101, %187 ], [ %79, %76 ], [ %99, %97 ], [ %14, %54 ], [ %14, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  br label %216

198:                                              ; preds = %32
  switch i16 %33, label %216 [
    i16 0, label %199
    i16 47, label %206
    i16 62, label %210
    i16 60, label %212
    i16 39, label %213
    i16 34, label %213
  ]

199:                                              ; preds = %198
  %200 = call ptr @__cxa_allocate_exception(i64 48) #18
  %201 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %202 = load ptr, ptr %201, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %200, ptr noundef nonnull @.str, i32 noundef 674, i32 noundef 47, ptr noundef %202)
          to label %203 unwind label %204

203:                                              ; preds = %199
  call void @__cxa_throw(ptr nonnull %200, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

204:                                              ; preds = %199
  %205 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %200) #18
  br label %221

206:                                              ; preds = %198
  %207 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
  store i8 1, ptr %3, align 1, !tbaa !150
  %208 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %8, i16 noundef zeroext 62)
  br i1 %208, label %216, label %209

209:                                              ; preds = %206
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %216

210:                                              ; preds = %198
  %211 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
  br label %216

212:                                              ; preds = %198
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %216

213:                                              ; preds = %198, %198
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174)
  %214 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
  call void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr noundef nonnull align 8 dereferenceable(80) %8, i16 noundef zeroext %33)
  %215 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %8, i1 noundef zeroext false)
  br label %216, !llvm.loop !178

216:                                              ; preds = %198, %206, %209, %213, %212, %210, %194
  %217 = phi i32 [ 3, %210 ], [ 3, %212 ], [ 2, %213 ], [ %195, %194 ], [ 3, %209 ], [ 3, %206 ], [ 0, %198 ]
  %218 = phi i32 [ %14, %210 ], [ %14, %212 ], [ %14, %213 ], [ %196, %194 ], [ %14, %209 ], [ %14, %206 ], [ %14, %198 ]
  %219 = phi i32 [ %15, %210 ], [ %15, %212 ], [ %15, %213 ], [ %197, %194 ], [ %15, %209 ], [ %15, %206 ], [ %15, %198 ]
  switch i32 %217, label %224 [
    i32 0, label %220
    i32 2, label %220
    i32 3, label %223
  ]

220:                                              ; preds = %216, %216
  br label %13, !llvm.loop !178

221:                                              ; preds = %204, %121
  %222 = phi { ptr, i32 } [ %205, %204 ], [ %122, %121 ]
  resume { ptr, i32 } %222

223:                                              ; preds = %216
  br label %224

224:                                              ; preds = %216, %223
  %225 = phi i32 [ %218, %223 ], [ %219, %216 ]
  ret i32 %225
}

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776), i1 noundef zeroext) local_unnamed_addr #4

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %4 = alloca i16, align 2
  %5 = alloca [9 x i16], align 16
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store i32 0, ptr %2, align 8, !tbaa !82
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  store i16 0, ptr %10, align 2, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #18
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %12 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef nonnull align 2 dereferenceable(2) %4)
  br i1 %12, label %13, label %164

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !159
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %15, i64 0, i32 15
  %17 = load i32, ptr %16, align 8, !tbaa !160
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  br label %23

23:                                               ; preds = %154, %13
  %24 = phi i1 [ undef, %13 ], [ %153, %154 ]
  br label %25

25:                                               ; preds = %23, %160
  %26 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %11)
          to label %27 unwind label %52

27:                                               ; preds = %25
  %28 = zext i16 %26 to i32
  %29 = load i16, ptr %4, align 2, !tbaa !88
  %30 = icmp eq i16 %26, %29
  br i1 %30, label %131, label %31

31:                                               ; preds = %27
  %32 = icmp eq i16 %26, 38
  br i1 %32, label %83, label %33

33:                                               ; preds = %31
  %34 = add i16 %26, 8192
  %35 = icmp ult i16 %34, -2048
  br i1 %35, label %36, label %64

36:                                               ; preds = %33
  %37 = load ptr, ptr %14, align 8, !tbaa !159
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %37, i64 0, i32 28
  %39 = load ptr, ptr %38, align 8, !tbaa !170
  %40 = zext i16 %26 to i64
  %41 = getelementptr inbounds i8, ptr %39, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !171
  %43 = and i8 %42, 64
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %139

45:                                               ; preds = %36
  %46 = icmp eq i16 %26, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %45
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %49 = call ptr @__cxa_allocate_exception(i64 48) #18
  %50 = load ptr, ptr %48, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef nonnull @.str, i32 noundef 3892, i32 noundef 47, ptr noundef %50)
          to label %51 unwind label %56

51:                                               ; preds = %47
  invoke void @__cxa_throw(ptr nonnull %49, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
          to label %166 unwind label %54

52:                                               ; preds = %25, %71, %81, %82, %138, %70, %144
  %53 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %155

54:                                               ; preds = %51
  %55 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %155

56:                                               ; preds = %47
  %57 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @__cxa_free_exception(ptr %49) #18
  br label %155

58:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %5) #18
  %59 = load ptr, ptr %19, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %28, ptr noundef nonnull %5, i32 noundef 8, i32 noundef 16, ptr noundef %59)
          to label %60 unwind label %62

60:                                               ; preds = %58
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 218, ptr noundef %1, ptr noundef nonnull %5, ptr noundef null, ptr noundef null)
          to label %61 unwind label %62

61:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %5) #18
  br label %139

62:                                               ; preds = %60, %58
  %63 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %5) #18
  br label %155

64:                                               ; preds = %33
  %65 = icmp ult i16 %26, -9216
  br i1 %65, label %66, label %82

66:                                               ; preds = %64
  %67 = load i32, ptr %2, align 8, !tbaa !82
  %68 = load i32, ptr %18, align 4, !tbaa !83
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
          to label %71 unwind label %52

71:                                               ; preds = %70, %66
  %72 = load ptr, ptr %9, align 8, !tbaa !87
  %73 = load i32, ptr %2, align 8, !tbaa !82
  %74 = add i32 %73, 1
  store i32 %74, ptr %2, align 8, !tbaa !82
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds i16, ptr %72, i64 %75
  store i16 %26, ptr %76, align 2, !tbaa !88
  %77 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %11)
          to label %78 unwind label %52

78:                                               ; preds = %71
  %79 = add i16 %77, 8192
  %80 = icmp ult i16 %79, -1024
  br i1 %80, label %81, label %139

81:                                               ; preds = %78
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %139 unwind label %52

82:                                               ; preds = %64
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 282)
          to label %139 unwind label %52

83:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #18
  %84 = load ptr, ptr %0, align 8, !tbaa !56
  %85 = getelementptr inbounds ptr, ptr %84, i64 13
  %86 = load ptr, ptr %85, align 8
  %87 = invoke noundef i32 %86(ptr noundef nonnull align 8 dereferenceable(1000) %0, i1 noundef zeroext true, ptr noundef nonnull align 2 dereferenceable(2) %7, ptr noundef nonnull align 2 dereferenceable(2) %8, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %88 unwind label %104

88:                                               ; preds = %83
  %89 = icmp eq i32 %87, 1
  br i1 %89, label %90, label %130

90:                                               ; preds = %88
  %91 = load i8, ptr %6, align 1, !tbaa !150, !range !147, !noundef !148
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %106, label %93

93:                                               ; preds = %90
  %94 = load i32, ptr %2, align 8, !tbaa !82
  %95 = load i32, ptr %20, align 4, !tbaa !83
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
          to label %98 unwind label %104

98:                                               ; preds = %97, %93
  %99 = load ptr, ptr %9, align 8, !tbaa !87
  %100 = load i32, ptr %2, align 8, !tbaa !82
  %101 = add i32 %100, 1
  store i32 %101, ptr %2, align 8, !tbaa !82
  %102 = zext i32 %100 to i64
  %103 = getelementptr inbounds i16, ptr %99, i64 %102
  store i16 -1, ptr %103, align 2, !tbaa !88
  br label %106

104:                                              ; preds = %123, %111, %97, %83
  %105 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #18
  br label %155

106:                                              ; preds = %98, %90
  %107 = load i16, ptr %7, align 2, !tbaa !88
  %108 = load i32, ptr %2, align 8, !tbaa !82
  %109 = load i32, ptr %21, align 4, !tbaa !83
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
          to label %112 unwind label %104

112:                                              ; preds = %111, %106
  %113 = load ptr, ptr %9, align 8, !tbaa !87
  %114 = load i32, ptr %2, align 8, !tbaa !82
  %115 = add i32 %114, 1
  store i32 %115, ptr %2, align 8, !tbaa !82
  %116 = zext i32 %114 to i64
  %117 = getelementptr inbounds i16, ptr %113, i64 %116
  store i16 %107, ptr %117, align 2, !tbaa !88
  %118 = load i16, ptr %8, align 2, !tbaa !88
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %112
  %121 = load i32, ptr %21, align 4, !tbaa !83
  %122 = icmp eq i32 %115, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
          to label %124 unwind label %104

124:                                              ; preds = %123, %120
  %125 = load ptr, ptr %9, align 8, !tbaa !87
  %126 = load i32, ptr %2, align 8, !tbaa !82
  %127 = add i32 %126, 1
  store i32 %127, ptr %2, align 8, !tbaa !82
  %128 = zext i32 %126 to i64
  %129 = getelementptr inbounds i16, ptr %125, i64 %128
  store i16 %118, ptr %129, align 2, !tbaa !88
  br label %130

130:                                              ; preds = %112, %88, %124
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #18
  br label %151

131:                                              ; preds = %27
  %132 = load ptr, ptr %14, align 8, !tbaa !159
  %133 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %132, i64 0, i32 15
  %134 = load i32, ptr %133, align 8, !tbaa !160
  %135 = icmp eq i32 %17, %134
  br i1 %135, label %151, label %136

136:                                              ; preds = %131
  %137 = icmp ugt i32 %17, %134
  br i1 %137, label %138, label %139

138:                                              ; preds = %136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %151 unwind label %52

139:                                              ; preds = %82, %81, %136, %78, %36, %61
  %140 = phi i16 [ %26, %36 ], [ %26, %61 ], [ %77, %78 ], [ %26, %136 ], [ %77, %81 ], [ %26, %82 ]
  %141 = load i32, ptr %2, align 8, !tbaa !82
  %142 = load i32, ptr %22, align 4, !tbaa !83
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
          to label %145 unwind label %52

145:                                              ; preds = %144, %139
  %146 = load ptr, ptr %9, align 8, !tbaa !87
  %147 = load i32, ptr %2, align 8, !tbaa !82
  %148 = add i32 %147, 1
  store i32 %148, ptr %2, align 8, !tbaa !82
  %149 = zext i32 %147 to i64
  %150 = getelementptr inbounds i16, ptr %146, i64 %149
  store i16 %140, ptr %150, align 2, !tbaa !88
  br label %151

151:                                              ; preds = %138, %131, %145, %130
  %152 = phi i32 [ 4, %130 ], [ 0, %145 ], [ 1, %131 ], [ 1, %138 ]
  %153 = phi i1 [ %24, %130 ], [ %24, %145 ], [ %135, %131 ], [ %135, %138 ]
  switch i32 %152, label %164 [
    i32 0, label %154
    i32 4, label %154
  ]

154:                                              ; preds = %151, %151
  br label %23, !llvm.loop !179

155:                                              ; preds = %52, %54, %104, %62, %56
  %156 = phi { ptr, i32 } [ %57, %56 ], [ %63, %62 ], [ %105, %104 ], [ %53, %52 ], [ %55, %54 ]
  %157 = extractvalue { ptr, i32 } %156, 1
  %158 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #18
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = extractvalue { ptr, i32 } %156, 0
  %162 = call ptr @__cxa_begin_catch(ptr %161) #18
  call void @__cxa_end_catch()
  br label %25, !llvm.loop !180

163:                                              ; preds = %155
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #18
  resume { ptr, i32 } %156

164:                                              ; preds = %151, %3
  %165 = phi i1 [ false, %3 ], [ %153, %151 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #18
  ret i1 %165

166:                                              ; preds = %51
  unreachable
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712KVStringPairC1EPKtjS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !181 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !114
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !182

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !117
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !116
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner22resizeRawAttrColonListEv(ptr nocapture noundef nonnull align 8 dereferenceable(1000) %0) local_unnamed_addr #3 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !90
  %4 = shl i32 %3, 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = zext i32 %4 to i64
  %8 = shl nuw nsw i64 %7, 2
  %9 = load ptr, ptr %6, align 8, !tbaa !56
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  %13 = load i32, ptr %2, align 8, !tbaa !90
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %23, %18 ]
  %20 = getelementptr inbounds i32, ptr %17, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !158
  %22 = getelementptr inbounds i32, ptr %12, i64 %19
  store i32 %21, ptr %22, align 4, !tbaa !158
  %23 = add nuw nsw i64 %19, 1
  %24 = load i32, ptr %2, align 8, !tbaa !90
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %18, label %27, !llvm.loop !183

27:                                               ; preds = %18, %1
  %28 = load ptr, ptr %5, align 8, !tbaa !91
  %29 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !95
  %31 = load ptr, ptr %28, align 8, !tbaa !56
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  store ptr %12, ptr %29, align 8, !tbaa !95
  store i32 %4, ptr %2, align 8, !tbaa !90
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %8
}

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  store i8 1, ptr %1, align 1, !tbaa !150
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 245)
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  br label %9

9:                                                ; preds = %9, %7
  %10 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
  switch i16 %10, label %9 [
    i16 62, label %11
    i16 0, label %11
  ]

11:                                               ; preds = %9, %9
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str, i32 noundef 845, i32 noundef 77, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #18
  resume { ptr, i32 } %17

18:                                               ; preds = %2
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %20 = load i8, ptr %19, align 2, !tbaa !184, !range !147, !noundef !148
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !185
  %25 = add i32 %5, -1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !118
  %29 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %28, i64 0, i32 13
  br label %32

30:                                               ; preds = %18
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  br label %32

32:                                               ; preds = %30, %22
  %33 = phi ptr [ %29, %22 ], [ %31, %30 ]
  %34 = load i32, ptr %33, align 4, !tbaa !158
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !185
  %37 = add i32 %5, -1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !118
  %41 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %40, i64 0, i32 14
  %42 = load ptr, ptr %41, align 8, !tbaa !186
  %43 = tail call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !159
  %47 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %46, ptr noundef %42)
  br i1 %47, label %51, label %48

48:                                               ; preds = %32
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 202, ptr noundef %42, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %49

49:                                               ; preds = %49, %48
  %50 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %44)
  switch i16 %50, label %49 [
    i16 62, label %336
    i16 0, label %336
  ]

51:                                               ; preds = %32
  %52 = load i32, ptr %4, align 4, !tbaa !152
  %53 = icmp eq i32 %52, 0
  %54 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 20
  %55 = load ptr, ptr %54, align 8, !tbaa !107
  %56 = tail call noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIbE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %55)
  %57 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21
  %58 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 1
  %59 = zext i1 %56 to i8
  store i8 %59, ptr %58, align 1, !tbaa !187
  %60 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %43, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !188
  %62 = load ptr, ptr %45, align 8, !tbaa !159
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %62, i64 0, i32 15
  %64 = load i32, ptr %63, align 8, !tbaa !160
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %67, label %66

66:                                               ; preds = %51
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 278)
  br label %67

67:                                               ; preds = %66, %51
  %68 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %44, i1 noundef zeroext false)
  %69 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %44, i16 noundef zeroext 62)
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr %43, align 8, !tbaa !153
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !155
  %74 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %73)
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 200, ptr noundef %74, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %75

75:                                               ; preds = %70, %67
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %77 = load i8, ptr %76, align 8, !tbaa !146, !range !147, !noundef !148
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %138, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %43, align 8, !tbaa !153
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %80, i64 0, i32 3
  %82 = load i32, ptr %81, align 8, !tbaa !189
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %138

84:                                               ; preds = %79
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %86 = load ptr, ptr %85, align 8, !tbaa !139
  %87 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %86, i64 0, i32 14
  %88 = load ptr, ptr %87, align 8, !tbaa !190
  %89 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.8", ptr %88, i64 0, i32 1, i32 1
  %90 = load i32, ptr %89, align 4, !tbaa !194
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %84
  %93 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %88)
  %94 = load ptr, ptr %93, align 8, !tbaa !118
  br label %95

95:                                               ; preds = %84, %92
  %96 = phi ptr [ %94, %92 ], [ null, %84 ]
  %97 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 6
  store ptr %96, ptr %97, align 8, !tbaa !196
  %98 = icmp eq ptr %96, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load ptr, ptr %85, align 8, !tbaa !139
  %101 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %100, i64 0, i32 7
  %102 = load ptr, ptr %101, align 8, !tbaa !197
  br label %103

103:                                              ; preds = %95, %99
  %104 = phi ptr [ %102, %99 ], [ null, %95 ]
  %105 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 5
  store ptr %104, ptr %105, align 8, !tbaa !198
  %106 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %107 = load ptr, ptr %106, align 8, !tbaa !199
  %108 = icmp eq ptr %107, null
  br i1 %108, label %140, label %109

109:                                              ; preds = %103
  %110 = load ptr, ptr %85, align 8, !tbaa !139
  %111 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %110, i64 0, i32 9
  %112 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %110, i64 0, i32 9, i32 6
  %113 = load ptr, ptr %112, align 8, !tbaa !87
  %114 = load i32, ptr %111, align 8, !tbaa !82
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i16, ptr %113, i64 %115
  store i16 0, ptr %116, align 2, !tbaa !88
  %117 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 7
  store ptr %113, ptr %117, align 8, !tbaa !200
  %118 = icmp eq ptr %113, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %109
  %120 = load i16, ptr %113, align 2, !tbaa !88
  %121 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !88
  %122 = icmp eq i16 %120, %121
  br i1 %122, label %126, label %140

123:                                              ; preds = %109
  %124 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !88
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %137, label %140

126:                                              ; preds = %119, %131
  %127 = phi i16 [ %134, %131 ], [ %120, %119 ]
  %128 = phi ptr [ %133, %131 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %119 ]
  %129 = phi ptr [ %132, %131 ], [ %113, %119 ]
  %130 = icmp eq i16 %127, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds i16, ptr %129, i64 1
  %133 = getelementptr inbounds i16, ptr %128, i64 1
  %134 = load i16, ptr %132, align 2, !tbaa !88
  %135 = load i16, ptr %133, align 2, !tbaa !88
  %136 = icmp eq i16 %134, %135
  br i1 %136, label %126, label %140, !llvm.loop !201

137:                                              ; preds = %126, %123
  store ptr null, ptr %117, align 8, !tbaa !200
  br label %140

138:                                              ; preds = %79, %75
  %139 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %139, i8 0, i64 24, i1 false)
  br label %140

140:                                              ; preds = %131, %119, %103, %137, %123, %138
  %141 = load i8, ptr %76, align 8, !tbaa !146, !range !147, !noundef !148
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %241, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %145 = load ptr, ptr %144, align 8, !tbaa !139
  %146 = load ptr, ptr %43, align 8, !tbaa !153
  %147 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %43, i64 0, i32 4
  %148 = load ptr, ptr %147, align 8, !tbaa !202
  %149 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %43, i64 0, i32 3
  %150 = load i32, ptr %149, align 8, !tbaa !203
  %151 = load ptr, ptr %145, align 8, !tbaa !56
  %152 = getelementptr inbounds ptr, ptr %151, i64 2
  %153 = load ptr, ptr %152, align 8
  %154 = tail call noundef i32 %153(ptr noundef nonnull align 8 dereferenceable(40) %145, ptr noundef %146, ptr noundef %148, i32 noundef %150)
  %155 = icmp sgt i32 %154, -1
  br i1 %155, label %156, label %186

156:                                              ; preds = %143
  %157 = load i32, ptr %149, align 8, !tbaa !203
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load ptr, ptr %144, align 8, !tbaa !139
  %161 = load ptr, ptr %43, align 8, !tbaa !153
  %162 = load ptr, ptr %161, align 8, !tbaa !56
  %163 = getelementptr inbounds ptr, ptr %162, i64 15
  %164 = load ptr, ptr %163, align 8
  %165 = tail call noundef ptr %164(ptr noundef nonnull align 8 dereferenceable(33) %161)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %160, i32 noundef 16, ptr noundef %165, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %186

166:                                              ; preds = %156
  %167 = icmp ult i32 %154, %157
  %168 = load ptr, ptr %144, align 8, !tbaa !139
  br i1 %167, label %175, label %169

169:                                              ; preds = %166
  %170 = load ptr, ptr %43, align 8, !tbaa !153
  %171 = load ptr, ptr %170, align 8, !tbaa !56
  %172 = getelementptr inbounds ptr, ptr %171, i64 15
  %173 = load ptr, ptr %172, align 8
  %174 = tail call noundef ptr %173(ptr noundef nonnull align 8 dereferenceable(33) %170)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %168, i32 noundef 21, ptr noundef %174, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %186

175:                                              ; preds = %166
  %176 = load ptr, ptr %147, align 8, !tbaa !202
  %177 = zext nneg i32 %154 to i64
  %178 = getelementptr inbounds ptr, ptr %176, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !118
  %180 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %179)
  %181 = load ptr, ptr %43, align 8, !tbaa !153
  %182 = load ptr, ptr %181, align 8, !tbaa !56
  %183 = getelementptr inbounds ptr, ptr %182, i64 15
  %184 = load ptr, ptr %183, align 8
  %185 = tail call noundef ptr %184(ptr noundef nonnull align 8 dereferenceable(33) %181)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %168, i32 noundef 7, ptr noundef %180, ptr noundef %185, ptr noundef null, ptr noundef null)
  br label %186

186:                                              ; preds = %159, %175, %169, %143
  %187 = load ptr, ptr %144, align 8, !tbaa !139
  %188 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %187, i64 0, i32 16
  %189 = load i8, ptr %188, align 8, !tbaa !204, !range !147, !noundef !148
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %186
  store i8 1, ptr %58, align 1, !tbaa !187
  br label %207

192:                                              ; preds = %186
  %193 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 5
  %194 = load ptr, ptr %193, align 8, !tbaa !198
  %195 = icmp eq ptr %194, null
  br i1 %195, label %207, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %194, i64 0, i32 9
  %198 = load i32, ptr %197, align 4, !tbaa !205
  %199 = icmp eq i32 %198, 25
  br i1 %199, label %200, label %207

200:                                              ; preds = %196
  %201 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %202 = load ptr, ptr %201, align 8, !tbaa !209
  %203 = load ptr, ptr %202, align 8, !tbaa !56
  %204 = getelementptr inbounds ptr, ptr %203, i64 11
  %205 = load ptr, ptr %204, align 8
  %206 = tail call noundef ptr %205(ptr noundef nonnull align 8 dereferenceable(16) %202)
  br label %207

207:                                              ; preds = %192, %196, %200, %191
  %208 = phi ptr [ null, %191 ], [ %206, %200 ], [ null, %196 ], [ null, %192 ]
  %209 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %210 = load ptr, ptr %209, align 8, !tbaa !199
  %211 = icmp eq ptr %210, null
  br i1 %211, label %222, label %212

212:                                              ; preds = %207
  %213 = load ptr, ptr %144, align 8, !tbaa !139
  %214 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %213, i64 0, i32 17
  %215 = load i8, ptr %214, align 1, !tbaa !210, !range !147, !noundef !148
  %216 = icmp eq i8 %215, 0
  store i8 %215, ptr %57, align 8, !tbaa !211
  br i1 %216, label %222, label %217

217:                                              ; preds = %212
  %218 = load ptr, ptr %43, align 8, !tbaa !153
  %219 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %218, i64 0, i32 11
  %220 = load ptr, ptr %219, align 8, !tbaa !212
  %221 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 7
  store ptr %220, ptr %221, align 8, !tbaa !200
  br label %222

222:                                              ; preds = %212, %217, %207
  %223 = load i8, ptr %76, align 8, !tbaa !146, !range !147, !noundef !148
  %224 = icmp ne i8 %223, 0
  %225 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  %226 = load i8, ptr %225, align 4, !range !147
  %227 = icmp ne i8 %226, 0
  %228 = select i1 %224, i1 %227, i1 false
  %229 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 12
  %230 = load ptr, ptr %229, align 8
  %231 = icmp ne ptr %230, null
  %232 = select i1 %228, i1 %231, i1 false
  br i1 %232, label %233, label %241

233:                                              ; preds = %222
  %234 = load ptr, ptr %43, align 8, !tbaa !153
  %235 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5
  %236 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5, i32 6
  %237 = load ptr, ptr %236, align 8, !tbaa !87
  %238 = load i32, ptr %235, align 8, !tbaa !82
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i16, ptr %237, i64 %239
  store i16 0, ptr %240, align 2, !tbaa !88
  tail call void @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(48) %230, ptr noundef %234, ptr noundef %237)
  br label %241

241:                                              ; preds = %222, %233, %140
  %242 = phi ptr [ null, %140 ], [ %208, %233 ], [ %208, %222 ]
  %243 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %244 = load ptr, ptr %243, align 8, !tbaa !199
  %245 = icmp eq ptr %244, null
  br i1 %245, label %248, label %246

246:                                              ; preds = %241
  %247 = load ptr, ptr %43, align 8, !tbaa !153
  tail call void @_ZN11xercesc_2_712SGXMLScanner14endElementPSVIEPNS_17SchemaElementDeclEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %247, ptr noundef %242)
  br label %248

248:                                              ; preds = %246, %241
  %249 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %250 = load ptr, ptr %249, align 8, !tbaa !139
  %251 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %250, i64 0, i32 9
  store i32 0, ptr %251, align 8, !tbaa !82
  %252 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %250, i64 0, i32 9, i32 6
  %253 = load ptr, ptr %252, align 8, !tbaa !87
  store i16 0, ptr %253, align 2, !tbaa !88
  %254 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %255 = load ptr, ptr %254, align 8, !tbaa !141
  %256 = icmp eq ptr %255, null
  br i1 %256, label %289, label %257

257:                                              ; preds = %248
  %258 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  %259 = load i32, ptr %258, align 4, !tbaa !79
  %260 = icmp eq i32 %259, 1
  br i1 %260, label %261, label %270

261:                                              ; preds = %257
  %262 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %43, i64 0, i32 16
  %263 = load i32, ptr %262, align 4, !tbaa !218
  %264 = icmp eq i32 %263, -1
  %265 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  store i32 0, ptr %265, align 8, !tbaa !82
  br i1 %264, label %267, label %266

266:                                              ; preds = %261
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %265, ptr noundef %42, i32 noundef %263)
  br label %277

267:                                              ; preds = %261
  %268 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %269 = load ptr, ptr %268, align 8, !tbaa !87
  store i16 0, ptr %269, align 2, !tbaa !88
  br label %277

270:                                              ; preds = %257
  %271 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %272 = load ptr, ptr %43, align 8, !tbaa !153
  %273 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %272, i64 0, i32 2
  %274 = load ptr, ptr %273, align 8, !tbaa !155
  %275 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %274, i64 0, i32 5
  %276 = load ptr, ptr %275, align 8, !tbaa !219
  store i32 0, ptr %271, align 8, !tbaa !82
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %271, ptr noundef %276)
  br label %277

277:                                              ; preds = %266, %267, %270
  %278 = load ptr, ptr %254, align 8, !tbaa !141
  %279 = load ptr, ptr %43, align 8, !tbaa !153
  %280 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %281 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %282 = load ptr, ptr %281, align 8, !tbaa !87
  %283 = load i32, ptr %280, align 8, !tbaa !82
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds i16, ptr %282, i64 %284
  store i16 0, ptr %285, align 2, !tbaa !88
  %286 = load ptr, ptr %278, align 8, !tbaa !56
  %287 = getelementptr inbounds ptr, ptr %286, i64 6
  %288 = load ptr, ptr %287, align 8
  tail call void %288(ptr noundef nonnull align 8 dereferenceable(8) %278, ptr noundef nonnull align 8 dereferenceable(33) %279, i32 noundef %34, i1 noundef zeroext %53, ptr noundef %282)
  br label %289

289:                                              ; preds = %277, %248
  br i1 %53, label %335, label %290

290:                                              ; preds = %289
  %291 = load ptr, ptr %54, align 8, !tbaa !107
  %292 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %291, i64 0, i32 1, i32 1
  %293 = load i32, ptr %292, align 4, !tbaa !221
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %297, label %295

295:                                              ; preds = %290
  %296 = tail call noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIbE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %291)
  br i1 %296, label %299, label %297

297:                                              ; preds = %295, %290
  %298 = load i8, ptr %58, align 1, !tbaa !187, !range !147, !noundef !148
  br label %299

299:                                              ; preds = %297, %295
  %300 = phi i8 [ 1, %295 ], [ %298, %297 ]
  %301 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %291, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIbE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %301, i32 noundef 1)
  %302 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %291, i64 0, i32 1, i32 3
  %303 = load ptr, ptr %302, align 8, !tbaa !110
  %304 = load i32, ptr %292, align 4, !tbaa !221
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds i8, ptr %303, i64 %305
  store i8 %300, ptr %306, align 1, !tbaa !150
  %307 = add i32 %304, 1
  store i32 %307, ptr %292, align 4, !tbaa !221
  store i8 1, ptr %1, align 1, !tbaa !150
  %308 = load ptr, ptr %35, align 8, !tbaa !185
  %309 = load i32, ptr %4, align 4, !tbaa !152
  %310 = add i32 %309, -1
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds ptr, ptr %308, i64 %311
  %313 = load ptr, ptr %312, align 8, !tbaa !118
  %314 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %313, i64 0, i32 12
  %315 = load ptr, ptr %314, align 8, !tbaa !222
  %316 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %315, ptr %316, align 8, !tbaa !223
  %317 = load ptr, ptr %315, align 8, !tbaa !56
  %318 = getelementptr inbounds ptr, ptr %317, i64 5
  %319 = load ptr, ptr %318, align 8
  %320 = tail call noundef i32 %319(ptr noundef nonnull align 8 dereferenceable(8) %315)
  %321 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  store i32 %320, ptr %321, align 4, !tbaa !79
  %322 = load ptr, ptr %249, align 8, !tbaa !139
  %323 = load ptr, ptr %316, align 8, !tbaa !223
  %324 = load ptr, ptr %322, align 8, !tbaa !56
  %325 = getelementptr inbounds ptr, ptr %324, i64 11
  %326 = load ptr, ptr %325, align 8
  tail call void %326(ptr noundef nonnull align 8 dereferenceable(40) %322, ptr noundef %323)
  %327 = load ptr, ptr %35, align 8, !tbaa !185
  %328 = load i32, ptr %4, align 4, !tbaa !152
  %329 = add i32 %328, -1
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds ptr, ptr %327, i64 %330
  %332 = load ptr, ptr %331, align 8, !tbaa !118
  %333 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %332, i64 0, i32 8
  %334 = load i8, ptr %333, align 8, !tbaa !224, !range !147, !noundef !148
  store i8 %334, ptr %76, align 8, !tbaa !146
  br label %336

335:                                              ; preds = %289
  store i8 0, ptr %1, align 1, !tbaa !150
  br label %336

336:                                              ; preds = %49, %49, %299, %335
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIbE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !225 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !221
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15, !prof !226

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i32 noundef 70, i32 noundef 80, ptr noundef %8)
          to label %9 unwind label %13

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

10:                                               ; preds = %25, %13
  %11 = phi ptr [ %21, %25 ], [ %6, %13 ]
  %12 = phi { ptr, i32 } [ %26, %25 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %11) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %10

15:                                               ; preds = %1
  %16 = add nsw i32 %3, -1
  %17 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !221
  %19 = icmp ugt i32 %18, %16
  br i1 %19, label %27, label %20, !prof !227

20:                                               ; preds = %15
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %22 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !108
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 116, ptr noundef %23)
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %10

27:                                               ; preds = %15
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !110
  %31 = zext i32 %16 to i64
  %32 = getelementptr inbounds i8, ptr %30, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !150, !range !147, !noundef !148
  %34 = icmp ne i8 %33, 0
  tail call void @_ZN11xercesc_2_713ValueVectorOfIbE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef %16)
  ret i1 %34
}

declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner14endElementPSVIEPNS_17SchemaElementDeclEPNS_17DatatypeValidatorE(ptr nocapture noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 !prof !55 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21
  %5 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !228
  %7 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !229
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !230
  %13 = icmp sgt i32 %6, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = add nsw i32 %6, -1
  store i32 %15, ptr %11, align 4, !tbaa !230
  store i32 %15, ptr %7, align 8, !tbaa !229
  br label %16

16:                                               ; preds = %10, %3, %14
  %17 = phi i32 [ 1, %14 ], [ 2, %3 ], [ 0, %10 ]
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %19 = load i8, ptr %18, align 8, !tbaa !146, !range !147, !noundef !148
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !189
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 1
  %27 = load i8, ptr %26, align 1, !tbaa !187, !range !147, !noundef !148
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, i32 2, i32 1
  br label %30

30:                                               ; preds = %25, %21, %16
  %31 = phi i32 [ %29, %25 ], [ 0, %21 ], [ 0, %16 ]
  %32 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !196
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %37 = load ptr, ptr %36, align 8, !tbaa !231
  %38 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %37, ptr noundef nonnull %33)
  %39 = load ptr, ptr %32, align 8, !tbaa !196
  %40 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %39, i64 0, i32 10
  %41 = load i32, ptr %40, align 8, !tbaa !232
  %42 = and i32 %41, -2
  %43 = icmp ne i32 %42, 2
  br label %52

44:                                               ; preds = %30
  %45 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !198
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %50 = load ptr, ptr %49, align 8, !tbaa !231
  %51 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %50, ptr noundef nonnull %46)
  br label %52

52:                                               ; preds = %44, %48, %35
  %53 = phi ptr [ %38, %35 ], [ %51, %48 ], [ null, %44 ]
  %54 = phi i1 [ %43, %35 ], [ true, %48 ], [ true, %44 ]
  %55 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !200
  %57 = icmp ne ptr %56, null
  %58 = icmp eq i32 %31, 2
  %59 = and i1 %58, %54
  %60 = and i1 %59, %57
  br i1 %60, label %61, label %75

61:                                               ; preds = %52
  %62 = icmp eq ptr %2, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  %64 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !198
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %63, %61
  %68 = phi ptr [ %2, %61 ], [ %65, %63 ]
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %70 = load ptr, ptr %69, align 8, !tbaa !91
  %71 = load ptr, ptr %68, align 8, !tbaa !56
  %72 = getelementptr inbounds ptr, ptr %71, i64 7
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(104) %68, ptr noundef nonnull %56, ptr noundef %70, i1 noundef zeroext false)
  br label %75

75:                                               ; preds = %67, %63, %52
  %76 = phi ptr [ null, %63 ], [ null, %52 ], [ %74, %67 ]
  %77 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 19
  %78 = load ptr, ptr %77, align 8, !tbaa !106
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %80 = load ptr, ptr %79, align 8, !tbaa !234
  %81 = load i8, ptr %4, align 8, !tbaa !211, !range !147, !noundef !148
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 3
  %83 = load i32, ptr %82, align 8, !tbaa !189
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %89

85:                                               ; preds = %75
  %86 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %87 = load ptr, ptr %86, align 8, !tbaa !231
  %88 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %87, ptr noundef nonnull %1)
  br label %89

89:                                               ; preds = %75, %85
  %90 = phi ptr [ %88, %85 ], [ null, %75 ]
  %91 = icmp eq ptr %2, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %94 = load ptr, ptr %93, align 8, !tbaa !231
  %95 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %94, ptr noundef nonnull %2)
  br label %96

96:                                               ; preds = %89, %92
  %97 = phi ptr [ %95, %92 ], [ null, %89 ]
  %98 = icmp ne i8 %81, 0
  %99 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %100 = load ptr, ptr %99, align 8, !tbaa !231
  %101 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 11
  %102 = load ptr, ptr %101, align 8, !tbaa !212
  %103 = load ptr, ptr %55, align 8, !tbaa !200
  tail call void @_ZN11xercesc_2_711PSVIElement5resetENS_8PSVIItem14VALIDITY_STATEENS1_15ASSESSMENT_TYPEEPKtbPNS_20XSElementDeclarationEPNS_16XSTypeDefinitionEPNS_22XSSimpleTypeDefinitionEPNS_7XSModelES5_S5_PtPNS_21XSNotationDeclarationE(ptr noundef nonnull align 8 dereferenceable(104) %78, i32 noundef %31, i32 noundef %17, ptr noundef %80, i1 noundef zeroext %98, ptr noundef %90, ptr noundef %53, ptr noundef %97, ptr noundef %100, ptr noundef %102, ptr noundef %103, ptr noundef %76, ptr noundef null)
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %105 = load ptr, ptr %104, align 8, !tbaa !199
  %106 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !155
  %108 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %107, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !235
  %110 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %111 = load ptr, ptr %110, align 8, !tbaa !236
  %112 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %107, i64 0, i32 4
  %113 = load i32, ptr %112, align 4, !tbaa !237
  %114 = load ptr, ptr %111, align 8, !tbaa !56
  %115 = getelementptr inbounds ptr, ptr %114, i64 10
  %116 = load ptr, ptr %115, align 8
  %117 = tail call noundef ptr %116(ptr noundef nonnull align 8 dereferenceable(40) %111, i32 noundef %113)
  %118 = load ptr, ptr %77, align 8, !tbaa !106
  %119 = load ptr, ptr %105, align 8, !tbaa !56
  %120 = getelementptr inbounds ptr, ptr %119, i64 2
  %121 = load ptr, ptr %120, align 8
  tail call void %121(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef %109, ptr noundef %117, ptr noundef %118)
  %122 = load i32, ptr %5, align 4, !tbaa !228
  %123 = add nsw i32 %122, -1
  store i32 %123, ptr %5, align 4, !tbaa !228
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner15scanDocTypeDeclEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #3 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %3 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11skipUntilInEPKt(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull @_ZZN11xercesc_2_712SGXMLScanner15scanDocTypeDeclEvE9doctypeIE)
  %4 = icmp eq i16 %3, 91
  br i1 %4, label %5, label %7

5:                                                ; preds = %1, %5
  %6 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %2)
  switch i16 %6, label %5 [
    i16 93, label %7
    i16 0, label %7
  ]

7:                                                ; preds = %5, %5, %1
  br label %8

8:                                                ; preds = %7, %8
  %9 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %2)
  switch i16 %9, label %8 [
    i16 62, label %10
    i16 0, label %10
  ]

10:                                               ; preds = %8, %8
  ret void
}

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11skipUntilInEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca %"class.xercesc_2_7::QName", align 8
  %10 = alloca [2 x i16], align 4
  %11 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  store i8 1, ptr %1, align 1, !tbaa !150
  %12 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5
  store i32 0, ptr %12, align 8, !tbaa !82
  %13 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  store i16 0, ptr %14, align 2, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  store i32 0, ptr %16, align 8, !tbaa !82
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !87
  store i16 0, ptr %18, align 2, !tbaa !88
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !159
  %21 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %20, ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull %7)
  br i1 %21, label %33, label %22

22:                                               ; preds = %2
  %23 = load i32, ptr %16, align 8, !tbaa !82
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 183)
  br label %30

26:                                               ; preds = %22
  %27 = load ptr, ptr %17, align 8, !tbaa !87
  %28 = zext i32 %23 to i64
  %29 = getelementptr inbounds i16, ptr %27, i64 %28
  store i16 0, ptr %29, align 2, !tbaa !88
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 308, ptr noundef %27, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %30

30:                                               ; preds = %26, %25
  br label %31

31:                                               ; preds = %30, %31
  %32 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %15)
  switch i16 %32, label %31 [
    i16 60, label %1076
    i16 0, label %1076
  ]

33:                                               ; preds = %2
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %36 = load i32, ptr %35, align 4, !tbaa !152
  %37 = icmp eq i32 %36, 0
  %38 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %15, i1 noundef zeroext false)
  %39 = load ptr, ptr %17, align 8, !tbaa !87
  %40 = load i32, ptr %16, align 8, !tbaa !82
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i16, ptr %39, i64 %41
  store i16 0, ptr %42, align 2, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #18
  %43 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !94
  %45 = call noundef i32 @_ZN11xercesc_2_712SGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %39, ptr noundef nonnull align 8 dereferenceable(40) %44, ptr noundef nonnull align 1 dereferenceable(1) %8)
  br i1 %37, label %106, label %46

46:                                               ; preds = %33
  %47 = call noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %34)
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %49 = load i8, ptr %48, align 8, !tbaa !146, !range !147, !noundef !148
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %53 = load ptr, ptr %52, align 8, !tbaa !139
  %54 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %53, i64 0, i32 14
  %55 = load ptr, ptr %54, align 8, !tbaa !190
  %56 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.8", ptr %55, i64 0, i32 1, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !194
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %55)
  %61 = load ptr, ptr %60, align 8, !tbaa !118
  br label %62

62:                                               ; preds = %51, %59
  %63 = phi ptr [ %61, %59 ], [ null, %51 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %77, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %63, i64 0, i32 10
  %67 = load i32, ptr %66, align 8, !tbaa !232
  br label %77

68:                                               ; preds = %46
  %69 = load ptr, ptr %47, align 8, !tbaa !153
  %70 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %69, i64 0, i32 12
  %71 = load ptr, ptr %70, align 8, !tbaa !238
  %72 = icmp eq ptr %71, null
  %73 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %69, i64 0, i32 2
  %74 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %71, i64 0, i32 10
  %75 = select i1 %72, ptr %73, ptr %74
  %76 = load i32, ptr %75, align 4, !tbaa !171
  br label %77

77:                                               ; preds = %62, %65, %68
  %78 = phi ptr [ %63, %65 ], [ %71, %68 ], [ null, %62 ]
  %79 = phi i32 [ %67, %65 ], [ %76, %68 ], [ 1, %62 ]
  switch i32 %79, label %106 [
    i32 4, label %80
    i32 3, label %80
    i32 2, label %80
    i32 1, label %105
  ]

80:                                               ; preds = %77, %77, %77
  %81 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %78, i64 0, i32 25
  %82 = load ptr, ptr %81, align 8, !tbaa !239
  %83 = icmp ne ptr %82, null
  %84 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %78, i64 0, i32 20
  %85 = load ptr, ptr %84, align 8
  %86 = icmp eq ptr %85, null
  %87 = select i1 %83, i1 true, i1 %86
  br i1 %87, label %90, label %88

88:                                               ; preds = %80
  %89 = call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %78, i1 noundef zeroext false)
  store ptr %89, ptr %81, align 8, !tbaa !239
  br label %90

90:                                               ; preds = %80, %88
  %91 = load ptr, ptr %81, align 8, !tbaa !239
  %92 = load ptr, ptr %91, align 8, !tbaa !56
  %93 = getelementptr inbounds ptr, ptr %92, i64 5
  %94 = load ptr, ptr %93, align 8
  %95 = call noundef ptr %94(ptr noundef nonnull align 8 dereferenceable(8) %91)
  %96 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !185
  %98 = load i32, ptr %35, align 4, !tbaa !152
  %99 = add i32 %98, -1
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %97, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !118
  %103 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %102, i64 0, i32 11
  %104 = load i32, ptr %103, align 4, !tbaa !240
  br label %106

105:                                              ; preds = %77
  br label %106

106:                                              ; preds = %90, %105, %77, %33
  %107 = phi i8 [ 0, %33 ], [ 0, %90 ], [ 1, %105 ], [ 0, %77 ]
  %108 = phi i32 [ -2, %33 ], [ %104, %90 ], [ -2, %105 ], [ -2, %77 ]
  %109 = phi ptr [ null, %33 ], [ %91, %90 ], [ null, %105 ], [ null, %77 ]
  %110 = phi ptr [ null, %33 ], [ %95, %90 ], [ null, %105 ], [ null, %77 ]
  %111 = call noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEv(ptr noundef nonnull align 8 dereferenceable(104) %34)
  %112 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %113 = load i8, ptr %112, align 8, !tbaa !146, !range !147, !noundef !148
  %114 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !185
  %116 = load i32, ptr %35, align 4, !tbaa !152
  %117 = add i32 %116, -1
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds ptr, ptr %115, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !118
  %121 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %120, i64 0, i32 8
  store i8 %113, ptr %121, align 8, !tbaa !224
  %122 = load i32, ptr %7, align 4, !tbaa !158
  %123 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %120, i64 0, i32 16
  store i32 %122, ptr %123, align 4, !tbaa !218
  br i1 %37, label %124, label %138

124:                                              ; preds = %106
  %125 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %126 = load ptr, ptr %125, align 8, !tbaa !241
  %127 = icmp eq ptr %126, null
  %128 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %129 = load ptr, ptr %128, align 8
  %130 = icmp eq ptr %129, null
  %131 = select i1 %127, i1 %130, i1 false
  br i1 %131, label %138, label %132

132:                                              ; preds = %124
  br i1 %127, label %134, label %133

133:                                              ; preds = %132
  call void @_ZN11xercesc_2_712SGXMLScanner19parseSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull %126)
  br label %134

134:                                              ; preds = %133, %132
  %135 = load ptr, ptr %128, align 8, !tbaa !242
  %136 = icmp eq ptr %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %134
  call void @_ZN11xercesc_2_712SGXMLScanner20resolveSchemaGrammarEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull %135, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
  br label %138

138:                                              ; preds = %124, %134, %137, %106
  %139 = icmp eq i32 %45, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %138
  call void @_ZN11xercesc_2_712SGXMLScanner28scanRawAttrListforNameSpacesEi(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 noundef %45)
  br label %141

141:                                              ; preds = %140, %138
  %142 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %143 = load i32, ptr %7, align 4, !tbaa !158
  %144 = call noundef i32 @_ZN11xercesc_2_712SGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %39, ptr noundef nonnull align 8 dereferenceable(40) %142, i16 noundef signext 1, i32 noundef %143)
  %145 = load i8, ptr %112, align 8, !tbaa !146, !range !147, !noundef !148
  %146 = icmp eq i8 %145, 0
  %147 = icmp eq ptr %110, null
  br i1 %147, label %166, label %148

148:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #18
  %149 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %150 = load ptr, ptr %149, align 8, !tbaa !87
  %151 = load i32, ptr %142, align 8, !tbaa !82
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i16, ptr %150, i64 %152
  store i16 0, ptr %153, align 2, !tbaa !88
  %154 = load i32, ptr %7, align 4, !tbaa !158
  %155 = sext i32 %154 to i64
  %156 = getelementptr i16, ptr %39, i64 %155
  %157 = getelementptr i16, ptr %156, i64 1
  %158 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %159 = load ptr, ptr %158, align 8, !tbaa !91
  call void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef %150, ptr noundef %157, i32 noundef %144, ptr noundef %159)
  %160 = add i32 %111, -1
  %161 = invoke noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner20laxElementValidationEPNS_5QNameEPNS_25ContentLeafNameTypeVectorEPKNS_15XMLContentModelEj(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull %9, ptr noundef nonnull %110, ptr noundef %109, i32 noundef %160)
          to label %162 unwind label %164

162:                                              ; preds = %148
  %163 = zext i1 %161 to i8
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %9) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #18
  br label %166

164:                                              ; preds = %148
  %165 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %9) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #18
  br label %1074

166:                                              ; preds = %162, %141
  %167 = phi i8 [ %163, %162 ], [ %107, %141 ]
  %168 = load i32, ptr %7, align 4, !tbaa !158
  %169 = sext i32 %168 to i64
  %170 = getelementptr i16, ptr %39, i64 %169
  %171 = getelementptr i16, ptr %170, i64 1
  %172 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %173 = load ptr, ptr %172, align 8, !tbaa !223
  %174 = load ptr, ptr %173, align 8, !tbaa !56
  %175 = getelementptr inbounds ptr, ptr %174, i64 6
  %176 = load ptr, ptr %175, align 8
  %177 = call noundef ptr %176(ptr noundef nonnull align 8 dereferenceable(8) %173)
  %178 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %179 = load i32, ptr %178, align 4, !tbaa !243
  %180 = icmp eq i32 %144, %179
  %181 = load ptr, ptr %172, align 8, !tbaa !223
  %182 = load ptr, ptr %181, align 8, !tbaa !56
  %183 = getelementptr inbounds ptr, ptr %182, i64 11
  %184 = load ptr, ptr %183, align 8
  %185 = call noundef ptr %184(ptr noundef nonnull align 8 dereferenceable(8) %181, i32 noundef %144, ptr noundef %171, ptr noundef %39, i32 noundef %108)
  %186 = icmp eq ptr %185, null
  br i1 %180, label %292, label %187

187:                                              ; preds = %166
  br i1 %186, label %188, label %197

188:                                              ; preds = %187
  %189 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 13
  %190 = load ptr, ptr %189, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %191 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %190, ptr noundef %171, i32 noundef %144, i32 noundef %108, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %192 = icmp eq ptr %191, null
  br i1 %192, label %195, label %193

193:                                              ; preds = %188
  %194 = load ptr, ptr %191, align 8, !tbaa !244
  br label %195

195:                                              ; preds = %188, %193
  %196 = phi ptr [ %194, %193 ], [ null, %188 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  br label %197

197:                                              ; preds = %195, %187
  %198 = phi ptr [ %185, %187 ], [ %196, %195 ]
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %227

200:                                              ; preds = %197
  %201 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %202 = load ptr, ptr %201, align 8, !tbaa !236
  %203 = load ptr, ptr %202, align 8, !tbaa !56
  %204 = getelementptr inbounds ptr, ptr %203, i64 9
  %205 = load ptr, ptr %204, align 8
  %206 = call noundef i32 %205(ptr noundef nonnull align 8 dereferenceable(40) %202, ptr noundef %177)
  %207 = icmp eq i32 %206, %144
  br i1 %207, label %227, label %208

208:                                              ; preds = %200
  %209 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %144)
  %210 = call noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %209)
  %211 = load i8, ptr %112, align 8, !range !147
  %212 = icmp ne i8 %211, 0
  %213 = xor i1 %210, true
  %214 = select i1 %213, i1 %212, i1 false
  %215 = and i8 %167, 1
  %216 = icmp eq i8 %215, 0
  %217 = and i1 %216, %214
  br i1 %217, label %218, label %221

218:                                              ; preds = %208
  %219 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %220 = load ptr, ptr %219, align 8, !tbaa !139
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %220, i32 noundef 72, ptr noundef %209, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %221

221:                                              ; preds = %218, %208
  %222 = load ptr, ptr %172, align 8, !tbaa !223
  %223 = load ptr, ptr %222, align 8, !tbaa !56
  %224 = getelementptr inbounds ptr, ptr %223, i64 11
  %225 = load ptr, ptr %224, align 8
  %226 = call noundef ptr %225(ptr noundef nonnull align 8 dereferenceable(8) %222, i32 noundef %144, ptr noundef %171, ptr noundef %39, i32 noundef %108)
  br label %227

227:                                              ; preds = %221, %200, %197
  %228 = phi i32 [ %144, %197 ], [ %206, %221 ], [ %206, %200 ]
  %229 = phi ptr [ %198, %197 ], [ %226, %221 ], [ null, %200 ]
  %230 = icmp eq ptr %229, null
  %231 = icmp ne i32 %108, -2
  %232 = and i1 %231, %230
  br i1 %232, label %233, label %273

233:                                              ; preds = %227
  %234 = load ptr, ptr %172, align 8, !tbaa !223
  %235 = load ptr, ptr %234, align 8, !tbaa !56
  %236 = getelementptr inbounds ptr, ptr %235, i64 11
  %237 = load ptr, ptr %236, align 8
  %238 = call noundef ptr %237(ptr noundef nonnull align 8 dereferenceable(8) %234, i32 noundef %144, ptr noundef %171, ptr noundef %39, i32 noundef -2)
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %249

240:                                              ; preds = %233
  %241 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 13
  %242 = load ptr, ptr %241, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %243 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %242, ptr noundef %171, i32 noundef %144, i32 noundef -2, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %244 = icmp eq ptr %243, null
  br i1 %244, label %247, label %245

245:                                              ; preds = %240
  %246 = load ptr, ptr %243, align 8, !tbaa !244
  br label %247

247:                                              ; preds = %240, %245
  %248 = phi ptr [ %246, %245 ], [ null, %240 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  br label %249

249:                                              ; preds = %247, %233
  %250 = phi ptr [ %238, %233 ], [ %248, %247 ]
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %273

252:                                              ; preds = %249
  %253 = load ptr, ptr %172, align 8, !tbaa !223
  %254 = load i32, ptr %178, align 4, !tbaa !243
  %255 = load ptr, ptr %253, align 8, !tbaa !56
  %256 = getelementptr inbounds ptr, ptr %255, i64 11
  %257 = load ptr, ptr %256, align 8
  %258 = call noundef ptr %257(ptr noundef nonnull align 8 dereferenceable(8) %253, i32 noundef %254, ptr noundef %171, ptr noundef %39, i32 noundef %108)
  %259 = icmp eq ptr %258, null
  br i1 %259, label %273, label %260

260:                                              ; preds = %252
  %261 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %258, i64 0, i32 3
  %262 = load i32, ptr %261, align 8, !tbaa !189
  %263 = icmp eq i32 %262, 5
  %264 = load i8, ptr %112, align 8, !range !147
  %265 = icmp eq i8 %264, 0
  %266 = select i1 %263, i1 true, i1 %265
  br i1 %266, label %273, label %267

267:                                              ; preds = %260
  %268 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %269 = load ptr, ptr %268, align 8, !tbaa !139
  %270 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %258, i64 0, i32 2
  %271 = load ptr, ptr %270, align 8, !tbaa !155
  %272 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %271)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %269, i32 noundef 80, ptr noundef %272, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %273

273:                                              ; preds = %260, %267, %252, %249, %227
  %274 = phi ptr [ %250, %249 ], [ %229, %227 ], [ %258, %252 ], [ %258, %267 ], [ %258, %260 ]
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %423

276:                                              ; preds = %273
  %277 = icmp eq i32 %228, %144
  br i1 %277, label %280, label %278

278:                                              ; preds = %276
  %279 = call noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %177)
  br label %280

280:                                              ; preds = %278, %276
  %281 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %282 = load ptr, ptr %281, align 8, !tbaa !91
  %283 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 152, ptr noundef %282)
  %284 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %285 = load ptr, ptr %284, align 8, !tbaa !87
  %286 = load i32, ptr %142, align 8, !tbaa !82
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds i16, ptr %285, i64 %287
  store i16 0, ptr %288, align 2, !tbaa !88
  %289 = load ptr, ptr %281, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %283, ptr noundef %285, ptr noundef %171, i32 noundef %144, i32 noundef 1, i32 noundef -2, ptr noundef %289)
          to label %413 unwind label %290

290:                                              ; preds = %280
  %291 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %283, ptr noundef %282) #18
  br label %1074

292:                                              ; preds = %166
  br i1 %186, label %293, label %302

293:                                              ; preds = %292
  %294 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 13
  %295 = load ptr, ptr %294, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %296 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %295, ptr noundef %171, i32 noundef %144, i32 noundef %108, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %297 = icmp eq ptr %296, null
  br i1 %297, label %300, label %298

298:                                              ; preds = %293
  %299 = load ptr, ptr %296, align 8, !tbaa !244
  br label %300

300:                                              ; preds = %293, %298
  %301 = phi ptr [ %299, %298 ], [ null, %293 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  br label %302

302:                                              ; preds = %300, %292
  %303 = phi ptr [ %185, %292 ], [ %301, %300 ]
  %304 = load i32, ptr %178, align 4, !tbaa !243
  %305 = icmp eq ptr %303, null
  br i1 %305, label %306, label %333

306:                                              ; preds = %302
  %307 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %308 = load ptr, ptr %307, align 8, !tbaa !236
  %309 = load ptr, ptr %308, align 8, !tbaa !56
  %310 = getelementptr inbounds ptr, ptr %309, i64 9
  %311 = load ptr, ptr %310, align 8
  %312 = call noundef i32 %311(ptr noundef nonnull align 8 dereferenceable(40) %308, ptr noundef %177)
  %313 = load i32, ptr %178, align 4, !tbaa !243
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %333, label %315

315:                                              ; preds = %306
  %316 = call noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
  %317 = load i8, ptr %112, align 8, !range !147
  %318 = icmp ne i8 %317, 0
  %319 = xor i1 %316, true
  %320 = select i1 %319, i1 %318, i1 false
  %321 = and i8 %167, 1
  %322 = icmp eq i8 %321, 0
  %323 = and i1 %322, %320
  br i1 %323, label %324, label %327

324:                                              ; preds = %315
  %325 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %326 = load ptr, ptr %325, align 8, !tbaa !139
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %326, i32 noundef 72, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %327

327:                                              ; preds = %324, %315
  %328 = load ptr, ptr %172, align 8, !tbaa !223
  %329 = load ptr, ptr %328, align 8, !tbaa !56
  %330 = getelementptr inbounds ptr, ptr %329, i64 11
  %331 = load ptr, ptr %330, align 8
  %332 = call noundef ptr %331(ptr noundef nonnull align 8 dereferenceable(8) %328, i32 noundef %144, ptr noundef %171, ptr noundef %39, i32 noundef %108)
  br label %333

333:                                              ; preds = %327, %306, %302
  %334 = phi ptr [ %303, %302 ], [ %332, %327 ], [ null, %306 ]
  %335 = phi i32 [ %304, %302 ], [ %312, %327 ], [ %312, %306 ]
  %336 = icmp eq ptr %334, null
  %337 = icmp ne i32 %108, -2
  %338 = and i1 %337, %336
  br i1 %338, label %339, label %393

339:                                              ; preds = %333
  %340 = load ptr, ptr %172, align 8, !tbaa !223
  %341 = load ptr, ptr %340, align 8, !tbaa !56
  %342 = getelementptr inbounds ptr, ptr %341, i64 11
  %343 = load ptr, ptr %342, align 8
  %344 = call noundef ptr %343(ptr noundef nonnull align 8 dereferenceable(8) %340, i32 noundef %144, ptr noundef %171, ptr noundef %39, i32 noundef -2)
  %345 = icmp eq ptr %344, null
  br i1 %345, label %346, label %355

346:                                              ; preds = %339
  %347 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 13
  %348 = load ptr, ptr %347, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %349 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %348, ptr noundef %171, i32 noundef %144, i32 noundef -2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %350 = icmp eq ptr %349, null
  br i1 %350, label %353, label %351

351:                                              ; preds = %346
  %352 = load ptr, ptr %349, align 8, !tbaa !244
  br label %353

353:                                              ; preds = %346, %351
  %354 = phi ptr [ %352, %351 ], [ null, %346 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  br label %355

355:                                              ; preds = %353, %339
  %356 = phi ptr [ %344, %339 ], [ %354, %353 ]
  %357 = icmp eq ptr %356, null
  br i1 %357, label %358, label %393

358:                                              ; preds = %355
  %359 = load i32, ptr %178, align 4, !tbaa !243
  %360 = icmp eq i32 %335, %359
  br i1 %360, label %393, label %361

361:                                              ; preds = %358
  %362 = call noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %177)
  %363 = load i8, ptr %112, align 8, !range !147
  %364 = icmp ne i8 %363, 0
  %365 = xor i1 %362, true
  %366 = select i1 %365, i1 %364, i1 false
  %367 = and i8 %167, 1
  %368 = icmp eq i8 %367, 0
  %369 = and i1 %368, %366
  br i1 %369, label %370, label %373

370:                                              ; preds = %361
  %371 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %372 = load ptr, ptr %371, align 8, !tbaa !139
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %372, i32 noundef 72, ptr noundef %177, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %373

373:                                              ; preds = %370, %361
  %374 = load ptr, ptr %172, align 8, !tbaa !223
  %375 = load ptr, ptr %374, align 8, !tbaa !56
  %376 = getelementptr inbounds ptr, ptr %375, i64 11
  %377 = load ptr, ptr %376, align 8
  %378 = call noundef ptr %377(ptr noundef nonnull align 8 dereferenceable(8) %374, i32 noundef %335, ptr noundef %171, ptr noundef %39, i32 noundef %108)
  %379 = icmp eq ptr %378, null
  br i1 %379, label %393, label %380

380:                                              ; preds = %373
  %381 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %378, i64 0, i32 3
  %382 = load i32, ptr %381, align 8, !tbaa !189
  %383 = icmp eq i32 %382, 5
  %384 = load i8, ptr %112, align 8, !range !147
  %385 = icmp eq i8 %384, 0
  %386 = select i1 %383, i1 true, i1 %385
  br i1 %386, label %393, label %387

387:                                              ; preds = %380
  %388 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %389 = load ptr, ptr %388, align 8, !tbaa !139
  %390 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %378, i64 0, i32 2
  %391 = load ptr, ptr %390, align 8, !tbaa !155
  %392 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %391)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %389, i32 noundef 79, ptr noundef %392, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %393

393:                                              ; preds = %373, %380, %387, %355, %358, %333
  %394 = phi ptr [ %356, %355 ], [ null, %358 ], [ %334, %333 ], [ %378, %387 ], [ %378, %380 ], [ %378, %373 ]
  %395 = icmp eq ptr %394, null
  br i1 %395, label %396, label %423

396:                                              ; preds = %393
  %397 = load i32, ptr %178, align 4, !tbaa !243
  %398 = icmp eq i32 %335, %397
  br i1 %398, label %401, label %399

399:                                              ; preds = %396
  %400 = call noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %177)
  br label %401

401:                                              ; preds = %399, %396
  %402 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %403 = load ptr, ptr %402, align 8, !tbaa !91
  %404 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 152, ptr noundef %403)
  %405 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %406 = load ptr, ptr %405, align 8, !tbaa !87
  %407 = load i32, ptr %142, align 8, !tbaa !82
  %408 = zext i32 %407 to i64
  %409 = getelementptr inbounds i16, ptr %406, i64 %408
  store i16 0, ptr %409, align 2, !tbaa !88
  %410 = load ptr, ptr %402, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %404, ptr noundef %406, ptr noundef %171, i32 noundef %144, i32 noundef 1, i32 noundef -2, ptr noundef %410)
          to label %413 unwind label %411

411:                                              ; preds = %401
  %412 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %404, ptr noundef %403) #18
  br label %1074

413:                                              ; preds = %401, %280
  %414 = phi ptr [ %283, %280 ], [ %404, %401 ]
  %415 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 13
  %416 = load ptr, ptr %415, align 8, !tbaa !98
  %417 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %414, i64 0, i32 2
  %418 = load ptr, ptr %417, align 8, !tbaa !155
  %419 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %418, i64 0, i32 6
  %420 = load ptr, ptr %419, align 8, !tbaa !235
  %421 = call noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %416, ptr noundef %420, i32 noundef %144, i32 noundef %108, ptr noundef nonnull %414)
  %422 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %414, i64 0, i32 4
  store i32 %421, ptr %422, align 4, !tbaa !246
  br label %423

423:                                              ; preds = %413, %393, %273
  %424 = phi i1 [ %275, %273 ], [ %395, %393 ], [ true, %413 ]
  %425 = phi ptr [ %274, %273 ], [ %394, %393 ], [ %414, %413 ]
  %426 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21
  %427 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 1
  store i8 0, ptr %427, align 1, !tbaa !187
  br i1 %424, label %428, label %449

428:                                              ; preds = %423
  %429 = and i8 %167, 1
  %430 = icmp eq i8 %429, 0
  br i1 %430, label %439, label %431

431:                                              ; preds = %428
  store i8 0, ptr %112, align 8, !tbaa !146
  %432 = load ptr, ptr %114, align 8, !tbaa !185
  %433 = load i32, ptr %35, align 4, !tbaa !152
  %434 = add i32 %433, -1
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds ptr, ptr %432, i64 %435
  %437 = load ptr, ptr %436, align 8, !tbaa !118
  %438 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %437, i64 0, i32 8
  store i8 0, ptr %438, align 8, !tbaa !224
  br label %439

439:                                              ; preds = %431, %428
  %440 = load i8, ptr %112, align 8, !tbaa !146, !range !147, !noundef !148
  %441 = icmp eq i8 %440, 0
  br i1 %441, label %473, label %442

442:                                              ; preds = %439
  %443 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %425, i64 0, i32 3
  store i32 5, ptr %443, align 8, !tbaa !189
  %444 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %445 = load ptr, ptr %444, align 8, !tbaa !139
  %446 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %425, i64 0, i32 2
  %447 = load ptr, ptr %446, align 8, !tbaa !155
  %448 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %447)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %445, i32 noundef 2, ptr noundef %448, ptr noundef null, ptr noundef null, ptr noundef null)
  store i8 1, ptr %427, align 1, !tbaa !187
  br label %473

449:                                              ; preds = %423
  %450 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %425, i64 0, i32 3
  %451 = load i32, ptr %450, align 8, !tbaa !189
  switch i32 %451, label %453 [
    i32 1, label %473
    i32 0, label %452
  ]

452:                                              ; preds = %449
  store i8 1, ptr %427, align 1, !tbaa !187
  br label %453

453:                                              ; preds = %449, %452
  %454 = and i8 %167, 1
  %455 = icmp eq i8 %454, 0
  br i1 %455, label %464, label %456

456:                                              ; preds = %453
  store i8 0, ptr %112, align 8, !tbaa !146
  %457 = load ptr, ptr %114, align 8, !tbaa !185
  %458 = load i32, ptr %35, align 4, !tbaa !152
  %459 = add i32 %458, -1
  %460 = zext i32 %459 to i64
  %461 = getelementptr inbounds ptr, ptr %457, i64 %460
  %462 = load ptr, ptr %461, align 8, !tbaa !118
  %463 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %462, i64 0, i32 8
  store i8 0, ptr %463, align 8, !tbaa !224
  br label %464

464:                                              ; preds = %456, %453
  %465 = load i8, ptr %112, align 8, !tbaa !146, !range !147, !noundef !148
  %466 = icmp eq i8 %465, 0
  br i1 %466, label %473, label %467

467:                                              ; preds = %464
  %468 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %469 = load ptr, ptr %468, align 8, !tbaa !139
  %470 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %425, i64 0, i32 2
  %471 = load ptr, ptr %470, align 8, !tbaa !155
  %472 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %471)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %469, i32 noundef 2, ptr noundef %472, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %473

473:                                              ; preds = %464, %449, %467, %439, %442
  %474 = load ptr, ptr %19, align 8, !tbaa !159
  %475 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %474, i64 0, i32 15
  %476 = load i32, ptr %475, align 8, !tbaa !160
  call void @_ZN11xercesc_2_79ElemStack10setElementEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104) %34, ptr noundef nonnull %425, i32 noundef %476)
  %477 = load ptr, ptr %114, align 8, !tbaa !185
  %478 = load i32, ptr %35, align 4, !tbaa !152
  %479 = add i32 %478, -1
  %480 = zext i32 %479 to i64
  %481 = getelementptr inbounds ptr, ptr %477, i64 %480
  %482 = load ptr, ptr %481, align 8, !tbaa !118
  %483 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %482, i64 0, i32 13
  store i32 %144, ptr %483, align 8, !tbaa !247
  br i1 %37, label %484, label %513

484:                                              ; preds = %473
  %485 = load ptr, ptr %172, align 8, !tbaa !223
  %486 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr %485, ptr %486, align 8, !tbaa !248
  %487 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %488 = load ptr, ptr %487, align 8, !tbaa !91
  %489 = icmp eq ptr %39, null
  br i1 %489, label %510, label %490

490:                                              ; preds = %484
  %491 = load i16, ptr %39, align 2, !tbaa !88
  %492 = icmp eq i16 %491, 0
  br i1 %492, label %504, label %493

493:                                              ; preds = %490, %493
  %494 = phi ptr [ %495, %493 ], [ %39, %490 ]
  %495 = getelementptr inbounds i16, ptr %494, i64 1
  %496 = load i16, ptr %495, align 2, !tbaa !88
  %497 = icmp eq i16 %496, 0
  br i1 %497, label %498, label %493, !llvm.loop !249

498:                                              ; preds = %493
  %499 = ptrtoint ptr %495 to i64
  %500 = ptrtoint ptr %39 to i64
  %501 = sub i64 %499, %500
  %502 = add i64 %501, 2
  %503 = and i64 %502, 8589934590
  br label %504

504:                                              ; preds = %498, %490
  %505 = phi i64 [ %503, %498 ], [ 2, %490 ]
  %506 = load ptr, ptr %488, align 8, !tbaa !56
  %507 = getelementptr inbounds ptr, ptr %506, i64 2
  %508 = load ptr, ptr %507, align 8
  %509 = call noundef ptr %508(ptr noundef nonnull align 8 dereferenceable(8) %488, i64 noundef %505)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %509, ptr nonnull align 2 %39, i64 %505, i1 false)
  br label %510

510:                                              ; preds = %484, %504
  %511 = phi ptr [ %509, %504 ], [ null, %484 ]
  %512 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  store ptr %511, ptr %512, align 8, !tbaa !234
  br label %513

513:                                              ; preds = %510, %473
  %514 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %515 = load ptr, ptr %514, align 8, !tbaa !199
  %516 = icmp eq ptr %515, null
  br i1 %516, label %528, label %517

517:                                              ; preds = %513
  %518 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 2
  %519 = load i32, ptr %518, align 4, !tbaa !228
  %520 = add nsw i32 %519, 1
  store i32 %520, ptr %518, align 4, !tbaa !228
  %521 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %425, i64 0, i32 3
  %522 = load i32, ptr %521, align 8, !tbaa !189
  %523 = icmp eq i32 %522, 1
  br i1 %523, label %524, label %526

524:                                              ; preds = %517
  %525 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 4
  store i32 %520, ptr %525, align 4, !tbaa !230
  br label %528

526:                                              ; preds = %517
  %527 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 3
  store i32 %520, ptr %527, align 8, !tbaa !229
  br label %528

528:                                              ; preds = %524, %526, %513
  %529 = load i8, ptr %112, align 8, !tbaa !146, !range !147, !noundef !148
  %530 = icmp eq i8 %529, 0
  br i1 %530, label %542, label %531

531:                                              ; preds = %528
  %532 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %533 = load ptr, ptr %532, align 8, !tbaa !139
  %534 = load ptr, ptr %533, align 8, !tbaa !56
  %535 = getelementptr inbounds ptr, ptr %534, i64 9
  %536 = load ptr, ptr %535, align 8
  call void %536(ptr noundef nonnull align 8 dereferenceable(40) %533, ptr noundef nonnull %425)
  %537 = load ptr, ptr %532, align 8, !tbaa !139
  %538 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %537, i64 0, i32 16
  %539 = load i8, ptr %538, align 8, !tbaa !204, !range !147, !noundef !148
  %540 = icmp eq i8 %539, 0
  br i1 %540, label %542, label %541

541:                                              ; preds = %531
  store i8 1, ptr %427, align 1, !tbaa !187
  br label %542

542:                                              ; preds = %531, %541, %528
  %543 = load ptr, ptr %17, align 8, !tbaa !87
  %544 = load i32, ptr %16, align 8, !tbaa !82
  %545 = zext i32 %544 to i64
  %546 = getelementptr inbounds i16, ptr %543, i64 %545
  store i16 0, ptr %546, align 2, !tbaa !88
  %547 = icmp eq ptr %543, null
  br i1 %547, label %562, label %548

548:                                              ; preds = %542
  %549 = load i16, ptr %543, align 2, !tbaa !88
  %550 = icmp eq i16 %549, 0
  br i1 %550, label %562, label %551

551:                                              ; preds = %548, %551
  %552 = phi ptr [ %553, %551 ], [ %543, %548 ]
  %553 = getelementptr inbounds i16, ptr %552, i64 1
  %554 = load i16, ptr %553, align 2, !tbaa !88
  %555 = icmp eq i16 %554, 0
  br i1 %555, label %556, label %551, !llvm.loop !249

556:                                              ; preds = %551
  %557 = ptrtoint ptr %553 to i64
  %558 = ptrtoint ptr %543 to i64
  %559 = sub i64 %557, %558
  %560 = lshr exact i64 %559, 1
  %561 = trunc i64 %560 to i32
  br label %562

562:                                              ; preds = %556, %548, %542
  %563 = phi i32 [ %561, %556 ], [ 0, %548 ], [ 0, %542 ]
  %564 = load i32, ptr %35, align 4, !tbaa !152
  %565 = add i32 %564, -1
  %566 = load ptr, ptr %114, align 8, !tbaa !185
  %567 = zext i32 %565 to i64
  %568 = getelementptr inbounds ptr, ptr %566, i64 %567
  %569 = load ptr, ptr %568, align 8, !tbaa !118
  %570 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %569, i64 0, i32 15
  %571 = load i32, ptr %570, align 8, !tbaa !250
  %572 = icmp ugt i32 %571, %563
  br i1 %572, label %593, label %573

573:                                              ; preds = %562
  %574 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %569, i64 0, i32 14
  %575 = load ptr, ptr %574, align 8, !tbaa !186
  %576 = shl i32 %563, 1
  store i32 %576, ptr %570, align 8, !tbaa !250
  %577 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 12
  %578 = load ptr, ptr %577, align 8, !tbaa !251
  %579 = zext i32 %576 to i64
  %580 = shl nuw nsw i64 %579, 1
  %581 = load ptr, ptr %578, align 8, !tbaa !56
  %582 = getelementptr inbounds ptr, ptr %581, i64 2
  %583 = load ptr, ptr %582, align 8
  %584 = call noundef ptr %583(ptr noundef nonnull align 8 dereferenceable(8) %578, i64 noundef %580)
  %585 = load ptr, ptr %114, align 8, !tbaa !185
  %586 = getelementptr inbounds ptr, ptr %585, i64 %567
  %587 = load ptr, ptr %586, align 8, !tbaa !118
  %588 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %587, i64 0, i32 14
  store ptr %584, ptr %588, align 8, !tbaa !186
  %589 = load ptr, ptr %577, align 8, !tbaa !251
  %590 = load ptr, ptr %589, align 8, !tbaa !56
  %591 = getelementptr inbounds ptr, ptr %590, i64 3
  %592 = load ptr, ptr %591, align 8
  call void %592(ptr noundef nonnull align 8 dereferenceable(8) %589, ptr noundef %575)
  br label %593

593:                                              ; preds = %562, %573
  %594 = load ptr, ptr %114, align 8, !tbaa !185
  %595 = getelementptr inbounds ptr, ptr %594, i64 %567
  %596 = load ptr, ptr %595, align 8, !tbaa !118
  %597 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %596, i64 0, i32 14
  %598 = load ptr, ptr %597, align 8, !tbaa !186
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %598, ptr noundef %543)
  %599 = load i8, ptr %112, align 8, !tbaa !146, !range !147, !noundef !148
  %600 = icmp eq i8 %599, 0
  br i1 %600, label %612, label %601

601:                                              ; preds = %593
  %602 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %603 = load ptr, ptr %602, align 8, !tbaa !139
  %604 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %603, i64 0, i32 14
  %605 = load ptr, ptr %604, align 8, !tbaa !190
  %606 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.8", ptr %605, i64 0, i32 1, i32 1
  %607 = load i32, ptr %606, align 4, !tbaa !194
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %615, label %609

609:                                              ; preds = %601
  %610 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %605)
  %611 = load ptr, ptr %610, align 8, !tbaa !118
  br label %615

612:                                              ; preds = %593
  %613 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %425, i64 0, i32 12
  %614 = load ptr, ptr %613, align 8, !tbaa !238
  br label %615

615:                                              ; preds = %609, %601, %612
  %616 = phi ptr [ %614, %612 ], [ %611, %609 ], [ null, %601 ]
  %617 = icmp eq ptr %616, null
  br i1 %617, label %703, label %618

618:                                              ; preds = %615
  %619 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %616, i64 0, i32 9
  %620 = load i32, ptr %619, align 4, !tbaa !252
  %621 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %616, i64 0, i32 14
  %622 = load ptr, ptr %621, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #18
  store i32 35, ptr %10, align 4
  br label %623

623:                                              ; preds = %623, %618
  %624 = phi ptr [ %10, %618 ], [ %625, %623 ]
  %625 = getelementptr inbounds i16, ptr %624, i64 1
  %626 = load i16, ptr %625, align 2, !tbaa !88
  %627 = icmp eq i16 %626, 0
  br i1 %627, label %628, label %623, !llvm.loop !249

628:                                              ; preds = %623
  %629 = ptrtoint ptr %625 to i64
  %630 = ptrtoint ptr %10 to i64
  %631 = sub i64 %629, %630
  %632 = lshr exact i64 %631, 1
  %633 = trunc i64 %632 to i32
  %634 = call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef %622, ptr noundef nonnull %10, i32 noundef %633)
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %702, label %636

636:                                              ; preds = %628
  %637 = call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %622, i16 noundef zeroext 44)
  %638 = icmp sgt i32 %637, 0
  br i1 %638, label %639, label %702

639:                                              ; preds = %636
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #18
  %640 = add nuw nsw i32 %637, 1
  %641 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %642 = load ptr, ptr %641, align 8, !tbaa !91
  store i32 0, ptr %11, align 8, !tbaa !82
  %643 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %11, i64 0, i32 1
  store i32 %640, ptr %643, align 4, !tbaa !83
  %644 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %11, i64 0, i32 2
  store i32 0, ptr %644, align 8, !tbaa !84
  %645 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %11, i64 0, i32 3
  store i8 0, ptr %645, align 4, !tbaa !85
  %646 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %11, i64 0, i32 4
  store ptr %642, ptr %646, align 8, !tbaa !86
  %647 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %11, i64 0, i32 5
  %648 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %11, i64 0, i32 6
  %649 = add nuw i32 %637, 2
  %650 = zext i32 %649 to i64
  %651 = shl nuw nsw i64 %650, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %647, i8 0, i64 16, i1 false)
  %652 = load ptr, ptr %642, align 8, !tbaa !56
  %653 = getelementptr inbounds ptr, ptr %652, i64 2
  %654 = load ptr, ptr %653, align 8
  %655 = call noundef ptr %654(ptr noundef nonnull align 8 dereferenceable(8) %642, i64 noundef %651)
  store ptr %655, ptr %648, align 8, !tbaa !87
  store i16 0, ptr %655, align 2, !tbaa !88
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef %622, i32 noundef %637)
          to label %656 unwind label %677

656:                                              ; preds = %639
  %657 = load ptr, ptr %648, align 8, !tbaa !87
  %658 = load i32, ptr %11, align 8, !tbaa !82
  %659 = zext i32 %658 to i64
  %660 = getelementptr inbounds i16, ptr %657, i64 %659
  store i16 0, ptr %660, align 2, !tbaa !88
  %661 = invoke noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %657)
          to label %662 unwind label %679

662:                                              ; preds = %656
  %663 = load i8, ptr %112, align 8, !range !147
  %664 = icmp ne i8 %663, 0
  %665 = xor i1 %661, true
  %666 = select i1 %665, i1 %664, i1 false
  %667 = and i8 %167, 1
  %668 = icmp eq i8 %667, 0
  %669 = and i1 %668, %666
  br i1 %669, label %670, label %681

670:                                              ; preds = %662
  %671 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %672 = load ptr, ptr %671, align 8, !tbaa !139
  %673 = load ptr, ptr %648, align 8, !tbaa !87
  %674 = load i32, ptr %11, align 8, !tbaa !82
  %675 = zext i32 %674 to i64
  %676 = getelementptr inbounds i16, ptr %673, i64 %675
  store i16 0, ptr %676, align 2, !tbaa !88
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %672, i32 noundef 72, ptr noundef %673, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %681 unwind label %679

677:                                              ; preds = %639
  %678 = landingpad { ptr, i32 }
          cleanup
  br label %691

679:                                              ; preds = %670, %656
  %680 = landingpad { ptr, i32 }
          cleanup
  br label %691

681:                                              ; preds = %670, %662
  %682 = load ptr, ptr %646, align 8, !tbaa !86
  %683 = load ptr, ptr %648, align 8, !tbaa !87
  %684 = load ptr, ptr %682, align 8, !tbaa !56
  %685 = getelementptr inbounds ptr, ptr %684, i64 3
  %686 = load ptr, ptr %685, align 8
  invoke void %686(ptr noundef nonnull align 8 dereferenceable(8) %682, ptr noundef %683)
          to label %690 unwind label %687

687:                                              ; preds = %681
  %688 = landingpad { ptr, i32 }
          catch ptr null
  %689 = extractvalue { ptr, i32 } %688, 0
  call void @__clang_call_terminate(ptr %689) #19
  unreachable

690:                                              ; preds = %681
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #18
  br label %702

691:                                              ; preds = %679, %677
  %692 = phi { ptr, i32 } [ %680, %679 ], [ %678, %677 ]
  %693 = load ptr, ptr %646, align 8, !tbaa !86
  %694 = load ptr, ptr %648, align 8, !tbaa !87
  %695 = load ptr, ptr %693, align 8, !tbaa !56
  %696 = getelementptr inbounds ptr, ptr %695, i64 3
  %697 = load ptr, ptr %696, align 8
  invoke void %697(ptr noundef nonnull align 8 dereferenceable(8) %693, ptr noundef %694)
          to label %701 unwind label %698

698:                                              ; preds = %691
  %699 = landingpad { ptr, i32 }
          catch ptr null
  %700 = extractvalue { ptr, i32 } %699, 0
  call void @__clang_call_terminate(ptr %700) #19
  unreachable

701:                                              ; preds = %691
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #18
  br label %1074

702:                                              ; preds = %636, %690, %628
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #18
  br label %703

703:                                              ; preds = %702, %615
  %704 = phi i32 [ %620, %702 ], [ %108, %615 ]
  %705 = load ptr, ptr %114, align 8, !tbaa !185
  %706 = load i32, ptr %35, align 4, !tbaa !152
  %707 = add i32 %706, -1
  %708 = zext i32 %707 to i64
  %709 = getelementptr inbounds ptr, ptr %705, i64 %708
  %710 = load ptr, ptr %709, align 8, !tbaa !118
  %711 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %710, i64 0, i32 11
  store i32 %704, ptr %711, align 4, !tbaa !240
  %712 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 3
  %713 = load i32, ptr %712, align 8, !tbaa !80
  %714 = icmp ult i32 %111, %713
  br i1 %714, label %716, label %715

715:                                              ; preds = %703
  call void @_ZN11xercesc_2_712SGXMLScanner15resizeElemStateEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  br label %716

716:                                              ; preds = %715, %703
  %717 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 4
  %718 = load ptr, ptr %717, align 8, !tbaa !81
  %719 = zext i32 %111 to i64
  %720 = getelementptr inbounds i32, ptr %718, i64 %719
  store i32 0, ptr %720, align 4, !tbaa !158
  %721 = load ptr, ptr %172, align 8, !tbaa !223
  %722 = load ptr, ptr %114, align 8, !tbaa !185
  %723 = load i32, ptr %35, align 4, !tbaa !152
  %724 = add i32 %723, -1
  %725 = zext i32 %724 to i64
  %726 = getelementptr inbounds ptr, ptr %722, i64 %725
  %727 = load ptr, ptr %726, align 8, !tbaa !118
  %728 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %727, i64 0, i32 12
  store ptr %721, ptr %728, align 8, !tbaa !222
  %729 = or i1 %37, %146
  br i1 %729, label %734, label %730

730:                                              ; preds = %716
  %731 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %425, i64 0, i32 2
  %732 = load ptr, ptr %731, align 8, !tbaa !155
  %733 = call noundef i32 @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb(ptr noundef nonnull align 8 dereferenceable(104) %34, ptr noundef %732, i1 noundef zeroext true)
  br label %734

734:                                              ; preds = %716, %730
  %735 = load ptr, ptr %514, align 8, !tbaa !199
  %736 = icmp eq ptr %735, null
  br i1 %736, label %741, label %737

737:                                              ; preds = %734
  %738 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 17
  %739 = load ptr, ptr %738, align 8, !tbaa !101
  %740 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %739, i64 0, i32 4
  store i32 0, ptr %740, align 8, !tbaa !254
  br label %741

741:                                              ; preds = %737, %734
  %742 = load ptr, ptr %43, align 8, !tbaa !94
  %743 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %744 = load ptr, ptr %743, align 8, !tbaa !255
  %745 = call noundef i32 @_ZN11xercesc_2_712SGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(40) %742, i32 noundef %45, ptr noundef nonnull %425, ptr noundef nonnull align 8 dereferenceable(40) %744)
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %750, label %747

747:                                              ; preds = %741
  %748 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 16
  %749 = load ptr, ptr %748, align 8, !tbaa !100
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %749)
  br label %750

750:                                              ; preds = %747, %741
  %751 = load i8, ptr %112, align 8, !tbaa !146, !range !147, !noundef !148
  %752 = icmp ne i8 %751, 0
  %753 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  %754 = load i8, ptr %753, align 4, !range !147
  %755 = icmp ne i8 %754, 0
  %756 = select i1 %752, i1 %755, i1 false
  %757 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 12
  %758 = load ptr, ptr %757, align 8
  %759 = icmp ne ptr %758, null
  %760 = select i1 %756, i1 %759, i1 false
  br i1 %760, label %761, label %768

761:                                              ; preds = %750
  %762 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %763 = load ptr, ptr %762, align 8, !tbaa !87
  %764 = load i32, ptr %142, align 8, !tbaa !82
  %765 = zext i32 %764 to i64
  %766 = getelementptr inbounds i16, ptr %763, i64 %765
  store i16 0, ptr %766, align 2, !tbaa !88
  %767 = load ptr, ptr %743, align 8, !tbaa !255
  call void @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(48) %758, ptr noundef nonnull %425, i32 noundef %111, i32 noundef %144, ptr noundef %763, ptr noundef nonnull align 8 dereferenceable(40) %767, i32 noundef %745)
  br label %768

768:                                              ; preds = %750, %761
  %769 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %770 = load ptr, ptr %769, align 8, !tbaa !141
  %771 = icmp eq ptr %770, null
  br i1 %771, label %782, label %772

772:                                              ; preds = %768
  %773 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %774 = load ptr, ptr %773, align 8, !tbaa !87
  %775 = load i32, ptr %142, align 8, !tbaa !82
  %776 = zext i32 %775 to i64
  %777 = getelementptr inbounds i16, ptr %774, i64 %776
  store i16 0, ptr %777, align 2, !tbaa !88
  %778 = load ptr, ptr %743, align 8, !tbaa !255
  %779 = load ptr, ptr %770, align 8, !tbaa !56
  %780 = getelementptr inbounds ptr, ptr %779, i64 11
  %781 = load ptr, ptr %780, align 8
  call void %781(ptr noundef nonnull align 8 dereferenceable(8) %770, ptr noundef nonnull align 8 dereferenceable(33) %425, i32 noundef %144, ptr noundef %774, ptr noundef nonnull align 8 dereferenceable(40) %778, i32 noundef %745, i1 noundef zeroext false, i1 noundef zeroext %37)
  br label %782

782:                                              ; preds = %772, %768
  %783 = load ptr, ptr %514, align 8, !tbaa !199
  %784 = icmp eq ptr %783, null
  br i1 %784, label %803, label %785

785:                                              ; preds = %782
  %786 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %425, i64 0, i32 2
  %787 = load ptr, ptr %786, align 8, !tbaa !155
  %788 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %787, i64 0, i32 6
  %789 = load ptr, ptr %788, align 8, !tbaa !235
  %790 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %791 = load ptr, ptr %790, align 8, !tbaa !236
  %792 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %787, i64 0, i32 4
  %793 = load i32, ptr %792, align 4, !tbaa !237
  %794 = load ptr, ptr %791, align 8, !tbaa !56
  %795 = getelementptr inbounds ptr, ptr %794, i64 10
  %796 = load ptr, ptr %795, align 8
  %797 = call noundef ptr %796(ptr noundef nonnull align 8 dereferenceable(40) %791, i32 noundef %793)
  %798 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 17
  %799 = load ptr, ptr %798, align 8, !tbaa !101
  %800 = load ptr, ptr %783, align 8, !tbaa !56
  %801 = getelementptr inbounds ptr, ptr %800, i64 4
  %802 = load ptr, ptr %801, align 8
  call void %802(ptr noundef nonnull align 8 dereferenceable(8) %783, ptr noundef %789, ptr noundef %797, ptr noundef %799)
  br label %803

803:                                              ; preds = %785, %782
  %804 = load i8, ptr %8, align 1, !tbaa !150, !range !147, !noundef !148
  %805 = icmp eq i8 %804, 0
  br i1 %805, label %986, label %806

806:                                              ; preds = %803
  %807 = call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %34)
  %808 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  %809 = load i32, ptr %808, align 4, !tbaa !79
  %810 = icmp eq i32 %809, 1
  br i1 %810, label %811, label %873

811:                                              ; preds = %806
  %812 = load i8, ptr %112, align 8, !tbaa !146, !range !147, !noundef !148
  %813 = icmp eq i8 %812, 0
  br i1 %813, label %871, label %814

814:                                              ; preds = %811
  %815 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %425, i64 0, i32 3
  %816 = load i32, ptr %815, align 8, !tbaa !189
  %817 = icmp eq i32 %816, 1
  br i1 %817, label %818, label %871

818:                                              ; preds = %814
  %819 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %820 = load ptr, ptr %819, align 8, !tbaa !139
  %821 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %820, i64 0, i32 14
  %822 = load ptr, ptr %821, align 8, !tbaa !190
  %823 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.8", ptr %822, i64 0, i32 1, i32 1
  %824 = load i32, ptr %823, align 4, !tbaa !194
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %829, label %826

826:                                              ; preds = %818
  %827 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %822)
  %828 = load ptr, ptr %827, align 8, !tbaa !118
  br label %829

829:                                              ; preds = %818, %826
  %830 = phi ptr [ %828, %826 ], [ null, %818 ]
  %831 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 6
  store ptr %830, ptr %831, align 8, !tbaa !196
  %832 = icmp eq ptr %830, null
  br i1 %832, label %833, label %837

833:                                              ; preds = %829
  %834 = load ptr, ptr %819, align 8, !tbaa !139
  %835 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %834, i64 0, i32 7
  %836 = load ptr, ptr %835, align 8, !tbaa !197
  br label %837

837:                                              ; preds = %829, %833
  %838 = phi ptr [ %836, %833 ], [ null, %829 ]
  %839 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 5
  store ptr %838, ptr %839, align 8, !tbaa !198
  %840 = load ptr, ptr %514, align 8, !tbaa !199
  %841 = icmp eq ptr %840, null
  br i1 %841, label %873, label %842

842:                                              ; preds = %837
  %843 = load ptr, ptr %819, align 8, !tbaa !139
  %844 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %843, i64 0, i32 9
  %845 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %843, i64 0, i32 9, i32 6
  %846 = load ptr, ptr %845, align 8, !tbaa !87
  %847 = load i32, ptr %844, align 8, !tbaa !82
  %848 = zext i32 %847 to i64
  %849 = getelementptr inbounds i16, ptr %846, i64 %848
  store i16 0, ptr %849, align 2, !tbaa !88
  %850 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 7
  store ptr %846, ptr %850, align 8, !tbaa !200
  %851 = icmp eq ptr %846, null
  br i1 %851, label %856, label %852

852:                                              ; preds = %842
  %853 = load i16, ptr %846, align 2, !tbaa !88
  %854 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !88
  %855 = icmp eq i16 %853, %854
  br i1 %855, label %859, label %873

856:                                              ; preds = %842
  %857 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !88
  %858 = icmp eq i16 %857, 0
  br i1 %858, label %870, label %873

859:                                              ; preds = %852, %864
  %860 = phi i16 [ %867, %864 ], [ %853, %852 ]
  %861 = phi ptr [ %866, %864 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %852 ]
  %862 = phi ptr [ %865, %864 ], [ %846, %852 ]
  %863 = icmp eq i16 %860, 0
  br i1 %863, label %870, label %864

864:                                              ; preds = %859
  %865 = getelementptr inbounds i16, ptr %862, i64 1
  %866 = getelementptr inbounds i16, ptr %861, i64 1
  %867 = load i16, ptr %865, align 2, !tbaa !88
  %868 = load i16, ptr %866, align 2, !tbaa !88
  %869 = icmp eq i16 %867, %868
  br i1 %869, label %859, label %873, !llvm.loop !201

870:                                              ; preds = %859, %856
  store ptr null, ptr %850, align 8, !tbaa !200
  br label %873

871:                                              ; preds = %814, %811
  %872 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %872, i8 0, i64 24, i1 false)
  br label %873

873:                                              ; preds = %864, %852, %871, %856, %870, %837, %806
  %874 = load i8, ptr %112, align 8, !tbaa !146, !range !147, !noundef !148
  %875 = icmp eq i8 %874, 0
  br i1 %875, label %940, label %876

876:                                              ; preds = %873
  %877 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %878 = load ptr, ptr %877, align 8, !tbaa !139
  %879 = load ptr, ptr %878, align 8, !tbaa !56
  %880 = getelementptr inbounds ptr, ptr %879, i64 2
  %881 = load ptr, ptr %880, align 8
  %882 = call noundef i32 %881(ptr noundef nonnull align 8 dereferenceable(40) %878, ptr noundef nonnull %425, ptr noundef null, i32 noundef 0)
  %883 = icmp sgt i32 %882, -1
  br i1 %883, label %884, label %893

884:                                              ; preds = %876
  %885 = load ptr, ptr %877, align 8, !tbaa !139
  %886 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %425, i64 0, i32 2
  %887 = load ptr, ptr %886, align 8, !tbaa !155
  %888 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %887)
  %889 = load ptr, ptr %425, align 8, !tbaa !56
  %890 = getelementptr inbounds ptr, ptr %889, i64 15
  %891 = load ptr, ptr %890, align 8
  %892 = call noundef ptr %891(ptr noundef nonnull align 8 dereferenceable(33) %425)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %885, i32 noundef 7, ptr noundef %888, ptr noundef %892, ptr noundef null, ptr noundef null)
  br label %893

893:                                              ; preds = %884, %876
  %894 = load ptr, ptr %877, align 8, !tbaa !139
  %895 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %894, i64 0, i32 16
  %896 = load i8, ptr %895, align 8, !tbaa !204, !range !147, !noundef !148
  %897 = icmp eq i8 %896, 0
  br i1 %897, label %899, label %898

898:                                              ; preds = %893
  store i8 1, ptr %427, align 1, !tbaa !187
  br label %925

899:                                              ; preds = %893
  %900 = load ptr, ptr %514, align 8, !tbaa !199
  %901 = icmp eq ptr %900, null
  br i1 %901, label %910, label %902

902:                                              ; preds = %899
  %903 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %894, i64 0, i32 17
  %904 = load i8, ptr %903, align 1, !tbaa !210, !range !147, !noundef !148
  %905 = icmp eq i8 %904, 0
  store i8 %904, ptr %426, align 8, !tbaa !211
  br i1 %905, label %910, label %906

906:                                              ; preds = %902
  %907 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %425, i64 0, i32 11
  %908 = load ptr, ptr %907, align 8, !tbaa !212
  %909 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 7
  store ptr %908, ptr %909, align 8, !tbaa !200
  br label %910

910:                                              ; preds = %902, %906, %899
  %911 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 5
  %912 = load ptr, ptr %911, align 8, !tbaa !198
  %913 = icmp eq ptr %912, null
  br i1 %913, label %925, label %914

914:                                              ; preds = %910
  %915 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %912, i64 0, i32 9
  %916 = load i32, ptr %915, align 4, !tbaa !205
  %917 = icmp eq i32 %916, 25
  br i1 %917, label %918, label %925

918:                                              ; preds = %914
  %919 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %920 = load ptr, ptr %919, align 8, !tbaa !209
  %921 = load ptr, ptr %920, align 8, !tbaa !56
  %922 = getelementptr inbounds ptr, ptr %921, i64 11
  %923 = load ptr, ptr %922, align 8
  %924 = call noundef ptr %923(ptr noundef nonnull align 8 dereferenceable(16) %920)
  br label %925

925:                                              ; preds = %910, %914, %918, %898
  %926 = phi ptr [ null, %898 ], [ %924, %918 ], [ null, %914 ], [ null, %910 ]
  %927 = load i8, ptr %112, align 8, !tbaa !146, !range !147, !noundef !148
  %928 = icmp ne i8 %927, 0
  %929 = load i8, ptr %753, align 4, !range !147
  %930 = icmp ne i8 %929, 0
  %931 = select i1 %928, i1 %930, i1 false
  %932 = load ptr, ptr %757, align 8
  %933 = icmp ne ptr %932, null
  %934 = select i1 %931, i1 %933, i1 false
  br i1 %934, label %935, label %940

935:                                              ; preds = %925
  %936 = load ptr, ptr %13, align 8, !tbaa !87
  %937 = load i32, ptr %12, align 8, !tbaa !82
  %938 = zext i32 %937 to i64
  %939 = getelementptr inbounds i16, ptr %936, i64 %938
  store i16 0, ptr %939, align 2, !tbaa !88
  call void @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(48) %932, ptr noundef nonnull %425, ptr noundef %936)
  br label %940

940:                                              ; preds = %925, %935, %873
  %941 = phi ptr [ null, %873 ], [ %926, %935 ], [ %926, %925 ]
  %942 = load ptr, ptr %514, align 8, !tbaa !199
  %943 = icmp eq ptr %942, null
  br i1 %943, label %945, label %944

944:                                              ; preds = %940
  call void @_ZN11xercesc_2_712SGXMLScanner14endElementPSVIEPNS_17SchemaElementDeclEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull %425, ptr noundef %941)
  br label %945

945:                                              ; preds = %944, %940
  %946 = load ptr, ptr %769, align 8, !tbaa !141
  %947 = icmp eq ptr %946, null
  br i1 %947, label %957, label %948

948:                                              ; preds = %945
  %949 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %950 = load ptr, ptr %949, align 8, !tbaa !87
  %951 = load i32, ptr %142, align 8, !tbaa !82
  %952 = zext i32 %951 to i64
  %953 = getelementptr inbounds i16, ptr %950, i64 %952
  store i16 0, ptr %953, align 2, !tbaa !88
  %954 = load ptr, ptr %946, align 8, !tbaa !56
  %955 = getelementptr inbounds ptr, ptr %954, i64 6
  %956 = load ptr, ptr %955, align 8
  call void %956(ptr noundef nonnull align 8 dereferenceable(8) %946, ptr noundef nonnull align 8 dereferenceable(33) %425, i32 noundef %144, i1 noundef zeroext %37, ptr noundef %950)
  br label %957

957:                                              ; preds = %948, %945
  br i1 %37, label %958, label %959

958:                                              ; preds = %957
  store i8 0, ptr %1, align 1, !tbaa !150
  br label %1073

959:                                              ; preds = %957
  %960 = load ptr, ptr %114, align 8, !tbaa !185
  %961 = load i32, ptr %35, align 4, !tbaa !152
  %962 = add i32 %961, -1
  %963 = zext i32 %962 to i64
  %964 = getelementptr inbounds ptr, ptr %960, i64 %963
  %965 = load ptr, ptr %964, align 8, !tbaa !118
  %966 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %965, i64 0, i32 12
  %967 = load ptr, ptr %966, align 8, !tbaa !222
  store ptr %967, ptr %172, align 8, !tbaa !223
  %968 = load ptr, ptr %967, align 8, !tbaa !56
  %969 = getelementptr inbounds ptr, ptr %968, i64 5
  %970 = load ptr, ptr %969, align 8
  %971 = call noundef i32 %970(ptr noundef nonnull align 8 dereferenceable(8) %967)
  store i32 %971, ptr %808, align 4, !tbaa !79
  %972 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %973 = load ptr, ptr %972, align 8, !tbaa !139
  %974 = load ptr, ptr %172, align 8, !tbaa !223
  %975 = load ptr, ptr %973, align 8, !tbaa !56
  %976 = getelementptr inbounds ptr, ptr %975, i64 11
  %977 = load ptr, ptr %976, align 8
  call void %977(ptr noundef nonnull align 8 dereferenceable(40) %973, ptr noundef %974)
  %978 = load ptr, ptr %114, align 8, !tbaa !185
  %979 = load i32, ptr %35, align 4, !tbaa !152
  %980 = add i32 %979, -1
  %981 = zext i32 %980 to i64
  %982 = getelementptr inbounds ptr, ptr %978, i64 %981
  %983 = load ptr, ptr %982, align 8, !tbaa !118
  %984 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %983, i64 0, i32 8
  %985 = load i8, ptr %984, align 8, !tbaa !224, !range !147, !noundef !148
  store i8 %985, ptr %112, align 8, !tbaa !146
  br label %1073

986:                                              ; preds = %803
  %987 = load ptr, ptr %514, align 8, !tbaa !199
  %988 = icmp eq ptr %987, null
  br i1 %988, label %1061, label %989

989:                                              ; preds = %986
  %990 = load i8, ptr %112, align 8, !tbaa !146, !range !147, !noundef !148
  %991 = icmp eq i8 %990, 0
  br i1 %991, label %1020, label %992

992:                                              ; preds = %989
  %993 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %425, i64 0, i32 3
  %994 = load i32, ptr %993, align 8, !tbaa !189
  %995 = icmp eq i32 %994, 1
  br i1 %995, label %996, label %1020

996:                                              ; preds = %992
  %997 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %998 = load ptr, ptr %997, align 8, !tbaa !139
  %999 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %998, i64 0, i32 14
  %1000 = load ptr, ptr %999, align 8, !tbaa !190
  %1001 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.8", ptr %1000, i64 0, i32 1, i32 1
  %1002 = load i32, ptr %1001, align 4, !tbaa !194
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1007, label %1004

1004:                                             ; preds = %996
  %1005 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %1000)
  %1006 = load ptr, ptr %1005, align 8, !tbaa !118
  br label %1007

1007:                                             ; preds = %996, %1004
  %1008 = phi ptr [ %1006, %1004 ], [ null, %996 ]
  %1009 = icmp eq ptr %1008, null
  br i1 %1009, label %1010, label %1015

1010:                                             ; preds = %1007
  %1011 = load ptr, ptr %997, align 8, !tbaa !139
  %1012 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %1011, i64 0, i32 7
  %1013 = load ptr, ptr %1012, align 8, !tbaa !197
  %1014 = icmp eq ptr %1013, null
  br i1 %1014, label %1020, label %1015

1015:                                             ; preds = %1010, %1007
  %1016 = phi ptr [ %1008, %1007 ], [ %1013, %1010 ]
  %1017 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %1018 = load ptr, ptr %1017, align 8, !tbaa !231
  %1019 = call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %1018, ptr noundef nonnull %1016)
  br label %1020

1020:                                             ; preds = %1015, %1010, %992, %989
  %1021 = phi ptr [ null, %1010 ], [ null, %992 ], [ null, %989 ], [ %1019, %1015 ]
  %1022 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 19
  %1023 = load ptr, ptr %1022, align 8, !tbaa !106
  %1024 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %1025 = load ptr, ptr %1024, align 8, !tbaa !234
  %1026 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %1027 = load ptr, ptr %1026, align 8, !tbaa !139
  %1028 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %1027, i64 0, i32 17
  %1029 = load i8, ptr %1028, align 1, !tbaa !210, !range !147, !noundef !148
  %1030 = icmp ne i8 %1029, 0
  %1031 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %425, i64 0, i32 3
  %1032 = load i32, ptr %1031, align 8, !tbaa !189
  %1033 = icmp eq i32 %1032, 1
  br i1 %1033, label %1034, label %1038

1034:                                             ; preds = %1020
  %1035 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %1036 = load ptr, ptr %1035, align 8, !tbaa !231
  %1037 = call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %1036, ptr noundef nonnull %425)
  br label %1038

1038:                                             ; preds = %1020, %1034
  %1039 = phi ptr [ %1037, %1034 ], [ null, %1020 ]
  %1040 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %1041 = load ptr, ptr %1040, align 8, !tbaa !231
  %1042 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %425, i64 0, i32 11
  %1043 = load ptr, ptr %1042, align 8, !tbaa !212
  call void @_ZN11xercesc_2_711PSVIElement5resetENS_8PSVIItem14VALIDITY_STATEENS1_15ASSESSMENT_TYPEEPKtbPNS_20XSElementDeclarationEPNS_16XSTypeDefinitionEPNS_22XSSimpleTypeDefinitionEPNS_7XSModelES5_S5_PtPNS_21XSNotationDeclarationE(ptr noundef nonnull align 8 dereferenceable(104) %1023, i32 noundef 0, i32 noundef 0, ptr noundef %1025, i1 noundef zeroext %1030, ptr noundef %1039, ptr noundef %1021, ptr noundef null, ptr noundef %1041, ptr noundef %1043, ptr noundef null, ptr noundef null, ptr noundef null)
  %1044 = load ptr, ptr %514, align 8, !tbaa !199
  %1045 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %425, i64 0, i32 2
  %1046 = load ptr, ptr %1045, align 8, !tbaa !155
  %1047 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1046, i64 0, i32 6
  %1048 = load ptr, ptr %1047, align 8, !tbaa !235
  %1049 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %1050 = load ptr, ptr %1049, align 8, !tbaa !236
  %1051 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1046, i64 0, i32 4
  %1052 = load i32, ptr %1051, align 4, !tbaa !237
  %1053 = load ptr, ptr %1050, align 8, !tbaa !56
  %1054 = getelementptr inbounds ptr, ptr %1053, i64 10
  %1055 = load ptr, ptr %1054, align 8
  %1056 = call noundef ptr %1055(ptr noundef nonnull align 8 dereferenceable(40) %1050, i32 noundef %1052)
  %1057 = load ptr, ptr %1022, align 8, !tbaa !106
  %1058 = load ptr, ptr %1044, align 8, !tbaa !56
  %1059 = getelementptr inbounds ptr, ptr %1058, i64 3
  %1060 = load ptr, ptr %1059, align 8
  call void %1060(ptr noundef nonnull align 8 dereferenceable(8) %1044, ptr noundef %1048, ptr noundef %1056, ptr noundef %1057)
  br label %1061

1061:                                             ; preds = %1038, %986
  %1062 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 20
  %1063 = load ptr, ptr %1062, align 8, !tbaa !107
  %1064 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %1063, i64 0, i32 1
  call void @_ZN11xercesc_2_713ValueVectorOfIbE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %1064, i32 noundef 1)
  %1065 = load i8, ptr %427, align 1, !tbaa !150, !range !147, !noundef !148
  %1066 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %1063, i64 0, i32 1, i32 3
  %1067 = load ptr, ptr %1066, align 8, !tbaa !110
  %1068 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %1063, i64 0, i32 1, i32 1
  %1069 = load i32, ptr %1068, align 4, !tbaa !221
  %1070 = zext i32 %1069 to i64
  %1071 = getelementptr inbounds i8, ptr %1067, i64 %1070
  store i8 %1065, ptr %1071, align 1, !tbaa !150
  %1072 = add i32 %1069, 1
  store i32 %1072, ptr %1068, align 4, !tbaa !221
  br label %1073

1073:                                             ; preds = %958, %959, %1061
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #18
  br label %1076

1074:                                             ; preds = %290, %411, %701, %164
  %1075 = phi { ptr, i32 } [ %165, %164 ], [ %692, %701 ], [ %291, %290 ], [ %412, %411 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  resume { ptr, i32 } %1075

1076:                                             ; preds = %31, %31, %1073
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  ret i1 %21
}

declare noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #4

declare noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner19parseSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = tail call noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %4)
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !256
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %7, 0
  br i1 %11, label %27, label %15

12:                                               ; preds = %2
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 295)
          to label %27 unwind label %13

13:                                               ; preds = %12
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %34

15:                                               ; preds = %10, %22
  %16 = phi i32 [ %23, %22 ], [ 0, %10 ]
  %17 = or disjoint i32 %16, 1
  %18 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %17)
          to label %19 unwind label %25

19:                                               ; preds = %15
  %20 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %16)
          to label %21 unwind label %25

21:                                               ; preds = %19
  invoke void @_ZN11xercesc_2_712SGXMLScanner20resolveSchemaGrammarEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %18, ptr noundef %20)
          to label %22 unwind label %25

22:                                               ; preds = %21
  %23 = add i32 %16, 2
  %24 = icmp ult i32 %23, %7
  br i1 %24, label %15, label %27, !llvm.loop !258

25:                                               ; preds = %21, %19, %15
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %34

27:                                               ; preds = %22, %10, %12
  %28 = icmp eq ptr %5, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %5, align 8, !tbaa !56
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(40) %5) #18
  br label %33

33:                                               ; preds = %27, %29
  ret void

34:                                               ; preds = %25, %13
  %35 = phi { ptr, i32 } [ %14, %13 ], [ %26, %25 ]
  %36 = icmp eq ptr %5, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %5, align 8, !tbaa !56
  %39 = getelementptr inbounds ptr, ptr %38, i64 1
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(40) %5) #18
  br label %41

41:                                               ; preds = %34, %37
  resume { ptr, i32 } %35
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner20resolveSchemaGrammarEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %4 = alloca %"class.xercesc_2_7::XMLSchemaDescriptionImpl", align 8
  %5 = alloca %"class.xercesc_2_7::XSDDOMParser", align 8
  %6 = alloca i16, align 2
  %7 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %8 = alloca %"class.xercesc_2_7::XMLResourceIdentifier", align 8
  %9 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %10 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %11 = alloca %"class.xercesc_2_7::TraverseSchema", align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  call void @_ZN11xercesc_2_724XMLSchemaDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %2, ptr noundef %13)
  invoke void @_ZN11xercesc_2_724XMLSchemaDescriptionImpl16setLocationHintsEPKt(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %1)
          to label %14 unwind label %56

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %16 = load ptr, ptr %15, align 8, !tbaa !259
  %17 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPNS_21XMLGrammarDescriptionE(ptr noundef nonnull align 8 dereferenceable(80) %16, ptr noundef nonnull %4)
          to label %18 unwind label %56

18:                                               ; preds = %14
  call void @_ZN11xercesc_2_724XMLSchemaDescriptionImplD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  %19 = icmp eq ptr %17, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %17, align 8, !tbaa !56
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  %24 = call noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(8) %17)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %419

26:                                               ; preds = %20, %18
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %5) #18
  %27 = load ptr, ptr %12, align 8, !tbaa !91
  call void @_ZN11xercesc_2_712XSDDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(368) %5, ptr noundef null, ptr noundef %27, ptr noundef null)
  invoke void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %5, i32 noundef 0)
          to label %28 unwind label %58

28:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200) %5, i1 noundef zeroext true)
          to label %29 unwind label %58

29:                                               ; preds = %28
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %31 = load ptr, ptr %30, align 8, !tbaa !260
  invoke void @_ZN11xercesc_2_712XSDDOMParser20setUserEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(368) %5, ptr noundef %31)
          to label %32 unwind label %58

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %34 = load ptr, ptr %33, align 8, !tbaa !261
  invoke void @_ZN11xercesc_2_712XSDDOMParser20setUserErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(368) %5, ptr noundef %34)
          to label %35 unwind label %58

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %37 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %38 unwind label %60

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #18
  store i16 -1, ptr %6, align 2, !tbaa !88
  invoke void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %6, ptr noundef nonnull align 8 dereferenceable(40) %37)
          to label %39 unwind label %62

39:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #18
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %37, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !87
  %42 = load i32, ptr %37, align 8, !tbaa !82
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i16, ptr %41, i64 %43
  store i16 0, ptr %44, align 2, !tbaa !88
  %45 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %46 unwind label %64

46:                                               ; preds = %39
  %47 = load ptr, ptr %30, align 8, !tbaa !260
  %48 = icmp eq ptr %47, null
  br i1 %48, label %94, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %47, align 8, !tbaa !56
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef zeroext i1 %52(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef %41, ptr noundef nonnull align 8 dereferenceable(40) %45)
          to label %54 unwind label %66

54:                                               ; preds = %49
  br i1 %53, label %68, label %55

55:                                               ; preds = %54
  store i32 0, ptr %45, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %45, ptr noundef %41)
          to label %68 unwind label %66

56:                                               ; preds = %14, %3
  %57 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_724XMLSchemaDescriptionImplD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  br label %457

58:                                               ; preds = %32, %29, %28, %26
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %417

60:                                               ; preds = %35
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %417

62:                                               ; preds = %38
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #18
  br label %412

64:                                               ; preds = %39
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %412

66:                                               ; preds = %94, %55, %49
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %407

68:                                               ; preds = %55, %54
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %69, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %70 unwind label %88

70:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #18
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %45, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !87
  %73 = load i32, ptr %45, align 8, !tbaa !82
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i16, ptr %72, i64 %74
  store i16 0, ptr %75, align 2, !tbaa !88
  %76 = load ptr, ptr %7, align 8, !tbaa !262
  store i32 0, ptr %8, align 8, !tbaa !264
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %8, i64 0, i32 1
  store ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %77, align 8, !tbaa !267
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %8, i64 0, i32 2
  store ptr %72, ptr %78, align 8, !tbaa !268
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %8, i64 0, i32 3
  store ptr %76, ptr %79, align 8, !tbaa !269
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %8, i64 0, i32 4
  store ptr %2, ptr %80, align 8, !tbaa !270
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %8, i64 0, i32 5
  store ptr %69, ptr %81, align 8, !tbaa !271
  %82 = load ptr, ptr %30, align 8, !tbaa !260
  %83 = load ptr, ptr %82, align 8, !tbaa !56
  %84 = getelementptr inbounds ptr, ptr %83, i64 6
  %85 = load ptr, ptr %84, align 8
  %86 = invoke noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(8) %82, ptr noundef nonnull %8)
          to label %87 unwind label %90

87:                                               ; preds = %70
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  br label %95

88:                                               ; preds = %68
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %92

90:                                               ; preds = %70
  %91 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #18
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi { ptr, i32 } [ %91, %90 ], [ %89, %88 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  br label %407

94:                                               ; preds = %46
  store i32 0, ptr %45, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %45, ptr noundef %41)
          to label %95 unwind label %66

95:                                               ; preds = %94, %87
  %96 = phi ptr [ %86, %87 ], [ null, %94 ]
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %196

98:                                               ; preds = %95
  %99 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %100 = load i8, ptr %99, align 1, !tbaa !272, !range !147, !noundef !148
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %393

102:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #18
  %103 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %103, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %104 unwind label %144

104:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %10) #18
  %105 = load ptr, ptr %12, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %10, ptr noundef %105)
          to label %106 unwind label %146

106:                                              ; preds = %104
  %107 = load ptr, ptr %9, align 8, !tbaa !262
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %45, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !87
  %110 = load i32, ptr %45, align 8, !tbaa !82
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i16, ptr %109, i64 %111
  store i16 0, ptr %112, align 2, !tbaa !88
  %113 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr noundef nonnull align 8 dereferenceable(81) %10, ptr noundef %107, ptr noundef %109, ptr noundef nonnull align 8 dereferenceable(81) %10)
          to label %114 unwind label %148

114:                                              ; preds = %106
  br i1 %113, label %115, label %118

115:                                              ; preds = %114
  %116 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %10)
          to label %117 unwind label %148

117:                                              ; preds = %115
  br i1 %116, label %118, label %166

118:                                              ; preds = %117, %114
  %119 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %120 = load i8, ptr %119, align 8, !tbaa !273, !range !147, !noundef !148
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %161

122:                                              ; preds = %118
  %123 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %124 unwind label %150

124:                                              ; preds = %122
  %125 = load ptr, ptr %108, align 8, !tbaa !87
  %126 = load i32, ptr %45, align 8, !tbaa !82
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i16, ptr %125, i64 %127
  store i16 0, ptr %128, align 2, !tbaa !88
  invoke void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef %125, ptr noundef nonnull align 8 dereferenceable(40) %123)
          to label %129 unwind label %152

129:                                              ; preds = %124
  %130 = load ptr, ptr %12, align 8, !tbaa !91
  %131 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %130)
          to label %132 unwind label %152

132:                                              ; preds = %129
  %133 = load ptr, ptr %9, align 8, !tbaa !262
  %134 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %123, i64 0, i32 6
  %135 = load ptr, ptr %134, align 8, !tbaa !87
  %136 = load i32, ptr %123, align 8, !tbaa !82
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i16, ptr %135, i64 %137
  store i16 0, ptr %138, align 2, !tbaa !88
  %139 = load ptr, ptr %12, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %131, ptr noundef %133, ptr noundef %135, ptr noundef %139)
          to label %140 unwind label %154

140:                                              ; preds = %132
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(40) %123)
          to label %188 unwind label %141

141:                                              ; preds = %140
  %142 = landingpad { ptr, i32 }
          catch ptr null
  %143 = extractvalue { ptr, i32 } %142, 0
  call void @__clang_call_terminate(ptr %143) #19
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
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %131, ptr noundef %130) #18
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi { ptr, i32 } [ %155, %154 ], [ %153, %152 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(40) %123)
          to label %190 unwind label %158

158:                                              ; preds = %156
  %159 = landingpad { ptr, i32 }
          catch ptr null
  %160 = extractvalue { ptr, i32 } %159, 0
  call void @__clang_call_terminate(ptr %160) #19
  unreachable

161:                                              ; preds = %118
  %162 = call ptr @__cxa_allocate_exception(i64 48) #18
  %163 = load ptr, ptr %12, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %162, ptr noundef nonnull @.str, i32 noundef 3582, i32 noundef 99, ptr noundef %163)
          to label %176 unwind label %164

164:                                              ; preds = %161
  %165 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %162) #18
  br label %190

166:                                              ; preds = %117
  %167 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %168 = load i8, ptr %167, align 8, !tbaa !273, !range !147, !noundef !148
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %181, label %170

170:                                              ; preds = %166
  %171 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81) %10)
          to label %172 unwind label %148

172:                                              ; preds = %170
  br i1 %171, label %173, label %181

173:                                              ; preds = %172
  %174 = call ptr @__cxa_allocate_exception(i64 48) #18
  %175 = load ptr, ptr %12, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %174, ptr noundef nonnull @.str, i32 noundef 3587, i32 noundef 99, ptr noundef %175)
          to label %176 unwind label %179

176:                                              ; preds = %173, %161
  %177 = phi ptr [ %162, %161 ], [ %174, %173 ]
  invoke void @__cxa_throw(ptr nonnull %177, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
          to label %178 unwind label %148

178:                                              ; preds = %176
  unreachable

179:                                              ; preds = %173
  %180 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %174) #18
  br label %190

181:                                              ; preds = %172, %166
  %182 = load ptr, ptr %12, align 8, !tbaa !91
  %183 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %182)
          to label %184 unwind label %148

184:                                              ; preds = %181
  %185 = load ptr, ptr %12, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %183, ptr noundef nonnull align 8 dereferenceable(81) %10, ptr noundef %185)
          to label %188 unwind label %186

186:                                              ; preds = %184
  %187 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %183, ptr noundef %182) #18
  br label %190

188:                                              ; preds = %140, %184
  %189 = phi ptr [ %183, %184 ], [ %131, %140 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %10) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #18
  br label %196

190:                                              ; preds = %150, %156, %186, %179, %164, %148
  %191 = phi { ptr, i32 } [ %149, %148 ], [ %165, %164 ], [ %180, %179 ], [ %187, %186 ], [ %151, %150 ], [ %157, %156 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %10) #18
  br label %192

192:                                              ; preds = %190, %146
  %193 = phi { ptr, i32 } [ %191, %190 ], [ %147, %146 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #18
  br label %194

194:                                              ; preds = %192, %144
  %195 = phi { ptr, i32 } [ %193, %192 ], [ %145, %144 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #18
  br label %407

196:                                              ; preds = %188, %95
  %197 = phi ptr [ %96, %95 ], [ %189, %188 ]
  %198 = load ptr, ptr %197, align 8, !tbaa !56
  %199 = getelementptr inbounds ptr, ptr %198, i64 6
  %200 = load ptr, ptr %199, align 8
  %201 = invoke noundef zeroext i1 %200(ptr noundef nonnull align 8 dereferenceable(41) %197)
          to label %202 unwind label %220

202:                                              ; preds = %196
  %203 = load ptr, ptr %197, align 8, !tbaa !56
  %204 = getelementptr inbounds ptr, ptr %203, i64 10
  %205 = load ptr, ptr %204, align 8
  invoke void %205(ptr noundef nonnull align 8 dereferenceable(41) %197, i1 noundef zeroext false)
          to label %206 unwind label %220

206:                                              ; preds = %202
  invoke void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef nonnull align 8 dereferenceable(41) %197)
          to label %207 unwind label %220

207:                                              ; preds = %206
  %208 = load ptr, ptr %197, align 8, !tbaa !56
  %209 = getelementptr inbounds ptr, ptr %208, i64 10
  %210 = load ptr, ptr %209, align 8
  invoke void %210(ptr noundef nonnull align 8 dereferenceable(41) %197, i1 noundef zeroext %201)
          to label %211 unwind label %220

211:                                              ; preds = %207
  %212 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %5, i64 0, i32 1
  %213 = load i8, ptr %212, align 8, !tbaa !274, !range !147, !noundef !148
  %214 = icmp eq i8 %213, 0
  %215 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %216 = load i8, ptr %215, align 1, !range !147
  %217 = icmp eq i8 %216, 0
  %218 = select i1 %214, i1 true, i1 %217
  br i1 %218, label %222, label %219

219:                                              ; preds = %211
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 297)
          to label %222 unwind label %220

220:                                              ; preds = %219, %207, %206, %202, %196
  %221 = landingpad { ptr, i32 }
          cleanup
  br label %402

222:                                              ; preds = %219, %211
  %223 = invoke noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %5)
          to label %224 unwind label %276

224:                                              ; preds = %222
  %225 = icmp eq ptr %223, null
  br i1 %225, label %381, label %226

226:                                              ; preds = %224
  %227 = load ptr, ptr %223, align 8, !tbaa !56
  %228 = getelementptr inbounds ptr, ptr %227, i64 13
  %229 = load ptr, ptr %228, align 8
  %230 = invoke noundef ptr %229(ptr noundef nonnull align 8 dereferenceable(32) %223)
          to label %231 unwind label %278

231:                                              ; preds = %226
  %232 = icmp eq ptr %230, null
  br i1 %232, label %381, label %233

233:                                              ; preds = %231
  %234 = load ptr, ptr %230, align 8, !tbaa !56
  %235 = getelementptr inbounds ptr, ptr %234, i64 41
  %236 = load ptr, ptr %235, align 8
  %237 = invoke noundef ptr %236(ptr noundef nonnull align 8 dereferenceable(8) %230, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgATT_TARGETNAMESPACEE)
          to label %238 unwind label %280

238:                                              ; preds = %233
  %239 = icmp eq ptr %237, null
  %240 = icmp eq ptr %2, null
  %241 = or i1 %240, %239
  br i1 %241, label %246, label %242

242:                                              ; preds = %238
  %243 = load i16, ptr %237, align 2, !tbaa !88
  %244 = load i16, ptr %2, align 2, !tbaa !88
  %245 = icmp eq i16 %243, %244
  br i1 %245, label %254, label %265

246:                                              ; preds = %238
  br i1 %239, label %250, label %247

247:                                              ; preds = %246
  %248 = load i16, ptr %237, align 2, !tbaa !88
  %249 = icmp eq i16 %248, 0
  br i1 %249, label %250, label %265

250:                                              ; preds = %247, %246
  br i1 %240, label %285, label %251

251:                                              ; preds = %250
  %252 = load i16, ptr %2, align 2, !tbaa !88
  %253 = icmp eq i16 %252, 0
  br i1 %253, label %285, label %265

254:                                              ; preds = %242, %259
  %255 = phi i16 [ %262, %259 ], [ %243, %242 ]
  %256 = phi ptr [ %261, %259 ], [ %2, %242 ]
  %257 = phi ptr [ %260, %259 ], [ %237, %242 ]
  %258 = icmp eq i16 %255, 0
  br i1 %258, label %285, label %259

259:                                              ; preds = %254
  %260 = getelementptr inbounds i16, ptr %257, i64 1
  %261 = getelementptr inbounds i16, ptr %256, i64 1
  %262 = load i16, ptr %260, align 2, !tbaa !88
  %263 = load i16, ptr %261, align 2, !tbaa !88
  %264 = icmp eq i16 %262, %263
  br i1 %264, label %254, label %265, !llvm.loop !201

265:                                              ; preds = %259, %242, %251, %247
  %266 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %267 = load i8, ptr %266, align 8, !tbaa !146, !range !147, !noundef !148
  %268 = icmp ne i8 %267, 0
  %269 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %270 = load i32, ptr %269, align 8
  %271 = icmp eq i32 %270, 2
  %272 = select i1 %268, i1 true, i1 %271
  br i1 %272, label %273, label %282

273:                                              ; preds = %265
  %274 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %275 = load ptr, ptr %274, align 8, !tbaa !139
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %275, i32 noundef 69, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null)
          to label %282 unwind label %280

276:                                              ; preds = %222
  %277 = landingpad { ptr, i32 }
          cleanup
  br label %402

278:                                              ; preds = %226
  %279 = landingpad { ptr, i32 }
          cleanup
  br label %402

280:                                              ; preds = %313, %288, %282, %273, %233
  %281 = landingpad { ptr, i32 }
          cleanup
  br label %402

282:                                              ; preds = %273, %265
  %283 = load ptr, ptr %15, align 8, !tbaa !259
  %284 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %283, ptr noundef %237)
          to label %285 unwind label %280

285:                                              ; preds = %254, %251, %250, %282
  %286 = phi ptr [ %284, %282 ], [ %17, %250 ], [ %17, %251 ], [ %17, %254 ]
  %287 = icmp eq ptr %286, null
  br i1 %287, label %295, label %288

288:                                              ; preds = %285
  %289 = load ptr, ptr %286, align 8, !tbaa !56
  %290 = getelementptr inbounds ptr, ptr %289, i64 5
  %291 = load ptr, ptr %290, align 8
  %292 = invoke noundef i32 %291(ptr noundef nonnull align 8 dereferenceable(8) %286)
          to label %293 unwind label %280

293:                                              ; preds = %288
  %294 = icmp eq i32 %292, 0
  br i1 %294, label %295, label %381

295:                                              ; preds = %293, %285
  %296 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %297 = load i32, ptr %296, align 8, !tbaa !284
  %298 = icmp eq i32 %297, 2
  br i1 %298, label %299, label %313

299:                                              ; preds = %295
  %300 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %301 = load i8, ptr %300, align 8, !tbaa !146, !range !147, !noundef !148
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %303, label %313

303:                                              ; preds = %299
  store i8 1, ptr %300, align 8, !tbaa !146
  %304 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %305 = load ptr, ptr %304, align 8, !tbaa !185
  %306 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %307 = load i32, ptr %306, align 4, !tbaa !152
  %308 = add i32 %307, -1
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds ptr, ptr %305, i64 %309
  %311 = load ptr, ptr %310, align 8, !tbaa !118
  %312 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %311, i64 0, i32 8
  store i8 1, ptr %312, align 8, !tbaa !224
  br label %313

313:                                              ; preds = %295, %303, %299
  %314 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %315 = load ptr, ptr %314, align 8, !tbaa !285
  %316 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 160, ptr noundef %315)
          to label %317 unwind label %280

317:                                              ; preds = %313
  %318 = load ptr, ptr %314, align 8, !tbaa !285
  invoke void @_ZN11xercesc_2_713SchemaGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %316, ptr noundef %318)
          to label %319 unwind label %360

319:                                              ; preds = %317
  %320 = load ptr, ptr %316, align 8, !tbaa !56
  %321 = getelementptr inbounds ptr, ptr %320, i64 22
  %322 = load ptr, ptr %321, align 8
  %323 = invoke noundef ptr %322(ptr noundef nonnull align 8 dereferenceable(8) %316)
          to label %324 unwind label %362

324:                                              ; preds = %319
  %325 = load ptr, ptr %323, align 8, !tbaa !56
  %326 = getelementptr inbounds ptr, ptr %325, i64 13
  %327 = load ptr, ptr %326, align 8
  invoke void %327(ptr noundef nonnull align 8 dereferenceable(16) %323, i32 noundef 3)
          to label %328 unwind label %362

328:                                              ; preds = %324
  %329 = load ptr, ptr %197, align 8, !tbaa !56
  %330 = getelementptr inbounds ptr, ptr %329, i64 5
  %331 = load ptr, ptr %330, align 8
  %332 = invoke noundef ptr %331(ptr noundef nonnull align 8 dereferenceable(41) %197)
          to label %333 unwind label %362

333:                                              ; preds = %328
  %334 = load ptr, ptr %323, align 8, !tbaa !56
  %335 = getelementptr inbounds ptr, ptr %334, i64 15
  %336 = load ptr, ptr %335, align 8
  invoke void %336(ptr noundef nonnull align 8 dereferenceable(16) %323, ptr noundef %332)
          to label %337 unwind label %362

337:                                              ; preds = %333
  call void @llvm.lifetime.start.p0(i64 552, ptr nonnull %11) #18
  %338 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %339 = load ptr, ptr %338, align 8, !tbaa !236
  %340 = load ptr, ptr %15, align 8, !tbaa !259
  %341 = load ptr, ptr %197, align 8, !tbaa !56
  %342 = getelementptr inbounds ptr, ptr %341, i64 5
  %343 = load ptr, ptr %342, align 8
  %344 = invoke noundef ptr %343(ptr noundef nonnull align 8 dereferenceable(41) %197)
          to label %345 unwind label %364

345:                                              ; preds = %337
  %346 = load ptr, ptr %30, align 8, !tbaa !260
  %347 = load ptr, ptr %33, align 8, !tbaa !261
  %348 = load ptr, ptr %12, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_714TraverseSchemaC1EPNS_10DOMElementEPNS_13XMLStringPoolEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_10XMLScannerEPKtPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(552) %11, ptr noundef nonnull %230, ptr noundef %339, ptr noundef nonnull %316, ptr noundef %340, ptr noundef nonnull %0, ptr noundef %344, ptr noundef %346, ptr noundef %347, ptr noundef %348)
          to label %349 unwind label %364

349:                                              ; preds = %345
  %350 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  %351 = load i32, ptr %350, align 4, !tbaa !79
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %368

353:                                              ; preds = %349
  %354 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %316, ptr %354, align 8, !tbaa !223
  store i32 1, ptr %350, align 4, !tbaa !79
  %355 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %356 = load ptr, ptr %355, align 8, !tbaa !139
  %357 = load ptr, ptr %356, align 8, !tbaa !56
  %358 = getelementptr inbounds ptr, ptr %357, i64 11
  %359 = load ptr, ptr %358, align 8
  invoke void %359(ptr noundef nonnull align 8 dereferenceable(40) %356, ptr noundef nonnull %316)
          to label %368 unwind label %366

360:                                              ; preds = %317
  %361 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %316, ptr noundef %315) #18
  br label %402

362:                                              ; preds = %333, %328, %324, %319
  %363 = landingpad { ptr, i32 }
          cleanup
  br label %402

364:                                              ; preds = %345, %337
  %365 = landingpad { ptr, i32 }
          cleanup
  br label %379

366:                                              ; preds = %372, %353
  %367 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_714TraverseSchemaD1Ev(ptr noundef nonnull align 8 dereferenceable(552) %11) #18
  br label %379

368:                                              ; preds = %353, %349
  %369 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %370 = load i8, ptr %369, align 8, !tbaa !146, !range !147, !noundef !148
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %378, label %372

372:                                              ; preds = %368
  %373 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %374 = load ptr, ptr %373, align 8, !tbaa !139
  %375 = load ptr, ptr %374, align 8, !tbaa !56
  %376 = getelementptr inbounds ptr, ptr %375, i64 4
  %377 = load ptr, ptr %376, align 8
  invoke void %377(ptr noundef nonnull align 8 dereferenceable(40) %374, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %378 unwind label %366

378:                                              ; preds = %372, %368
  call void @_ZN11xercesc_2_714TraverseSchemaD1Ev(ptr noundef nonnull align 8 dereferenceable(552) %11) #18
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %11) #18
  br label %381

379:                                              ; preds = %366, %364
  %380 = phi { ptr, i32 } [ %367, %366 ], [ %365, %364 ]
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %11) #18
  br label %402

381:                                              ; preds = %224, %293, %378, %231
  %382 = load ptr, ptr %197, align 8, !tbaa !56
  %383 = getelementptr inbounds ptr, ptr %382, i64 1
  %384 = load ptr, ptr %383, align 8
  call void %384(ptr noundef nonnull align 8 dereferenceable(41) %197) #18
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(40) %45)
          to label %388 unwind label %385

385:                                              ; preds = %381
  %386 = landingpad { ptr, i32 }
          catch ptr null
  %387 = extractvalue { ptr, i32 } %386, 0
  call void @__clang_call_terminate(ptr %387) #19
  unreachable

388:                                              ; preds = %381
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(40) %37)
          to label %392 unwind label %389

389:                                              ; preds = %388
  %390 = landingpad { ptr, i32 }
          catch ptr null
  %391 = extractvalue { ptr, i32 } %390, 0
  call void @__clang_call_terminate(ptr %391) #19
  unreachable

392:                                              ; preds = %388
  call void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368) %5) #18
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %5) #18
  br label %448

393:                                              ; preds = %98
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(40) %45)
          to label %397 unwind label %394

394:                                              ; preds = %393
  %395 = landingpad { ptr, i32 }
          catch ptr null
  %396 = extractvalue { ptr, i32 } %395, 0
  call void @__clang_call_terminate(ptr %396) #19
  unreachable

397:                                              ; preds = %393
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(40) %37)
          to label %401 unwind label %398

398:                                              ; preds = %397
  %399 = landingpad { ptr, i32 }
          catch ptr null
  %400 = extractvalue { ptr, i32 } %399, 0
  call void @__clang_call_terminate(ptr %400) #19
  unreachable

401:                                              ; preds = %397
  call void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368) %5) #18
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %5) #18
  br label %456

402:                                              ; preds = %220, %278, %362, %379, %360, %280, %276
  %403 = phi { ptr, i32 } [ %221, %220 ], [ %277, %276 ], [ %279, %278 ], [ %361, %360 ], [ %281, %280 ], [ %380, %379 ], [ %363, %362 ]
  %404 = load ptr, ptr %197, align 8, !tbaa !56
  %405 = getelementptr inbounds ptr, ptr %404, i64 1
  %406 = load ptr, ptr %405, align 8
  call void %406(ptr noundef nonnull align 8 dereferenceable(41) %197) #18
  br label %407

407:                                              ; preds = %402, %194, %92, %66
  %408 = phi { ptr, i32 } [ %403, %402 ], [ %195, %194 ], [ %93, %92 ], [ %67, %66 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(40) %45)
          to label %412 unwind label %409

409:                                              ; preds = %407
  %410 = landingpad { ptr, i32 }
          catch ptr null
  %411 = extractvalue { ptr, i32 } %410, 0
  call void @__clang_call_terminate(ptr %411) #19
  unreachable

412:                                              ; preds = %64, %407, %62
  %413 = phi { ptr, i32 } [ %63, %62 ], [ %65, %64 ], [ %408, %407 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(40) %37)
          to label %417 unwind label %414

414:                                              ; preds = %412
  %415 = landingpad { ptr, i32 }
          catch ptr null
  %416 = extractvalue { ptr, i32 } %415, 0
  call void @__clang_call_terminate(ptr %416) #19
  unreachable

417:                                              ; preds = %60, %412, %58
  %418 = phi { ptr, i32 } [ %59, %58 ], [ %61, %60 ], [ %413, %412 ]
  call void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368) %5) #18
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %5) #18
  br label %457

419:                                              ; preds = %20
  %420 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %421 = load i32, ptr %420, align 8, !tbaa !284
  %422 = icmp eq i32 %421, 2
  br i1 %422, label %423, label %437

423:                                              ; preds = %419
  %424 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %425 = load i8, ptr %424, align 8, !tbaa !146, !range !147, !noundef !148
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %427, label %437

427:                                              ; preds = %423
  store i8 1, ptr %424, align 8, !tbaa !146
  %428 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %429 = load ptr, ptr %428, align 8, !tbaa !185
  %430 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %431 = load i32, ptr %430, align 4, !tbaa !152
  %432 = add i32 %431, -1
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds ptr, ptr %429, i64 %433
  %435 = load ptr, ptr %434, align 8, !tbaa !118
  %436 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %435, i64 0, i32 8
  store i8 1, ptr %436, align 8, !tbaa !224
  br label %437

437:                                              ; preds = %427, %423, %419
  %438 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  %439 = load i32, ptr %438, align 4, !tbaa !79
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %448

441:                                              ; preds = %437
  %442 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %17, ptr %442, align 8, !tbaa !223
  store i32 1, ptr %438, align 4, !tbaa !79
  %443 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %444 = load ptr, ptr %443, align 8, !tbaa !139
  %445 = load ptr, ptr %444, align 8, !tbaa !56
  %446 = getelementptr inbounds ptr, ptr %445, i64 11
  %447 = load ptr, ptr %446, align 8
  call void %447(ptr noundef nonnull align 8 dereferenceable(40) %444, ptr noundef nonnull %17)
  br label %448

448:                                              ; preds = %392, %437, %441
  %449 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %450 = load ptr, ptr %449, align 8, !tbaa !199
  %451 = icmp eq ptr %450, null
  br i1 %451, label %456, label %452

452:                                              ; preds = %448
  %453 = load ptr, ptr %15, align 8, !tbaa !259
  %454 = call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getXSModelEv(ptr noundef nonnull align 8 dereferenceable(80) %453)
  %455 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  store ptr %454, ptr %455, align 8, !tbaa !231
  br label %456

456:                                              ; preds = %448, %452, %401
  ret void

457:                                              ; preds = %417, %56
  %458 = phi { ptr, i32 } [ %418, %417 ], [ %57, %56 ]
  resume { ptr, i32 } %458
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner28scanRawAttrListforNameSpacesEi(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %3 = alloca %"class.xercesc_2_7::QName", align 8
  %4 = alloca i32, align 4
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %69

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 9
  %9 = zext nneg i32 %1 to i64
  br label %10

10:                                               ; preds = %6, %66
  %11 = phi i64 [ 0, %6 ], [ %67, %66 ]
  %12 = load ptr, ptr %7, align 8, !tbaa !94
  %13 = trunc i64 %11 to i32
  %14 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef %13)
  %15 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !175
  %17 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef %16, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE, i32 noundef 6)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %10
  %20 = icmp eq ptr %16, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %19
  %22 = load i16, ptr %16, align 2, !tbaa !88
  %23 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !88
  %24 = icmp eq i16 %22, %23
  br i1 %24, label %28, label %66

25:                                               ; preds = %19
  %26 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !88
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %39, label %66

28:                                               ; preds = %21, %33
  %29 = phi i16 [ %36, %33 ], [ %22, %21 ]
  %30 = phi ptr [ %35, %33 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %21 ]
  %31 = phi ptr [ %34, %33 ], [ %16, %21 ]
  %32 = icmp eq i16 %29, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds i16, ptr %31, i64 1
  %35 = getelementptr inbounds i16, ptr %30, i64 1
  %36 = load i16, ptr %34, align 2, !tbaa !88
  %37 = load i16, ptr %35, align 2, !tbaa !88
  %38 = icmp eq i16 %36, %37
  br i1 %38, label %28, label %66, !llvm.loop !201

39:                                               ; preds = %28, %25, %10
  %40 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %14, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !177
  %42 = load ptr, ptr %8, align 8, !tbaa !95
  %43 = getelementptr inbounds i32, ptr %42, i64 %11
  %44 = load i32, ptr %43, align 4, !tbaa !158
  tail call void @_ZN11xercesc_2_712SGXMLScanner11updateNSMapEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %16, ptr noundef %41, i32 noundef %44)
  %45 = icmp eq ptr %41, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load i16, ptr %41, align 2, !tbaa !88
  %48 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, align 2, !tbaa !88
  %49 = icmp eq i16 %47, %48
  br i1 %49, label %53, label %66

50:                                               ; preds = %39
  %51 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, align 2, !tbaa !88
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %64, label %66

53:                                               ; preds = %46, %58
  %54 = phi i16 [ %61, %58 ], [ %47, %46 ]
  %55 = phi ptr [ %60, %58 ], [ @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, %46 ]
  %56 = phi ptr [ %59, %58 ], [ %41, %46 ]
  %57 = icmp eq i16 %54, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds i16, ptr %56, i64 1
  %60 = getelementptr inbounds i16, ptr %55, i64 1
  %61 = load i16, ptr %59, align 2, !tbaa !88
  %62 = load i16, ptr %60, align 2, !tbaa !88
  %63 = icmp eq i16 %61, %62
  br i1 %63, label %53, label %66, !llvm.loop !201

64:                                               ; preds = %53, %50
  %65 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 1
  store i8 1, ptr %65, align 8, !tbaa !59
  br label %66

66:                                               ; preds = %33, %58, %21, %46, %50, %64, %25
  %67 = add nuw nsw i64 %11, 1
  %68 = icmp eq i64 %67, %9
  br i1 %68, label %69, label %10, !llvm.loop !286

69:                                               ; preds = %66, %2
  %70 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 1
  %71 = load i8, ptr %70, align 8, !tbaa !59, !range !147, !noundef !148
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %301, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %75 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %74)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #18
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %77 = load ptr, ptr %76, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %77)
          to label %78 unwind label %125

78:                                               ; preds = %73
  %79 = icmp sgt i32 %1, 0
  br i1 %79, label %80, label %229

80:                                               ; preds = %78
  %81 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 7
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %83 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %3, i64 0, i32 5
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 32
  %85 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %3, i64 0, i32 6
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  br label %87

87:                                               ; preds = %80, %226
  %88 = phi i32 [ 0, %80 ], [ %227, %226 ]
  %89 = load ptr, ptr %81, align 8, !tbaa !94
  %90 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %89, i32 noundef %88)
          to label %91 unwind label %127

91:                                               ; preds = %87
  %92 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %90, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !175
  %94 = load i32, ptr %82, align 4, !tbaa !243
  invoke void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %93, i32 noundef %94)
          to label %95 unwind label %129

95:                                               ; preds = %91
  %96 = load ptr, ptr %83, align 8, !tbaa !219
  %97 = invoke noundef i32 @_ZN11xercesc_2_712SGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %96, i32 noundef 0)
          to label %98 unwind label %131

98:                                               ; preds = %95
  %99 = load i32, ptr %84, align 4, !tbaa !287
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %226

101:                                              ; preds = %98
  %102 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %90, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !177
  %104 = load ptr, ptr %85, align 8, !tbaa !235
  %105 = icmp eq ptr %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = load i16, ptr %104, align 2, !tbaa !88
  %108 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols21fgXSI_SCHEMALOCACTIONE, align 2, !tbaa !88
  %109 = icmp eq i16 %107, %108
  br i1 %109, label %113, label %135

110:                                              ; preds = %101
  %111 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols21fgXSI_SCHEMALOCACTIONE, align 2, !tbaa !88
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %124, label %135

113:                                              ; preds = %106, %118
  %114 = phi i16 [ %121, %118 ], [ %107, %106 ]
  %115 = phi ptr [ %120, %118 ], [ @_ZN11xercesc_2_713SchemaSymbols21fgXSI_SCHEMALOCACTIONE, %106 ]
  %116 = phi ptr [ %119, %118 ], [ %104, %106 ]
  %117 = icmp eq i16 %114, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds i16, ptr %116, i64 1
  %120 = getelementptr inbounds i16, ptr %115, i64 1
  %121 = load i16, ptr %119, align 2, !tbaa !88
  %122 = load i16, ptr %120, align 2, !tbaa !88
  %123 = icmp eq i16 %121, %122
  br i1 %123, label %113, label %135, !llvm.loop !201

124:                                              ; preds = %113, %110
  invoke void @_ZN11xercesc_2_712SGXMLScanner19parseSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %103)
          to label %155 unwind label %133

125:                                              ; preds = %73
  %126 = landingpad { ptr, i32 }
          cleanup
  br label %295

127:                                              ; preds = %87
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %293

129:                                              ; preds = %91
  %130 = landingpad { ptr, i32 }
          cleanup
  br label %293

131:                                              ; preds = %95
  %132 = landingpad { ptr, i32 }
          cleanup
  br label %293

133:                                              ; preds = %174, %197, %154, %124
  %134 = landingpad { ptr, i32 }
          cleanup
  br label %293

135:                                              ; preds = %118, %106, %110
  br i1 %105, label %140, label %136

136:                                              ; preds = %135
  %137 = load i16, ptr %104, align 2, !tbaa !88
  %138 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols32fgXSI_NONAMESPACESCHEMALOCACTIONE, align 2, !tbaa !88
  %139 = icmp eq i16 %137, %138
  br i1 %139, label %143, label %155

140:                                              ; preds = %135
  %141 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols32fgXSI_NONAMESPACESCHEMALOCACTIONE, align 2, !tbaa !88
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %154, label %155

143:                                              ; preds = %136, %148
  %144 = phi i16 [ %151, %148 ], [ %137, %136 ]
  %145 = phi ptr [ %150, %148 ], [ @_ZN11xercesc_2_713SchemaSymbols32fgXSI_NONAMESPACESCHEMALOCACTIONE, %136 ]
  %146 = phi ptr [ %149, %148 ], [ %104, %136 ]
  %147 = icmp eq i16 %144, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds i16, ptr %146, i64 1
  %150 = getelementptr inbounds i16, ptr %145, i64 1
  %151 = load i16, ptr %149, align 2, !tbaa !88
  %152 = load i16, ptr %150, align 2, !tbaa !88
  %153 = icmp eq i16 %151, %152
  br i1 %153, label %143, label %155, !llvm.loop !201

154:                                              ; preds = %143, %140
  invoke void @_ZN11xercesc_2_712SGXMLScanner20resolveSchemaGrammarEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %103, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
          to label %155 unwind label %133

155:                                              ; preds = %148, %136, %154, %140, %124
  br i1 %105, label %160, label %156

156:                                              ; preds = %155
  %157 = load i16, ptr %104, align 2, !tbaa !88
  %158 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols10fgXSI_TYPEE, align 2, !tbaa !88
  %159 = icmp eq i16 %157, %158
  br i1 %159, label %163, label %175

160:                                              ; preds = %155
  %161 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols10fgXSI_TYPEE, align 2, !tbaa !88
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %174, label %175

163:                                              ; preds = %156, %168
  %164 = phi i16 [ %171, %168 ], [ %157, %156 ]
  %165 = phi ptr [ %170, %168 ], [ @_ZN11xercesc_2_713SchemaSymbols10fgXSI_TYPEE, %156 ]
  %166 = phi ptr [ %169, %168 ], [ %104, %156 ]
  %167 = icmp eq i16 %164, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %163
  %169 = getelementptr inbounds i16, ptr %166, i64 1
  %170 = getelementptr inbounds i16, ptr %165, i64 1
  %171 = load i16, ptr %169, align 2, !tbaa !88
  %172 = load i16, ptr %170, align 2, !tbaa !88
  %173 = icmp eq i16 %171, %172
  br i1 %173, label %163, label %175, !llvm.loop !201

174:                                              ; preds = %163, %160
  store i32 0, ptr %75, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %75, ptr noundef %103)
          to label %226 unwind label %133

175:                                              ; preds = %168, %156, %160
  br i1 %105, label %180, label %176

176:                                              ; preds = %175
  %177 = load i16, ptr %104, align 2, !tbaa !88
  %178 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols10fgATT_NILLE, align 2, !tbaa !88
  %179 = icmp eq i16 %177, %178
  br i1 %179, label %183, label %226

180:                                              ; preds = %175
  %181 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols10fgATT_NILLE, align 2, !tbaa !88
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %194, label %226

183:                                              ; preds = %176, %188
  %184 = phi i16 [ %191, %188 ], [ %177, %176 ]
  %185 = phi ptr [ %190, %188 ], [ @_ZN11xercesc_2_713SchemaSymbols10fgATT_NILLE, %176 ]
  %186 = phi ptr [ %189, %188 ], [ %104, %176 ]
  %187 = icmp eq i16 %184, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %183
  %189 = getelementptr inbounds i16, ptr %186, i64 1
  %190 = getelementptr inbounds i16, ptr %185, i64 1
  %191 = load i16, ptr %189, align 2, !tbaa !88
  %192 = load i16, ptr %190, align 2, !tbaa !88
  %193 = icmp eq i16 %191, %192
  br i1 %193, label %183, label %226, !llvm.loop !201

194:                                              ; preds = %183, %180
  %195 = load ptr, ptr %86, align 8, !tbaa !139
  %196 = icmp eq ptr %195, null
  br i1 %196, label %226, label %197

197:                                              ; preds = %194
  %198 = load ptr, ptr %195, align 8, !tbaa !56
  %199 = getelementptr inbounds ptr, ptr %198, i64 13
  %200 = load ptr, ptr %199, align 8
  %201 = invoke noundef zeroext i1 %200(ptr noundef nonnull align 8 dereferenceable(40) %195)
          to label %202 unwind label %133

202:                                              ; preds = %197
  br i1 %201, label %203, label %226

203:                                              ; preds = %202
  %204 = icmp eq ptr %103, null
  br i1 %204, label %209, label %205

205:                                              ; preds = %203
  %206 = load i16, ptr %103, align 2, !tbaa !88
  %207 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_TRUEE, align 2, !tbaa !88
  %208 = icmp eq i16 %206, %207
  br i1 %208, label %212, label %226

209:                                              ; preds = %203
  %210 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_TRUEE, align 2, !tbaa !88
  %211 = icmp eq i16 %210, 0
  br i1 %211, label %223, label %226

212:                                              ; preds = %205, %217
  %213 = phi i16 [ %220, %217 ], [ %206, %205 ]
  %214 = phi ptr [ %219, %217 ], [ @_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_TRUEE, %205 ]
  %215 = phi ptr [ %218, %217 ], [ %103, %205 ]
  %216 = icmp eq i16 %213, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds i16, ptr %215, i64 1
  %219 = getelementptr inbounds i16, ptr %214, i64 1
  %220 = load i16, ptr %218, align 2, !tbaa !88
  %221 = load i16, ptr %219, align 2, !tbaa !88
  %222 = icmp eq i16 %220, %221
  br i1 %222, label %212, label %226, !llvm.loop !201

223:                                              ; preds = %212, %209
  %224 = load ptr, ptr %86, align 8, !tbaa !139
  %225 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %224, i64 0, i32 5
  store i8 1, ptr %225, align 8, !tbaa !288
  br label %226

226:                                              ; preds = %188, %217, %176, %205, %174, %223, %209, %202, %194, %180, %98
  %227 = add nuw nsw i32 %88, 1
  %228 = icmp eq i32 %227, %1
  br i1 %228, label %229, label %87, !llvm.loop !289

229:                                              ; preds = %226, %78
  %230 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %231 = load ptr, ptr %230, align 8, !tbaa !139
  %232 = icmp eq ptr %231, null
  br i1 %232, label %289, label %233

233:                                              ; preds = %229
  %234 = load ptr, ptr %231, align 8, !tbaa !56
  %235 = getelementptr inbounds ptr, ptr %234, i64 13
  %236 = load ptr, ptr %235, align 8
  %237 = invoke noundef zeroext i1 %236(ptr noundef nonnull align 8 dereferenceable(40) %231)
          to label %238 unwind label %283

238:                                              ; preds = %233
  %239 = load i32, ptr %75, align 8
  %240 = icmp ne i32 %239, 0
  %241 = select i1 %237, i1 %240, i1 false
  br i1 %241, label %242, label %289

242:                                              ; preds = %238
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store i32 -1, ptr %4, align 4, !tbaa !158
  %243 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %75, i64 0, i32 6
  %244 = load ptr, ptr %243, align 8, !tbaa !87
  %245 = zext i32 %239 to i64
  %246 = getelementptr inbounds i16, ptr %244, i64 %245
  store i16 0, ptr %246, align 2, !tbaa !88
  %247 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %248 = load ptr, ptr %0, align 8, !tbaa !56
  %249 = getelementptr inbounds ptr, ptr %248, i64 7
  %250 = load ptr, ptr %249, align 8
  %251 = invoke noundef i32 %250(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %244, ptr noundef nonnull align 8 dereferenceable(40) %247, i16 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %252 unwind label %285

252:                                              ; preds = %242
  %253 = load ptr, ptr %230, align 8, !tbaa !139
  %254 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %255 = load ptr, ptr %254, align 8, !tbaa !87
  %256 = load i32, ptr %247, align 8, !tbaa !82
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds i16, ptr %255, i64 %257
  store i16 0, ptr %258, align 2, !tbaa !88
  %259 = load ptr, ptr %243, align 8, !tbaa !87
  %260 = load i32, ptr %75, align 8, !tbaa !82
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds i16, ptr %259, i64 %261
  store i16 0, ptr %262, align 2, !tbaa !88
  %263 = load i32, ptr %4, align 4, !tbaa !158
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i16, ptr %259, i64 %264
  %266 = getelementptr inbounds i16, ptr %265, i64 1
  %267 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %253, i64 0, i32 4
  %268 = load ptr, ptr %267, align 8, !tbaa !290
  %269 = icmp eq ptr %268, null
  br i1 %269, label %274, label %270

270:                                              ; preds = %252
  %271 = load ptr, ptr %268, align 8, !tbaa !56
  %272 = getelementptr inbounds ptr, ptr %271, i64 1
  %273 = load ptr, ptr %272, align 8
  call void %273(ptr noundef nonnull align 8 dereferenceable(56) %268) #18
  br label %274

274:                                              ; preds = %270, %252
  %275 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %253, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !291
  %277 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %276)
          to label %278 unwind label %285

278:                                              ; preds = %274
  %279 = load ptr, ptr %275, align 8, !tbaa !291
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %277, ptr noundef %255, ptr noundef nonnull %266, i32 noundef %251, ptr noundef %279)
          to label %282 unwind label %280

280:                                              ; preds = %278
  %281 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %277, ptr noundef %276) #18
  br label %287

282:                                              ; preds = %278
  store ptr %277, ptr %267, align 8, !tbaa !290
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  br label %289

283:                                              ; preds = %233
  %284 = landingpad { ptr, i32 }
          cleanup
  br label %293

285:                                              ; preds = %274, %242
  %286 = landingpad { ptr, i32 }
          cleanup
  br label %287

287:                                              ; preds = %280, %285
  %288 = phi { ptr, i32 } [ %286, %285 ], [ %281, %280 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  br label %293

289:                                              ; preds = %282, %238, %229
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #18
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(40) %75)
          to label %301 unwind label %290

290:                                              ; preds = %289
  %291 = landingpad { ptr, i32 }
          catch ptr null
  %292 = extractvalue { ptr, i32 } %291, 0
  call void @__clang_call_terminate(ptr %292) #19
  unreachable

293:                                              ; preds = %127, %131, %133, %129, %287, %283
  %294 = phi { ptr, i32 } [ %288, %287 ], [ %284, %283 ], [ %128, %127 ], [ %130, %129 ], [ %134, %133 ], [ %132, %131 ]
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #18
  br label %295

295:                                              ; preds = %293, %125
  %296 = phi { ptr, i32 } [ %294, %293 ], [ %126, %125 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #18
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(40) %75)
          to label %300 unwind label %297

297:                                              ; preds = %295
  %298 = landingpad { ptr, i32 }
          catch ptr null
  %299 = extractvalue { ptr, i32 } %298, 0
  call void @__clang_call_terminate(ptr %299) #19
  unreachable

300:                                              ; preds = %295
  resume { ptr, i32 } %296

301:                                              ; preds = %289, %69
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712SGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef signext %3, i32 noundef %4) local_unnamed_addr #3 align 2 !prof !55 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = icmp eq i32 %4, -1
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #18
  store i8 0, ptr %6, align 1, !tbaa !150
  store i32 0, ptr %2, align 8, !tbaa !82
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  store i16 0, ptr %11, align 2, !tbaa !88
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %13 = sext i16 %3 to i32
  %14 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %12, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #18
  br label %76

15:                                               ; preds = %5
  store i32 0, ptr %2, align 8, !tbaa !82
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %1, i32 noundef %4)
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = load i32, ptr %2, align 8, !tbaa !82
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i16, ptr %17, i64 %19
  store i16 0, ptr %20, align 2, !tbaa !88
  %21 = icmp eq ptr %17, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load i16, ptr %17, align 2, !tbaa !88
  %24 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !88
  %25 = icmp eq i16 %23, %24
  br i1 %25, label %29, label %46

26:                                               ; preds = %15
  %27 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !88
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %40, label %46

29:                                               ; preds = %22, %34
  %30 = phi i16 [ %37, %34 ], [ %23, %22 ]
  %31 = phi ptr [ %36, %34 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %22 ]
  %32 = phi ptr [ %35, %34 ], [ %17, %22 ]
  %33 = icmp eq i16 %30, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = getelementptr inbounds i16, ptr %31, i64 1
  %37 = load i16, ptr %35, align 2, !tbaa !88
  %38 = load i16, ptr %36, align 2, !tbaa !88
  %39 = icmp eq i16 %37, %38
  br i1 %39, label %29, label %46, !llvm.loop !201

40:                                               ; preds = %29, %26
  %41 = icmp eq i16 %3, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 305, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %43

43:                                               ; preds = %42, %40
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %45 = load i32, ptr %44, align 8, !tbaa !292
  br label %76

46:                                               ; preds = %34, %22, %26
  br i1 %21, label %51, label %47

47:                                               ; preds = %46
  %48 = load i16, ptr %17, align 2, !tbaa !88
  %49 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !88
  %50 = icmp eq i16 %48, %49
  br i1 %50, label %54, label %68

51:                                               ; preds = %46
  %52 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !88
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %65, label %68

54:                                               ; preds = %47, %59
  %55 = phi i16 [ %62, %59 ], [ %48, %47 ]
  %56 = phi ptr [ %61, %59 ], [ @_ZN11xercesc_2_76XMLUni11fgXMLStringE, %47 ]
  %57 = phi ptr [ %60, %59 ], [ %17, %47 ]
  %58 = icmp eq i16 %55, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds i16, ptr %57, i64 1
  %61 = getelementptr inbounds i16, ptr %56, i64 1
  %62 = load i16, ptr %60, align 2, !tbaa !88
  %63 = load i16, ptr %61, align 2, !tbaa !88
  %64 = icmp eq i16 %62, %63
  br i1 %64, label %54, label %68, !llvm.loop !201

65:                                               ; preds = %54, %51
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %67 = load i32, ptr %66, align 4, !tbaa !293
  br label %76

68:                                               ; preds = %59, %47, %51
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #18
  store i8 0, ptr %7, align 1, !tbaa !150
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %70 = sext i16 %3 to i32
  %71 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %69, ptr noundef %17, i32 noundef %70, ptr noundef nonnull align 1 dereferenceable(1) %7)
  %72 = load i8, ptr %7, align 1, !tbaa !150, !range !147, !noundef !148
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 277, ptr noundef %17, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %75

75:                                               ; preds = %74, %68
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #18
  br label %76

76:                                               ; preds = %43, %65, %75, %9
  %77 = phi i32 [ %14, %9 ], [ %45, %43 ], [ %67, %65 ], [ %71, %75 ]
  ret i32 %77
}

declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner20laxElementValidationEPNS_5QNameEPNS_25ContentLeafNameTypeVectorEPKNS_15XMLContentModelEj(ptr nocapture noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %6 = alloca %"class.xercesc_2_7::SubstitutionGroupComparator", align 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !237
  %9 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = zext i32 %4 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !158
  %14 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4, !tbaa !158
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %143, label %16

16:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %18 = load ptr, ptr %17, align 8, !tbaa !259
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %20 = load ptr, ptr %19, align 8, !tbaa !236
  store ptr %18, ptr %6, align 8, !tbaa !294
  %21 = getelementptr inbounds %"class.xercesc_2_7::SubstitutionGroupComparator", ptr %6, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !296
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
  %34 = load i32, ptr %33, align 4, !tbaa !237
  %35 = call noundef i32 @_ZNK11xercesc_2_725ContentLeafNameTypeVector13getLeafTypeAtEj(ptr noundef nonnull align 8 dereferenceable(28) %2, i32 noundef %31)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %80

37:                                               ; preds = %28
  %38 = icmp eq i32 %34, %8
  br i1 %38, label %39, label %69

39:                                               ; preds = %37
  %40 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %32, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !235
  %42 = load ptr, ptr %27, align 8, !tbaa !235
  %43 = icmp eq ptr %41, null
  %44 = icmp eq ptr %42, null
  %45 = or i1 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load i16, ptr %41, align 2, !tbaa !88
  %48 = load i16, ptr %42, align 2, !tbaa !88
  %49 = icmp eq i16 %47, %48
  br i1 %49, label %58, label %69

50:                                               ; preds = %39
  br i1 %43, label %54, label %51

51:                                               ; preds = %50
  %52 = load i16, ptr %41, align 2, !tbaa !88
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %51, %50
  br i1 %44, label %71, label %55

55:                                               ; preds = %54
  %56 = load i16, ptr %42, align 2, !tbaa !88
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
  %66 = load i16, ptr %64, align 2, !tbaa !88
  %67 = load i16, ptr %65, align 2, !tbaa !88
  %68 = icmp eq i16 %66, %67
  br i1 %68, label %58, label %69, !llvm.loop !201

69:                                               ; preds = %63, %46, %55, %51, %37
  %70 = call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %1, ptr noundef nonnull %32)
  br i1 %70, label %71, label %103

71:                                               ; preds = %58, %55, %54, %69
  %72 = load ptr, ptr %3, align 8, !tbaa !56
  %73 = getelementptr inbounds ptr, ptr %72, i64 6
  %74 = load ptr, ptr %73, align 8
  %75 = call noundef i32 %74(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %13, i32 noundef %31)
  %76 = icmp eq i32 %75, %14
  br i1 %76, label %103, label %77

77:                                               ; preds = %71
  %78 = load ptr, ptr %9, align 8, !tbaa !81
  %79 = getelementptr inbounds i32, ptr %78, i64 %11
  store i32 %75, ptr %79, align 4, !tbaa !158
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
  %89 = load ptr, ptr %3, align 8, !tbaa !56
  %90 = getelementptr inbounds ptr, ptr %89, i64 6
  %91 = load ptr, ptr %90, align 8
  %92 = call noundef i32 %91(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %13, i32 noundef %31)
  %93 = icmp eq i32 %92, %14
  br i1 %93, label %103, label %94

94:                                               ; preds = %88
  %95 = load ptr, ptr %9, align 8, !tbaa !81
  %96 = getelementptr inbounds i32, ptr %95, i64 %11
  store i32 %92, ptr %96, align 4, !tbaa !158
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
  br i1 %109, label %110, label %28, !llvm.loop !297

110:                                              ; preds = %107, %103, %23
  %111 = phi i32 [ 0, %23 ], [ %24, %107 ], [ %31, %103 ]
  %112 = phi i8 [ 0, %23 ], [ %105, %103 ], [ %105, %107 ]
  %113 = phi i8 [ 0, %23 ], [ %106, %103 ], [ %106, %107 ]
  %114 = icmp eq i32 %111, %24
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load ptr, ptr %9, align 8, !tbaa !81
  %117 = getelementptr inbounds i32, ptr %116, i64 %11
  store i32 %14, ptr %117, align 4, !tbaa !158
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
  store i8 0, ptr %128, align 8, !tbaa !146
  %129 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !185
  %131 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %132 = load i32, ptr %131, align 4, !tbaa !152
  %133 = add i32 %132, -1
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds ptr, ptr %130, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !118
  %137 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %136, i64 0, i32 8
  store i8 0, ptr %137, align 8, !tbaa !224
  br label %138

138:                                              ; preds = %127, %122
  %139 = and i8 %123, 1
  %140 = icmp ne i8 %139, 0
  br label %141

141:                                              ; preds = %120, %138
  %142 = phi i1 [ %140, %138 ], [ %121, %120 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %143

143:                                              ; preds = %5, %141
  %144 = phi i1 [ %142, %141 ], [ false, %5 ]
  ret i1 %144
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner13switchGrammarEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !259
  %5 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1)
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8
  %9 = select i1 %6, ptr %8, ptr %5
  %10 = icmp ne ptr %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %9, ptr %12, align 8, !tbaa !223
  %13 = load ptr, ptr %9, align 8, !tbaa !56
  %14 = getelementptr inbounds ptr, ptr %13, i64 5
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %9)
  %17 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  store i32 %16, ptr %17, align 4, !tbaa !79
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %22 = load ptr, ptr %21, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 4510, i32 noundef 44, ptr noundef %22)
          to label %23 unwind label %24

23:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %20) #18
  resume { ptr, i32 } %25

26:                                               ; preds = %11
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %28 = load ptr, ptr %27, align 8, !tbaa !139
  %29 = load ptr, ptr %12, align 8, !tbaa !223
  %30 = load ptr, ptr %28, align 8, !tbaa !56
  %31 = getelementptr inbounds ptr, ptr %30, i64 11
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef %29)
  br label %33

33:                                               ; preds = %2, %26
  ret i1 %10
}

declare void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 comdat align 2 !prof !298 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %7 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9, !prof !299

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !300, !range !147, !noundef !148
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 8, !tbaa !244
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !56
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  call void %19(ptr noundef nonnull align 8 dereferenceable(147) %14) #18
  br label %20

20:                                               ; preds = %13, %16, %9
  store ptr %4, ptr %7, align 8, !tbaa !244
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 2
  store ptr %1, ptr %21, align 8, !tbaa !302
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 3
  store i32 %2, ptr %22, align 8, !tbaa !303
  %23 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 4
  store i32 %3, ptr %23, align 4, !tbaa !304
  br label %40

24:                                               ; preds = %5
  %25 = load ptr, ptr %0, align 8, !tbaa !305
  %26 = load ptr, ptr %25, align 8, !tbaa !56
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 32), !prof !306
  %30 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !307
  %32 = load i32, ptr %6, align 4, !tbaa !158
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !118
  store ptr %4, ptr %29, align 8, !tbaa !244
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %29, i64 0, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !308
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %29, i64 0, i32 2
  store ptr %1, ptr %37, align 8, !tbaa !302
  %38 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %29, i64 0, i32 3
  store i32 %2, ptr %38, align 8, !tbaa !303
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %29, i64 0, i32 4
  store i32 %3, ptr %39, align 4, !tbaa !304
  store ptr %29, ptr %34, align 8, !tbaa !118
  br label %40

40:                                               ; preds = %24, %20
  %41 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !309
  %43 = add i32 %42, 1
  %44 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !310
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %68, !prof !311

47:                                               ; preds = %40
  %48 = uitofp i32 %45 to double
  %49 = fmul double %48, 1.500000e+00
  %50 = fptoui double %49 to i32
  %51 = load ptr, ptr %0, align 8, !tbaa !305
  %52 = zext i32 %50 to i64
  %53 = shl nuw nsw i64 %52, 3
  %54 = load ptr, ptr %51, align 8, !tbaa !56
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef %53)
  %58 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !312
  %60 = load i32, ptr %44, align 8, !tbaa !310
  %61 = zext i32 %60 to i64
  %62 = shl nuw nsw i64 %61, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %57, ptr align 8 %59, i64 %62, i1 false)
  %63 = load ptr, ptr %0, align 8, !tbaa !305
  %64 = load ptr, ptr %58, align 8, !tbaa !312
  %65 = load ptr, ptr %63, align 8, !tbaa !56
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  call void %67(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef %64)
  store ptr %57, ptr %58, align 8, !tbaa !312
  store i32 %50, ptr %44, align 8, !tbaa !310
  br label %68

68:                                               ; preds = %47, %40
  %69 = load i32, ptr %41, align 4, !tbaa !309
  %70 = add i32 %69, 1
  store i32 %70, ptr %41, align 4, !tbaa !309
  %71 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !312
  %73 = zext i32 %70 to i64
  %74 = getelementptr inbounds ptr, ptr %72, i64 %73
  store ptr %4, ptr %74, align 8, !tbaa !118
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %4, i64 0, i32 4
  store i32 %70, ptr %75, align 4, !tbaa !246
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  ret i32 %70
}

declare void @_ZN11xercesc_2_79ElemStack10setElementEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 comdat align 2 !prof !313 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %22, label %5, !prof !314

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !82
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !83
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %12, label %11, !prof !315

11:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2)
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  %15 = load i32, ptr %0, align 8, !tbaa !82
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i16, ptr %14, i64 %16
  %18 = zext i32 %2 to i64
  %19 = shl nuw nsw i64 %18, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %17, ptr align 2 %1, i64 %19, i1 false), !prof !316
  %20 = load i32, ptr %0, align 8, !tbaa !82
  %21 = add i32 %20, %2
  store i32 %21, ptr %0, align 8, !tbaa !82
  br label %23

22:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1)
  br label %23

23:                                               ; preds = %22, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner15resizeElemStateEv(ptr nocapture noundef nonnull align 8 dereferenceable(1000) %0) local_unnamed_addr #3 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !80
  %4 = shl i32 %3, 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = zext i32 %4 to i64
  %8 = shl nuw nsw i64 %7, 2
  %9 = load ptr, ptr %6, align 8, !tbaa !56
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  %13 = load i32, ptr %2, align 8, !tbaa !80
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !81
  br label %32

18:                                               ; preds = %32
  %19 = trunc i64 %37 to i32
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi i32 [ 0, %1 ], [ %19, %18 ]
  %22 = icmp ult i32 %21, %4
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = zext i32 %21 to i64
  %25 = shl nuw nsw i64 %24, 2
  %26 = getelementptr i8, ptr %12, i64 %25
  %27 = xor i32 %21, -1
  %28 = add i32 %4, %27
  %29 = zext i32 %28 to i64
  %30 = shl nuw nsw i64 %29, 2
  %31 = add nuw nsw i64 %30, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %26, i8 0, i64 %31, i1 false), !tbaa !158
  br label %41

32:                                               ; preds = %15, %32
  %33 = phi i64 [ 0, %15 ], [ %37, %32 ]
  %34 = getelementptr inbounds i32, ptr %17, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !158
  %36 = getelementptr inbounds i32, ptr %12, i64 %33
  store i32 %35, ptr %36, align 4, !tbaa !158
  %37 = add nuw nsw i64 %33, 1
  %38 = load i32, ptr %2, align 8, !tbaa !80
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %32, label %18, !llvm.loop !317

41:                                               ; preds = %23, %20
  %42 = load ptr, ptr %5, align 8, !tbaa !91
  %43 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !81
  %45 = load ptr, ptr %42, align 8, !tbaa !56
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef %44)
  store ptr %12, ptr %43, align 8, !tbaa !81
  store i32 %4, ptr %2, align 8, !tbaa !80
  ret void
}

declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712SGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %11 = alloca [100 x i16], align 16
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %15 = load i8, ptr %14, align 8, !tbaa !146, !range !147, !noundef !148
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %19 = load ptr, ptr %18, align 8, !tbaa !139
  %20 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %19, i64 0, i32 14
  %21 = load ptr, ptr %20, align 8, !tbaa !190
  %22 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.8", ptr %21, i64 0, i32 1, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !194
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %21)
  %27 = load ptr, ptr %26, align 8, !tbaa !118
  br label %28

28:                                               ; preds = %17, %25
  %29 = phi ptr [ %27, %25 ], [ null, %17 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load ptr, ptr %18, align 8, !tbaa !139
  %33 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %32, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !197
  br label %35

35:                                               ; preds = %28, %31, %5
  %36 = phi ptr [ %29, %28 ], [ null, %31 ], [ null, %5 ]
  %37 = phi ptr [ null, %28 ], [ %34, %31 ], [ null, %5 ]
  %38 = icmp eq ptr %36, null
  %39 = load i8, ptr %14, align 8, !range !147
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %36, i64 0, i32 24
  %44 = load ptr, ptr %43, align 8, !tbaa !318
  %45 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.12", ptr %44, i64 0, i32 4
  %46 = load i32, ptr %45, align 4, !tbaa !319
  %47 = icmp ne i32 %46, 0
  br label %53

48:                                               ; preds = %35
  %49 = load ptr, ptr %3, align 8, !tbaa !56
  %50 = getelementptr inbounds ptr, ptr %49, i64 8
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef zeroext i1 %51(ptr noundef nonnull align 8 dereferenceable(33) %3)
  br label %53

53:                                               ; preds = %48, %42
  %54 = phi i1 [ %47, %42 ], [ %52, %48 ]
  %55 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 14
  %56 = load i32, ptr %55, align 8, !tbaa !321
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 8, !tbaa !321
  %58 = icmp ne i32 %2, 0
  %59 = or i1 %58, %54
  br i1 %59, label %60, label %1108

60:                                               ; preds = %53
  %61 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %4, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !322
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %64 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %63)
  %65 = icmp eq i32 %2, 0
  br i1 %65, label %843, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %10, i64 0, i32 1
  %68 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 9
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %71 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  %72 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %36, i64 0, i32 24
  %73 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %36, i64 0, i32 21
  %74 = icmp eq ptr %37, null
  %75 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %3, i64 0, i32 17
  %76 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 16
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %3, i64 0, i32 2
  %78 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 1
  %79 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 15
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %3, i64 0, i32 2
  %81 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 1
  %82 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 1
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %3, i64 0, i32 2
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %64, i64 0, i32 6
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %64, i64 0, i32 6
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  %91 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 6
  %92 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %94 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 1
  %95 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %96 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %97 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 17
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %99 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %103 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %104 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 17
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %106 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %109 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %64, i64 0, i32 6
  %110 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %4, i64 0, i32 4
  %111 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %64, i64 0, i32 6
  %112 = zext i32 %2 to i64
  br label %113

113:                                              ; preds = %66, %838
  %114 = phi i64 [ 0, %66 ], [ %839, %838 ]
  %115 = trunc i64 %114 to i32
  %116 = trunc i64 %114 to i32
  %117 = invoke noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %116)
          to label %118 unwind label %148

118:                                              ; preds = %113
  %119 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %117, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %11) #18
  %121 = load ptr, ptr %68, align 8, !tbaa !95
  %122 = getelementptr inbounds i32, ptr %121, i64 %114
  %123 = load i32, ptr %122, align 4, !tbaa !158
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %197, label %125

125:                                              ; preds = %118
  %126 = icmp eq ptr %120, null
  br i1 %126, label %141, label %127

127:                                              ; preds = %125
  %128 = load i16, ptr %120, align 2, !tbaa !88
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %127, %130
  %131 = phi ptr [ %132, %130 ], [ %120, %127 ]
  %132 = getelementptr inbounds i16, ptr %131, i64 1
  %133 = load i16, ptr %132, align 2, !tbaa !88
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %130, !llvm.loop !249

135:                                              ; preds = %130
  %136 = ptrtoint ptr %132 to i64
  %137 = ptrtoint ptr %120 to i64
  %138 = sub i64 %136, %137
  %139 = lshr exact i64 %138, 1
  %140 = trunc i64 %139 to i32
  br label %141

141:                                              ; preds = %125, %127, %135
  %142 = phi i32 [ %140, %135 ], [ 0, %127 ], [ 0, %125 ]
  %143 = icmp ult i32 %142, 100
  br i1 %143, label %144, label %152

144:                                              ; preds = %141
  invoke void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %11, ptr noundef %120)
          to label %145 unwind label %150

145:                                              ; preds = %144
  %146 = sext i32 %123 to i64
  %147 = getelementptr inbounds [100 x i16], ptr %11, i64 0, i64 %146
  br label %191

148:                                              ; preds = %113
  %149 = landingpad { ptr, i32 }
          cleanup
  br label %1102

150:                                              ; preds = %183, %168, %144
  %151 = landingpad { ptr, i32 }
          cleanup
  br label %841

152:                                              ; preds = %141
  %153 = load ptr, ptr %69, align 8, !tbaa !91
  br i1 %126, label %175, label %154

154:                                              ; preds = %152
  %155 = load i16, ptr %120, align 2, !tbaa !88
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %168, label %157

157:                                              ; preds = %154, %157
  %158 = phi ptr [ %159, %157 ], [ %120, %154 ]
  %159 = getelementptr inbounds i16, ptr %158, i64 1
  %160 = load i16, ptr %159, align 2, !tbaa !88
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %162, label %157, !llvm.loop !249

162:                                              ; preds = %157
  %163 = ptrtoint ptr %159 to i64
  %164 = ptrtoint ptr %120 to i64
  %165 = sub i64 %163, %164
  %166 = add i64 %165, 2
  %167 = and i64 %166, 8589934590
  br label %168

168:                                              ; preds = %162, %154
  %169 = phi i64 [ %167, %162 ], [ 2, %154 ]
  %170 = load ptr, ptr %153, align 8, !tbaa !56
  %171 = getelementptr inbounds ptr, ptr %170, i64 2
  %172 = load ptr, ptr %171, align 8
  %173 = invoke noundef ptr %172(ptr noundef nonnull align 8 dereferenceable(8) %153, i64 noundef %169)
          to label %174 unwind label %150

174:                                              ; preds = %168
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %173, ptr nonnull align 2 %120, i64 %169, i1 false)
  br label %175

175:                                              ; preds = %174, %152
  %176 = phi ptr [ %173, %174 ], [ null, %152 ]
  %177 = load ptr, ptr %69, align 8, !tbaa !91
  %178 = load ptr, ptr %10, align 8, !tbaa !324
  %179 = icmp eq ptr %178, null
  br i1 %179, label %188, label %180

180:                                              ; preds = %175
  %181 = load ptr, ptr %67, align 8, !tbaa !326
  %182 = icmp eq ptr %181, null
  br i1 %182, label %187, label %183

183:                                              ; preds = %180
  %184 = load ptr, ptr %181, align 8, !tbaa !56
  %185 = getelementptr inbounds ptr, ptr %184, i64 3
  %186 = load ptr, ptr %185, align 8
  invoke void %186(ptr noundef nonnull align 8 dereferenceable(8) %181, ptr noundef nonnull %178)
          to label %188 unwind label %150

187:                                              ; preds = %180
  call void @_ZdaPv(ptr noundef %178) #21
  br label %188

188:                                              ; preds = %183, %175, %187
  store ptr %176, ptr %10, align 8, !tbaa !324
  store ptr %177, ptr %67, align 8, !tbaa !326
  %189 = sext i32 %123 to i64
  %190 = getelementptr inbounds i16, ptr %176, i64 %189
  br label %191

191:                                              ; preds = %188, %145
  %192 = phi ptr [ %190, %188 ], [ %147, %145 ]
  %193 = phi ptr [ %176, %188 ], [ %11, %145 ]
  store i16 0, ptr %192, align 2, !tbaa !88
  %194 = sext i32 %123 to i64
  %195 = getelementptr inbounds i16, ptr %120, i64 %194
  %196 = getelementptr inbounds i16, ptr %195, i64 1
  br label %197

197:                                              ; preds = %118, %191
  %198 = phi ptr [ %196, %191 ], [ %120, %118 ]
  %199 = phi ptr [ %193, %191 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %118 ]
  %200 = invoke noundef i32 @_ZN11xercesc_2_712SGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %199, i32 noundef 0)
          to label %201 unwind label %259

201:                                              ; preds = %197
  %202 = load i32, ptr %70, align 8, !tbaa !292
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %735, label %204

204:                                              ; preds = %201
  %205 = icmp eq ptr %198, null
  br i1 %205, label %210, label %206

206:                                              ; preds = %204
  %207 = load i16, ptr %198, align 2, !tbaa !88
  %208 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !88
  %209 = icmp eq i16 %207, %208
  br i1 %209, label %213, label %224

210:                                              ; preds = %204
  %211 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !88
  %212 = icmp eq i16 %211, 0
  br i1 %212, label %735, label %224

213:                                              ; preds = %206, %218
  %214 = phi i16 [ %221, %218 ], [ %207, %206 ]
  %215 = phi ptr [ %220, %218 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %206 ]
  %216 = phi ptr [ %219, %218 ], [ %198, %206 ]
  %217 = icmp eq i16 %214, 0
  br i1 %217, label %735, label %218

218:                                              ; preds = %213
  %219 = getelementptr inbounds i16, ptr %216, i64 1
  %220 = getelementptr inbounds i16, ptr %215, i64 1
  %221 = load i16, ptr %219, align 2, !tbaa !88
  %222 = load i16, ptr %220, align 2, !tbaa !88
  %223 = icmp eq i16 %221, %222
  br i1 %223, label %213, label %224, !llvm.loop !201

224:                                              ; preds = %218, %206, %210
  %225 = invoke noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %200)
          to label %226 unwind label %261

226:                                              ; preds = %224
  %227 = icmp eq ptr %225, null
  br i1 %227, label %232, label %228

228:                                              ; preds = %226
  %229 = load i16, ptr %225, align 2, !tbaa !88
  %230 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, align 2, !tbaa !88
  %231 = icmp eq i16 %229, %230
  br i1 %231, label %235, label %246

232:                                              ; preds = %226
  %233 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, align 2, !tbaa !88
  %234 = icmp eq i16 %233, 0
  br i1 %234, label %735, label %246

235:                                              ; preds = %228, %240
  %236 = phi i16 [ %243, %240 ], [ %229, %228 ]
  %237 = phi ptr [ %242, %240 ], [ @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, %228 ]
  %238 = phi ptr [ %241, %240 ], [ %225, %228 ]
  %239 = icmp eq i16 %236, 0
  br i1 %239, label %735, label %240

240:                                              ; preds = %235
  %241 = getelementptr inbounds i16, ptr %238, i64 1
  %242 = getelementptr inbounds i16, ptr %237, i64 1
  %243 = load i16, ptr %241, align 2, !tbaa !88
  %244 = load i16, ptr %242, align 2, !tbaa !88
  %245 = icmp eq i16 %243, %244
  br i1 %245, label %235, label %246, !llvm.loop !201

246:                                              ; preds = %240, %228, %232
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #18
  store i8 0, ptr %12, align 1, !tbaa !150
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #18
  store i8 0, ptr %13, align 1, !tbaa !150
  %247 = load i32, ptr %71, align 4, !tbaa !79
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %249, label %389

249:                                              ; preds = %246
  br i1 %38, label %265, label %250

250:                                              ; preds = %249
  %251 = load ptr, ptr %72, align 8, !tbaa !318
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  %252 = invoke noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %251, ptr noundef %198, i32 noundef %200, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %253 unwind label %263

253:                                              ; preds = %250
  %254 = icmp eq ptr %252, null
  br i1 %254, label %257, label %255

255:                                              ; preds = %253
  %256 = load ptr, ptr %252, align 8, !tbaa !327
  br label %257

257:                                              ; preds = %253, %255
  %258 = phi ptr [ %256, %255 ], [ null, %253 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  br label %266

259:                                              ; preds = %197
  %260 = landingpad { ptr, i32 }
          cleanup
  br label %841

261:                                              ; preds = %224
  %262 = landingpad { ptr, i32 }
          cleanup
  br label %841

263:                                              ; preds = %356, %330, %250, %381, %374, %355, %348, %325, %316, %280
  %264 = landingpad { ptr, i32 }
          cleanup
  br label %733

265:                                              ; preds = %249
  br i1 %74, label %266, label %270

266:                                              ; preds = %265, %257
  %267 = phi ptr [ %73, %257 ], [ %75, %265 ]
  %268 = phi ptr [ %258, %257 ], [ null, %265 ]
  %269 = load ptr, ptr %267, align 8, !tbaa !118
  br label %270

270:                                              ; preds = %266, %265
  %271 = phi ptr [ null, %265 ], [ %269, %266 ]
  %272 = phi ptr [ null, %265 ], [ %268, %266 ]
  %273 = icmp eq ptr %272, null
  br i1 %273, label %278, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %272, i64 0, i32 3
  %276 = load i32, ptr %275, align 8, !tbaa !329
  %277 = icmp eq i32 %276, 1
  br i1 %277, label %278, label %389

278:                                              ; preds = %274, %270
  %279 = icmp eq ptr %271, null
  br i1 %279, label %311, label %280

280:                                              ; preds = %278
  %281 = invoke noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner22anyAttributeValidationEPNS_12SchemaAttDefEjRbS3_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull %271, i32 noundef %200, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %282 unwind label %263

282:                                              ; preds = %280
  %283 = load i8, ptr %13, align 1, !range !147
  %284 = icmp eq i8 %283, 0
  %285 = select i1 %281, i1 %284, i1 false
  br i1 %285, label %286, label %389

286:                                              ; preds = %282
  %287 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %288 = load ptr, ptr %287, align 8, !tbaa !259
  %289 = invoke noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %200)
          to label %290 unwind label %307

290:                                              ; preds = %286
  %291 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %288, ptr noundef %289)
          to label %292 unwind label %307

292:                                              ; preds = %290
  %293 = icmp eq ptr %291, null
  br i1 %293, label %389, label %294

294:                                              ; preds = %292
  %295 = load ptr, ptr %291, align 8, !tbaa !56
  %296 = getelementptr inbounds ptr, ptr %295, i64 5
  %297 = load ptr, ptr %296, align 8
  %298 = invoke noundef i32 %297(ptr noundef nonnull align 8 dereferenceable(160) %291)
          to label %299 unwind label %307

299:                                              ; preds = %294
  %300 = icmp eq i32 %298, 1
  br i1 %300, label %301, label %389

301:                                              ; preds = %299
  %302 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %291, i64 0, i32 6
  %303 = load ptr, ptr %302, align 8, !tbaa !334
  %304 = icmp eq ptr %303, null
  br i1 %304, label %389, label %305

305:                                              ; preds = %301
  %306 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %303, ptr noundef %198)
          to label %389 unwind label %309

307:                                              ; preds = %294, %290, %286
  %308 = landingpad { ptr, i32 }
          cleanup
  br label %733

309:                                              ; preds = %305
  %310 = landingpad { ptr, i32 }
          cleanup
  br label %733

311:                                              ; preds = %278
  br i1 %38, label %389, label %312

312:                                              ; preds = %311
  %313 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %314 = load i32, ptr %313, align 4, !tbaa !243
  %315 = icmp eq i32 %200, %314
  br i1 %315, label %316, label %356

316:                                              ; preds = %312
  %317 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %318 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %319 = load ptr, ptr %317, align 8, !tbaa !236
  %320 = load ptr, ptr %318, align 8, !tbaa !223
  %321 = load ptr, ptr %320, align 8, !tbaa !56
  %322 = getelementptr inbounds ptr, ptr %321, i64 6
  %323 = load ptr, ptr %322, align 8
  %324 = invoke noundef ptr %323(ptr noundef nonnull align 8 dereferenceable(8) %320)
          to label %325 unwind label %263

325:                                              ; preds = %316
  %326 = load ptr, ptr %319, align 8, !tbaa !56
  %327 = getelementptr inbounds ptr, ptr %326, i64 9
  %328 = load ptr, ptr %327, align 8
  %329 = invoke noundef i32 %328(ptr noundef nonnull align 8 dereferenceable(40) %319, ptr noundef %324)
          to label %330 unwind label %263

330:                                              ; preds = %325
  %331 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %36, i64 0, i32 24
  %332 = load ptr, ptr %331, align 8, !tbaa !318
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  %333 = invoke noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %332, ptr noundef %198, i32 noundef %329, ptr noundef nonnull align 4 dereferenceable(4) %8)
          to label %334 unwind label %263

334:                                              ; preds = %330
  %335 = icmp eq ptr %333, null
  br i1 %335, label %338, label %336

336:                                              ; preds = %334
  %337 = load ptr, ptr %333, align 8, !tbaa !327
  br label %338

338:                                              ; preds = %334, %336
  %339 = phi ptr [ %337, %336 ], [ null, %334 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  %340 = load i8, ptr %14, align 8, !tbaa !146, !range !147, !noundef !148
  %341 = icmp ne i8 %340, 0
  %342 = icmp ne ptr %339, null
  %343 = and i1 %342, %341
  br i1 %343, label %344, label %389

344:                                              ; preds = %338
  %345 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %339, i64 0, i32 3
  %346 = load i32, ptr %345, align 8, !tbaa !329
  %347 = icmp eq i32 %346, 1
  br i1 %347, label %389, label %348

348:                                              ; preds = %344
  %349 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %350 = load ptr, ptr %349, align 8, !tbaa !139
  %351 = load ptr, ptr %339, align 8, !tbaa !56
  %352 = getelementptr inbounds ptr, ptr %351, i64 5
  %353 = load ptr, ptr %352, align 8
  %354 = invoke noundef ptr %353(ptr noundef nonnull align 8 dereferenceable(56) %339)
          to label %355 unwind label %263

355:                                              ; preds = %348
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %350, i32 noundef 95, ptr noundef %354, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %382 unwind label %263

356:                                              ; preds = %312
  %357 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %36, i64 0, i32 24
  %358 = load ptr, ptr %357, align 8, !tbaa !318
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  %359 = invoke noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %358, ptr noundef %198, i32 noundef %314, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %360 unwind label %263

360:                                              ; preds = %356
  %361 = icmp eq ptr %359, null
  br i1 %361, label %364, label %362

362:                                              ; preds = %360
  %363 = load ptr, ptr %359, align 8, !tbaa !327
  br label %364

364:                                              ; preds = %360, %362
  %365 = phi ptr [ %363, %362 ], [ null, %360 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  %366 = load i8, ptr %14, align 8, !tbaa !146, !range !147, !noundef !148
  %367 = icmp ne i8 %366, 0
  %368 = icmp ne ptr %365, null
  %369 = and i1 %368, %367
  br i1 %369, label %370, label %389

370:                                              ; preds = %364
  %371 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %365, i64 0, i32 3
  %372 = load i32, ptr %371, align 8, !tbaa !329
  %373 = icmp eq i32 %372, 1
  br i1 %373, label %389, label %374

374:                                              ; preds = %370
  %375 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %376 = load ptr, ptr %375, align 8, !tbaa !139
  %377 = load ptr, ptr %365, align 8, !tbaa !56
  %378 = getelementptr inbounds ptr, ptr %377, i64 5
  %379 = load ptr, ptr %378, align 8
  %380 = invoke noundef ptr %379(ptr noundef nonnull align 8 dereferenceable(56) %365)
          to label %381 unwind label %263

381:                                              ; preds = %374
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %376, i32 noundef 96, ptr noundef %380, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %382 unwind label %263

382:                                              ; preds = %381, %355
  %383 = phi ptr [ %339, %355 ], [ %365, %381 ]
  %384 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %385 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 1
  store i8 1, ptr %385, align 1, !tbaa !187
  %386 = load ptr, ptr %384, align 8, !tbaa !199
  %387 = icmp eq ptr %386, null
  %388 = select i1 %387, i32 2, i32 1
  br label %389

389:                                              ; preds = %382, %274, %311, %364, %370, %338, %344, %282, %301, %305, %299, %292, %246
  %390 = phi ptr [ null, %246 ], [ %272, %282 ], [ %339, %344 ], [ %339, %338 ], [ %365, %370 ], [ %365, %364 ], [ %272, %311 ], [ %272, %274 ], [ %272, %301 ], [ %272, %305 ], [ %272, %299 ], [ %272, %292 ], [ %383, %382 ]
  %391 = phi ptr [ null, %246 ], [ null, %282 ], [ null, %344 ], [ null, %338 ], [ null, %370 ], [ null, %364 ], [ null, %311 ], [ null, %274 ], [ null, %301 ], [ %306, %305 ], [ null, %299 ], [ null, %292 ], [ null, %382 ]
  %392 = phi i32 [ 2, %246 ], [ 2, %282 ], [ 2, %344 ], [ 2, %338 ], [ 2, %370 ], [ 2, %364 ], [ 2, %311 ], [ 2, %274 ], [ 2, %301 ], [ 2, %305 ], [ 2, %299 ], [ 2, %292 ], [ %388, %382 ]
  %393 = icmp ne ptr %390, null
  br i1 %393, label %394, label %421

394:                                              ; preds = %389
  %395 = load ptr, ptr %79, align 8, !tbaa !99
  %396 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %395, ptr noundef nonnull %390)
          to label %397 unwind label %404

397:                                              ; preds = %394
  %398 = icmp eq ptr %396, null
  br i1 %398, label %399, label %406

399:                                              ; preds = %397
  %400 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner13getNewUIntPtrEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %401 unwind label %404

401:                                              ; preds = %399
  %402 = load i32, ptr %55, align 8, !tbaa !321
  store i32 %402, ptr %400, align 4, !tbaa !158
  %403 = load ptr, ptr %79, align 8, !tbaa !99
  invoke void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %403, ptr noundef nonnull %390, ptr noundef nonnull %400)
          to label %435 unwind label %404

404:                                              ; preds = %416, %419, %411, %401, %399, %394
  %405 = landingpad { ptr, i32 }
          cleanup
  br label %733

406:                                              ; preds = %397
  %407 = load i32, ptr %396, align 4, !tbaa !158
  %408 = load i32, ptr %55, align 8, !tbaa !321
  %409 = icmp ult i32 %407, %408
  br i1 %409, label %410, label %411

410:                                              ; preds = %406
  store i32 %408, ptr %396, align 4, !tbaa !158
  br label %435

411:                                              ; preds = %406
  %412 = load ptr, ptr %390, align 8, !tbaa !56
  %413 = getelementptr inbounds ptr, ptr %412, i64 5
  %414 = load ptr, ptr %413, align 8
  %415 = invoke noundef ptr %414(ptr noundef nonnull align 8 dereferenceable(56) %390)
          to label %416 unwind label %404

416:                                              ; preds = %411
  %417 = load ptr, ptr %80, align 8, !tbaa !155
  %418 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %417)
          to label %419 unwind label %404

419:                                              ; preds = %416
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %415, ptr noundef %418, ptr noundef null, ptr noundef null)
          to label %420 unwind label %404

420:                                              ; preds = %419
  store i8 1, ptr %81, align 1, !tbaa !187
  br label %435

421:                                              ; preds = %389
  %422 = load ptr, ptr %76, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %423 = invoke noundef ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %422, ptr noundef %198, i32 noundef %200, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %424 unwind label %428

424:                                              ; preds = %421
  %425 = icmp eq ptr %423, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  br i1 %425, label %426, label %430

426:                                              ; preds = %424
  %427 = load ptr, ptr %76, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE3putEPviPj(ptr noundef nonnull align 8 dereferenceable(40) %427, ptr noundef %198, i32 noundef %200, ptr noundef null)
          to label %435 unwind label %428

428:                                              ; preds = %430, %421, %433, %426
  %429 = landingpad { ptr, i32 }
          cleanup
  br label %733

430:                                              ; preds = %424
  %431 = load ptr, ptr %77, align 8, !tbaa !155
  %432 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %431)
          to label %433 unwind label %428

433:                                              ; preds = %430
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %120, ptr noundef %432, ptr noundef null, ptr noundef null)
          to label %434 unwind label %428

434:                                              ; preds = %433
  store i8 1, ptr %78, align 1, !tbaa !187
  br label %435

435:                                              ; preds = %401, %420, %410, %434, %426
  %436 = icmp ne ptr %391, null
  %437 = or i1 %393, %436
  br i1 %437, label %453, label %438

438:                                              ; preds = %435
  %439 = load i8, ptr %12, align 1, !tbaa !150, !range !147, !noundef !148
  %440 = icmp eq i8 %439, 0
  %441 = load i8, ptr %13, align 1, !range !147
  %442 = icmp eq i8 %441, 0
  %443 = select i1 %440, i1 %442, i1 false
  br i1 %443, label %444, label %445

444:                                              ; preds = %438
  store i8 1, ptr %82, align 1, !tbaa !187
  br label %445

445:                                              ; preds = %444, %438
  %446 = load ptr, ptr %83, align 8, !tbaa !199
  %447 = icmp eq ptr %446, null
  br i1 %447, label %453, label %448

448:                                              ; preds = %445
  %449 = xor i1 %440, true
  %450 = zext i1 %449 to i32
  %451 = select i1 %443, i32 2, i32 %450
  %452 = zext i1 %443 to i32
  br label %453

453:                                              ; preds = %448, %445, %435
  %454 = phi i32 [ 2, %435 ], [ 2, %445 ], [ %451, %448 ]
  %455 = phi i32 [ %392, %435 ], [ %392, %445 ], [ %452, %448 ]
  %456 = load i8, ptr %14, align 8, !tbaa !146, !range !147, !noundef !148
  %457 = icmp eq i8 %456, 0
  %458 = or i1 %436, %457
  %459 = or i1 %393, %458
  %460 = xor i1 %459, true
  %461 = load i8, ptr %13, align 1, !range !147
  %462 = icmp eq i8 %461, 0
  %463 = select i1 %460, i1 %462, i1 false
  %464 = load i8, ptr %12, align 1, !range !147
  %465 = icmp eq i8 %464, 0
  %466 = select i1 %463, i1 %465, i1 false
  br i1 %466, label %467, label %539

467:                                              ; preds = %453
  %468 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %63)
          to label %469 unwind label %508

469:                                              ; preds = %467
  %470 = load i32, ptr %84, align 4, !tbaa !243
  %471 = icmp eq i32 %200, %470
  br i1 %471, label %519, label %472

472:                                              ; preds = %469
  %473 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %63)
          to label %474 unwind label %512

474:                                              ; preds = %472
  %475 = invoke noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %200, ptr noundef nonnull align 8 dereferenceable(40) %473)
          to label %476 unwind label %514

476:                                              ; preds = %474
  %477 = load i32, ptr %468, align 8, !tbaa !82
  %478 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %468, i64 0, i32 1
  %479 = load i32, ptr %478, align 4, !tbaa !83
  %480 = icmp eq i32 %477, %479
  br i1 %480, label %481, label %482

481:                                              ; preds = %476
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %468, i32 noundef 1)
          to label %482 unwind label %514

482:                                              ; preds = %481, %476
  %483 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %468, i64 0, i32 6
  %484 = load ptr, ptr %483, align 8, !tbaa !87
  %485 = load i32, ptr %468, align 8, !tbaa !82
  %486 = add i32 %485, 1
  store i32 %486, ptr %468, align 8, !tbaa !82
  %487 = zext i32 %485 to i64
  %488 = getelementptr inbounds i16, ptr %484, i64 %487
  store i16 123, ptr %488, align 2, !tbaa !88
  %489 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %473, i64 0, i32 6
  %490 = load ptr, ptr %489, align 8, !tbaa !87
  %491 = load i32, ptr %473, align 8, !tbaa !82
  %492 = zext i32 %491 to i64
  %493 = getelementptr inbounds i16, ptr %490, i64 %492
  store i16 0, ptr %493, align 2, !tbaa !88
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %468, ptr noundef %490)
          to label %494 unwind label %514

494:                                              ; preds = %482
  %495 = load i32, ptr %468, align 8, !tbaa !82
  %496 = load i32, ptr %478, align 4, !tbaa !83
  %497 = icmp eq i32 %495, %496
  br i1 %497, label %498, label %499

498:                                              ; preds = %494
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %468, i32 noundef 1)
          to label %499 unwind label %514

499:                                              ; preds = %498, %494
  %500 = load ptr, ptr %483, align 8, !tbaa !87
  %501 = load i32, ptr %468, align 8, !tbaa !82
  %502 = add i32 %501, 1
  store i32 %502, ptr %468, align 8, !tbaa !82
  %503 = zext i32 %501 to i64
  %504 = getelementptr inbounds i16, ptr %500, i64 %503
  store i16 125, ptr %504, align 2, !tbaa !88
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 8 dereferenceable(40) %473)
          to label %519 unwind label %505

505:                                              ; preds = %499
  %506 = landingpad { ptr, i32 }
          catch ptr null
  %507 = extractvalue { ptr, i32 } %506, 0
  call void @__clang_call_terminate(ptr %507) #19
  unreachable

508:                                              ; preds = %467
  %509 = landingpad { ptr, i32 }
          cleanup
  br label %733

510:                                              ; preds = %520, %529, %519
  %511 = landingpad { ptr, i32 }
          cleanup
  br label %534

512:                                              ; preds = %472
  %513 = landingpad { ptr, i32 }
          cleanup
  br label %534

514:                                              ; preds = %498, %481, %482, %474
  %515 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 8 dereferenceable(40) %473)
          to label %534 unwind label %516

516:                                              ; preds = %514
  %517 = landingpad { ptr, i32 }
          catch ptr null
  %518 = extractvalue { ptr, i32 } %517, 0
  call void @__clang_call_terminate(ptr %518) #19
  unreachable

519:                                              ; preds = %499, %469
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %468, ptr noundef %198)
          to label %520 unwind label %510

520:                                              ; preds = %519
  %521 = load ptr, ptr %85, align 8, !tbaa !139
  %522 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %468, i64 0, i32 6
  %523 = load ptr, ptr %522, align 8, !tbaa !87
  %524 = load i32, ptr %468, align 8, !tbaa !82
  %525 = zext i32 %524 to i64
  %526 = getelementptr inbounds i16, ptr %523, i64 %525
  store i16 0, ptr %526, align 2, !tbaa !88
  %527 = load ptr, ptr %86, align 8, !tbaa !155
  %528 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %527)
          to label %529 unwind label %510

529:                                              ; preds = %520
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %521, i32 noundef 17, ptr noundef %523, ptr noundef %528, ptr noundef null, ptr noundef null)
          to label %530 unwind label %510

530:                                              ; preds = %529
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 8 dereferenceable(40) %468)
          to label %539 unwind label %531

531:                                              ; preds = %530
  %532 = landingpad { ptr, i32 }
          catch ptr null
  %533 = extractvalue { ptr, i32 } %532, 0
  call void @__clang_call_terminate(ptr %533) #19
  unreachable

534:                                              ; preds = %512, %514, %510
  %535 = phi { ptr, i32 } [ %511, %510 ], [ %513, %512 ], [ %515, %514 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 8 dereferenceable(40) %468)
          to label %733 unwind label %536

536:                                              ; preds = %534
  %537 = landingpad { ptr, i32 }
          catch ptr null
  %538 = extractvalue { ptr, i32 } %537, 0
  call void @__clang_call_terminate(ptr %538) #19
  unreachable

539:                                              ; preds = %530, %453
  %540 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %117, i64 0, i32 4
  %541 = load ptr, ptr %540, align 8, !tbaa !177
  br i1 %436, label %542, label %596

542:                                              ; preds = %539
  %543 = invoke noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull %391, ptr noundef %120, ptr noundef %541, ptr noundef nonnull align 8 dereferenceable(40) %64)
          to label %544 unwind label %569

544:                                              ; preds = %542
  %545 = load ptr, ptr %88, align 8, !tbaa !87
  %546 = load i32, ptr %64, align 8, !tbaa !82
  %547 = zext i32 %546 to i64
  %548 = getelementptr inbounds i16, ptr %545, i64 %547
  store i16 0, ptr %548, align 2, !tbaa !88
  %549 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %391, i64 0, i32 6
  %550 = load ptr, ptr %549, align 8, !tbaa !338
  %551 = icmp eq ptr %550, null
  br i1 %551, label %573, label %552

552:                                              ; preds = %544
  %553 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %550, i64 0, i32 5
  %554 = load i16, ptr %553, align 4, !tbaa !340
  %555 = icmp eq i16 %554, 0
  br i1 %555, label %573, label %556

556:                                              ; preds = %552
  %557 = load ptr, ptr %89, align 8, !tbaa !139
  invoke void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %557, ptr noundef nonnull %550, ptr noundef %545, ptr noundef nonnull align 8 dereferenceable(40) %90)
          to label %558 unwind label %571

558:                                              ; preds = %556
  %559 = load ptr, ptr %91, align 8, !tbaa !87
  %560 = load i32, ptr %90, align 8, !tbaa !82
  %561 = zext i32 %560 to i64
  %562 = getelementptr inbounds i16, ptr %559, i64 %561
  store i16 0, ptr %562, align 2, !tbaa !88
  %563 = load i8, ptr %92, align 8, !tbaa !341, !range !147, !noundef !148
  %564 = icmp eq i8 %563, 0
  %565 = load i8, ptr %14, align 8, !range !147
  %566 = icmp eq i8 %565, 0
  %567 = select i1 %564, i1 true, i1 %566
  br i1 %567, label %573, label %568

568:                                              ; preds = %558
  store i32 0, ptr %64, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %64, ptr noundef %559)
          to label %573 unwind label %571

569:                                              ; preds = %688, %681, %663, %596, %542
  %570 = landingpad { ptr, i32 }
          cleanup
  br label %733

571:                                              ; preds = %568, %593, %577, %556
  %572 = landingpad { ptr, i32 }
          cleanup
  br label %733

573:                                              ; preds = %568, %558, %552, %544
  %574 = phi ptr [ %559, %558 ], [ %545, %552 ], [ %545, %544 ], [ %559, %568 ]
  %575 = load i8, ptr %14, align 8, !tbaa !146, !range !147, !noundef !148
  %576 = icmp eq i8 %575, 0
  br i1 %576, label %593, label %577

577:                                              ; preds = %573
  %578 = load ptr, ptr %93, align 8, !tbaa !139
  %579 = load ptr, ptr %578, align 8, !tbaa !56
  %580 = getelementptr inbounds ptr, ptr %579, i64 8
  %581 = load ptr, ptr %580, align 8
  invoke void %581(ptr noundef nonnull align 8 dereferenceable(40) %578, ptr noundef nonnull %391, ptr noundef %574, i1 noundef zeroext false, ptr noundef %3)
          to label %582 unwind label %571

582:                                              ; preds = %577
  %583 = load ptr, ptr %93, align 8, !tbaa !139
  %584 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %583, i64 0, i32 15
  %585 = load ptr, ptr %584, align 8, !tbaa !342
  %586 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %583, i64 0, i32 16
  %587 = load i8, ptr %586, align 8, !tbaa !204, !range !147, !noundef !148
  %588 = icmp eq i8 %587, 0
  br i1 %588, label %669, label %589

589:                                              ; preds = %582
  store i8 1, ptr %94, align 1, !tbaa !187
  %590 = load ptr, ptr %95, align 8, !tbaa !199
  %591 = icmp eq ptr %590, null
  %592 = select i1 %591, i32 %455, i32 1
  br label %669

593:                                              ; preds = %573
  %594 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !118
  %595 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %594, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE)
          to label %669 unwind label %571

596:                                              ; preds = %539
  %597 = invoke noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %390, ptr noundef %120, ptr noundef %541, ptr noundef nonnull align 8 dereferenceable(40) %64)
          to label %598 unwind label %569

598:                                              ; preds = %596
  br i1 %393, label %599, label %663

599:                                              ; preds = %598
  %600 = load ptr, ptr %87, align 8, !tbaa !87
  %601 = load i32, ptr %64, align 8, !tbaa !82
  %602 = zext i32 %601 to i64
  %603 = getelementptr inbounds i16, ptr %600, i64 %602
  store i16 0, ptr %603, align 2, !tbaa !88
  %604 = load i32, ptr %71, align 4, !tbaa !79
  %605 = icmp eq i32 %604, 1
  br i1 %605, label %606, label %636

606:                                              ; preds = %599
  %607 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %390, i64 0, i32 6
  %608 = load ptr, ptr %607, align 8, !tbaa !338
  %609 = icmp eq ptr %608, null
  br i1 %609, label %636, label %610

610:                                              ; preds = %606
  %611 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %608, i64 0, i32 5
  %612 = load i16, ptr %611, align 4, !tbaa !340
  %613 = icmp eq i16 %612, 0
  br i1 %613, label %636, label %614

614:                                              ; preds = %610
  %615 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %616 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  %617 = load ptr, ptr %615, align 8, !tbaa !139
  invoke void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %617, ptr noundef nonnull %608, ptr noundef %600, ptr noundef nonnull align 8 dereferenceable(40) %616)
          to label %618 unwind label %634

618:                                              ; preds = %614
  %619 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 6
  %620 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  %621 = load ptr, ptr %619, align 8, !tbaa !87
  %622 = load i32, ptr %616, align 8, !tbaa !82
  %623 = zext i32 %622 to i64
  %624 = getelementptr inbounds i16, ptr %621, i64 %623
  store i16 0, ptr %624, align 2, !tbaa !88
  %625 = load i8, ptr %620, align 8, !tbaa !341, !range !147, !noundef !148
  %626 = icmp ne i8 %625, 0
  %627 = load i8, ptr %14, align 8, !range !147
  %628 = icmp ne i8 %627, 0
  %629 = select i1 %626, i1 %628, i1 false
  %630 = select i1 %629, i1 %462, i1 false
  br i1 %630, label %631, label %636

631:                                              ; preds = %618
  store i32 0, ptr %64, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %64, ptr noundef %621)
          to label %636 unwind label %634

632:                                              ; preds = %660, %641
  %633 = landingpad { ptr, i32 }
          cleanup
  br label %733

634:                                              ; preds = %631, %614
  %635 = landingpad { ptr, i32 }
          cleanup
  br label %733

636:                                              ; preds = %631, %606, %610, %618, %599
  %637 = phi ptr [ %600, %599 ], [ %621, %618 ], [ %600, %610 ], [ %600, %606 ], [ %621, %631 ]
  %638 = load i8, ptr %14, align 8, !tbaa !146, !range !147, !noundef !148
  %639 = icmp ne i8 %638, 0
  %640 = select i1 %639, i1 %462, i1 false
  br i1 %640, label %641, label %660

641:                                              ; preds = %636
  %642 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %643 = load ptr, ptr %642, align 8, !tbaa !139
  %644 = load ptr, ptr %643, align 8, !tbaa !56
  %645 = getelementptr inbounds ptr, ptr %644, i64 8
  %646 = load ptr, ptr %645, align 8
  invoke void %646(ptr noundef nonnull align 8 dereferenceable(40) %643, ptr noundef nonnull %390, ptr noundef %637, i1 noundef zeroext false, ptr noundef %3)
          to label %647 unwind label %632

647:                                              ; preds = %641
  %648 = load ptr, ptr %642, align 8, !tbaa !139
  %649 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %648, i64 0, i32 15
  %650 = load ptr, ptr %649, align 8, !tbaa !342
  %651 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %648, i64 0, i32 16
  %652 = load i8, ptr %651, align 8, !tbaa !204, !range !147, !noundef !148
  %653 = icmp eq i8 %652, 0
  br i1 %653, label %666, label %654

654:                                              ; preds = %647
  %655 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 1
  %656 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  store i8 1, ptr %655, align 1, !tbaa !187
  %657 = load ptr, ptr %656, align 8, !tbaa !199
  %658 = icmp eq ptr %657, null
  %659 = select i1 %658, i32 %455, i32 1
  br label %666

660:                                              ; preds = %636
  %661 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !118
  %662 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %661, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE)
          to label %666 unwind label %632

663:                                              ; preds = %598
  %664 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !118
  %665 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %664, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE)
          to label %666 unwind label %569

666:                                              ; preds = %654, %663, %647, %660
  %667 = phi ptr [ %650, %647 ], [ %650, %654 ], [ %662, %660 ], [ %665, %663 ]
  %668 = phi i32 [ %455, %647 ], [ %659, %654 ], [ %455, %660 ], [ %455, %663 ]
  br i1 %393, label %669, label %675

669:                                              ; preds = %666, %582, %593, %589
  %670 = phi ptr [ %391, %589 ], [ %391, %593 ], [ %391, %582 ], [ %390, %666 ]
  %671 = phi ptr [ %585, %589 ], [ %595, %593 ], [ %585, %582 ], [ %667, %666 ]
  %672 = phi i32 [ %592, %589 ], [ %455, %593 ], [ %455, %582 ], [ %668, %666 ]
  %673 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %670, i64 0, i32 2
  %674 = load i32, ptr %673, align 4, !tbaa !343
  br label %675

675:                                              ; preds = %669, %666
  %676 = phi ptr [ %667, %666 ], [ %671, %669 ]
  %677 = phi i32 [ 0, %666 ], [ %674, %669 ]
  %678 = phi i32 [ %668, %666 ], [ %672, %669 ]
  %679 = load ptr, ptr %96, align 8, !tbaa !199
  %680 = icmp eq ptr %679, null
  br i1 %680, label %731, label %681

681:                                              ; preds = %675
  %682 = load ptr, ptr %97, align 8, !tbaa !101
  %683 = load ptr, ptr %98, align 8, !tbaa !236
  %684 = load ptr, ptr %683, align 8, !tbaa !56
  %685 = getelementptr inbounds ptr, ptr %684, i64 10
  %686 = load ptr, ptr %685, align 8
  %687 = invoke noundef ptr %686(ptr noundef nonnull align 8 dereferenceable(40) %683, i32 noundef %200)
          to label %688 unwind label %569

688:                                              ; preds = %681
  %689 = invoke noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36) %682, ptr noundef %198, ptr noundef %687)
          to label %690 unwind label %569

690:                                              ; preds = %688
  %691 = select i1 %393, ptr %390, ptr %391
  %692 = icmp eq ptr %691, null
  br i1 %692, label %727, label %693

693:                                              ; preds = %690
  %694 = load ptr, ptr %99, align 8, !tbaa !231
  %695 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %694, ptr noundef nonnull %691)
          to label %696 unwind label %707

696:                                              ; preds = %693
  %697 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %691, i64 0, i32 6
  %698 = load ptr, ptr %697, align 8, !tbaa !338
  %699 = load ptr, ptr %99, align 8, !tbaa !231
  %700 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %699, ptr noundef %698)
          to label %701 unwind label %709

701:                                              ; preds = %696
  %702 = icmp eq i32 %678, 2
  br i1 %702, label %711, label %703

703:                                              ; preds = %701
  %704 = load ptr, ptr %100, align 8, !tbaa !234
  %705 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %691, i64 0, i32 7
  %706 = load ptr, ptr %705, align 8, !tbaa !344
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %689, ptr noundef %704, i32 noundef %678, i32 noundef %454, ptr noundef %700, ptr noundef null, ptr noundef %706, i1 noundef zeroext false, ptr noundef %695, ptr noundef null)
          to label %731 unwind label %709

707:                                              ; preds = %693
  %708 = landingpad { ptr, i32 }
          cleanup
  br label %733

709:                                              ; preds = %703, %696
  %710 = landingpad { ptr, i32 }
          cleanup
  br label %733

711:                                              ; preds = %701
  %712 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %700, i64 0, i32 3
  %713 = load i32, ptr %712, align 8, !tbaa !345
  %714 = icmp eq i32 %713, 3
  br i1 %714, label %715, label %720

715:                                              ; preds = %711
  %716 = load ptr, ptr %99, align 8, !tbaa !231
  %717 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %716, ptr noundef %676)
          to label %720 unwind label %718

718:                                              ; preds = %720, %715
  %719 = landingpad { ptr, i32 }
          cleanup
  br label %733

720:                                              ; preds = %715, %711
  %721 = phi ptr [ null, %711 ], [ %717, %715 ]
  %722 = load ptr, ptr %101, align 8, !tbaa !234
  %723 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %691, i64 0, i32 7
  %724 = load ptr, ptr %723, align 8, !tbaa !344
  %725 = icmp eq ptr %721, null
  %726 = select i1 %725, ptr %698, ptr %676
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %689, ptr noundef %722, i32 noundef 2, i32 noundef %454, ptr noundef nonnull %700, ptr noundef %721, ptr noundef %724, i1 noundef zeroext false, ptr noundef %695, ptr noundef %726)
          to label %731 unwind label %718

727:                                              ; preds = %690
  %728 = load ptr, ptr %102, align 8, !tbaa !234
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %689, ptr noundef %728, i32 noundef %678, i32 noundef %454, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false, ptr noundef null, ptr noundef null)
          to label %731 unwind label %729

729:                                              ; preds = %727
  %730 = landingpad { ptr, i32 }
          cleanup
  br label %733

731:                                              ; preds = %727, %720, %703, %675
  %732 = phi ptr [ null, %675 ], [ %689, %703 ], [ %689, %720 ], [ %689, %727 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #18
  br label %794

733:                                              ; preds = %508, %534, %569, %571, %634, %632, %707, %718, %709, %729, %263, %309, %307, %428, %404
  %734 = phi { ptr, i32 } [ %405, %404 ], [ %429, %428 ], [ %264, %263 ], [ %310, %309 ], [ %308, %307 ], [ %570, %569 ], [ %572, %571 ], [ %633, %632 ], [ %635, %634 ], [ %730, %729 ], [ %708, %707 ], [ %710, %709 ], [ %719, %718 ], [ %509, %508 ], [ %535, %534 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #18
  br label %841

735:                                              ; preds = %213, %235, %210, %201, %232
  %736 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %117, i64 0, i32 4
  %737 = load ptr, ptr %736, align 8, !tbaa !177
  %738 = invoke noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %120, ptr noundef %737, ptr noundef nonnull align 8 dereferenceable(40) %64)
          to label %739 unwind label %767

739:                                              ; preds = %735
  %740 = load i32, ptr %70, align 8, !tbaa !292
  %741 = icmp eq i32 %200, %740
  br i1 %741, label %764, label %742

742:                                              ; preds = %739
  %743 = invoke noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %200)
          to label %744 unwind label %767

744:                                              ; preds = %742
  %745 = icmp eq ptr %743, null
  br i1 %745, label %750, label %746

746:                                              ; preds = %744
  %747 = load i16, ptr %743, align 2, !tbaa !88
  %748 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, align 2, !tbaa !88
  %749 = icmp eq i16 %747, %748
  br i1 %749, label %753, label %769

750:                                              ; preds = %744
  %751 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, align 2, !tbaa !88
  %752 = icmp eq i16 %751, 0
  br i1 %752, label %764, label %769

753:                                              ; preds = %746, %758
  %754 = phi i16 [ %761, %758 ], [ %747, %746 ]
  %755 = phi ptr [ %760, %758 ], [ @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, %746 ]
  %756 = phi ptr [ %759, %758 ], [ %743, %746 ]
  %757 = icmp eq i16 %754, 0
  br i1 %757, label %764, label %758

758:                                              ; preds = %753
  %759 = getelementptr inbounds i16, ptr %756, i64 1
  %760 = getelementptr inbounds i16, ptr %755, i64 1
  %761 = load i16, ptr %759, align 2, !tbaa !88
  %762 = load i16, ptr %760, align 2, !tbaa !88
  %763 = icmp eq i16 %761, %762
  br i1 %763, label %753, label %769, !llvm.loop !201

764:                                              ; preds = %753, %750, %739
  %765 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !118
  %766 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %765, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgDT_ANYURIE)
          to label %769 unwind label %767

767:                                              ; preds = %780, %773, %764, %742, %735
  %768 = landingpad { ptr, i32 }
          cleanup
  br label %841

769:                                              ; preds = %758, %746, %764, %750
  %770 = phi ptr [ null, %750 ], [ %766, %764 ], [ null, %746 ], [ null, %758 ]
  %771 = load ptr, ptr %103, align 8, !tbaa !199
  %772 = icmp eq ptr %771, null
  br i1 %772, label %794, label %773

773:                                              ; preds = %769
  %774 = load ptr, ptr %104, align 8, !tbaa !101
  %775 = load ptr, ptr %105, align 8, !tbaa !236
  %776 = load ptr, ptr %775, align 8, !tbaa !56
  %777 = getelementptr inbounds ptr, ptr %776, i64 10
  %778 = load ptr, ptr %777, align 8
  %779 = invoke noundef ptr %778(ptr noundef nonnull align 8 dereferenceable(40) %775, i32 noundef %200)
          to label %780 unwind label %767

780:                                              ; preds = %773
  %781 = invoke noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36) %774, ptr noundef %198, ptr noundef %779)
          to label %782 unwind label %767

782:                                              ; preds = %780
  %783 = icmp eq ptr %770, null
  br i1 %783, label %791, label %784

784:                                              ; preds = %782
  %785 = load ptr, ptr %106, align 8, !tbaa !231
  %786 = icmp eq ptr %785, null
  br i1 %786, label %791, label %787

787:                                              ; preds = %784
  %788 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %785, ptr noundef nonnull %770)
          to label %791 unwind label %789

789:                                              ; preds = %791, %787
  %790 = landingpad { ptr, i32 }
          cleanup
  br label %841

791:                                              ; preds = %787, %784, %782
  %792 = phi ptr [ null, %784 ], [ null, %782 ], [ %788, %787 ]
  %793 = load ptr, ptr %107, align 8, !tbaa !234
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %781, ptr noundef %793, i32 noundef 0, i32 noundef 0, ptr noundef %792, ptr noundef null, ptr noundef null, i1 noundef zeroext false, ptr noundef null, ptr noundef %770)
          to label %794 unwind label %789

794:                                              ; preds = %791, %769, %731
  %795 = phi ptr [ null, %769 ], [ %732, %731 ], [ %781, %791 ]
  %796 = phi i32 [ 0, %769 ], [ %677, %731 ], [ 0, %791 ]
  %797 = icmp ugt i32 %62, %115
  br i1 %797, label %818, label %798

798:                                              ; preds = %794
  %799 = load ptr, ptr %108, align 8, !tbaa !91
  %800 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %799)
          to label %801 unwind label %814

801:                                              ; preds = %798
  %802 = load ptr, ptr %109, align 8, !tbaa !87
  %803 = load i32, ptr %64, align 8, !tbaa !82
  %804 = zext i32 %803 to i64
  %805 = getelementptr inbounds i16, ptr %802, i64 %804
  store i16 0, ptr %805, align 2, !tbaa !88
  %806 = load ptr, ptr %108, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %800, i32 noundef %200, ptr noundef %198, ptr noundef %199, ptr noundef %802, i32 noundef %796, i1 noundef zeroext true, ptr noundef %806, ptr noundef null, i1 noundef zeroext false)
          to label %807 unwind label %816

807:                                              ; preds = %801
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
          to label %808 unwind label %814

808:                                              ; preds = %807
  %809 = load ptr, ptr %110, align 8, !tbaa !352
  %810 = load i32, ptr %61, align 4, !tbaa !322
  %811 = zext i32 %810 to i64
  %812 = getelementptr inbounds ptr, ptr %809, i64 %811
  store ptr %800, ptr %812, align 8, !tbaa !118
  %813 = add i32 %810, 1
  store i32 %813, ptr %61, align 4, !tbaa !322
  br label %832

814:                                              ; preds = %827, %820, %807, %835, %818, %798
  %815 = landingpad { ptr, i32 }
          cleanup
  br label %841

816:                                              ; preds = %801
  %817 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %800, ptr noundef %799) #18
  br label %841

818:                                              ; preds = %794
  %819 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %115)
          to label %820 unwind label %814

820:                                              ; preds = %818
  %821 = load ptr, ptr %111, align 8, !tbaa !87
  %822 = load i32, ptr %64, align 8, !tbaa !82
  %823 = zext i32 %822 to i64
  %824 = getelementptr inbounds i16, ptr %821, i64 %823
  store i16 0, ptr %824, align 2, !tbaa !88
  %825 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %819, i64 0, i32 6
  %826 = load ptr, ptr %825, align 8, !tbaa !353
  invoke void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %826, ptr noundef %199, ptr noundef %198, i32 noundef %200)
          to label %827 unwind label %814

827:                                              ; preds = %820
  invoke void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %819, ptr noundef %821)
          to label %828 unwind label %814

828:                                              ; preds = %827
  %829 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %819, i64 0, i32 2
  store i32 %796, ptr %829, align 4, !tbaa !355
  %830 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %819, i64 0, i32 9
  store i8 0, ptr %830, align 8, !tbaa !356
  %831 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %819, i64 0, i32 8
  store ptr null, ptr %831, align 8, !tbaa !357
  store i8 1, ptr %819, align 8, !tbaa !358
  br label %832

832:                                              ; preds = %808, %828
  %833 = phi ptr [ %800, %808 ], [ %819, %828 ]
  %834 = icmp eq ptr %795, null
  br i1 %834, label %838, label %835

835:                                              ; preds = %832
  %836 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %833, i64 0, i32 5
  %837 = load ptr, ptr %836, align 8, !tbaa !359
  invoke void @_ZN11xercesc_2_713PSVIAttribute8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(96) %795, ptr noundef %837)
          to label %838 unwind label %814

838:                                              ; preds = %835, %832
  %839 = add nuw nsw i64 %114, 1
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %11) #18
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18
  %840 = icmp eq i64 %839, %112
  br i1 %840, label %843, label %113, !llvm.loop !360

841:                                              ; preds = %259, %733, %767, %789, %816, %814, %261, %150
  %842 = phi { ptr, i32 } [ %151, %150 ], [ %260, %259 ], [ %262, %261 ], [ %790, %789 ], [ %768, %767 ], [ %734, %733 ], [ %815, %814 ], [ %817, %816 ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %11) #18
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18
  br label %1102

843:                                              ; preds = %838, %60
  %844 = phi i32 [ 0, %60 ], [ %2, %838 ]
  br i1 %54, label %845, label %1097

845:                                              ; preds = %843
  br i1 %38, label %848, label %846

846:                                              ; preds = %845
  %847 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(176) %36)
          to label %853 unwind label %888

848:                                              ; preds = %845
  %849 = load ptr, ptr %3, align 8, !tbaa !56
  %850 = getelementptr inbounds ptr, ptr %849, i64 6
  %851 = load ptr, ptr %850, align 8
  %852 = invoke noundef nonnull align 8 dereferenceable(16) ptr %851(ptr noundef nonnull align 8 dereferenceable(33) %3)
          to label %853 unwind label %888

853:                                              ; preds = %848, %846
  %854 = phi ptr [ %847, %846 ], [ %852, %848 ]
  %855 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 15
  %856 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %857 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 1
  %858 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %859 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 17
  %860 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %861 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %862 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %863 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %3, i64 0, i32 2
  %864 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %865 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 1
  %866 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %867 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %868 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %869 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %870 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %871 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %872 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %873 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 17
  %874 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %875 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %876 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %877 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %878 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  br label %879

879:                                              ; preds = %853, %1094
  %880 = phi i32 [ %1096, %1094 ], [ 0, %853 ]
  %881 = phi i32 [ %1095, %1094 ], [ %844, %853 ]
  %882 = load ptr, ptr %854, align 8, !tbaa !56
  %883 = getelementptr inbounds ptr, ptr %882, i64 13
  %884 = load ptr, ptr %883, align 8
  %885 = invoke noundef i32 %884(ptr noundef nonnull align 8 dereferenceable(16) %854)
          to label %886 unwind label %890

886:                                              ; preds = %879
  %887 = icmp ult i32 %880, %885
  br i1 %887, label %892, label %1097

888:                                              ; preds = %848, %846
  %889 = landingpad { ptr, i32 }
          cleanup
  br label %1102

890:                                              ; preds = %879
  %891 = landingpad { ptr, i32 }
          cleanup
  br label %1102

892:                                              ; preds = %886
  %893 = load ptr, ptr %854, align 8, !tbaa !56
  %894 = getelementptr inbounds ptr, ptr %893, i64 14
  %895 = load ptr, ptr %894, align 8
  %896 = invoke noundef nonnull align 8 dereferenceable(56) ptr %895(ptr noundef nonnull align 8 dereferenceable(16) %854, i32 noundef %880)
          to label %897 unwind label %922

897:                                              ; preds = %892
  %898 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %896, i64 0, i32 1
  %899 = load i32, ptr %898, align 8, !tbaa !361
  %900 = load ptr, ptr %855, align 8, !tbaa !99
  %901 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %900, ptr noundef nonnull %896)
          to label %902 unwind label %924

902:                                              ; preds = %897
  %903 = icmp eq ptr %901, null
  br i1 %903, label %908, label %904

904:                                              ; preds = %902
  %905 = load i32, ptr %901, align 4, !tbaa !158
  %906 = load i32, ptr %55, align 8, !tbaa !321
  %907 = icmp ult i32 %905, %906
  br i1 %907, label %908, label %1060

908:                                              ; preds = %904, %902
  %909 = load i8, ptr %14, align 8, !tbaa !146, !range !147, !noundef !148
  %910 = icmp eq i8 %909, 0
  br i1 %910, label %945, label %911

911:                                              ; preds = %908
  %912 = and i32 %899, -2
  %913 = icmp eq i32 %912, 2
  br i1 %913, label %914, label %926

914:                                              ; preds = %911
  %915 = load ptr, ptr %864, align 8, !tbaa !139
  %916 = load ptr, ptr %896, align 8, !tbaa !56
  %917 = getelementptr inbounds ptr, ptr %916, i64 5
  %918 = load ptr, ptr %917, align 8
  %919 = invoke noundef ptr %918(ptr noundef nonnull align 8 dereferenceable(56) %896)
          to label %920 unwind label %924

920:                                              ; preds = %914
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %915, i32 noundef 6, ptr noundef %919, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %921 unwind label %924

921:                                              ; preds = %920
  store i8 1, ptr %865, align 1, !tbaa !187
  br label %945

922:                                              ; preds = %892
  %923 = landingpad { ptr, i32 }
          cleanup
  br label %1102

924:                                              ; preds = %941, %1071, %1065, %950, %944, %935, %920, %914, %897
  %925 = landingpad { ptr, i32 }
          cleanup
  br label %1102

926:                                              ; preds = %911
  %927 = icmp ult i32 %899, 2
  %928 = load i8, ptr %861, align 2, !range !147
  %929 = icmp ne i8 %928, 0
  %930 = select i1 %927, i1 %929, i1 false
  %931 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %896, i64 0, i32 5
  %932 = load i8, ptr %931, align 1, !range !147
  %933 = icmp ne i8 %932, 0
  %934 = select i1 %930, i1 %933, i1 false
  br i1 %934, label %935, label %945

935:                                              ; preds = %926
  %936 = load ptr, ptr %862, align 8, !tbaa !139
  %937 = load ptr, ptr %896, align 8, !tbaa !56
  %938 = getelementptr inbounds ptr, ptr %937, i64 5
  %939 = load ptr, ptr %938, align 8
  %940 = invoke noundef ptr %939(ptr noundef nonnull align 8 dereferenceable(56) %896)
          to label %941 unwind label %924

941:                                              ; preds = %935
  %942 = load ptr, ptr %863, align 8, !tbaa !155
  %943 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %942)
          to label %944 unwind label %924

944:                                              ; preds = %941
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %936, i32 noundef 82, ptr noundef %940, ptr noundef %943, ptr noundef null, ptr noundef null)
          to label %945 unwind label %924

945:                                              ; preds = %921, %944, %926, %908
  %946 = icmp ult i32 %899, 2
  br i1 %946, label %947, label %1094

947:                                              ; preds = %945
  %948 = load i8, ptr %14, align 8, !tbaa !146, !range !147, !noundef !148
  %949 = icmp eq i8 %948, 0
  br i1 %949, label %957, label %950

950:                                              ; preds = %947
  %951 = load ptr, ptr %866, align 8, !tbaa !139
  %952 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %896, i64 0, i32 7
  %953 = load ptr, ptr %952, align 8, !tbaa !344
  %954 = load ptr, ptr %951, align 8, !tbaa !56
  %955 = getelementptr inbounds ptr, ptr %954, i64 8
  %956 = load ptr, ptr %955, align 8
  invoke void %956(ptr noundef nonnull align 8 dereferenceable(40) %951, ptr noundef nonnull %896, ptr noundef %953, i1 noundef zeroext false, ptr noundef %3)
          to label %957 unwind label %924

957:                                              ; preds = %950, %947
  %958 = icmp ult i32 %881, %62
  br i1 %958, label %983, label %959

959:                                              ; preds = %957
  %960 = load ptr, ptr %867, align 8, !tbaa !91
  %961 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %960)
          to label %962 unwind label %979

962:                                              ; preds = %959
  %963 = load ptr, ptr %867, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_77XMLAttrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(49) %961, ptr noundef %963)
          to label %964 unwind label %981

964:                                              ; preds = %962
  %965 = load ptr, ptr %868, align 8, !tbaa !139
  %966 = load ptr, ptr %965, align 8, !tbaa !56
  %967 = getelementptr inbounds ptr, ptr %966, i64 3
  %968 = load ptr, ptr %967, align 8
  invoke void %968(ptr noundef nonnull align 8 dereferenceable(40) %965, ptr noundef nonnull align 8 dereferenceable(49) %961, ptr noundef nonnull align 8 dereferenceable(56) %896)
          to label %969 unwind label %979

969:                                              ; preds = %964
  %970 = load ptr, ptr %869, align 8, !tbaa !255
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %970, i32 noundef 1)
          to label %971 unwind label %979

971:                                              ; preds = %969
  %972 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %970, i64 0, i32 4
  %973 = load ptr, ptr %972, align 8, !tbaa !352
  %974 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %970, i64 0, i32 2
  %975 = load i32, ptr %974, align 4, !tbaa !322
  %976 = zext i32 %975 to i64
  %977 = getelementptr inbounds ptr, ptr %973, i64 %976
  store ptr %961, ptr %977, align 8, !tbaa !118
  %978 = add i32 %975, 1
  store i32 %978, ptr %974, align 4, !tbaa !322
  br label %991

979:                                              ; preds = %969, %986, %983, %964, %959
  %980 = landingpad { ptr, i32 }
          cleanup
  br label %1102

981:                                              ; preds = %962
  %982 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %961, ptr noundef %960) #18
  br label %1102

983:                                              ; preds = %957
  %984 = load ptr, ptr %870, align 8, !tbaa !255
  %985 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %984, i32 noundef %881)
          to label %986 unwind label %979

986:                                              ; preds = %983
  %987 = load ptr, ptr %871, align 8, !tbaa !139
  %988 = load ptr, ptr %987, align 8, !tbaa !56
  %989 = getelementptr inbounds ptr, ptr %988, i64 3
  %990 = load ptr, ptr %989, align 8
  invoke void %990(ptr noundef nonnull align 8 dereferenceable(40) %987, ptr noundef nonnull align 8 dereferenceable(49) %985, ptr noundef nonnull align 8 dereferenceable(56) %896)
          to label %991 unwind label %979

991:                                              ; preds = %971, %986
  %992 = phi ptr [ %961, %971 ], [ %985, %986 ]
  store i8 0, ptr %992, align 8, !tbaa !358
  %993 = add i32 %881, 1
  %994 = load ptr, ptr %872, align 8, !tbaa !199
  %995 = icmp eq ptr %994, null
  br i1 %995, label %1094, label %996

996:                                              ; preds = %991
  %997 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %896, i64 0, i32 5
  %998 = load ptr, ptr %997, align 8, !tbaa !362
  %999 = load ptr, ptr %873, align 8, !tbaa !101
  %1000 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %998, i64 0, i32 6
  %1001 = load ptr, ptr %1000, align 8, !tbaa !235
  %1002 = load ptr, ptr %874, align 8, !tbaa !236
  %1003 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %998, i64 0, i32 4
  %1004 = load i32, ptr %1003, align 4, !tbaa !237
  %1005 = load ptr, ptr %1002, align 8, !tbaa !56
  %1006 = getelementptr inbounds ptr, ptr %1005, i64 10
  %1007 = load ptr, ptr %1006, align 8
  %1008 = invoke noundef ptr %1007(ptr noundef nonnull align 8 dereferenceable(40) %1002, i32 noundef %1004)
          to label %1009 unwind label %1028

1009:                                             ; preds = %996
  %1010 = invoke noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36) %999, ptr noundef %1001, ptr noundef %1008)
          to label %1011 unwind label %1028

1011:                                             ; preds = %1009
  %1012 = load ptr, ptr %875, align 8, !tbaa !231
  %1013 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %1012, ptr noundef nonnull %896)
          to label %1014 unwind label %1030

1014:                                             ; preds = %1011
  %1015 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %896, i64 0, i32 6
  %1016 = load ptr, ptr %1015, align 8, !tbaa !338
  %1017 = load ptr, ptr %875, align 8, !tbaa !231
  %1018 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %1017, ptr noundef %1016)
          to label %1019 unwind label %1032

1019:                                             ; preds = %1014
  %1020 = load ptr, ptr %876, align 8, !tbaa !139
  %1021 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %1020, i64 0, i32 16
  %1022 = load i8, ptr %1021, align 8, !tbaa !204, !range !147, !noundef !148
  %1023 = icmp eq i8 %1022, 0
  br i1 %1023, label %1034, label %1024

1024:                                             ; preds = %1019
  %1025 = load ptr, ptr %877, align 8, !tbaa !234
  %1026 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %896, i64 0, i32 7
  %1027 = load ptr, ptr %1026, align 8, !tbaa !344
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %1010, ptr noundef %1025, i32 noundef 1, i32 noundef 2, ptr noundef %1018, ptr noundef null, ptr noundef %1027, i1 noundef zeroext true, ptr noundef %1013, ptr noundef null)
          to label %1057 unwind label %1032

1028:                                             ; preds = %1009, %996
  %1029 = landingpad { ptr, i32 }
          cleanup
  br label %1102

1030:                                             ; preds = %1011
  %1031 = landingpad { ptr, i32 }
          cleanup
  br label %1102

1032:                                             ; preds = %1057, %1024, %1014
  %1033 = landingpad { ptr, i32 }
          cleanup
  br label %1102

1034:                                             ; preds = %1019
  %1035 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %1018, i64 0, i32 3
  %1036 = load i32, ptr %1035, align 8, !tbaa !345
  %1037 = icmp eq i32 %1036, 3
  br i1 %1037, label %1038, label %1045

1038:                                             ; preds = %1034
  %1039 = load ptr, ptr %875, align 8, !tbaa !231
  %1040 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %1020, i64 0, i32 15
  %1041 = load ptr, ptr %1040, align 8, !tbaa !342
  %1042 = invoke noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %1039, ptr noundef %1041)
          to label %1045 unwind label %1043

1043:                                             ; preds = %1055, %1038
  %1044 = landingpad { ptr, i32 }
          cleanup
  br label %1102

1045:                                             ; preds = %1038, %1034
  %1046 = phi ptr [ null, %1034 ], [ %1042, %1038 ]
  %1047 = load ptr, ptr %878, align 8, !tbaa !234
  %1048 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %896, i64 0, i32 7
  %1049 = load ptr, ptr %1048, align 8, !tbaa !344
  %1050 = icmp eq ptr %1046, null
  br i1 %1050, label %1055, label %1051

1051:                                             ; preds = %1045
  %1052 = load ptr, ptr %876, align 8, !tbaa !139
  %1053 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %1052, i64 0, i32 15
  %1054 = load ptr, ptr %1053, align 8, !tbaa !342
  br label %1055

1055:                                             ; preds = %1045, %1051
  %1056 = phi ptr [ %1054, %1051 ], [ %1016, %1045 ]
  invoke void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96) %1010, ptr noundef %1047, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %1018, ptr noundef %1046, ptr noundef %1049, i1 noundef zeroext true, ptr noundef %1013, ptr noundef %1056)
          to label %1057 unwind label %1043

1057:                                             ; preds = %1024, %1055
  %1058 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %896, i64 0, i32 7
  %1059 = load ptr, ptr %1058, align 8, !tbaa !344
  invoke void @_ZN11xercesc_2_713PSVIAttribute8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(96) %1010, ptr noundef %1059)
          to label %1094 unwind label %1032

1060:                                             ; preds = %904
  %1061 = icmp ne i32 %899, 8
  %1062 = load i8, ptr %14, align 8, !range !147
  %1063 = icmp eq i8 %1062, 0
  %1064 = select i1 %1061, i1 true, i1 %1063
  br i1 %1064, label %1094, label %1065

1065:                                             ; preds = %1060
  %1066 = load ptr, ptr %856, align 8, !tbaa !139
  %1067 = load ptr, ptr %896, align 8, !tbaa !56
  %1068 = getelementptr inbounds ptr, ptr %1067, i64 5
  %1069 = load ptr, ptr %1068, align 8
  %1070 = invoke noundef ptr %1069(ptr noundef nonnull align 8 dereferenceable(56) %896)
          to label %1071 unwind label %924

1071:                                             ; preds = %1065
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %1066, i32 noundef 49, ptr noundef %1070, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %1072 unwind label %924

1072:                                             ; preds = %1071
  store i8 1, ptr %857, align 1, !tbaa !187
  %1073 = load ptr, ptr %858, align 8, !tbaa !199
  %1074 = icmp eq ptr %1073, null
  br i1 %1074, label %1094, label %1075

1075:                                             ; preds = %1072
  %1076 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %896, i64 0, i32 5
  %1077 = load ptr, ptr %1076, align 8, !tbaa !362
  %1078 = load ptr, ptr %859, align 8, !tbaa !101
  %1079 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1077, i64 0, i32 6
  %1080 = load ptr, ptr %1079, align 8, !tbaa !235
  %1081 = load ptr, ptr %860, align 8, !tbaa !236
  %1082 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1077, i64 0, i32 4
  %1083 = load i32, ptr %1082, align 4, !tbaa !237
  %1084 = load ptr, ptr %1081, align 8, !tbaa !56
  %1085 = getelementptr inbounds ptr, ptr %1084, i64 10
  %1086 = load ptr, ptr %1085, align 8
  %1087 = invoke noundef ptr %1086(ptr noundef nonnull align 8 dereferenceable(40) %1081, i32 noundef %1083)
          to label %1088 unwind label %1092

1088:                                             ; preds = %1075
  %1089 = invoke noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getAttributePSVIByNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36) %1078, ptr noundef %1080, ptr noundef %1087)
          to label %1090 unwind label %1092

1090:                                             ; preds = %1088
  %1091 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %1089, i64 0, i32 6
  store i32 1, ptr %1091, align 8, !tbaa !363
  br label %1094

1092:                                             ; preds = %1088, %1075
  %1093 = landingpad { ptr, i32 }
          cleanup
  br label %1102

1094:                                             ; preds = %991, %1057, %1060, %1072, %1090, %945
  %1095 = phi i32 [ %881, %945 ], [ %881, %1090 ], [ %881, %1072 ], [ %881, %1060 ], [ %993, %1057 ], [ %993, %991 ]
  %1096 = add i32 %880, 1
  br label %879, !llvm.loop !367

1097:                                             ; preds = %886, %843
  %1098 = phi i32 [ %844, %843 ], [ %881, %886 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 8 dereferenceable(40) %64)
          to label %1108 unwind label %1099

1099:                                             ; preds = %1097
  %1100 = landingpad { ptr, i32 }
          catch ptr null
  %1101 = extractvalue { ptr, i32 } %1100, 0
  call void @__clang_call_terminate(ptr %1101) #19
  unreachable

1102:                                             ; preds = %888, %922, %979, %981, %1030, %1043, %1032, %1028, %1092, %924, %890, %148, %841
  %1103 = phi { ptr, i32 } [ %842, %841 ], [ %149, %148 ], [ %889, %888 ], [ %891, %890 ], [ %923, %922 ], [ %925, %924 ], [ %1093, %1092 ], [ %980, %979 ], [ %982, %981 ], [ %1029, %1028 ], [ %1031, %1030 ], [ %1033, %1032 ], [ %1044, %1043 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 8 dereferenceable(40) %64)
          to label %1107 unwind label %1104

1104:                                             ; preds = %1102
  %1105 = landingpad { ptr, i32 }
          catch ptr null
  %1106 = extractvalue { ptr, i32 } %1105, 0
  call void @__clang_call_terminate(ptr %1106) #19
  unreachable

1107:                                             ; preds = %1102
  resume { ptr, i32 } %1103

1108:                                             ; preds = %1097, %53
  %1109 = phi i32 [ 0, %53 ], [ %1098, %1097 ]
  ret i32 %1109
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #9 comdat align 2 !prof !368 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !136
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5, !prof !369

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !135
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %35, %5
  store i32 0, ptr %2, align 4, !tbaa !136
  br label %42

13:                                               ; preds = %9, %35
  %14 = phi i64 [ 0, %9 ], [ %38, %35 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !134
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !118
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.13", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !370
  %23 = load i8, ptr %11, align 8, !tbaa !133, !range !147, !noundef !148
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !372
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %26) #21
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !131
  %31 = load ptr, ptr %30, align 8, !tbaa !56
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20)
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !373

35:                                               ; preds = %29, %13
  %36 = load ptr, ptr %10, align 8, !tbaa !134
  %37 = getelementptr inbounds ptr, ptr %36, i64 %14
  store ptr null, ptr %37, align 8, !tbaa !118
  %38 = add nuw nsw i64 %14, 1
  %39 = load i32, ptr %6, align 8, !tbaa !135
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %13, label %12, !llvm.loop !374

42:                                               ; preds = %1, %12
  ret void
}

declare void @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_711PSVIElement5resetENS_8PSVIItem14VALIDITY_STATEENS1_15ASSESSMENT_TYPEEPKtbPNS_20XSElementDeclarationEPNS_16XSTypeDefinitionEPNS_22XSSimpleTypeDefinitionEPNS_7XSModelES5_S5_PtPNS_21XSNotationDeclarationE(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712SGXMLScanner12resolveQNameEPKtRNS_9XMLBufferEsRi(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef signext %3, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %4) unnamed_addr #3 align 2 !prof !55 {
  %6 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %1, i16 noundef zeroext 58)
  store i32 %6, ptr %4, align 4, !tbaa !158
  %7 = tail call noundef i32 @_ZN11xercesc_2_712SGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef signext %3, i32 noundef %6)
  ret i32 %7
}

declare noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712SGXMLScanner11loadGrammarERKNS_11InputSourceEsb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %7 = load ptr, ptr %6, align 8, !tbaa !259
  invoke void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(80) %7, i1 noundef zeroext false)
          to label %8 unwind label %18

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !259
  %10 = zext i1 %3 to i8
  %11 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %9, i64 0, i32 1
  store i8 %10, ptr %11, align 1, !tbaa !375
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr null, ptr %12, align 8, !tbaa !248
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %14 = load i32, ptr %13, align 8, !tbaa !284
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %53

16:                                               ; preds = %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  store i8 1, ptr %17, align 8, !tbaa !146
  br label %53

18:                                               ; preds = %60, %4
  %19 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %20 = extractvalue { ptr, i32 } %19, 0
  %21 = extractvalue { ptr, i32 } %19, 1
  %22 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #18
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18, %32
  %25 = tail call ptr @__cxa_begin_catch(ptr %20) #18
  tail call void @__cxa_end_catch() #18
  br label %26

26:                                               ; preds = %24, %104, %60, %53
  %27 = phi ptr [ null, %53 ], [ %61, %60 ], [ null, %104 ], [ null, %24 ]
  invoke void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80) %5)
          to label %31 unwind label %28

28:                                               ; preds = %26
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #19
  unreachable

31:                                               ; preds = %26
  ret ptr %27

32:                                               ; preds = %18
  %33 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #18
  %34 = icmp eq i32 %21, %33
  br i1 %34, label %24, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #18
  %37 = icmp eq i32 %21, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = tail call ptr @__cxa_begin_catch(ptr %20) #18
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %40, align 1, !tbaa !142
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %39, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !143
  %43 = add i32 %42, -1
  %44 = icmp ult i32 %43, 4
  br i1 %44, label %45, label %76

45:                                               ; preds = %38
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %39, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !149
  br label %95

48:                                               ; preds = %35
  %49 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #18
  %50 = icmp eq i32 %21, %49
  br i1 %50, label %51, label %114

51:                                               ; preds = %48
  %52 = tail call ptr @__cxa_begin_catch(ptr %20) #18
  invoke void @__cxa_rethrow() #20
          to label %133 unwind label %62

53:                                               ; preds = %16, %8
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 0, ptr %54, align 1, !tbaa !142
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 0, ptr %55, align 2, !tbaa !377
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  store i32 0, ptr %56, align 8, !tbaa !378
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 1, ptr %57, align 1, !tbaa !379
  %58 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 1
  store i8 0, ptr %58, align 8, !tbaa !59
  %59 = icmp eq i16 %2, 1
  br i1 %59, label %60, label %26

60:                                               ; preds = %53
  %61 = invoke noundef ptr @_ZN11xercesc_2_712SGXMLScanner20loadXMLSchemaGrammarERKNS_11InputSourceEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %3)
          to label %26 unwind label %18

62:                                               ; preds = %51
  %63 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %64 unwind label %130

64:                                               ; preds = %62
  %65 = extractvalue { ptr, i32 } %63, 1
  %66 = extractvalue { ptr, i32 } %63, 0
  br label %114

67:                                               ; preds = %95, %90, %85
  %68 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %69 = extractvalue { ptr, i32 } %68, 0
  %70 = extractvalue { ptr, i32 } %68, 1
  %71 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #18
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %109

73:                                               ; preds = %67
  %74 = tail call ptr @__cxa_begin_catch(ptr %69) #18
  invoke void @__cxa_rethrow() #20
          to label %75 unwind label %99

75:                                               ; preds = %73
  unreachable

76:                                               ; preds = %38
  %77 = add i32 %42, -5
  %78 = icmp ult i32 %77, 397
  %79 = and i32 %42, -2
  %80 = icmp ne i32 %79, 402
  %81 = or i1 %78, %80
  %82 = load ptr, ptr %39, align 8, !tbaa !56
  %83 = getelementptr inbounds ptr, ptr %82, i64 2
  %84 = load ptr, ptr %83, align 8
  br i1 %81, label %85, label %90

85:                                               ; preds = %76
  %86 = invoke noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(48) %39)
          to label %87 unwind label %67

87:                                               ; preds = %85
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %39, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !149
  br label %95

90:                                               ; preds = %76
  %91 = invoke noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(48) %39)
          to label %92 unwind label %67

92:                                               ; preds = %90
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %39, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !149
  br label %95

95:                                               ; preds = %45, %87, %92
  %96 = phi i32 [ 157, %92 ], [ 292, %87 ], [ 156, %45 ]
  %97 = phi ptr [ %91, %92 ], [ %86, %87 ], [ %47, %45 ]
  %98 = phi ptr [ %94, %92 ], [ %89, %87 ], [ null, %45 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %96, ptr noundef %97, ptr noundef %98, ptr noundef null, ptr noundef null)
          to label %104 unwind label %67

99:                                               ; preds = %73
  %100 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %101 unwind label %130

101:                                              ; preds = %99
  %102 = extractvalue { ptr, i32 } %100, 1
  %103 = extractvalue { ptr, i32 } %100, 0
  br label %109

104:                                              ; preds = %95
  invoke void @__cxa_end_catch()
          to label %26 unwind label %105

105:                                              ; preds = %104
  %106 = landingpad { ptr, i32 }
          cleanup
  %107 = extractvalue { ptr, i32 } %106, 0
  %108 = extractvalue { ptr, i32 } %106, 1
  br label %114

109:                                              ; preds = %101, %67
  %110 = phi i64 [ 0, %101 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %67 ]
  %111 = phi ptr [ null, %101 ], [ %5, %67 ]
  %112 = phi i32 [ %102, %101 ], [ %70, %67 ]
  %113 = phi ptr [ %103, %101 ], [ %69, %67 ]
  invoke void @__cxa_end_catch()
          to label %114 unwind label %130

114:                                              ; preds = %109, %105, %64, %48
  %115 = phi i64 [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %105 ], [ 0, %64 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %48 ], [ %110, %109 ]
  %116 = phi ptr [ %5, %105 ], [ null, %64 ], [ %5, %48 ], [ %111, %109 ]
  %117 = phi i32 [ %108, %105 ], [ %65, %64 ], [ %21, %48 ], [ %112, %109 ]
  %118 = phi ptr [ %107, %105 ], [ %66, %64 ], [ %20, %48 ], [ %113, %109 ]
  %119 = icmp eq ptr %116, null
  %120 = icmp eq i64 %115, 0
  %121 = or i1 %120, %119
  br i1 %121, label %127, label %122

122:                                              ; preds = %114
  %123 = inttoptr i64 %115 to ptr
  invoke void %123(ptr noundef nonnull align 8 dereferenceable(80) %116)
          to label %127 unwind label %124

124:                                              ; preds = %122
  %125 = landingpad { ptr, i32 }
          catch ptr null
  %126 = extractvalue { ptr, i32 } %125, 0
  tail call void @__clang_call_terminate(ptr %126) #19
  unreachable

127:                                              ; preds = %114, %122
  %128 = insertvalue { ptr, i32 } poison, ptr %118, 0
  %129 = insertvalue { ptr, i32 } %128, i32 %117, 1
  resume { ptr, i32 } %129

130:                                              ; preds = %109, %99, %62
  %131 = landingpad { ptr, i32 }
          catch ptr null
  %132 = extractvalue { ptr, i32 } %131, 0
  tail call void @__clang_call_terminate(ptr %132) #19
  unreachable

133:                                              ; preds = %51
  unreachable
}

declare void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712SGXMLScanner20loadXMLSchemaGrammarERKNS_11InputSourceEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %4 = alloca %"class.xercesc_2_7::XSDDOMParser", align 8
  %5 = alloca %"class.xercesc_2_7::TraverseSchema", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(186) %7)
  %11 = load ptr, ptr %6, align 8, !tbaa !96
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %13 = load ptr, ptr %12, align 8, !tbaa !261
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %11, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !380
  %15 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %11, i64 0, i32 13, i32 2
  store ptr %13, ptr %15, align 8, !tbaa !381
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %17 = load i8, ptr %16, align 1, !tbaa !382, !range !147, !noundef !148
  %18 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %11, i64 0, i32 13, i32 1
  store i8 %17, ptr %18, align 8, !tbaa !383
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %20 = load ptr, ptr %19, align 8, !tbaa !259
  %21 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %11, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !384
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %23 = load i8, ptr %22, align 1, !tbaa !385, !range !147, !noundef !148
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %27 = load ptr, ptr %26, align 8, !tbaa !139
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  %29 = getelementptr inbounds ptr, ptr %28, i64 6
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(40) %27)
  br label %31

31:                                               ; preds = %25, %3
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %4) #18
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %33 = load ptr, ptr %32, align 8, !tbaa !91
  call void @_ZN11xercesc_2_712XSDDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(368) %4, ptr noundef null, ptr noundef %33, ptr noundef null)
  invoke void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %4, i32 noundef 0)
          to label %34 unwind label %62

34:                                               ; preds = %31
  invoke void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200) %4, i1 noundef zeroext true)
          to label %35 unwind label %62

35:                                               ; preds = %34
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %37 = load ptr, ptr %36, align 8, !tbaa !260
  invoke void @_ZN11xercesc_2_712XSDDOMParser20setUserEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(368) %4, ptr noundef %37)
          to label %38 unwind label %62

38:                                               ; preds = %35
  %39 = load ptr, ptr %12, align 8, !tbaa !261
  invoke void @_ZN11xercesc_2_712XSDDOMParser20setUserErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(368) %4, ptr noundef %39)
          to label %40 unwind label %62

40:                                               ; preds = %38
  %41 = load ptr, ptr %1, align 8, !tbaa !56
  %42 = getelementptr inbounds ptr, ptr %41, i64 6
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef zeroext i1 %43(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %45 unwind label %64

45:                                               ; preds = %40
  %46 = load ptr, ptr %1, align 8, !tbaa !56
  %47 = getelementptr inbounds ptr, ptr %46, i64 10
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext false)
          to label %49 unwind label %64

49:                                               ; preds = %45
  invoke void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %50 unwind label %64

50:                                               ; preds = %49
  %51 = load ptr, ptr %1, align 8, !tbaa !56
  %52 = getelementptr inbounds ptr, ptr %51, i64 10
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %44)
          to label %54 unwind label %64

54:                                               ; preds = %50
  %55 = getelementptr inbounds %"class.xercesc_2_7::XSDDOMParser", ptr %4, i64 0, i32 1
  %56 = load i8, ptr %55, align 8, !tbaa !274, !range !147, !noundef !148
  %57 = icmp eq i8 %56, 0
  %58 = load i8, ptr %16, align 1, !range !147
  %59 = icmp eq i8 %58, 0
  %60 = select i1 %57, i1 true, i1 %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %54
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 297)
          to label %66 unwind label %64

62:                                               ; preds = %38, %35, %34, %31
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %162

64:                                               ; preds = %61, %50, %49, %45, %40
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %162

66:                                               ; preds = %61, %54
  %67 = invoke noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %4)
          to label %68 unwind label %128

68:                                               ; preds = %66
  %69 = icmp eq ptr %67, null
  br i1 %69, label %159, label %70

70:                                               ; preds = %68
  %71 = load ptr, ptr %67, align 8, !tbaa !56
  %72 = getelementptr inbounds ptr, ptr %71, i64 13
  %73 = load ptr, ptr %72, align 8
  %74 = invoke noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(32) %67)
          to label %75 unwind label %130

75:                                               ; preds = %70
  %76 = icmp eq ptr %74, null
  br i1 %76, label %157, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %79 = load ptr, ptr %78, align 8, !tbaa !285
  %80 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 160, ptr noundef %79)
          to label %81 unwind label %132

81:                                               ; preds = %77
  %82 = load ptr, ptr %78, align 8, !tbaa !285
  invoke void @_ZN11xercesc_2_713SchemaGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %80, ptr noundef %82)
          to label %83 unwind label %134

83:                                               ; preds = %81
  %84 = load ptr, ptr %80, align 8, !tbaa !56
  %85 = getelementptr inbounds ptr, ptr %84, i64 22
  %86 = load ptr, ptr %85, align 8
  %87 = invoke noundef ptr %86(ptr noundef nonnull align 8 dereferenceable(160) %80)
          to label %88 unwind label %136

88:                                               ; preds = %83
  %89 = load ptr, ptr %87, align 8, !tbaa !56
  %90 = getelementptr inbounds ptr, ptr %89, i64 13
  %91 = load ptr, ptr %90, align 8
  invoke void %91(ptr noundef nonnull align 8 dereferenceable(16) %87, i32 noundef 3)
          to label %92 unwind label %136

92:                                               ; preds = %88
  %93 = load ptr, ptr %1, align 8, !tbaa !56
  %94 = getelementptr inbounds ptr, ptr %93, i64 5
  %95 = load ptr, ptr %94, align 8
  %96 = invoke noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %97 unwind label %136

97:                                               ; preds = %92
  %98 = load ptr, ptr %87, align 8, !tbaa !56
  %99 = getelementptr inbounds ptr, ptr %98, i64 15
  %100 = load ptr, ptr %99, align 8
  invoke void %100(ptr noundef nonnull align 8 dereferenceable(16) %87, ptr noundef %96)
          to label %101 unwind label %136

101:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 552, ptr nonnull %5) #18
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %103 = load ptr, ptr %102, align 8, !tbaa !236
  %104 = load ptr, ptr %19, align 8, !tbaa !259
  %105 = load ptr, ptr %1, align 8, !tbaa !56
  %106 = getelementptr inbounds ptr, ptr %105, i64 5
  %107 = load ptr, ptr %106, align 8
  %108 = invoke noundef ptr %107(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %109 unwind label %138

109:                                              ; preds = %101
  %110 = load ptr, ptr %36, align 8, !tbaa !260
  %111 = load ptr, ptr %12, align 8, !tbaa !261
  %112 = load ptr, ptr %32, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_714TraverseSchemaC1EPNS_10DOMElementEPNS_13XMLStringPoolEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_10XMLScannerEPKtPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(552) %5, ptr noundef nonnull %74, ptr noundef %103, ptr noundef nonnull %80, ptr noundef %104, ptr noundef nonnull %0, ptr noundef %108, ptr noundef %110, ptr noundef %111, ptr noundef %112)
          to label %113 unwind label %138

113:                                              ; preds = %109
  %114 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %115 = load i8, ptr %114, align 8, !tbaa !146, !range !147, !noundef !148
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %142, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %119 = load ptr, ptr %118, align 8, !tbaa !139
  %120 = load ptr, ptr %119, align 8, !tbaa !56
  %121 = getelementptr inbounds ptr, ptr %120, i64 11
  %122 = load ptr, ptr %121, align 8
  invoke void %122(ptr noundef nonnull align 8 dereferenceable(40) %119, ptr noundef nonnull %80)
          to label %123 unwind label %140

123:                                              ; preds = %117
  %124 = load ptr, ptr %118, align 8, !tbaa !139
  %125 = load ptr, ptr %124, align 8, !tbaa !56
  %126 = getelementptr inbounds ptr, ptr %125, i64 4
  %127 = load ptr, ptr %126, align 8
  invoke void %127(ptr noundef nonnull align 8 dereferenceable(40) %124, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %142 unwind label %140

128:                                              ; preds = %66
  %129 = landingpad { ptr, i32 }
          cleanup
  br label %162

130:                                              ; preds = %70
  %131 = landingpad { ptr, i32 }
          cleanup
  br label %162

132:                                              ; preds = %77
  %133 = landingpad { ptr, i32 }
          cleanup
  br label %162

134:                                              ; preds = %81
  %135 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %80, ptr noundef %79) #18
  br label %162

136:                                              ; preds = %97, %92, %88, %83
  %137 = landingpad { ptr, i32 }
          cleanup
  br label %162

138:                                              ; preds = %109, %101
  %139 = landingpad { ptr, i32 }
          cleanup
  br label %155

140:                                              ; preds = %149, %143, %123, %117
  %141 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_714TraverseSchemaD1Ev(ptr noundef nonnull align 8 dereferenceable(552) %5) #18
  br label %155

142:                                              ; preds = %123, %113
  br i1 %2, label %143, label %145

143:                                              ; preds = %142
  %144 = load ptr, ptr %19, align 8, !tbaa !259
  invoke void @_ZN11xercesc_2_715GrammarResolver13cacheGrammarsEv(ptr noundef nonnull align 8 dereferenceable(80) %144)
          to label %145 unwind label %140

145:                                              ; preds = %143, %142
  %146 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %147 = load ptr, ptr %146, align 8, !tbaa !199
  %148 = icmp eq ptr %147, null
  br i1 %148, label %154, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr %19, align 8, !tbaa !259
  %151 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getXSModelEv(ptr noundef nonnull align 8 dereferenceable(80) %150)
          to label %152 unwind label %140

152:                                              ; preds = %149
  %153 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  store ptr %151, ptr %153, align 8, !tbaa !231
  br label %154

154:                                              ; preds = %152, %145
  call void @_ZN11xercesc_2_714TraverseSchemaD1Ev(ptr noundef nonnull align 8 dereferenceable(552) %5) #18
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %5) #18
  br label %157

155:                                              ; preds = %140, %138
  %156 = phi { ptr, i32 } [ %141, %140 ], [ %139, %138 ]
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %5) #18
  br label %162

157:                                              ; preds = %75, %154
  %158 = phi ptr [ %80, %154 ], [ undef, %75 ]
  br i1 %76, label %159, label %160

159:                                              ; preds = %157, %68
  br label %160

160:                                              ; preds = %157, %159
  %161 = phi ptr [ null, %159 ], [ %158, %157 ]
  call void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368) %4) #18
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %4) #18
  ret ptr %161

162:                                              ; preds = %64, %130, %136, %155, %134, %132, %128, %62
  %163 = phi { ptr, i32 } [ %63, %62 ], [ %65, %64 ], [ %129, %128 ], [ %131, %130 ], [ %135, %134 ], [ %133, %132 ], [ %156, %155 ], [ %137, %136 ]
  call void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368) %4) #18
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %4) #18
  resume { ptr, i32 } %163
}

declare void @_ZN11xercesc_2_715SchemaValidatorC1EPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(186), ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_725IdentityConstraintHandlerC1EPNS_10XMLScannerEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !386 {
  store ptr %2, ptr %0, align 8, !tbaa !387
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !389
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %5, align 8, !tbaa !390
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !391
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1)
  %7 = load ptr, ptr %0, align 8, !tbaa !387
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %7)
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %10, !prof !392

9:                                                ; preds = %3
  store ptr %8, ptr %6, align 8, !tbaa !391
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #18
  resume { ptr, i32 } %11
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #3 comdat align 2 !prof !393 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !391
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !390
  %8 = load ptr, ptr %0, align 8, !tbaa !387
  %9 = load ptr, ptr %5, align 8, !tbaa !56
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8), !prof !394
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !389
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !118
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !395

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !391
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !396
  %23 = load ptr, ptr %20, align 8, !tbaa !56
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22), !prof !398
  br i1 %26, label %31, label %27, !prof !399

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !118
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !400, !llvm.loop !401

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ %19, %18 ], [ null, %27 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34, !prof !402

34:                                               ; preds = %31
  %35 = load i16, ptr %2, align 2, !tbaa !88
  store i16 %35, ptr %32, align 8, !tbaa !403
  %36 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %32, i64 0, i32 2
  store ptr %1, ptr %36, align 8, !tbaa !396
  br label %49

37:                                               ; preds = %31
  %38 = load ptr, ptr %0, align 8, !tbaa !387
  %39 = load ptr, ptr %38, align 8, !tbaa !56
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef 24), !prof !404
  %43 = load ptr, ptr %12, align 8, !tbaa !389
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  %45 = load ptr, ptr %44, align 8, !tbaa !118
  %46 = load i16, ptr %2, align 2, !tbaa !88
  store i16 %46, ptr %42, align 8, !tbaa !403
  %47 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %42, i64 0, i32 1
  store ptr %45, ptr %47, align 8, !tbaa !405
  %48 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %42, i64 0, i32 2
  store ptr %1, ptr %48, align 8, !tbaa !396
  store ptr %42, ptr %44, align 8, !tbaa !118
  br label %49

49:                                               ; preds = %37, %34
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !406 {
  %6 = zext i1 %2 to i8
  store ptr %4, ptr %0, align 8, !tbaa !305
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !300
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !307
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !407
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store i32 %3, ptr %11, align 8, !tbaa !310
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  store i32 0, ptr %12, align 4, !tbaa !309
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1)
  %13 = load ptr, ptr %0, align 8, !tbaa !305
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %13)
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %15 unwind label %19, !prof !408

15:                                               ; preds = %5
  store ptr %14, ptr %10, align 8, !tbaa !409
  %16 = load i32, ptr %11, align 8, !tbaa !310
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21, !prof !410

18:                                               ; preds = %15
  store i32 256, ptr %11, align 8, !tbaa !310
  br label %21

19:                                               ; preds = %5
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #18
  resume { ptr, i32 } %20

21:                                               ; preds = %18, %15
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %0, align 8, !tbaa !305
  %24 = load i32, ptr %11, align 8, !tbaa !310
  %25 = zext i32 %24 to i64
  %26 = shl nuw nsw i64 %25, 3
  %27 = load ptr, ptr %23, align 8, !tbaa !56
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef %26), !prof !411
  store ptr %30, ptr %22, align 8, !tbaa !312
  store ptr null, ptr %30, align 8, !tbaa !118
  ret void
}

declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN11xercesc_2_717PSVIAttributeListC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !386 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !390
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %29, label %5, !prof !412

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %22
  %8 = phi i64 [ 0, %5 ], [ %25, %22 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !389
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !118
  br label %12

12:                                               ; preds = %15, %7
  %13 = phi ptr [ %11, %7 ], [ %17, %15 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15, !prof !413

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !405
  %18 = load ptr, ptr %0, align 8, !tbaa !387
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %13)
          to label %12 unwind label %45, !prof !414, !llvm.loop !415

22:                                               ; preds = %12
  %23 = load ptr, ptr %6, align 8, !tbaa !389
  %24 = getelementptr inbounds ptr, ptr %23, i64 %8
  store ptr null, ptr %24, align 8, !tbaa !118
  %25 = add nuw nsw i64 %8, 1
  %26 = load i32, ptr %2, align 8, !tbaa !390
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %7, label %29, !prof !416, !llvm.loop !417

29:                                               ; preds = %22, %1
  %30 = load ptr, ptr %0, align 8, !tbaa !387
  %31 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !389
  %33 = load ptr, ptr %30, align 8, !tbaa !56
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32)
          to label %36 unwind label %47, !prof !418

36:                                               ; preds = %29
  %37 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !391
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40, !prof !419

40:                                               ; preds = %36
  %41 = load ptr, ptr %38, align 8, !tbaa !56
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  tail call void %43(ptr noundef nonnull align 8 dereferenceable(8) %38) #18, !prof !420
  br label %44

44:                                               ; preds = %40, %36
  ret void

45:                                               ; preds = %15
  %46 = landingpad { ptr, i32 }
          catch ptr null
  br label %49

47:                                               ; preds = %29
  %48 = landingpad { ptr, i32 }
          catch ptr null
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi { ptr, i32 } [ %46, %45 ], [ %48, %47 ]
  %51 = extractvalue { ptr, i32 } %50, 0
  tail call void @__clang_call_terminate(ptr %51) #19
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !406 {
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %2 unwind label %25, !prof !408

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !305
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !312
  %6 = load ptr, ptr %3, align 8, !tbaa !56
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %25, !prof !421

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !305
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !307
  %13 = load ptr, ptr %10, align 8, !tbaa !56
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %25, !prof !421

16:                                               ; preds = %9
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !409
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20, !prof !410

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !56
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %18) #18, !prof !422
  br label %24

24:                                               ; preds = %20, %16
  ret void

25:                                               ; preds = %9, %2, %1
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #19
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !423 {
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %18, !prof !424

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !131
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  %6 = load ptr, ptr %3, align 8, !tbaa !56
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %18, !prof !111

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !137
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !425

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !56
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #18, !prof !426
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %2, %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !427 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !114
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !428

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !117
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 241, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !116
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  ret ptr %18
}

declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712SGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !55 {
  %4 = alloca i8, align 1
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = load i16, ptr %1, align 2, !tbaa !88
  %8 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !88
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %13, label %27

10:                                               ; preds = %3
  %11 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !88
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %24, label %27

13:                                               ; preds = %6, %18
  %14 = phi i16 [ %21, %18 ], [ %7, %6 ]
  %15 = phi ptr [ %20, %18 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %6 ]
  %16 = phi ptr [ %19, %18 ], [ %1, %6 ]
  %17 = icmp eq i16 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds i16, ptr %16, i64 1
  %20 = getelementptr inbounds i16, ptr %15, i64 1
  %21 = load i16, ptr %19, align 2, !tbaa !88
  %22 = load i16, ptr %20, align 2, !tbaa !88
  %23 = icmp eq i16 %21, %22
  br i1 %23, label %13, label %27, !llvm.loop !201

24:                                               ; preds = %13, %10
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %26 = load i32, ptr %25, align 8, !tbaa !292
  br label %56

27:                                               ; preds = %18, %6, %10
  br i1 %5, label %32, label %28

28:                                               ; preds = %27
  %29 = load i16, ptr %1, align 2, !tbaa !88
  %30 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !88
  %31 = icmp eq i16 %29, %30
  br i1 %31, label %35, label %49

32:                                               ; preds = %27
  %33 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !88
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %46, label %49

35:                                               ; preds = %28, %40
  %36 = phi i16 [ %43, %40 ], [ %29, %28 ]
  %37 = phi ptr [ %42, %40 ], [ @_ZN11xercesc_2_76XMLUni11fgXMLStringE, %28 ]
  %38 = phi ptr [ %41, %40 ], [ %1, %28 ]
  %39 = icmp eq i16 %36, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds i16, ptr %38, i64 1
  %42 = getelementptr inbounds i16, ptr %37, i64 1
  %43 = load i16, ptr %41, align 2, !tbaa !88
  %44 = load i16, ptr %42, align 2, !tbaa !88
  %45 = icmp eq i16 %43, %44
  br i1 %45, label %35, label %49, !llvm.loop !201

46:                                               ; preds = %35, %32
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %48 = load i32, ptr %47, align 4, !tbaa !293
  br label %56

49:                                               ; preds = %40, %28, %32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #18
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %51 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %50, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %52 = load i8, ptr %4, align 1, !tbaa !150, !range !147, !noundef !148
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 277, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %55

55:                                               ; preds = %54, %49
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #18
  br label %56

56:                                               ; preds = %55, %46, %24
  %57 = phi i32 [ %26, %24 ], [ %48, %46 ], [ %51, %55 ]
  ret i32 %57
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner22anyAttributeValidationEPNS_12SchemaAttDefEjRbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %3, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %4) local_unnamed_addr #3 align 2 !prof !55 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !343
  store i8 0, ptr %3, align 1, !tbaa !150
  store i8 0, ptr %4, align 1, !tbaa !150
  switch i32 %7, label %40 [
    i32 11, label %41
    i32 12, label %8
    i32 13, label %18
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !362
  %11 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %10, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !237
  %13 = icmp ne i32 %12, %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %15 = load i32, ptr %14, align 4
  %16 = icmp ne i32 %15, %2
  %17 = select i1 %13, i1 %16, i1 false
  br label %41

18:                                               ; preds = %5
  %19 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !429
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %20, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !430
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
  %35 = load i32, ptr %34, align 4, !tbaa !158
  %36 = icmp eq i32 %35, %2
  %37 = select i1 %36, i8 1, i8 %32
  %38 = add nuw i32 %33, 1
  %39 = icmp eq i32 %38, %26
  br i1 %39, label %28, label %31, !llvm.loop !432

40:                                               ; preds = %5
  br label %41

41:                                               ; preds = %8, %25, %28, %5, %40
  %42 = phi i1 [ true, %5 ], [ false, %40 ], [ %30, %28 ], [ false, %25 ], [ %17, %8 ]
  br i1 %42, label %43, label %49

43:                                               ; preds = %41
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !361
  switch i32 %45, label %49 [
    i32 5, label %47
    i32 6, label %46
  ]

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %43, %46
  %48 = phi ptr [ %4, %46 ], [ %3, %43 ]
  store i8 1, ptr %48, align 1, !tbaa !150
  br label %49

49:                                               ; preds = %47, %43, %41
  ret i1 %42
}

declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !433
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !435
  %7 = load ptr, ptr %0, align 8, !tbaa !436
  %8 = load ptr, ptr %4, align 8, !tbaa !56
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !437
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !118
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !433
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.15", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !438
  %22 = load ptr, ptr %19, align 8, !tbaa !56
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21)
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.15", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !118
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !llvm.loop !440

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !441
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 !prof !442 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !129
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !126
  %7 = load ptr, ptr %0, align 8, !tbaa !122
  %8 = load ptr, ptr %4, align 8, !tbaa !56
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !443
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !125
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !118
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !444

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !129
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.16", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !445
  %22 = load ptr, ptr %19, align 8, !tbaa !56
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !447
  br i1 %25, label %30, label %26, !prof !448

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.16", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !118
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !449, !llvm.loop !450

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !451

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !452
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

declare noundef ptr @_ZN11xercesc_2_710XMLScanner13getNewUIntPtrEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat align 2 !prof !453 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !126
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !128
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %12, label %11, !prof !454

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !129
  %15 = load i32, ptr %4, align 8, !tbaa !126
  %16 = load ptr, ptr %0, align 8, !tbaa !122
  %17 = load ptr, ptr %14, align 8, !tbaa !56
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, i32 noundef %15, ptr noundef %16), !prof !455
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !125
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !118
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26, !prof !456

26:                                               ; preds = %12, %35
  %27 = phi ptr [ %37, %35 ], [ %24, %12 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !129
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.16", ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !445
  %31 = load ptr, ptr %28, align 8, !tbaa !56
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %1, ptr noundef %30), !prof !457
  br i1 %34, label %39, label %35, !prof !458

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.16", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !118
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !prof !459, !llvm.loop !450

39:                                               ; preds = %26, %35, %12
  %40 = phi ptr [ null, %12 ], [ %27, %26 ], [ null, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42, !prof !454

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !124, !range !147, !noundef !148
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 8, !tbaa !452
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @_ZdlPv(ptr noundef %47) #21
  br label %50

50:                                               ; preds = %46, %49, %42
  store ptr %2, ptr %40, align 8, !tbaa !452
  %51 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.16", ptr %40, i64 0, i32 2
  store ptr %1, ptr %51, align 8, !tbaa !445
  br label %65

52:                                               ; preds = %39
  %53 = load ptr, ptr %0, align 8, !tbaa !122
  %54 = load ptr, ptr %53, align 8, !tbaa !56
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef 24), !prof !460
  %58 = load ptr, ptr %20, align 8, !tbaa !125
  %59 = getelementptr inbounds ptr, ptr %58, i64 %22
  %60 = load ptr, ptr %59, align 8, !tbaa !118
  store ptr %2, ptr %57, align 8, !tbaa !452
  %61 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.16", ptr %57, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !461
  %62 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.16", ptr %57, i64 0, i32 2
  store ptr %1, ptr %62, align 8, !tbaa !445
  store ptr %57, ptr %59, align 8, !tbaa !118
  %63 = load i32, ptr %8, align 8, !tbaa !128
  %64 = add i32 %63, 1
  store i32 %64, ptr %8, align 8, !tbaa !128
  br label %65

65:                                               ; preds = %52, %50
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE3putEPviPj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 !prof !55 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !135
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !136
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !133, !range !147, !noundef !148
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !372
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZdlPv(ptr noundef %21) #21
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %3, ptr %14, align 8, !tbaa !372
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.13", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !462
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.13", ptr %14, i64 0, i32 3
  store i32 %2, ptr %26, align 8, !tbaa !463
  br label %44

27:                                               ; preds = %13
  %28 = load ptr, ptr %0, align 8, !tbaa !131
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28, i64 noundef 32)
  %33 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !134
  %35 = load i32, ptr %5, align 4, !tbaa !158
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !118
  store ptr %3, ptr %32, align 8, !tbaa !372
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.13", ptr %32, i64 0, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !370
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.13", ptr %32, i64 0, i32 2
  store ptr %1, ptr %40, align 8, !tbaa !462
  %41 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.13", ptr %32, i64 0, i32 3
  store i32 %2, ptr %41, align 8, !tbaa !463
  store ptr %32, ptr %37, align 8, !tbaa !118
  %42 = load i32, ptr %9, align 4, !tbaa !136
  %43 = add i32 %42, 1
  store i32 %43, ptr %9, align 4, !tbaa !136
  br label %44

44:                                               ; preds = %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret void
}

declare noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 !prof !464 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !465

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !88
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !466

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !88
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !467, !llvm.loop !468

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !82
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !83
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !469

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !87
  %24 = load i32, ptr %0, align 8, !tbaa !82
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !470
  %28 = load i32, ptr %0, align 8, !tbaa !82
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !82
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner17normalizeAttValueEPKNS_9XMLAttDefEPKtS5_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #3 align 2 !prof !55 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !343
  br label %10

10:                                               ; preds = %5, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %5 ]
  store i32 0, ptr %4, align 8, !tbaa !82
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  store i16 0, ptr %13, align 2, !tbaa !88
  br i1 %6, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 5
  %16 = load i8, ptr %15, align 1, !tbaa !471, !range !147, !noundef !148
  %17 = icmp eq i8 %16, 0
  br label %18

18:                                               ; preds = %10, %14
  %19 = phi i1 [ %17, %14 ], [ true, %10 ]
  %20 = icmp eq i32 %11, 0
  %21 = icmp sgt i32 %11, 8
  %22 = or i1 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 1
  br label %150

30:                                               ; preds = %18
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 1
  br label %35

35:                                               ; preds = %30, %65
  %36 = phi i8 [ %58, %65 ], [ 1, %30 ]
  %37 = phi ptr [ %71, %65 ], [ %3, %30 ]
  %38 = load i16, ptr %37, align 2, !tbaa !88
  switch i16 %38, label %42 [
    i16 0, label %154
    i16 -1, label %39
  ]

39:                                               ; preds = %35
  %40 = getelementptr inbounds i16, ptr %37, i64 1
  %41 = load i16, ptr %40, align 2, !tbaa !88
  br label %57

42:                                               ; preds = %35
  %43 = icmp ult i16 %38, 14
  br i1 %43, label %44, label %54

44:                                               ; preds = %42
  switch i16 %38, label %57 [
    i16 13, label %45
    i16 10, label %45
    i16 9, label %45
    i16 60, label %56
  ]

45:                                               ; preds = %44, %44, %44
  %46 = load i8, ptr %31, align 2, !tbaa !377, !range !147, !noundef !148
  %47 = icmp eq i8 %46, 0
  %48 = load i8, ptr %32, align 8, !range !147
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %47, i1 true, i1 %49
  %51 = or i1 %50, %19
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load ptr, ptr %33, align 8, !tbaa !139
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %53, i32 noundef 83, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %57

54:                                               ; preds = %42
  %55 = icmp eq i16 %38, 60
  br i1 %55, label %56, label %57

56:                                               ; preds = %44, %54
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 248, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %57

57:                                               ; preds = %44, %52, %45, %56, %54, %39
  %58 = phi i8 [ %36, %39 ], [ 0, %56 ], [ %36, %54 ], [ %36, %45 ], [ %36, %52 ], [ %36, %44 ]
  %59 = phi i16 [ %41, %39 ], [ %38, %56 ], [ %38, %54 ], [ 32, %45 ], [ 32, %52 ], [ %38, %44 ]
  %60 = phi ptr [ %40, %39 ], [ %37, %56 ], [ %37, %54 ], [ %37, %45 ], [ %37, %52 ], [ %37, %44 ]
  %61 = load i32, ptr %4, align 8, !tbaa !82
  %62 = load i32, ptr %34, align 4, !tbaa !83
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
  br label %65

65:                                               ; preds = %57, %64
  %66 = load ptr, ptr %12, align 8, !tbaa !87
  %67 = load i32, ptr %4, align 8, !tbaa !82
  %68 = add i32 %67, 1
  store i32 %68, ptr %4, align 8, !tbaa !82
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds i16, ptr %66, i64 %69
  store i16 %59, ptr %70, align 2, !tbaa !88
  %71 = getelementptr inbounds i16, ptr %60, i64 1
  br label %35, !llvm.loop !472

72:                                               ; preds = %136, %150
  %73 = phi i8 [ %151, %150 ], [ %82, %136 ]
  %74 = phi i1 [ false, %150 ], [ true, %136 ]
  %75 = phi ptr [ %153, %150 ], [ %137, %136 ]
  %76 = load i16, ptr %75, align 2, !tbaa !88
  switch i16 %76, label %81 [
    i16 0, label %154
    i16 -1, label %77
    i16 60, label %80
  ]

77:                                               ; preds = %72
  %78 = getelementptr inbounds i16, ptr %75, i64 1
  %79 = load i16, ptr %78, align 2, !tbaa !88
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
  %87 = load ptr, ptr %28, align 8, !tbaa !159
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %87, i64 0, i32 28
  %89 = load ptr, ptr %88, align 8, !tbaa !170
  %90 = getelementptr inbounds i8, ptr %89, i64 %85
  %91 = load i8, ptr %90, align 1, !tbaa !171
  %92 = icmp slt i8 %91, 0
  br i1 %92, label %106, label %93

93:                                               ; preds = %86
  br i1 %152, label %138, label %94

94:                                               ; preds = %93
  %95 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 1
  %96 = load i32, ptr %4, align 8, !tbaa !82
  %97 = load i32, ptr %95, align 4, !tbaa !83
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
  br label %100

100:                                              ; preds = %94, %99
  %101 = load ptr, ptr %12, align 8, !tbaa !87
  %102 = load i32, ptr %4, align 8, !tbaa !82
  %103 = add i32 %102, 1
  store i32 %103, ptr %4, align 8, !tbaa !82
  %104 = zext i32 %102 to i64
  %105 = getelementptr inbounds i16, ptr %101, i64 %104
  store i16 32, ptr %105, align 2, !tbaa !88
  br label %138

106:                                              ; preds = %86
  %107 = getelementptr inbounds i16, ptr %84, i64 1
  br label %136

108:                                              ; preds = %81
  %109 = load ptr, ptr %24, align 8, !tbaa !159
  %110 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %109, i64 0, i32 28
  %111 = load ptr, ptr %110, align 8, !tbaa !170
  %112 = getelementptr inbounds i8, ptr %111, i64 %85
  %113 = load i8, ptr %112, align 1, !tbaa !171
  %114 = icmp slt i8 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %108
  %116 = getelementptr inbounds i16, ptr %84, i64 1
  %117 = load i8, ptr %25, align 2, !tbaa !377, !range !147, !noundef !148
  %118 = icmp eq i8 %117, 0
  %119 = load i8, ptr %26, align 8, !range !147
  %120 = icmp eq i8 %119, 0
  %121 = select i1 %118, i1 true, i1 %120
  %122 = or i1 %121, %19
  br i1 %122, label %136, label %123

123:                                              ; preds = %115
  %124 = icmp ne i16 %83, 32
  %125 = select i1 %152, i1 true, i1 %124
  br i1 %125, label %134, label %126

126:                                              ; preds = %123
  %127 = load i16, ptr %116, align 2, !tbaa !88
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %126
  %130 = zext i16 %127 to i64
  %131 = getelementptr inbounds i8, ptr %111, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !171
  %133 = icmp slt i8 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129, %126, %123
  %135 = load ptr, ptr %27, align 8, !tbaa !139
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %135, i32 noundef 83, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %136

136:                                              ; preds = %134, %129, %115, %106
  %137 = phi ptr [ %116, %134 ], [ %116, %129 ], [ %116, %115 ], [ %107, %106 ]
  br label %72, !llvm.loop !473

138:                                              ; preds = %108, %93, %100
  %139 = load i32, ptr %4, align 8, !tbaa !82
  %140 = load i32, ptr %29, align 4, !tbaa !83
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
  br label %143

143:                                              ; preds = %138, %142
  %144 = load ptr, ptr %12, align 8, !tbaa !87
  %145 = load i32, ptr %4, align 8, !tbaa !82
  %146 = add i32 %145, 1
  store i32 %146, ptr %4, align 8, !tbaa !82
  %147 = zext i32 %145 to i64
  %148 = getelementptr inbounds i16, ptr %144, i64 %147
  store i16 %83, ptr %148, align 2, !tbaa !88
  %149 = getelementptr inbounds i16, ptr %84, i64 1
  br label %150, !llvm.loop !473

150:                                              ; preds = %23, %143
  %151 = phi i8 [ 1, %23 ], [ %82, %143 ]
  %152 = phi i1 [ true, %23 ], [ false, %143 ]
  %153 = phi ptr [ %3, %23 ], [ %149, %143 ]
  br label %72

154:                                              ; preds = %72, %35
  %155 = phi i8 [ %36, %35 ], [ %73, %72 ]
  %156 = and i8 %155, 1
  %157 = icmp ne i8 %156, 0
  ret i1 %157
}

declare void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !474 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.4", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !475
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.4", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !477
  %7 = load ptr, ptr %0, align 8, !tbaa !478
  %8 = load ptr, ptr %4, align 8, !tbaa !56
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !479
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.4", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !480
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !118
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !481

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !475
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !482
  %22 = load ptr, ptr %19, align 8, !tbaa !56
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !484
  br i1 %25, label %30, label %26, !prof !485

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !118
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !486, !llvm.loop !487

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !488

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !489
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getPSVIAttributeToFillEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !254
  %6 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !490
  %10 = icmp eq i32 %5, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %3
  %12 = load ptr, ptr %0, align 8, !tbaa !492
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 96, ptr noundef %12)
  %14 = load ptr, ptr %0, align 8, !tbaa !492
  invoke void @_ZN11xercesc_2_713PSVIAttributeC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %13, ptr noundef %14)
          to label %15 unwind label %42

15:                                               ; preds = %11
  %16 = load ptr, ptr %6, align 8, !tbaa !102
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef 1)
  %17 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !493
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !490
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  store ptr %13, ptr %22, align 8, !tbaa !118
  %23 = add i32 %20, 1
  store i32 %23, ptr %19, align 4, !tbaa !490
  %24 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !104
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %25, i32 noundef 1)
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !494
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %25, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !256
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %27, i64 %30
  store ptr %1, ptr %31, align 8, !tbaa !118
  %32 = add i32 %29, 1
  store i32 %32, ptr %28, align 4, !tbaa !256
  %33 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %34, i32 noundef 1)
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %34, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !494
  %37 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %34, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !256
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %36, i64 %39
  store ptr %2, ptr %40, align 8, !tbaa !118
  %41 = add i32 %38, 1
  store i32 %41, ptr %37, align 4, !tbaa !256
  br label %58

42:                                               ; preds = %11
  %43 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #18
  resume { ptr, i32 } %43

44:                                               ; preds = %3
  %45 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef %5)
  %46 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !104
  %48 = load i32, ptr %4, align 8, !tbaa !254
  %49 = load ptr, ptr %47, align 8, !tbaa !56
  %50 = getelementptr inbounds ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(40) %47, ptr noundef %1, i32 noundef %48)
  %52 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %0, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !105
  %54 = load i32, ptr %4, align 8, !tbaa !254
  %55 = load ptr, ptr %53, align 8, !tbaa !56
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  %57 = load ptr, ptr %56, align 8
  tail call void %57(ptr noundef nonnull align 8 dereferenceable(40) %53, ptr noundef %2, i32 noundef %54)
  br label %58

58:                                               ; preds = %44, %15
  %59 = phi ptr [ %13, %15 ], [ %45, %44 ]
  %60 = load i32, ptr %4, align 8, !tbaa !254
  %61 = add i32 %60, 1
  store i32 %61, ptr %4, align 8, !tbaa !254
  ret ptr %59
}

declare void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #3 align 2 !prof !55 {
  store i32 0, ptr %3, align 8, !tbaa !82
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  store i16 0, ptr %6, align 2, !tbaa !88
  %7 = load i16, ptr %2, align 2, !tbaa !88
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %56, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 1
  br label %12

12:                                               ; preds = %9, %44
  %13 = phi i16 [ %7, %9 ], [ %51, %44 ]
  %14 = phi ptr [ %2, %9 ], [ %50, %44 ]
  %15 = phi i8 [ 1, %9 ], [ %28, %44 ]
  %16 = icmp eq i16 %13, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds i16, ptr %14, i64 1
  %19 = load i16, ptr %18, align 2, !tbaa !88
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i16 [ %19, %17 ], [ %13, %12 ]
  %22 = phi ptr [ %18, %17 ], [ %14, %12 ]
  br i1 %16, label %27, label %23

23:                                               ; preds = %20
  %24 = load i16, ptr %22, align 2, !tbaa !88
  %25 = icmp eq i16 %24, 60
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 248, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %27

27:                                               ; preds = %26, %23, %20
  %28 = phi i8 [ %15, %20 ], [ 0, %26 ], [ %15, %23 ]
  br i1 %16, label %38, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %10, align 8, !tbaa !159
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %30, i64 0, i32 28
  %32 = load ptr, ptr %31, align 8, !tbaa !170
  %33 = zext i16 %21 to i64
  %34 = getelementptr inbounds i8, ptr %32, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !171
  %36 = icmp slt i8 %35, 0
  %37 = select i1 %36, i16 32, i16 %21
  br label %38

38:                                               ; preds = %29, %27
  %39 = phi i16 [ %21, %27 ], [ %37, %29 ]
  %40 = load i32, ptr %3, align 8, !tbaa !82
  %41 = load i32, ptr %11, align 4, !tbaa !83
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 1)
  br label %44

44:                                               ; preds = %38, %43
  %45 = load ptr, ptr %5, align 8, !tbaa !87
  %46 = load i32, ptr %3, align 8, !tbaa !82
  %47 = add i32 %46, 1
  store i32 %47, ptr %3, align 8, !tbaa !82
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds i16, ptr %45, i64 %48
  store i16 %39, ptr %49, align 2, !tbaa !88
  %50 = getelementptr inbounds i16, ptr %22, i64 1
  %51 = load i16, ptr %50, align 2, !tbaa !88
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %12, !llvm.loop !495

53:                                               ; preds = %44
  %54 = and i8 %28, 1
  %55 = icmp ne i8 %54, 0
  br label %56

56:                                               ; preds = %53, %4
  %57 = phi i1 [ true, %4 ], [ %55, %53 ]
  ret i1 %57
}

declare void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !322
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !497

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !498
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !352
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  ret ptr %18
}

declare void @_ZN11xercesc_2_713PSVIAttribute8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !499 {
  %2 = load ptr, ptr %0, align 8, !tbaa !324
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !500

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !326
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !501

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !56
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !502

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #21
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #19
  unreachable
}

declare void @_ZN11xercesc_2_77XMLAttrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_717PSVIAttributeList22getAttributePSVIByNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712SGXMLScanner13resolvePrefixEPKtRNS_9XMLBufferENS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %3) local_unnamed_addr #3 align 2 !prof !55 {
  %5 = alloca i8, align 1
  %6 = icmp eq ptr %1, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = load i16, ptr %1, align 2, !tbaa !88
  %9 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !88
  %10 = icmp eq i16 %8, %9
  br i1 %10, label %14, label %28

11:                                               ; preds = %4
  %12 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !88
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
  %22 = load i16, ptr %20, align 2, !tbaa !88
  %23 = load i16, ptr %21, align 2, !tbaa !88
  %24 = icmp eq i16 %22, %23
  br i1 %24, label %14, label %28, !llvm.loop !201

25:                                               ; preds = %14, %11
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %27 = load i32, ptr %26, align 8, !tbaa !292
  br label %58

28:                                               ; preds = %19, %7, %11
  br i1 %6, label %33, label %29

29:                                               ; preds = %28
  %30 = load i16, ptr %1, align 2, !tbaa !88
  %31 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !88
  %32 = icmp eq i16 %30, %31
  br i1 %32, label %36, label %50

33:                                               ; preds = %28
  %34 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !88
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
  %44 = load i16, ptr %42, align 2, !tbaa !88
  %45 = load i16, ptr %43, align 2, !tbaa !88
  %46 = icmp eq i16 %44, %45
  br i1 %46, label %36, label %50, !llvm.loop !201

47:                                               ; preds = %36, %33
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %49 = load i32, ptr %48, align 4, !tbaa !293
  br label %58

50:                                               ; preds = %41, %29, %33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #18
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %52 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %51, ptr noundef %1, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %53 = load i8, ptr %5, align 1, !tbaa !150, !range !147, !noundef !148
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 277, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %56

56:                                               ; preds = %55, %50
  %57 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %52, ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  br label %58

58:                                               ; preds = %56, %47, %25
  %59 = phi i32 [ %27, %25 ], [ %49, %47 ], [ %52, %56 ]
  ret i32 %59
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner9scanResetERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !259
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  %6 = load i8, ptr %5, align 1, !tbaa !503, !range !147, !noundef !148
  %7 = icmp ne i8 %6, 0
  tail call void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext %7)
  %8 = load ptr, ptr %3, align 8, !tbaa !259
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %10 = load i8, ptr %9, align 2, !tbaa !504, !range !147, !noundef !148
  %11 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %8, i64 0, i32 1
  store i8 %10, ptr %11, align 1, !tbaa !375
  %12 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !231
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  %18 = select i1 %14, i1 true, i1 %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getXSModelEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
  store ptr %20, ptr %12, align 8, !tbaa !231
  br label %21

21:                                               ; preds = %19, %2
  %22 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !92
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %27 = load ptr, ptr %26, align 8, !tbaa !285
  %28 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 160, ptr noundef %27)
  %29 = load ptr, ptr %26, align 8, !tbaa !285
  invoke void @_ZN11xercesc_2_713SchemaGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %28, ptr noundef %29)
          to label %30 unwind label %31

30:                                               ; preds = %25
  store ptr %28, ptr %22, align 8, !tbaa !92
  br label %33

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %28, ptr noundef %27) #18
  br label %253

33:                                               ; preds = %30, %21
  %34 = load ptr, ptr %22, align 8, !tbaa !92
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %34, ptr %35, align 8, !tbaa !223
  %36 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  store i32 0, ptr %36, align 4, !tbaa !79
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr null, ptr %37, align 8, !tbaa !248
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %39 = load ptr, ptr %38, align 8, !tbaa !139
  %40 = load ptr, ptr %39, align 8, !tbaa !56
  %41 = getelementptr inbounds ptr, ptr %40, i64 11
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(40) %39, ptr noundef %34)
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %44 = load i8, ptr %43, align 1, !tbaa !385, !range !147, !noundef !148
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %33
  %47 = load ptr, ptr %38, align 8, !tbaa !139
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %49 = load ptr, ptr %48, align 8, !tbaa !261
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %47, i64 0, i32 2
  store ptr %49, ptr %50, align 8, !tbaa !380
  %51 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %47, i64 0, i32 13, i32 2
  store ptr %49, ptr %51, align 8, !tbaa !381
  %52 = load ptr, ptr %3, align 8, !tbaa !259
  %53 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %47, i64 0, i32 3
  store ptr %52, ptr %53, align 8, !tbaa !384
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %55 = load i8, ptr %54, align 1, !tbaa !382, !range !147, !noundef !148
  %56 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %47, i64 0, i32 13, i32 1
  store i8 %55, ptr %56, align 8, !tbaa !383
  br label %57

57:                                               ; preds = %46, %33
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %59 = load i32, ptr %58, align 8, !tbaa !284
  %60 = icmp eq i32 %59, 1
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %62 = zext i1 %60 to i8
  store i8 %62, ptr %61, align 8, !tbaa !146
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %64 = load ptr, ptr %63, align 8, !tbaa !141
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %57
  %67 = load ptr, ptr %64, align 8, !tbaa !56
  %68 = getelementptr inbounds ptr, ptr %67, i64 9
  %69 = load ptr, ptr %68, align 8
  tail call void %69(ptr noundef nonnull align 8 dereferenceable(8) %64)
  br label %70

70:                                               ; preds = %66, %57
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %72 = load ptr, ptr %71, align 8, !tbaa !260
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %72, align 8, !tbaa !56
  %76 = getelementptr inbounds ptr, ptr %75, i64 4
  %77 = load ptr, ptr %76, align 8
  tail call void %77(ptr noundef nonnull align 8 dereferenceable(8) %72)
  br label %78

78:                                               ; preds = %74, %70
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %80 = load ptr, ptr %79, align 8, !tbaa !261
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %80, align 8, !tbaa !56
  %84 = getelementptr inbounds ptr, ptr %83, i64 3
  %85 = load ptr, ptr %84, align 8
  tail call void %85(ptr noundef nonnull align 8 dereferenceable(8) %80)
  br label %86

86:                                               ; preds = %82, %78
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %88 = load ptr, ptr %87, align 8, !tbaa !209
  %89 = load ptr, ptr %88, align 8, !tbaa !56
  %90 = getelementptr inbounds ptr, ptr %89, i64 4
  %91 = load ptr, ptr %90, align 8
  tail call void %91(ptr noundef nonnull align 8 dereferenceable(16) %88)
  %92 = load ptr, ptr %87, align 8, !tbaa !209
  %93 = load ptr, ptr %92, align 8, !tbaa !56
  %94 = getelementptr inbounds ptr, ptr %93, i64 9
  %95 = load ptr, ptr %94, align 8
  %96 = tail call noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(16) %92, ptr noundef null)
  %97 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 48
  store i8 0, ptr %97, align 8, !tbaa !505
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %99 = load ptr, ptr %98, align 8, !tbaa !91
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %101 = load ptr, ptr %100, align 8, !tbaa !234
  %102 = load ptr, ptr %99, align 8, !tbaa !56
  %103 = getelementptr inbounds ptr, ptr %102, i64 3
  %104 = load ptr, ptr %103, align 8
  tail call void %104(ptr noundef nonnull align 8 dereferenceable(8) %99, ptr noundef %101)
  store ptr null, ptr %100, align 8, !tbaa !234
  %105 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 12
  %106 = load ptr, ptr %105, align 8, !tbaa !97
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %86
  tail call void @_ZN11xercesc_2_725IdentityConstraintHandler5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %106)
  br label %109

109:                                              ; preds = %108, %86
  %110 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %111 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %112 = load i32, ptr %111, align 4, !tbaa !243
  %113 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 29
  %114 = load i32, ptr %113, align 8, !tbaa !506
  %115 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %116 = load i32, ptr %115, align 4, !tbaa !293
  %117 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %118 = load i32, ptr %117, align 8, !tbaa !292
  tail call void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104) %110, i32 noundef %112, i32 noundef %114, i32 noundef %116, i32 noundef %118)
  %119 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 32
  %120 = load i32, ptr %119, align 4, !tbaa !287
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %109
  %123 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %124 = load ptr, ptr %123, align 8, !tbaa !236
  %125 = load ptr, ptr %124, align 8, !tbaa !56
  %126 = getelementptr inbounds ptr, ptr %125, i64 5
  %127 = load ptr, ptr %126, align 8
  %128 = tail call noundef i32 %127(ptr noundef nonnull align 8 dereferenceable(40) %124, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE)
  store i32 %128, ptr %119, align 4, !tbaa !287
  br label %129

129:                                              ; preds = %122, %109
  %130 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 0, ptr %130, align 1, !tbaa !142
  %131 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 0, ptr %131, align 2, !tbaa !377
  %132 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  store i32 0, ptr %132, align 8, !tbaa !378
  %133 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 1, ptr %133, align 1, !tbaa !379
  %134 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 1
  store i8 0, ptr %134, align 8, !tbaa !59
  %135 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  store i8 1, ptr %135, align 2, !tbaa !184
  %136 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  store i8 1, ptr %136, align 2, !tbaa !507
  %137 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 19
  %138 = load ptr, ptr %137, align 8, !tbaa !106
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %147

140:                                              ; preds = %129
  %141 = load ptr, ptr %98, align 8, !tbaa !91
  %142 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %141)
  %143 = load ptr, ptr %98, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_711PSVIElementC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %142, ptr noundef %143)
          to label %144 unwind label %145

144:                                              ; preds = %140
  store ptr %142, ptr %137, align 8, !tbaa !106
  br label %147

145:                                              ; preds = %140
  %146 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %142, ptr noundef %141) #18
  br label %253

147:                                              ; preds = %144, %129
  %148 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 20
  %149 = load ptr, ptr %148, align 8, !tbaa !107
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %169

151:                                              ; preds = %147
  %152 = load ptr, ptr %98, align 8, !tbaa !91
  %153 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %152)
  %154 = load ptr, ptr %98, align 8, !tbaa !91
  %155 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %153, i64 0, i32 1
  store i8 0, ptr %155, align 8, !tbaa !508
  %156 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %153, i64 0, i32 1, i32 1
  store i32 0, ptr %156, align 4, !tbaa !221
  %157 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %153, i64 0, i32 1, i32 2
  store i32 8, ptr %157, align 8, !tbaa !509
  %158 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %153, i64 0, i32 1, i32 3
  store ptr null, ptr %158, align 8, !tbaa !110
  %159 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %153, i64 0, i32 1, i32 4
  store ptr %154, ptr %159, align 8, !tbaa !108
  %160 = load ptr, ptr %154, align 8, !tbaa !56
  %161 = getelementptr inbounds ptr, ptr %160, i64 2
  %162 = load ptr, ptr %161, align 8
  %163 = invoke noundef ptr %162(ptr noundef nonnull align 8 dereferenceable(8) %154, i64 noundef 8)
          to label %164 unwind label %167

164:                                              ; preds = %151
  store ptr %163, ptr %158, align 8, !tbaa !110
  %165 = load i32, ptr %157, align 8, !tbaa !509
  %166 = zext i32 %165 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %163, i8 0, i64 %166, i1 false)
  store ptr %153, ptr %148, align 8, !tbaa !107
  br label %171

167:                                              ; preds = %151
  %168 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %153, ptr noundef %152) #18
  br label %253

169:                                              ; preds = %147
  %170 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %149, i64 0, i32 1, i32 1
  store i32 0, ptr %170, align 4, !tbaa !221
  br label %171

171:                                              ; preds = %169, %164
  %172 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21
  store i8 0, ptr %172, align 8, !tbaa !211
  %173 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 1
  store i8 0, ptr %173, align 1, !tbaa !187
  %174 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 2
  store i32 -1, ptr %174, align 4, !tbaa !228
  %175 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 3
  store i32 -1, ptr %175, align 8, !tbaa !229
  %176 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 4
  store i32 -1, ptr %176, align 4, !tbaa !230
  %177 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 5
  %178 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %177, i8 0, i64 24, i1 false)
  %179 = load ptr, ptr %178, align 8, !tbaa !96
  %180 = load ptr, ptr %179, align 8, !tbaa !56
  %181 = getelementptr inbounds ptr, ptr %180, i64 6
  %182 = load ptr, ptr %181, align 8
  tail call void %182(ptr noundef nonnull align 8 dereferenceable(186) %179)
  %183 = load ptr, ptr %178, align 8, !tbaa !96
  %184 = load ptr, ptr %79, align 8, !tbaa !261
  %185 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %183, i64 0, i32 2
  store ptr %184, ptr %185, align 8, !tbaa !380
  %186 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %183, i64 0, i32 13, i32 2
  store ptr %184, ptr %186, align 8, !tbaa !381
  %187 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %188 = load i8, ptr %187, align 1, !tbaa !382, !range !147, !noundef !148
  %189 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %183, i64 0, i32 13, i32 1
  store i8 %188, ptr %189, align 8, !tbaa !383
  %190 = load ptr, ptr %3, align 8, !tbaa !259
  %191 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %183, i64 0, i32 3
  store ptr %190, ptr %191, align 8, !tbaa !384
  %192 = load i8, ptr %43, align 1, !tbaa !385, !range !147, !noundef !148
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %171
  %195 = load ptr, ptr %38, align 8, !tbaa !139
  %196 = load ptr, ptr %195, align 8, !tbaa !56
  %197 = getelementptr inbounds ptr, ptr %196, i64 6
  %198 = load ptr, ptr %197, align 8
  tail call void %198(ptr noundef nonnull align 8 dereferenceable(40) %195)
  br label %199

199:                                              ; preds = %194, %171
  %200 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %201 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %202 = load i8, ptr %201, align 1, !tbaa !510, !range !147, !noundef !148
  %203 = icmp ne i8 %202, 0
  %204 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %200, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext true, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %203)
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %229

206:                                              ; preds = %199
  %207 = load ptr, ptr %1, align 8, !tbaa !56
  %208 = getelementptr inbounds ptr, ptr %207, i64 6
  %209 = load ptr, ptr %208, align 8
  %210 = tail call noundef zeroext i1 %209(ptr noundef nonnull align 8 dereferenceable(41) %1)
  %211 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %212 = load ptr, ptr %1, align 8, !tbaa !56
  %213 = getelementptr inbounds ptr, ptr %212, i64 5
  %214 = load ptr, ptr %213, align 8
  br i1 %210, label %215, label %222

215:                                              ; preds = %206
  %216 = invoke noundef ptr %214(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %217 unwind label %220

217:                                              ; preds = %215
  %218 = load ptr, ptr %98, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %211, ptr noundef nonnull @.str, i32 noundef 3144, i32 noundef 76, ptr noundef %216, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %218)
          to label %219 unwind label %220

219:                                              ; preds = %217
  tail call void @__cxa_throw(ptr nonnull %211, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

220:                                              ; preds = %217, %215
  %221 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %211) #18
  br label %253

222:                                              ; preds = %206
  %223 = invoke noundef ptr %214(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %224 unwind label %227

224:                                              ; preds = %222
  %225 = load ptr, ptr %98, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %211, ptr noundef nonnull @.str, i32 noundef 3146, i32 noundef 2, ptr noundef %223, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %225)
          to label %226 unwind label %227

226:                                              ; preds = %224
  tail call void @__cxa_throw(ptr nonnull %211, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

227:                                              ; preds = %224, %222
  %228 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %211) #18
  br label %253

229:                                              ; preds = %199
  %230 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %200, ptr noundef nonnull %204, ptr noundef null)
  %231 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %232 = load ptr, ptr %231, align 8, !tbaa !511
  %233 = icmp eq ptr %232, null
  br i1 %233, label %241, label %234

234:                                              ; preds = %229
  %235 = load ptr, ptr %232, align 8, !tbaa !56
  %236 = getelementptr inbounds ptr, ptr %235, i64 3
  %237 = load ptr, ptr %236, align 8
  %238 = tail call noundef i32 %237(ptr noundef nonnull align 8 dereferenceable(12) %232)
  %239 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  store i32 %238, ptr %239, align 4, !tbaa !512
  %240 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  store i32 0, ptr %240, align 8, !tbaa !513
  br label %241

241:                                              ; preds = %234, %229
  %242 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 14
  store i32 0, ptr %242, align 8, !tbaa !321
  %243 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 36
  %244 = load i32, ptr %243, align 8, !tbaa !514
  %245 = icmp ugt i32 %244, 31
  br i1 %245, label %246, label %249

246:                                              ; preds = %241
  %247 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 15
  %248 = load ptr, ptr %247, align 8, !tbaa !99
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %248)
  tail call void @_ZN11xercesc_2_710XMLScanner16recreateUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
  br label %250

249:                                              ; preds = %241
  tail call void @_ZN11xercesc_2_710XMLScanner13resetUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
  br label %250

250:                                              ; preds = %249, %246
  %251 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 16
  %252 = load ptr, ptr %251, align 8, !tbaa !100
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %252)
  ret void

253:                                              ; preds = %220, %227, %167, %145, %31
  %254 = phi { ptr, i32 } [ %168, %167 ], [ %146, %145 ], [ %32, %31 ], [ %221, %220 ], [ %228, %227 ]
  resume { ptr, i32 } %254
}

declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getXSModelEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_713SchemaGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_725IdentityConstraintHandler5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_711PSVIElementC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner20resetPSVIElemContextEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(1000) %0) local_unnamed_addr #13 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21
  store i8 0, ptr %2, align 8, !tbaa !211
  %3 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 1
  store i8 0, ptr %3, align 1, !tbaa !187
  %4 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 2
  store i32 -1, ptr %4, align 4, !tbaa !228
  %5 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 3
  store i32 -1, ptr %5, align 8, !tbaa !229
  %6 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 4
  store i32 -1, ptr %6, align 4, !tbaa !230
  %7 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 21, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  ret void
}

declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(41), i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %12
}

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #9 comdat align 2 !prof !515 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !128
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5, !prof !516

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !126
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !517

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %35, %5
  store i32 0, ptr %2, align 8, !tbaa !128
  br label %42

13:                                               ; preds = %9, %35
  %14 = phi i64 [ 0, %9 ], [ %38, %35 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !125
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !118
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19, !prof !518

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.16", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !461
  %23 = load i8, ptr %11, align 8, !tbaa !124, !range !147, !noundef !148
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !454

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !452
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %26) #21
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !122
  %31 = load ptr, ptr %30, align 8, !tbaa !56
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20), !prof !519
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !prof !454, !llvm.loop !520

35:                                               ; preds = %29, %13
  %36 = load ptr, ptr %10, align 8, !tbaa !125
  %37 = getelementptr inbounds ptr, ptr %36, i64 %14
  store ptr null, ptr %37, align 8, !tbaa !118
  %38 = add nuw nsw i64 %14, 1
  %39 = load i32, ptr %6, align 8, !tbaa !126
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %13, label %12, !prof !521, !llvm.loop !522

42:                                               ; preds = %1, %12
  ret void
}

declare void @_ZN11xercesc_2_710XMLScanner16recreateUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_710XMLScanner13resetUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner12sendCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr nocapture noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #3 align 2 !prof !55 {
  %3 = load i32, ptr %1, align 8, !tbaa !82
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %173, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %7 = load i8, ptr %6, align 8, !tbaa !146, !range !147, !noundef !148
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %158, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = zext i32 %3 to i64
  %13 = getelementptr inbounds i16, ptr %11, i64 %12
  store i16 0, ptr %13, align 2, !tbaa !88
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %15 = load ptr, ptr %14, align 8, !tbaa !139
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %15, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !190
  %18 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.8", ptr %17, i64 0, i32 1, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !194
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %9
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %17)
  %23 = load ptr, ptr %22, align 8, !tbaa !118
  br label %24

24:                                               ; preds = %9, %21
  %25 = phi ptr [ %23, %21 ], [ null, %9 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %25, i64 0, i32 10
  %29 = load i32, ptr %28, align 8, !tbaa !232
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 0, i32 2
  %32 = icmp eq i32 %29, 4
  %33 = select i1 %32, i32 1, i32 %31
  br label %34

34:                                               ; preds = %27, %24
  %35 = phi i32 [ 2, %24 ], [ %33, %27 ]
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load ptr, ptr %14, align 8, !tbaa !139
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %38, i32 noundef 22)
  br label %170

39:                                               ; preds = %34
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !159
  %42 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj(ptr noundef nonnull align 8 dereferenceable(163992) %41, ptr noundef %11, i32 noundef %3)
  br i1 %42, label %43, label %104

43:                                               ; preds = %39
  %44 = icmp eq i32 %35, 1
  br i1 %44, label %45, label %53

45:                                               ; preds = %43
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %47 = load ptr, ptr %46, align 8, !tbaa !141
  %48 = icmp eq ptr %47, null
  br i1 %48, label %170, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %47, align 8, !tbaa !56
  %51 = getelementptr inbounds ptr, ptr %50, i64 8
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef %11, i32 noundef %3, i1 noundef zeroext false)
  br label %170

53:                                               ; preds = %43
  %54 = load ptr, ptr %14, align 8, !tbaa !139
  %55 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %54, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !197
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %56, i64 0, i32 5
  %60 = load i16, ptr %59, align 4, !tbaa !340
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  tail call void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %54, ptr noundef nonnull %56, ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(40) %63)
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !87
  %66 = load i32, ptr %63, align 8, !tbaa !82
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i16, ptr %65, i64 %67
  store i16 0, ptr %68, align 2, !tbaa !88
  br label %69

69:                                               ; preds = %53, %58, %62
  %70 = phi ptr [ %65, %62 ], [ %11, %58 ], [ %11, %53 ]
  %71 = phi i32 [ %66, %62 ], [ %3, %58 ], [ %3, %53 ]
  %72 = load ptr, ptr %14, align 8, !tbaa !139
  %73 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %72, i64 0, i32 9
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %73, ptr noundef %70)
  %74 = load i8, ptr %6, align 8, !tbaa !146, !range !147, !noundef !148
  %75 = icmp ne i8 %74, 0
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  %77 = load i8, ptr %76, align 4, !range !147
  %78 = icmp ne i8 %77, 0
  %79 = select i1 %75, i1 %78, i1 false
  %80 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 12
  %81 = load ptr, ptr %80, align 8
  %82 = icmp ne ptr %81, null
  %83 = select i1 %79, i1 %82, i1 false
  br i1 %83, label %84, label %91

84:                                               ; preds = %69
  %85 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %81, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !523
  %87 = load i32, ptr %86, align 8, !tbaa !525
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %90, ptr noundef %70, i32 noundef %71)
  br label %91

91:                                               ; preds = %69, %89, %84
  %92 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %93 = load ptr, ptr %92, align 8, !tbaa !141
  %94 = icmp eq ptr %93, null
  br i1 %94, label %170, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  %97 = load i8, ptr %96, align 8, !tbaa !341, !range !147, !noundef !148
  %98 = icmp eq i8 %97, 0
  %99 = load ptr, ptr %93, align 8, !tbaa !56
  %100 = getelementptr inbounds ptr, ptr %99, i64 2
  %101 = load ptr, ptr %100, align 8
  br i1 %98, label %103, label %102

102:                                              ; preds = %95
  tail call void %101(ptr noundef nonnull align 8 dereferenceable(8) %93, ptr noundef %70, i32 noundef %71, i1 noundef zeroext false)
  br label %170

103:                                              ; preds = %95
  tail call void %101(ptr noundef nonnull align 8 dereferenceable(8) %93, ptr noundef %11, i32 noundef %3, i1 noundef zeroext false)
  br label %170

104:                                              ; preds = %39
  %105 = icmp eq i32 %35, 2
  %106 = load ptr, ptr %14, align 8, !tbaa !139
  br i1 %105, label %107, label %157

107:                                              ; preds = %104
  %108 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %106, i64 0, i32 7
  %109 = load ptr, ptr %108, align 8, !tbaa !197
  %110 = icmp eq ptr %109, null
  br i1 %110, label %122, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %109, i64 0, i32 5
  %113 = load i16, ptr %112, align 4, !tbaa !340
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  tail call void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %106, ptr noundef nonnull %109, ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(40) %116)
  %117 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 6
  %118 = load ptr, ptr %117, align 8, !tbaa !87
  %119 = load i32, ptr %116, align 8, !tbaa !82
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i16, ptr %118, i64 %120
  store i16 0, ptr %121, align 2, !tbaa !88
  br label %122

122:                                              ; preds = %107, %111, %115
  %123 = phi i32 [ %119, %115 ], [ %3, %111 ], [ %3, %107 ]
  %124 = phi ptr [ %118, %115 ], [ %11, %111 ], [ %11, %107 ]
  %125 = load ptr, ptr %14, align 8, !tbaa !139
  %126 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %125, i64 0, i32 9
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %126, ptr noundef %124)
  %127 = load i8, ptr %6, align 8, !tbaa !146, !range !147, !noundef !148
  %128 = icmp ne i8 %127, 0
  %129 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  %130 = load i8, ptr %129, align 4, !range !147
  %131 = icmp ne i8 %130, 0
  %132 = select i1 %128, i1 %131, i1 false
  %133 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 12
  %134 = load ptr, ptr %133, align 8
  %135 = icmp ne ptr %134, null
  %136 = select i1 %132, i1 %135, i1 false
  br i1 %136, label %137, label %144

137:                                              ; preds = %122
  %138 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %134, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !523
  %140 = load i32, ptr %139, align 8, !tbaa !525
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %143, ptr noundef %124, i32 noundef %123)
  br label %144

144:                                              ; preds = %122, %142, %137
  %145 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %146 = load ptr, ptr %145, align 8, !tbaa !141
  %147 = icmp eq ptr %146, null
  br i1 %147, label %170, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  %150 = load i8, ptr %149, align 8, !tbaa !341, !range !147, !noundef !148
  %151 = icmp eq i8 %150, 0
  %152 = load ptr, ptr %146, align 8, !tbaa !56
  %153 = getelementptr inbounds ptr, ptr %152, i64 2
  %154 = load ptr, ptr %153, align 8
  br i1 %151, label %156, label %155

155:                                              ; preds = %148
  tail call void %154(ptr noundef nonnull align 8 dereferenceable(8) %146, ptr noundef %124, i32 noundef %123, i1 noundef zeroext false)
  br label %170

156:                                              ; preds = %148
  tail call void %154(ptr noundef nonnull align 8 dereferenceable(8) %146, ptr noundef %11, i32 noundef %3, i1 noundef zeroext false)
  br label %170

157:                                              ; preds = %104
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %106, i32 noundef 22)
  br label %170

158:                                              ; preds = %5
  %159 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %160 = load ptr, ptr %159, align 8, !tbaa !141
  %161 = icmp eq ptr %160, null
  br i1 %161, label %170, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %164 = load ptr, ptr %163, align 8, !tbaa !87
  %165 = zext i32 %3 to i64
  %166 = getelementptr inbounds i16, ptr %164, i64 %165
  store i16 0, ptr %166, align 2, !tbaa !88
  %167 = load ptr, ptr %160, align 8, !tbaa !56
  %168 = getelementptr inbounds ptr, ptr %167, i64 2
  %169 = load ptr, ptr %168, align 8
  tail call void %169(ptr noundef nonnull align 8 dereferenceable(8) %160, ptr noundef %164, i32 noundef %3, i1 noundef zeroext false)
  br label %170

170:                                              ; preds = %37, %157, %49, %45, %102, %103, %91, %155, %156, %144, %158, %162
  store i32 0, ptr %1, align 8, !tbaa !82
  %171 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %172 = load ptr, ptr %171, align 8, !tbaa !87
  store i16 0, ptr %172, align 2, !tbaa !88
  br label %173

173:                                              ; preds = %2, %170
  ret void
}

declare noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner11updateNSMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 align 2 !prof !55 {
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %1, i16 noundef zeroext 58)
  tail call void @_ZN11xercesc_2_712SGXMLScanner11updateNSMapEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef %2, i32 noundef %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner11updateNSMapEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %6 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  %7 = invoke noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner20normalizeAttRawValueEPKtS2_RNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %8 unwind label %38

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  %11 = load i32, ptr %6, align 8, !tbaa !82
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i16, ptr %10, i64 %12
  store i16 0, ptr %13, align 2, !tbaa !88
  %14 = icmp eq i32 %3, -1
  br i1 %14, label %93, label %15

15:                                               ; preds = %8
  %16 = sext i32 %3 to i64
  %17 = getelementptr i16, ptr %1, i64 %16
  %18 = getelementptr i16, ptr %17, i64 1
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i16, ptr %18, align 2, !tbaa !88
  %22 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !88
  %23 = icmp eq i16 %21, %22
  br i1 %23, label %27, label %42

24:                                               ; preds = %15
  %25 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !88
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %81, label %42

27:                                               ; preds = %20, %32
  %28 = phi i16 [ %35, %32 ], [ %21, %20 ]
  %29 = phi ptr [ %34, %32 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %20 ]
  %30 = phi ptr [ %33, %32 ], [ %18, %20 ]
  %31 = icmp eq i16 %28, 0
  br i1 %31, label %81, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds i16, ptr %30, i64 1
  %34 = getelementptr inbounds i16, ptr %29, i64 1
  %35 = load i16, ptr %33, align 2, !tbaa !88
  %36 = load i16, ptr %34, align 2, !tbaa !88
  %37 = icmp eq i16 %35, %36
  br i1 %37, label %27, label %42, !llvm.loop !201

38:                                               ; preds = %4
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %169

40:                                               ; preds = %81, %92, %153, %162, %155
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %169

42:                                               ; preds = %32, %20, %24
  br i1 %19, label %47, label %43

43:                                               ; preds = %42
  %44 = load i16, ptr %18, align 2, !tbaa !88
  %45 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !88
  %46 = icmp eq i16 %44, %45
  br i1 %46, label %50, label %83

47:                                               ; preds = %42
  %48 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !88
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %61, label %83

50:                                               ; preds = %43, %55
  %51 = phi i16 [ %58, %55 ], [ %44, %43 ]
  %52 = phi ptr [ %57, %55 ], [ @_ZN11xercesc_2_76XMLUni11fgXMLStringE, %43 ]
  %53 = phi ptr [ %56, %55 ], [ %18, %43 ]
  %54 = icmp eq i16 %51, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds i16, ptr %53, i64 1
  %57 = getelementptr inbounds i16, ptr %52, i64 1
  %58 = load i16, ptr %56, align 2, !tbaa !88
  %59 = load i16, ptr %57, align 2, !tbaa !88
  %60 = icmp eq i16 %58, %59
  br i1 %60, label %50, label %83, !llvm.loop !201

61:                                               ; preds = %50, %47
  %62 = icmp eq ptr %10, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %61
  %64 = load i16, ptr %10, align 2, !tbaa !88
  %65 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, align 2, !tbaa !88
  %66 = icmp eq i16 %64, %65
  br i1 %66, label %70, label %81

67:                                               ; preds = %61
  %68 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, align 2, !tbaa !88
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
  %78 = load i16, ptr %76, align 2, !tbaa !88
  %79 = load i16, ptr %77, align 2, !tbaa !88
  %80 = icmp eq i16 %78, %79
  br i1 %80, label %70, label %81, !llvm.loop !201

81:                                               ; preds = %27, %75, %24, %67, %63
  %82 = phi i32 [ 303, %63 ], [ 303, %67 ], [ 301, %24 ], [ 303, %75 ], [ 301, %27 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %82)
          to label %83 unwind label %40

83:                                               ; preds = %55, %70, %81, %43, %67, %47
  %84 = icmp eq ptr %10, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %83
  %86 = load i16, ptr %10, align 2, !tbaa !88
  %87 = icmp eq i16 %86, 0
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 61
  %89 = load i32, ptr %88, align 8
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %87, i1 %90, i1 false
  br i1 %91, label %92, label %93

92:                                               ; preds = %85, %83
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 300, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %93 unwind label %40

93:                                               ; preds = %92, %85, %8
  %94 = phi ptr [ %18, %85 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %8 ], [ %18, %92 ]
  %95 = icmp eq ptr %10, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load i16, ptr %10, align 2, !tbaa !88
  %98 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, align 2, !tbaa !88
  %99 = icmp eq i16 %97, %98
  br i1 %99, label %103, label %114

100:                                              ; preds = %93
  %101 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, align 2, !tbaa !88
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %153, label %114

103:                                              ; preds = %96, %108
  %104 = phi i16 [ %111, %108 ], [ %97, %96 ]
  %105 = phi ptr [ %110, %108 ], [ @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, %96 ]
  %106 = phi ptr [ %109, %108 ], [ %10, %96 ]
  %107 = icmp eq i16 %104, 0
  br i1 %107, label %153, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds i16, ptr %106, i64 1
  %110 = getelementptr inbounds i16, ptr %105, i64 1
  %111 = load i16, ptr %109, align 2, !tbaa !88
  %112 = load i16, ptr %110, align 2, !tbaa !88
  %113 = icmp eq i16 %111, %112
  br i1 %113, label %103, label %114, !llvm.loop !201

114:                                              ; preds = %108, %96, %100
  br i1 %95, label %119, label %115

115:                                              ; preds = %114
  %116 = load i16, ptr %10, align 2, !tbaa !88
  %117 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, align 2, !tbaa !88
  %118 = icmp eq i16 %116, %117
  br i1 %118, label %122, label %155

119:                                              ; preds = %114
  %120 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, align 2, !tbaa !88
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %133, label %155

122:                                              ; preds = %115, %127
  %123 = phi i16 [ %130, %127 ], [ %116, %115 ]
  %124 = phi ptr [ %129, %127 ], [ @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, %115 ]
  %125 = phi ptr [ %128, %127 ], [ %10, %115 ]
  %126 = icmp eq i16 %123, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds i16, ptr %125, i64 1
  %129 = getelementptr inbounds i16, ptr %124, i64 1
  %130 = load i16, ptr %128, align 2, !tbaa !88
  %131 = load i16, ptr %129, align 2, !tbaa !88
  %132 = icmp eq i16 %130, %131
  br i1 %132, label %122, label %155, !llvm.loop !201

133:                                              ; preds = %122, %119
  %134 = icmp eq ptr %94, null
  br i1 %134, label %139, label %135

135:                                              ; preds = %133
  %136 = load i16, ptr %94, align 2, !tbaa !88
  %137 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !88
  %138 = icmp eq i16 %136, %137
  br i1 %138, label %142, label %153

139:                                              ; preds = %133
  %140 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !88
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
  %150 = load i16, ptr %148, align 2, !tbaa !88
  %151 = load i16, ptr %149, align 2, !tbaa !88
  %152 = icmp eq i16 %150, %151
  br i1 %152, label %142, label %153, !llvm.loop !201

153:                                              ; preds = %103, %147, %139, %135, %100
  %154 = phi i32 [ 302, %100 ], [ 304, %135 ], [ 304, %139 ], [ 304, %147 ], [ 302, %103 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %154)
          to label %155 unwind label %40

155:                                              ; preds = %127, %142, %153, %115, %139, %119
  %156 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %157 = load ptr, ptr %156, align 8, !tbaa !236
  %158 = load ptr, ptr %157, align 8, !tbaa !56
  %159 = getelementptr inbounds ptr, ptr %158, i64 5
  %160 = load ptr, ptr %159, align 8
  %161 = invoke noundef i32 %160(ptr noundef nonnull align 8 dereferenceable(40) %157, ptr noundef %10)
          to label %162 unwind label %40

162:                                              ; preds = %155
  %163 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  invoke void @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104) %163, ptr noundef %94, i32 noundef %161)
          to label %164 unwind label %40

164:                                              ; preds = %162
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %168 unwind label %165

165:                                              ; preds = %164
  %166 = landingpad { ptr, i32 }
          catch ptr null
  %167 = extractvalue { ptr, i32 } %166, 0
  tail call void @__clang_call_terminate(ptr %167) #19
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
  tail call void @__clang_call_terminate(ptr %173) #19
  unreachable

174:                                              ; preds = %169
  resume { ptr, i32 } %170
}

declare void @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !527 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !256
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !528

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !529
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !494
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  ret ptr %18
}

declare void @_ZN11xercesc_2_724XMLSchemaDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_724XMLSchemaDescriptionImpl16setLocationHintsEPKt(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPNS_21XMLGrammarDescriptionE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_724XMLSchemaDescriptionImplD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare void @_ZN11xercesc_2_712XSDDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(368), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712XSDDOMParser20setUserEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(368), ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712XSDDOMParser20setUserErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(368), ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef, ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %8
}

declare noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81)) unnamed_addr #2

declare void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_714TraverseSchemaC1EPNS_10DOMElementEPNS_13XMLStringPoolEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_10XMLScannerEPKtPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_714TraverseSchemaD1Ev(ptr noundef nonnull align 8 dereferenceable(552)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XSDDOMParserD1Ev(ptr noundef nonnull align 8 dereferenceable(368)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712SGXMLScanner15resolveSystemIdEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %4 = alloca i16, align 2
  %5 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %6 = alloca %"class.xercesc_2_7::XMLResourceIdentifier", align 8
  %7 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %8 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %10 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #18
  store i16 -1, ptr %4, align 2, !tbaa !88
  invoke void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %11 unwind label %29

11:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #18
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  %14 = load i32, ptr %10, align 8, !tbaa !82
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i16, ptr %13, i64 %15
  store i16 0, ptr %16, align 2, !tbaa !88
  %17 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %18 unwind label %31

18:                                               ; preds = %11
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %20 = load ptr, ptr %19, align 8, !tbaa !260
  %21 = icmp eq ptr %20, null
  br i1 %21, label %61, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !tbaa !56
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(40) %17)
          to label %27 unwind label %33

27:                                               ; preds = %22
  br i1 %26, label %35, label %28

28:                                               ; preds = %27
  store i32 0, ptr %17, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef %13)
          to label %35 unwind label %33

29:                                               ; preds = %3
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #18
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
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %36, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %37 unwind label %55

37:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #18
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %17, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !87
  %40 = load i32, ptr %17, align 8, !tbaa !82
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i16, ptr %39, i64 %41
  store i16 0, ptr %42, align 2, !tbaa !88
  %43 = load ptr, ptr %5, align 8, !tbaa !262
  store i32 4, ptr %6, align 8, !tbaa !264
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %6, i64 0, i32 1
  store ptr %2, ptr %44, align 8, !tbaa !267
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %6, i64 0, i32 2
  store ptr %39, ptr %45, align 8, !tbaa !268
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %6, i64 0, i32 3
  store ptr %43, ptr %46, align 8, !tbaa !269
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %6, i64 0, i32 4
  store ptr null, ptr %47, align 8, !tbaa !270
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %6, i64 0, i32 5
  store ptr %36, ptr %48, align 8, !tbaa !271
  %49 = load ptr, ptr %19, align 8, !tbaa !260
  %50 = load ptr, ptr %49, align 8, !tbaa !56
  %51 = getelementptr inbounds ptr, ptr %50, i64 6
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull %6)
          to label %54 unwind label %57

54:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %62

55:                                               ; preds = %35
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %59

57:                                               ; preds = %37
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #18
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi { ptr, i32 } [ %58, %57 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %174

61:                                               ; preds = %18
  store i32 0, ptr %17, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef %13)
          to label %62 unwind label %33

62:                                               ; preds = %61, %54
  %63 = phi ptr [ %53, %54 ], [ null, %61 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %164

65:                                               ; preds = %62
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %67 = load i8, ptr %66, align 1, !tbaa !272, !range !147, !noundef !148
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %164

69:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %70, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %71 unwind label %112

71:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %8) #18
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %73 = load ptr, ptr %72, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %8, ptr noundef %73)
          to label %74 unwind label %114

74:                                               ; preds = %71
  %75 = load ptr, ptr %7, align 8, !tbaa !262
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %17, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !87
  %78 = load i32, ptr %17, align 8, !tbaa !82
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i16, ptr %77, i64 %79
  store i16 0, ptr %80, align 2, !tbaa !88
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
  %88 = load i8, ptr %87, align 8, !tbaa !273, !range !147, !noundef !148
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %129

90:                                               ; preds = %86
  %91 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %92 unwind label %118

92:                                               ; preds = %90
  %93 = load ptr, ptr %76, align 8, !tbaa !87
  %94 = load i32, ptr %17, align 8, !tbaa !82
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i16, ptr %93, i64 %95
  store i16 0, ptr %96, align 2, !tbaa !88
  invoke void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef %93, ptr noundef nonnull align 8 dereferenceable(40) %91)
          to label %97 unwind label %120

97:                                               ; preds = %92
  %98 = load ptr, ptr %72, align 8, !tbaa !91
  %99 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %98)
          to label %100 unwind label %120

100:                                              ; preds = %97
  %101 = load ptr, ptr %7, align 8, !tbaa !262
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %91, i64 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !87
  %104 = load i32, ptr %91, align 8, !tbaa !82
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i16, ptr %103, i64 %105
  store i16 0, ptr %106, align 2, !tbaa !88
  %107 = load ptr, ptr %72, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %99, ptr noundef %101, ptr noundef %103, ptr noundef %107)
          to label %108 unwind label %122

108:                                              ; preds = %100
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %91)
          to label %156 unwind label %109

109:                                              ; preds = %108
  %110 = landingpad { ptr, i32 }
          catch ptr null
  %111 = extractvalue { ptr, i32 } %110, 0
  call void @__clang_call_terminate(ptr %111) #19
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
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %99, ptr noundef %98) #18
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi { ptr, i32 } [ %123, %122 ], [ %121, %120 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %91)
          to label %158 unwind label %126

126:                                              ; preds = %124
  %127 = landingpad { ptr, i32 }
          catch ptr null
  %128 = extractvalue { ptr, i32 } %127, 0
  call void @__clang_call_terminate(ptr %128) #19
  unreachable

129:                                              ; preds = %86
  %130 = call ptr @__cxa_allocate_exception(i64 48) #18
  %131 = load ptr, ptr %72, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %130, ptr noundef nonnull @.str, i32 noundef 3748, i32 noundef 99, ptr noundef %131)
          to label %144 unwind label %132

132:                                              ; preds = %129
  %133 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %130) #18
  br label %158

134:                                              ; preds = %85
  %135 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %136 = load i8, ptr %135, align 8, !tbaa !273, !range !147, !noundef !148
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %134
  %139 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81) %8)
          to label %140 unwind label %116

140:                                              ; preds = %138
  br i1 %139, label %141, label %149

141:                                              ; preds = %140
  %142 = call ptr @__cxa_allocate_exception(i64 48) #18
  %143 = load ptr, ptr %72, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %142, ptr noundef nonnull @.str, i32 noundef 3753, i32 noundef 99, ptr noundef %143)
          to label %144 unwind label %147

144:                                              ; preds = %141, %129
  %145 = phi ptr [ %130, %129 ], [ %142, %141 ]
  invoke void @__cxa_throw(ptr nonnull %145, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
          to label %146 unwind label %116

146:                                              ; preds = %144
  unreachable

147:                                              ; preds = %141
  %148 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %142) #18
  br label %158

149:                                              ; preds = %140, %134
  %150 = load ptr, ptr %72, align 8, !tbaa !91
  %151 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %150)
          to label %152 unwind label %116

152:                                              ; preds = %149
  %153 = load ptr, ptr %72, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %151, ptr noundef nonnull align 8 dereferenceable(81) %8, ptr noundef %153)
          to label %156 unwind label %154

154:                                              ; preds = %152
  %155 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %151, ptr noundef %150) #18
  br label %158

156:                                              ; preds = %108, %152
  %157 = phi ptr [ %151, %152 ], [ %99, %108 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %8) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  br label %164

158:                                              ; preds = %118, %124, %154, %147, %132, %116
  %159 = phi { ptr, i32 } [ %117, %116 ], [ %133, %132 ], [ %148, %147 ], [ %155, %154 ], [ %119, %118 ], [ %125, %124 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %8) #18
  br label %160

160:                                              ; preds = %158, %114
  %161 = phi { ptr, i32 } [ %159, %158 ], [ %115, %114 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %8) #18
  br label %162

162:                                              ; preds = %160, %112
  %163 = phi { ptr, i32 } [ %161, %160 ], [ %113, %112 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  br label %174

164:                                              ; preds = %62, %156, %65
  %165 = phi ptr [ null, %65 ], [ %63, %62 ], [ %157, %156 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %17)
          to label %169 unwind label %166

166:                                              ; preds = %164
  %167 = landingpad { ptr, i32 }
          catch ptr null
  %168 = extractvalue { ptr, i32 } %167, 0
  call void @__clang_call_terminate(ptr %168) #19
  unreachable

169:                                              ; preds = %164
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %173 unwind label %170

170:                                              ; preds = %169
  %171 = landingpad { ptr, i32 }
          catch ptr null
  %172 = extractvalue { ptr, i32 } %171, 0
  call void @__clang_call_terminate(ptr %172) #19
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
  call void @__clang_call_terminate(ptr %178) #19
  unreachable

179:                                              ; preds = %31, %174, %29
  %180 = phi { ptr, i32 } [ %30, %29 ], [ %32, %31 ], [ %175, %174 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %184 unwind label %181

181:                                              ; preds = %179
  %182 = landingpad { ptr, i32 }
          catch ptr null
  %183 = extractvalue { ptr, i32 } %182, 0
  call void @__clang_call_terminate(ptr %183) #19
  unreachable

184:                                              ; preds = %179
  resume { ptr, i32 } %180
}

declare void @_ZN11xercesc_2_715GrammarResolver13cacheGrammarsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner13scanCDSectionEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = alloca [9 x i16], align 16
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %3, i16 noundef zeroext 91)
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 261)
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext false)
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %3, i16 noundef zeroext 91)
  br i1 %7, label %8, label %227

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %10 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  %13 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %12, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !190
  %15 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.8", ptr %14, i64 0, i32 1, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !194
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %8
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %14)
          to label %20 unwind label %32

20:                                               ; preds = %18
  %21 = load ptr, ptr %19, align 8, !tbaa !118
  br label %22

22:                                               ; preds = %20, %8
  %23 = phi ptr [ %21, %20 ], [ null, %8 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %23, i64 0, i32 10
  %27 = load i32, ptr %26, align 8, !tbaa !232
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 0, i32 2
  %30 = icmp eq i32 %27, 4
  %31 = select i1 %30, i32 1, i32 %29
  br label %34

32:                                               ; preds = %18
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %228

34:                                               ; preds = %25, %22
  %35 = phi i32 [ 2, %22 ], [ %31, %25 ]
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %37 = invoke noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %36)
          to label %38 unwind label %69

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %42 = icmp eq i32 %35, 1
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 1
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 6
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 6
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 6
  %51 = icmp eq i32 %35, 2
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  %53 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 12
  %54 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  br label %57

57:                                               ; preds = %38, %219
  %58 = phi i8 [ %220, %219 ], [ 0, %38 ]
  %59 = phi i8 [ %221, %219 ], [ 0, %38 ]
  %60 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %61 unwind label %71

61:                                               ; preds = %57
  %62 = icmp eq i16 %60, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %61
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 264)
          to label %64 unwind label %73

64:                                               ; preds = %63
  %65 = call ptr @__cxa_allocate_exception(i64 48) #18
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %67 = load ptr, ptr %66, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %65, ptr noundef nonnull @.str, i32 noundef 4042, i32 noundef 47, ptr noundef %67)
          to label %68 unwind label %75

68:                                               ; preds = %64
  invoke void @__cxa_throw(ptr nonnull %65, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
          to label %234 unwind label %73

69:                                               ; preds = %34
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %228

71:                                               ; preds = %188, %57, %97, %109, %186, %102, %212
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %228

73:                                               ; preds = %63, %68
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %228

75:                                               ; preds = %64
  %76 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %65) #18
  br label %228

77:                                               ; preds = %61
  %78 = load i8, ptr %39, align 8, !tbaa !146, !range !147, !noundef !148
  %79 = icmp eq i8 %78, 0
  %80 = load i8, ptr %40, align 2, !range !147
  %81 = icmp eq i8 %80, 0
  %82 = select i1 %79, i1 true, i1 %81
  br i1 %82, label %99, label %83

83:                                               ; preds = %77
  %84 = load ptr, ptr %41, align 8, !tbaa !159
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %84, i64 0, i32 28
  %86 = load ptr, ptr %85, align 8, !tbaa !170
  %87 = zext i16 %60 to i64
  %88 = getelementptr inbounds i8, ptr %86, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !171
  %90 = icmp slt i8 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load ptr, ptr %37, align 8, !tbaa !153
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %92, i64 0, i32 5
  %94 = load i8, ptr %93, align 8, !tbaa !530, !range !147, !noundef !148
  %95 = icmp ne i8 %94, 0
  %96 = and i1 %42, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load ptr, ptr %11, align 8, !tbaa !139
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %98, i32 noundef 84)
          to label %99 unwind label %71

99:                                               ; preds = %97, %91, %83, %77
  %100 = zext i16 %60 to i32
  %101 = icmp eq i16 %60, 93
  br i1 %101, label %102, label %178

102:                                              ; preds = %99
  %103 = load ptr, ptr %43, align 8, !tbaa !159
  %104 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %103, ptr noundef nonnull @_ZZN11xercesc_2_712SGXMLScanner13scanCDSectionEvE10CDataClose)
          to label %105 unwind label %71

105:                                              ; preds = %102
  br i1 %104, label %106, label %178

106:                                              ; preds = %105
  %107 = and i8 %58, 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %110 unwind label %71

110:                                              ; preds = %109, %106
  %111 = load i32, ptr %10, align 8, !tbaa !82
  %112 = load ptr, ptr %48, align 8, !tbaa !87
  %113 = zext i32 %111 to i64
  %114 = getelementptr inbounds i16, ptr %112, i64 %113
  store i16 0, ptr %114, align 2, !tbaa !88
  %115 = load i8, ptr %39, align 8, !tbaa !146, !range !147, !noundef !148
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %144, label %117

117:                                              ; preds = %110
  %118 = load ptr, ptr %11, align 8, !tbaa !139
  %119 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %118, i64 0, i32 7
  %120 = load ptr, ptr %119, align 8, !tbaa !197
  %121 = icmp eq ptr %120, null
  br i1 %121, label %136, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %120, i64 0, i32 5
  %124 = load i16, ptr %123, align 4, !tbaa !340
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %122
  invoke void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %118, ptr noundef nonnull %120, ptr noundef %112, ptr noundef nonnull align 8 dereferenceable(40) %49)
          to label %127 unwind label %134

127:                                              ; preds = %126
  %128 = load ptr, ptr %50, align 8, !tbaa !87
  %129 = load i32, ptr %49, align 8, !tbaa !82
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i16, ptr %128, i64 %130
  store i16 0, ptr %131, align 2, !tbaa !88
  br label %136

132:                                              ; preds = %172, %160
  %133 = landingpad { ptr, i32 }
          cleanup
  br label %228

134:                                              ; preds = %136, %142, %126
  %135 = landingpad { ptr, i32 }
          cleanup
  br label %228

136:                                              ; preds = %127, %122, %117
  %137 = phi i32 [ %129, %127 ], [ %111, %122 ], [ %111, %117 ]
  %138 = phi ptr [ %128, %127 ], [ %112, %122 ], [ %112, %117 ]
  %139 = load ptr, ptr %11, align 8, !tbaa !139
  %140 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %139, i64 0, i32 9
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %140, ptr noundef %138)
          to label %141 unwind label %134

141:                                              ; preds = %136
  br i1 %51, label %144, label %142

142:                                              ; preds = %141
  %143 = load ptr, ptr %11, align 8, !tbaa !139
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %143, i32 noundef 22)
          to label %144 unwind label %134

144:                                              ; preds = %142, %141, %110
  %145 = phi i32 [ %111, %110 ], [ %137, %141 ], [ %137, %142 ]
  %146 = phi ptr [ %112, %110 ], [ %138, %141 ], [ %138, %142 ]
  %147 = load i8, ptr %39, align 8, !tbaa !146, !range !147, !noundef !148
  %148 = icmp ne i8 %147, 0
  %149 = load i8, ptr %52, align 4, !range !147
  %150 = icmp ne i8 %149, 0
  %151 = select i1 %148, i1 %150, i1 false
  %152 = load ptr, ptr %53, align 8
  %153 = icmp ne ptr %152, null
  %154 = select i1 %151, i1 %153, i1 false
  br i1 %154, label %155, label %161

155:                                              ; preds = %144
  %156 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraintHandler", ptr %152, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !523
  %158 = load i32, ptr %157, align 8, !tbaa !525
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %155
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %54, ptr noundef %146, i32 noundef %145)
          to label %161 unwind label %132

161:                                              ; preds = %160, %144, %155
  %162 = load ptr, ptr %55, align 8, !tbaa !141
  %163 = icmp eq ptr %162, null
  br i1 %163, label %219, label %164

164:                                              ; preds = %161
  %165 = load i8, ptr %56, align 8, !tbaa !341, !range !147, !noundef !148
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load ptr, ptr %48, align 8, !tbaa !87
  %169 = load i32, ptr %10, align 8, !tbaa !82
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i16, ptr %168, i64 %170
  store i16 0, ptr %171, align 2, !tbaa !88
  br label %172

172:                                              ; preds = %164, %167
  %173 = phi ptr [ %168, %167 ], [ %146, %164 ]
  %174 = phi i32 [ %169, %167 ], [ %145, %164 ]
  %175 = load ptr, ptr %162, align 8, !tbaa !56
  %176 = getelementptr inbounds ptr, ptr %175, i64 2
  %177 = load ptr, ptr %176, align 8
  invoke void %177(ptr noundef nonnull align 8 dereferenceable(8) %162, ptr noundef %173, i32 noundef %174, i1 noundef zeroext true)
          to label %219 unwind label %132

178:                                              ; preds = %105, %99
  %179 = and i8 %59, 1
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %206

181:                                              ; preds = %178
  %182 = and i16 %60, -1024
  %183 = and i8 %58, 1
  %184 = icmp eq i8 %183, 0
  switch i16 %182, label %190 [
    i16 -10240, label %185
    i16 -9216, label %187
  ]

185:                                              ; preds = %181
  br i1 %184, label %206, label %186

186:                                              ; preds = %185
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %206 unwind label %71

187:                                              ; preds = %181
  br i1 %184, label %188, label %206

188:                                              ; preds = %190, %187
  %189 = phi i32 [ 282, %187 ], [ 249, %190 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %189)
          to label %206 unwind label %71

190:                                              ; preds = %181
  br i1 %184, label %191, label %188

191:                                              ; preds = %190
  %192 = load ptr, ptr %44, align 8, !tbaa !159
  %193 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %192, i64 0, i32 28
  %194 = load ptr, ptr %193, align 8, !tbaa !170
  %195 = zext i16 %60 to i64
  %196 = getelementptr inbounds i8, ptr %194, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !171
  %198 = and i8 %197, 64
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %191
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %2) #18
  %201 = load ptr, ptr %45, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %100, ptr noundef nonnull %2, i32 noundef 8, i32 noundef 16, ptr noundef %201)
          to label %202 unwind label %204

202:                                              ; preds = %200
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 196, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %203 unwind label %204

203:                                              ; preds = %202
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #18
  br label %206

204:                                              ; preds = %202, %200
  %205 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #18
  br label %228

206:                                              ; preds = %188, %186, %187, %191, %203, %185, %178
  %207 = phi i8 [ %58, %178 ], [ 1, %185 ], [ 0, %203 ], [ 0, %191 ], [ 0, %187 ], [ %58, %186 ], [ 0, %188 ]
  %208 = phi i8 [ %59, %178 ], [ %59, %185 ], [ 1, %203 ], [ %59, %191 ], [ %59, %187 ], [ %59, %186 ], [ %59, %188 ]
  %209 = load i32, ptr %10, align 8, !tbaa !82
  %210 = load i32, ptr %46, align 4, !tbaa !83
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 1)
          to label %213 unwind label %71

213:                                              ; preds = %212, %206
  %214 = load ptr, ptr %47, align 8, !tbaa !87
  %215 = load i32, ptr %10, align 8, !tbaa !82
  %216 = add i32 %215, 1
  store i32 %216, ptr %10, align 8, !tbaa !82
  %217 = zext i32 %215 to i64
  %218 = getelementptr inbounds i16, ptr %214, i64 %217
  store i16 %60, ptr %218, align 2, !tbaa !88
  br label %219

219:                                              ; preds = %172, %161, %213
  %220 = phi i8 [ %207, %213 ], [ %58, %161 ], [ %58, %172 ]
  %221 = phi i8 [ %208, %213 ], [ %59, %161 ], [ %59, %172 ]
  %222 = phi i1 [ true, %213 ], [ false, %161 ], [ false, %172 ]
  br i1 %222, label %57, label %223

223:                                              ; preds = %219
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %227 unwind label %224

224:                                              ; preds = %223
  %225 = landingpad { ptr, i32 }
          catch ptr null
  %226 = extractvalue { ptr, i32 } %225, 0
  call void @__clang_call_terminate(ptr %226) #19
  unreachable

227:                                              ; preds = %223, %5
  ret void

228:                                              ; preds = %71, %73, %69, %132, %134, %204, %75, %32
  %229 = phi { ptr, i32 } [ %33, %32 ], [ %70, %69 ], [ %205, %204 ], [ %76, %75 ], [ %133, %132 ], [ %135, %134 ], [ %72, %71 ], [ %74, %73 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %233 unwind label %230

230:                                              ; preds = %228
  %231 = landingpad { ptr, i32 }
          catch ptr null
  %232 = extractvalue { ptr, i32 } %231, 0
  call void @__clang_call_terminate(ptr %232) #19
  unreachable

233:                                              ; preds = %228
  resume { ptr, i32 } %229

234:                                              ; preds = %68
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SGXMLScanner12scanCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca [9 x i16], align 16
  store i32 0, ptr %1, align 8, !tbaa !82
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  store i16 0, ptr %8, align 2, !tbaa !88
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 7
  %10 = load i8, ptr %9, align 8, !tbaa !531, !range !147, !noundef !148
  store i8 1, ptr %9, align 8, !tbaa !531
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #18
  store i16 0, ptr %4, align 2, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #18
  store i8 0, ptr %5, align 1, !tbaa !150
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 1
  br label %16

16:                                               ; preds = %2, %206
  %17 = phi i32 [ 0, %2 ], [ %209, %206 ]
  %18 = phi i8 [ 0, %2 ], [ %208, %206 ]
  %19 = phi i8 [ 1, %2 ], [ %207, %206 ]
  br label %20

20:                                               ; preds = %202, %16
  %21 = phi i8 [ %18, %16 ], [ %165, %202 ]
  %22 = phi i32 [ %17, %16 ], [ %178, %202 ]
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %20, %113
  %25 = phi i8 [ %115, %113 ], [ %21, %20 ]
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %23, i1 %27, i1 false
  br i1 %28, label %29, label %70

29:                                               ; preds = %24
  %30 = load ptr, ptr %11, align 8, !tbaa !159
  %31 = load i32, ptr %30, align 8, !tbaa !532
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %30, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !533
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %30, i64 0, i32 28
  %37 = load ptr, ptr %36, align 8, !tbaa !170
  br label %38

38:                                               ; preds = %35, %48
  %39 = phi i32 [ %31, %35 ], [ %49, %48 ]
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %30, i64 0, i32 1, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !88
  %43 = zext i16 %42 to i64
  %44 = getelementptr inbounds i8, ptr %37, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !171
  %46 = and i8 %45, 8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = add nuw i32 %39, 1
  store i32 %49, ptr %30, align 8, !tbaa !532
  %50 = icmp eq i32 %49, %33
  br i1 %50, label %51, label %38, !llvm.loop !534

51:                                               ; preds = %48, %38, %29
  %52 = phi i32 [ %31, %29 ], [ %33, %48 ], [ %39, %38 ]
  %53 = icmp eq i32 %31, %52
  br i1 %53, label %70, label %54

54:                                               ; preds = %51
  %55 = sub i32 %52, %31
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %30, i64 0, i32 5
  %58 = load i64, ptr %57, align 8, !tbaa !535
  %59 = add nsw i64 %58, %56
  store i64 %59, ptr %57, align 8, !tbaa !535
  %60 = zext i32 %31 to i64
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %30, i64 0, i32 1, i64 %60
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %61, i32 noundef %55)
          to label %70 unwind label %62

62:                                               ; preds = %97, %80, %54, %103
  %63 = phi i32 [ %22, %103 ], [ 0, %54 ], [ %22, %80 ], [ %22, %97 ]
  %64 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %143

65:                                               ; preds = %195, %183, %176, %125, %123, %121
  %66 = phi i32 [ 2, %176 ], [ %22, %121 ], [ %22, %123 ], [ %22, %125 ], [ %178, %183 ], [ %178, %195 ]
  %67 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %143

68:                                               ; preds = %99
  %69 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %143

70:                                               ; preds = %51, %54, %24
  %71 = load ptr, ptr %12, align 8, !tbaa !159
  %72 = load i32, ptr %71, align 8, !tbaa !532
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %71, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !533
  %75 = icmp ult i32 %72, %74
  br i1 %75, label %83, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %71, i64 0, i32 10
  %78 = load i8, ptr %77, align 1, !tbaa !536, !range !147, !noundef !148
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %76
  %81 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %71)
          to label %82 unwind label %62

82:                                               ; preds = %80
  br i1 %81, label %83, label %98

83:                                               ; preds = %82, %70
  %84 = load i32, ptr %71, align 8, !tbaa !532
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %71, i64 0, i32 1, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !88
  %88 = icmp eq i16 %87, 60
  br i1 %88, label %98, label %89

89:                                               ; preds = %83
  %90 = add i32 %84, 1
  store i32 %90, ptr %71, align 8, !tbaa !532
  store i16 %87, ptr %3, align 2, !tbaa !88
  %91 = and i16 %87, -8368
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %71, i64 0, i32 5
  %95 = load i64, ptr %94, align 8, !tbaa !535
  %96 = add nsw i64 %95, 1
  store i64 %96, ptr %94, align 8, !tbaa !535
  br label %100

97:                                               ; preds = %89
  invoke void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %71, ptr noundef nonnull align 2 dereferenceable(2) %3, i1 noundef zeroext false)
          to label %100 unwind label %62

98:                                               ; preds = %83, %82, %76
  br i1 %27, label %206, label %99

99:                                               ; preds = %98
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %206 unwind label %68

100:                                              ; preds = %97, %93
  store i8 0, ptr %5, align 1, !tbaa !150
  %101 = load i16, ptr %3, align 2
  %102 = icmp eq i16 %101, 38
  br i1 %102, label %103, label %118

103:                                              ; preds = %100
  %104 = load ptr, ptr %0, align 8, !tbaa !56
  %105 = getelementptr inbounds ptr, ptr %104, i64 16
  %106 = load ptr, ptr %105, align 8
  invoke void %106(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %107 unwind label %62

107:                                              ; preds = %103
  %108 = load i8, ptr %9, align 8, !tbaa !531, !range !147, !noundef !148
  store i8 0, ptr %9, align 8, !tbaa !531
  %109 = load ptr, ptr %0, align 8, !tbaa !56
  %110 = getelementptr inbounds ptr, ptr %109, i64 13
  %111 = load ptr, ptr %110, align 8
  %112 = invoke noundef i32 %111(ptr noundef nonnull align 8 dereferenceable(1000) %0, i1 noundef zeroext false, ptr noundef nonnull align 2 dereferenceable(2) %3, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %113 unwind label %116

113:                                              ; preds = %107
  %114 = icmp eq i32 %112, 1
  %115 = select i1 %114, i8 %25, i8 0
  store i8 %108, ptr %9, align 8, !tbaa !531
  br i1 %114, label %164, label %24

116:                                              ; preds = %107
  %117 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  store i8 %108, ptr %9, align 8, !tbaa !531
  br label %143

118:                                              ; preds = %100
  %119 = and i16 %101, -1024
  switch i16 %119, label %124 [
    i16 -10240, label %120
    i16 -9216, label %122
  ]

120:                                              ; preds = %118
  br i1 %27, label %164, label %121

121:                                              ; preds = %120
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %164 unwind label %65

122:                                              ; preds = %118
  br i1 %27, label %123, label %164

123:                                              ; preds = %122
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 282)
          to label %164 unwind label %65

124:                                              ; preds = %118
  br i1 %27, label %126, label %125

125:                                              ; preds = %124
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %126 unwind label %65

126:                                              ; preds = %125, %124
  %127 = load ptr, ptr %13, align 8, !tbaa !159
  %128 = load i16, ptr %3, align 2, !tbaa !88
  %129 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %127, i64 0, i32 28
  %130 = load ptr, ptr %129, align 8, !tbaa !170
  %131 = zext i16 %128 to i64
  %132 = getelementptr inbounds i8, ptr %130, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !171
  %134 = and i8 %133, 64
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %164

136:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %6) #18
  %137 = zext i16 %128 to i32
  %138 = load ptr, ptr %14, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %137, ptr noundef nonnull %6, i32 noundef 8, i32 noundef 16, ptr noundef %138)
          to label %139 unwind label %141

139:                                              ; preds = %136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 196, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %140 unwind label %141

140:                                              ; preds = %139
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %6) #18
  br label %164

141:                                              ; preds = %139, %136
  %142 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %6) #18
  br label %143

143:                                              ; preds = %68, %65, %62, %141, %116
  %144 = phi { ptr, i32 } [ %117, %116 ], [ %142, %141 ], [ %69, %68 ], [ %64, %62 ], [ %67, %65 ]
  %145 = phi i32 [ %22, %116 ], [ %22, %141 ], [ %22, %68 ], [ %63, %62 ], [ %66, %65 ]
  %146 = extractvalue { ptr, i32 } %144, 1
  %147 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #18
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %273

149:                                              ; preds = %143
  %150 = extractvalue { ptr, i32 } %144, 0
  %151 = call ptr @__cxa_begin_catch(ptr %150) #18
  %152 = load ptr, ptr %0, align 8, !tbaa !56
  %153 = getelementptr inbounds ptr, ptr %152, i64 16
  %154 = load ptr, ptr %153, align 8
  invoke void %154(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %155 unwind label %203

155:                                              ; preds = %149
  %156 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %157 = load ptr, ptr %156, align 8, !tbaa !141
  %158 = icmp eq ptr %157, null
  br i1 %158, label %205, label %159

159:                                              ; preds = %155
  %160 = load ptr, ptr %151, align 8, !tbaa !166
  %161 = load ptr, ptr %157, align 8, !tbaa !56
  %162 = getelementptr inbounds ptr, ptr %161, i64 7
  %163 = load ptr, ptr %162, align 8
  invoke void %163(ptr noundef nonnull align 8 dereferenceable(8) %157, ptr noundef nonnull align 8 dereferenceable(72) %160)
          to label %205 unwind label %203

164:                                              ; preds = %113, %123, %121, %122, %140, %126, %120
  %165 = phi i8 [ 1, %120 ], [ 0, %126 ], [ 0, %140 ], [ 0, %122 ], [ %25, %121 ], [ 0, %123 ], [ %115, %113 ]
  %166 = load i8, ptr %5, align 1, !tbaa !150, !range !147, !noundef !148
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %164
  %169 = load i16, ptr %3, align 2, !tbaa !88
  switch i16 %169, label %177 [
    i16 93, label %170
    i16 62, label %174
  ]

170:                                              ; preds = %168
  br i1 %23, label %177, label %171

171:                                              ; preds = %170
  %172 = icmp eq i32 %22, 1
  %173 = select i1 %172, i32 2, i32 %22
  br label %177

174:                                              ; preds = %168
  %175 = icmp eq i32 %22, 2
  br i1 %175, label %176, label %177

176:                                              ; preds = %174
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 262)
          to label %177 unwind label %65

177:                                              ; preds = %176, %164, %168, %174, %170, %171
  %178 = phi i32 [ %173, %171 ], [ 1, %170 ], [ 0, %174 ], [ 0, %168 ], [ 0, %164 ], [ 0, %176 ]
  %179 = load i16, ptr %3, align 2, !tbaa !88
  %180 = load i32, ptr %1, align 8, !tbaa !82
  %181 = load i32, ptr %15, align 4, !tbaa !83
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
          to label %184 unwind label %65

184:                                              ; preds = %183, %177
  %185 = load ptr, ptr %7, align 8, !tbaa !87
  %186 = load i32, ptr %1, align 8, !tbaa !82
  %187 = add i32 %186, 1
  store i32 %187, ptr %1, align 8, !tbaa !82
  %188 = zext i32 %186 to i64
  %189 = getelementptr inbounds i16, ptr %185, i64 %188
  store i16 %179, ptr %189, align 2, !tbaa !88
  %190 = load i16, ptr %4, align 2, !tbaa !88
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %202, label %192

192:                                              ; preds = %184
  %193 = load i32, ptr %15, align 4, !tbaa !83
  %194 = icmp eq i32 %187, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
          to label %196 unwind label %65

196:                                              ; preds = %195, %192
  %197 = load ptr, ptr %7, align 8, !tbaa !87
  %198 = load i32, ptr %1, align 8, !tbaa !82
  %199 = add i32 %198, 1
  store i32 %199, ptr %1, align 8, !tbaa !82
  %200 = zext i32 %198 to i64
  %201 = getelementptr inbounds i16, ptr %197, i64 %200
  store i16 %190, ptr %201, align 2, !tbaa !88
  store i16 0, ptr %4, align 2, !tbaa !88
  br label %202

202:                                              ; preds = %196, %184
  br label %20, !llvm.loop !537

203:                                              ; preds = %159, %149
  %204 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %273 unwind label %275

205:                                              ; preds = %159, %155
  invoke void @__cxa_end_catch()
          to label %206 unwind label %212

206:                                              ; preds = %205, %98, %99
  %207 = phi i8 [ 0, %99 ], [ 0, %98 ], [ %19, %205 ]
  %208 = phi i8 [ %25, %99 ], [ %25, %98 ], [ 0, %205 ]
  %209 = phi i32 [ %22, %99 ], [ %22, %98 ], [ %145, %205 ]
  %210 = and i8 %207, 1
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %214, label %16, !llvm.loop !538

212:                                              ; preds = %205
  %213 = landingpad { ptr, i32 }
          cleanup
  br label %273

214:                                              ; preds = %206
  %215 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %216 = load i8, ptr %215, align 8, !tbaa !146, !range !147, !noundef !148
  %217 = icmp eq i8 %216, 0
  %218 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %219 = load i8, ptr %218, align 2, !range !147
  %220 = icmp eq i8 %219, 0
  %221 = select i1 %217, i1 true, i1 %220
  br i1 %221, label %266, label %222

222:                                              ; preds = %214
  %223 = load ptr, ptr %7, align 8, !tbaa !87
  %224 = load i32, ptr %1, align 8, !tbaa !82
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i16, ptr %223, i64 %225
  store i16 0, ptr %226, align 2, !tbaa !88
  %227 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !159
  %229 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18containsWhiteSpaceEPKtj(ptr noundef nonnull align 8 dereferenceable(163992) %228, ptr noundef %223, i32 noundef %224)
          to label %230 unwind label %258

230:                                              ; preds = %222
  br i1 %229, label %231, label %266

231:                                              ; preds = %230
  %232 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %233 = invoke noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %232)
          to label %234 unwind label %260

234:                                              ; preds = %231
  %235 = load ptr, ptr %233, align 8, !tbaa !153
  %236 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %235, i64 0, i32 5
  %237 = load i8, ptr %236, align 8, !tbaa !530, !range !147, !noundef !148
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %266, label %239

239:                                              ; preds = %234
  %240 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %241 = load ptr, ptr %240, align 8, !tbaa !139
  %242 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %241, i64 0, i32 14
  %243 = load ptr, ptr %242, align 8, !tbaa !190
  %244 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.8", ptr %243, i64 0, i32 1, i32 1
  %245 = load i32, ptr %244, align 4, !tbaa !194
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %251, label %247

247:                                              ; preds = %239
  %248 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %243)
          to label %249 unwind label %262

249:                                              ; preds = %247
  %250 = load ptr, ptr %248, align 8, !tbaa !118
  br label %251

251:                                              ; preds = %249, %239
  %252 = phi ptr [ %250, %249 ], [ null, %239 ]
  %253 = icmp eq ptr %252, null
  br i1 %253, label %266, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %252, i64 0, i32 10
  %256 = load i32, ptr %255, align 8, !tbaa !232
  %257 = icmp eq i32 %256, 4
  br i1 %257, label %264, label %266

258:                                              ; preds = %222
  %259 = landingpad { ptr, i32 }
          cleanup
  br label %273

260:                                              ; preds = %231
  %261 = landingpad { ptr, i32 }
          cleanup
  br label %273

262:                                              ; preds = %247, %264
  %263 = landingpad { ptr, i32 }
          cleanup
  br label %273

264:                                              ; preds = %254
  %265 = load ptr, ptr %240, align 8, !tbaa !139
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %265, i32 noundef 84)
          to label %266 unwind label %262

266:                                              ; preds = %264, %230, %254, %251, %234, %214
  %267 = load ptr, ptr %0, align 8, !tbaa !56
  %268 = getelementptr inbounds ptr, ptr %267, i64 16
  %269 = load ptr, ptr %268, align 8
  invoke void %269(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %270 unwind label %271

270:                                              ; preds = %266
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #18
  store i8 %10, ptr %9, align 8, !tbaa !531
  ret void

271:                                              ; preds = %266
  %272 = landingpad { ptr, i32 }
          cleanup
  br label %273

273:                                              ; preds = %143, %203, %258, %262, %260, %212, %271
  %274 = phi { ptr, i32 } [ %272, %271 ], [ %213, %212 ], [ %259, %258 ], [ %263, %262 ], [ %261, %260 ], [ %204, %203 ], [ %144, %143 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #18
  store i8 %10, ptr %9, align 8, !tbaa !531
  resume { ptr, i32 } %274

275:                                              ; preds = %203
  %276 = landingpad { ptr, i32 }
          catch ptr null
  %277 = extractvalue { ptr, i32 } %276, 0
  call void @__clang_call_terminate(ptr %277) #19
  unreachable
}

declare noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18containsWhiteSpaceEPKtj(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712SGXMLScanner13scanEntityRefEbRtS1_Rb(ptr noundef nonnull align 8 dereferenceable(1000) %0, i1 zeroext %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %6 = alloca i32, align 4
  %7 = alloca [16 x i16], align 16
  store i16 0, ptr %3, align 2, !tbaa !88
  store i8 0, ptr %4, align 1, !tbaa !150
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !159
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %10, i64 0, i32 15
  %12 = load i32, ptr %11, align 8, !tbaa !160
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %8, i16 noundef zeroext 35)
  br i1 %13, label %14, label %22

14:                                               ; preds = %5
  %15 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3)
  br i1 %15, label %16, label %114

16:                                               ; preds = %14
  store i8 1, ptr %4, align 1, !tbaa !150
  %17 = load ptr, ptr %9, align 8, !tbaa !159
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %17, i64 0, i32 15
  %19 = load i32, ptr %18, align 8, !tbaa !160
  %20 = icmp eq i32 %12, %19
  br i1 %20, label %114, label %21

21:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
  br label %114

22:                                               ; preds = %5
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %24 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %24, align 8, !tbaa !82
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !87
  store i16 0, ptr %26, align 2, !tbaa !88
  %27 = load ptr, ptr %9, align 8, !tbaa !159
  %28 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %27, ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull %6)
          to label %29 unwind label %34

29:                                               ; preds = %22
  br i1 %28, label %36, label %30

30:                                               ; preds = %29
  %31 = load i32, ptr %24, align 8, !tbaa !82
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %69

33:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 226)
          to label %103 unwind label %34

34:                                               ; preds = %69, %22, %93, %50, %49, %39, %36, %33
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %108

36:                                               ; preds = %29
  %37 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %8, i16 noundef zeroext 59)
          to label %38 unwind label %34

38:                                               ; preds = %36
  br i1 %37, label %44, label %39

39:                                               ; preds = %38
  %40 = load ptr, ptr %25, align 8, !tbaa !87
  %41 = load i32, ptr %24, align 8, !tbaa !82
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i16, ptr %40, i64 %42
  store i16 0, ptr %43, align 2, !tbaa !88
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 229, ptr noundef %40, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %44 unwind label %34

44:                                               ; preds = %39, %38
  %45 = load ptr, ptr %9, align 8, !tbaa !159
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %45, i64 0, i32 15
  %47 = load i32, ptr %46, align 8, !tbaa !160
  %48 = icmp eq i32 %12, %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %50 unwind label %34

50:                                               ; preds = %49, %44
  %51 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !93
  %53 = load ptr, ptr %25, align 8, !tbaa !87
  %54 = load i32, ptr %24, align 8, !tbaa !82
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i16, ptr %53, i64 %55
  store i16 0, ptr %56, align 2, !tbaa !88
  %57 = invoke noundef zeroext i1 @_ZNK11xercesc_2_716ValueHashTableOfItE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef %53)
          to label %58 unwind label %34

58:                                               ; preds = %50
  br i1 %57, label %75, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %61 = load i8, ptr %60, align 2, !tbaa !377, !range !147, !noundef !148
  %62 = icmp eq i8 %61, 0
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  %64 = load i8, ptr %63, align 1, !range !147
  %65 = icmp eq i8 %64, 0
  %66 = select i1 %62, i1 %65, i1 false
  br i1 %66, label %103, label %67

67:                                               ; preds = %59
  %68 = load i32, ptr %24, align 8, !tbaa !82
  br label %69

69:                                               ; preds = %30, %67
  %70 = phi i32 [ %68, %67 ], [ %31, %30 ]
  %71 = phi i32 [ 227, %67 ], [ 310, %30 ]
  %72 = load ptr, ptr %25, align 8, !tbaa !87
  %73 = zext i32 %70 to i64
  %74 = getelementptr inbounds i16, ptr %72, i64 %73
  store i16 0, ptr %74, align 2, !tbaa !88
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %71, ptr noundef %72, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %103 unwind label %34

75:                                               ; preds = %58
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %77 = load ptr, ptr %76, align 8, !tbaa !511
  %78 = icmp eq ptr %77, null
  br i1 %78, label %93, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  %81 = load i32, ptr %80, align 8, !tbaa !513
  %82 = add i32 %81, 1
  store i32 %82, ptr %80, align 8, !tbaa !513
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  %84 = load i32, ptr %83, align 4, !tbaa !512
  %85 = icmp ugt i32 %82, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %88 = load ptr, ptr %87, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %84, ptr noundef nonnull %7, i32 noundef 15, i32 noundef 10, ptr noundef %88)
          to label %89 unwind label %91

89:                                               ; preds = %86
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 172, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %90 unwind label %91

90:                                               ; preds = %89
  store i32 0, ptr %80, align 8, !tbaa !513
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  br label %93

91:                                               ; preds = %89, %86
  %92 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  br label %108

93:                                               ; preds = %90, %79, %75
  %94 = load ptr, ptr %51, align 8, !tbaa !93
  %95 = load ptr, ptr %25, align 8, !tbaa !87
  %96 = load i32, ptr %24, align 8, !tbaa !82
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i16, ptr %95, i64 %97
  store i16 0, ptr %98, align 2, !tbaa !88
  %99 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !118
  %100 = invoke noundef nonnull align 2 dereferenceable(2) ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %94, ptr noundef %95, ptr noundef %99)
          to label %101 unwind label %34

101:                                              ; preds = %93
  %102 = load i16, ptr %100, align 2, !tbaa !88
  store i16 %102, ptr %2, align 2, !tbaa !88
  store i8 1, ptr %4, align 1, !tbaa !150
  br label %103

103:                                              ; preds = %69, %33, %59, %101
  %104 = phi i32 [ 1, %101 ], [ 2, %59 ], [ 2, %33 ], [ 2, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(40) %24)
          to label %114 unwind label %105

105:                                              ; preds = %103
  %106 = landingpad { ptr, i32 }
          catch ptr null
  %107 = extractvalue { ptr, i32 } %106, 0
  call void @__clang_call_terminate(ptr %107) #19
  unreachable

108:                                              ; preds = %91, %34
  %109 = phi { ptr, i32 } [ %35, %34 ], [ %92, %91 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(40) %24)
          to label %113 unwind label %110

110:                                              ; preds = %108
  %111 = landingpad { ptr, i32 }
          catch ptr null
  %112 = extractvalue { ptr, i32 } %111, 0
  call void @__clang_call_terminate(ptr %112) #19
  unreachable

113:                                              ; preds = %108
  resume { ptr, i32 } %109

114:                                              ; preds = %103, %16, %21, %14
  %115 = phi i32 [ 2, %14 ], [ 1, %21 ], [ 1, %16 ], [ %104, %103 ]
  ret i32 %115
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716ValueHashTableOfItE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !391
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !390
  %7 = load ptr, ptr %0, align 8, !tbaa !387
  %8 = load ptr, ptr %4, align 8, !tbaa !56
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !389
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !118
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !391
  %19 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !396
  %21 = load ptr, ptr %18, align 8, !tbaa !56
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %1, ptr noundef %20)
  br i1 %24, label %38, label %25

25:                                               ; preds = %17, %30
  %26 = phi ptr [ %28, %30 ], [ %15, %17 ]
  %27 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !118
  %29 = icmp ne ptr %28, null
  br i1 %29, label %30, label %38, !llvm.loop !539

30:                                               ; preds = %25
  %31 = load ptr, ptr %3, align 8, !tbaa !391
  %32 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %28, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !396
  %34 = load ptr, ptr %31, align 8, !tbaa !56
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %1, ptr noundef %33)
  br i1 %37, label %38, label %25, !llvm.loop !539

38:                                               ; preds = %25, %30, %17, %2
  %39 = phi i1 [ %16, %2 ], [ %16, %17 ], [ %29, %30 ], [ %29, %25 ]
  ret i1 %39
}

declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !540 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !391
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !390
  %8 = load ptr, ptr %0, align 8, !tbaa !387
  %9 = load ptr, ptr %5, align 8, !tbaa !56
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8), !prof !541
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !389
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !118
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !481

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !391
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !396
  %23 = load ptr, ptr %20, align 8, !tbaa !56
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22), !prof !542
  br i1 %26, label %31, label %27, !prof !543

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !118
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !544, !llvm.loop !401

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ %19, %18 ], [ null, %27 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %39, !prof !545

34:                                               ; preds = %31
  %35 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull @.str.5, i32 noundef 153, i32 noundef 50, ptr noundef %2)
          to label %36 unwind label %37

36:                                               ; preds = %34
  tail call void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

37:                                               ; preds = %34
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %35) #18
  resume { ptr, i32 } %38

39:                                               ; preds = %31
  ret ptr %32
}

declare noundef i32 @_ZNK11xercesc_2_725ContentLeafNameTypeVector12getLeafCountEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #4

declare noundef ptr @_ZNK11xercesc_2_725ContentLeafNameTypeVector13getLeafNameAtEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK11xercesc_2_725ContentLeafNameTypeVector13getLeafTypeAtEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !546 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !430
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !547

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !548
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !549
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #3 comdat align 2 !prof !55 {
  %3 = load ptr, ptr %0, align 8, !tbaa !56
  %4 = getelementptr inbounds ptr, ptr %3, i64 16
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret i1 true
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_712SGXMLScanner21getCurrentGrammarTypeEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #15 comdat align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !79
  ret i32 %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SGXMLScanner7getNameEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #15 comdat align 2 !prof !55 {
  ret ptr @_ZN11xercesc_2_76XMLUni14fgSGXMLScannerE
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !55 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !550
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !56
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #18
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !55 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !550
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !56
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #18
  resume { ptr, i32 } %7
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !551 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.8", ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !194
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15, !prof !552

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.8", ptr %0, i64 0, i32 1, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !553
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i32 noundef 61, i32 noundef 80, ptr noundef %8)
          to label %9 unwind label %13

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

10:                                               ; preds = %25, %13
  %11 = phi ptr [ %21, %25 ], [ %6, %13 ]
  %12 = phi { ptr, i32 } [ %26, %25 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %11) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %10

15:                                               ; preds = %1
  %16 = add nsw i32 %3, -1
  %17 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.8", ptr %0, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !194
  %19 = icmp ugt i32 %18, %16
  br i1 %19, label %27, label %20, !prof !554

20:                                               ; preds = %15
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %22 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.8", ptr %0, i64 0, i32 1, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !553
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.2, i32 noundef 198, i32 noundef 116, ptr noundef %23)
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %10

27:                                               ; preds = %15
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.8", ptr %0, i64 0, i32 1, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !555
  %30 = zext i32 %16 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  ret ptr %31
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !55 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !550
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !56
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #18
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !55 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !550
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !56
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #18
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #9 comdat align 2 !prof !556 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.12", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !557
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.12", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !558
  %9 = load ptr, ptr %0, align 8, !tbaa !559
  %10 = load ptr, ptr %6, align 8, !tbaa !56
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9), !prof !560
  store i32 %12, ptr %3, align 4, !tbaa !158
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.12", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !561
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !118
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19, !prof !562

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !563
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32, !prof !564

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !557
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !565
  %28 = load ptr, ptr %25, align 8, !tbaa !56
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27), !prof !566
  br i1 %31, label %36, label %32, !prof !564

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !118
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !prof !567, !llvm.loop !568

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ %20, %24 ], [ null, %32 ]
  ret ptr %37
}

declare void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_713PSVIAttributeC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !490
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !569
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !493
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !490
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !570
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !569
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !56
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !490
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !118
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !493
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !118
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !118
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !571

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !569
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !493
  %52 = load ptr, ptr %49, align 8, !tbaa !56
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !493
  store i32 %12, ptr %6, align 8, !tbaa !570
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 !prof !572 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !256
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !573
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !574

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !529
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !56
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16), !prof !575
  %21 = load i32, ptr %3, align 4, !tbaa !256
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23, !prof !576

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48, !prof !577

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !118
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !494
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !118
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !118
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !prof !578, !llvm.loop !579

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !529
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !494
  %52 = load ptr, ptr %49, align 8, !tbaa !56
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51), !prof !580
  store ptr %20, ptr %50, align 8, !tbaa !494
  store i32 %12, ptr %6, align 8, !tbaa !573
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

declare void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !55 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !550
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !56
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #18
  resume { ptr, i32 } %7
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 2 dereferenceable(2), i1 noundef zeroext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #9 comdat align 2 !prof !581 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !409
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !407
  %10 = load ptr, ptr %0, align 8, !tbaa !305
  %11 = load ptr, ptr %7, align 8, !tbaa !56
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %1, i32 noundef %9, ptr noundef %10), !prof !582
  store i32 %13, ptr %4, align 4, !tbaa !158
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !307
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20, !prof !583

20:                                               ; preds = %5, %37
  %21 = phi ptr [ %39, %37 ], [ %18, %5 ]
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !303
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %25, label %37, !prof !584

25:                                               ; preds = %20
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !304
  %28 = icmp eq i32 %27, %3
  br i1 %28, label %29, label %37, !prof !585

29:                                               ; preds = %25
  %30 = load ptr, ptr %6, align 8, !tbaa !409
  %31 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !302
  %33 = load ptr, ptr %30, align 8, !tbaa !56
  %34 = getelementptr inbounds ptr, ptr %33, i64 1
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %1, ptr noundef %32), !prof !586
  br i1 %36, label %41, label %37, !prof !587

37:                                               ; preds = %29, %25, %20
  %38 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !118
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %20, !prof !588, !llvm.loop !589

41:                                               ; preds = %29, %37, %5
  %42 = phi ptr [ null, %5 ], [ %21, %29 ], [ null, %37 ]
  ret ptr %42
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !406 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !410

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %6 = load ptr, ptr %0, align 8, !tbaa !305
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.4, i32 noundef 138, i32 noundef 48, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #18
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !305
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !407
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !56
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15), !prof !411
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !307
  %21 = load i32, ptr %12, align 8, !tbaa !407
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !590

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !307
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !118
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !591, !llvm.loop !592
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !55 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !550
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !56
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #18
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !55 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !550
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !56
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #18
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !593 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !114
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !115
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !594

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !117
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !56
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !114
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !118
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !116
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !118
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !118
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !595

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !117
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !116
  %52 = load ptr, ptr %49, align 8, !tbaa !56
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !116
  store i32 %12, ptr %6, align 8, !tbaa !115
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIbE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !225 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !221
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !596

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 156, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = add i32 %4, -1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %30, label %16, !prof !596

16:                                               ; preds = %13
  %17 = icmp ugt i32 %14, %1
  br i1 %17, label %18, label %30

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !110
  %21 = zext i32 %1 to i64
  %22 = zext i32 %14 to i64
  br label %23

23:                                               ; preds = %18, %23
  %24 = phi i64 [ %21, %18 ], [ %25, %23 ]
  %25 = add nuw nsw i64 %24, 1
  %26 = getelementptr inbounds i8, ptr %20, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !150, !range !147, !noundef !148
  %28 = getelementptr inbounds i8, ptr %20, i64 %24
  store i8 %27, ptr %28, align 1, !tbaa !150
  %29 = icmp eq i64 %25, %22
  br i1 %29, label %30, label %23, !llvm.loop !597

30:                                               ; preds = %23, %16, %13
  %31 = add i32 %4, -1
  store i32 %31, ptr %3, align 4, !tbaa !221
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIbE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 !prof !598 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !221
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !509
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %41, !prof !599

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !108
  %16 = zext i32 %13 to i64
  %17 = load ptr, ptr %15, align 8, !tbaa !56
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %16), !prof !600
  %21 = load i32, ptr %3, align 4, !tbaa !221
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23, !prof !412

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !110
  %26 = zext i32 %21 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !108
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !110
  %31 = load ptr, ptr %28, align 8, !tbaa !56
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30), !prof !418
  store ptr %20, ptr %29, align 8, !tbaa !110
  store i32 %13, ptr %6, align 8, !tbaa !509
  br label %41

34:                                               ; preds = %23, %34
  %35 = phi i64 [ 0, %23 ], [ %39, %34 ]
  %36 = getelementptr inbounds i8, ptr %25, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !150, !range !147, !noundef !148
  %38 = getelementptr inbounds i8, ptr %20, i64 %35
  store i8 %37, ptr %38, align 1, !tbaa !150
  %39 = add nuw nsw i64 %35, 1
  %40 = icmp eq i64 %39, %26
  br i1 %40, label %27, label %34, !prof !601, !llvm.loop !602

41:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !423 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !112, !range !147, !noundef !148
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !425

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !114
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !444

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !116
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !118
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !594

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !56
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(48) %15) #18, !prof !603
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !114
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !prof !604, !llvm.loop !605

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !117
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !116
  %31 = load ptr, ptr %28, align 8, !tbaa !56
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35, !prof !111

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #19
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !423 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !114
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !117
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.3, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #18
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !112, !range !147, !noundef !148
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !116
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !118
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !56
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(48) %23) #18
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !116
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !118
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !114
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !114
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !112, !range !147, !noundef !148
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !116
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !56
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(48) %18) #18
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !116
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !118
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !114
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !606
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !114
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !117
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !112, !range !147, !noundef !148
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !116
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !118
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !56
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(48) %22) #18
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !114
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
  %43 = load ptr, ptr %42, align 8, !tbaa !118
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !118
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !607

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !116
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !118
  store i32 %30, ptr %3, align 4, !tbaa !114
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !114
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !114
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !112, !range !147, !noundef !148
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !116
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !118
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !56
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(48) %15) #18
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !112, !range !147, !noundef !148
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !114
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !116
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !118
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !56
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(48) %15) #18
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !114
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !608

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !117
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !116
  %31 = load ptr, ptr %28, align 8, !tbaa !56
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !55 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !386 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !419

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %6 = load ptr, ptr %0, align 8, !tbaa !387
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.5, i32 noundef 69, i32 noundef 48, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #18
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !387
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !390
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !56
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15), !prof !600
  %20 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !389
  %21 = load i32, ptr %12, align 8, !tbaa !390
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !412

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !389
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !118
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !609, !llvm.loop !610
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #9 comdat align 2 !prof !593 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !407
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !611

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  br label %10

8:                                                ; preds = %35, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !309
  ret void

10:                                               ; preds = %5, %35
  %11 = phi i64 [ 0, %5 ], [ %38, %35 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !307
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !118
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16, !prof !612

16:                                               ; preds = %10, %29
  %17 = phi ptr [ %19, %29 ], [ %14, %10 ]
  %18 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !308
  %20 = load i8, ptr %7, align 8, !tbaa !300, !range !147, !noundef !148
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22, !prof !311

22:                                               ; preds = %16
  %23 = load ptr, ptr %17, align 8, !tbaa !244
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25, !prof !311

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 8, !tbaa !56
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(147) %23) #18, !prof !613
  br label %29

29:                                               ; preds = %22, %25, %16
  %30 = load ptr, ptr %0, align 8, !tbaa !305
  %31 = load ptr, ptr %30, align 8, !tbaa !56
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %17), !prof !614
  %34 = icmp eq ptr %19, null
  br i1 %34, label %35, label %16, !prof !299, !llvm.loop !615

35:                                               ; preds = %29, %10
  %36 = load ptr, ptr %6, align 8, !tbaa !307
  %37 = getelementptr inbounds ptr, ptr %36, i64 %11
  store ptr null, ptr %37, align 8, !tbaa !118
  %38 = add nuw nsw i64 %11, 1
  %39 = load i32, ptr %2, align 8, !tbaa !407
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %10, label %8, !prof !616, !llvm.loop !617
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !618 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !122
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !125
  %5 = load ptr, ptr %2, align 8, !tbaa !56
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !619
  store ptr null, ptr %3, align 8, !tbaa !125
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !620

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !56
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #18, !prof !621
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.17", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !126
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !122
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !56
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #18
  %13 = load ptr, ptr %0, align 8, !tbaa !122
  store ptr %12, ptr %2, align 8, !tbaa !622
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.17", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !624
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !126
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %28

20:                                               ; preds = %52, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !125
  %23 = load ptr, ptr %2, align 8, !tbaa !622
  store ptr null, ptr %2, align 8, !tbaa !622
  store ptr %23, ptr %21, align 8, !tbaa !125
  store i32 %5, ptr %3, align 8, !tbaa !126
  %24 = load ptr, ptr %0, align 8, !tbaa !122
  %25 = load ptr, ptr %24, align 8, !tbaa !56
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22)
          to label %57 unwind label %58

28:                                               ; preds = %17, %52
  %29 = phi i64 [ 0, %17 ], [ %53, %52 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !125
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !118
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %28 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.16", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !461
  %38 = load ptr, ptr %19, align 8, !tbaa !129
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.16", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !445
  %41 = load ptr, ptr %0, align 8, !tbaa !122
  %42 = load ptr, ptr %38, align 8, !tbaa !56
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41)
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !118
  store ptr %48, ptr %36, align 8, !tbaa !461
  store ptr %35, ptr %47, align 8, !tbaa !118
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !625

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %60

52:                                               ; preds = %45, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %3, align 8, !tbaa !126
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %20, !llvm.loop !626

57:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  ret void

58:                                               ; preds = %20
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi { ptr, i32 } [ %51, %50 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  resume { ptr, i32 } %61
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = load ptr, ptr %0, align 8, !tbaa !622
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.17", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !624
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !56
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #21
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #19
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat align 2 !prof !55 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !135
  %9 = load ptr, ptr %0, align 8, !tbaa !131
  %10 = load ptr, ptr %6, align 8, !tbaa !56
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9)
  store i32 %12, ptr %3, align 4, !tbaa !158
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !134
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !118
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = load ptr, ptr %5, align 8, !tbaa !137
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.13", ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !462
  %24 = load ptr, ptr %21, align 8, !tbaa !56
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %1, ptr noundef %23)
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.13", ptr %20, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !463
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %36, label %32

32:                                               ; preds = %28, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.13", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !118
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !627

36:                                               ; preds = %28, %32, %4
  %37 = phi ptr [ null, %4 ], [ %20, %28 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.18", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !135
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !131
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !56
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #18
  %14 = load ptr, ptr %0, align 8, !tbaa !131
  store ptr %13, ptr %2, align 8, !tbaa !628
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.18", ptr %2, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !630
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %16 = load i32, ptr %3, align 8, !tbaa !135
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  br label %29

21:                                               ; preds = %53, %1
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !134
  %24 = load ptr, ptr %2, align 8, !tbaa !628
  store ptr null, ptr %2, align 8, !tbaa !628
  store ptr %24, ptr %22, align 8, !tbaa !134
  store i32 %6, ptr %3, align 8, !tbaa !135
  %25 = load ptr, ptr %0, align 8, !tbaa !131
  %26 = load ptr, ptr %25, align 8, !tbaa !56
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %23)
          to label %58 unwind label %59

29:                                               ; preds = %18, %53
  %30 = phi i64 [ 0, %18 ], [ %54, %53 ]
  %31 = load ptr, ptr %19, align 8, !tbaa !134
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !118
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %29, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %29 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.13", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !370
  %39 = load ptr, ptr %20, align 8, !tbaa !137
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.13", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !462
  %42 = load ptr, ptr %0, align 8, !tbaa !131
  %43 = load ptr, ptr %39, align 8, !tbaa !56
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42)
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !118
  store ptr %49, ptr %37, align 8, !tbaa !370
  store ptr %36, ptr %48, align 8, !tbaa !118
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !631

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %61

53:                                               ; preds = %46, %29
  %54 = add nuw nsw i64 %30, 1
  %55 = load i32, ptr %3, align 8, !tbaa !135
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %29, label %21, !llvm.loop !632

58:                                               ; preds = %21
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  ret void

59:                                               ; preds = %21
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %61

61:                                               ; preds = %59, %51
  %62 = phi { ptr, i32 } [ %52, %51 ], [ %60, %59 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  resume { ptr, i32 } %62
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat align 2 !prof !55 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !135
  %9 = load ptr, ptr %0, align 8, !tbaa !131
  %10 = load ptr, ptr %6, align 8, !tbaa !56
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9)
  store i32 %12, ptr %3, align 4, !tbaa !158
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !134
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !118
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.13", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !463
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !137
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.13", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !462
  %28 = load ptr, ptr %25, align 8, !tbaa !56
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27)
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem.13", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !118
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !633

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ %20, %24 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = load ptr, ptr %0, align 8, !tbaa !628
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.18", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !630
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !56
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #21
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #19
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !634 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !322
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !635
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !636

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !498
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !56
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !322
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !118
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !352
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !118
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !118
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !637

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !498
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !352
  %52 = load ptr, ptr %49, align 8, !tbaa !56
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !352
  store i32 %12, ptr %6, align 8, !tbaa !635
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nosync nounwind memory(none) }
attributes #7 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!54}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!35 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIbE15removeElementAtEj, i64 1359931}
!36 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj, i64 79}
!37 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 4}
!38 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj, i64 2}
!39 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 2}
!40 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 2}
!41 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj, i64 5}
!42 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 5}
!43 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 5}
!44 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv, i64 5}
!45 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjED2Ev, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv, i64 3}
!46 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!47 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!48 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!49 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_throw, i64 1}
!50 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!51 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED0Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED2Ev, i64 3}
!52 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!53 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, i64 6}
!54 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!55 = !{!"function_entry_count", i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"vtable pointer", !58, i64 0}
!58 = !{!"Simple C++ TBAA"}
!59 = !{!60, !65, i64 776}
!60 = !{!"_ZTSN11xercesc_2_712SGXMLScannerE", !61, i64 0, !65, i64 776, !77, i64 780, !66, i64 784, !67, i64 792, !73, i64 800, !67, i64 840, !67, i64 848, !66, i64 856, !67, i64 864, !67, i64 872, !67, i64 880, !67, i64 888, !67, i64 896, !66, i64 904, !67, i64 912, !67, i64 920, !67, i64 928, !67, i64 936, !67, i64 944, !67, i64 952, !78, i64 960}
!61 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !62, i64 0, !63, i64 8, !65, i64 16, !65, i64 17, !65, i64 18, !65, i64 19, !65, i64 20, !65, i64 21, !65, i64 22, !65, i64 23, !65, i64 24, !65, i64 25, !65, i64 26, !65, i64 27, !65, i64 28, !65, i64 29, !65, i64 30, !65, i64 31, !65, i64 32, !65, i64 33, !65, i64 34, !65, i64 35, !65, i64 36, !65, i64 37, !65, i64 38, !66, i64 40, !66, i64 44, !66, i64 48, !66, i64 52, !66, i64 56, !66, i64 60, !66, i64 64, !66, i64 68, !67, i64 72, !66, i64 80, !66, i64 84, !66, i64 88, !66, i64 92, !66, i64 96, !67, i64 104, !67, i64 112, !67, i64 120, !67, i64 128, !67, i64 136, !67, i64 144, !67, i64 152, !67, i64 160, !67, i64 168, !65, i64 176, !68, i64 184, !67, i64 264, !71, i64 272, !67, i64 280, !67, i64 288, !67, i64 296, !67, i64 304, !67, i64 312, !67, i64 320, !67, i64 328, !67, i64 336, !67, i64 344, !70, i64 352, !67, i64 360, !72, i64 368, !73, i64 392, !73, i64 432, !73, i64 472, !73, i64 512, !73, i64 552, !73, i64 592, !73, i64 632, !74, i64 672}
!62 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!63 = !{!"long", !64, i64 0}
!64 = !{!"omnipotent char", !58, i64 0}
!65 = !{!"bool", !64, i64 0}
!66 = !{!"int", !64, i64 0}
!67 = !{!"any pointer", !64, i64 0}
!68 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !69, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !66, i64 40, !67, i64 48, !65, i64 56, !70, i64 60, !65, i64 64, !67, i64 72}
!69 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!70 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !64, i64 0}
!71 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !64, i64 0}
!72 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !66, i64 0, !67, i64 8, !67, i64 16}
!73 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !66, i64 0, !66, i64 4, !66, i64 8, !65, i64 12, !67, i64 16, !67, i64 24, !67, i64 32}
!74 = !{!"_ZTSN11xercesc_2_79ElemStackE", !66, i64 0, !66, i64 4, !75, i64 8, !67, i64 48, !66, i64 56, !66, i64 60, !66, i64 64, !66, i64 68, !66, i64 72, !66, i64 76, !66, i64 80, !67, i64 88, !67, i64 96}
!75 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !76, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !66, i64 32, !66, i64 36}
!76 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!77 = !{!"_ZTSN11xercesc_2_77Grammar11GrammarTypeE", !64, i64 0}
!78 = !{!"_ZTSN11xercesc_2_715PSVIElemContextE", !65, i64 0, !65, i64 1, !66, i64 4, !66, i64 8, !66, i64 12, !67, i64 16, !67, i64 24, !67, i64 32}
!79 = !{!60, !77, i64 780}
!80 = !{!60, !66, i64 784}
!81 = !{!60, !67, i64 792}
!82 = !{!73, !66, i64 0}
!83 = !{!73, !66, i64 4}
!84 = !{!73, !66, i64 8}
!85 = !{!73, !65, i64 12}
!86 = !{!73, !67, i64 16}
!87 = !{!73, !67, i64 32}
!88 = !{!89, !89, i64 0}
!89 = !{!"short", !64, i64 0}
!90 = !{!60, !66, i64 856}
!91 = !{!61, !67, i64 360}
!92 = !{!60, !67, i64 872}
!93 = !{!60, !67, i64 840}
!94 = !{!60, !67, i64 848}
!95 = !{!60, !67, i64 864}
!96 = !{!60, !67, i64 880}
!97 = !{!60, !67, i64 888}
!98 = !{!60, !67, i64 896}
!99 = !{!60, !67, i64 912}
!100 = !{!60, !67, i64 920}
!101 = !{!60, !67, i64 928}
!102 = !{!103, !67, i64 8}
!103 = !{!"_ZTSN11xercesc_2_717PSVIAttributeListE", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !66, i64 32}
!104 = !{!103, !67, i64 16}
!105 = !{!103, !67, i64 24}
!106 = !{!60, !67, i64 944}
!107 = !{!60, !67, i64 952}
!108 = !{!109, !67, i64 24}
!109 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIbEE", !65, i64 0, !66, i64 4, !66, i64 8, !67, i64 16, !67, i64 24}
!110 = !{!109, !67, i64 16}
!111 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
!112 = !{!113, !65, i64 8}
!113 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE", !65, i64 8, !66, i64 12, !66, i64 16, !67, i64 24, !67, i64 32}
!114 = !{!113, !66, i64 12}
!115 = !{!113, !66, i64 16}
!116 = !{!113, !67, i64 24}
!117 = !{!113, !67, i64 32}
!118 = !{!67, !67, i64 0}
!119 = distinct !{!119, !120, !121}
!120 = !{!"llvm.loop.mustprogress"}
!121 = !{!"llvm.loop.unroll.disable"}
!122 = !{!123, !67, i64 0}
!123 = !{!"_ZTSN11xercesc_2_714RefHashTableOfIjEE", !67, i64 0, !65, i64 8, !67, i64 16, !66, i64 24, !66, i64 28, !66, i64 32, !67, i64 40}
!124 = !{!123, !65, i64 8}
!125 = !{!123, !67, i64 16}
!126 = !{!123, !66, i64 24}
!127 = !{!123, !66, i64 28}
!128 = !{!123, !66, i64 32}
!129 = !{!123, !67, i64 40}
!130 = distinct !{!130, !120, !121}
!131 = !{!132, !67, i64 0}
!132 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfIjEE", !67, i64 0, !65, i64 8, !67, i64 16, !66, i64 24, !66, i64 28, !67, i64 32}
!133 = !{!132, !65, i64 8}
!134 = !{!132, !67, i64 16}
!135 = !{!132, !66, i64 24}
!136 = !{!132, !66, i64 28}
!137 = !{!132, !67, i64 32}
!138 = distinct !{!138, !120, !121}
!139 = !{!61, !67, i64 264}
!140 = !{!61, !66, i64 96}
!141 = !{!61, !67, i64 120}
!142 = !{!61, !65, i64 21}
!143 = !{!144, !145, i64 8}
!144 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !145, i64 8, !67, i64 16, !66, i64 24, !67, i64 32, !67, i64 40}
!145 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !64, i64 0}
!146 = !{!61, !65, i64 24}
!147 = !{i8 0, i8 2}
!148 = !{}
!149 = !{!144, !67, i64 32}
!150 = !{!65, !65, i64 0}
!151 = distinct !{!151, !120, !121}
!152 = !{!74, !66, i64 60}
!153 = !{!154, !67, i64 0}
!154 = !{!"_ZTSN11xercesc_2_79ElemStack9StackElemE", !67, i64 0, !66, i64 8, !66, i64 12, !66, i64 16, !67, i64 24, !67, i64 32, !66, i64 40, !66, i64 44, !65, i64 48, !65, i64 49, !65, i64 50, !66, i64 52, !67, i64 56, !66, i64 64, !67, i64 72, !66, i64 80, !66, i64 84}
!155 = !{!156, !67, i64 16}
!156 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !76, i64 0, !67, i64 8, !67, i64 16, !157, i64 24, !66, i64 28, !65, i64 32}
!157 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !64, i64 0}
!158 = !{!66, !66, i64 0}
!159 = !{!68, !67, i64 16}
!160 = !{!161, !66, i64 163904}
!161 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !66, i64 0, !64, i64 4, !66, i64 32772, !64, i64 32776, !64, i64 49160, !63, i64 114696, !63, i64 114704, !162, i64 114712, !67, i64 114720, !65, i64 114728, !65, i64 114729, !67, i64 114736, !66, i64 114744, !64, i64 114748, !66, i64 163900, !66, i64 163904, !163, i64 163908, !65, i64 163912, !164, i64 163916, !66, i64 163920, !65, i64 163924, !65, i64 163925, !67, i64 163928, !67, i64 163936, !65, i64 163944, !65, i64 163945, !67, i64 163952, !165, i64 163960, !67, i64 163968, !65, i64 163976, !70, i64 163980, !67, i64 163984}
!162 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !64, i64 0}
!163 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !64, i64 0}
!164 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !64, i64 0}
!165 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !64, i64 0}
!166 = !{!167, !67, i64 0}
!167 = !{!"_ZTSN11xercesc_2_720EndOfEntityExceptionE", !67, i64 0, !66, i64 8}
!168 = distinct !{!168, !120, !121}
!169 = distinct !{!169, !120, !121}
!170 = !{!161, !67, i64 163968}
!171 = !{!64, !64, i64 0}
!172 = !{!173, !63, i64 8}
!173 = !{!"_ZTSN11xercesc_2_712KVStringPairE", !76, i64 0, !63, i64 8, !63, i64 16, !67, i64 24, !67, i64 32, !67, i64 40}
!174 = !{!173, !67, i64 40}
!175 = !{!173, !67, i64 24}
!176 = !{!173, !63, i64 16}
!177 = !{!173, !67, i64 32}
!178 = distinct !{!178, !120, !121}
!179 = distinct !{!179, !120, !121}
!180 = distinct !{!180, !120, !121}
!181 = !{!"function_entry_count", i64 574788}
!182 = !{!"branch_weights", i32 574788, i32 0}
!183 = distinct !{!183, !120, !121}
!184 = !{!61, !65, i64 18}
!185 = !{!74, !67, i64 48}
!186 = !{!154, !67, i64 72}
!187 = !{!60, !65, i64 961}
!188 = !{!154, !66, i64 8}
!189 = !{!156, !157, i64 24}
!190 = !{!191, !67, i64 168}
!191 = !{!"_ZTSN11xercesc_2_715SchemaValidatorE", !192, i64 0, !67, i64 40, !67, i64 48, !67, i64 56, !67, i64 64, !65, i64 72, !67, i64 80, !67, i64 88, !73, i64 96, !65, i64 136, !65, i64 137, !193, i64 144, !67, i64 168, !67, i64 176, !65, i64 184, !65, i64 185}
!192 = !{!"_ZTSN11xercesc_2_712XMLValidatorE", !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32}
!193 = !{!"_ZTSN11xercesc_2_716XSDErrorReporterE", !65, i64 8, !67, i64 16}
!194 = !{!195, !66, i64 4}
!195 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEEE", !65, i64 0, !66, i64 4, !66, i64 8, !67, i64 16, !67, i64 24}
!196 = !{!60, !67, i64 984}
!197 = !{!191, !67, i64 80}
!198 = !{!60, !67, i64 976}
!199 = !{!61, !67, i64 160}
!200 = !{!60, !67, i64 992}
!201 = distinct !{!201, !120, !121}
!202 = !{!154, !67, i64 24}
!203 = !{!154, !66, i64 16}
!204 = !{!191, !65, i64 184}
!205 = !{!206, !207, i64 28}
!206 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !76, i64 0, !65, i64 8, !65, i64 9, !65, i64 10, !65, i64 11, !89, i64 12, !66, i64 16, !66, i64 20, !66, i64 24, !207, i64 28, !208, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !67, i64 64, !67, i64 72, !67, i64 80, !67, i64 88, !67, i64 96}
!207 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !64, i64 0}
!208 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !64, i64 0}
!209 = !{!61, !67, i64 168}
!210 = !{!191, !65, i64 185}
!211 = !{!60, !65, i64 960}
!212 = !{!213, !67, i64 72}
!213 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !156, i64 0, !214, i64 36, !215, i64 40, !216, i64 44, !217, i64 48, !66, i64 52, !66, i64 56, !66, i64 60, !66, i64 64, !67, i64 72, !67, i64 80, !67, i64 88, !67, i64 96, !67, i64 104, !67, i64 112, !67, i64 120, !67, i64 128, !67, i64 136, !65, i64 144, !65, i64 145, !65, i64 146}
!214 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !64, i64 0}
!215 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !64, i64 0}
!216 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !64, i64 0}
!217 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !64, i64 0}
!218 = !{!154, !66, i64 84}
!219 = !{!220, !67, i64 24}
!220 = !{!"_ZTSN11xercesc_2_75QNameE", !76, i64 0, !66, i64 8, !66, i64 12, !66, i64 16, !66, i64 20, !67, i64 24, !67, i64 32, !67, i64 40, !67, i64 48}
!221 = !{!109, !66, i64 4}
!222 = !{!154, !67, i64 56}
!223 = !{!61, !67, i64 296}
!224 = !{!154, !65, i64 48}
!225 = !{!"function_entry_count", i64 1359931}
!226 = !{!"branch_weights", i32 0, i32 1359931}
!227 = !{!"branch_weights", i32 1359937, i32 0}
!228 = !{!60, !66, i64 964}
!229 = !{!60, !66, i64 968}
!230 = !{!60, !66, i64 972}
!231 = !{!60, !67, i64 936}
!232 = !{!233, !66, i64 32}
!233 = !{!"_ZTSN11xercesc_2_715ComplexTypeInfoE", !76, i64 0, !65, i64 8, !65, i64 9, !65, i64 10, !65, i64 11, !65, i64 12, !66, i64 16, !66, i64 20, !66, i64 24, !66, i64 28, !66, i64 32, !66, i64 36, !66, i64 40, !66, i64 44, !67, i64 48, !67, i64 56, !67, i64 64, !67, i64 72, !67, i64 80, !67, i64 88, !67, i64 96, !67, i64 104, !67, i64 112, !67, i64 120, !67, i64 128, !67, i64 136, !67, i64 144, !67, i64 152, !67, i64 160, !67, i64 168}
!234 = !{!61, !67, i64 320}
!235 = !{!220, !67, i64 32}
!236 = !{!61, !67, i64 312}
!237 = !{!220, !66, i64 20}
!238 = !{!213, !67, i64 80}
!239 = !{!233, !67, i64 136}
!240 = !{!154, !66, i64 52}
!241 = !{!61, !67, i64 328}
!242 = !{!61, !67, i64 336}
!243 = !{!61, !66, i64 52}
!244 = !{!245, !67, i64 0}
!245 = !{!"_ZTSN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEE", !67, i64 0, !67, i64 8, !67, i64 16, !66, i64 24, !66, i64 28}
!246 = !{!156, !66, i64 28}
!247 = !{!154, !66, i64 64}
!248 = !{!61, !67, i64 304}
!249 = distinct !{!249, !120, !121}
!250 = !{!154, !66, i64 80}
!251 = !{!74, !67, i64 96}
!252 = !{!233, !66, i64 28}
!253 = !{!233, !67, i64 48}
!254 = !{!103, !66, i64 32}
!255 = !{!61, !67, i64 104}
!256 = !{!257, !66, i64 12}
!257 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !65, i64 8, !66, i64 12, !66, i64 16, !67, i64 24, !67, i64 32}
!258 = distinct !{!258, !120, !121}
!259 = !{!61, !67, i64 280}
!260 = !{!61, !67, i64 136}
!261 = !{!61, !67, i64 144}
!262 = !{!263, !67, i64 0}
!263 = !{!"_ZTSN11xercesc_2_79ReaderMgr17LastExtEntityInfoE", !67, i64 0, !67, i64 8, !63, i64 16, !63, i64 24}
!264 = !{!265, !266, i64 0}
!265 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !266, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40}
!266 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !64, i64 0}
!267 = !{!265, !67, i64 8}
!268 = !{!265, !67, i64 16}
!269 = !{!265, !67, i64 24}
!270 = !{!265, !67, i64 32}
!271 = !{!265, !67, i64 40}
!272 = !{!61, !65, i64 37}
!273 = !{!61, !65, i64 16}
!274 = !{!275, !65, i64 224}
!275 = !{!"_ZTSN11xercesc_2_712XSDDOMParserE", !276, i64 0, !65, i64 224, !66, i64 228, !66, i64 232, !66, i64 236, !67, i64 240, !67, i64 248, !67, i64 256, !73, i64 264, !193, i64 304, !283, i64 328}
!276 = !{!"_ZTSN11xercesc_2_715XercesDOMParserE", !277, i64 0, !67, i64 200, !67, i64 208, !67, i64 216}
!277 = !{!"_ZTSN11xercesc_2_717AbstractDOMParserE", !278, i64 0, !279, i64 8, !280, i64 16, !281, i64 24, !282, i64 32, !65, i64 40, !65, i64 41, !65, i64 42, !65, i64 43, !65, i64 44, !65, i64 45, !65, i64 46, !67, i64 48, !67, i64 56, !67, i64 64, !67, i64 72, !67, i64 80, !67, i64 88, !67, i64 96, !67, i64 104, !67, i64 112, !67, i64 120, !67, i64 128, !67, i64 136, !67, i64 144, !67, i64 152, !72, i64 160, !67, i64 184, !67, i64 192}
!278 = !{!"_ZTSN11xercesc_2_718XMLDocumentHandlerE"}
!279 = !{!"_ZTSN11xercesc_2_716XMLErrorReporterE"}
!280 = !{!"_ZTSN11xercesc_2_716XMLEntityHandlerE"}
!281 = !{!"_ZTSN11xercesc_2_714DocTypeHandlerE"}
!282 = !{!"_ZTSN11xercesc_2_711PSVIHandlerE"}
!283 = !{!"_ZTSN11xercesc_2_710XSDLocatorE", !69, i64 0, !63, i64 8, !63, i64 16, !67, i64 24, !67, i64 32}
!284 = !{!61, !71, i64 272}
!285 = !{!61, !67, i64 288}
!286 = distinct !{!286, !120, !121}
!287 = !{!61, !66, i64 68}
!288 = !{!191, !65, i64 72}
!289 = distinct !{!289, !120, !121}
!290 = !{!191, !67, i64 64}
!291 = !{!191, !67, i64 40}
!292 = !{!61, !66, i64 64}
!293 = !{!61, !66, i64 60}
!294 = !{!295, !67, i64 0}
!295 = !{!"_ZTSN11xercesc_2_727SubstitutionGroupComparatorE", !67, i64 0, !67, i64 8}
!296 = !{!295, !67, i64 8}
!297 = distinct !{!297, !120, !121}
!298 = !{!"function_entry_count", i64 79}
!299 = !{!"branch_weights", i32 79, i32 0}
!300 = !{!301, !65, i64 8}
!301 = !{!"_ZTSN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEE", !67, i64 0, !65, i64 8, !67, i64 16, !66, i64 24, !67, i64 32, !67, i64 40, !66, i64 48, !66, i64 52}
!302 = !{!245, !67, i64 16}
!303 = !{!245, !66, i64 24}
!304 = !{!245, !66, i64 28}
!305 = !{!301, !67, i64 0}
!306 = !{!"VP", i32 0, i64 79, i64 8345045103670217670, i64 79}
!307 = !{!301, !67, i64 16}
!308 = !{!245, !67, i64 8}
!309 = !{!301, !66, i64 52}
!310 = !{!301, !66, i64 48}
!311 = !{!"branch_weights", i32 0, i32 79}
!312 = !{!301, !67, i64 40}
!313 = !{!"function_entry_count", i64 2718768}
!314 = !{!"branch_weights", i32 0, i32 2718768}
!315 = !{!"branch_weights", i32 2718764, i32 4}
!316 = !{!"VP", i32 1, i64 2718768, i64 33, i64 658811, i64 9, i64 435444, i64 17, i64 410031, i64 8, i64 320017}
!317 = distinct !{!317, !120, !121}
!318 = !{!233, !67, i64 128}
!319 = !{!320, !66, i64 28}
!320 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEE", !67, i64 0, !65, i64 8, !67, i64 16, !66, i64 24, !66, i64 28, !67, i64 32}
!321 = !{!60, !66, i64 904}
!322 = !{!323, !66, i64 12}
!323 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !65, i64 8, !66, i64 12, !66, i64 16, !67, i64 24, !67, i64 32}
!324 = !{!325, !67, i64 0}
!325 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !67, i64 0, !67, i64 8}
!326 = !{!325, !67, i64 8}
!327 = !{!328, !67, i64 0}
!328 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_12SchemaAttDefEEE", !67, i64 0, !67, i64 8, !67, i64 16, !66, i64 24}
!329 = !{!330, !333, i64 16}
!330 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !76, i64 0, !331, i64 8, !332, i64 12, !333, i64 16, !65, i64 20, !65, i64 21, !66, i64 24, !67, i64 32, !67, i64 40, !67, i64 48}
!331 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !64, i64 0}
!332 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !64, i64 0}
!333 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !64, i64 0}
!334 = !{!335, !67, i64 48}
!335 = !{!"_ZTSN11xercesc_2_713SchemaGrammarE", !336, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !67, i64 64, !67, i64 72, !67, i64 80, !67, i64 88, !67, i64 96, !67, i64 104, !67, i64 112, !67, i64 120, !65, i64 128, !337, i64 136}
!336 = !{!"_ZTSN11xercesc_2_77GrammarE", !76, i64 0}
!337 = !{!"_ZTSN11xercesc_2_724DatatypeValidatorFactoryE", !76, i64 0, !67, i64 8, !67, i64 16}
!338 = !{!339, !67, i64 80}
!339 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !330, i64 0, !66, i64 56, !216, i64 60, !217, i64 64, !215, i64 68, !67, i64 72, !67, i64 80, !67, i64 88, !67, i64 96, !67, i64 104, !67, i64 112}
!340 = !{!206, !89, i64 12}
!341 = !{!61, !65, i64 32}
!342 = !{!191, !67, i64 176}
!343 = !{!330, !332, i64 12}
!344 = !{!330, !67, i64 32}
!345 = !{!346, !351, i64 64}
!346 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinitionE", !347, i64 0, !66, i64 56, !66, i64 60, !351, i64 64, !67, i64 72, !67, i64 80, !67, i64 88, !67, i64 96, !67, i64 104, !67, i64 112, !67, i64 120}
!347 = !{!"_ZTSN11xercesc_2_716XSTypeDefinitionE", !348, i64 0, !350, i64 36, !89, i64 40, !67, i64 48}
!348 = !{!"_ZTSN11xercesc_2_78XSObjectE", !349, i64 8, !67, i64 16, !67, i64 24, !66, i64 32}
!349 = !{!"_ZTSN11xercesc_2_711XSConstants14COMPONENT_TYPEE", !64, i64 0}
!350 = !{!"_ZTSN11xercesc_2_716XSTypeDefinition13TYPE_CATEGORYE", !64, i64 0}
!351 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition7VARIETYE", !64, i64 0}
!352 = !{!323, !67, i64 24}
!353 = !{!354, !67, i64 24}
!354 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !65, i64 0, !332, i64 4, !66, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !65, i64 48}
!355 = !{!354, !332, i64 4}
!356 = !{!354, !65, i64 48}
!357 = !{!354, !67, i64 40}
!358 = !{!354, !65, i64 0}
!359 = !{!354, !67, i64 16}
!360 = distinct !{!360, !120, !121}
!361 = !{!330, !331, i64 8}
!362 = !{!339, !67, i64 72}
!363 = !{!364, !365, i64 48}
!364 = !{!"_ZTSN11xercesc_2_78PSVIItemE", !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !365, i64 48, !366, i64 52, !65, i64 56, !67, i64 64, !67, i64 72}
!365 = !{!"_ZTSN11xercesc_2_78PSVIItem14VALIDITY_STATEE", !64, i64 0}
!366 = !{!"_ZTSN11xercesc_2_78PSVIItem15ASSESSMENT_TYPEE", !64, i64 0}
!367 = distinct !{!367, !120, !121}
!368 = !{!"function_entry_count", i64 190056}
!369 = !{!"branch_weights", i32 190056, i32 0}
!370 = !{!371, !67, i64 8}
!371 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemIjEE", !67, i64 0, !67, i64 8, !67, i64 16, !66, i64 24}
!372 = !{!371, !67, i64 0}
!373 = distinct !{!373, !120, !121}
!374 = distinct !{!374, !120, !121}
!375 = !{!376, !65, i64 1}
!376 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !65, i64 0, !65, i64 1, !65, i64 2, !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !67, i64 64, !67, i64 72}
!377 = !{!61, !65, i64 22}
!378 = !{!61, !66, i64 40}
!379 = !{!61, !65, i64 23}
!380 = !{!192, !67, i64 16}
!381 = !{!193, !67, i64 16}
!382 = !{!61, !65, i64 19}
!383 = !{!193, !65, i64 8}
!384 = !{!191, !67, i64 56}
!385 = !{!61, !65, i64 25}
!386 = !{!"function_entry_count", i64 2}
!387 = !{!388, !67, i64 0}
!388 = !{!"_ZTSN11xercesc_2_716ValueHashTableOfItEE", !67, i64 0, !67, i64 8, !66, i64 16, !67, i64 24}
!389 = !{!388, !67, i64 8}
!390 = !{!388, !66, i64 16}
!391 = !{!388, !67, i64 24}
!392 = !{!"branch_weights", i32 2, i32 0}
!393 = !{!"function_entry_count", i64 46}
!394 = !{!"VP", i32 0, i64 46, i64 3024540859536234746, i64 46}
!395 = !{!"branch_weights", i32 29, i32 17}
!396 = !{!397, !67, i64 16}
!397 = !{!"_ZTSN11xercesc_2_724ValueHashTableBucketElemItEE", !89, i64 0, !67, i64 8, !67, i64 16}
!398 = !{!"VP", i32 0, i64 17, i64 -1309333655503989351, i64 17}
!399 = !{!"branch_weights", i32 0, i32 17}
!400 = !{!"branch_weights", i32 17, i32 0}
!401 = distinct !{!401, !120, !121}
!402 = !{!"branch_weights", i32 46, i32 0}
!403 = !{!397, !89, i64 0}
!404 = !{!"VP", i32 0, i64 46, i64 8345045103670217670, i64 46}
!405 = !{!397, !67, i64 8}
!406 = !{!"function_entry_count", i64 5}
!407 = !{!301, !66, i64 24}
!408 = !{!"branch_weights", i32 5, i32 0}
!409 = !{!301, !67, i64 32}
!410 = !{!"branch_weights", i32 0, i32 5}
!411 = !{!"VP", i32 0, i64 5, i64 8345045103670217670, i64 5}
!412 = !{!"branch_weights", i32 1, i32 127}
!413 = !{!"branch_weights", i32 47, i32 46}
!414 = !{!"VP", i32 0, i64 46, i64 -7405368087501025645, i64 46}
!415 = distinct !{!415, !120, !121}
!416 = !{!"branch_weights", i32 2881, i32 127}
!417 = distinct !{!417, !120, !121}
!418 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!419 = !{!"branch_weights", i32 0, i32 2}
!420 = !{!"VP", i32 0, i64 2, i64 -5147776714887549805, i64 2}
!421 = !{!"VP", i32 0, i64 5, i64 -7405368087501025645, i64 5}
!422 = !{!"VP", i32 0, i64 5, i64 -5147776714887549805, i64 5}
!423 = !{!"function_entry_count", i64 3}
!424 = !{!"branch_weights", i32 3, i32 0}
!425 = !{!"branch_weights", i32 0, i32 3}
!426 = !{!"VP", i32 0, i64 3, i64 -5147776714887549805, i64 3}
!427 = !{!"function_entry_count", i64 191815}
!428 = !{!"branch_weights", i32 191815, i32 0}
!429 = !{!339, !67, i64 104}
!430 = !{!431, !66, i64 4}
!431 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIjEE", !65, i64 0, !66, i64 4, !66, i64 8, !67, i64 16, !67, i64 24}
!432 = distinct !{!432, !120, !121}
!433 = !{!434, !67, i64 40}
!434 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEEE", !67, i64 0, !65, i64 8, !67, i64 16, !66, i64 24, !66, i64 28, !66, i64 32, !67, i64 40}
!435 = !{!434, !66, i64 24}
!436 = !{!434, !67, i64 0}
!437 = !{!434, !67, i64 16}
!438 = !{!439, !67, i64 16}
!439 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_9XMLAttDefEEE", !67, i64 0, !67, i64 8, !67, i64 16}
!440 = distinct !{!440, !120, !121}
!441 = !{!439, !67, i64 0}
!442 = !{!"function_entry_count", i64 392072}
!443 = !{!"VP", i32 0, i64 392072, i64 4592451362407133634, i64 392072}
!444 = !{!"branch_weights", i32 1, i32 191}
!445 = !{!446, !67, i64 16}
!446 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemIjEE", !67, i64 0, !67, i64 8, !67, i64 16}
!447 = !{!"VP", i32 0, i64 392048, i64 2119983950972065349, i64 392048}
!448 = !{!"branch_weights", i32 392048, i32 0}
!449 = !{!"branch_weights", i32 191, i32 3136193}
!450 = distinct !{!450, !120, !121}
!451 = !{!"branch_weights", i32 24, i32 392048}
!452 = !{!446, !67, i64 0}
!453 = !{!"function_entry_count", i64 885}
!454 = !{!"branch_weights", i32 885, i32 0}
!455 = !{!"VP", i32 0, i64 885, i64 3024540859536234746, i64 872, i64 4592451362407133634, i64 13}
!456 = !{!"branch_weights", i32 856, i32 29}
!457 = !{!"VP", i32 0, i64 29, i64 -1309333655503989351, i64 29}
!458 = !{!"branch_weights", i32 0, i32 29}
!459 = !{!"branch_weights", i32 29, i32 0}
!460 = !{!"VP", i32 0, i64 885, i64 8345045103670217670, i64 885}
!461 = !{!446, !67, i64 8}
!462 = !{!371, !67, i64 16}
!463 = !{!371, !66, i64 24}
!464 = !{!"function_entry_count", i64 789922}
!465 = !{!"branch_weights", i32 0, i32 789922}
!466 = !{!"branch_weights", i32 284, i32 789638}
!467 = !{!"branch_weights", i32 789638, i32 41628303}
!468 = distinct !{!468, !120, !121}
!469 = !{!"branch_weights", i32 789636, i32 2}
!470 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!471 = !{!330, !65, i64 21}
!472 = distinct !{!472, !120, !121}
!473 = distinct !{!473, !120, !121}
!474 = !{!"function_entry_count", i64 108}
!475 = !{!476, !67, i64 40}
!476 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEEE", !67, i64 0, !65, i64 8, !67, i64 16, !66, i64 24, !66, i64 28, !66, i64 32, !67, i64 40}
!477 = !{!476, !66, i64 24}
!478 = !{!476, !67, i64 0}
!479 = !{!"VP", i32 0, i64 108, i64 3024540859536234746, i64 108}
!480 = !{!476, !67, i64 16}
!481 = !{!"branch_weights", i32 0, i32 1}
!482 = !{!483, !67, i64 16}
!483 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_17DatatypeValidatorEEE", !67, i64 0, !67, i64 8, !67, i64 16}
!484 = !{!"VP", i32 0, i64 118, i64 -1309333655503989351, i64 118}
!485 = !{!"branch_weights", i32 108, i32 10}
!486 = !{!"branch_weights", i32 0, i32 118}
!487 = distinct !{!487, !120, !121}
!488 = !{!"branch_weights", i32 0, i32 108}
!489 = !{!483, !67, i64 0}
!490 = !{!491, !66, i64 12}
!491 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_13PSVIAttributeEEE", !65, i64 8, !66, i64 12, !66, i64 16, !67, i64 24, !67, i64 32}
!492 = !{!103, !67, i64 0}
!493 = !{!491, !67, i64 24}
!494 = !{!257, !67, i64 24}
!495 = distinct !{!495, !120, !121}
!496 = !{!"function_entry_count", i64 201935}
!497 = !{!"branch_weights", i32 201935, i32 0}
!498 = !{!323, !67, i64 32}
!499 = !{!"function_entry_count", i64 243874}
!500 = !{!"branch_weights", i32 191815, i32 52059}
!501 = !{!"branch_weights", i32 0, i32 52059}
!502 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!503 = !{!61, !65, i64 29}
!504 = !{!61, !65, i64 30}
!505 = !{!61, !65, i64 176}
!506 = !{!61, !66, i64 56}
!507 = !{!61, !65, i64 26}
!508 = !{!109, !65, i64 0}
!509 = !{!109, !66, i64 8}
!510 = !{!61, !65, i64 17}
!511 = !{!61, !67, i64 344}
!512 = !{!61, !66, i64 44}
!513 = !{!61, !66, i64 48}
!514 = !{!61, !66, i64 88}
!515 = !{!"function_entry_count", i64 190248}
!516 = !{!"branch_weights", i32 189544, i32 704}
!517 = !{!"branch_weights", i32 1, i32 703}
!518 = !{!"branch_weights", i32 4167, i32 885}
!519 = !{!"VP", i32 0, i64 885, i64 -7405368087501025645, i64 885}
!520 = distinct !{!520, !120, !121}
!521 = !{!"branch_weights", i32 4349, i32 703}
!522 = distinct !{!522, !120, !121}
!523 = !{!524, !67, i64 24}
!524 = !{!"_ZTSN11xercesc_2_725IdentityConstraintHandlerE", !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40}
!525 = !{!526, !66, i64 0}
!526 = !{!"_ZTSN11xercesc_2_717XPathMatcherStackE", !66, i64 0, !67, i64 8, !67, i64 16}
!527 = !{!"function_entry_count", i64 2444437052}
!528 = !{!"branch_weights", i32 -1850530244, i32 0}
!529 = !{!257, !67, i64 32}
!530 = !{!156, !65, i64 32}
!531 = !{!68, !65, i64 56}
!532 = !{!161, !66, i64 0}
!533 = !{!161, !66, i64 32772}
!534 = distinct !{!534, !120, !121}
!535 = !{!161, !63, i64 114696}
!536 = !{!161, !65, i64 114729}
!537 = distinct !{!537, !120, !121}
!538 = distinct !{!538, !120, !121}
!539 = distinct !{!539, !120, !121}
!540 = !{!"function_entry_count", i64 917}
!541 = !{!"VP", i32 0, i64 917, i64 3024540859536234746, i64 917}
!542 = !{!"VP", i32 0, i64 1234, i64 -1309333655503989351, i64 1234}
!543 = !{!"branch_weights", i32 917, i32 317}
!544 = !{!"branch_weights", i32 0, i32 1234}
!545 = !{!"branch_weights", i32 0, i32 917}
!546 = !{!"function_entry_count", i64 832914}
!547 = !{!"branch_weights", i32 832914, i32 0}
!548 = !{!431, !67, i64 24}
!549 = !{!431, !67, i64 16}
!550 = !{!144, !67, i64 40}
!551 = !{!"function_entry_count", i64 4843157}
!552 = !{!"branch_weights", i32 0, i32 4843157}
!553 = !{!195, !67, i64 24}
!554 = !{!"branch_weights", i32 4843157, i32 0}
!555 = !{!195, !67, i64 16}
!556 = !{!"function_entry_count", i64 349781}
!557 = !{!320, !67, i64 32}
!558 = !{!320, !66, i64 24}
!559 = !{!320, !67, i64 0}
!560 = !{!"VP", i32 0, i64 349781, i64 3024540859536234746, i64 349781}
!561 = !{!320, !67, i64 16}
!562 = !{!"branch_weights", i32 1, i32 207}
!563 = !{!328, !66, i64 24}
!564 = !{!"branch_weights", i32 349755, i32 0}
!565 = !{!328, !67, i64 16}
!566 = !{!"VP", i32 0, i64 349755, i64 -1309333655503989351, i64 349755}
!567 = !{!"branch_weights", i32 207, i32 2797833}
!568 = distinct !{!568, !120, !121}
!569 = !{!491, !67, i64 32}
!570 = !{!491, !66, i64 16}
!571 = distinct !{!571, !120, !121}
!572 = !{!"function_entry_count", i64 188992}
!573 = !{!257, !66, i64 16}
!574 = !{!"branch_weights", i32 9, i32 188983}
!575 = !{!"VP", i32 0, i64 9, i64 8345045103670217670, i64 9}
!576 = !{!"branch_weights", i32 1, i32 143}
!577 = !{!"branch_weights", i32 143, i32 1}
!578 = !{!"branch_weights", i32 143, i32 9329}
!579 = distinct !{!579, !120, !121}
!580 = !{!"VP", i32 0, i64 9, i64 -7405368087501025645, i64 9}
!581 = !{!"function_entry_count", i64 1992794}
!582 = !{!"VP", i32 0, i64 1992794, i64 3024540859536234746, i64 1992794}
!583 = !{!"branch_weights", i32 1, i32 1159830}
!584 = !{!"branch_weights", i32 2435526, i32 0}
!585 = !{!"branch_weights", i32 1030784, i32 1404742}
!586 = !{!"VP", i32 0, i64 1030784, i64 -1309333655503989351, i64 1030784}
!587 = !{!"branch_weights", i32 832963, i32 197821}
!588 = !{!"branch_weights", i32 1159830, i32 1275696}
!589 = distinct !{!589, !120, !121}
!590 = !{!"branch_weights", i32 1, i32 159}
!591 = !{!"branch_weights", i32 159, i32 9601}
!592 = distinct !{!592, !120, !121}
!593 = !{!"function_entry_count", i64 7}
!594 = !{!"branch_weights", i32 0, i32 7}
!595 = distinct !{!595, !120, !121}
!596 = !{!"branch_weights", i32 1359931, i32 0}
!597 = distinct !{!597, !120, !121}
!598 = !{!"function_entry_count", i64 1359937}
!599 = !{!"branch_weights", i32 2, i32 1359935}
!600 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!601 = !{!"branch_weights", i32 127, i32 1025}
!602 = distinct !{!602, !120, !121}
!603 = !{!"VP", i32 0, i64 7, i64 -2769809254715685994, i64 7}
!604 = !{!"branch_weights", i32 257, i32 191}
!605 = distinct !{!605, !120, !121}
!606 = distinct !{!606, !120, !121}
!607 = distinct !{!607, !120, !121}
!608 = distinct !{!608, !120, !121}
!609 = !{!"branch_weights", i32 127, i32 2881}
!610 = distinct !{!610, !120, !121}
!611 = !{!"branch_weights", i32 1, i32 223}
!612 = !{!"branch_weights", i32 444, i32 79}
!613 = !{!"VP", i32 0, i64 79, i64 -3182483803875353668, i64 79}
!614 = !{!"VP", i32 0, i64 79, i64 -7405368087501025645, i64 79}
!615 = distinct !{!615, !120, !121}
!616 = !{!"branch_weights", i32 16513, i32 223}
!617 = distinct !{!617, !120, !121}
!618 = !{!"function_entry_count", i64 6}
!619 = !{!"VP", i32 0, i64 6, i64 -7405368087501025645, i64 6}
!620 = !{!"branch_weights", i32 0, i32 6}
!621 = !{!"VP", i32 0, i64 6, i64 -1480571424701097013, i64 3, i64 -5147776714887549805, i64 3}
!622 = !{!623, !67, i64 0}
!623 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEEE", !67, i64 0, !67, i64 8}
!624 = !{!623, !67, i64 8}
!625 = distinct !{!625, !120, !121}
!626 = distinct !{!626, !120, !121}
!627 = distinct !{!627, !120, !121}
!628 = !{!629, !67, i64 0}
!629 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemIjEEEE", !67, i64 0, !67, i64 8}
!630 = !{!629, !67, i64 8}
!631 = distinct !{!631, !120, !121}
!632 = distinct !{!632, !120, !121}
!633 = distinct !{!633, !120, !121}
!634 = !{!"function_entry_count", i64 10}
!635 = !{!323, !66, i64 16}
!636 = !{!"branch_weights", i32 0, i32 10}
!637 = distinct !{!637, !120, !121}

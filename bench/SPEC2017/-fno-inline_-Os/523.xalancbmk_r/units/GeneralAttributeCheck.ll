; ModuleID = 'GeneralAttributeCheck.cpp'
source_filename = "GeneralAttributeCheck.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::GeneralAttributeCheck" = type { ptr, ptr, %"class.xercesc_2_7::IDDatatypeValidator" }
%"class.xercesc_2_7::IDDatatypeValidator" = type { %"class.xercesc_2_7::StringDatatypeValidator" }
%"class.xercesc_2_7::StringDatatypeValidator" = type { %"class.xercesc_2_7::AbstractStringValidator" }
%"class.xercesc_2_7::AbstractStringValidator" = type { %"class.xercesc_2_7::DatatypeValidator", i32, i32, i32, i8, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }
%"class.xercesc_2_7::DatatypeValidatorFactory" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::ValueHashTableOf" = type { ptr, ptr, i32, ptr }
%"struct.xercesc_2_7::ValueHashTableBucketElem" = type { i16, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::TraverseSchema" = type { i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLBuffer", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XSDErrorReporter", ptr, ptr, ptr, ptr, %"class.xercesc_2_7::GeneralAttributeCheck" }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::XSDErrorReporter" = type { ptr, i8, ptr }
%"class.xercesc_2_7::SchemaInfo" = type { i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [7 x ptr], ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZNK11xercesc_2_724DatatypeValidatorFactory20getDatatypeValidatorEPKt = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItED2Ev = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_79XMLString10startsWithEPKtS2_ = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE10addElementERKS2_ = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_710SchemaInfo20getValidationContextEv = comdat any

$_ZNK11xercesc_2_712XMLException10getMessageEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_724ValueHashTableBucketElemItEC2EPvRKtPS1_ = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE9removeAllEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

@_ZN11xercesc_2_7L23sGeneralAttCheckCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_721GeneralAttributeCheck12fNonNegIntDVE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_721GeneralAttributeCheck10fBooleanDVE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_721GeneralAttributeCheck9fAnyURIDVE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_713SchemaSymbols23fgDT_NONNEGATIVEINTEGERE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols12fgDT_BOOLEANE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols11fgDT_ANYURIE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L31sGeneralAttCheckMutexRegisteredE = internal unnamed_addr global i1 false, align 1
@_ZN11xercesc_2_7L21sGeneralAttCheckMutexE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_713SchemaSymbols14fgATT_ABSTRACTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols26fgATT_ATTRIBUTEFORMDEFAULTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols10fgATT_BASEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols11fgATT_BLOCKE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgATT_BLOCKDEFAULTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgATT_DEFAULTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols24fgATT_ELEMENTFORMDEFAULTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols11fgATT_FINALE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgATT_FINALDEFAULTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols11fgATT_FIXEDE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols10fgATT_FORME = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols8fgATT_IDE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols14fgATT_ITEMTYPEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols15fgATT_MAXOCCURSE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols17fgATT_MEMBERTYPESE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols15fgATT_MINOCCURSE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols11fgATT_MIXEDE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols10fgATT_NAMEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols15fgATT_NAMESPACEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols14fgATT_NILLABLEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols21fgATT_PROCESSCONTENTSE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols12fgATT_PUBLICE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols9fgATT_REFE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols11fgATT_REFERE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols20fgATT_SCHEMALOCATIONE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols12fgATT_SOURCEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols23fgATT_SUBSTITUTIONGROUPE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols12fgATT_SYSTEME = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols21fgATT_TARGETNAMESPACEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols10fgATT_TYPEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols9fgATT_USEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols11fgATT_VALUEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgATT_VERSIONE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols11fgATT_XPATHE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgELT_MINEXCLUSIVEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgELT_MININCLUSIVEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgELT_MAXEXCLUSIVEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgELT_MAXINCLUSIVEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols17fgELT_TOTALDIGITSE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols20fgELT_FRACTIONDIGITSE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols12fgELT_LENGTHE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols15fgELT_MINLENGTHE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols15fgELT_MAXLENGTHE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols17fgELT_ENUMERATIONE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols16fgELT_WHITESPACEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgELT_PATTERNE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L8fgGlobalE = internal constant [7 x i16] [i16 103, i16 108, i16 111, i16 98, i16 97, i16 108, i16 0], align 2
@_ZN11xercesc_2_7L7fgLocalE = internal constant [6 x i16] [i16 108, i16 111, i16 99, i16 97, i16 108, i16 0], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgELT_APPINFOE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols19fgELT_DOCUMENTATIONE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_721GeneralAttributeCheck9fAttNamesE = dso_local local_unnamed_addr global [34 x ptr] [ptr @_ZN11xercesc_2_713SchemaSymbols14fgATT_ABSTRACTE, ptr @_ZN11xercesc_2_713SchemaSymbols26fgATT_ATTRIBUTEFORMDEFAULTE, ptr @_ZN11xercesc_2_713SchemaSymbols10fgATT_BASEE, ptr @_ZN11xercesc_2_713SchemaSymbols11fgATT_BLOCKE, ptr @_ZN11xercesc_2_713SchemaSymbols18fgATT_BLOCKDEFAULTE, ptr @_ZN11xercesc_2_713SchemaSymbols13fgATT_DEFAULTE, ptr @_ZN11xercesc_2_713SchemaSymbols24fgATT_ELEMENTFORMDEFAULTE, ptr @_ZN11xercesc_2_713SchemaSymbols11fgATT_FINALE, ptr @_ZN11xercesc_2_713SchemaSymbols18fgATT_FINALDEFAULTE, ptr @_ZN11xercesc_2_713SchemaSymbols11fgATT_FIXEDE, ptr @_ZN11xercesc_2_713SchemaSymbols10fgATT_FORME, ptr @_ZN11xercesc_2_713SchemaSymbols8fgATT_IDE, ptr @_ZN11xercesc_2_713SchemaSymbols14fgATT_ITEMTYPEE, ptr @_ZN11xercesc_2_713SchemaSymbols15fgATT_MAXOCCURSE, ptr @_ZN11xercesc_2_713SchemaSymbols17fgATT_MEMBERTYPESE, ptr @_ZN11xercesc_2_713SchemaSymbols15fgATT_MINOCCURSE, ptr @_ZN11xercesc_2_713SchemaSymbols11fgATT_MIXEDE, ptr @_ZN11xercesc_2_713SchemaSymbols10fgATT_NAMEE, ptr @_ZN11xercesc_2_713SchemaSymbols15fgATT_NAMESPACEE, ptr @_ZN11xercesc_2_713SchemaSymbols14fgATT_NILLABLEE, ptr @_ZN11xercesc_2_713SchemaSymbols21fgATT_PROCESSCONTENTSE, ptr @_ZN11xercesc_2_713SchemaSymbols12fgATT_PUBLICE, ptr @_ZN11xercesc_2_713SchemaSymbols9fgATT_REFE, ptr @_ZN11xercesc_2_713SchemaSymbols11fgATT_REFERE, ptr @_ZN11xercesc_2_713SchemaSymbols20fgATT_SCHEMALOCATIONE, ptr @_ZN11xercesc_2_713SchemaSymbols12fgATT_SOURCEE, ptr @_ZN11xercesc_2_713SchemaSymbols23fgATT_SUBSTITUTIONGROUPE, ptr @_ZN11xercesc_2_713SchemaSymbols12fgATT_SYSTEME, ptr @_ZN11xercesc_2_713SchemaSymbols21fgATT_TARGETNAMESPACEE, ptr @_ZN11xercesc_2_713SchemaSymbols10fgATT_TYPEE, ptr @_ZN11xercesc_2_713SchemaSymbols9fgATT_USEE, ptr @_ZN11xercesc_2_713SchemaSymbols11fgATT_VALUEE, ptr @_ZN11xercesc_2_713SchemaSymbols13fgATT_VERSIONE, ptr @_ZN11xercesc_2_713SchemaSymbols11fgATT_XPATHE], align 16
@_ZN11xercesc_2_713SchemaSymbols18fgATTVAL_QUALIFIEDE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols20fgATTVAL_UNQUALIFIEDE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L11fgUnboundedE = internal constant [10 x i16] [i16 117, i16 110, i16 98, i16 111, i16 117, i16 110, i16 100, i16 101, i16 100, i16 0], align 16
@_ZN11xercesc_2_7L10fgValueOneE = internal constant [2 x i16] [i16 49, i16 0], align 2
@_ZN11xercesc_2_7L11fgValueZeroE = internal constant [2 x i16] [i16 48, i16 0], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_SKIPE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols12fgATTVAL_LAXE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols15fgATTVAL_STRICTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols17fgATTVAL_OPTIONALE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols19fgATTVAL_PROHIBITEDE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols17fgATTVAL_REQUIREDE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgWS_PRESERVEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols12fgWS_REPLACEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgWS_COLLAPSEE = external constant [0 x i16], align 2
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZN11xercesc_2_721GeneralAttributeCheck14fgElemAttTableE = dso_local local_unnamed_addr global <{ <{ [16 x i16], [18 x i16] }>, <{ [12 x i16], [22 x i16] }>, <{ [21 x i16], [13 x i16] }>, <{ [21 x i16], [13 x i16] }>, <{ [26 x i16], [8 x i16] }>, [34 x i16], [34 x i16], [34 x i16], <{ [18 x i16], [16 x i16] }>, <{ [23 x i16], [11 x i16] }>, <{ [16 x i16], [18 x i16] }>, <{ [17 x i16], [17 x i16] }>, <{ [18 x i16], [16 x i16] }>, <{ [17 x i16], [17 x i16] }>, <{ [26 x i16], [8 x i16] }>, [34 x i16], [34 x i16], <{ [23 x i16], [11 x i16] }>, [34 x i16], <{ [12 x i16], [22 x i16] }>, [34 x i16], [34 x i16], <{ [18 x i16], [16 x i16] }>, <{ [23 x i16], [11 x i16] }>, <{ [25 x i16], [9 x i16] }>, <{ [25 x i16], [9 x i16] }>, <{ [18 x i16], [16 x i16] }>, <{ [24 x i16], [10 x i16] }>, [34 x i16], <{ [13 x i16], [21 x i16] }>, [34 x i16], [34 x i16], [34 x i16], [34 x i16], [34 x i16], [34 x i16], [34 x i16], [34 x i16], <{ [25 x i16], [9 x i16] }>, <{ [12 x i16], [22 x i16] }>, [34 x i16], [34 x i16], <{ [16 x i16], [18 x i16] }>, <{ [12 x i16], [22 x i16] }>, <{ [18 x i16], [16 x i16] }>, <{ [12 x i16], [22 x i16] }>, [34 x i16], <{ [15 x i16], [19 x i16] }>, <{ [18 x i16], [16 x i16] }>, [34 x i16] }> <{ <{ [16 x i16], [18 x i16] }> <{ [16 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 258, i16 0, i16 514], [18 x i16] zeroinitializer }>, <{ [12 x i16], [22 x i16] }> <{ [12 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34], [22 x i16] zeroinitializer }>, <{ [21 x i16], [13 x i16] }> <{ [21 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 130, i16 0, i16 10, i16 0, i16 0, i16 2, i16 0, i16 1026], [13 x i16] zeroinitializer }>, <{ [21 x i16], [13 x i16] }> <{ [21 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 1026], [13 x i16] zeroinitializer }>, <{ [26 x i16], [8 x i16] }> <{ [26 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 6], [8 x i16] zeroinitializer }>, [34 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0, i16 0, i16 2, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0, i16 0, i16 0], [34 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0, i16 0, i16 2, i16 66, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 2050, i16 0, i16 0, i16 0], [34 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0, i16 0, i16 2, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2050, i16 0, i16 0, i16 0], <{ [18 x i16], [16 x i16] }> <{ [18 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1], [16 x i16] zeroinitializer }>, <{ [23 x i16], [11 x i16] }> <{ [23 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1], [11 x i16] zeroinitializer }>, <{ [16 x i16], [18 x i16] }> <{ [16 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 130, i16 0, i16 10], [18 x i16] zeroinitializer }>, <{ [17 x i16], [17 x i16] }> <{ [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 18], [17 x i16] zeroinitializer }>, <{ [18 x i16], [16 x i16] }> <{ [18 x i16] [i16 18, i16 0, i16 0, i16 2, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 18, i16 1], [16 x i16] zeroinitializer }>, <{ [17 x i16], [17 x i16] }> <{ [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 18], [17 x i16] zeroinitializer }>, <{ [26 x i16], [8 x i16] }> <{ [26 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 6], [8 x i16] zeroinitializer }>, [34 x i16] [i16 18, i16 0, i16 0, i16 2, i16 0, i16 2, i16 0, i16 2, i16 0, i16 2, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 0, i16 18, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0, i16 2, i16 0, i16 0, i16 0, i16 0], [34 x i16] [i16 0, i16 0, i16 0, i16 2, i16 0, i16 2, i16 0, i16 0, i16 0, i16 2, i16 66, i16 34, i16 0, i16 130, i16 0, i16 10, i16 0, i16 1, i16 0, i16 18, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0, i16 0, i16 0], <{ [23 x i16], [11 x i16] }> <{ [23 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 130, i16 0, i16 10, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1], [11 x i16] zeroinitializer }>, [34 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0], <{ [12 x i16], [22 x i16] }> <{ [12 x i16] [i16 0, i16 0, i16 1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34], [22 x i16] zeroinitializer }>, [34 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1], [34 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 18, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 10, i16 0, i16 0], <{ [18 x i16], [16 x i16] }> <{ [18 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1], [16 x i16] zeroinitializer }>, <{ [23 x i16], [11 x i16] }> <{ [23 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 130, i16 0, i16 10, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1], [11 x i16] zeroinitializer }>, <{ [25 x i16], [9 x i16] }> <{ [25 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2], [9 x i16] zeroinitializer }>, <{ [25 x i16], [9 x i16] }> <{ [25 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1], [9 x i16] zeroinitializer }>, <{ [18 x i16], [16 x i16] }> <{ [18 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1], [16 x i16] zeroinitializer }>, <{ [24 x i16], [10 x i16] }> <{ [24 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1], [10 x i16] zeroinitializer }>, [34 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 18, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 10, i16 0, i16 0], <{ [13 x i16], [21 x i16] }> <{ [13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 2], [21 x i16] zeroinitializer }>, [34 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 18, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0], [34 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 18, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0], [34 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 18, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 10, i16 0, i16 0], [34 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 18, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0], [34 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 18, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0], [34 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 18, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 10, i16 0, i16 0], [34 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 0, i16 0, i16 0, i16 1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 6, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0], [34 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0], <{ [25 x i16], [9 x i16] }> <{ [25 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1], [9 x i16] zeroinitializer }>, <{ [12 x i16], [22 x i16] }> <{ [12 x i16] [i16 0, i16 0, i16 2, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34], [22 x i16] zeroinitializer }>, [34 x i16] [i16 0, i16 66, i16 0, i16 0, i16 2, i16 0, i16 66, i16 0, i16 2, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0, i16 0, i16 2, i16 0], [34 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1], <{ [16 x i16], [18 x i16] }> <{ [16 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 130, i16 0, i16 10], [18 x i16] zeroinitializer }>, <{ [12 x i16], [22 x i16] }> <{ [12 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34], [22 x i16] zeroinitializer }>, <{ [18 x i16], [16 x i16] }> <{ [18 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1], [16 x i16] zeroinitializer }>, <{ [12 x i16], [22 x i16] }> <{ [12 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0, i16 0, i16 34], [22 x i16] zeroinitializer }>, [34 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 18, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 10, i16 0, i16 0], <{ [15 x i16], [19 x i16] }> <{ [15 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 2], [19 x i16] zeroinitializer }>, <{ [18 x i16], [16 x i16] }> <{ [18 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1], [16 x i16] zeroinitializer }>, [34 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 18, i16 0, i16 34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 4098, i16 0, i16 0] }>, align 16
@_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"./xercesc/util/ValueHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_GeneralAttributeCheck.cpp, ptr null }]

@_ZN11xercesc_2_721GeneralAttributeCheckC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_721GeneralAttributeCheckC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_721GeneralAttributeCheckD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_721GeneralAttributeCheckD2Ev

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #2 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L23sGeneralAttCheckCleanupE) #12
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer29initializeGeneralAttrCheckMapEv() local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %1 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 144) #12
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_721GeneralAttributeCheckC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef %2) #12
          to label %3 unwind label %4

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_721GeneralAttributeCheckD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %1) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #13
  ret void

4:                                                ; preds = %0
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %1) #13
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721GeneralAttributeCheckC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr %1, ptr %0, align 8, !tbaa !87
  %3 = getelementptr inbounds %"class.xercesc_2_7::GeneralAttributeCheck", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !99
  %4 = getelementptr inbounds %"class.xercesc_2_7::GeneralAttributeCheck", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_719IDDatatypeValidatorC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef %1) #12
  invoke void @_ZN11xercesc_2_721GeneralAttributeCheck11mapElementsEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #12
          to label %5 unwind label %6

5:                                                ; preds = %2
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_719IDDatatypeValidatorD1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !100 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719IDDatatypeValidatorC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721GeneralAttributeCheck11mapElementsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(144) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %3 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %4 = load i1, ptr @_ZN11xercesc_2_7L31sGeneralAttCheckMutexRegisteredE, align 1
  br i1 %4, label %35, label %5, !prof !101

5:                                                ; preds = %1
  %6 = load ptr, ptr @_ZN11xercesc_2_7L21sGeneralAttCheckMutexE, align 8, !tbaa !82
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %25, !prof !102

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !82
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %9) #12
  %10 = load ptr, ptr @_ZN11xercesc_2_7L21sGeneralAttCheckMutexE, align 8, !tbaa !82
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !102

12:                                               ; preds = %8
  %13 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8) #12
          to label %14 unwind label %17

14:                                               ; preds = %12
  %15 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %15) #12
          to label %16 unwind label %19

16:                                               ; preds = %14
  store ptr %13, ptr @_ZN11xercesc_2_7L21sGeneralAttCheckMutexE, align 8, !tbaa !82
  br label %21

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %23

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %13) #13
  br label %23

21:                                               ; preds = %16, %8
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %22 = load ptr, ptr @_ZN11xercesc_2_7L21sGeneralAttCheckMutexE, align 8, !tbaa !82
  br label %25

23:                                               ; preds = %19, %17
  %24 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  br label %36

25:                                               ; preds = %21, %5
  %26 = phi ptr [ %22, %21 ], [ %6, %5 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %26) #12
  %27 = load i1, ptr @_ZN11xercesc_2_7L31sGeneralAttCheckMutexRegisteredE, align 1
  br i1 %27, label %34, label %28, !prof !101

28:                                               ; preds = %25
  invoke void @_ZN11xercesc_2_721GeneralAttributeCheck15setUpValidatorsEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #12
          to label %29 unwind label %32

29:                                               ; preds = %28
  invoke void @_ZN11xercesc_2_721GeneralAttributeCheck13mapAttributesEv(ptr nonnull align 8 poison) #12
          to label %30 unwind label %32

30:                                               ; preds = %29
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L23sGeneralAttCheckCleanupE, ptr noundef nonnull @_ZN11xercesc_2_721GeneralAttributeCheck21reinitGeneralAttCheckEv) #12
          to label %31 unwind label %32

31:                                               ; preds = %30
  store i1 true, ptr @_ZN11xercesc_2_7L31sGeneralAttCheckMutexRegisteredE, align 1
  br label %34

32:                                               ; preds = %30, %29, %28
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %36

34:                                               ; preds = %31, %25
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %35

35:                                               ; preds = %34, %1
  ret void

36:                                               ; preds = %32, %23
  %37 = phi { ptr, i32 } [ %33, %32 ], [ %24, %23 ]
  resume { ptr, i32 } %37
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_719IDDatatypeValidatorD1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_721GeneralAttributeCheckD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #6 align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::GeneralAttributeCheck", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_719IDDatatypeValidatorD1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721GeneralAttributeCheck15setUpValidatorsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(144) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = alloca %"class.xercesc_2_7::DatatypeValidatorFactory", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !87
  call void @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #12
          to label %4 unwind label %11

4:                                                ; preds = %1
  %5 = invoke noundef ptr @_ZNK11xercesc_2_724DatatypeValidatorFactory20getDatatypeValidatorEPKt(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols23fgDT_NONNEGATIVEINTEGERE) #12
          to label %6 unwind label %11

6:                                                ; preds = %4
  store ptr %5, ptr @_ZN11xercesc_2_721GeneralAttributeCheck12fNonNegIntDVE, align 8, !tbaa !82
  %7 = invoke noundef ptr @_ZNK11xercesc_2_724DatatypeValidatorFactory20getDatatypeValidatorEPKt(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgDT_BOOLEANE) #12
          to label %8 unwind label %11

8:                                                ; preds = %6
  store ptr %7, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fBooleanDVE, align 8, !tbaa !82
  %9 = invoke noundef ptr @_ZNK11xercesc_2_724DatatypeValidatorFactory20getDatatypeValidatorEPKt(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgDT_ANYURIE) #12
          to label %10 unwind label %11

10:                                               ; preds = %8
  store ptr %9, ptr @_ZN11xercesc_2_721GeneralAttributeCheck9fAnyURIDVE, align 8, !tbaa !82
  call void @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #10
  ret void

11:                                               ; preds = %8, %6, %4, %1
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #10
  resume { ptr, i32 } %12
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724DatatypeValidatorFactory20getDatatypeValidatorEPKt(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !103 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4, !prof !104

4:                                                ; preds = %2
  %5 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !104

7:                                                ; preds = %4
  %8 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %1) #12
  br i1 %8, label %15, label %9, !prof !105

9:                                                ; preds = %7, %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidatorFactory", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13, !prof !108

13:                                               ; preds = %9
  %14 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %1) #12
  br i1 %14, label %15, label %19, !prof !109

15:                                               ; preds = %13, %7
  %16 = phi ptr [ @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, %7 ], [ %10, %13 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !82
  %18 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull %1) #12
  br label %19

19:                                               ; preds = %15, %2, %13, %9
  %20 = phi ptr [ null, %9 ], [ null, %13 ], [ null, %2 ], [ %18, %15 ]
  ret ptr %20
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721GeneralAttributeCheck13mapAttributesEv(ptr nocapture nonnull readnone align 8 %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  %22 = alloca i16, align 2
  %23 = alloca i16, align 2
  %24 = alloca i16, align 2
  %25 = alloca i16, align 2
  %26 = alloca i16, align 2
  %27 = alloca i16, align 2
  %28 = alloca i16, align 2
  %29 = alloca i16, align 2
  %30 = alloca i16, align 2
  %31 = alloca i16, align 2
  %32 = alloca i16, align 2
  %33 = alloca i16, align 2
  %34 = alloca i16, align 2
  %35 = alloca i16, align 2
  %36 = alloca i16, align 2
  %37 = alloca i16, align 2
  %38 = alloca i16, align 2
  %39 = alloca i16, align 2
  %40 = alloca i16, align 2
  %41 = alloca i16, align 2
  %42 = alloca i16, align 2
  %43 = alloca i16, align 2
  %44 = alloca i16, align 2
  %45 = alloca i16, align 2
  %46 = alloca i16, align 2
  %47 = alloca i16, align 2
  %48 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 32) #12
  %49 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %48, i32 noundef 34, ptr noundef %49) #12
          to label %50 unwind label %98

50:                                               ; preds = %1
  store ptr %48, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i16 0, ptr %2, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols14fgATT_ABSTRACTE, ptr noundef nonnull align 2 dereferenceable(2) %2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  %51 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 1, ptr %3, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols26fgATT_ATTRIBUTEFORMDEFAULTE, ptr noundef nonnull align 2 dereferenceable(2) %3) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %52 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 2, ptr %4, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgATT_BASEE, ptr noundef nonnull align 2 dereferenceable(2) %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  %53 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 3, ptr %5, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgATT_BLOCKE, ptr noundef nonnull align 2 dereferenceable(2) %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  %54 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i16 4, ptr %6, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgATT_BLOCKDEFAULTE, ptr noundef nonnull align 2 dereferenceable(2) %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  %55 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i16 5, ptr %7, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %55, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgATT_DEFAULTE, ptr noundef nonnull align 2 dereferenceable(2) %7) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  %56 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i16 6, ptr %8, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols24fgATT_ELEMENTFORMDEFAULTE, ptr noundef nonnull align 2 dereferenceable(2) %8) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  %57 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #10
  store i16 7, ptr %9, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgATT_FINALE, ptr noundef nonnull align 2 dereferenceable(2) %9) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #10
  %58 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #10
  store i16 8, ptr %10, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %58, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgATT_FINALDEFAULTE, ptr noundef nonnull align 2 dereferenceable(2) %10) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #10
  %59 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #10
  store i16 9, ptr %11, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgATT_FIXEDE, ptr noundef nonnull align 2 dereferenceable(2) %11) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #10
  %60 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #10
  store i16 10, ptr %12, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %60, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgATT_FORME, ptr noundef nonnull align 2 dereferenceable(2) %12) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #10
  %61 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #10
  store i16 11, ptr %13, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols8fgATT_IDE, ptr noundef nonnull align 2 dereferenceable(2) %13) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #10
  %62 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #10
  store i16 12, ptr %14, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols14fgATT_ITEMTYPEE, ptr noundef nonnull align 2 dereferenceable(2) %14) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #10
  %63 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #10
  store i16 13, ptr %15, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgATT_MAXOCCURSE, ptr noundef nonnull align 2 dereferenceable(2) %15) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #10
  %64 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #10
  store i16 14, ptr %16, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols17fgATT_MEMBERTYPESE, ptr noundef nonnull align 2 dereferenceable(2) %16) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #10
  %65 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #10
  store i16 15, ptr %17, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgATT_MINOCCURSE, ptr noundef nonnull align 2 dereferenceable(2) %17) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #10
  %66 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #10
  store i16 16, ptr %18, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgATT_MIXEDE, ptr noundef nonnull align 2 dereferenceable(2) %18) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #10
  %67 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #10
  store i16 17, ptr %19, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgATT_NAMEE, ptr noundef nonnull align 2 dereferenceable(2) %19) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #10
  %68 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #10
  store i16 18, ptr %20, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgATT_NAMESPACEE, ptr noundef nonnull align 2 dereferenceable(2) %20) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #10
  %69 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #10
  store i16 19, ptr %21, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols14fgATT_NILLABLEE, ptr noundef nonnull align 2 dereferenceable(2) %21) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #10
  %70 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #10
  store i16 20, ptr %22, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgATT_PROCESSCONTENTSE, ptr noundef nonnull align 2 dereferenceable(2) %22) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #10
  %71 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #10
  store i16 21, ptr %23, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgATT_PUBLICE, ptr noundef nonnull align 2 dereferenceable(2) %23) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #10
  %72 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #10
  store i16 22, ptr %24, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgATT_REFE, ptr noundef nonnull align 2 dereferenceable(2) %24) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #10
  %73 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #10
  store i16 23, ptr %25, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgATT_REFERE, ptr noundef nonnull align 2 dereferenceable(2) %25) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #10
  %74 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #10
  store i16 24, ptr %26, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %74, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols20fgATT_SCHEMALOCATIONE, ptr noundef nonnull align 2 dereferenceable(2) %26) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #10
  %75 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #10
  store i16 25, ptr %27, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %75, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgATT_SOURCEE, ptr noundef nonnull align 2 dereferenceable(2) %27) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #10
  %76 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #10
  store i16 26, ptr %28, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols23fgATT_SUBSTITUTIONGROUPE, ptr noundef nonnull align 2 dereferenceable(2) %28) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #10
  %77 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #10
  store i16 27, ptr %29, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %77, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgATT_SYSTEME, ptr noundef nonnull align 2 dereferenceable(2) %29) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #10
  %78 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #10
  store i16 28, ptr %30, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgATT_TARGETNAMESPACEE, ptr noundef nonnull align 2 dereferenceable(2) %30) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #10
  %79 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #10
  store i16 29, ptr %31, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgATT_TYPEE, ptr noundef nonnull align 2 dereferenceable(2) %31) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #10
  %80 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #10
  store i16 30, ptr %32, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgATT_USEE, ptr noundef nonnull align 2 dereferenceable(2) %32) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #10
  %81 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #10
  store i16 31, ptr %33, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %81, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgATT_VALUEE, ptr noundef nonnull align 2 dereferenceable(2) %33) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #10
  %82 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #10
  store i16 32, ptr %34, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgATT_VERSIONE, ptr noundef nonnull align 2 dereferenceable(2) %34) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #10
  %83 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %35) #10
  store i16 33, ptr %35, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgATT_XPATHE, ptr noundef nonnull align 2 dereferenceable(2) %35) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %35) #10
  %84 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 32) #12
  %85 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %84, i32 noundef 13, ptr noundef %85) #12
          to label %86 unwind label %100

86:                                               ; preds = %50
  store ptr %84, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #10
  store i16 33, ptr %36, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgELT_MINEXCLUSIVEE, ptr noundef nonnull align 2 dereferenceable(2) %36) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #10
  %87 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %37) #10
  store i16 34, ptr %37, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %87, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgELT_MININCLUSIVEE, ptr noundef nonnull align 2 dereferenceable(2) %37) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %37) #10
  %88 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #10
  store i16 30, ptr %38, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgELT_MAXEXCLUSIVEE, ptr noundef nonnull align 2 dereferenceable(2) %38) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #10
  %89 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %39) #10
  store i16 31, ptr %39, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgELT_MAXINCLUSIVEE, ptr noundef nonnull align 2 dereferenceable(2) %39) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %39) #10
  %90 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %40) #10
  store i16 46, ptr %40, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %90, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols17fgELT_TOTALDIGITSE, ptr noundef nonnull align 2 dereferenceable(2) %40) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #10
  %91 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %41) #10
  store i16 21, ptr %41, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %91, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols20fgELT_FRACTIONDIGITSE, ptr noundef nonnull align 2 dereferenceable(2) %41) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %41) #10
  %92 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %42) #10
  store i16 28, ptr %42, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgELT_LENGTHE, ptr noundef nonnull align 2 dereferenceable(2) %42) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %42) #10
  %93 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %43) #10
  store i16 35, ptr %43, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %93, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgELT_MINLENGTHE, ptr noundef nonnull align 2 dereferenceable(2) %43) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %43) #10
  %94 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %44) #10
  store i16 32, ptr %44, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %94, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgELT_MAXLENGTHE, ptr noundef nonnull align 2 dereferenceable(2) %44) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %44) #10
  %95 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %45) #10
  store i16 18, ptr %45, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %95, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols17fgELT_ENUMERATIONE, ptr noundef nonnull align 2 dereferenceable(2) %45) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %45) #10
  %96 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %46) #10
  store i16 49, ptr %46, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %96, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols16fgELT_WHITESPACEE, ptr noundef nonnull align 2 dereferenceable(2) %46) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %46) #10
  %97 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %47) #10
  store i16 37, ptr %47, align 2, !tbaa !110
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %97, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgELT_PATTERNE, ptr noundef nonnull align 2 dereferenceable(2) %47) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %47) #10
  ret void

98:                                               ; preds = %1
  %99 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %48) #13
  br label %102

100:                                              ; preds = %50
  %101 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %84) #13
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi { ptr, i32 } [ %101, %100 ], [ %99, %98 ]
  resume { ptr, i32 } %103
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_721GeneralAttributeCheck21reinitGeneralAttCheckEv() #6 align 2 !prof !86 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L21sGeneralAttCheckMutexE, align 8, !tbaa !82
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #13
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L21sGeneralAttCheckMutexE, align 8, !tbaa !82
  store i1 false, ptr @_ZN11xercesc_2_7L31sGeneralAttCheckMutexRegisteredE, align 1
  %5 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %5) #13
  br label %8

8:                                                ; preds = %7, %4
  %9 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !82
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %9) #13
  br label %12

12:                                               ; preds = %11, %8
  store ptr null, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !82
  store ptr null, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  store ptr null, ptr @_ZN11xercesc_2_721GeneralAttributeCheck9fAnyURIDVE, align 8, !tbaa !82
  store ptr null, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fBooleanDVE, align 8, !tbaa !82
  store ptr null, ptr @_ZN11xercesc_2_721GeneralAttributeCheck12fNonNegIntDVE, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr %2, ptr %0, align 8, !tbaa !112
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !114
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %5, align 8, !tbaa !115
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !116
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) #12
  %7 = load ptr, ptr %0, align 8, !tbaa !112
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %7) #12
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #12
          to label %9 unwind label %10

9:                                                ; preds = %3
  store ptr %8, ptr %6, align 8, !tbaa !116
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #13
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #4 comdat align 2 !prof !117 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %5 = call noundef ptr @_ZN11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !118

7:                                                ; preds = %3
  %8 = load i16, ptr %2, align 2, !tbaa !110
  store i16 %8, ptr %5, align 8, !tbaa !119
  %9 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %5, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !121
  br label %26

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8, !tbaa !112
  %12 = load ptr, ptr %11, align 8, !tbaa !122
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 24) #12
  %16 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !114
  %18 = load i32, ptr %4, align 4, !tbaa !124
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !82
  call void @_ZN11xercesc_2_724ValueHashTableBucketElemItEC2EPvRKtPS1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef %21) #12
  %22 = load ptr, ptr %16, align 8, !tbaa !114
  %23 = load i32, ptr %4, align 4, !tbaa !124
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  store ptr %15, ptr %25, align 8, !tbaa !82
  br label %26

26:                                               ; preds = %10, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  invoke void @_ZN11xercesc_2_716ValueHashTableOfItE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
          to label %2 unwind label %18

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !112
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  %6 = load ptr, ptr %3, align 8, !tbaa !122
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #12
          to label %9 unwind label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !116
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !122
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %2, %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #11
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721GeneralAttributeCheck15checkAttributesEPKNS_10DOMElementEtPNS_14TraverseSchemaEbPNS_13ValueVectorOfIPNS_7DOMNodeEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !125 {
  %7 = alloca [34 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = icmp eq ptr %5, null
  br i1 %9, label %11, label %10, !prof !126

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  br label %11

11:                                               ; preds = %10, %6
  %12 = icmp eq ptr %1, null
  %13 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8
  %14 = icmp eq ptr %13, null
  %15 = select i1 %12, i1 true, i1 %14
  %16 = icmp ugt i16 %2, 49
  %17 = or i1 %16, %15
  br i1 %17, label %149, label %18, !prof !127

18:                                               ; preds = %11
  %19 = load ptr, ptr %1, align 8, !tbaa !122
  %20 = getelementptr inbounds ptr, ptr %19, i64 24
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %23 = load ptr, ptr %1, align 8, !tbaa !122
  %24 = getelementptr inbounds ptr, ptr %23, i64 22
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %27 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, ptr noundef %26) #12
  br i1 %27, label %29, label %28, !prof !128

28:                                               ; preds = %18
  tail call void @_ZN11xercesc_2_714TraverseSchema17reportSchemaErrorEPKNS_10DOMElementEPKtiS5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %3, ptr noundef nonnull %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, i32 noundef 166, ptr noundef %22, ptr noundef null, ptr noundef null, ptr noundef null) #12
  br label %29

29:                                               ; preds = %28, %18
  %30 = select i1 %4, ptr @_ZN11xercesc_2_7L8fgGlobalE, ptr @_ZN11xercesc_2_7L7fgLocalE
  %31 = load ptr, ptr %1, align 8, !tbaa !122
  %32 = getelementptr inbounds ptr, ptr %31, i64 11
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %35 = load ptr, ptr %34, align 8, !tbaa !122
  %36 = getelementptr inbounds ptr, ptr %35, i64 5
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef i64 %37(ptr noundef nonnull align 8 dereferenceable(8) %34) #12
  %39 = trunc i64 %38 to i32
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(34) %7, i8 0, i64 34, i1 false)
  %40 = icmp sgt i32 %39, 0
  %41 = zext nneg i16 %2 to i64
  br i1 %40, label %43, label %42, !prof !129

42:                                               ; preds = %127, %29
  br label %133

43:                                               ; preds = %29
  %44 = and i64 %38, 4294967295
  br label %45

45:                                               ; preds = %43, %127
  %46 = phi i64 [ 0, %43 ], [ %128, %127 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  %47 = load ptr, ptr %34, align 8, !tbaa !122
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  %50 = call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %46) #12
  store ptr %50, ptr %8, align 8, !tbaa !82
  %51 = load ptr, ptr %50, align 8, !tbaa !122
  %52 = getelementptr inbounds ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8
  %54 = call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %50) #12
  %55 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %54, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #12
  br i1 %55, label %127, label %56, !prof !130

56:                                               ; preds = %45
  %57 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_(ptr noundef %54, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE) #12
  br i1 %57, label %127, label %58, !prof !131

58:                                               ; preds = %56
  %59 = load i16, ptr %54, align 2, !tbaa !110
  switch i16 %59, label %68 [
    i16 88, label %60
    i16 120, label %60
  ], !prof !132

60:                                               ; preds = %58, %58
  %61 = getelementptr inbounds i16, ptr %54, i64 1
  %62 = load i16, ptr %61, align 2, !tbaa !110
  switch i16 %62, label %68 [
    i16 77, label %63
    i16 109, label %63
  ], !prof !133

63:                                               ; preds = %60, %60
  %64 = getelementptr inbounds i16, ptr %54, i64 2
  %65 = load i16, ptr %64, align 2, !tbaa !110
  switch i16 %65, label %68 [
    i16 76, label %66
    i16 108, label %66
  ]

66:                                               ; preds = %63, %63
  br i1 %9, label %127, label %67

67:                                               ; preds = %66
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  br label %127

68:                                               ; preds = %63, %60, %58
  %69 = load ptr, ptr %8, align 8, !tbaa !82
  %70 = load ptr, ptr %69, align 8, !tbaa !122
  %71 = getelementptr inbounds ptr, ptr %70, i64 22
  %72 = load ptr, ptr %71, align 8
  %73 = call noundef ptr %72(ptr noundef nonnull align 8 dereferenceable(8) %69) #12
  %74 = icmp eq ptr %73, null
  br i1 %74, label %87, label %75, !prof !134

75:                                               ; preds = %68
  %76 = load i16, ptr %73, align 2, !tbaa !110
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %75
  %79 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %73, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE) #12
  br i1 %79, label %84, label %80

80:                                               ; preds = %78
  %81 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %22, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgELT_APPINFOE) #12
  br i1 %81, label %84, label %82

82:                                               ; preds = %80
  %83 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %22, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols19fgELT_DOCUMENTATIONE) #12
  br i1 %83, label %84, label %85

84:                                               ; preds = %82, %80, %78
  call void @_ZN11xercesc_2_714TraverseSchema17reportSchemaErrorEPKNS_10DOMElementEPKtiS5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %3, ptr noundef nonnull %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, i32 noundef 95, ptr noundef nonnull %54, ptr noundef nonnull %30, ptr noundef %22, ptr noundef null) #12
  br label %127

85:                                               ; preds = %82
  br i1 %9, label %127, label %86

86:                                               ; preds = %85
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  br label %127

87:                                               ; preds = %75, %68
  %88 = load ptr, ptr %8, align 8, !tbaa !82
  %89 = load ptr, ptr %88, align 8, !tbaa !122
  %90 = getelementptr inbounds ptr, ptr %89, i64 24
  %91 = load ptr, ptr %90, align 8
  %92 = call noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(8) %88) #12
  %93 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !82
  %94 = load ptr, ptr %0, align 8, !tbaa !87
  %95 = invoke noundef nonnull align 2 dereferenceable(2) ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %93, ptr noundef %92, ptr noundef %94) #12
          to label %110 unwind label %96

96:                                               ; preds = %87
  %97 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %98 = extractvalue { ptr, i32 } %97, 0
  %99 = extractvalue { ptr, i32 } %97, 1
  %100 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #10
  %101 = icmp eq i32 %99, %100
  %102 = call ptr @__cxa_begin_catch(ptr %98) #10
  br i1 %101, label %103, label %104

103:                                              ; preds = %96
  invoke void @__cxa_rethrow() #14
          to label %153 unwind label %108

104:                                              ; preds = %96
  invoke void @_ZN11xercesc_2_714TraverseSchema17reportSchemaErrorEPKNS_10DOMElementEPKtiS5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %3, ptr noundef nonnull %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, i32 noundef 95, ptr noundef %92, ptr noundef nonnull %30, ptr noundef %22, ptr noundef null) #12
          to label %105 unwind label %106

105:                                              ; preds = %104
  call void @__cxa_end_catch()
  br label %127

106:                                              ; preds = %104
  %107 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %130 unwind label %150

108:                                              ; preds = %103
  %109 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %130 unwind label %150

110:                                              ; preds = %87
  %111 = load i16, ptr %95, align 2, !tbaa !110
  %112 = zext i16 %111 to i64
  %113 = getelementptr inbounds [50 x [34 x i16]], ptr @_ZN11xercesc_2_721GeneralAttributeCheck14fgElemAttTableE, i64 0, i64 %41, i64 %112
  %114 = load i16, ptr %113, align 2, !tbaa !110
  %115 = and i16 %114, 3
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %126, label %117, !prof !135

117:                                              ; preds = %110
  %118 = getelementptr inbounds [34 x i8], ptr %7, i64 0, i64 %112
  store i8 1, ptr %118, align 1, !tbaa !136
  %119 = load ptr, ptr %8, align 8, !tbaa !82
  %120 = load ptr, ptr %119, align 8, !tbaa !122
  %121 = getelementptr inbounds ptr, ptr %120, i64 3
  %122 = load ptr, ptr %121, align 8
  %123 = call noundef ptr %122(ptr noundef nonnull align 8 dereferenceable(8) %119) #12
  %124 = load i16, ptr %113, align 2, !tbaa !110
  %125 = and i16 %124, 8188
  call void @_ZN11xercesc_2_721GeneralAttributeCheck8validateEPKNS_10DOMElementEPKtS5_sPNS_14TraverseSchemaE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %1, ptr noundef %92, ptr noundef %123, i16 noundef signext %125, ptr noundef %3) #12
  br label %127

126:                                              ; preds = %110
  call void @_ZN11xercesc_2_714TraverseSchema17reportSchemaErrorEPKNS_10DOMElementEPKtiS5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %3, ptr noundef nonnull %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, i32 noundef 95, ptr noundef %92, ptr noundef nonnull %30, ptr noundef %22, ptr noundef null) #12
  br label %127

127:                                              ; preds = %105, %85, %86, %84, %117, %126, %66, %67, %45, %56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  %128 = add nuw nsw i64 %46, 1
  %129 = icmp eq i64 %128, %44
  br i1 %129, label %42, label %45, !prof !137, !llvm.loop !138

130:                                              ; preds = %108, %106
  %131 = phi { ptr, i32 } [ %107, %106 ], [ %109, %108 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %7) #10
  resume { ptr, i32 } %131

132:                                              ; preds = %146
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %7) #10
  br label %149

133:                                              ; preds = %42, %146
  %134 = phi i64 [ %147, %146 ], [ 0, %42 ]
  %135 = getelementptr inbounds [50 x [34 x i16]], ptr @_ZN11xercesc_2_721GeneralAttributeCheck14fgElemAttTableE, i64 0, i64 %41, i64 %134
  %136 = load i16, ptr %135, align 2, !tbaa !110
  %137 = and i16 %136, 1
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %146, label %139, !prof !140

139:                                              ; preds = %133
  %140 = getelementptr inbounds [34 x i8], ptr %7, i64 0, i64 %134
  %141 = load i8, ptr %140, align 1, !tbaa !136
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %146, !prof !141

143:                                              ; preds = %139
  %144 = getelementptr inbounds [34 x ptr], ptr @_ZN11xercesc_2_721GeneralAttributeCheck9fAttNamesE, i64 0, i64 %134
  %145 = load ptr, ptr %144, align 8, !tbaa !82
  call void @_ZN11xercesc_2_714TraverseSchema17reportSchemaErrorEPKNS_10DOMElementEPKtiS5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %3, ptr noundef nonnull %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, i32 noundef 94, ptr noundef %145, ptr noundef nonnull %30, ptr noundef %22, ptr noundef null) #12
  br label %146

146:                                              ; preds = %133, %139, %143
  %147 = add nuw nsw i64 %134, 1
  %148 = icmp eq i64 %147, 34
  br i1 %148, label %132, label %133, !prof !142, !llvm.loop !143

149:                                              ; preds = %11, %132
  ret void

150:                                              ; preds = %108, %106
  %151 = landingpad { ptr, i32 }
          catch ptr null
  %152 = extractvalue { ptr, i32 } %151, 0
  call void @__clang_call_terminate(ptr %152) #11
  unreachable

153:                                              ; preds = %103
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !144 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !145
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !147 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !148

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !110
  %8 = load i16, ptr %1, align 2, !tbaa !110
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !149

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !150

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !110
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !151

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !152

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !110
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !153

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !154

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !110
  %28 = load i16, ptr %26, align 2, !tbaa !110
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !155, !llvm.loop !156

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714TraverseSchema17reportSchemaErrorEPKNS_10DOMElementEPKtiS5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !157 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #12
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef %0, ptr noundef %1, i32 noundef %3) #12
  %5 = icmp eq i32 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !125 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #12
  %3 = load ptr, ptr %1, align 8, !tbaa !82
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !158
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !145
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  store ptr %3, ptr %9, align 8, !tbaa !82
  %10 = add i32 %7, 1
  store i32 %10, ptr %6, align 4, !tbaa !145
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !159 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %5 = call noundef ptr @_ZN11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12, !prof !160

7:                                                ; preds = %3
  %8 = call ptr @__cxa_allocate_exception(i64 48) #10
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 50, ptr noundef %2) #12
          to label %9 unwind label %10

9:                                                ; preds = %7
  call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  resume { ptr, i32 } %11

12:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret ptr %5
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #8

declare void @__cxa_end_catch() local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721GeneralAttributeCheck8validateEPKNS_10DOMElementEPKtS5_sPNS_14TraverseSchemaE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4, ptr noundef %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %7 = getelementptr inbounds %"class.xercesc_2_7::TraverseSchema", ptr %5, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !162
  %9 = tail call noundef ptr @_ZNK11xercesc_2_710SchemaInfo20getValidationContextEv(ptr noundef nonnull align 8 dereferenceable(184) %8) #12
  %10 = getelementptr inbounds %"class.xercesc_2_7::GeneralAttributeCheck", ptr %0, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !99
  switch i16 %4, label %80 [
    i16 64, label %11
    i16 128, label %13
    i16 256, label %15
    i16 512, label %17
    i16 1024, label %21
    i16 2048, label %27
    i16 4096, label %33
    i16 16, label %44
    i16 8, label %39
    i16 4, label %40
    i16 32, label %41
  ], !prof !166

11:                                               ; preds = %6
  %12 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %3, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgATTVAL_QUALIFIEDE) #12
  br i1 %12, label %80, label %77, !prof !102

13:                                               ; preds = %6
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %3, ptr noundef nonnull @_ZN11xercesc_2_7L11fgUnboundedE) #12
  br i1 %14, label %80, label %44, !prof !167

15:                                               ; preds = %6
  %16 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %3, ptr noundef nonnull @_ZN11xercesc_2_7L10fgValueOneE) #12
  br i1 %16, label %80, label %79, !prof !168

17:                                               ; preds = %6
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %3, ptr noundef nonnull @_ZN11xercesc_2_7L11fgValueZeroE) #12
  br i1 %18, label %80, label %19

19:                                               ; preds = %17
  %20 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %3, ptr noundef nonnull @_ZN11xercesc_2_7L10fgValueOneE) #12
  br i1 %20, label %80, label %79, !prof !168

21:                                               ; preds = %6
  %22 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %3, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_SKIPE) #12
  br i1 %22, label %80, label %23

23:                                               ; preds = %21
  %24 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %3, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgATTVAL_LAXE) #12
  br i1 %24, label %80, label %25

25:                                               ; preds = %23
  %26 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %3, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgATTVAL_STRICTE) #12
  br i1 %26, label %80, label %79, !prof !168

27:                                               ; preds = %6
  %28 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %3, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols17fgATTVAL_OPTIONALE) #12
  br i1 %28, label %80, label %29, !prof !169

29:                                               ; preds = %27
  %30 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %3, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols19fgATTVAL_PROHIBITEDE) #12
  br i1 %30, label %80, label %31, !prof !169

31:                                               ; preds = %29
  %32 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %3, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols17fgATTVAL_REQUIREDE) #12
  br i1 %32, label %80, label %79, !prof !168

33:                                               ; preds = %6
  %34 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %3, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgWS_PRESERVEE) #12
  br i1 %34, label %80, label %35

35:                                               ; preds = %33
  %36 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %3, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgWS_REPLACEE) #12
  br i1 %36, label %80, label %37

37:                                               ; preds = %35
  %38 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %3, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgWS_COLLAPSEE) #12
  br i1 %38, label %80, label %79, !prof !168

39:                                               ; preds = %6
  br label %44

40:                                               ; preds = %6
  br label %44

41:                                               ; preds = %6
  %42 = icmp eq ptr %9, null
  %43 = getelementptr inbounds %"class.xercesc_2_7::GeneralAttributeCheck", ptr %0, i64 0, i32 2
  br i1 %42, label %80, label %50

44:                                               ; preds = %6, %13, %40, %39
  %45 = phi ptr [ @_ZN11xercesc_2_721GeneralAttributeCheck9fAnyURIDVE, %40 ], [ @_ZN11xercesc_2_721GeneralAttributeCheck12fNonNegIntDVE, %39 ], [ @_ZN11xercesc_2_721GeneralAttributeCheck12fNonNegIntDVE, %13 ], [ @_ZN11xercesc_2_721GeneralAttributeCheck10fBooleanDVE, %6 ]
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %80, label %48, !prof !170

48:                                               ; preds = %44
  %49 = load ptr, ptr %10, align 8, !tbaa !99
  br label %50

50:                                               ; preds = %48, %41
  %51 = phi ptr [ %49, %48 ], [ %9, %41 ]
  %52 = phi ptr [ %46, %48 ], [ %43, %41 ]
  %53 = load ptr, ptr %0, align 8, !tbaa !87
  %54 = load ptr, ptr %52, align 8, !tbaa !122
  %55 = getelementptr inbounds ptr, ptr %54, i64 8
  %56 = load ptr, ptr %55, align 8
  invoke void %56(ptr noundef nonnull align 8 dereferenceable(104) %52, ptr noundef %3, ptr noundef %51, ptr noundef %53) #12
          to label %80 unwind label %57

57:                                               ; preds = %50
  %58 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  %60 = extractvalue { ptr, i32 } %58, 1
  %61 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #10
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = tail call ptr @__cxa_begin_catch(ptr %59) #10
  %65 = tail call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %64) #12
  invoke void @_ZN11xercesc_2_714TraverseSchema17reportSchemaErrorEPKNS_10DOMElementEPKtiS5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %5, ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, i32 noundef 156, ptr noundef %65, ptr noundef null, ptr noundef null, ptr noundef null) #12
          to label %66 unwind label %75

66:                                               ; preds = %63
  tail call void @__cxa_end_catch()
  br label %80

67:                                               ; preds = %57
  %68 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #10
  %69 = icmp eq i32 %60, %68
  %70 = tail call ptr @__cxa_begin_catch(ptr %59) #10
  br i1 %69, label %71, label %72

71:                                               ; preds = %67
  invoke void @__cxa_rethrow() #14
          to label %86 unwind label %73

72:                                               ; preds = %67
  tail call void @__cxa_end_catch()
  br label %79

73:                                               ; preds = %71
  %74 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %81 unwind label %83

75:                                               ; preds = %63
  %76 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %81 unwind label %83

77:                                               ; preds = %11
  %78 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %3, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols20fgATTVAL_UNQUALIFIEDE) #12
  br i1 %78, label %80, label %79, !prof !168

79:                                               ; preds = %15, %19, %25, %31, %37, %72, %77
  tail call void @_ZN11xercesc_2_714TraverseSchema17reportSchemaErrorEPKNS_10DOMElementEPKtiS5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %5, ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, i32 noundef 82, ptr noundef %3, ptr noundef %2, ptr noundef null, ptr noundef null) #12
  br label %80

80:                                               ; preds = %15, %19, %25, %31, %37, %41, %13, %6, %33, %35, %27, %29, %21, %23, %17, %11, %44, %66, %50, %79, %77
  ret void

81:                                               ; preds = %75, %73
  %82 = phi { ptr, i32 } [ %74, %73 ], [ %76, %75 ]
  resume { ptr, i32 } %82

83:                                               ; preds = %75, %73
  %84 = landingpad { ptr, i32 }
          catch ptr null
  %85 = extractvalue { ptr, i32 } %84, 0
  tail call void @__clang_call_terminate(ptr %85) #11
  unreachable

86:                                               ; preds = %71
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710SchemaInfo20getValidationContextEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #6 comdat align 2 !prof !161 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaInfo", ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !176 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = call noundef ptr @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #12
  %5 = icmp ne ptr %4, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !177 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !178

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !179
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !176 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !181
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !183
  %8 = load ptr, ptr %0, align 8, !tbaa !184
  %9 = load ptr, ptr %5, align 8, !tbaa !122
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #12
  store i32 %11, ptr %2, align 4, !tbaa !124
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !185
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !186

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !181
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !187
  %23 = load ptr, ptr %20, align 8, !tbaa !122
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #12
  br i1 %26, label %31, label %27, !prof !188

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !82
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !189, !llvm.loop !190

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !191 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !181
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !183
  %8 = load ptr, ptr %0, align 8, !tbaa !184
  %9 = load ptr, ptr %5, align 8, !tbaa !122
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #12
  store i32 %11, ptr %2, align 4, !tbaa !124
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !185
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !192

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !181
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !187
  %23 = load ptr, ptr %20, align 8, !tbaa !122
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #12
  br i1 %26, label %31, label %27, !prof !193

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !82
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !194, !llvm.loop !195

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #6 comdat align 2 !prof !196 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !197

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !110
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !198

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !110
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !199, !llvm.loop !200

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
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !201 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !115
  %8 = load ptr, ptr %0, align 8, !tbaa !112
  %9 = load ptr, ptr %5, align 8, !tbaa !122
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #12
  store i32 %11, ptr %2, align 4, !tbaa !124
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !202

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !116
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !121
  %23 = load ptr, ptr %20, align 8, !tbaa !122
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #12
  br i1 %26, label %31, label %27, !prof !203

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !82
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !204, !llvm.loop !205

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !122
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #12
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !81 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !206
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !122
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !207

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %6 = load ptr, ptr %0, align 8, !tbaa !112
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 48, ptr noundef %6) #12
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #10
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !112
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !115
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !122
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #12
  %20 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !114
  %21 = load i32, ptr %12, align 8, !tbaa !115
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !208

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !114
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !82
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !209, !llvm.loop !210
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !122
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #12
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !81 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !206
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !122
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724ValueHashTableBucketElemItEC2EPvRKtPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef %3) unnamed_addr #6 comdat align 2 !prof !117 {
  %5 = load i16, ptr %2, align 2, !tbaa !110
  store i16 %5, ptr %0, align 8, !tbaa !119
  %6 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %6, align 8, !tbaa !211
  %7 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !111 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !115
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !208

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  br label %8

7:                                                ; preds = %27, %1
  ret void

8:                                                ; preds = %5, %27
  %9 = phi i32 [ %3, %5 ], [ %28, %27 ]
  %10 = phi i64 [ 0, %5 ], [ %31, %27 ]
  %11 = load ptr, ptr %6, align 8, !tbaa !114
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !82
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15, !prof !212

15:                                               ; preds = %8, %15
  %16 = phi ptr [ %18, %15 ], [ %13, %8 ]
  %17 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !211
  %19 = load ptr, ptr %0, align 8, !tbaa !112
  %20 = load ptr, ptr %19, align 8, !tbaa !122
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %16) #12
  %23 = icmp eq ptr %18, null
  br i1 %23, label %24, label %15, !prof !213, !llvm.loop !214

24:                                               ; preds = %15
  %25 = load ptr, ptr %6, align 8, !tbaa !114
  %26 = load i32, ptr %2, align 8, !tbaa !115
  br label %27

27:                                               ; preds = %24, %8
  %28 = phi i32 [ %26, %24 ], [ %9, %8 ]
  %29 = phi ptr [ %25, %24 ], [ %11, %8 ]
  %30 = getelementptr inbounds ptr, ptr %29, i64 %10
  store ptr null, ptr %30, align 8, !tbaa !82
  %31 = add nuw nsw i64 %10, 1
  %32 = zext i32 %28 to i64
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %8, label %7, !prof !215, !llvm.loop !216
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !125 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !145
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !217
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !126

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !218
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !122
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #12
  %22 = load i32, ptr %3, align 4, !tbaa !145
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !218
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !158
  %31 = load ptr, ptr %28, align 8, !tbaa !122
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30) #12
  store ptr %21, ptr %29, align 8, !tbaa !158
  store i32 %13, ptr %6, align 8, !tbaa !217
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !158
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !82
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !82
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !219

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_GeneralAttributeCheck.cpp() #2 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!80}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!35 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheckC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!36 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheckC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_719IDDatatypeValidatorC1EPNS_13MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheckC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_721GeneralAttributeCheck11mapElementsEv, i64 1}
!38 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck11mapElementsEv, ptr @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE, i64 1}
!39 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck11mapElementsEv, ptr @_ZN11xercesc_2_712XMLMutexLockD1Ev, i64 1}
!40 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheckD2Ev, ptr @_ZN11xercesc_2_719IDDatatypeValidatorD1Ev, i64 1}
!41 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck15setUpValidatorsEv, ptr @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE, i64 1}
!42 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck15setUpValidatorsEv, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv, i64 1}
!43 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck15setUpValidatorsEv, ptr @_ZNK11xercesc_2_724DatatypeValidatorFactory20getDatatypeValidatorEPKt, i64 3}
!44 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck15setUpValidatorsEv, ptr @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev, i64 1}
!45 = !{ptr @_ZNK11xercesc_2_724DatatypeValidatorFactory20getDatatypeValidatorEPKt, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv, i64 178}
!46 = !{ptr @_ZNK11xercesc_2_724DatatypeValidatorFactory20getDatatypeValidatorEPKt, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv, i64 104}
!47 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck13mapAttributesEv, ptr @_ZN11xercesc_2_77XMemorynwEm, i64 2}
!48 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck13mapAttributesEv, ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, i64 2}
!49 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck13mapAttributesEv, ptr @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt, i64 46}
!50 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck21reinitGeneralAttCheckEv, ptr @_ZN11xercesc_2_78XMLMutexD1Ev, i64 1}
!51 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck21reinitGeneralAttCheckEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!52 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck21reinitGeneralAttCheckEv, ptr @_ZN11xercesc_2_716ValueHashTableOfItED2Ev, i64 2}
!53 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 2}
!54 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj, i64 2}
!55 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 2}
!56 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 2}
!57 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt, ptr @_ZN11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj, i64 46}
!58 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt, ptr @_ZN11xercesc_2_724ValueHashTableBucketElemItEC2EPvRKtPS1_, i64 45}
!59 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItED2Ev, ptr @_ZN11xercesc_2_716ValueHashTableOfItE9removeAllEv, i64 2}
!60 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck15checkAttributesEPKNS_10DOMElementEtPNS_14TraverseSchemaEbPNS_13ValueVectorOfIPNS_7DOMNodeEEE, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE17removeAllElementsEv, i64 549}
!61 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck15checkAttributesEPKNS_10DOMElementEtPNS_14TraverseSchemaEbPNS_13ValueVectorOfIPNS_7DOMNodeEEE, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 1194}
!62 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck15checkAttributesEPKNS_10DOMElementEtPNS_14TraverseSchemaEbPNS_13ValueVectorOfIPNS_7DOMNodeEEE, ptr @_ZN11xercesc_2_714TraverseSchema17reportSchemaErrorEPKNS_10DOMElementEPKtiS5_S5_S5_S5_, i64 4}
!63 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck15checkAttributesEPKNS_10DOMElementEtPNS_14TraverseSchemaEbPNS_13ValueVectorOfIPNS_7DOMNodeEEE, ptr @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_, i64 644}
!64 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck15checkAttributesEPKNS_10DOMElementEtPNS_14TraverseSchemaEbPNS_13ValueVectorOfIPNS_7DOMNodeEEE, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE10addElementERKS2_, i64 1}
!65 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck15checkAttributesEPKNS_10DOMElementEtPNS_14TraverseSchemaEbPNS_13ValueVectorOfIPNS_7DOMNodeEEE, ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE, i64 640}
!66 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck15checkAttributesEPKNS_10DOMElementEtPNS_14TraverseSchemaEbPNS_13ValueVectorOfIPNS_7DOMNodeEEE, ptr @_ZN11xercesc_2_721GeneralAttributeCheck8validateEPKNS_10DOMElementEPKtS5_sPNS_14TraverseSchemaE, i64 639}
!67 = !{ptr @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 503282}
!68 = !{ptr @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_, ptr @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j, i64 503282}
!69 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE10addElementERKS2_, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj, i64 550}
!70 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716ValueHashTableOfItE14findBucketElemEPKvRj, i64 917}
!71 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!72 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!73 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck8validateEPKNS_10DOMElementEPKtS5_sPNS_14TraverseSchemaE, ptr @_ZNK11xercesc_2_710SchemaInfo20getValidationContextEv, i64 648}
!74 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck8validateEPKNS_10DOMElementEPKtS5_sPNS_14TraverseSchemaE, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 636}
!75 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck8validateEPKNS_10DOMElementEPKtS5_sPNS_14TraverseSchemaE, ptr @_ZN11xercesc_2_714TraverseSchema17reportSchemaErrorEPKNS_10DOMElementEPKtiS5_S5_S5_S5_, i64 1}
!76 = !{ptr @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj, i64 181}
!77 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj, i64 108}
!78 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj, ptr @__cxa_allocate_exception, i64 1}
!79 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!80 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!81 = !{!"function_entry_count", i64 0}
!82 = !{!83, !83, i64 0}
!83 = !{!"any pointer", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C++ TBAA"}
!86 = !{!"function_entry_count", i64 1}
!87 = !{!88, !83, i64 0}
!88 = !{!"_ZTSN11xercesc_2_721GeneralAttributeCheckE", !83, i64 0, !83, i64 8, !89, i64 16}
!89 = !{!"_ZTSN11xercesc_2_719IDDatatypeValidatorE", !90, i64 0}
!90 = !{!"_ZTSN11xercesc_2_723StringDatatypeValidatorE", !91, i64 0}
!91 = !{!"_ZTSN11xercesc_2_723AbstractStringValidatorE", !92, i64 0, !96, i64 104, !96, i64 108, !96, i64 112, !94, i64 116, !83, i64 120}
!92 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !93, i64 0, !94, i64 8, !94, i64 9, !94, i64 10, !94, i64 11, !95, i64 12, !96, i64 16, !96, i64 20, !96, i64 24, !97, i64 28, !98, i64 32, !83, i64 40, !83, i64 48, !83, i64 56, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !83, i64 96}
!93 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!94 = !{!"bool", !84, i64 0}
!95 = !{!"short", !84, i64 0}
!96 = !{!"int", !84, i64 0}
!97 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !84, i64 0}
!98 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !84, i64 0}
!99 = !{!88, !83, i64 8}
!100 = !{!"function_entry_count", i64 5836268}
!101 = !{!"branch_weights", i32 1, i32 2}
!102 = !{!"branch_weights", i32 2, i32 1}
!103 = !{!"function_entry_count", i64 128}
!104 = !{!"branch_weights", i32 1, i32 129}
!105 = !{!"branch_weights", i32 75, i32 55}
!106 = !{!107, !83, i64 8}
!107 = !{!"_ZTSN11xercesc_2_724DatatypeValidatorFactoryE", !93, i64 0, !83, i64 8, !83, i64 16}
!108 = !{!"branch_weights", i32 2, i32 54}
!109 = !{!"branch_weights", i32 33, i32 22}
!110 = !{!95, !95, i64 0}
!111 = !{!"function_entry_count", i64 2}
!112 = !{!113, !83, i64 0}
!113 = !{!"_ZTSN11xercesc_2_716ValueHashTableOfItEE", !83, i64 0, !83, i64 8, !96, i64 16, !83, i64 24}
!114 = !{!113, !83, i64 8}
!115 = !{!113, !96, i64 16}
!116 = !{!113, !83, i64 24}
!117 = !{!"function_entry_count", i64 46}
!118 = !{!"branch_weights", i32 47, i32 1}
!119 = !{!120, !95, i64 0}
!120 = !{!"_ZTSN11xercesc_2_724ValueHashTableBucketElemItEE", !95, i64 0, !83, i64 8, !83, i64 16}
!121 = !{!120, !83, i64 16}
!122 = !{!123, !123, i64 0}
!123 = !{!"vtable pointer", !85, i64 0}
!124 = !{!96, !96, i64 0}
!125 = !{!"function_entry_count", i64 550}
!126 = !{!"branch_weights", i32 1, i32 551}
!127 = !{!"branch_weights", i32 912457, i32 167284151}
!128 = !{!"branch_weights", i32 551, i32 1}
!129 = !{!"branch_weights", i32 550, i32 1}
!130 = !{!"branch_weights", i32 2, i32 650}
!131 = !{!"branch_weights", i32 2, i32 649}
!132 = !{!"branch_weights", i32 400433, i32 650, i32 21417}
!133 = !{!"branch_weights", i32 1089, i32 34, i32 33}
!134 = !{!"branch_weights", i32 649, i32 1}
!135 = !{!"branch_weights", i32 1, i32 649}
!136 = !{!84, !84, i64 0}
!137 = !{!"branch_weights", i32 550, i32 101}
!138 = distinct !{!138, !139}
!139 = !{!"llvm.loop.mustprogress"}
!140 = !{!"branch_weights", i32 18463, i32 239}
!141 = !{!"branch_weights", i32 1, i32 239}
!142 = !{!"branch_weights", i32 551, i32 18150}
!143 = distinct !{!143, !139}
!144 = !{!"function_entry_count", i64 552}
!145 = !{!146, !96, i64 4}
!146 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEEE", !94, i64 0, !96, i64 4, !96, i64 8, !83, i64 16, !83, i64 24}
!147 = !{!"function_entry_count", i64 1231717351}
!148 = !{!"branch_weights", i32 621, i32 -1469098093}
!149 = !{!"branch_weights", i32 408901017, i32 1}
!150 = !{!"branch_weights", i32 267, i32 4}
!151 = !{!"branch_weights", i32 1, i32 4}
!152 = !{!"branch_weights", i32 156, i32 112}
!153 = !{!"branch_weights", i32 1, i32 112}
!154 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!155 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!156 = distinct !{!156, !139}
!157 = !{!"function_entry_count", i64 503282}
!158 = !{!146, !83, i64 16}
!159 = !{!"function_entry_count", i64 917}
!160 = !{!"branch_weights", i32 1, i32 918}
!161 = !{!"function_entry_count", i64 648}
!162 = !{!163, !83, i64 200}
!163 = !{!"_ZTSN11xercesc_2_714TraverseSchemaE", !94, i64 0, !96, i64 4, !96, i64 8, !96, i64 12, !96, i64 16, !96, i64 20, !96, i64 24, !83, i64 32, !83, i64 40, !83, i64 48, !83, i64 56, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !164, i64 96, !83, i64 136, !83, i64 144, !83, i64 152, !83, i64 160, !83, i64 168, !83, i64 176, !83, i64 184, !83, i64 192, !83, i64 200, !83, i64 208, !83, i64 216, !83, i64 224, !83, i64 232, !83, i64 240, !83, i64 248, !83, i64 256, !83, i64 264, !83, i64 272, !83, i64 280, !83, i64 288, !83, i64 296, !83, i64 304, !83, i64 312, !83, i64 320, !83, i64 328, !83, i64 336, !83, i64 344, !165, i64 352, !83, i64 376, !83, i64 384, !83, i64 392, !83, i64 400, !88, i64 408}
!164 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !96, i64 0, !96, i64 4, !96, i64 8, !94, i64 12, !83, i64 16, !83, i64 24, !83, i64 32}
!165 = !{!"_ZTSN11xercesc_2_716XSDErrorReporterE", !94, i64 8, !83, i64 16}
!166 = !{!"branch_weights", i32 1, i32 2, i32 14, i32 1, i32 1, i32 1, i32 12, i32 1, i32 2, i32 20, i32 1, i32 1}
!167 = !{!"branch_weights", i32 14, i32 1}
!168 = !{!"branch_weights", i32 2132875913, i32 14607735}
!169 = !{!"branch_weights", i32 1, i32 12}
!170 = !{!"branch_weights", i32 2038326415, i32 109157233}
!171 = !{!172, !83, i64 168}
!172 = !{!"_ZTSN11xercesc_2_710SchemaInfoE", !94, i64 0, !94, i64 1, !95, i64 2, !96, i64 4, !96, i64 8, !96, i64 12, !96, i64 16, !96, i64 20, !83, i64 24, !83, i64 32, !83, i64 40, !83, i64 48, !83, i64 56, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !83, i64 96, !84, i64 104, !83, i64 160, !83, i64 168, !83, i64 176}
!173 = !{!174, !83, i64 32}
!174 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !175, i64 8, !83, i64 16, !96, i64 24, !83, i64 32, !83, i64 40}
!175 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !84, i64 0}
!176 = !{!"function_entry_count", i64 181}
!177 = !{!"function_entry_count", i64 108}
!178 = !{!"branch_weights", i32 1, i32 109}
!179 = !{!180, !83, i64 0}
!180 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_17DatatypeValidatorEEE", !83, i64 0, !83, i64 8, !83, i64 16}
!181 = !{!182, !83, i64 40}
!182 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEEE", !83, i64 0, !94, i64 8, !83, i64 16, !96, i64 24, !96, i64 28, !96, i64 32, !83, i64 40}
!183 = !{!182, !96, i64 24}
!184 = !{!182, !83, i64 0}
!185 = !{!182, !83, i64 16}
!186 = !{!"branch_weights", i32 1, i32 151}
!187 = !{!180, !83, i64 16}
!188 = !{!"branch_weights", i32 107, i32 43}
!189 = !{!"branch_weights", i32 151, i32 147}
!190 = distinct !{!190, !139}
!191 = !{!"function_entry_count", i64 170}
!192 = !{!"branch_weights", i32 1, i32 251}
!193 = !{!"branch_weights", i32 109, i32 30}
!194 = !{!"branch_weights", i32 251, i32 301}
!195 = distinct !{!195, !139}
!196 = !{!"function_entry_count", i64 2453164456}
!197 = !{!"branch_weights", i32 1, i32 -1841802839}
!198 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!199 = !{!"branch_weights", i32 408669070, i32 -279908794}
!200 = distinct !{!200, !139}
!201 = !{!"function_entry_count", i64 963}
!202 = !{!"branch_weights", i32 1, i32 187}
!203 = !{!"branch_weights", i32 918, i32 335}
!204 = !{!"branch_weights", i32 187, i32 4821}
!205 = distinct !{!205, !139}
!206 = !{!174, !83, i64 40}
!207 = !{!"branch_weights", i32 1, i32 3}
!208 = !{!"branch_weights", i32 1, i32 191}
!209 = !{!"branch_weights", i32 191, i32 2881}
!210 = distinct !{!210, !139}
!211 = !{!120, !83, i64 8}
!212 = !{!"branch_weights", i32 1, i32 47}
!213 = !{!"branch_weights", i32 47, i32 0}
!214 = distinct !{!214, !139}
!215 = !{!"branch_weights", i32 2881, i32 191}
!216 = distinct !{!216, !139}
!217 = !{!146, !96, i64 8}
!218 = !{!146, !83, i64 24}
!219 = distinct !{!219, !139}

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

$_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItED2Ev = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

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
@_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L8fgGlobalE = internal constant [7 x i16] [i16 103, i16 108, i16 111, i16 98, i16 97, i16 108, i16 0], align 2
@_ZN11xercesc_2_7L7fgLocalE = internal constant [6 x i16] [i16 108, i16 111, i16 99, i16 97, i16 108, i16 0], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgELT_APPINFOE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols19fgELT_DOCUMENTATIONE = external local_unnamed_addr constant [0 x i16], align 2
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_721GeneralAttributeCheck9fAttNamesE = dso_local local_unnamed_addr global [34 x ptr] [ptr @_ZN11xercesc_2_713SchemaSymbols14fgATT_ABSTRACTE, ptr @_ZN11xercesc_2_713SchemaSymbols26fgATT_ATTRIBUTEFORMDEFAULTE, ptr @_ZN11xercesc_2_713SchemaSymbols10fgATT_BASEE, ptr @_ZN11xercesc_2_713SchemaSymbols11fgATT_BLOCKE, ptr @_ZN11xercesc_2_713SchemaSymbols18fgATT_BLOCKDEFAULTE, ptr @_ZN11xercesc_2_713SchemaSymbols13fgATT_DEFAULTE, ptr @_ZN11xercesc_2_713SchemaSymbols24fgATT_ELEMENTFORMDEFAULTE, ptr @_ZN11xercesc_2_713SchemaSymbols11fgATT_FINALE, ptr @_ZN11xercesc_2_713SchemaSymbols18fgATT_FINALDEFAULTE, ptr @_ZN11xercesc_2_713SchemaSymbols11fgATT_FIXEDE, ptr @_ZN11xercesc_2_713SchemaSymbols10fgATT_FORME, ptr @_ZN11xercesc_2_713SchemaSymbols8fgATT_IDE, ptr @_ZN11xercesc_2_713SchemaSymbols14fgATT_ITEMTYPEE, ptr @_ZN11xercesc_2_713SchemaSymbols15fgATT_MAXOCCURSE, ptr @_ZN11xercesc_2_713SchemaSymbols17fgATT_MEMBERTYPESE, ptr @_ZN11xercesc_2_713SchemaSymbols15fgATT_MINOCCURSE, ptr @_ZN11xercesc_2_713SchemaSymbols11fgATT_MIXEDE, ptr @_ZN11xercesc_2_713SchemaSymbols10fgATT_NAMEE, ptr @_ZN11xercesc_2_713SchemaSymbols15fgATT_NAMESPACEE, ptr @_ZN11xercesc_2_713SchemaSymbols14fgATT_NILLABLEE, ptr @_ZN11xercesc_2_713SchemaSymbols21fgATT_PROCESSCONTENTSE, ptr @_ZN11xercesc_2_713SchemaSymbols12fgATT_PUBLICE, ptr @_ZN11xercesc_2_713SchemaSymbols9fgATT_REFE, ptr @_ZN11xercesc_2_713SchemaSymbols11fgATT_REFERE, ptr @_ZN11xercesc_2_713SchemaSymbols20fgATT_SCHEMALOCATIONE, ptr @_ZN11xercesc_2_713SchemaSymbols12fgATT_SOURCEE, ptr @_ZN11xercesc_2_713SchemaSymbols23fgATT_SUBSTITUTIONGROUPE, ptr @_ZN11xercesc_2_713SchemaSymbols12fgATT_SYSTEME, ptr @_ZN11xercesc_2_713SchemaSymbols21fgATT_TARGETNAMESPACEE, ptr @_ZN11xercesc_2_713SchemaSymbols10fgATT_TYPEE, ptr @_ZN11xercesc_2_713SchemaSymbols9fgATT_USEE, ptr @_ZN11xercesc_2_713SchemaSymbols11fgATT_VALUEE, ptr @_ZN11xercesc_2_713SchemaSymbols13fgATT_VERSIONE, ptr @_ZN11xercesc_2_713SchemaSymbols11fgATT_XPATHE], align 16
@_ZN11xercesc_2_713SchemaSymbols18fgATTVAL_QUALIFIEDE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols20fgATTVAL_UNQUALIFIEDE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_7L11fgUnboundedE = internal unnamed_addr constant [10 x i16] [i16 117, i16 110, i16 98, i16 111, i16 117, i16 110, i16 100, i16 101, i16 100, i16 0], align 16
@_ZN11xercesc_2_7L10fgValueOneE = internal unnamed_addr constant [2 x i16] [i16 49, i16 0], align 2
@_ZN11xercesc_2_7L11fgValueZeroE = internal unnamed_addr constant [2 x i16] [i16 48, i16 0], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_SKIPE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols12fgATTVAL_LAXE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols15fgATTVAL_STRICTE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols17fgATTVAL_OPTIONALE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols19fgATTVAL_PROHIBITEDE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols17fgATTVAL_REQUIREDE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgWS_PRESERVEE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols12fgWS_REPLACEE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgWS_COLLAPSEE = external local_unnamed_addr constant [0 x i16], align 2
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

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat !prof !64 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer29initializeGeneralAttrCheckMapEv() local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %1 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 144)
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_721GeneralAttributeCheckC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef %2)
          to label %3 unwind label %5

3:                                                ; preds = %0
  %4 = getelementptr inbounds %"class.xercesc_2_7::GeneralAttributeCheck", ptr %1, i64 0, i32 2
  tail call void @_ZN11xercesc_2_719IDDatatypeValidatorD1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #11
  ret void

5:                                                ; preds = %0
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %1) #11
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721GeneralAttributeCheckC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  store ptr %1, ptr %0, align 8, !tbaa !70
  %3 = getelementptr inbounds %"class.xercesc_2_7::GeneralAttributeCheck", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !82
  %4 = getelementptr inbounds %"class.xercesc_2_7::GeneralAttributeCheck", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_719IDDatatypeValidatorC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef %1)
  invoke void @_ZN11xercesc_2_721GeneralAttributeCheck11mapElementsEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
          to label %5 unwind label %6, !prof !83

5:                                                ; preds = %2
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_719IDDatatypeValidatorD1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #11
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_719IDDatatypeValidatorC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721GeneralAttributeCheck11mapElementsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(144) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %3 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %4 = load i1, ptr @_ZN11xercesc_2_7L31sGeneralAttCheckMutexRegisteredE, align 1
  br i1 %4, label %34, label %5, !prof !84

5:                                                ; preds = %1
  %6 = load ptr, ptr @_ZN11xercesc_2_7L21sGeneralAttCheckMutexE, align 8, !tbaa !65
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %24, !prof !83

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !65
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %9)
  %10 = load ptr, ptr @_ZN11xercesc_2_7L21sGeneralAttCheckMutexE, align 8, !tbaa !65
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !83

12:                                               ; preds = %8
  %13 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8)
          to label %14 unwind label %17, !prof !83

14:                                               ; preds = %12
  %15 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %15)
          to label %16 unwind label %19, !prof !83

16:                                               ; preds = %14
  store ptr %13, ptr @_ZN11xercesc_2_7L21sGeneralAttCheckMutexE, align 8, !tbaa !65
  br label %21

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %22

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %13) #11
  br label %22

21:                                               ; preds = %16, %8
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %24

22:                                               ; preds = %19, %17
  %23 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %35

24:                                               ; preds = %21, %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %25 = load ptr, ptr @_ZN11xercesc_2_7L21sGeneralAttCheckMutexE, align 8, !tbaa !65
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %25)
  %26 = load i1, ptr @_ZN11xercesc_2_7L31sGeneralAttCheckMutexRegisteredE, align 1
  br i1 %26, label %33, label %27, !prof !84

27:                                               ; preds = %24
  invoke void @_ZN11xercesc_2_721GeneralAttributeCheck15setUpValidatorsEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
          to label %28 unwind label %31, !prof !83

28:                                               ; preds = %27
  invoke void @_ZN11xercesc_2_721GeneralAttributeCheck13mapAttributesEv(ptr nonnull align 8 poison)
          to label %29 unwind label %31, !prof !83

29:                                               ; preds = %28
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L23sGeneralAttCheckCleanupE, ptr noundef nonnull @_ZN11xercesc_2_721GeneralAttributeCheck21reinitGeneralAttCheckEv)
          to label %30 unwind label %31, !prof !83

30:                                               ; preds = %29
  store i1 true, ptr @_ZN11xercesc_2_7L31sGeneralAttCheckMutexRegisteredE, align 1
  br label %33

31:                                               ; preds = %29, %28, %27
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %35

33:                                               ; preds = %30, %24
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %34

34:                                               ; preds = %33, %1
  ret void

35:                                               ; preds = %31, %22
  %36 = phi { ptr, i32 } [ %32, %31 ], [ %23, %22 ]
  resume { ptr, i32 } %36
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_719IDDatatypeValidatorD1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_721GeneralAttributeCheckD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::GeneralAttributeCheck", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_719IDDatatypeValidatorD1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721GeneralAttributeCheck15setUpValidatorsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(144) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = alloca %"class.xercesc_2_7::DatatypeValidatorFactory", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  %3 = load ptr, ptr %0, align 8, !tbaa !70
  call void @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3)
  invoke void @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %4 unwind label %59, !prof !83

4:                                                ; preds = %1
  %5 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !65
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !84

7:                                                ; preds = %4
  %8 = invoke noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols23fgDT_NONNEGATIVEINTEGERE)
          to label %9 unwind label %59, !prof !83

9:                                                ; preds = %7
  br i1 %8, label %17, label %10, !prof !83

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidatorFactory", ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = invoke noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols23fgDT_NONNEGATIVEINTEGERE)
          to label %16 unwind label %59

16:                                               ; preds = %14
  br i1 %15, label %17, label %21

17:                                               ; preds = %16, %9
  %18 = phi ptr [ @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, %9 ], [ %11, %16 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !65
  %20 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols23fgDT_NONNEGATIVEINTEGERE)
          to label %21 unwind label %59

21:                                               ; preds = %17, %16, %10
  %22 = phi ptr [ null, %10 ], [ null, %16 ], [ %20, %17 ]
  store ptr %22, ptr @_ZN11xercesc_2_721GeneralAttributeCheck12fNonNegIntDVE, align 8, !tbaa !65
  %23 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !65
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25, !prof !84

25:                                               ; preds = %21
  %26 = invoke noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgDT_BOOLEANE)
          to label %27 unwind label %59, !prof !83

27:                                               ; preds = %25
  br i1 %26, label %35, label %28, !prof !83

28:                                               ; preds = %27, %21
  %29 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidatorFactory", ptr %2, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !85
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = invoke noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgDT_BOOLEANE)
          to label %34 unwind label %59

34:                                               ; preds = %32
  br i1 %33, label %35, label %39

35:                                               ; preds = %34, %27
  %36 = phi ptr [ @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, %27 ], [ %29, %34 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !65
  %38 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %37, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgDT_BOOLEANE)
          to label %39 unwind label %59

39:                                               ; preds = %35, %28, %34
  %40 = phi ptr [ null, %34 ], [ null, %28 ], [ %38, %35 ]
  store ptr %40, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fBooleanDVE, align 8, !tbaa !65
  %41 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !65
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43, !prof !84

43:                                               ; preds = %39
  %44 = invoke noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %41, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgDT_ANYURIE)
          to label %45 unwind label %59, !prof !83

45:                                               ; preds = %43
  br i1 %44, label %53, label %46, !prof !83

46:                                               ; preds = %45, %39
  %47 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidatorFactory", ptr %2, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !85
  %49 = icmp eq ptr %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = invoke noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %48, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgDT_ANYURIE)
          to label %52 unwind label %59

52:                                               ; preds = %50
  br i1 %51, label %53, label %57

53:                                               ; preds = %52, %45
  %54 = phi ptr [ @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, %45 ], [ %47, %52 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !65
  %56 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %55, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgDT_ANYURIE)
          to label %57 unwind label %59

57:                                               ; preds = %53, %46, %52
  %58 = phi ptr [ null, %52 ], [ null, %46 ], [ %56, %53 ]
  store ptr %58, ptr @_ZN11xercesc_2_721GeneralAttributeCheck9fAnyURIDVE, align 8, !tbaa !65
  call void @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  ret void

59:                                               ; preds = %17, %35, %53, %50, %43, %32, %25, %14, %7, %1
  %60 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  resume { ptr, i32 } %60
}

declare void @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721GeneralAttributeCheck13mapAttributesEv(ptr nocapture nonnull readnone align 8 %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
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
  %48 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 32)
  %49 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %48, i32 noundef 34, ptr noundef %49)
          to label %50 unwind label %98, !prof !83

50:                                               ; preds = %1
  store ptr %48, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i16 0, ptr %2, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols14fgATT_ABSTRACTE, ptr noundef nonnull align 2 dereferenceable(2) %2)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  %51 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  store i16 1, ptr %3, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols26fgATT_ATTRIBUTEFORMDEFAULTE, ptr noundef nonnull align 2 dereferenceable(2) %3)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  %52 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i16 2, ptr %4, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgATT_BASEE, ptr noundef nonnull align 2 dereferenceable(2) %4)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  %53 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  store i16 3, ptr %5, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgATT_BLOCKE, ptr noundef nonnull align 2 dereferenceable(2) %5)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  %54 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #11
  store i16 4, ptr %6, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgATT_BLOCKDEFAULTE, ptr noundef nonnull align 2 dereferenceable(2) %6)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  %55 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  store i16 5, ptr %7, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %55, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgATT_DEFAULTE, ptr noundef nonnull align 2 dereferenceable(2) %7)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  %56 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #11
  store i16 6, ptr %8, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols24fgATT_ELEMENTFORMDEFAULTE, ptr noundef nonnull align 2 dereferenceable(2) %8)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #11
  %57 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #11
  store i16 7, ptr %9, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgATT_FINALE, ptr noundef nonnull align 2 dereferenceable(2) %9)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #11
  %58 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #11
  store i16 8, ptr %10, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %58, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgATT_FINALDEFAULTE, ptr noundef nonnull align 2 dereferenceable(2) %10)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #11
  %59 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #11
  store i16 9, ptr %11, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgATT_FIXEDE, ptr noundef nonnull align 2 dereferenceable(2) %11)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #11
  %60 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #11
  store i16 10, ptr %12, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %60, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgATT_FORME, ptr noundef nonnull align 2 dereferenceable(2) %12)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #11
  %61 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #11
  store i16 11, ptr %13, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols8fgATT_IDE, ptr noundef nonnull align 2 dereferenceable(2) %13)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #11
  %62 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #11
  store i16 12, ptr %14, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols14fgATT_ITEMTYPEE, ptr noundef nonnull align 2 dereferenceable(2) %14)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #11
  %63 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #11
  store i16 13, ptr %15, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgATT_MAXOCCURSE, ptr noundef nonnull align 2 dereferenceable(2) %15)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #11
  %64 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #11
  store i16 14, ptr %16, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols17fgATT_MEMBERTYPESE, ptr noundef nonnull align 2 dereferenceable(2) %16)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #11
  %65 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #11
  store i16 15, ptr %17, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgATT_MINOCCURSE, ptr noundef nonnull align 2 dereferenceable(2) %17)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #11
  %66 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #11
  store i16 16, ptr %18, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgATT_MIXEDE, ptr noundef nonnull align 2 dereferenceable(2) %18)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #11
  %67 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #11
  store i16 17, ptr %19, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgATT_NAMEE, ptr noundef nonnull align 2 dereferenceable(2) %19)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #11
  %68 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #11
  store i16 18, ptr %20, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgATT_NAMESPACEE, ptr noundef nonnull align 2 dereferenceable(2) %20)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #11
  %69 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #11
  store i16 19, ptr %21, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols14fgATT_NILLABLEE, ptr noundef nonnull align 2 dereferenceable(2) %21)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #11
  %70 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #11
  store i16 20, ptr %22, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgATT_PROCESSCONTENTSE, ptr noundef nonnull align 2 dereferenceable(2) %22)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #11
  %71 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #11
  store i16 21, ptr %23, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgATT_PUBLICE, ptr noundef nonnull align 2 dereferenceable(2) %23)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #11
  %72 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #11
  store i16 22, ptr %24, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgATT_REFE, ptr noundef nonnull align 2 dereferenceable(2) %24)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #11
  %73 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #11
  store i16 23, ptr %25, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgATT_REFERE, ptr noundef nonnull align 2 dereferenceable(2) %25)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #11
  %74 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #11
  store i16 24, ptr %26, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %74, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols20fgATT_SCHEMALOCATIONE, ptr noundef nonnull align 2 dereferenceable(2) %26)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #11
  %75 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #11
  store i16 25, ptr %27, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %75, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgATT_SOURCEE, ptr noundef nonnull align 2 dereferenceable(2) %27)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #11
  %76 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #11
  store i16 26, ptr %28, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols23fgATT_SUBSTITUTIONGROUPE, ptr noundef nonnull align 2 dereferenceable(2) %28)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #11
  %77 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #11
  store i16 27, ptr %29, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %77, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgATT_SYSTEME, ptr noundef nonnull align 2 dereferenceable(2) %29)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #11
  %78 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #11
  store i16 28, ptr %30, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgATT_TARGETNAMESPACEE, ptr noundef nonnull align 2 dereferenceable(2) %30)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #11
  %79 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #11
  store i16 29, ptr %31, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgATT_TYPEE, ptr noundef nonnull align 2 dereferenceable(2) %31)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #11
  %80 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #11
  store i16 30, ptr %32, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgATT_USEE, ptr noundef nonnull align 2 dereferenceable(2) %32)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #11
  %81 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #11
  store i16 31, ptr %33, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %81, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgATT_VALUEE, ptr noundef nonnull align 2 dereferenceable(2) %33)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #11
  %82 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #11
  store i16 32, ptr %34, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgATT_VERSIONE, ptr noundef nonnull align 2 dereferenceable(2) %34)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #11
  %83 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %35) #11
  store i16 33, ptr %35, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgATT_XPATHE, ptr noundef nonnull align 2 dereferenceable(2) %35)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %35) #11
  %84 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 32)
  %85 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %84, i32 noundef 13, ptr noundef %85)
          to label %86 unwind label %100, !prof !83

86:                                               ; preds = %50
  store ptr %84, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #11
  store i16 33, ptr %36, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgELT_MINEXCLUSIVEE, ptr noundef nonnull align 2 dereferenceable(2) %36)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #11
  %87 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %37) #11
  store i16 34, ptr %37, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %87, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgELT_MININCLUSIVEE, ptr noundef nonnull align 2 dereferenceable(2) %37)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %37) #11
  %88 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #11
  store i16 30, ptr %38, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgELT_MAXEXCLUSIVEE, ptr noundef nonnull align 2 dereferenceable(2) %38)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #11
  %89 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %39) #11
  store i16 31, ptr %39, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgELT_MAXINCLUSIVEE, ptr noundef nonnull align 2 dereferenceable(2) %39)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %39) #11
  %90 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %40) #11
  store i16 46, ptr %40, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %90, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols17fgELT_TOTALDIGITSE, ptr noundef nonnull align 2 dereferenceable(2) %40)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #11
  %91 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %41) #11
  store i16 21, ptr %41, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %91, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols20fgELT_FRACTIONDIGITSE, ptr noundef nonnull align 2 dereferenceable(2) %41)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %41) #11
  %92 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %42) #11
  store i16 28, ptr %42, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgELT_LENGTHE, ptr noundef nonnull align 2 dereferenceable(2) %42)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %42) #11
  %93 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %43) #11
  store i16 35, ptr %43, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %93, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgELT_MINLENGTHE, ptr noundef nonnull align 2 dereferenceable(2) %43)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %43) #11
  %94 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %44) #11
  store i16 32, ptr %44, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %94, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgELT_MAXLENGTHE, ptr noundef nonnull align 2 dereferenceable(2) %44)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %44) #11
  %95 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %45) #11
  store i16 18, ptr %45, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %95, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols17fgELT_ENUMERATIONE, ptr noundef nonnull align 2 dereferenceable(2) %45)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %45) #11
  %96 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %46) #11
  store i16 49, ptr %46, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %96, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols16fgELT_WHITESPACEE, ptr noundef nonnull align 2 dereferenceable(2) %46)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %46) #11
  %97 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %47) #11
  store i16 37, ptr %47, align 2, !tbaa !87
  call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %97, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgELT_PATTERNE, ptr noundef nonnull align 2 dereferenceable(2) %47)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %47) #11
  ret void

98:                                               ; preds = %1
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %102

100:                                              ; preds = %50
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi ptr [ %84, %100 ], [ %48, %98 ]
  %104 = phi { ptr, i32 } [ %101, %100 ], [ %99, %98 ]
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %103) #11
  resume { ptr, i32 } %104
}

declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_721GeneralAttributeCheck21reinitGeneralAttCheckEv() #5 align 2 !prof !69 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L21sGeneralAttCheckMutexE, align 8, !tbaa !65
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !84

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #11
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L21sGeneralAttCheckMutexE, align 8, !tbaa !65
  store i1 false, ptr @_ZN11xercesc_2_7L31sGeneralAttCheckMutexRegisteredE, align 1
  %5 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !84

7:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %5) #11
  br label %8

8:                                                ; preds = %7, %4
  %9 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !65
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !84

11:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %9) #11
  br label %12

12:                                               ; preds = %11, %8
  store ptr null, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fFacetsMapE, align 8, !tbaa !65
  store ptr null, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  store ptr null, ptr @_ZN11xercesc_2_721GeneralAttributeCheck9fAnyURIDVE, align 8, !tbaa !65
  store ptr null, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fBooleanDVE, align 8, !tbaa !65
  store ptr null, ptr @_ZN11xercesc_2_721GeneralAttributeCheck12fNonNegIntDVE, align 8, !tbaa !65
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  store ptr %2, ptr %0, align 8, !tbaa !89
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !91
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %5, align 8, !tbaa !92
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !93
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1)
  %7 = load ptr, ptr %0, align 8, !tbaa !89
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %7)
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %10, !prof !94

9:                                                ; preds = %3
  store ptr %8, ptr %6, align 8, !tbaa !93
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #11
  resume { ptr, i32 } %11
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #3 comdat align 2 !prof !95 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !92
  %8 = load ptr, ptr %0, align 8, !tbaa !89
  %9 = load ptr, ptr %5, align 8, !tbaa !96
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8), !prof !98
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !99

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !93
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !100
  %23 = load ptr, ptr %20, align 8, !tbaa !96
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22), !prof !102
  br i1 %26, label %31, label %27, !prof !103

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !65
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !104, !llvm.loop !105

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ %19, %18 ], [ null, %27 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34, !prof !108

34:                                               ; preds = %31
  %35 = load i16, ptr %2, align 2, !tbaa !87
  store i16 %35, ptr %32, align 8, !tbaa !109
  %36 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %32, i64 0, i32 2
  store ptr %1, ptr %36, align 8, !tbaa !100
  br label %49

37:                                               ; preds = %31
  %38 = load ptr, ptr %0, align 8, !tbaa !89
  %39 = load ptr, ptr %38, align 8, !tbaa !96
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef 24), !prof !110
  %43 = load ptr, ptr %12, align 8, !tbaa !91
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  %45 = load ptr, ptr %44, align 8, !tbaa !65
  %46 = load i16, ptr %2, align 2, !tbaa !87
  store i16 %46, ptr %42, align 8, !tbaa !109
  %47 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %42, i64 0, i32 1
  store ptr %45, ptr %47, align 8, !tbaa !111
  %48 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %42, i64 0, i32 2
  store ptr %1, ptr %48, align 8, !tbaa !100
  store ptr %42, ptr %44, align 8, !tbaa !65
  br label %49

49:                                               ; preds = %37, %34
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !92
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %29, label %5, !prof !112

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %22
  %8 = phi i64 [ 0, %5 ], [ %25, %22 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !91
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  br label %12

12:                                               ; preds = %15, %7
  %13 = phi ptr [ %11, %7 ], [ %17, %15 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15, !prof !113

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !111
  %18 = load ptr, ptr %0, align 8, !tbaa !89
  %19 = load ptr, ptr %18, align 8, !tbaa !96
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %13)
          to label %12 unwind label %45, !prof !114, !llvm.loop !115

22:                                               ; preds = %12
  %23 = load ptr, ptr %6, align 8, !tbaa !91
  %24 = getelementptr inbounds ptr, ptr %23, i64 %8
  store ptr null, ptr %24, align 8, !tbaa !65
  %25 = add nuw nsw i64 %8, 1
  %26 = load i32, ptr %2, align 8, !tbaa !92
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %7, label %29, !prof !116, !llvm.loop !117

29:                                               ; preds = %22, %1
  %30 = load ptr, ptr %0, align 8, !tbaa !89
  %31 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !91
  %33 = load ptr, ptr %30, align 8, !tbaa !96
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32)
          to label %36 unwind label %47, !prof !118

36:                                               ; preds = %29
  %37 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !93
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40, !prof !119

40:                                               ; preds = %36
  %41 = load ptr, ptr %38, align 8, !tbaa !96
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  tail call void %43(ptr noundef nonnull align 8 dereferenceable(8) %38) #11, !prof !120
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
  tail call void @__clang_call_terminate(ptr %51) #12
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721GeneralAttributeCheck15checkAttributesEPKNS_10DOMElementEtPNS_14TraverseSchemaEbPNS_13ValueVectorOfIPNS_7DOMNodeEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %7 = alloca [34 x i8], align 16
  %8 = icmp eq ptr %5, null
  br i1 %8, label %11, label %9, !prof !122

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %5, i64 0, i32 1
  store i32 0, ptr %10, align 4, !tbaa !123
  br label %11

11:                                               ; preds = %9, %6
  %12 = icmp eq ptr %1, null
  %13 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8
  %14 = icmp eq ptr %13, null
  %15 = select i1 %12, i1 true, i1 %14, !prof !122
  %16 = icmp ugt i16 %2, 49
  %17 = or i1 %16, %15
  br i1 %17, label %263, label %18, !prof !122

18:                                               ; preds = %11
  %19 = load ptr, ptr %1, align 8, !tbaa !96
  %20 = getelementptr inbounds ptr, ptr %19, i64 24
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !125
  %23 = load ptr, ptr %1, align 8, !tbaa !96
  %24 = getelementptr inbounds ptr, ptr %23, i64 22
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !126
  %27 = icmp eq ptr %26, null
  %28 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, align 2, !tbaa !87
  br i1 %27, label %32, label %29, !prof !122

29:                                               ; preds = %18
  %30 = load i16, ptr %26, align 2, !tbaa !87
  %31 = icmp eq i16 %28, %30
  br i1 %31, label %34, label %45, !prof !83

32:                                               ; preds = %18
  %33 = icmp eq i16 %28, 0
  br i1 %33, label %46, label %45

34:                                               ; preds = %29, %39
  %35 = phi i16 [ %42, %39 ], [ %28, %29 ]
  %36 = phi ptr [ %41, %39 ], [ %26, %29 ]
  %37 = phi ptr [ %40, %39 ], [ @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, %29 ]
  %38 = icmp eq i16 %35, 0
  br i1 %38, label %46, label %39, !prof !127

39:                                               ; preds = %34
  %40 = getelementptr inbounds i16, ptr %37, i64 1
  %41 = getelementptr inbounds i16, ptr %36, i64 1
  %42 = load i16, ptr %40, align 2, !tbaa !87
  %43 = load i16, ptr %41, align 2, !tbaa !87
  %44 = icmp eq i16 %42, %43
  br i1 %44, label %34, label %45, !prof !128, !llvm.loop !129

45:                                               ; preds = %39, %29, %32
  tail call void @_ZN11xercesc_2_714TraverseSchema17reportSchemaErrorEPKNS_10DOMElementEPKtiS5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %3, ptr noundef nonnull %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, i32 noundef 166, ptr noundef %22, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %46

46:                                               ; preds = %34, %32, %45
  %47 = select i1 %4, ptr @_ZN11xercesc_2_7L8fgGlobalE, ptr @_ZN11xercesc_2_7L7fgLocalE, !prof !130
  %48 = load ptr, ptr %1, align 8, !tbaa !96
  %49 = getelementptr inbounds ptr, ptr %48, i64 11
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !131
  %52 = load ptr, ptr %51, align 8, !tbaa !96
  %53 = getelementptr inbounds ptr, ptr %52, i64 5
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef i64 %54(ptr noundef nonnull align 8 dereferenceable(8) %51), !prof !132
  %56 = trunc i64 %55 to i32
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(34) %7, i8 0, i64 34, i1 false)
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %61, !prof !133

58:                                               ; preds = %46
  %59 = zext i16 %2 to i64
  %60 = and i64 %55, 4294967295
  br label %63

61:                                               ; preds = %241, %46
  %62 = zext i16 %2 to i64
  br label %247

63:                                               ; preds = %58, %241
  %64 = phi i64 [ 0, %58 ], [ %242, %241 ]
  %65 = load ptr, ptr %51, align 8, !tbaa !96
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef %64), !prof !134
  %69 = load ptr, ptr %68, align 8, !tbaa !96
  %70 = getelementptr inbounds ptr, ptr %69, i64 2
  %71 = load ptr, ptr %70, align 8
  %72 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(8) %68), !prof !135
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74, !prof !136

74:                                               ; preds = %63
  %75 = load i16, ptr %72, align 2, !tbaa !87
  %76 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !87
  %77 = icmp eq i16 %75, %76
  br i1 %77, label %81, label %92, !prof !137

78:                                               ; preds = %63
  %79 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !87
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %241, label %92

81:                                               ; preds = %74, %86
  %82 = phi i16 [ %89, %86 ], [ %75, %74 ]
  %83 = phi ptr [ %88, %86 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %74 ]
  %84 = phi ptr [ %87, %86 ], [ %72, %74 ]
  %85 = icmp eq i16 %82, 0
  br i1 %85, label %241, label %86, !prof !138

86:                                               ; preds = %81
  %87 = getelementptr inbounds i16, ptr %84, i64 1
  %88 = getelementptr inbounds i16, ptr %83, i64 1
  %89 = load i16, ptr %87, align 2, !tbaa !87
  %90 = load i16, ptr %88, align 2, !tbaa !87
  %91 = icmp eq i16 %89, %90
  br i1 %91, label %81, label %92, !prof !139, !llvm.loop !129

92:                                               ; preds = %86, %74, %78
  %93 = load i16, ptr @_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE, align 2, !tbaa !87
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %105, label %95, !prof !140

95:                                               ; preds = %92, %95
  %96 = phi ptr [ %97, %95 ], [ @_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE, %92 ]
  %97 = getelementptr inbounds i16, ptr %96, i64 1
  %98 = load i16, ptr %97, align 2, !tbaa !87
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %95, !prof !141, !llvm.loop !142

100:                                              ; preds = %95
  %101 = ptrtoint ptr %97 to i64
  %102 = sub i64 %101, ptrtoint (ptr @_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE to i64)
  %103 = lshr exact i64 %102, 1
  %104 = trunc i64 %103 to i32
  br label %105

105:                                              ; preds = %92, %100
  %106 = phi i32 [ %104, %100 ], [ 0, %92 ]
  %107 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef %72, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE, i32 noundef %106)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %241, label %109, !prof !143

109:                                              ; preds = %105
  %110 = load i16, ptr %72, align 2, !tbaa !87
  switch i16 %110, label %126 [
    i16 88, label %111
    i16 120, label %111
  ], !prof !144

111:                                              ; preds = %109, %109
  %112 = getelementptr inbounds i16, ptr %72, i64 1
  %113 = load i16, ptr %112, align 2, !tbaa !87
  switch i16 %113, label %126 [
    i16 77, label %114
    i16 109, label %114
  ], !prof !145

114:                                              ; preds = %111, %111
  %115 = getelementptr inbounds i16, ptr %72, i64 2
  %116 = load i16, ptr %115, align 2, !tbaa !87
  switch i16 %116, label %126 [
    i16 76, label %117
    i16 108, label %117
  ]

117:                                              ; preds = %114, %114
  br i1 %8, label %241, label %118

118:                                              ; preds = %117
  %119 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %5, i64 0, i32 3
  %120 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %5, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 1)
  %121 = load ptr, ptr %119, align 8, !tbaa !146
  %122 = load i32, ptr %120, align 4, !tbaa !123
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds ptr, ptr %121, i64 %123
  store ptr %68, ptr %124, align 8, !tbaa !65
  %125 = add i32 %122, 1
  store i32 %125, ptr %120, align 4, !tbaa !123
  br label %241

126:                                              ; preds = %114, %111, %109
  %127 = load ptr, ptr %68, align 8, !tbaa !96
  %128 = getelementptr inbounds ptr, ptr %127, i64 22
  %129 = load ptr, ptr %128, align 8
  %130 = tail call noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(8) %68), !prof !147
  %131 = icmp eq ptr %130, null
  br i1 %131, label %199, label %132, !prof !148

132:                                              ; preds = %126
  %133 = load i16, ptr %130, align 2, !tbaa !87
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %199, label %135

135:                                              ; preds = %132
  %136 = load i16, ptr %130, align 2, !tbaa !87
  %137 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, align 2, !tbaa !87
  %138 = icmp eq i16 %136, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %135, %144
  %140 = phi i16 [ %147, %144 ], [ %136, %135 ]
  %141 = phi ptr [ %146, %144 ], [ @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, %135 ]
  %142 = phi ptr [ %145, %144 ], [ %130, %135 ]
  %143 = icmp eq i16 %140, 0
  br i1 %143, label %189, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds i16, ptr %142, i64 1
  %146 = getelementptr inbounds i16, ptr %141, i64 1
  %147 = load i16, ptr %145, align 2, !tbaa !87
  %148 = load i16, ptr %146, align 2, !tbaa !87
  %149 = icmp eq i16 %147, %148
  br i1 %149, label %139, label %150, !llvm.loop !129

150:                                              ; preds = %144, %135
  %151 = icmp eq ptr %22, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %150
  %153 = load i16, ptr %22, align 2, !tbaa !87
  %154 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols13fgELT_APPINFOE, align 2, !tbaa !87
  %155 = icmp eq i16 %153, %154
  br i1 %155, label %159, label %170

156:                                              ; preds = %150
  %157 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols13fgELT_APPINFOE, align 2, !tbaa !87
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %189, label %170

159:                                              ; preds = %152, %164
  %160 = phi i16 [ %167, %164 ], [ %153, %152 ]
  %161 = phi ptr [ %166, %164 ], [ @_ZN11xercesc_2_713SchemaSymbols13fgELT_APPINFOE, %152 ]
  %162 = phi ptr [ %165, %164 ], [ %22, %152 ]
  %163 = icmp eq i16 %160, 0
  br i1 %163, label %189, label %164

164:                                              ; preds = %159
  %165 = getelementptr inbounds i16, ptr %162, i64 1
  %166 = getelementptr inbounds i16, ptr %161, i64 1
  %167 = load i16, ptr %165, align 2, !tbaa !87
  %168 = load i16, ptr %166, align 2, !tbaa !87
  %169 = icmp eq i16 %167, %168
  br i1 %169, label %159, label %170, !llvm.loop !129

170:                                              ; preds = %164, %152, %156
  br i1 %151, label %175, label %171

171:                                              ; preds = %170
  %172 = load i16, ptr %22, align 2, !tbaa !87
  %173 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols19fgELT_DOCUMENTATIONE, align 2, !tbaa !87
  %174 = icmp eq i16 %172, %173
  br i1 %174, label %178, label %190

175:                                              ; preds = %170
  %176 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols19fgELT_DOCUMENTATIONE, align 2, !tbaa !87
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %189, label %190

178:                                              ; preds = %171, %183
  %179 = phi i16 [ %186, %183 ], [ %172, %171 ]
  %180 = phi ptr [ %185, %183 ], [ @_ZN11xercesc_2_713SchemaSymbols19fgELT_DOCUMENTATIONE, %171 ]
  %181 = phi ptr [ %184, %183 ], [ %22, %171 ]
  %182 = icmp eq i16 %179, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %178
  %184 = getelementptr inbounds i16, ptr %181, i64 1
  %185 = getelementptr inbounds i16, ptr %180, i64 1
  %186 = load i16, ptr %184, align 2, !tbaa !87
  %187 = load i16, ptr %185, align 2, !tbaa !87
  %188 = icmp eq i16 %186, %187
  br i1 %188, label %178, label %190, !llvm.loop !129

189:                                              ; preds = %139, %159, %178, %175, %156
  tail call void @_ZN11xercesc_2_714TraverseSchema17reportSchemaErrorEPKNS_10DOMElementEPKtiS5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %3, ptr noundef nonnull %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, i32 noundef 95, ptr noundef nonnull %72, ptr noundef nonnull %47, ptr noundef %22, ptr noundef null)
  br label %241

190:                                              ; preds = %183, %171, %175
  br i1 %8, label %241, label %191

191:                                              ; preds = %190
  %192 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %5, i64 0, i32 3
  %193 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %5, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 1)
  %194 = load ptr, ptr %192, align 8, !tbaa !146
  %195 = load i32, ptr %193, align 4, !tbaa !123
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds ptr, ptr %194, i64 %196
  store ptr %68, ptr %197, align 8, !tbaa !65
  %198 = add i32 %195, 1
  store i32 %198, ptr %193, align 4, !tbaa !123
  br label %241

199:                                              ; preds = %132, %126
  %200 = load ptr, ptr %68, align 8, !tbaa !96
  %201 = getelementptr inbounds ptr, ptr %200, i64 24
  %202 = load ptr, ptr %201, align 8
  %203 = tail call noundef ptr %202(ptr noundef nonnull align 8 dereferenceable(8) %68), !prof !149
  %204 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck7fAttMapE, align 8, !tbaa !65
  %205 = load ptr, ptr %0, align 8, !tbaa !70
  %206 = invoke noundef nonnull align 2 dereferenceable(2) ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %204, ptr noundef %203, ptr noundef %205)
          to label %207 unwind label %210, !prof !148

207:                                              ; preds = %199
  %208 = load i16, ptr %206, align 2, !tbaa !87
  %209 = zext i16 %208 to i64
  br label %224

210:                                              ; preds = %199
  %211 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %212 = extractvalue { ptr, i32 } %211, 0
  %213 = extractvalue { ptr, i32 } %211, 1
  %214 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #11
  %215 = icmp eq i32 %213, %214
  %216 = tail call ptr @__cxa_begin_catch(ptr %212) #11
  br i1 %215, label %217, label %218

217:                                              ; preds = %210
  invoke void @__cxa_rethrow() #13
          to label %267 unwind label %222

218:                                              ; preds = %210
  invoke void @_ZN11xercesc_2_714TraverseSchema17reportSchemaErrorEPKNS_10DOMElementEPKtiS5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %3, ptr noundef nonnull %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, i32 noundef 95, ptr noundef %203, ptr noundef nonnull %47, ptr noundef %22, ptr noundef null)
          to label %219 unwind label %220

219:                                              ; preds = %218
  tail call void @__cxa_end_catch()
  br label %224

220:                                              ; preds = %218
  %221 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %244 unwind label %264

222:                                              ; preds = %217
  %223 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %244 unwind label %264

224:                                              ; preds = %219, %207
  %225 = phi i64 [ %209, %207 ], [ -1, %219 ]
  %226 = phi i1 [ false, %207 ], [ true, %219 ]
  br i1 %226, label %241, label %227, !prof !150

227:                                              ; preds = %224
  %228 = getelementptr inbounds [50 x [34 x i16]], ptr @_ZN11xercesc_2_721GeneralAttributeCheck14fgElemAttTableE, i64 0, i64 %59, i64 %225
  %229 = load i16, ptr %228, align 2, !tbaa !87
  %230 = and i16 %229, 3
  %231 = icmp eq i16 %230, 0
  br i1 %231, label %240, label %232, !prof !150

232:                                              ; preds = %227
  %233 = getelementptr inbounds [34 x i8], ptr %7, i64 0, i64 %225
  store i8 1, ptr %233, align 1, !tbaa !151
  %234 = load ptr, ptr %68, align 8, !tbaa !96
  %235 = getelementptr inbounds ptr, ptr %234, i64 3
  %236 = load ptr, ptr %235, align 8
  %237 = tail call noundef ptr %236(ptr noundef nonnull align 8 dereferenceable(8) %68), !prof !152
  %238 = load i16, ptr %228, align 2, !tbaa !87
  %239 = and i16 %238, 8188
  tail call void @_ZN11xercesc_2_721GeneralAttributeCheck8validateEPKNS_10DOMElementEPKtS5_sPNS_14TraverseSchemaE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %1, ptr noundef %203, ptr noundef %237, i16 noundef signext %239, ptr noundef %3)
  br label %241

240:                                              ; preds = %227
  tail call void @_ZN11xercesc_2_714TraverseSchema17reportSchemaErrorEPKNS_10DOMElementEPKtiS5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %3, ptr noundef nonnull %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, i32 noundef 95, ptr noundef %203, ptr noundef nonnull %47, ptr noundef %22, ptr noundef null)
  br label %241

241:                                              ; preds = %81, %78, %190, %191, %189, %232, %240, %224, %117, %118, %105
  %242 = add nuw nsw i64 %64, 1
  %243 = icmp eq i64 %242, %60
  br i1 %243, label %61, label %63, !prof !153, !llvm.loop !154

244:                                              ; preds = %222, %220
  %245 = phi { ptr, i32 } [ %221, %220 ], [ %223, %222 ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %7) #11
  resume { ptr, i32 } %245

246:                                              ; preds = %260
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %7) #11
  br label %263

247:                                              ; preds = %61, %260
  %248 = phi i64 [ 0, %61 ], [ %261, %260 ]
  %249 = getelementptr inbounds [50 x [34 x i16]], ptr @_ZN11xercesc_2_721GeneralAttributeCheck14fgElemAttTableE, i64 0, i64 %62, i64 %248
  %250 = load i16, ptr %249, align 2, !tbaa !87
  %251 = and i16 %250, 1
  %252 = icmp eq i16 %251, 0
  br i1 %252, label %260, label %253, !prof !155

253:                                              ; preds = %247
  %254 = getelementptr inbounds [34 x i8], ptr %7, i64 0, i64 %248
  %255 = load i8, ptr %254, align 1, !tbaa !151
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %260, !prof !156

257:                                              ; preds = %253
  %258 = getelementptr inbounds [34 x ptr], ptr @_ZN11xercesc_2_721GeneralAttributeCheck9fAttNamesE, i64 0, i64 %248
  %259 = load ptr, ptr %258, align 8, !tbaa !65
  tail call void @_ZN11xercesc_2_714TraverseSchema17reportSchemaErrorEPKNS_10DOMElementEPKtiS5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %3, ptr noundef nonnull %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, i32 noundef 94, ptr noundef %259, ptr noundef nonnull %47, ptr noundef %22, ptr noundef null)
  br label %260

260:                                              ; preds = %247, %253, %257
  %261 = add nuw nsw i64 %248, 1
  %262 = icmp eq i64 %261, 34
  br i1 %262, label %246, label %247, !prof !157, !llvm.loop !158

263:                                              ; preds = %11, %246
  ret void

264:                                              ; preds = %222, %220
  %265 = landingpad { ptr, i32 }
          catch ptr null
  %266 = extractvalue { ptr, i32 } %265, 0
  tail call void @__clang_call_terminate(ptr %266) #12
  unreachable

267:                                              ; preds = %217
  unreachable
}

declare void @_ZN11xercesc_2_714TraverseSchema17reportSchemaErrorEPKNS_10DOMElementEPKtiS5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !159 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !92
  %8 = load ptr, ptr %0, align 8, !tbaa !89
  %9 = load ptr, ptr %5, align 8, !tbaa !96
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8), !prof !160
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !84

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !93
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !100
  %23 = load ptr, ptr %20, align 8, !tbaa !96
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22), !prof !161
  br i1 %26, label %31, label %27, !prof !162

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !65
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !163, !llvm.loop !105

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ %19, %18 ], [ null, %27 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %39, !prof !164

34:                                               ; preds = %31
  %35 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 50, ptr noundef %2)
          to label %36 unwind label %37

36:                                               ; preds = %34
  tail call void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

37:                                               ; preds = %34
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %35) #11
  resume { ptr, i32 } %38

39:                                               ; preds = %31
  ret ptr %32
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #8

declare void @__cxa_end_catch() local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721GeneralAttributeCheck8validateEPKNS_10DOMElementEPKtS5_sPNS_14TraverseSchemaE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4, ptr noundef %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !165 {
  %7 = getelementptr inbounds %"class.xercesc_2_7::TraverseSchema", ptr %5, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !166
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaInfo", ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !170
  %11 = getelementptr inbounds %"class.xercesc_2_7::GeneralAttributeCheck", ptr %0, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !82
  switch i16 %4, label %302 [
    i16 64, label %12
    i16 128, label %51
    i16 256, label %71
    i16 512, label %87
    i16 1024, label %118
    i16 2048, label %176
    i16 4096, label %234
    i16 16, label %292
    i16 8, label %294
    i16 4, label %296
    i16 32, label %298
  ], !prof !172

12:                                               ; preds = %6
  %13 = icmp eq ptr %3, null
  br i1 %13, label %18, label %14, !prof !84

14:                                               ; preds = %12
  %15 = load i16, ptr %3, align 2, !tbaa !87
  %16 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols18fgATTVAL_QUALIFIEDE, align 2, !tbaa !87
  %17 = icmp eq i16 %15, %16
  br i1 %17, label %21, label %32, !prof !83

18:                                               ; preds = %12
  %19 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols18fgATTVAL_QUALIFIEDE, align 2, !tbaa !87
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %302, label %32

21:                                               ; preds = %14, %26
  %22 = phi i16 [ %29, %26 ], [ %15, %14 ]
  %23 = phi ptr [ %28, %26 ], [ @_ZN11xercesc_2_713SchemaSymbols18fgATTVAL_QUALIFIEDE, %14 ]
  %24 = phi ptr [ %27, %26 ], [ %3, %14 ]
  %25 = icmp eq i16 %22, 0
  br i1 %25, label %302, label %26, !prof !173

26:                                               ; preds = %21
  %27 = getelementptr inbounds i16, ptr %24, i64 1
  %28 = getelementptr inbounds i16, ptr %23, i64 1
  %29 = load i16, ptr %27, align 2, !tbaa !87
  %30 = load i16, ptr %28, align 2, !tbaa !87
  %31 = icmp eq i16 %29, %30
  br i1 %31, label %21, label %32, !prof !174, !llvm.loop !129

32:                                               ; preds = %26, %14, %18
  br i1 %13, label %37, label %33

33:                                               ; preds = %32
  %34 = load i16, ptr %3, align 2, !tbaa !87
  %35 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols20fgATTVAL_UNQUALIFIEDE, align 2, !tbaa !87
  %36 = icmp eq i16 %34, %35
  br i1 %36, label %40, label %302

37:                                               ; preds = %32
  %38 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols20fgATTVAL_UNQUALIFIEDE, align 2, !tbaa !87
  %39 = icmp ne i16 %38, 0
  br label %302

40:                                               ; preds = %33, %45
  %41 = phi i16 [ %48, %45 ], [ %34, %33 ]
  %42 = phi ptr [ %47, %45 ], [ @_ZN11xercesc_2_713SchemaSymbols20fgATTVAL_UNQUALIFIEDE, %33 ]
  %43 = phi ptr [ %46, %45 ], [ %3, %33 ]
  %44 = icmp ne i16 %41, 0
  br i1 %44, label %45, label %302

45:                                               ; preds = %40
  %46 = getelementptr inbounds i16, ptr %43, i64 1
  %47 = getelementptr inbounds i16, ptr %42, i64 1
  %48 = load i16, ptr %46, align 2, !tbaa !87
  %49 = load i16, ptr %47, align 2, !tbaa !87
  %50 = icmp eq i16 %48, %49
  br i1 %50, label %40, label %302, !llvm.loop !129

51:                                               ; preds = %6
  %52 = icmp eq ptr %3, null
  br i1 %52, label %67, label %53, !prof !175

53:                                               ; preds = %51
  %54 = load i16, ptr %3, align 2, !tbaa !87
  %55 = icmp eq i16 %54, 117
  br i1 %55, label %56, label %67, !prof !83

56:                                               ; preds = %53, %61
  %57 = phi i16 [ %64, %61 ], [ 1, %53 ]
  %58 = phi ptr [ %63, %61 ], [ @_ZN11xercesc_2_7L11fgUnboundedE, %53 ]
  %59 = phi ptr [ %62, %61 ], [ %3, %53 ]
  %60 = icmp eq i16 %57, 0
  br i1 %60, label %67, label %61, !prof !176

61:                                               ; preds = %56
  %62 = getelementptr inbounds i16, ptr %59, i64 1
  %63 = getelementptr inbounds i16, ptr %58, i64 1
  %64 = load i16, ptr %62, align 2, !tbaa !87
  %65 = load i16, ptr %63, align 2, !tbaa !87
  %66 = icmp eq i16 %64, %65
  br i1 %66, label %56, label %67, !prof !177, !llvm.loop !129

67:                                               ; preds = %56, %61, %53, %51
  %68 = phi i1 [ false, %51 ], [ false, %53 ], [ %60, %61 ], [ %60, %56 ]
  %69 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck12fNonNegIntDVE, align 8
  %70 = select i1 %68, ptr null, ptr %69, !prof !178
  br label %302

71:                                               ; preds = %6
  %72 = icmp eq ptr %3, null
  br i1 %72, label %302, label %73

73:                                               ; preds = %71
  %74 = load i16, ptr %3, align 2, !tbaa !87
  %75 = icmp eq i16 %74, 49
  br i1 %75, label %76, label %302

76:                                               ; preds = %73, %81
  %77 = phi i16 [ %84, %81 ], [ 1, %73 ]
  %78 = phi ptr [ %83, %81 ], [ @_ZN11xercesc_2_7L10fgValueOneE, %73 ]
  %79 = phi ptr [ %82, %81 ], [ %3, %73 ]
  %80 = icmp ne i16 %77, 0
  br i1 %80, label %81, label %302

81:                                               ; preds = %76
  %82 = getelementptr inbounds i16, ptr %79, i64 1
  %83 = getelementptr inbounds i16, ptr %78, i64 1
  %84 = load i16, ptr %82, align 2, !tbaa !87
  %85 = load i16, ptr %83, align 2, !tbaa !87
  %86 = icmp eq i16 %84, %85
  br i1 %86, label %76, label %302, !llvm.loop !129

87:                                               ; preds = %6
  %88 = icmp eq ptr %3, null
  br i1 %88, label %302, label %89

89:                                               ; preds = %87
  %90 = load i16, ptr %3, align 2, !tbaa !87
  %91 = icmp eq i16 %90, 48
  br i1 %91, label %92, label %103

92:                                               ; preds = %89, %97
  %93 = phi i16 [ %100, %97 ], [ 1, %89 ]
  %94 = phi ptr [ %99, %97 ], [ @_ZN11xercesc_2_7L11fgValueZeroE, %89 ]
  %95 = phi ptr [ %98, %97 ], [ %3, %89 ]
  %96 = icmp eq i16 %93, 0
  br i1 %96, label %302, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds i16, ptr %95, i64 1
  %99 = getelementptr inbounds i16, ptr %94, i64 1
  %100 = load i16, ptr %98, align 2, !tbaa !87
  %101 = load i16, ptr %99, align 2, !tbaa !87
  %102 = icmp eq i16 %100, %101
  br i1 %102, label %92, label %103, !llvm.loop !129

103:                                              ; preds = %97, %89
  br i1 %88, label %302, label %104

104:                                              ; preds = %103
  %105 = load i16, ptr %3, align 2, !tbaa !87
  %106 = icmp eq i16 %105, 49
  br i1 %106, label %107, label %302

107:                                              ; preds = %104, %112
  %108 = phi i16 [ %115, %112 ], [ 1, %104 ]
  %109 = phi ptr [ %114, %112 ], [ @_ZN11xercesc_2_7L10fgValueOneE, %104 ]
  %110 = phi ptr [ %113, %112 ], [ %3, %104 ]
  %111 = icmp ne i16 %108, 0
  br i1 %111, label %112, label %302

112:                                              ; preds = %107
  %113 = getelementptr inbounds i16, ptr %110, i64 1
  %114 = getelementptr inbounds i16, ptr %109, i64 1
  %115 = load i16, ptr %113, align 2, !tbaa !87
  %116 = load i16, ptr %114, align 2, !tbaa !87
  %117 = icmp eq i16 %115, %116
  br i1 %117, label %107, label %302, !llvm.loop !129

118:                                              ; preds = %6
  %119 = icmp eq ptr %3, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %118
  %121 = load i16, ptr %3, align 2, !tbaa !87
  %122 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_SKIPE, align 2, !tbaa !87
  %123 = icmp eq i16 %121, %122
  br i1 %123, label %127, label %138

124:                                              ; preds = %118
  %125 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_SKIPE, align 2, !tbaa !87
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %302, label %138

127:                                              ; preds = %120, %132
  %128 = phi i16 [ %135, %132 ], [ %121, %120 ]
  %129 = phi ptr [ %134, %132 ], [ @_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_SKIPE, %120 ]
  %130 = phi ptr [ %133, %132 ], [ %3, %120 ]
  %131 = icmp eq i16 %128, 0
  br i1 %131, label %302, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds i16, ptr %130, i64 1
  %134 = getelementptr inbounds i16, ptr %129, i64 1
  %135 = load i16, ptr %133, align 2, !tbaa !87
  %136 = load i16, ptr %134, align 2, !tbaa !87
  %137 = icmp eq i16 %135, %136
  br i1 %137, label %127, label %138, !llvm.loop !129

138:                                              ; preds = %132, %120, %124
  br i1 %119, label %143, label %139

139:                                              ; preds = %138
  %140 = load i16, ptr %3, align 2, !tbaa !87
  %141 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols12fgATTVAL_LAXE, align 2, !tbaa !87
  %142 = icmp eq i16 %140, %141
  br i1 %142, label %146, label %157

143:                                              ; preds = %138
  %144 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols12fgATTVAL_LAXE, align 2, !tbaa !87
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %302, label %157

146:                                              ; preds = %139, %151
  %147 = phi i16 [ %154, %151 ], [ %140, %139 ]
  %148 = phi ptr [ %153, %151 ], [ @_ZN11xercesc_2_713SchemaSymbols12fgATTVAL_LAXE, %139 ]
  %149 = phi ptr [ %152, %151 ], [ %3, %139 ]
  %150 = icmp eq i16 %147, 0
  br i1 %150, label %302, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds i16, ptr %149, i64 1
  %153 = getelementptr inbounds i16, ptr %148, i64 1
  %154 = load i16, ptr %152, align 2, !tbaa !87
  %155 = load i16, ptr %153, align 2, !tbaa !87
  %156 = icmp eq i16 %154, %155
  br i1 %156, label %146, label %157, !llvm.loop !129

157:                                              ; preds = %151, %139, %143
  br i1 %119, label %162, label %158

158:                                              ; preds = %157
  %159 = load i16, ptr %3, align 2, !tbaa !87
  %160 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols15fgATTVAL_STRICTE, align 2, !tbaa !87
  %161 = icmp eq i16 %159, %160
  br i1 %161, label %165, label %302

162:                                              ; preds = %157
  %163 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols15fgATTVAL_STRICTE, align 2, !tbaa !87
  %164 = icmp ne i16 %163, 0
  br label %302

165:                                              ; preds = %158, %170
  %166 = phi i16 [ %173, %170 ], [ %159, %158 ]
  %167 = phi ptr [ %172, %170 ], [ @_ZN11xercesc_2_713SchemaSymbols15fgATTVAL_STRICTE, %158 ]
  %168 = phi ptr [ %171, %170 ], [ %3, %158 ]
  %169 = icmp ne i16 %166, 0
  br i1 %169, label %170, label %302

170:                                              ; preds = %165
  %171 = getelementptr inbounds i16, ptr %168, i64 1
  %172 = getelementptr inbounds i16, ptr %167, i64 1
  %173 = load i16, ptr %171, align 2, !tbaa !87
  %174 = load i16, ptr %172, align 2, !tbaa !87
  %175 = icmp eq i16 %173, %174
  br i1 %175, label %165, label %302, !llvm.loop !129

176:                                              ; preds = %6
  %177 = icmp eq ptr %3, null
  br i1 %177, label %182, label %178, !prof !179

178:                                              ; preds = %176
  %179 = load i16, ptr %3, align 2, !tbaa !87
  %180 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols17fgATTVAL_OPTIONALE, align 2, !tbaa !87
  %181 = icmp eq i16 %179, %180
  br i1 %181, label %185, label %196, !prof !84

182:                                              ; preds = %176
  %183 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols17fgATTVAL_OPTIONALE, align 2, !tbaa !87
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %302, label %196

185:                                              ; preds = %178, %190
  %186 = phi i16 [ %193, %190 ], [ %179, %178 ]
  %187 = phi ptr [ %192, %190 ], [ @_ZN11xercesc_2_713SchemaSymbols17fgATTVAL_OPTIONALE, %178 ]
  %188 = phi ptr [ %191, %190 ], [ %3, %178 ]
  %189 = icmp eq i16 %186, 0
  br i1 %189, label %302, label %190

190:                                              ; preds = %185
  %191 = getelementptr inbounds i16, ptr %188, i64 1
  %192 = getelementptr inbounds i16, ptr %187, i64 1
  %193 = load i16, ptr %191, align 2, !tbaa !87
  %194 = load i16, ptr %192, align 2, !tbaa !87
  %195 = icmp eq i16 %193, %194
  br i1 %195, label %185, label %196, !prof !84, !llvm.loop !129

196:                                              ; preds = %190, %178, %182
  br i1 %177, label %201, label %197, !prof !179

197:                                              ; preds = %196
  %198 = load i16, ptr %3, align 2, !tbaa !87
  %199 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols19fgATTVAL_PROHIBITEDE, align 2, !tbaa !87
  %200 = icmp eq i16 %198, %199
  br i1 %200, label %204, label %215, !prof !84

201:                                              ; preds = %196
  %202 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols19fgATTVAL_PROHIBITEDE, align 2, !tbaa !87
  %203 = icmp eq i16 %202, 0
  br i1 %203, label %302, label %215

204:                                              ; preds = %197, %209
  %205 = phi i16 [ %212, %209 ], [ %198, %197 ]
  %206 = phi ptr [ %211, %209 ], [ @_ZN11xercesc_2_713SchemaSymbols19fgATTVAL_PROHIBITEDE, %197 ]
  %207 = phi ptr [ %210, %209 ], [ %3, %197 ]
  %208 = icmp eq i16 %205, 0
  br i1 %208, label %302, label %209

209:                                              ; preds = %204
  %210 = getelementptr inbounds i16, ptr %207, i64 1
  %211 = getelementptr inbounds i16, ptr %206, i64 1
  %212 = load i16, ptr %210, align 2, !tbaa !87
  %213 = load i16, ptr %211, align 2, !tbaa !87
  %214 = icmp eq i16 %212, %213
  br i1 %214, label %204, label %215, !prof !84, !llvm.loop !129

215:                                              ; preds = %209, %197, %201
  br i1 %177, label %220, label %216, !prof !179

216:                                              ; preds = %215
  %217 = load i16, ptr %3, align 2, !tbaa !87
  %218 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols17fgATTVAL_REQUIREDE, align 2, !tbaa !87
  %219 = icmp eq i16 %217, %218
  br i1 %219, label %223, label %302, !prof !83

220:                                              ; preds = %215
  %221 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols17fgATTVAL_REQUIREDE, align 2, !tbaa !87
  %222 = icmp ne i16 %221, 0
  br label %302

223:                                              ; preds = %216, %228
  %224 = phi i16 [ %231, %228 ], [ %217, %216 ]
  %225 = phi ptr [ %230, %228 ], [ @_ZN11xercesc_2_713SchemaSymbols17fgATTVAL_REQUIREDE, %216 ]
  %226 = phi ptr [ %229, %228 ], [ %3, %216 ]
  %227 = icmp ne i16 %224, 0
  br i1 %227, label %228, label %302, !prof !180

228:                                              ; preds = %223
  %229 = getelementptr inbounds i16, ptr %226, i64 1
  %230 = getelementptr inbounds i16, ptr %225, i64 1
  %231 = load i16, ptr %229, align 2, !tbaa !87
  %232 = load i16, ptr %230, align 2, !tbaa !87
  %233 = icmp eq i16 %231, %232
  br i1 %233, label %223, label %302, !prof !181, !llvm.loop !129

234:                                              ; preds = %6
  %235 = icmp eq ptr %3, null
  br i1 %235, label %240, label %236

236:                                              ; preds = %234
  %237 = load i16, ptr %3, align 2, !tbaa !87
  %238 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols13fgWS_PRESERVEE, align 2, !tbaa !87
  %239 = icmp eq i16 %237, %238
  br i1 %239, label %243, label %254

240:                                              ; preds = %234
  %241 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols13fgWS_PRESERVEE, align 2, !tbaa !87
  %242 = icmp eq i16 %241, 0
  br i1 %242, label %302, label %254

243:                                              ; preds = %236, %248
  %244 = phi i16 [ %251, %248 ], [ %237, %236 ]
  %245 = phi ptr [ %250, %248 ], [ @_ZN11xercesc_2_713SchemaSymbols13fgWS_PRESERVEE, %236 ]
  %246 = phi ptr [ %249, %248 ], [ %3, %236 ]
  %247 = icmp eq i16 %244, 0
  br i1 %247, label %302, label %248

248:                                              ; preds = %243
  %249 = getelementptr inbounds i16, ptr %246, i64 1
  %250 = getelementptr inbounds i16, ptr %245, i64 1
  %251 = load i16, ptr %249, align 2, !tbaa !87
  %252 = load i16, ptr %250, align 2, !tbaa !87
  %253 = icmp eq i16 %251, %252
  br i1 %253, label %243, label %254, !llvm.loop !129

254:                                              ; preds = %248, %236, %240
  br i1 %235, label %259, label %255

255:                                              ; preds = %254
  %256 = load i16, ptr %3, align 2, !tbaa !87
  %257 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols12fgWS_REPLACEE, align 2, !tbaa !87
  %258 = icmp eq i16 %256, %257
  br i1 %258, label %262, label %273

259:                                              ; preds = %254
  %260 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols12fgWS_REPLACEE, align 2, !tbaa !87
  %261 = icmp eq i16 %260, 0
  br i1 %261, label %302, label %273

262:                                              ; preds = %255, %267
  %263 = phi i16 [ %270, %267 ], [ %256, %255 ]
  %264 = phi ptr [ %269, %267 ], [ @_ZN11xercesc_2_713SchemaSymbols12fgWS_REPLACEE, %255 ]
  %265 = phi ptr [ %268, %267 ], [ %3, %255 ]
  %266 = icmp eq i16 %263, 0
  br i1 %266, label %302, label %267

267:                                              ; preds = %262
  %268 = getelementptr inbounds i16, ptr %265, i64 1
  %269 = getelementptr inbounds i16, ptr %264, i64 1
  %270 = load i16, ptr %268, align 2, !tbaa !87
  %271 = load i16, ptr %269, align 2, !tbaa !87
  %272 = icmp eq i16 %270, %271
  br i1 %272, label %262, label %273, !llvm.loop !129

273:                                              ; preds = %267, %255, %259
  br i1 %235, label %278, label %274

274:                                              ; preds = %273
  %275 = load i16, ptr %3, align 2, !tbaa !87
  %276 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols13fgWS_COLLAPSEE, align 2, !tbaa !87
  %277 = icmp eq i16 %275, %276
  br i1 %277, label %281, label %302

278:                                              ; preds = %273
  %279 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols13fgWS_COLLAPSEE, align 2, !tbaa !87
  %280 = icmp ne i16 %279, 0
  br label %302

281:                                              ; preds = %274, %286
  %282 = phi i16 [ %289, %286 ], [ %275, %274 ]
  %283 = phi ptr [ %288, %286 ], [ @_ZN11xercesc_2_713SchemaSymbols13fgWS_COLLAPSEE, %274 ]
  %284 = phi ptr [ %287, %286 ], [ %3, %274 ]
  %285 = icmp ne i16 %282, 0
  br i1 %285, label %286, label %302

286:                                              ; preds = %281
  %287 = getelementptr inbounds i16, ptr %284, i64 1
  %288 = getelementptr inbounds i16, ptr %283, i64 1
  %289 = load i16, ptr %287, align 2, !tbaa !87
  %290 = load i16, ptr %288, align 2, !tbaa !87
  %291 = icmp eq i16 %289, %290
  br i1 %291, label %281, label %302, !llvm.loop !129

292:                                              ; preds = %6
  %293 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck10fBooleanDVE, align 8, !tbaa !65
  br label %302

294:                                              ; preds = %6
  %295 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck12fNonNegIntDVE, align 8, !tbaa !65
  br label %302

296:                                              ; preds = %6
  %297 = load ptr, ptr @_ZN11xercesc_2_721GeneralAttributeCheck9fAnyURIDVE, align 8, !tbaa !65
  br label %302

298:                                              ; preds = %6
  %299 = icmp eq ptr %10, null
  %300 = getelementptr inbounds %"class.xercesc_2_7::GeneralAttributeCheck", ptr %0, i64 0, i32 2
  %301 = select i1 %299, ptr null, ptr %300
  br label %302

302:                                              ; preds = %243, %262, %286, %281, %185, %204, %228, %223, %127, %146, %170, %165, %92, %112, %107, %81, %76, %21, %45, %40, %274, %216, %158, %104, %73, %33, %278, %259, %220, %201, %162, %143, %103, %87, %71, %37, %298, %67, %240, %182, %124, %18, %6, %296, %294, %292
  %303 = phi ptr [ null, %6 ], [ %297, %296 ], [ %295, %294 ], [ %293, %292 ], [ null, %240 ], [ null, %182 ], [ null, %124 ], [ null, %18 ], [ %70, %67 ], [ %301, %298 ], [ null, %37 ], [ null, %71 ], [ null, %87 ], [ null, %103 ], [ null, %143 ], [ null, %162 ], [ null, %201 ], [ null, %220 ], [ null, %259 ], [ null, %278 ], [ null, %33 ], [ null, %73 ], [ null, %104 ], [ null, %158 ], [ null, %216 ], [ null, %274 ], [ null, %40 ], [ null, %45 ], [ null, %21 ], [ null, %76 ], [ null, %81 ], [ null, %107 ], [ null, %112 ], [ null, %92 ], [ null, %165 ], [ null, %170 ], [ null, %146 ], [ null, %127 ], [ null, %223 ], [ null, %228 ], [ null, %204 ], [ null, %185 ], [ null, %281 ], [ null, %286 ], [ null, %262 ], [ null, %243 ]
  %304 = phi i1 [ false, %6 ], [ false, %296 ], [ false, %294 ], [ false, %292 ], [ false, %240 ], [ false, %182 ], [ false, %124 ], [ false, %18 ], [ false, %67 ], [ false, %298 ], [ %39, %37 ], [ true, %71 ], [ true, %87 ], [ true, %103 ], [ false, %143 ], [ %164, %162 ], [ false, %201 ], [ %222, %220 ], [ false, %259 ], [ %280, %278 ], [ true, %33 ], [ true, %73 ], [ true, %104 ], [ true, %158 ], [ true, %216 ], [ true, %274 ], [ %44, %40 ], [ %44, %45 ], [ false, %21 ], [ %80, %76 ], [ %80, %81 ], [ %111, %107 ], [ %111, %112 ], [ false, %92 ], [ %169, %165 ], [ %169, %170 ], [ false, %146 ], [ false, %127 ], [ %227, %223 ], [ %227, %228 ], [ false, %204 ], [ false, %185 ], [ %285, %281 ], [ %285, %286 ], [ false, %262 ], [ false, %243 ]
  %305 = icmp eq ptr %303, null
  br i1 %305, label %332, label %306, !prof !182

306:                                              ; preds = %302
  %307 = load ptr, ptr %0, align 8, !tbaa !70
  %308 = load ptr, ptr %303, align 8, !tbaa !96
  %309 = getelementptr inbounds ptr, ptr %308, i64 8
  %310 = load ptr, ptr %309, align 8
  invoke void %310(ptr noundef nonnull align 8 dereferenceable(104) %303, ptr noundef %3, ptr noundef %10, ptr noundef %307)
          to label %332 unwind label %311, !prof !183

311:                                              ; preds = %306
  %312 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %313 = extractvalue { ptr, i32 } %312, 0
  %314 = extractvalue { ptr, i32 } %312, 1
  %315 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #11
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %322

317:                                              ; preds = %311
  %318 = tail call ptr @__cxa_begin_catch(ptr %313) #11
  %319 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %318, i64 0, i32 4
  %320 = load ptr, ptr %319, align 8, !tbaa !184
  invoke void @_ZN11xercesc_2_714TraverseSchema17reportSchemaErrorEPKNS_10DOMElementEPKtiS5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %5, ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, i32 noundef 156, ptr noundef %320, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %321 unwind label %330

321:                                              ; preds = %317
  tail call void @__cxa_end_catch()
  br label %332

322:                                              ; preds = %311
  %323 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #11
  %324 = icmp eq i32 %314, %323
  %325 = tail call ptr @__cxa_begin_catch(ptr %313) #11
  br i1 %324, label %326, label %327

326:                                              ; preds = %322
  invoke void @__cxa_rethrow() #13
          to label %340 unwind label %328

327:                                              ; preds = %322
  tail call void @__cxa_end_catch()
  br label %333

328:                                              ; preds = %326
  %329 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %335 unwind label %337

330:                                              ; preds = %317
  %331 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %335 unwind label %337

332:                                              ; preds = %321, %306, %302
  br i1 %304, label %333, label %334, !prof !150

333:                                              ; preds = %327, %332
  tail call void @_ZN11xercesc_2_714TraverseSchema17reportSchemaErrorEPKNS_10DOMElementEPKtiS5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %5, ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, i32 noundef 82, ptr noundef %3, ptr noundef %2, ptr noundef null, ptr noundef null)
  br label %334

334:                                              ; preds = %333, %332
  ret void

335:                                              ; preds = %330, %328
  %336 = phi { ptr, i32 } [ %329, %328 ], [ %331, %330 ]
  resume { ptr, i32 } %336

337:                                              ; preds = %330, %328
  %338 = landingpad { ptr, i32 }
          catch ptr null
  %339 = extractvalue { ptr, i32 } %338, 0
  tail call void @__clang_call_terminate(ptr %339) #12
  unreachable

340:                                              ; preds = %326
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !187 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !188
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !190
  %7 = load ptr, ptr %0, align 8, !tbaa !191
  %8 = load ptr, ptr %4, align 8, !tbaa !96
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !192
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !193
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %38, !prof !194

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !188
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !195
  %21 = load ptr, ptr %18, align 8, !tbaa !96
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %1, ptr noundef %20), !prof !197
  br i1 %24, label %38, label %25, !prof !198

25:                                               ; preds = %17, %30
  %26 = phi ptr [ %28, %30 ], [ %15, %17 ]
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  %29 = icmp ne ptr %28, null
  br i1 %29, label %30, label %38, !prof !199, !llvm.loop !200

30:                                               ; preds = %25
  %31 = load ptr, ptr %3, align 8, !tbaa !188
  %32 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %28, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !195
  %34 = load ptr, ptr %31, align 8, !tbaa !96
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %1, ptr noundef %33), !prof !197
  br i1 %37, label %38, label %25, !prof !201, !llvm.loop !200

38:                                               ; preds = %25, %30, %17, %2
  %39 = phi i1 [ %16, %2 ], [ %16, %17 ], [ %29, %30 ], [ %29, %25 ]
  ret i1 %39
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !202 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !188
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !190
  %7 = load ptr, ptr %0, align 8, !tbaa !191
  %8 = load ptr, ptr %4, align 8, !tbaa !96
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !203
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !193
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !84

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !188
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !195
  %22 = load ptr, ptr %19, align 8, !tbaa !96
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !204
  br i1 %25, label %30, label %26, !prof !205

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !206, !llvm.loop !207

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !208

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !209
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

declare noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !96
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !64 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !64 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !210
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !96
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !119

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %6 = load ptr, ptr %0, align 8, !tbaa !89
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 48, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #11
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !89
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !92
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !96
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15), !prof !211
  %20 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !91
  %21 = load i32, ptr %12, align 8, !tbaa !92
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !112

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !91
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !65
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !212, !llvm.loop !213
}

declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !96
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !64 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !64 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !210
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !96
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !121 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !123
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !214
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !122

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !215
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !96
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17)
  %22 = load i32, ptr %3, align 4, !tbaa !123
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !215
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !146
  %31 = load ptr, ptr %28, align 8, !tbaa !96
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  store ptr %21, ptr %29, align 8, !tbaa !146
  store i32 %13, ptr %6, align 8, !tbaa !214
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !146
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !65
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !65
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !216

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_GeneralAttributeCheck.cpp() #9 section ".text.startup" !prof !69 !PGOFuncName !217 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L23sGeneralAttCheckCleanupE)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!63}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!35 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheckC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_719IDDatatypeValidatorC1EPNS_13MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheckC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_721GeneralAttributeCheck11mapElementsEv, i64 1}
!37 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck11mapElementsEv, ptr @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE, i64 2}
!38 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck11mapElementsEv, ptr @_ZN11xercesc_2_77XMemorynwEm, i64 1}
!39 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck11mapElementsEv, ptr @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE, i64 1}
!40 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck11mapElementsEv, ptr @_ZN11xercesc_2_712XMLMutexLockD1Ev, i64 2}
!41 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck11mapElementsEv, ptr @_ZN11xercesc_2_721GeneralAttributeCheck15setUpValidatorsEv, i64 1}
!42 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck11mapElementsEv, ptr @_ZN11xercesc_2_721GeneralAttributeCheck13mapAttributesEv, i64 1}
!43 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck11mapElementsEv, ptr @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE, i64 1}
!44 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheckD2Ev, ptr @_ZN11xercesc_2_719IDDatatypeValidatorD1Ev, i64 1}
!45 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck15setUpValidatorsEv, ptr @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE, i64 1}
!46 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck15setUpValidatorsEv, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv, i64 1}
!47 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck15setUpValidatorsEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE11containsKeyEPKv, i64 3}
!48 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck15setUpValidatorsEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv, i64 3}
!49 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck15setUpValidatorsEv, ptr @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev, i64 1}
!50 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck13mapAttributesEv, ptr @_ZN11xercesc_2_77XMemorynwEm, i64 2}
!51 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck13mapAttributesEv, ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, i64 2}
!52 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck13mapAttributesEv, ptr @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt, i64 46}
!53 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck21reinitGeneralAttCheckEv, ptr @_ZN11xercesc_2_78XMLMutexD1Ev, i64 1}
!54 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck21reinitGeneralAttCheckEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!55 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck21reinitGeneralAttCheckEv, ptr @_ZN11xercesc_2_716ValueHashTableOfItED2Ev, i64 2}
!56 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj, i64 2}
!57 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 2}
!58 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 2}
!59 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck15checkAttributesEPKNS_10DOMElementEtPNS_14TraverseSchemaEbPNS_13ValueVectorOfIPNS_7DOMNodeEEE, ptr @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j, i64 649}
!60 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck15checkAttributesEPKNS_10DOMElementEtPNS_14TraverseSchemaEbPNS_13ValueVectorOfIPNS_7DOMNodeEEE, ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE, i64 648}
!61 = !{ptr @_ZN11xercesc_2_721GeneralAttributeCheck15checkAttributesEPKNS_10DOMElementEtPNS_14TraverseSchemaEbPNS_13ValueVectorOfIPNS_7DOMNodeEEE, ptr @_ZN11xercesc_2_721GeneralAttributeCheck8validateEPKNS_10DOMElementEPKtS5_sPNS_14TraverseSchemaE, i64 648}
!62 = !{ptr @_GLOBAL__sub_I_GeneralAttributeCheck.cpp, ptr @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev, i64 1}
!63 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!64 = !{!"function_entry_count", i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"any pointer", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C++ TBAA"}
!69 = !{!"function_entry_count", i64 1}
!70 = !{!71, !66, i64 0}
!71 = !{!"_ZTSN11xercesc_2_721GeneralAttributeCheckE", !66, i64 0, !66, i64 8, !72, i64 16}
!72 = !{!"_ZTSN11xercesc_2_719IDDatatypeValidatorE", !73, i64 0}
!73 = !{!"_ZTSN11xercesc_2_723StringDatatypeValidatorE", !74, i64 0}
!74 = !{!"_ZTSN11xercesc_2_723AbstractStringValidatorE", !75, i64 0, !79, i64 104, !79, i64 108, !79, i64 112, !77, i64 116, !66, i64 120}
!75 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !76, i64 0, !77, i64 8, !77, i64 9, !77, i64 10, !77, i64 11, !78, i64 12, !79, i64 16, !79, i64 20, !79, i64 24, !80, i64 28, !81, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !66, i64 96}
!76 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!77 = !{!"bool", !67, i64 0}
!78 = !{!"short", !67, i64 0}
!79 = !{!"int", !67, i64 0}
!80 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !67, i64 0}
!81 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !67, i64 0}
!82 = !{!71, !66, i64 8}
!83 = !{!"branch_weights", i32 1, i32 0}
!84 = !{!"branch_weights", i32 0, i32 1}
!85 = !{!86, !66, i64 8}
!86 = !{!"_ZTSN11xercesc_2_724DatatypeValidatorFactoryE", !76, i64 0, !66, i64 8, !66, i64 16}
!87 = !{!78, !78, i64 0}
!88 = !{!"function_entry_count", i64 2}
!89 = !{!90, !66, i64 0}
!90 = !{!"_ZTSN11xercesc_2_716ValueHashTableOfItEE", !66, i64 0, !66, i64 8, !79, i64 16, !66, i64 24}
!91 = !{!90, !66, i64 8}
!92 = !{!90, !79, i64 16}
!93 = !{!90, !66, i64 24}
!94 = !{!"branch_weights", i32 2, i32 0}
!95 = !{!"function_entry_count", i64 46}
!96 = !{!97, !97, i64 0}
!97 = !{!"vtable pointer", !68, i64 0}
!98 = !{!"VP", i32 0, i64 46, i64 3024540859536234746, i64 46}
!99 = !{!"branch_weights", i32 29, i32 17}
!100 = !{!101, !66, i64 16}
!101 = !{!"_ZTSN11xercesc_2_724ValueHashTableBucketElemItEE", !78, i64 0, !66, i64 8, !66, i64 16}
!102 = !{!"VP", i32 0, i64 17, i64 -1309333655503989351, i64 17}
!103 = !{!"branch_weights", i32 0, i32 17}
!104 = !{!"branch_weights", i32 17, i32 0}
!105 = distinct !{!105, !106, !107}
!106 = !{!"llvm.loop.mustprogress"}
!107 = !{!"llvm.loop.unroll.disable"}
!108 = !{!"branch_weights", i32 46, i32 0}
!109 = !{!101, !78, i64 0}
!110 = !{!"VP", i32 0, i64 46, i64 8345045103670217670, i64 46}
!111 = !{!101, !66, i64 8}
!112 = !{!"branch_weights", i32 1, i32 127}
!113 = !{!"branch_weights", i32 47, i32 46}
!114 = !{!"VP", i32 0, i64 46, i64 -7405368087501025645, i64 46}
!115 = distinct !{!115, !106, !107}
!116 = !{!"branch_weights", i32 2881, i32 127}
!117 = distinct !{!117, !106, !107}
!118 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!119 = !{!"branch_weights", i32 0, i32 2}
!120 = !{!"VP", i32 0, i64 2, i64 -5147776714887549805, i64 2}
!121 = !{!"function_entry_count", i64 550}
!122 = !{!"branch_weights", i32 0, i32 550}
!123 = !{!124, !79, i64 4}
!124 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_7DOMNodeEEE", !77, i64 0, !79, i64 4, !79, i64 8, !66, i64 16, !66, i64 24}
!125 = !{!"VP", i32 0, i64 550, i64 4403095094950252304, i64 550}
!126 = !{!"VP", i32 0, i64 550, i64 -5794726599806116480, i64 550}
!127 = !{!"branch_weights", i32 550, i32 17600}
!128 = !{!"branch_weights", i32 18150, i32 0}
!129 = distinct !{!129, !106, !107}
!130 = !{!"branch_weights", i32 80, i32 470}
!131 = !{!"VP", i32 0, i64 550, i64 -8686317911408893627, i64 550}
!132 = !{!"VP", i32 0, i64 550, i64 7185858393923916866, i64 550}
!133 = !{!"branch_weights", i32 549, i32 1}
!134 = !{!"VP", i32 0, i64 650, i64 1963853649726372592, i64 650}
!135 = !{!"VP", i32 0, i64 650, i64 1007997617537810451, i64 650}
!136 = !{!"branch_weights", i32 0, i32 650}
!137 = !{!"branch_weights", i32 43, i32 606}
!138 = !{!"branch_weights", i32 1, i32 42}
!139 = !{!"branch_weights", i32 0, i32 43}
!140 = !{!"branch_weights", i32 0, i32 649}
!141 = !{!"branch_weights", i32 649, i32 3245}
!142 = distinct !{!142, !106, !107}
!143 = !{!"branch_weights", i32 1, i32 648}
!144 = !{!"branch_weights", i32 616, i32 0, i32 32}
!145 = !{!"branch_weights", i32 32, i32 0, i32 0}
!146 = !{!124, !66, i64 16}
!147 = !{!"VP", i32 0, i64 648, i64 -9074832845527981440, i64 648}
!148 = !{!"branch_weights", i32 648, i32 0}
!149 = !{!"VP", i32 0, i64 648, i64 -4137491375604096784, i64 648}
!150 = !{!"branch_weights", i32 0, i32 648}
!151 = !{!67, !67, i64 0}
!152 = !{!"VP", i32 0, i64 648, i64 339751397936306462, i64 648}
!153 = !{!"branch_weights", i32 549, i32 101}
!154 = distinct !{!154, !106, !107}
!155 = !{!"branch_weights", i32 18462, i32 238}
!156 = !{!"branch_weights", i32 0, i32 238}
!157 = !{!"branch_weights", i32 550, i32 18150}
!158 = distinct !{!158, !106, !107}
!159 = !{!"function_entry_count", i64 917}
!160 = !{!"VP", i32 0, i64 917, i64 3024540859536234746, i64 917}
!161 = !{!"VP", i32 0, i64 1234, i64 -1309333655503989351, i64 1234}
!162 = !{!"branch_weights", i32 917, i32 317}
!163 = !{!"branch_weights", i32 0, i32 1234}
!164 = !{!"branch_weights", i32 0, i32 917}
!165 = !{!"function_entry_count", i64 648}
!166 = !{!167, !66, i64 200}
!167 = !{!"_ZTSN11xercesc_2_714TraverseSchemaE", !77, i64 0, !79, i64 4, !79, i64 8, !79, i64 12, !79, i64 16, !79, i64 20, !79, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !168, i64 96, !66, i64 136, !66, i64 144, !66, i64 152, !66, i64 160, !66, i64 168, !66, i64 176, !66, i64 184, !66, i64 192, !66, i64 200, !66, i64 208, !66, i64 216, !66, i64 224, !66, i64 232, !66, i64 240, !66, i64 248, !66, i64 256, !66, i64 264, !66, i64 272, !66, i64 280, !66, i64 288, !66, i64 296, !66, i64 304, !66, i64 312, !66, i64 320, !66, i64 328, !66, i64 336, !66, i64 344, !169, i64 352, !66, i64 376, !66, i64 384, !66, i64 392, !66, i64 400, !71, i64 408}
!168 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !79, i64 0, !79, i64 4, !79, i64 8, !77, i64 12, !66, i64 16, !66, i64 24, !66, i64 32}
!169 = !{!"_ZTSN11xercesc_2_716XSDErrorReporterE", !77, i64 8, !66, i64 16}
!170 = !{!171, !66, i64 168}
!171 = !{!"_ZTSN11xercesc_2_710SchemaInfoE", !77, i64 0, !77, i64 1, !78, i64 2, !79, i64 4, !79, i64 8, !79, i64 12, !79, i64 16, !79, i64 20, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !66, i64 96, !67, i64 104, !66, i64 160, !66, i64 168, !66, i64 176}
!172 = !{!"branch_weights", i32 603, i32 1, i32 13, i32 0, i32 0, i32 0, i32 11, i32 0, i32 1, i32 19, i32 0, i32 0}
!173 = !{!"branch_weights", i32 1, i32 9}
!174 = !{!"branch_weights", i32 10, i32 0}
!175 = !{!"branch_weights", i32 0, i32 13}
!176 = !{!"branch_weights", i32 13, i32 117}
!177 = !{!"branch_weights", i32 130, i32 0}
!178 = !{!"branch_weights", i32 13, i32 0}
!179 = !{!"branch_weights", i32 0, i32 11}
!180 = !{!"branch_weights", i32 88, i32 11}
!181 = !{!"branch_weights", i32 99, i32 0}
!182 = !{!"branch_weights", i32 628, i32 20}
!183 = !{!"VP", i32 0, i64 20, i64 2597660909157390599, i64 19, i64 3509633267900298476, i64 1}
!184 = !{!185, !66, i64 32}
!185 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !186, i64 8, !66, i64 16, !79, i64 24, !66, i64 32, !66, i64 40}
!186 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !67, i64 0}
!187 = !{!"function_entry_count", i64 181}
!188 = !{!189, !66, i64 40}
!189 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEEE", !66, i64 0, !77, i64 8, !66, i64 16, !79, i64 24, !79, i64 28, !79, i64 32, !66, i64 40}
!190 = !{!189, !79, i64 24}
!191 = !{!189, !66, i64 0}
!192 = !{!"VP", i32 0, i64 181, i64 3024540859536234746, i64 181}
!193 = !{!189, !66, i64 16}
!194 = !{!"branch_weights", i32 149, i32 1}
!195 = !{!196, !66, i64 16}
!196 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_17DatatypeValidatorEEE", !66, i64 0, !66, i64 8, !66, i64 16}
!197 = !{!"VP", i32 0, i64 148, i64 -1309333655503989351, i64 148}
!198 = !{!"branch_weights", i32 64, i32 42}
!199 = !{!"branch_weights", i32 147, i32 149}
!200 = distinct !{!200, !106, !107}
!201 = !{!"branch_weights", i32 42, i32 0}
!202 = !{!"function_entry_count", i64 108}
!203 = !{!"VP", i32 0, i64 108, i64 3024540859536234746, i64 108}
!204 = !{!"VP", i32 0, i64 118, i64 -1309333655503989351, i64 118}
!205 = !{!"branch_weights", i32 108, i32 10}
!206 = !{!"branch_weights", i32 0, i32 118}
!207 = distinct !{!207, !106, !107}
!208 = !{!"branch_weights", i32 0, i32 108}
!209 = !{!196, !66, i64 0}
!210 = !{!185, !66, i64 40}
!211 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!212 = !{!"branch_weights", i32 127, i32 2881}
!213 = distinct !{!213, !106, !107}
!214 = !{!124, !79, i64 8}
!215 = !{!124, !66, i64 24}
!216 = distinct !{!216, !106, !107}
!217 = !{!"GeneralAttributeCheck.cpp;_GLOBAL__sub_I_GeneralAttributeCheck.cpp"}

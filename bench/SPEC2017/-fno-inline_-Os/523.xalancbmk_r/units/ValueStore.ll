; ModuleID = 'ValueStore.cpp'
source_filename = "ValueStore.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ValueStore" = type { i8, i32, ptr, %"class.xercesc_2_7::FieldValueMap", ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::FieldValueMap" = type { ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::FieldActivator" = type { ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::IdentityConstraint" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::ValueStoreCache" = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::IC_KeyRef" = type { %"class.xercesc_2_7::IdentityConstraint.base", ptr }
%"class.xercesc_2_7::IdentityConstraint.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32 }>
%"class.xercesc_2_7::ValueHashTableOf" = type { ptr, ptr, i32, ptr }
%"struct.xercesc_2_7::ValueHashTableBucketElem" = type { i8, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.0" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf.1" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.3" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZNK11xercesc_2_710XMLScanner15getDoValidationEv = comdat any

$_ZN11xercesc_2_714FieldActivator11getMayMatchEPNS_8IC_FieldE = comdat any

$_ZN11xercesc_2_710XMLScanner12getValidatorEv = comdat any

$_ZNK11xercesc_2_713FieldValueMap22getDatatypeValidatorAtEj = comdat any

$_ZNK11xercesc_2_713FieldValueMap10getValueAtEj = comdat any

$_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt = comdat any

$_ZNK11xercesc_2_713FieldValueMap4sizeEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE10addElementEPS1_ = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE9elementAtEj = comdat any

$_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv = comdat any

$_ZN11xercesc_2_718IdentityConstraint10getFieldAtEj = comdat any

$_ZNK11xercesc_2_718IdentityConstraint14getElementNameEv = comdat any

$_ZNK11xercesc_2_718IdentityConstraint25getIdentityConstraintNameEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_715ValueStoreCache22getGlobalValueStoreForEPKNS_18IdentityConstraintE = comdat any

$_ZNK11xercesc_2_79IC_KeyRef6getKeyEv = comdat any

$_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716ValueHashTableOfIbE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEE10addElementERKS2_ = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE10addElementERKS2_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE12setElementAtERKS2_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItED2Ev = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItED0Ev = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEE4sizeEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTSN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfItEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfItEE = comdat any

$_ZTIN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfItEE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"./xercesc/util/ValueHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTVN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RefArrayVectorOfItEE, ptr @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev, ptr @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_716RefArrayVectorOfItEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local constant [36 x i8] c"N11xercesc_2_715BaseRefVectorOfItEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfItEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RefArrayVectorOfItEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfItEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfItEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"./xercesc/util/RefArrayVectorOf.c\00", align 1
@_ZTVN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE = linkonce_odr dso_local constant [50 x i8] c"N11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE = linkonce_odr dso_local constant [54 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE7cleanupEv] }, comdat, align 8

@_ZN11xercesc_2_710ValueStoreC1EPNS_18IdentityConstraintEPNS_10XMLScannerEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_710ValueStoreC2EPNS_18IdentityConstraintEPNS_10XMLScannerEPNS_13MemoryManagerE
@_ZN11xercesc_2_710ValueStoreD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_710ValueStoreD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710ValueStoreC2EPNS_18IdentityConstraintEPNS_10XMLScannerEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i8 0, ptr %0, align 8, !tbaa !147
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 4, !tbaa !155
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !156
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_713FieldValueMapC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %3) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %2, ptr %9, align 8, !tbaa !157
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 7
  store ptr %3, ptr %10, align 8, !tbaa !158
  %11 = icmp eq ptr %2, null
  br i1 %11, label %15, label %12, !prof !159

12:                                               ; preds = %4
  %13 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %2) #13
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i8 [ 0, %4 ], [ %14, %12 ]
  store i8 %16, ptr %0, align 8, !tbaa !147
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !160 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713FieldValueMapC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoValidationEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %3 = load i8, ptr %2, align 8, !tbaa !161, !range !174, !noundef !175
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_713FieldValueMapD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710ValueStoreD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #4 align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !176
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !177
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #14
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_713FieldValueMapD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_710ValueStore8addValueEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt(ptr nocapture noundef nonnull readnone align 8 dereferenceable(80) %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) local_unnamed_addr #6 align 2 !prof !179 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !180 {
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_714FieldActivator11getMayMatchEPNS_8IC_FieldE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #13
  br i1 %6, label %14, label %7, !prof !181

7:                                                ; preds = %5
  %8 = load i8, ptr %0, align 8, !tbaa !147, !range !174, !noundef !175
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !157
  %13 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %12) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef 97) #13
  br label %14

14:                                               ; preds = %10, %7, %5
  %15 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 3
  %16 = tail call noundef i32 @_ZNK11xercesc_2_713FieldValueMap7indexOfEPKNS_8IC_FieldE(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %2) #13
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %25, !prof !182

18:                                               ; preds = %14
  %19 = load i8, ptr %0, align 8, !tbaa !147, !range !174, !noundef !175
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %63, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !157
  %24 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %23) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %24, i32 noundef 98) #13
  br label %63

25:                                               ; preds = %14
  %26 = tail call noundef ptr @_ZNK11xercesc_2_713FieldValueMap22getDatatypeValidatorAtEj(ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef %16) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %35, !prof !181

28:                                               ; preds = %25
  %29 = tail call noundef ptr @_ZNK11xercesc_2_713FieldValueMap10getValueAtEj(ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef %16) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35, !prof !181

31:                                               ; preds = %28
  %32 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !155
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 4, !tbaa !155
  br label %35

35:                                               ; preds = %31, %28, %25
  tail call void @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %2, ptr noundef %3, ptr noundef %4) #13
  %36 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !155
  %38 = tail call noundef i32 @_ZNK11xercesc_2_713FieldValueMap4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %63, !prof !181

40:                                               ; preds = %35
  %41 = tail call noundef zeroext i1 @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %15) #13
  br i1 %41, label %42, label %43, !prof !183

42:                                               ; preds = %40
  tail call void @_ZN11xercesc_2_710ValueStore14duplicateValueEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
  br label %43

43:                                               ; preds = %42, %40
  %44 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !176
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %55, !prof !184

47:                                               ; preds = %43
  %48 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !158
  %50 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %49) #13
  %51 = load ptr, ptr %48, align 8, !tbaa !158
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %50, i32 noundef 4, i1 noundef zeroext true, ptr noundef %51) #13
          to label %52 unwind label %53

52:                                               ; preds = %47
  store ptr %50, ptr %44, align 8, !tbaa !176
  br label %55

53:                                               ; preds = %47
  %54 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %50, ptr noundef %49) #14
  br label %64

55:                                               ; preds = %52, %43
  %56 = phi ptr [ %50, %52 ], [ %45, %43 ]
  %57 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !158
  %59 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %58) #13
  invoke void @_ZN11xercesc_2_713FieldValueMapC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull align 8 dereferenceable(32) %15) #13
          to label %60 unwind label %61

60:                                               ; preds = %55
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %56, ptr noundef nonnull %59) #13
  br label %63

61:                                               ; preds = %55
  %62 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %59, ptr noundef %58) #14
  br label %64

63:                                               ; preds = %35, %60, %18, %21
  ret void

64:                                               ; preds = %61, %53
  %65 = phi { ptr, i32 } [ %62, %61 ], [ %54, %53 ]
  resume { ptr, i32 } %65
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_714FieldActivator11getMayMatchEPNS_8IC_FieldE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !180 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !185
  %5 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !187
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %5) #13
  %7 = load i8, ptr %6, align 1, !tbaa !188, !range !174, !noundef !175
  %8 = icmp ne i8 %7, 0
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %3 = load ptr, ptr %2, align 8, !tbaa !189
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_713FieldValueMap7indexOfEPKNS_8IC_FieldE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713FieldValueMap22getDatatypeValidatorAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !190 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !191
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !192

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %1) #13
  %8 = load ptr, ptr %7, align 8, !tbaa !187
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713FieldValueMap10getValueAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !190 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !193
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !192

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #13
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !194 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %1, ptr %5, align 8, !tbaa !187
  store ptr %2, ptr %6, align 8, !tbaa !187
  %7 = load ptr, ptr %0, align 8, !tbaa !195
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31, !prof !196

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !197
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %11) #13
  %13 = load ptr, ptr %10, align 8, !tbaa !197
  invoke void @_ZN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 4, ptr noundef %13, i1 noundef zeroext false) #13
          to label %14 unwind label %25

14:                                               ; preds = %9
  store ptr %12, ptr %0, align 8, !tbaa !195
  %15 = load ptr, ptr %10, align 8, !tbaa !197
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %15) #13
  %17 = load ptr, ptr %10, align 8, !tbaa !197
  invoke void @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 4, ptr noundef %17, i1 noundef zeroext false) #13
          to label %18 unwind label %27

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 1
  store ptr %16, ptr %19, align 8, !tbaa !191
  %20 = load ptr, ptr %10, align 8, !tbaa !197
  %21 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %20) #13
  %22 = load ptr, ptr %10, align 8, !tbaa !197
  invoke void @_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef 4, i1 noundef zeroext true, ptr noundef %22) #13
          to label %23 unwind label %29

23:                                               ; preds = %18
  %24 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 2
  store ptr %21, ptr %24, align 8, !tbaa !193
  br label %31

25:                                               ; preds = %9
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #14
  br label %55

27:                                               ; preds = %14
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %15) #14
  br label %55

29:                                               ; preds = %18
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %21, ptr noundef %20) #14
  br label %55

31:                                               ; preds = %23, %4
  %32 = tail call noundef i32 @_ZNK11xercesc_2_713FieldValueMap7indexOfEPKNS_8IC_FieldE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #13
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %43, !prof !196

34:                                               ; preds = %31
  %35 = load ptr, ptr %0, align 8, !tbaa !195
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %36 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !191
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  %38 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !193
  %40 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !197
  %42 = call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %41) #13
  call void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %39, ptr noundef %42) #13
  br label %54

43:                                               ; preds = %31
  %44 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !191
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE12setElementAtERKS2_j(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %32) #13
  %46 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !193
  %48 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !197
  %50 = call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %49) #13
  %51 = load ptr, ptr %47, align 8, !tbaa !177
  %52 = getelementptr inbounds ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8
  call void %53(ptr noundef nonnull align 8 dereferenceable(40) %47, ptr noundef %50, i32 noundef %32) #13
  br label %54

54:                                               ; preds = %43, %34
  ret void

55:                                               ; preds = %29, %27, %25
  %56 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ], [ %26, %25 ]
  resume { ptr, i32 } %56
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713FieldValueMap4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !198 {
  %2 = load ptr, ptr %0, align 8, !tbaa !195
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !199

4:                                                ; preds = %1
  %5 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !194 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !176
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6, !prof !200

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZNK11xercesc_2_713FieldValueMap4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %8 = load ptr, ptr %3, align 8, !tbaa !176
  %9 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %33, label %11, !prof !201

11:                                               ; preds = %6
  %12 = icmp eq i32 %7, 0
  br label %13

13:                                               ; preds = %11, %30
  %14 = phi i32 [ 0, %11 ], [ %31, %30 ]
  %15 = load ptr, ptr %3, align 8, !tbaa !176
  %16 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef %14) #13
  %17 = tail call noundef i32 @_ZNK11xercesc_2_713FieldValueMap4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %16) #13
  %18 = icmp eq i32 %7, %17
  br i1 %18, label %19, label %30, !prof !202

19:                                               ; preds = %13
  br i1 %12, label %33, label %23, !prof !203

20:                                               ; preds = %23
  %21 = add nuw i32 %24, 1
  %22 = icmp eq i32 %21, %7
  br i1 %22, label %33, label %23, !prof !204, !llvm.loop !205

23:                                               ; preds = %19, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %19 ]
  %25 = tail call noundef ptr @_ZNK11xercesc_2_713FieldValueMap22getDatatypeValidatorAtEj(ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef %24) #13
  %26 = tail call noundef ptr @_ZNK11xercesc_2_713FieldValueMap10getValueAtEj(ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef %24) #13
  %27 = tail call noundef ptr @_ZNK11xercesc_2_713FieldValueMap22getDatatypeValidatorAtEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %24) #13
  %28 = tail call noundef ptr @_ZNK11xercesc_2_713FieldValueMap10getValueAtEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %24) #13
  %29 = tail call noundef zeroext i1 @_ZN11xercesc_2_710ValueStore13isDuplicateOfEPNS_17DatatypeValidatorEPKtS2_S4_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28) #13
  br i1 %29, label %20, label %30, !prof !207

30:                                               ; preds = %23, %13
  %31 = add nuw i32 %14, 1
  %32 = icmp eq i32 %31, %9
  br i1 %32, label %33, label %13, !prof !208, !llvm.loop !209

33:                                               ; preds = %30, %19, %20, %2, %6
  %34 = phi i1 [ false, %6 ], [ false, %2 ], [ true, %20 ], [ true, %19 ], [ false, %30 ]
  ret i1 %34
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710ValueStore14duplicateValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 !prof !210 {
  %2 = load i8, ptr %0, align 8, !tbaa !147, !range !174, !noundef !175
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %19, label %4, !prof !211

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !156
  %7 = load ptr, ptr %6, align 8, !tbaa !177
  %8 = getelementptr inbounds ptr, ptr %7, i64 5
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef signext i16 %9(ptr noundef nonnull align 8 dereferenceable(52) %6) #13
  switch i16 %10, label %19 [
    i16 0, label %12
    i16 1, label %11
  ]

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %4, %11
  %13 = phi i32 [ 105, %11 ], [ 104, %4 ]
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !157
  %16 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %15) #13
  %17 = load ptr, ptr %5, align 8, !tbaa !156
  %18 = tail call noundef ptr @_ZNK11xercesc_2_718IdentityConstraint14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(52) %17) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef %13, ptr noundef %18, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %19

19:                                               ; preds = %12, %4, %1
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 !prof !212 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !213 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !214
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !216
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !187
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !216
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713FieldValueMapC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710ValueStore6appendEPKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !176
  %5 = icmp eq ptr %4, null
  br i1 %5, label %39, label %6, !prof !218

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %39, label %9, !prof !219

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 7
  br label %12

12:                                               ; preds = %9, %34
  %13 = phi i32 [ 0, %9 ], [ %35, %34 ]
  %14 = load ptr, ptr %3, align 8, !tbaa !176
  %15 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef %13) #13
  %16 = tail call noundef zeroext i1 @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %15) #13
  br i1 %16, label %34, label %17, !prof !220

17:                                               ; preds = %12
  %18 = load ptr, ptr %10, align 8, !tbaa !176
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %27, !prof !221

20:                                               ; preds = %17
  %21 = load ptr, ptr %11, align 8, !tbaa !158
  %22 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %21) #13
  %23 = load ptr, ptr %11, align 8, !tbaa !158
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %22, i32 noundef 4, i1 noundef zeroext true, ptr noundef %23) #13
          to label %24 unwind label %25

24:                                               ; preds = %20
  store ptr %22, ptr %10, align 8, !tbaa !176
  br label %27

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %22, ptr noundef %21) #14
  br label %37

27:                                               ; preds = %24, %17
  %28 = phi ptr [ %22, %24 ], [ %18, %17 ]
  %29 = load ptr, ptr %11, align 8, !tbaa !158
  %30 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %29) #13
  invoke void @_ZN11xercesc_2_713FieldValueMapC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %15) #13
          to label %31 unwind label %32

31:                                               ; preds = %27
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull %30) #13
  br label %34

32:                                               ; preds = %27
  %33 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %30, ptr noundef %29) #14
  br label %37

34:                                               ; preds = %31, %12
  %35 = add nuw i32 %13, 1
  %36 = icmp eq i32 %35, %7
  br i1 %36, label %39, label %12, !prof !222, !llvm.loop !223

37:                                               ; preds = %32, %25
  %38 = phi { ptr, i32 } [ %33, %32 ], [ %26, %25 ]
  resume { ptr, i32 } %38

39:                                               ; preds = %34, %6, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !224 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !216
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !225 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !216
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !226

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !214
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !187
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710ValueStore15startValueScopeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 !prof !180 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !155
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !156
  %5 = tail call noundef i32 @_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv(ptr noundef nonnull align 8 dereferenceable(52) %4) #13
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9, !prof !228

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 3
  br label %10

9:                                                ; preds = %10, %1
  ret void

10:                                               ; preds = %7, %10
  %11 = phi i32 [ 0, %7 ], [ %14, %10 ]
  %12 = load ptr, ptr %3, align 8, !tbaa !156
  %13 = tail call noundef ptr @_ZN11xercesc_2_718IdentityConstraint10getFieldAtEj(ptr noundef nonnull align 8 dereferenceable(52) %12, i32 noundef %11) #13
  tail call void @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %13, ptr noundef null, ptr noundef null) #13
  %14 = add nuw nsw i32 %11, 1
  %15 = icmp eq i32 %14, %5
  br i1 %15, label %9, label %10, !prof !228, !llvm.loop !229
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv(ptr noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #3 comdat align 2 !prof !230 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !231
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !233

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718IdentityConstraint10getFieldAtEj(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !194 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !231
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !234

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #13
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710ValueStore13endValueScopeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 !prof !180 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !155
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !156
  br i1 %4, label %7, label %22, !prof !182

7:                                                ; preds = %1
  %8 = load ptr, ptr %6, align 8, !tbaa !177
  %9 = getelementptr inbounds ptr, ptr %8, i64 5
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef signext i16 %10(ptr noundef nonnull align 8 dereferenceable(52) %6) #13
  %12 = icmp ne i16 %11, 1
  %13 = load i8, ptr %0, align 8, !range !174
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %56, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !157
  %19 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %18) #13
  %20 = load ptr, ptr %5, align 8, !tbaa !156
  %21 = tail call noundef ptr @_ZNK11xercesc_2_718IdentityConstraint14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(52) %20) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef 99, ptr noundef %21, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %56

22:                                               ; preds = %1
  %23 = tail call noundef i32 @_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv(ptr noundef nonnull align 8 dereferenceable(52) %6) #13
  %24 = icmp eq i32 %3, %23
  br i1 %24, label %56, label %25, !prof !181

25:                                               ; preds = %22
  %26 = load i8, ptr %0, align 8, !tbaa !147, !range !174, !noundef !175
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %5, align 8, !tbaa !156
  %30 = load ptr, ptr %29, align 8, !tbaa !177
  %31 = getelementptr inbounds ptr, ptr %30, i64 5
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef signext i16 %32(ptr noundef nonnull align 8 dereferenceable(52) %29) #13
  switch i16 %33, label %56 [
    i16 0, label %34
    i16 1, label %40
    i16 2, label %48
  ]

34:                                               ; preds = %28
  %35 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !157
  %37 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %36) #13
  %38 = load ptr, ptr %5, align 8, !tbaa !156
  %39 = tail call noundef ptr @_ZNK11xercesc_2_718IdentityConstraint14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(52) %38) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %37, i32 noundef 100, ptr noundef %39, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %56

40:                                               ; preds = %28
  %41 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !157
  %43 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %42) #13
  %44 = load ptr, ptr %5, align 8, !tbaa !156
  %45 = tail call noundef ptr @_ZNK11xercesc_2_718IdentityConstraint14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(52) %44) #13
  %46 = load ptr, ptr %5, align 8, !tbaa !156
  %47 = tail call noundef ptr @_ZNK11xercesc_2_718IdentityConstraint25getIdentityConstraintNameEv(ptr noundef nonnull align 8 dereferenceable(52) %46) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %43, i32 noundef 101, ptr noundef %45, ptr noundef %47, ptr noundef null, ptr noundef null) #13
  br label %56

48:                                               ; preds = %28
  %49 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !157
  %51 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %50) #13
  %52 = load ptr, ptr %5, align 8, !tbaa !156
  %53 = tail call noundef ptr @_ZNK11xercesc_2_718IdentityConstraint14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(52) %52) #13
  %54 = load ptr, ptr %5, align 8, !tbaa !156
  %55 = tail call noundef ptr @_ZNK11xercesc_2_718IdentityConstraint25getIdentityConstraintNameEv(ptr noundef nonnull align 8 dereferenceable(52) %54) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %51, i32 noundef 102, ptr noundef %53, ptr noundef %55, ptr noundef null, ptr noundef null) #13
  br label %56

56:                                               ; preds = %34, %40, %48, %28, %7, %16, %25, %22
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_718IdentityConstraint14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #4 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !235
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_718IdentityConstraint25getIdentityConstraintNameEv(ptr noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #4 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !236
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710ValueStore13isDuplicateOfEPNS_17DatatypeValidatorEPKtS2_S4_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 !prof !237 {
  %6 = icmp ne ptr %1, null
  %7 = icmp ne ptr %3, null
  %8 = and i1 %6, %7
  br i1 %8, label %11, label %9, !prof !238

9:                                                ; preds = %5
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef %4) #13
  br label %36

11:                                               ; preds = %5
  %12 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %2) #13
  %13 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %4) #13
  %14 = icmp eq i32 %12, 0
  %15 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %19, !prof !239

16:                                               ; preds = %11
  %17 = icmp eq ptr %1, %3
  %18 = and i1 %17, %15
  br label %36

19:                                               ; preds = %11
  br i1 %15, label %36, label %20, !prof !240

20:                                               ; preds = %19
  %21 = icmp eq ptr %1, %3
  %22 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !158
  br i1 %21, label %24, label %30, !prof !202

24:                                               ; preds = %20
  %25 = load ptr, ptr %1, align 8, !tbaa !177
  %26 = getelementptr inbounds ptr, ptr %25, i64 10
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef i32 %27(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %2, ptr noundef %4, ptr noundef %23) #13
  %29 = icmp eq i32 %28, 0
  br label %36

30:                                               ; preds = %20
  %31 = load ptr, ptr %3, align 8, !tbaa !177
  %32 = getelementptr inbounds ptr, ptr %31, i64 10
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef i32 %33(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef %2, ptr noundef %4, ptr noundef %23) #13
  %35 = icmp eq i32 %34, 0
  br label %36

36:                                               ; preds = %16, %24, %30, %19, %9
  %37 = phi i1 [ %10, %9 ], [ %29, %24 ], [ %35, %30 ], [ false, %19 ], [ %18, %16 ]
  ret i1 %37
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !241 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !242

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !243
  %8 = load i16, ptr %1, align 2, !tbaa !243
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !245

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !246

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !243
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !247

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !248

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !243
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !249

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !250

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !243
  %28 = load i16, ptr %26, align 2, !tbaa !243
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !251, !llvm.loop !252

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #4 comdat align 2 !prof !253 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !254

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !243
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !255

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !243
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !256, !llvm.loop !257

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
define dso_local void @_ZN11xercesc_2_710ValueStore20endDcocumentFragmentEPNS_15ValueStoreCacheE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !258 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !156
  %5 = load ptr, ptr %4, align 8, !tbaa !177
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef signext i16 %7(ptr noundef nonnull align 8 dereferenceable(52) %4) #13
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %50, !prof !259

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !156
  %12 = tail call noundef ptr @_ZNK11xercesc_2_79IC_KeyRef6getKeyEv(ptr noundef nonnull align 8 dereferenceable(64) %11) #13
  %13 = tail call noundef ptr @_ZN11xercesc_2_715ValueStoreCache22getGlobalValueStoreForEPKNS_18IdentityConstraintE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %12) #13
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !260
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %25, !prof !261

16:                                               ; preds = %10
  %17 = load i8, ptr %0, align 8, !tbaa !147, !range !174, !noundef !175
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %50, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !157
  %22 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %21) #13
  %23 = load ptr, ptr %3, align 8, !tbaa !156
  %24 = tail call noundef ptr @_ZNK11xercesc_2_718IdentityConstraint25getIdentityConstraintNameEv(ptr noundef nonnull align 8 dereferenceable(52) %23) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %22, i32 noundef 106, ptr noundef %24, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %50

25:                                               ; preds = %10
  %26 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !176
  %28 = icmp eq ptr %27, null
  br i1 %28, label %50, label %29, !prof !262

29:                                               ; preds = %25
  %30 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %27) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %50, label %32, !prof !263

32:                                               ; preds = %29, %47
  %33 = phi i32 [ %48, %47 ], [ 0, %29 ]
  %34 = load ptr, ptr %26, align 8, !tbaa !176
  %35 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %34, i32 noundef %33) #13
  %36 = load ptr, ptr %14, align 8, !tbaa !260
  %37 = tail call noundef zeroext i1 @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE(ptr noundef nonnull align 8 dereferenceable(80) %36, ptr noundef %35) #13
  br i1 %37, label %47, label %38, !prof !264

38:                                               ; preds = %32
  %39 = load i8, ptr %0, align 8, !tbaa !147, !range !174, !noundef !175
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !157
  %44 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %43) #13
  %45 = load ptr, ptr %3, align 8, !tbaa !156
  %46 = tail call noundef ptr @_ZNK11xercesc_2_718IdentityConstraint14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(52) %45) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %44, i32 noundef 107, ptr noundef %46, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %47

47:                                               ; preds = %41, %38, %32
  %48 = add nuw i32 %33, 1
  %49 = icmp eq i32 %48, %30
  br i1 %49, label %50, label %32, !prof !265, !llvm.loop !266

50:                                               ; preds = %47, %25, %29, %16, %19, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ValueStoreCache22getGlobalValueStoreForEPKNS_18IdentityConstraintE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !258 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !267
  %5 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79IC_KeyRef6getKeyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #4 comdat align 2 !prof !258 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IC_KeyRef", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !269
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710ValueStore14reportNilErrorEPNS_18IdentityConstraintE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !179 {
  %3 = load i8, ptr %0, align 8, !tbaa !147, !range !174, !noundef !175
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !177
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef signext i16 %8(ptr noundef nonnull align 8 dereferenceable(52) %1) #13
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !157
  %14 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %13) #13
  %15 = tail call noundef ptr @_ZNK11xercesc_2_718IdentityConstraint14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(52) %1) #13
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 103, ptr noundef %15, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %16

16:                                               ; preds = %11, %5, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !180 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %5 = call noundef ptr @_ZN11xercesc_2_716ValueHashTableOfIbE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12, !prof !182

7:                                                ; preds = %3
  %8 = call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 50, ptr noundef %2) #13
          to label %9 unwind label %10

9:                                                ; preds = %7
  call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  resume { ptr, i32 } %11

12:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_716ValueHashTableOfIbE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !271 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !272
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !274
  %8 = load ptr, ptr %0, align 8, !tbaa !275
  %9 = load ptr, ptr %5, align 8, !tbaa !177
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !276
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !277
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !187
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !278

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !272
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !279
  %23 = load ptr, ptr %20, align 8, !tbaa !177
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27, !prof !281

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !187
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !282, !llvm.loop !283

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !179 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !179 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !284
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !179 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !190 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !287
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !289

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !290
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 206, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !291
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !179 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !179 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !284
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !179 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !292 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !293
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !295

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !296
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !297
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !187
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #3 comdat align 2 !prof !298 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i8 %5, ptr %0, align 8, !tbaa !299
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !301
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !302
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !303
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !304
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = load ptr, ptr %2, align 8, !tbaa !177
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %11) #13
  store ptr %15, ptr %8, align 8, !tbaa !303
  %16 = load i32, ptr %7, align 8, !tbaa !302
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %18, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #3 comdat align 2 !prof !298 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i8 %5, ptr %0, align 8, !tbaa !305
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !287
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !306
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !291
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !290
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = load ptr, ptr %2, align 8, !tbaa !177
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %11) #13
  store ptr %15, ptr %8, align 8, !tbaa !291
  %16 = load i32, ptr %7, align 8, !tbaa !306
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %18, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 !prof !307 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !298 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #13
  %3 = load ptr, ptr %1, align 8, !tbaa !187
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !301
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  store ptr %3, ptr %9, align 8, !tbaa !187
  %10 = add i32 %7, 1
  store i32 %10, ptr %6, align 4, !tbaa !301
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !298 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #13
  %3 = load ptr, ptr %1, align 8, !tbaa !187
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !291
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !287
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  store ptr %3, ptr %9, align 8, !tbaa !187
  %10 = add i32 %7, 1
  store i32 %10, ptr %6, align 4, !tbaa !287
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !308 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !297
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !293
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !187
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !293
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !309 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !310

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #13
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !177
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE12setElementAtERKS2_j(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !311 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !287
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7, !prof !312

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !290
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 126, i32 noundef 116, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #11
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = load ptr, ptr %1, align 8, !tbaa !187
  %16 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !291
  %18 = zext i32 %2 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  store ptr %15, ptr %19, align 8, !tbaa !187
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 !prof !307 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !313
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !293
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !314
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !297
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !296
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !177
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !297
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19, !prof !315

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !297
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !187
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !prof !316, !llvm.loop !317
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !307 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !313, !range !174, !noundef !175
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !318

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !293
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !319

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %21
  %13 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !296
  %15 = load ptr, ptr %11, align 8, !tbaa !297
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !187
  %18 = load ptr, ptr %14, align 8, !tbaa !177
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17) #13
          to label %21 unwind label %35

21:                                               ; preds = %12
  %22 = add nuw nsw i64 %13, 1
  %23 = load i32, ptr %6, align 4, !tbaa !293
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %12, label %26, !prof !320, !llvm.loop !321

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !296
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !297
  %31 = load ptr, ptr %28, align 8, !tbaa !177
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30) #13
          to label %34 unwind label %37

34:                                               ; preds = %26
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  ret void

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          catch ptr null
  br label %39

37:                                               ; preds = %26
  %38 = landingpad { ptr, i32 }
          catch ptr null
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi { ptr, i32 } [ %36, %35 ], [ %38, %37 ]
  %41 = extractvalue { ptr, i32 } %40, 0
  tail call void @__clang_call_terminate(ptr %41) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !311 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !293
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7, !prof !312

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !296
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.3, i32 noundef 52, i32 noundef 116, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #11
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !313, !range !174, !noundef !175
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20, !prof !322

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !296
  %23 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !297
  %25 = zext i32 %2 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !187
  %28 = load ptr, ptr %22, align 8, !tbaa !177
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %27) #13
  br label %31

31:                                               ; preds = %18, %20
  %32 = phi i64 [ %19, %18 ], [ %25, %20 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !297
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !187
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !293
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %10

9:                                                ; preds = %24, %1
  store i32 0, ptr %2, align 4, !tbaa !293
  ret void

10:                                               ; preds = %5, %24
  %11 = phi i32 [ %3, %5 ], [ %25, %24 ]
  %12 = phi i64 [ 0, %5 ], [ %28, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !313, !range !174, !noundef !175
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %7, align 8, !tbaa !296
  %17 = load ptr, ptr %8, align 8, !tbaa !297
  %18 = getelementptr inbounds ptr, ptr %17, i64 %12
  %19 = load ptr, ptr %18, align 8, !tbaa !187
  %20 = load ptr, ptr %16, align 8, !tbaa !177
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %19) #13
  %23 = load i32, ptr %2, align 4, !tbaa !293
  br label %24

24:                                               ; preds = %15, %10
  %25 = phi i32 [ %23, %15 ], [ %11, %10 ]
  %26 = load ptr, ptr %8, align 8, !tbaa !297
  %27 = getelementptr inbounds ptr, ptr %26, i64 %12
  store ptr null, ptr %27, align 8, !tbaa !187
  %28 = add nuw nsw i64 %12, 1
  %29 = zext i32 %25 to i64
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %10, label %9, !llvm.loop !323
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !179 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !293
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !296
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 77, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !313, !range !174, !noundef !175
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !296
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !297
  %22 = zext i32 %1 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !187
  %25 = load ptr, ptr %19, align 8, !tbaa !177
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %24) #13
  %28 = load i32, ptr %3, align 4, !tbaa !293
  br label %29

29:                                               ; preds = %17, %13
  %30 = phi i32 [ %28, %17 ], [ %4, %13 ]
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
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !297
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !297
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !297
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !187
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !187
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !324

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !187
  store i32 %31, ptr %3, align 4, !tbaa !293
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !293
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !293
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !313, !range !174, !noundef !175
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !296
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !297
  %15 = zext i32 %6 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !187
  %18 = load ptr, ptr %12, align 8, !tbaa !177
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %17) #13
  br label %21

21:                                               ; preds = %1, %10, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !313, !range !174, !noundef !175
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !293
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %21, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !296
  %15 = load ptr, ptr %11, align 8, !tbaa !297
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !187
  %18 = load ptr, ptr %14, align 8, !tbaa !177
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17) #13
  %21 = add nuw nsw i64 %13, 1
  %22 = load i32, ptr %6, align 4, !tbaa !293
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %12, label %25, !llvm.loop !325

25:                                               ; preds = %12, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !296
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !297
  %30 = load ptr, ptr %27, align 8, !tbaa !177
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !307 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !179 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !293
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !296
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.2, i32 noundef 67, i32 noundef 116, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #11
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !313, !range !174, !noundef !175
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !297
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !187
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @_ZdlPv(ptr noundef nonnull %25) #16
  br label %28

28:                                               ; preds = %18, %20, %27
  %29 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !297
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  store ptr %1, ptr %32, align 8, !tbaa !187
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !293
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %22, %1
  store i32 0, ptr %2, align 4, !tbaa !293
  ret void

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %3, %5 ], [ %23, %22 ]
  %11 = phi i64 [ 0, %5 ], [ %26, %22 ]
  %12 = load i8, ptr %6, align 8, !tbaa !313, !range !174, !noundef !175
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !297
  br i1 %13, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !187
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef nonnull %17) #16
  %20 = load ptr, ptr %7, align 8, !tbaa !297
  %21 = load i32, ptr %2, align 4, !tbaa !293
  br label %22

22:                                               ; preds = %15, %19, %9
  %23 = phi i32 [ %10, %15 ], [ %21, %19 ], [ %10, %9 ]
  %24 = phi ptr [ %14, %15 ], [ %20, %19 ], [ %14, %9 ]
  %25 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr null, ptr %25, align 8, !tbaa !187
  %26 = add nuw nsw i64 %11, 1
  %27 = zext i32 %23 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %9, label %8, !llvm.loop !326
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !179 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !293
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !296
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 144, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !313, !range !174, !noundef !175
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !297
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !187
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef nonnull %22) #16
  %25 = load i32, ptr %3, align 4, !tbaa !293
  br label %26

26:                                               ; preds = %17, %24, %13
  %27 = phi i32 [ %4, %17 ], [ %25, %24 ], [ %4, %13 ]
  %28 = add i32 %27, -1
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = icmp ugt i32 %28, %1
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = zext i32 %28 to i64
  br label %43

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %28 to i64
  br label %48

38:                                               ; preds = %26
  %39 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !297
  %41 = zext i32 %1 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  br label %56

43:                                               ; preds = %48, %32
  %44 = phi i64 [ %33, %32 ], [ %37, %48 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !297
  %47 = getelementptr inbounds ptr, ptr %46, i64 %44
  br label %56

48:                                               ; preds = %34, %48
  %49 = phi i64 [ %36, %34 ], [ %51, %48 ]
  %50 = load ptr, ptr %35, align 8, !tbaa !297
  %51 = add nuw nsw i64 %49, 1
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !187
  %54 = getelementptr inbounds ptr, ptr %50, i64 %49
  store ptr %53, ptr %54, align 8, !tbaa !187
  %55 = icmp eq i64 %51, %37
  br i1 %55, label %43, label %48, !llvm.loop !327

56:                                               ; preds = %43, %38
  %57 = phi ptr [ %47, %43 ], [ %42, %38 ]
  store ptr null, ptr %57, align 8, !tbaa !187
  store i32 %28, ptr %3, align 4, !tbaa !293
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !293
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !293
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !313, !range !174, !noundef !175
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !297
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !187
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZdlPv(ptr noundef nonnull %15) #16
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !313, !range !174, !noundef !175
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !293
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !297
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !187
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef nonnull %16) #16
  %19 = load i32, ptr %6, align 4, !tbaa !293
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !llvm.loop !328

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !296
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !297
  %30 = load ptr, ptr %27, align 8, !tbaa !177
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !298 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !301
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !302
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !329

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !304
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !177
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #13
  %22 = load i32, ptr %3, align 4, !tbaa !301
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !304
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !303
  %31 = load ptr, ptr %28, align 8, !tbaa !177
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30) #13
  store ptr %21, ptr %29, align 8, !tbaa !303
  store i32 %13, ptr %6, align 8, !tbaa !302
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !303
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !187
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !187
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !330

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !298 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !287
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !306
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !329

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !290
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !177
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #13
  %22 = load i32, ptr %3, align 4, !tbaa !287
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !290
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !291
  %31 = load ptr, ptr %28, align 8, !tbaa !177
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30) #13
  store ptr %21, ptr %29, align 8, !tbaa !291
  store i32 %13, ptr %6, align 8, !tbaa !306
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !291
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !187
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !187
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !331

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !308 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !293
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !314
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !332

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !296
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !177
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !293
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !219

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45, !prof !333

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !187
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !297
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !187
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !187
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !prof !334, !llvm.loop !335

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !296
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !297
  %49 = load ptr, ptr %46, align 8, !tbaa !177
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !297
  store i32 %12, ptr %6, align 8, !tbaa !314
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !336 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !301
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !230 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !337
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !271 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !337
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !339

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !340
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !341
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !187
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !342 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !343

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !344
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !346
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !348
  %8 = load ptr, ptr %0, align 8, !tbaa !349
  %9 = load ptr, ptr %5, align 8, !tbaa !177
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !276
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !350
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !187
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !351

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !346
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !352
  %23 = load ptr, ptr %20, align 8, !tbaa !177
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27, !prof !259

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !187
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !353, !llvm.loop !354

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 !prof !212 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !355
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !216
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !356
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !214
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !227
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !177
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !214
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19, !prof !219

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !214
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !187
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !prof !357, !llvm.loop !358
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !177
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !355, !range !174, !noundef !175
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5, !prof !359

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !216
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9, !prof !219

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !214
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !187
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_713FieldValueMapD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #14
  %19 = load i32, ptr %6, align 4, !tbaa !216
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !prof !360, !llvm.loop !361

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !227
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !214
  %30 = load ptr, ptr %27, align 8, !tbaa !177
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #13
          to label %33 unwind label %34

33:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  ret void

34:                                               ; preds = %25
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  tail call void @__clang_call_terminate(ptr %36) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !179 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !216
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.2, i32 noundef 67, i32 noundef 116, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #11
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !355, !range !174, !noundef !175
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !214
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !187
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_713FieldValueMapD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %25) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %25) #14
  br label %28

28:                                               ; preds = %18, %20, %27
  %29 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !214
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  store ptr %1, ptr %32, align 8, !tbaa !187
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !216
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %22, %1
  store i32 0, ptr %2, align 4, !tbaa !216
  ret void

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %3, %5 ], [ %23, %22 ]
  %11 = phi i64 [ 0, %5 ], [ %26, %22 ]
  %12 = load i8, ptr %6, align 8, !tbaa !355, !range !174, !noundef !175
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !214
  br i1 %13, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !187
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_713FieldValueMapD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %17) #14
  %20 = load ptr, ptr %7, align 8, !tbaa !214
  %21 = load i32, ptr %2, align 4, !tbaa !216
  br label %22

22:                                               ; preds = %15, %19, %9
  %23 = phi i32 [ %10, %15 ], [ %21, %19 ], [ %10, %9 ]
  %24 = phi ptr [ %14, %15 ], [ %20, %19 ], [ %14, %9 ]
  %25 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr null, ptr %25, align 8, !tbaa !187
  %26 = add nuw nsw i64 %11, 1
  %27 = zext i32 %23 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %9, label %8, !llvm.loop !362
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !179 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !216
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 144, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !355, !range !174, !noundef !175
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !214
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !187
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_713FieldValueMapD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %22) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #14
  %25 = load i32, ptr %3, align 4, !tbaa !216
  br label %26

26:                                               ; preds = %17, %24, %13
  %27 = phi i32 [ %4, %17 ], [ %25, %24 ], [ %4, %13 ]
  %28 = add i32 %27, -1
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = icmp ugt i32 %28, %1
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = zext i32 %28 to i64
  br label %43

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %28 to i64
  br label %48

38:                                               ; preds = %26
  %39 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !214
  %41 = zext i32 %1 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  br label %56

43:                                               ; preds = %48, %32
  %44 = phi i64 [ %33, %32 ], [ %37, %48 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !214
  %47 = getelementptr inbounds ptr, ptr %46, i64 %44
  br label %56

48:                                               ; preds = %34, %48
  %49 = phi i64 [ %36, %34 ], [ %51, %48 ]
  %50 = load ptr, ptr %35, align 8, !tbaa !214
  %51 = add nuw nsw i64 %49, 1
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !187
  %54 = getelementptr inbounds ptr, ptr %50, i64 %49
  store ptr %53, ptr %54, align 8, !tbaa !187
  %55 = icmp eq i64 %51, %37
  br i1 %55, label %43, label %48, !llvm.loop !363

56:                                               ; preds = %43, %38
  %57 = phi ptr [ %47, %43 ], [ %42, %38 ]
  store ptr null, ptr %57, align 8, !tbaa !187
  store i32 %28, ptr %3, align 4, !tbaa !216
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !216
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !216
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !355, !range !174, !noundef !175
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !214
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !187
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_713FieldValueMapD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #14
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !355, !range !174, !noundef !175
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !216
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !214
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !187
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_713FieldValueMapD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #14
  %19 = load i32, ptr %6, align 4, !tbaa !216
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !llvm.loop !364

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !227
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !214
  %30 = load ptr, ptr %27, align 8, !tbaa !177
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !212 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !213 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !216
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !356
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !365

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !227
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !177
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !216
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !366

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45, !prof !367

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !187
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !214
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !187
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !187
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !prof !368, !llvm.loop !369

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !227
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !214
  %49 = load ptr, ptr %46, align 8, !tbaa !177
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !214
  store i32 %12, ptr %6, align 8, !tbaa !356
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!145}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!35 = !{ptr @_ZN11xercesc_2_710ValueStoreC2EPNS_18IdentityConstraintEPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 20}
!36 = !{ptr @_ZN11xercesc_2_710ValueStoreC2EPNS_18IdentityConstraintEPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713FieldValueMapC1EPNS_13MemoryManagerE, i64 20}
!37 = !{ptr @_ZN11xercesc_2_710ValueStoreC2EPNS_18IdentityConstraintEPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_710XMLScanner15getDoValidationEv, i64 19}
!38 = !{ptr @_ZN11xercesc_2_710ValueStoreD2Ev, ptr @_ZN11xercesc_2_713FieldValueMapD1Ev, i64 20}
!39 = !{ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_714FieldActivator11getMayMatchEPNS_8IC_FieldE, i64 158593}
!40 = !{ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv, i64 2}
!41 = !{ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE, i64 2}
!42 = !{ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZNK11xercesc_2_713FieldValueMap7indexOfEPKNS_8IC_FieldE, i64 158593}
!43 = !{ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZNK11xercesc_2_713FieldValueMap22getDatatypeValidatorAtEj, i64 158592}
!44 = !{ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZNK11xercesc_2_713FieldValueMap10getValueAtEj, i64 158591}
!45 = !{ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, i64 158592}
!46 = !{ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZNK11xercesc_2_713FieldValueMap4sizeEv, i64 158592}
!47 = !{ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE, i64 158591}
!48 = !{ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_710ValueStore14duplicateValueEv, i64 84150}
!49 = !{ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 158607}
!50 = !{ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEC2EjbPNS_13MemoryManagerE, i64 16}
!51 = !{ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_713FieldValueMapC1ERKS0_, i64 158591}
!52 = !{ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE10addElementEPS1_, i64 158591}
!53 = !{ptr @_ZN11xercesc_2_714FieldActivator11getMayMatchEPNS_8IC_FieldE, ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE, i64 158593}
!54 = !{ptr @_ZNK11xercesc_2_713FieldValueMap22getDatatypeValidatorAtEj, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE9elementAtEj, i64 2443628736}
!55 = !{ptr @_ZNK11xercesc_2_713FieldValueMap10getValueAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, i64 2443628736}
!56 = !{ptr @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 48}
!57 = !{ptr @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEEC2EjPNS_13MemoryManagerEb, i64 16}
!58 = !{ptr @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEEC2EjPNS_13MemoryManagerEb, i64 16}
!59 = !{ptr @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE, i64 16}
!60 = !{ptr @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZNK11xercesc_2_713FieldValueMap7indexOfEPKNS_8IC_FieldE, i64 317186}
!61 = !{ptr @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEE10addElementERKS2_, i64 16}
!62 = !{ptr @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE10addElementERKS2_, i64 16}
!63 = !{ptr @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 317186}
!64 = !{ptr @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt, i64 16}
!65 = !{ptr @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE12setElementAtERKS2_j, i64 317170}
!66 = !{ptr @_ZNK11xercesc_2_713FieldValueMap4sizeEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEE4sizeEv, i64 1222210831}
!67 = !{ptr @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE, ptr @_ZNK11xercesc_2_713FieldValueMap4sizeEv, i64 3512400475}
!68 = !{ptr @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE4sizeEv, i64 317166}
!69 = !{ptr @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE9elementAtEj, i64 3512083309}
!70 = !{ptr @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE, ptr @_ZNK11xercesc_2_713FieldValueMap22getDatatypeValidatorAtEj, i64 7025355994}
!71 = !{ptr @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE, ptr @_ZNK11xercesc_2_713FieldValueMap10getValueAtEj, i64 7025355994}
!72 = !{ptr @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE, ptr @_ZN11xercesc_2_710ValueStore13isDuplicateOfEPNS_17DatatypeValidatorEPKtS2_S4_, i64 3512677997}
!73 = !{ptr @_ZN11xercesc_2_710ValueStore14duplicateValueEv, ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv, i64 56100}
!74 = !{ptr @_ZN11xercesc_2_710ValueStore14duplicateValueEv, ptr @_ZNK11xercesc_2_718IdentityConstraint14getElementNameEv, i64 56100}
!75 = !{ptr @_ZN11xercesc_2_710ValueStore14duplicateValueEv, ptr @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_, i64 56100}
!76 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEC2EjbPNS_13MemoryManagerE, i64 19}
!77 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE10addElementEPS1_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE19ensureExtraCapacityEj, i64 188718}
!78 = !{ptr @_ZN11xercesc_2_710ValueStore6appendEPKS0_, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE4sizeEv, i64 3}
!79 = !{ptr @_ZN11xercesc_2_710ValueStore6appendEPKS0_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE9elementAtEj, i64 19969}
!80 = !{ptr @_ZN11xercesc_2_710ValueStore6appendEPKS0_, ptr @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE, i64 19969}
!81 = !{ptr @_ZN11xercesc_2_710ValueStore6appendEPKS0_, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 19971}
!82 = !{ptr @_ZN11xercesc_2_710ValueStore6appendEPKS0_, ptr @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEC2EjbPNS_13MemoryManagerE, i64 3}
!83 = !{ptr @_ZN11xercesc_2_710ValueStore6appendEPKS0_, ptr @_ZN11xercesc_2_713FieldValueMapC1ERKS0_, i64 19968}
!84 = !{ptr @_ZN11xercesc_2_710ValueStore6appendEPKS0_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE10addElementEPS1_, i64 19968}
!85 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!86 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!87 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE9elementAtEj, ptr @__cxa_throw, i64 1}
!88 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!89 = !{ptr @_ZN11xercesc_2_710ValueStore15startValueScopeEv, ptr @_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv, i64 158593}
!90 = !{ptr @_ZN11xercesc_2_710ValueStore15startValueScopeEv, ptr @_ZN11xercesc_2_718IdentityConstraint10getFieldAtEj, i64 158593}
!91 = !{ptr @_ZN11xercesc_2_710ValueStore15startValueScopeEv, ptr @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, i64 158593}
!92 = !{ptr @_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv, i64 634411}
!93 = !{ptr @_ZN11xercesc_2_718IdentityConstraint10getFieldAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, i64 317185}
!94 = !{ptr @_ZN11xercesc_2_710ValueStore13endValueScopeEv, ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv, i64 1}
!95 = !{ptr @_ZN11xercesc_2_710ValueStore13endValueScopeEv, ptr @_ZNK11xercesc_2_718IdentityConstraint14getElementNameEv, i64 1}
!96 = !{ptr @_ZN11xercesc_2_710ValueStore13endValueScopeEv, ptr @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_, i64 1}
!97 = !{ptr @_ZN11xercesc_2_710ValueStore13endValueScopeEv, ptr @_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv, i64 158592}
!98 = !{ptr @_ZN11xercesc_2_710ValueStore13isDuplicateOfEPNS_17DatatypeValidatorEPKtS2_S4_, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 2}
!99 = !{ptr @_ZN11xercesc_2_710ValueStore13isDuplicateOfEPNS_17DatatypeValidatorEPKtS2_S4_, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 2443470140}
!100 = !{ptr @_ZN11xercesc_2_710ValueStore20endDcocumentFragmentEPNS_15ValueStoreCacheE, ptr @_ZNK11xercesc_2_79IC_KeyRef6getKeyEv, i64 11}
!101 = !{ptr @_ZN11xercesc_2_710ValueStore20endDcocumentFragmentEPNS_15ValueStoreCacheE, ptr @_ZN11xercesc_2_715ValueStoreCache22getGlobalValueStoreForEPKNS_18IdentityConstraintE, i64 11}
!102 = !{ptr @_ZN11xercesc_2_710ValueStore20endDcocumentFragmentEPNS_15ValueStoreCacheE, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE4sizeEv, i64 9}
!103 = !{ptr @_ZN11xercesc_2_710ValueStore20endDcocumentFragmentEPNS_15ValueStoreCacheE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE9elementAtEj, i64 88067}
!104 = !{ptr @_ZN11xercesc_2_710ValueStore20endDcocumentFragmentEPNS_15ValueStoreCacheE, ptr @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE, i64 88067}
!105 = !{ptr @_ZN11xercesc_2_715ValueStoreCache22getGlobalValueStoreForEPKNS_18IdentityConstraintE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv, i64 12}
!106 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716ValueHashTableOfIbE14findBucketElemEPKvRj, i64 158593}
!107 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!108 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!109 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE, ptr @__cxa_throw, i64 1}
!110 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE, ptr @__cxa_free_exception, i64 1}
!111 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!112 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!113 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE9elementAtEj, ptr @__cxa_throw, i64 1}
!114 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!115 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!116 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!117 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_throw, i64 1}
!118 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!119 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 15}
!120 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 15}
!121 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE, i64 188746}
!122 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEE10addElementERKS2_, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEE19ensureExtraCapacityEj, i64 15}
!123 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE10addElementERKS2_, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE19ensureExtraCapacityEj, i64 15}
!124 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj, i64 188992}
!125 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!126 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE12setElementAtERKS2_j, ptr @__cxa_allocate_exception, i64 1}
!127 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE12setElementAtERKS2_j, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!128 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE12setElementAtERKS2_j, ptr @__cxa_throw, i64 1}
!129 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE12setElementAtERKS2_j, ptr @__cxa_free_exception, i64 1}
!130 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 188746}
!131 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev, i64 188746}
!132 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @__cxa_allocate_exception, i64 1}
!133 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!134 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @__cxa_throw, i64 1}
!135 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @__cxa_free_exception, i64 1}
!136 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!137 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!138 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @__cxa_throw, i64 1}
!139 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!140 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE14findBucketElemEPKvRj, i64 16}
!141 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 19}
!142 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED2Ev, ptr @_ZN11xercesc_2_713FieldValueMapD1Ev, i64 106716}
!143 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 106716}
!144 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEED2Ev, i64 19}
!145 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!146 = !{!"function_entry_count", i64 20}
!147 = !{!148, !149, i64 0}
!148 = !{!"_ZTSN11xercesc_2_710ValueStoreE", !149, i64 0, !152, i64 4, !153, i64 8, !154, i64 16, !153, i64 48, !153, i64 56, !153, i64 64, !153, i64 72}
!149 = !{!"bool", !150, i64 0}
!150 = !{!"omnipotent char", !151, i64 0}
!151 = !{!"Simple C++ TBAA"}
!152 = !{!"int", !150, i64 0}
!153 = !{!"any pointer", !150, i64 0}
!154 = !{!"_ZTSN11xercesc_2_713FieldValueMapE", !153, i64 0, !153, i64 8, !153, i64 16, !153, i64 24}
!155 = !{!148, !152, i64 4}
!156 = !{!148, !153, i64 8}
!157 = !{!148, !153, i64 64}
!158 = !{!148, !153, i64 72}
!159 = !{!"branch_weights", i32 1, i32 21}
!160 = !{!"function_entry_count", i64 5836268}
!161 = !{!162, !149, i64 24}
!162 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !163, i64 0, !164, i64 8, !149, i64 16, !149, i64 17, !149, i64 18, !149, i64 19, !149, i64 20, !149, i64 21, !149, i64 22, !149, i64 23, !149, i64 24, !149, i64 25, !149, i64 26, !149, i64 27, !149, i64 28, !149, i64 29, !149, i64 30, !149, i64 31, !149, i64 32, !149, i64 33, !149, i64 34, !149, i64 35, !149, i64 36, !149, i64 37, !149, i64 38, !152, i64 40, !152, i64 44, !152, i64 48, !152, i64 52, !152, i64 56, !152, i64 60, !152, i64 64, !152, i64 68, !153, i64 72, !152, i64 80, !152, i64 84, !152, i64 88, !152, i64 92, !152, i64 96, !153, i64 104, !153, i64 112, !153, i64 120, !153, i64 128, !153, i64 136, !153, i64 144, !153, i64 152, !153, i64 160, !153, i64 168, !149, i64 176, !165, i64 184, !153, i64 264, !168, i64 272, !153, i64 280, !153, i64 288, !153, i64 296, !153, i64 304, !153, i64 312, !153, i64 320, !153, i64 328, !153, i64 336, !153, i64 344, !167, i64 352, !153, i64 360, !169, i64 368, !170, i64 392, !170, i64 432, !170, i64 472, !170, i64 512, !170, i64 552, !170, i64 592, !170, i64 632, !171, i64 672}
!163 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!164 = !{!"long", !150, i64 0}
!165 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !166, i64 0, !153, i64 8, !153, i64 16, !153, i64 24, !153, i64 32, !152, i64 40, !153, i64 48, !149, i64 56, !167, i64 60, !149, i64 64, !153, i64 72}
!166 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!167 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !150, i64 0}
!168 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !150, i64 0}
!169 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !152, i64 0, !153, i64 8, !153, i64 16}
!170 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !152, i64 0, !152, i64 4, !152, i64 8, !149, i64 12, !153, i64 16, !153, i64 24, !153, i64 32}
!171 = !{!"_ZTSN11xercesc_2_79ElemStackE", !152, i64 0, !152, i64 4, !172, i64 8, !153, i64 48, !152, i64 56, !152, i64 60, !152, i64 64, !152, i64 68, !152, i64 72, !152, i64 76, !152, i64 80, !153, i64 88, !153, i64 96}
!172 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !173, i64 0, !153, i64 8, !153, i64 16, !153, i64 24, !152, i64 32, !152, i64 36}
!173 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!174 = !{i8 0, i8 2}
!175 = !{}
!176 = !{!148, !153, i64 48}
!177 = !{!178, !178, i64 0}
!178 = !{!"vtable pointer", !151, i64 0}
!179 = !{!"function_entry_count", i64 0}
!180 = !{!"function_entry_count", i64 158593}
!181 = !{!"branch_weights", i32 158594, i32 1}
!182 = !{!"branch_weights", i32 1, i32 158594}
!183 = !{!"branch_weights", i32 84152, i32 74443}
!184 = !{!"branch_weights", i32 16, i32 158579}
!185 = !{!186, !153, i64 16}
!186 = !{!"_ZTSN11xercesc_2_714FieldActivatorE", !153, i64 0, !153, i64 8, !153, i64 16, !153, i64 24}
!187 = !{!153, !153, i64 0}
!188 = !{!149, !149, i64 0}
!189 = !{!162, !153, i64 264}
!190 = !{!"function_entry_count", i64 2443628737}
!191 = !{!154, !153, i64 8}
!192 = !{!"branch_weights", i32 1, i32 -1851338558}
!193 = !{!154, !153, i64 16}
!194 = !{!"function_entry_count", i64 317186}
!195 = !{!154, !153, i64 0}
!196 = !{!"branch_weights", i32 16, i32 317172}
!197 = !{!154, !153, i64 24}
!198 = !{!"function_entry_count", i64 1222210832}
!199 = !{!"branch_weights", i32 1, i32 1222210833}
!200 = !{!"branch_weights", i32 20, i32 317168}
!201 = !{!"branch_weights", i32 1, i32 104548}
!202 = !{!"branch_weights", i32 1221735073, i32 1}
!203 = !{!"branch_weights", i32 1, i32 212619}
!204 = !{!"branch_weights", i32 212619, i32 1221522454}
!205 = distinct !{!205, !206}
!206 = !{!"llvm.loop.mustprogress"}
!207 = !{!"branch_weights", i32 212620, i32 1221522454}
!208 = !{!"branch_weights", i32 104548, i32 1221630525}
!209 = distinct !{!209, !206}
!210 = !{!"function_entry_count", i64 84151}
!211 = !{!"branch_weights", i32 1, i32 84152}
!212 = !{!"function_entry_count", i64 19}
!213 = !{!"function_entry_count", i64 188718}
!214 = !{!215, !153, i64 24}
!215 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE", !149, i64 8, !152, i64 12, !152, i64 16, !153, i64 24, !153, i64 32}
!216 = !{!215, !152, i64 12}
!217 = !{!"function_entry_count", i64 4}
!218 = !{!"branch_weights", i32 1, i32 5}
!219 = !{!"branch_weights", i32 1, i32 159}
!220 = !{!"branch_weights", i32 1, i32 30126}
!221 = !{!"branch_weights", i32 5, i32 30122}
!222 = !{!"branch_weights", i32 159, i32 963873}
!223 = distinct !{!223, !206}
!224 = !{!"function_entry_count", i64 317182}
!225 = !{!"function_entry_count", i64 1221893665}
!226 = !{!"branch_weights", i32 1221893666, i32 1}
!227 = !{!215, !153, i64 32}
!228 = !{!"branch_weights", i32 158593, i32 1}
!229 = distinct !{!229, !206}
!230 = !{!"function_entry_count", i64 634412}
!231 = !{!232, !153, i64 32}
!232 = !{!"_ZTSN11xercesc_2_718IdentityConstraintE", !173, i64 0, !153, i64 8, !153, i64 16, !153, i64 24, !153, i64 32, !153, i64 40, !152, i64 48}
!233 = !{!"branch_weights", i32 1, i32 634413}
!234 = !{!"branch_weights", i32 1, i32 317187}
!235 = !{!232, !153, i64 16}
!236 = !{!232, !153, i64 8}
!237 = !{!"function_entry_count", i64 1221735072}
!238 = !{!"branch_weights", i32 -1514714995, i32 4}
!239 = !{!"branch_weights", i32 1, i32 1221735073}
!240 = !{!"branch_weights", i32 2, i32 2147483646}
!241 = !{!"function_entry_count", i64 1231717351}
!242 = !{!"branch_weights", i32 621, i32 -1469098093}
!243 = !{!244, !244, i64 0}
!244 = !{!"short", !150, i64 0}
!245 = !{!"branch_weights", i32 408901017, i32 1}
!246 = !{!"branch_weights", i32 267, i32 4}
!247 = !{!"branch_weights", i32 1, i32 4}
!248 = !{!"branch_weights", i32 156, i32 112}
!249 = !{!"branch_weights", i32 1, i32 112}
!250 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!251 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!252 = distinct !{!252, !206}
!253 = !{!"function_entry_count", i64 2453164456}
!254 = !{!"branch_weights", i32 1, i32 -1841802839}
!255 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!256 = !{!"branch_weights", i32 408669070, i32 -279908794}
!257 = distinct !{!257, !206}
!258 = !{!"function_entry_count", i64 12}
!259 = !{!"branch_weights", i32 13, i32 1}
!260 = !{!148, !153, i64 56}
!261 = !{!"branch_weights", i32 1, i32 13}
!262 = !{!"branch_weights", i32 2, i32 12}
!263 = !{!"branch_weights", i32 0, i32 -2147483648}
!264 = !{!"branch_weights", i32 128469, i32 1}
!265 = !{!"branch_weights", i32 207, i32 2055297}
!266 = distinct !{!266, !206}
!267 = !{!268, !153, i64 8}
!268 = !{!"_ZTSN11xercesc_2_715ValueStoreCacheE", !153, i64 0, !153, i64 8, !153, i64 16, !153, i64 24, !153, i64 32, !153, i64 40}
!269 = !{!270, !153, i64 56}
!270 = !{!"_ZTSN11xercesc_2_79IC_KeyRefE", !232, i64 0, !153, i64 56}
!271 = !{!"function_entry_count", i64 475779}
!272 = !{!273, !153, i64 24}
!273 = !{!"_ZTSN11xercesc_2_716ValueHashTableOfIbEE", !153, i64 0, !153, i64 8, !152, i64 16, !153, i64 24}
!274 = !{!273, !152, i64 16}
!275 = !{!273, !153, i64 0}
!276 = !{!152, !152, i64 0}
!277 = !{!273, !153, i64 8}
!278 = !{!"branch_weights", i32 1, i32 127}
!279 = !{!280, !153, i64 16}
!280 = !{!"_ZTSN11xercesc_2_724ValueHashTableBucketElemIbEE", !149, i64 0, !153, i64 8, !153, i64 16}
!281 = !{!"branch_weights", i32 475765, i32 6}
!282 = !{!"branch_weights", i32 127, i32 3806033}
!283 = distinct !{!283, !206}
!284 = !{!285, !153, i64 40}
!285 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !286, i64 8, !153, i64 16, !152, i64 24, !153, i64 32, !153, i64 40}
!286 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !150, i64 0}
!287 = !{!288, !152, i64 4}
!288 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEEE", !149, i64 0, !152, i64 4, !152, i64 8, !153, i64 16, !153, i64 24}
!289 = !{!"branch_weights", i32 -1851338558, i32 1}
!290 = !{!288, !153, i64 24}
!291 = !{!288, !153, i64 16}
!292 = !{!"function_entry_count", i64 2444437052}
!293 = !{!294, !152, i64 12}
!294 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !149, i64 8, !152, i64 12, !152, i64 16, !153, i64 24, !153, i64 32}
!295 = !{!"branch_weights", i32 -1850530243, i32 1}
!296 = !{!294, !153, i64 32}
!297 = !{!294, !153, i64 24}
!298 = !{!"function_entry_count", i64 15}
!299 = !{!300, !149, i64 0}
!300 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEEE", !149, i64 0, !152, i64 4, !152, i64 8, !153, i64 16, !153, i64 24}
!301 = !{!300, !152, i64 4}
!302 = !{!300, !152, i64 8}
!303 = !{!300, !153, i64 16}
!304 = !{!300, !153, i64 24}
!305 = !{!288, !149, i64 0}
!306 = !{!288, !152, i64 8}
!307 = !{!"function_entry_count", i64 188746}
!308 = !{!"function_entry_count", i64 188992}
!309 = !{!"function_entry_count", i64 558789}
!310 = !{!"branch_weights", i32 158605, i32 400186}
!311 = !{!"function_entry_count", i64 317171}
!312 = !{!"branch_weights", i32 317172, i32 1}
!313 = !{!294, !149, i64 8}
!314 = !{!294, !152, i64 16}
!315 = !{!"branch_weights", i32 1, i32 188746}
!316 = !{!"branch_weights", i32 188746, i32 566295}
!317 = distinct !{!317, !206}
!318 = !{!"branch_weights", i32 7, i32 188741}
!319 = !{!"branch_weights", i32 1, i32 188740}
!320 = !{!"branch_weights", i32 253, i32 188740}
!321 = distinct !{!321, !206}
!322 = !{!"branch_weights", i32 1, i32 317172}
!323 = distinct !{!323, !206}
!324 = distinct !{!324, !206}
!325 = distinct !{!325, !206}
!326 = distinct !{!326, !206}
!327 = distinct !{!327, !206}
!328 = distinct !{!328, !206}
!329 = !{!"branch_weights", i32 1, i32 16}
!330 = distinct !{!330, !206}
!331 = distinct !{!331, !206}
!332 = !{!"branch_weights", i32 10, i32 188984}
!333 = !{!"branch_weights", i32 159, i32 1}
!334 = !{!"branch_weights", i32 159, i32 9329}
!335 = distinct !{!335, !206}
!336 = !{!"function_entry_count", i64 1222686611}
!337 = !{!338, !152, i64 12}
!338 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEEE", !149, i64 8, !152, i64 12, !152, i64 16, !153, i64 24, !153, i64 32}
!339 = !{!"branch_weights", i32 475780, i32 1}
!340 = !{!338, !153, i64 32}
!341 = !{!338, !153, i64 24}
!342 = !{!"function_entry_count", i64 16}
!343 = !{!"branch_weights", i32 5, i32 13}
!344 = !{!345, !153, i64 0}
!345 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_10ValueStoreEEE", !153, i64 0, !153, i64 8, !153, i64 16}
!346 = !{!347, !153, i64 40}
!347 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_10ValueStoreEEE", !153, i64 0, !149, i64 8, !153, i64 16, !152, i64 24, !152, i64 28, !152, i64 32, !153, i64 40}
!348 = !{!347, !152, i64 24}
!349 = !{!347, !153, i64 0}
!350 = !{!347, !153, i64 16}
!351 = !{!"branch_weights", i32 1, i32 143}
!352 = !{!345, !153, i64 16}
!353 = !{!"branch_weights", i32 143, i32 65}
!354 = distinct !{!354, !206}
!355 = !{!215, !149, i64 8}
!356 = !{!215, !152, i64 16}
!357 = !{!"branch_weights", i32 159, i32 457}
!358 = distinct !{!358, !206}
!359 = !{!"branch_weights", i32 1, i32 20}
!360 = !{!"branch_weights", i32 1509593, i32 159}
!361 = distinct !{!361, !206}
!362 = distinct !{!362, !206}
!363 = distinct !{!363, !206}
!364 = distinct !{!364, !206}
!365 = !{!"branch_weights", i32 351, i32 188369}
!366 = !{!"branch_weights", i32 1, i32 350}
!367 = !{!"branch_weights", i32 350, i32 1}
!368 = !{!"branch_weights", i32 350, i32 453116}
!369 = distinct !{!369, !206}

; ModuleID = 'DFAContentModel.cpp'
source_filename = "DFAContentModel.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::CMNode" = type <{ ptr, ptr, i32, [4 x i8], ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::CMLeaf" = type <{ %"class.xercesc_2_7::CMNode.base", [4 x i8], ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::CMNode.base" = type <{ ptr, ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::DFAContentModel" = type { %"class.xercesc_2_7::XMLContentModel", ptr, ptr, i32, i8, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, ptr, ptr }
%"class.xercesc_2_7::XMLContentModel" = type { ptr }
%"class.xercesc_2_7::SubstitutionGroupComparator" = type { ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::CMStateSet" = type { i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::ContentSpecNode" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32 }

$_ZN11xercesc_2_76CMNodeD2Ev = comdat any

$_ZN11xercesc_2_76CMNodeD0Ev = comdat any

$_ZN11xercesc_2_76CMLeafD2Ev = comdat any

$_ZN11xercesc_2_76CMLeafD0Ev = comdat any

$_ZNK11xercesc_2_76CMLeaf10isNullableEv = comdat any

$_ZNK11xercesc_2_76CMLeaf12calcFirstPosERNS_10CMStateSetE = comdat any

$_ZNK11xercesc_2_76CMLeaf11calcLastPosERNS_10CMStateSetE = comdat any

$_ZN11xercesc_2_714HashCMStateSet10getHashValEPKvjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714HashCMStateSet6equalsEPKvS2_ = comdat any

$_ZN11xercesc_2_714HashCMStateSetD0Ev = comdat any

$_ZNK11xercesc_2_715DFAContentModel12getNextStateEjj = comdat any

$_ZN11xercesc_2_710CMStateSetD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_715XMLContentModelC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_715XMLContentModelD2Ev = comdat any

$_ZN11xercesc_2_715XMLContentModelD0Ev = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZNK11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZN11xercesc_2_727SubstitutionGroupComparatorC2EPNS_15GrammarResolverEPNS_13XMLStringPoolE = comdat any

$_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev = comdat any

$_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_76CMLeaf11setPositionEj = comdat any

$_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_76CMLeaf10getElementEv = comdat any

$_ZNK11xercesc_2_76CMNode11getFirstPosEv = comdat any

$_ZN11xercesc_2_710CMStateSetC2ERKS0_ = comdat any

$_ZN11xercesc_2_714HashCMStateSetC2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_710CMStateSet6getBitEj = comdat any

$_ZN11xercesc_2_710CMStateSet8zeroBitsEv = comdat any

$_ZN11xercesc_2_710CMStateSetoRERKS0_ = comdat any

$_ZNK11xercesc_2_710CMStateSet7isEmptyEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3getEPKv = comdat any

$_ZNK11xercesc_2_710XMLInteger8intValueEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3putEPvPS1_ = comdat any

$_ZN11xercesc_2_710XMLIntegerC2Ei = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEED2Ev = comdat any

$_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_78HashBaseC2Ev = comdat any

$_ZN11xercesc_2_78HashBaseD2Ev = comdat any

$_ZN11xercesc_2_78HashBaseD0Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE6rehashEv = comdat any

$_ZN11xercesc_2_710XMLIntegerD2Ev = comdat any

$_ZN11xercesc_2_722RefHashTableBucketElemINS_10XMLIntegerEEC2EPvPS1_PS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLIntegerEEEEC2EPS4_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLIntegerEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLIntegerEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLIntegerEEEE5resetEPS4_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE7isEmptyEv = comdat any

$_ZNK11xercesc_2_715ContentSpecNode7getTypeEv = comdat any

$_ZN11xercesc_2_715ContentSpecNode10getElementEv = comdat any

$_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715ContentSpecNode8getFirstEv = comdat any

$_ZN11xercesc_2_715ContentSpecNode9getSecondEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_76CMNode7getTypeEv = comdat any

$_ZNK11xercesc_2_76CMNode10getLastPosEv = comdat any

$_ZN11xercesc_2_76CMNode12setMaxStatesEj = comdat any

$_ZNK11xercesc_2_76CMLeaf11getPositionEv = comdat any

$_ZN11xercesc_2_75QName6setURIEj = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKt = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_710CMStateSet6setBitEj = comdat any

$_ZNK11xercesc_2_710CMStateSet8hashCodeEv = comdat any

$_ZNK11xercesc_2_710CMStateSeteqERKS0_ = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTVN11xercesc_2_76CMNodeE = comdat any

$_ZTSN11xercesc_2_76CMNodeE = comdat any

$_ZTIN11xercesc_2_76CMNodeE = comdat any

$_ZTVN11xercesc_2_76CMLeafE = comdat any

$_ZTSN11xercesc_2_76CMLeafE = comdat any

$_ZTIN11xercesc_2_76CMLeafE = comdat any

$_ZTVN11xercesc_2_714HashCMStateSetE = comdat any

$_ZTSN11xercesc_2_714HashCMStateSetE = comdat any

$_ZTSN11xercesc_2_78HashBaseE = comdat any

$_ZTIN11xercesc_2_78HashBaseE = comdat any

$_ZTIN11xercesc_2_714HashCMStateSetE = comdat any

$_ZTSN11xercesc_2_715XMLContentModelE = comdat any

$_ZTIN11xercesc_2_715XMLContentModelE = comdat any

$_ZTVN11xercesc_2_715XMLContentModelE = comdat any

$_ZTVN11xercesc_2_78HashBaseE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN11xercesc_2_76CMNodeE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_76CMNodeE, ptr @_ZN11xercesc_2_76CMNodeD2Ev, ptr @_ZN11xercesc_2_76CMNodeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_76CMNodeE = linkonce_odr dso_local constant [23 x i8] c"N11xercesc_2_76CMNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_76CMNodeE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_76CMNodeE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN11xercesc_2_76CMLeafE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_76CMLeafE, ptr @_ZN11xercesc_2_76CMLeafD2Ev, ptr @_ZN11xercesc_2_76CMLeafD0Ev, ptr @_ZNK11xercesc_2_76CMLeaf10isNullableEv, ptr @_ZNK11xercesc_2_76CMLeaf12calcFirstPosERNS_10CMStateSetE, ptr @_ZNK11xercesc_2_76CMLeaf11calcLastPosERNS_10CMStateSetE] }, comdat, align 8
@_ZTSN11xercesc_2_76CMLeafE = linkonce_odr dso_local constant [23 x i8] c"N11xercesc_2_76CMLeafE\00", comdat, align 1
@_ZTIN11xercesc_2_76CMLeafE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_76CMLeafE, ptr @_ZTIN11xercesc_2_76CMNodeE }, comdat, align 8
@_ZTVN11xercesc_2_714HashCMStateSetE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714HashCMStateSetE, ptr @_ZN11xercesc_2_714HashCMStateSet10getHashValEPKvjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714HashCMStateSet6equalsEPKvS2_, ptr @_ZN11xercesc_2_78HashBaseD2Ev, ptr @_ZN11xercesc_2_714HashCMStateSetD0Ev] }, comdat, align 8
@_ZTSN11xercesc_2_714HashCMStateSetE = linkonce_odr dso_local constant [32 x i8] c"N11xercesc_2_714HashCMStateSetE\00", comdat, align 1
@_ZTSN11xercesc_2_78HashBaseE = linkonce_odr dso_local constant [25 x i8] c"N11xercesc_2_78HashBaseE\00", comdat, align 1
@_ZTIN11xercesc_2_78HashBaseE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78HashBaseE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_714HashCMStateSetE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714HashCMStateSetE, ptr @_ZTIN11xercesc_2_78HashBaseE }, comdat, align 8
@_ZTVN11xercesc_2_715DFAContentModelE = dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715DFAContentModelE, ptr @_ZN11xercesc_2_715DFAContentModelD2Ev, ptr @_ZN11xercesc_2_715DFAContentModelD0Ev, ptr @_ZNK11xercesc_2_715DFAContentModel15validateContentEPPNS_5QNameEjj, ptr @_ZNK11xercesc_2_715DFAContentModel22validateContentSpecialEPPNS_5QNameEjjPNS_15GrammarResolverEPNS_13XMLStringPoolE, ptr @_ZN11xercesc_2_715DFAContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt, ptr @_ZNK11xercesc_2_715DFAContentModel28getContentLeafNameTypeVectorEv, ptr @_ZNK11xercesc_2_715DFAContentModel12getNextStateEjj] }, align 8
@_ZTSN11xercesc_2_715DFAContentModelE = dso_local constant [33 x i8] c"N11xercesc_2_715DFAContentModelE\00", align 1
@_ZTSN11xercesc_2_715XMLContentModelE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715XMLContentModelE\00", comdat, align 1
@_ZTIN11xercesc_2_715XMLContentModelE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715XMLContentModelE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_715DFAContentModelE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715DFAContentModelE, ptr @_ZTIN11xercesc_2_715XMLContentModelE }, align 8
@_ZTVN11xercesc_2_715XMLContentModelE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715XMLContentModelE, ptr @_ZN11xercesc_2_715XMLContentModelD2Ev, ptr @_ZN11xercesc_2_715XMLContentModelD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_715XMLContentModel13gInvalidTransE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE = external local_unnamed_addr constant i32, align 4
@_ZTVN11xercesc_2_78HashBaseE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_78HashBaseE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_78HashBaseD2Ev, ptr @_ZN11xercesc_2_78HashBaseD0Ev] }, comdat, align 8
@.str = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [43 x i8] c"./xercesc/validators/common/CMStateSet.hpp\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [20 x i8] c"DFAContentModel.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_715XMLContentModel14gEpsilonFakeIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_713SchemaSymbols20fgATTVAL_TWOPOUNDANYE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols22fgATTVAL_TWOPOUNDOTHERE = external constant [0 x i16], align 2
@.str.3 = private unnamed_addr constant [48 x i8] c"./xercesc/validators/common/DFAContentModel.hpp\00", align 1
@switch.table._ZN11xercesc_2_715DFAContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt.4 = private unnamed_addr constant [3 x ptr] [ptr @_ZN11xercesc_2_713SchemaSymbols20fgATTVAL_TWOPOUNDANYE, ptr @_ZN11xercesc_2_713SchemaSymbols22fgATTVAL_TWOPOUNDOTHERE, ptr @_ZN11xercesc_2_713SchemaSymbols20fgATTVAL_TWOPOUNDANYE], align 8

@_ZN11xercesc_2_715DFAContentModelC1EbPNS_15ContentSpecNodeEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i1, ptr, ptr), ptr @_ZN11xercesc_2_715DFAContentModelC2EbPNS_15ContentSpecNodeEPNS_13MemoryManagerE
@_ZN11xercesc_2_715DFAContentModelC1EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i1, ptr, i1, ptr), ptr @_ZN11xercesc_2_715DFAContentModelC2EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE
@_ZN11xercesc_2_715DFAContentModelD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715DFAContentModelD2Ev

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #0 comdat align 2 !prof !166 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !167
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !170
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710CMStateSetD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #11
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !176
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_710CMStateSetD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #11
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMLeafD2Ev(ptr noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #0 comdat align 2 !prof !177 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMLeafE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !167
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 4, !tbaa !178, !range !181, !noundef !182
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5, !prof !183

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !184
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !167
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(56) %7) #11
  br label %13

13:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_76CMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMLeafD0Ev(ptr noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_76CMLeafD2Ev(ptr noundef nonnull align 8 dereferenceable(61) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_76CMLeaf10isNullableEv(ptr noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #0 comdat align 2 !prof !185 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !186
  %4 = icmp eq i32 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xercesc_2_76CMLeaf12calcFirstPosERNS_10CMStateSetE(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 !prof !187 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !186
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %7, !prof !188

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710CMStateSet8zeroBitsEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  br label %8

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710CMStateSet6setBitEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %4) #13
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xercesc_2_76CMLeaf11calcLastPosERNS_10CMStateSetE(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 !prof !189 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !186
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %7, !prof !190

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710CMStateSet8zeroBitsEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  br label %8

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710CMStateSet6setBitEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %4) #13
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_714HashCMStateSet10getHashValEPKvjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !191 {
  %5 = tail call noundef i32 @_ZNK11xercesc_2_710CMStateSet8hashCodeEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %6 = urem i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_714HashCMStateSet6equalsEPKvS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !192 {
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710CMStateSeteqERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714HashCMStateSetD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_78HashBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715DFAContentModelD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_715DFAContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_715DFAContentModel15validateContentEPPNS_5QNameEjj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 %3) unnamed_addr #1 align 2 !prof !193 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %15, label %6, !prof !194

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 14
  %8 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 15
  %9 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  %10 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 1
  %12 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4
  %13 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 2
  %14 = zext i32 %2 to i64
  br label %20

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 4
  %17 = load i8, ptr %16, align 4, !tbaa !195, !range !181, !noundef !182
  %18 = sub nsw i8 0, %17
  %19 = sext i8 %18 to i32
  br label %139

20:                                               ; preds = %6, %125
  %21 = phi i64 [ 0, %6 ], [ %127, %125 ]
  %22 = phi i32 [ 0, %6 ], [ %126, %125 ]
  %23 = getelementptr inbounds ptr, ptr %1, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !198
  %25 = load i8, ptr %7, align 4, !tbaa !199, !range !181, !noundef !182
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27, !prof !200

27:                                               ; preds = %20
  %28 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %24) #13
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi ptr [ %28, %27 ], [ null, %20 ]
  %31 = load i8, ptr %8, align 1, !tbaa !201, !range !181, !noundef !182
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33, !prof !202

33:                                               ; preds = %29
  %34 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %35 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %24) #13
  %36 = icmp eq i32 %35, %34
  br i1 %36, label %125, label %37, !prof !203

37:                                               ; preds = %33, %29
  %38 = load i32, ptr %10, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %137, label %40, !prof !204

40:                                               ; preds = %37
  %41 = zext i32 %22 to i64
  br label %42

42:                                               ; preds = %40, %111
  %43 = phi i64 [ 0, %40 ], [ %113, %111 ]
  %44 = phi i32 [ 0, %40 ], [ %112, %111 ]
  %45 = load ptr, ptr %11, align 8, !tbaa !205
  %46 = getelementptr inbounds ptr, ptr %45, i64 %43
  %47 = load ptr, ptr %46, align 8, !tbaa !198
  %48 = load i8, ptr %7, align 4, !tbaa !199, !range !181, !noundef !182
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %60, label %50, !prof !206

50:                                               ; preds = %42
  %51 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %47) #13
  %52 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %51, ptr noundef %30) #13
  br i1 %52, label %53, label %111

53:                                               ; preds = %50
  %54 = load ptr, ptr %9, align 8, !tbaa !207
  %55 = getelementptr inbounds ptr, ptr %54, i64 %41
  %56 = load ptr, ptr %55, align 8, !tbaa !198
  %57 = getelementptr inbounds i32, ptr %56, i64 %43
  %58 = load i32, ptr %57, align 4, !tbaa !208
  %59 = icmp eq i32 %58, %12
  br i1 %59, label %111, label %117

60:                                               ; preds = %42
  %61 = load ptr, ptr %13, align 8, !tbaa !209
  %62 = getelementptr inbounds i32, ptr %61, i64 %43
  %63 = load i32, ptr %62, align 4, !tbaa !210
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %80, !prof !206

65:                                               ; preds = %60
  %66 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %47) #13
  %67 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %24) #13
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %111, !prof !206

69:                                               ; preds = %65
  %70 = tail call noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %47) #13
  %71 = tail call noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %24) #13
  %72 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %70, ptr noundef %71) #13
  br i1 %72, label %73, label %111, !prof !211

73:                                               ; preds = %69
  %74 = load ptr, ptr %9, align 8, !tbaa !207
  %75 = getelementptr inbounds ptr, ptr %74, i64 %41
  %76 = load ptr, ptr %75, align 8, !tbaa !198
  %77 = getelementptr inbounds i32, ptr %76, i64 %43
  %78 = load i32, ptr %77, align 4, !tbaa !208
  %79 = icmp eq i32 %78, %12
  br i1 %79, label %111, label %117, !prof !212

80:                                               ; preds = %60
  %81 = and i32 %63, 15
  switch i32 %81, label %111 [
    i32 6, label %82
    i32 8, label %89
    i32 7, label %100
  ]

82:                                               ; preds = %80
  %83 = load ptr, ptr %9, align 8, !tbaa !207
  %84 = getelementptr inbounds ptr, ptr %83, i64 %41
  %85 = load ptr, ptr %84, align 8, !tbaa !198
  %86 = getelementptr inbounds i32, ptr %85, i64 %43
  %87 = load i32, ptr %86, align 4, !tbaa !208
  %88 = icmp eq i32 %87, %12
  br i1 %88, label %111, label %117

89:                                               ; preds = %80
  %90 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %47) #13
  %91 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %24) #13
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %89
  %94 = load ptr, ptr %9, align 8, !tbaa !207
  %95 = getelementptr inbounds ptr, ptr %94, i64 %41
  %96 = load ptr, ptr %95, align 8, !tbaa !198
  %97 = getelementptr inbounds i32, ptr %96, i64 %43
  %98 = load i32, ptr %97, align 4, !tbaa !208
  %99 = icmp eq i32 %98, %12
  br i1 %99, label %111, label %117

100:                                              ; preds = %80
  %101 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %47) #13
  %102 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %24) #13
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %111, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %9, align 8, !tbaa !207
  %106 = getelementptr inbounds ptr, ptr %105, i64 %41
  %107 = load ptr, ptr %106, align 8, !tbaa !198
  %108 = getelementptr inbounds i32, ptr %107, i64 %43
  %109 = load i32, ptr %108, align 4, !tbaa !208
  %110 = icmp eq i32 %109, %12
  br i1 %110, label %111, label %117

111:                                              ; preds = %53, %80, %82, %104, %100, %89, %93, %65, %69, %73, %50
  %112 = phi i32 [ %44, %80 ], [ %44, %100 ], [ %12, %104 ], [ %44, %89 ], [ %12, %93 ], [ %12, %82 ], [ %44, %65 ], [ %44, %69 ], [ %12, %73 ], [ %44, %50 ], [ %12, %53 ]
  %113 = add nuw nsw i64 %43, 1
  %114 = load i32, ptr %10, align 8
  %115 = zext i32 %114 to i64
  %116 = icmp ult i64 %113, %115
  br i1 %116, label %42, label %117, !prof !213, !llvm.loop !214

117:                                              ; preds = %111, %53, %73, %82, %93, %104
  %118 = phi i64 [ %113, %111 ], [ %43, %53 ], [ %43, %73 ], [ %43, %82 ], [ %43, %93 ], [ %43, %104 ]
  %119 = phi i32 [ %112, %111 ], [ %58, %53 ], [ %78, %73 ], [ %87, %82 ], [ %98, %93 ], [ %109, %104 ]
  %120 = trunc i64 %118 to i32
  %121 = load i32, ptr %10, align 8
  %122 = icmp eq i32 %119, %12
  %123 = icmp eq i32 %121, %120
  %124 = select i1 %122, i1 true, i1 %123
  br i1 %124, label %137, label %125, !prof !216

125:                                              ; preds = %117, %33
  %126 = phi i32 [ %22, %33 ], [ %119, %117 ]
  %127 = add nuw nsw i64 %21, 1
  %128 = icmp eq i64 %127, %14
  br i1 %128, label %129, label %20, !prof !217, !llvm.loop !218

129:                                              ; preds = %125
  %130 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 6
  %131 = load ptr, ptr %130, align 8, !tbaa !219
  %132 = zext i32 %126 to i64
  %133 = getelementptr inbounds i8, ptr %131, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !220, !range !181, !noundef !182
  %135 = icmp eq i8 %134, 0
  %136 = select i1 %135, i32 %2, i32 -1, !prof !221
  br label %139

137:                                              ; preds = %37, %117
  %138 = trunc i64 %21 to i32
  br label %139

139:                                              ; preds = %137, %129, %15
  %140 = phi i32 [ %19, %15 ], [ %136, %129 ], [ %138, %137 ]
  ret i32 %140
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_715DFAContentModel22validateContentSpecialEPPNS_5QNameEjjPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !222 {
  %7 = alloca %"class.xercesc_2_7::SubstitutionGroupComparator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorC2EPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %4, ptr noundef %5) #13
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 15
  %11 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %12 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  %16 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4
  %17 = zext i32 %2 to i64
  br label %23

18:                                               ; preds = %6
  %19 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 4
  %20 = load i8, ptr %19, align 4, !tbaa !195, !range !181, !noundef !182
  %21 = sub nsw i8 0, %20
  %22 = sext i8 %21 to i32
  br label %119

23:                                               ; preds = %9, %105
  %24 = phi i64 [ 0, %9 ], [ %107, %105 ]
  %25 = phi i32 [ 0, %9 ], [ %106, %105 ]
  %26 = getelementptr inbounds ptr, ptr %1, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !198
  %28 = load i8, ptr %10, align 1, !tbaa !201, !range !181, !noundef !182
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #13
  %32 = icmp eq i32 %31, %11
  br i1 %32, label %105, label %33

33:                                               ; preds = %30, %23
  %34 = load i32, ptr %12, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %117, label %36

36:                                               ; preds = %33
  %37 = zext i32 %25 to i64
  br label %38

38:                                               ; preds = %36, %91
  %39 = phi i64 [ 0, %36 ], [ %93, %91 ]
  %40 = phi i32 [ 0, %36 ], [ %92, %91 ]
  %41 = load ptr, ptr %13, align 8, !tbaa !205
  %42 = getelementptr inbounds ptr, ptr %41, i64 %39
  %43 = load ptr, ptr %42, align 8, !tbaa !198
  %44 = load ptr, ptr %14, align 8, !tbaa !209
  %45 = getelementptr inbounds i32, ptr %44, i64 %39
  %46 = load i32, ptr %45, align 4, !tbaa !210
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %38
  %49 = invoke noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %27, ptr noundef %43) #13
          to label %50 unwind label %58

50:                                               ; preds = %48
  br i1 %49, label %51, label %91

51:                                               ; preds = %50
  %52 = load ptr, ptr %15, align 8, !tbaa !207
  %53 = getelementptr inbounds ptr, ptr %52, i64 %37
  %54 = load ptr, ptr %53, align 8, !tbaa !198
  %55 = getelementptr inbounds i32, ptr %54, i64 %39
  %56 = load i32, ptr %55, align 4, !tbaa !208
  %57 = icmp eq i32 %56, %16
  br i1 %57, label %91, label %97

58:                                               ; preds = %48
  %59 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  resume { ptr, i32 } %59

60:                                               ; preds = %38
  %61 = and i32 %46, 15
  switch i32 %61, label %91 [
    i32 6, label %62
    i32 8, label %69
    i32 7, label %80
  ]

62:                                               ; preds = %60
  %63 = load ptr, ptr %15, align 8, !tbaa !207
  %64 = getelementptr inbounds ptr, ptr %63, i64 %37
  %65 = load ptr, ptr %64, align 8, !tbaa !198
  %66 = getelementptr inbounds i32, ptr %65, i64 %39
  %67 = load i32, ptr %66, align 4, !tbaa !208
  %68 = icmp eq i32 %67, %16
  br i1 %68, label %91, label %97

69:                                               ; preds = %60
  %70 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %43) #13
  %71 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #13
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %69
  %74 = load ptr, ptr %15, align 8, !tbaa !207
  %75 = getelementptr inbounds ptr, ptr %74, i64 %37
  %76 = load ptr, ptr %75, align 8, !tbaa !198
  %77 = getelementptr inbounds i32, ptr %76, i64 %39
  %78 = load i32, ptr %77, align 4, !tbaa !208
  %79 = icmp eq i32 %78, %16
  br i1 %79, label %91, label %97

80:                                               ; preds = %60
  %81 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %43) #13
  %82 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #13
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %91, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %15, align 8, !tbaa !207
  %86 = getelementptr inbounds ptr, ptr %85, i64 %37
  %87 = load ptr, ptr %86, align 8, !tbaa !198
  %88 = getelementptr inbounds i32, ptr %87, i64 %39
  %89 = load i32, ptr %88, align 4, !tbaa !208
  %90 = icmp eq i32 %89, %16
  br i1 %90, label %91, label %97

91:                                               ; preds = %60, %62, %84, %80, %69, %73, %50, %51
  %92 = phi i32 [ %16, %51 ], [ %40, %50 ], [ %16, %62 ], [ %16, %73 ], [ %40, %69 ], [ %16, %84 ], [ %40, %80 ], [ %40, %60 ]
  %93 = add nuw nsw i64 %39, 1
  %94 = load i32, ptr %12, align 8
  %95 = zext i32 %94 to i64
  %96 = icmp ult i64 %93, %95
  br i1 %96, label %38, label %97, !llvm.loop !223

97:                                               ; preds = %91, %51, %62, %73, %84
  %98 = phi i64 [ %93, %91 ], [ %39, %51 ], [ %39, %62 ], [ %39, %73 ], [ %39, %84 ]
  %99 = phi i32 [ %92, %91 ], [ %56, %51 ], [ %67, %62 ], [ %78, %73 ], [ %89, %84 ]
  %100 = trunc i64 %98 to i32
  %101 = load i32, ptr %12, align 8
  %102 = icmp eq i32 %99, %16
  %103 = icmp eq i32 %101, %100
  %104 = select i1 %102, i1 true, i1 %103
  br i1 %104, label %117, label %105

105:                                              ; preds = %97, %30
  %106 = phi i32 [ %25, %30 ], [ %99, %97 ]
  %107 = add nuw nsw i64 %24, 1
  %108 = icmp eq i64 %107, %17
  br i1 %108, label %109, label %23, !llvm.loop !224

109:                                              ; preds = %105
  %110 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !219
  %112 = zext i32 %106 to i64
  %113 = getelementptr inbounds i8, ptr %111, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !220, !range !181, !noundef !182
  %115 = icmp eq i8 %114, 0
  %116 = select i1 %115, i32 %2, i32 -1
  br label %119

117:                                              ; preds = %33, %97
  %118 = trunc i64 %24 to i32
  br label %119

119:                                              ; preds = %117, %109, %18
  %120 = phi i32 [ %22, %18 ], [ %116, %109 ], [ %118, %117 ]
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  ret i32 %120
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DFAContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !222 {
  %8 = alloca %"class.xercesc_2_7::SubstitutionGroupComparator", align 8
  %9 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %10 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #14
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorC2EPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %2, ptr noundef %3) #13
  %11 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !225
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 1
  %16 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE, align 4
  %17 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel14gEpsilonFakeIdE, align 4
  %18 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4
  %19 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  br label %20

20:                                               ; preds = %14, %40
  %21 = phi i64 [ 0, %14 ], [ %41, %40 ]
  %22 = load ptr, ptr %15, align 8, !tbaa !205
  %23 = getelementptr inbounds ptr, ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !198
  %25 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %24) #13
  %26 = icmp eq i32 %25, %16
  %27 = icmp eq i32 %25, %17
  %28 = select i1 %26, i1 true, i1 %27
  %29 = icmp eq i32 %25, %18
  %30 = select i1 %28, i1 true, i1 %29
  %31 = icmp eq i32 %25, %19
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %20
  %34 = load ptr, ptr %15, align 8, !tbaa !205
  %35 = getelementptr inbounds ptr, ptr %34, i64 %21
  %36 = load ptr, ptr %35, align 8, !tbaa !198
  %37 = zext i32 %25 to i64
  %38 = getelementptr inbounds i32, ptr %5, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !208
  call void @_ZN11xercesc_2_75QName6setURIEj(ptr noundef nonnull align 8 dereferenceable(56) %36, i32 noundef %39) #13
  br label %40

40:                                               ; preds = %33, %20
  %41 = add nuw nsw i64 %21, 1
  %42 = load i32, ptr %11, align 8, !tbaa !225
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %20, label %45, !llvm.loop !226

45:                                               ; preds = %40
  %46 = zext i32 %42 to i64
  %47 = shl nuw nsw i64 %46, 3
  br label %48

48:                                               ; preds = %7, %45
  %49 = phi i64 [ %47, %45 ], [ 0, %7 ]
  %50 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !227
  %52 = load ptr, ptr %51, align 8, !tbaa !167
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef %49) #13
          to label %56 unwind label %108

56:                                               ; preds = %48
  %57 = load i32, ptr %11, align 8, !tbaa !225
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4
  br label %78

61:                                               ; preds = %95, %89
  %62 = phi i64 [ %93, %89 ], [ %100, %95 ]
  %63 = phi i32 [ %92, %89 ], [ %99, %95 ]
  %64 = icmp ult i64 %91, %62
  %65 = add nuw nsw i64 %80, 1
  br i1 %64, label %78, label %66, !llvm.loop !228

66:                                               ; preds = %61, %56
  %67 = phi i32 [ 0, %56 ], [ %63, %61 ]
  %68 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 13
  %69 = load i32, ptr %68, align 8, !tbaa !229
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %117, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  %73 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4
  %74 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 15
  %75 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 1
  %76 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %77 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 2
  br label %110

78:                                               ; preds = %59, %61
  %79 = phi i64 [ 0, %59 ], [ %91, %61 ]
  %80 = phi i64 [ 1, %59 ], [ %65, %61 ]
  %81 = phi i32 [ %57, %59 ], [ %63, %61 ]
  %82 = load ptr, ptr %50, align 8, !tbaa !227
  %83 = zext i32 %81 to i64
  %84 = shl nuw nsw i64 %83, 2
  %85 = load ptr, ptr %82, align 8, !tbaa !167
  %86 = getelementptr inbounds ptr, ptr %85, i64 2
  %87 = load ptr, ptr %86, align 8
  %88 = invoke noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(8) %82, i64 noundef %84) #13
          to label %89 unwind label %106

89:                                               ; preds = %78
  %90 = getelementptr inbounds ptr, ptr %55, i64 %79
  store ptr %88, ptr %90, align 8, !tbaa !198
  %91 = add nuw nsw i64 %79, 1
  %92 = load i32, ptr %11, align 8, !tbaa !225
  %93 = zext i32 %92 to i64
  %94 = icmp ult i64 %91, %93
  br i1 %94, label %95, label %61

95:                                               ; preds = %89, %95
  %96 = phi i64 [ %98, %95 ], [ %80, %89 ]
  %97 = getelementptr inbounds i32, ptr %88, i64 %96
  store i32 %60, ptr %97, align 4, !tbaa !208
  %98 = add nuw nsw i64 %96, 1
  %99 = load i32, ptr %11, align 8, !tbaa !225
  %100 = zext i32 %99 to i64
  %101 = icmp ult i64 %98, %100
  br i1 %101, label %95, label %61, !llvm.loop !230

102:                                              ; preds = %256
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %275

104:                                              ; preds = %169
  %105 = landingpad { ptr, i32 }
          cleanup
  br label %275

106:                                              ; preds = %78
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %275

108:                                              ; preds = %48, %269
  %109 = landingpad { ptr, i32 }
          cleanup
  br label %275

110:                                              ; preds = %71, %248
  %111 = phi i32 [ %69, %71 ], [ %249, %248 ]
  %112 = phi i32 [ %67, %71 ], [ %250, %248 ]
  %113 = phi i32 [ %67, %71 ], [ %251, %248 ]
  %114 = phi i32 [ %67, %71 ], [ %252, %248 ]
  %115 = phi i64 [ 0, %71 ], [ %253, %248 ]
  %116 = icmp eq i32 %114, 0
  br i1 %116, label %248, label %125

117:                                              ; preds = %248, %66
  %118 = phi i32 [ %67, %66 ], [ %250, %248 ]
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %269, label %256

120:                                              ; preds = %241, %133
  %121 = phi i64 [ %134, %133 ], [ %244, %241 ]
  %122 = phi i32 [ %126, %133 ], [ %243, %241 ]
  %123 = icmp ult i64 %130, %121
  %124 = add nuw nsw i64 %129, 1
  br i1 %123, label %125, label %246, !llvm.loop !231

125:                                              ; preds = %110, %120
  %126 = phi i32 [ %122, %120 ], [ %112, %110 ]
  %127 = phi i32 [ %122, %120 ], [ %113, %110 ]
  %128 = phi i64 [ %130, %120 ], [ 0, %110 ]
  %129 = phi i64 [ %124, %120 ], [ 1, %110 ]
  %130 = add nuw nsw i64 %128, 1
  %131 = zext i32 %127 to i64
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %135, label %133

133:                                              ; preds = %125
  %134 = zext i32 %126 to i64
  br label %120

135:                                              ; preds = %125
  %136 = getelementptr inbounds ptr, ptr %55, i64 %128
  br label %137

137:                                              ; preds = %135, %241
  %138 = phi i64 [ %129, %135 ], [ %242, %241 ]
  %139 = load ptr, ptr %72, align 8, !tbaa !207
  %140 = getelementptr inbounds ptr, ptr %139, i64 %115
  %141 = load ptr, ptr %140, align 8, !tbaa !198
  %142 = getelementptr inbounds i32, ptr %141, i64 %128
  %143 = load i32, ptr %142, align 4, !tbaa !208
  %144 = icmp eq i32 %143, %73
  br i1 %144, label %241, label %145

145:                                              ; preds = %137
  %146 = getelementptr inbounds i32, ptr %141, i64 %138
  %147 = load i32, ptr %146, align 4, !tbaa !208
  %148 = icmp eq i32 %147, %73
  br i1 %148, label %241, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr %136, align 8, !tbaa !198
  %151 = getelementptr inbounds i32, ptr %150, i64 %138
  %152 = load i32, ptr %151, align 4, !tbaa !208
  %153 = icmp eq i32 %152, %73
  br i1 %153, label %154, label %241

154:                                              ; preds = %149
  %155 = load i8, ptr %74, align 1, !tbaa !201, !range !181, !noundef !182
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %154
  %158 = load ptr, ptr %75, align 8, !tbaa !205
  %159 = getelementptr inbounds ptr, ptr %158, i64 %128
  %160 = load ptr, ptr %159, align 8, !tbaa !198
  %161 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %160) #13
  %162 = icmp eq i32 %161, %76
  br i1 %162, label %241, label %163

163:                                              ; preds = %157
  %164 = load ptr, ptr %75, align 8, !tbaa !205
  %165 = getelementptr inbounds ptr, ptr %164, i64 %138
  %166 = load ptr, ptr %165, align 8, !tbaa !198
  %167 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %166) #13
  %168 = icmp eq i32 %167, %76
  br i1 %168, label %241, label %169

169:                                              ; preds = %163, %154
  %170 = load ptr, ptr %77, align 8, !tbaa !209
  %171 = getelementptr inbounds i32, ptr %170, i64 %128
  %172 = load i32, ptr %171, align 4, !tbaa !210
  %173 = load ptr, ptr %75, align 8, !tbaa !205
  %174 = getelementptr inbounds ptr, ptr %173, i64 %128
  %175 = load ptr, ptr %174, align 8, !tbaa !198
  %176 = getelementptr inbounds i32, ptr %170, i64 %138
  %177 = load i32, ptr %176, align 4, !tbaa !210
  %178 = getelementptr inbounds ptr, ptr %173, i64 %138
  %179 = load ptr, ptr %178, align 8, !tbaa !198
  %180 = invoke noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard8conflictEPNS_13SchemaGrammarENS_15ContentSpecNode9NodeTypesEPNS_5QNameES4_S6_PNS_27SubstitutionGroupComparatorE(ptr noundef %1, i32 noundef %172, ptr noundef %175, i32 noundef %177, ptr noundef %179, ptr noundef nonnull %8) #13
          to label %181 unwind label %104

181:                                              ; preds = %169
  %182 = load ptr, ptr %136, align 8, !tbaa !198
  %183 = getelementptr inbounds i32, ptr %182, i64 %138
  br i1 %180, label %184, label %240

184:                                              ; preds = %181
  store i32 1, ptr %183, align 4, !tbaa !208
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #14
  %185 = load ptr, ptr %50, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 1023, ptr noundef %185) #13
          to label %186 unwind label %193

186:                                              ; preds = %184
  %187 = load ptr, ptr %77, align 8, !tbaa !209
  %188 = getelementptr inbounds i32, ptr %187, i64 %128
  %189 = load i32, ptr %188, align 4, !tbaa !210
  %190 = and i32 %189, 15
  %191 = add nsw i32 %190, -6
  %192 = icmp ult i32 %191, 3
  br i1 %192, label %197, label %201

193:                                              ; preds = %184
  %194 = landingpad { ptr, i32 }
          cleanup
  br label %238

195:                                              ; preds = %197, %206, %201
  %196 = landingpad { ptr, i32 }
          cleanup
  br label %236

197:                                              ; preds = %186
  %198 = zext nneg i32 %191 to i64
  %199 = getelementptr inbounds [3 x ptr], ptr @switch.table._ZN11xercesc_2_715DFAContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt.4, i64 0, i64 %198
  %200 = load ptr, ptr %199, align 8
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull %200) #13
          to label %207 unwind label %195

201:                                              ; preds = %186
  %202 = load ptr, ptr %75, align 8, !tbaa !205
  %203 = getelementptr inbounds ptr, ptr %202, i64 %128
  %204 = load ptr, ptr %203, align 8, !tbaa !198
  %205 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %204) #13
          to label %206 unwind label %195

206:                                              ; preds = %201
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %205) #13
          to label %207 unwind label %195

207:                                              ; preds = %197, %206
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #14
  %208 = load ptr, ptr %50, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 1023, ptr noundef %208) #13
          to label %209 unwind label %216

209:                                              ; preds = %207
  %210 = load ptr, ptr %77, align 8, !tbaa !209
  %211 = getelementptr inbounds i32, ptr %210, i64 %138
  %212 = load i32, ptr %211, align 4, !tbaa !210
  %213 = and i32 %212, 15
  %214 = add nsw i32 %213, -6
  %215 = icmp ult i32 %214, 3
  br i1 %215, label %220, label %224

216:                                              ; preds = %207
  %217 = landingpad { ptr, i32 }
          cleanup
  br label %234

218:                                              ; preds = %220, %230, %229, %224
  %219 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #11
  br label %234

220:                                              ; preds = %209
  %221 = zext nneg i32 %214 to i64
  %222 = getelementptr inbounds [3 x ptr], ptr @switch.table._ZN11xercesc_2_715DFAContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt.4, i64 0, i64 %221
  %223 = load ptr, ptr %222, align 8
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %223) #13
          to label %230 unwind label %218

224:                                              ; preds = %209
  %225 = load ptr, ptr %75, align 8, !tbaa !205
  %226 = getelementptr inbounds ptr, ptr %225, i64 %138
  %227 = load ptr, ptr %226, align 8, !tbaa !198
  %228 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %227) #13
          to label %229 unwind label %218

229:                                              ; preds = %224
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef %228) #13
          to label %230 unwind label %218

230:                                              ; preds = %220, %229
  %231 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #13
  %232 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #13
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 88, ptr noundef %6, ptr noundef %231, ptr noundef %232, ptr noundef null) #13
          to label %233 unwind label %218

233:                                              ; preds = %230
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #14
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %9) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #14
  br label %241

234:                                              ; preds = %218, %216
  %235 = phi { ptr, i32 } [ %219, %218 ], [ %217, %216 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #14
  br label %236

236:                                              ; preds = %234, %195
  %237 = phi { ptr, i32 } [ %235, %234 ], [ %196, %195 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %9) #11
  br label %238

238:                                              ; preds = %236, %193
  %239 = phi { ptr, i32 } [ %237, %236 ], [ %194, %193 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #14
  br label %275

240:                                              ; preds = %181
  store i32 0, ptr %183, align 4, !tbaa !208
  br label %241

241:                                              ; preds = %137, %145, %149, %240, %233, %157, %163
  %242 = add nuw nsw i64 %138, 1
  %243 = load i32, ptr %11, align 8, !tbaa !225
  %244 = zext i32 %243 to i64
  %245 = icmp ult i64 %242, %244
  br i1 %245, label %137, label %120, !llvm.loop !232

246:                                              ; preds = %120
  %247 = load i32, ptr %68, align 8, !tbaa !229
  br label %248

248:                                              ; preds = %246, %110
  %249 = phi i32 [ %247, %246 ], [ %111, %110 ]
  %250 = phi i32 [ %122, %246 ], [ %112, %110 ]
  %251 = phi i32 [ %122, %246 ], [ %113, %110 ]
  %252 = phi i32 [ %122, %246 ], [ 0, %110 ]
  %253 = add nuw nsw i64 %115, 1
  %254 = zext i32 %249 to i64
  %255 = icmp ult i64 %253, %254
  br i1 %255, label %110, label %117, !llvm.loop !233

256:                                              ; preds = %117, %264
  %257 = phi i64 [ %265, %264 ], [ 0, %117 ]
  %258 = load ptr, ptr %50, align 8, !tbaa !227
  %259 = getelementptr inbounds ptr, ptr %55, i64 %257
  %260 = load ptr, ptr %259, align 8, !tbaa !198
  %261 = load ptr, ptr %258, align 8, !tbaa !167
  %262 = getelementptr inbounds ptr, ptr %261, i64 3
  %263 = load ptr, ptr %262, align 8
  invoke void %263(ptr noundef nonnull align 8 dereferenceable(8) %258, ptr noundef %260) #13
          to label %264 unwind label %102

264:                                              ; preds = %256
  %265 = add nuw nsw i64 %257, 1
  %266 = load i32, ptr %11, align 8, !tbaa !225
  %267 = zext i32 %266 to i64
  %268 = icmp ult i64 %265, %267
  br i1 %268, label %256, label %269, !llvm.loop !234

269:                                              ; preds = %264, %117
  %270 = load ptr, ptr %50, align 8, !tbaa !227
  %271 = load ptr, ptr %270, align 8, !tbaa !167
  %272 = getelementptr inbounds ptr, ptr %271, i64 3
  %273 = load ptr, ptr %272, align 8
  invoke void %273(ptr noundef nonnull align 8 dereferenceable(8) %270, ptr noundef %55) #13
          to label %274 unwind label %108

274:                                              ; preds = %269
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  ret void

275:                                              ; preds = %102, %106, %108, %104, %238
  %276 = phi { ptr, i32 } [ %239, %238 ], [ %103, %102 ], [ %105, %104 ], [ %107, %106 ], [ %109, %108 ]
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  resume { ptr, i32 } %276
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DFAContentModel28getContentLeafNameTypeVectorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0) unnamed_addr #2 align 2 !prof !235 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !236
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715DFAContentModel12getNextStateEjj(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !222 {
  %4 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4, !tbaa !208
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %30, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 13
  %8 = load i32, ptr %7, align 8, !tbaa !229
  %9 = icmp ugt i32 %8, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, %2
  %13 = select i1 %9, i1 %12, i1 false
  br i1 %13, label %21, label %14

14:                                               ; preds = %6
  %15 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %16 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str.3, i32 noundef 234, i32 noundef 6, ptr noundef %17) #13
          to label %18 unwind label %19

18:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %15) #14
  resume { ptr, i32 } %20

21:                                               ; preds = %6
  %22 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !207
  %24 = zext i32 %1 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !198
  %27 = zext i32 %2 to i64
  %28 = getelementptr inbounds i32, ptr %26, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !208
  br label %30

30:                                               ; preds = %3, %21
  %31 = phi i32 [ %29, %21 ], [ %1, %3 ]
  ret i32 %31
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSetD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !237 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !238
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !240

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !241
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #12
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DFAContentModelC2EbPNS_15ContentSpecNodeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !222 {
  %5 = zext i1 %1 to i8
  tail call void @_ZN11xercesc_2_715XMLContentModelC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715DFAContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !167
  %6 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 5
  store i32 0, ptr %7, align 8, !tbaa !242
  %8 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 6
  %9 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 10
  %10 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %6, i8 0, i64 21, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %9, i8 0, i64 28, i1 false)
  store i8 %5, ptr %10, align 4, !tbaa !199
  %11 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 15
  store i8 0, ptr %11, align 1, !tbaa !201
  %12 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 16
  store ptr null, ptr %12, align 8, !tbaa !236
  %13 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  store ptr %3, ptr %13, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %2) #13
          to label %14 unwind label %15

14:                                               ; preds = %4
  ret void

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_715XMLContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLContentModelC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !243 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715XMLContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !244 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !227
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %4) #13
  %6 = load ptr, ptr %3, align 8, !tbaa !227
  %7 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %6) #13
          to label %8 unwind label %68

8:                                                ; preds = %2
  %9 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE, align 4, !tbaa !208
  %10 = load ptr, ptr %3, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %9, ptr noundef %10) #13
          to label %11 unwind label %70

11:                                               ; preds = %8
  %12 = load ptr, ptr %3, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %5, ptr noundef nonnull %7, i32 noundef -1, i1 noundef zeroext true, ptr noundef %12) #13
          to label %13 unwind label %68

13:                                               ; preds = %11
  %14 = tail call noundef ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) #13
  %15 = load ptr, ptr %3, align 8, !tbaa !227
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %15) #13
  %17 = load ptr, ptr %3, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_710CMBinaryOpC1ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %16, i32 noundef 5, ptr noundef %14, ptr noundef nonnull %5, ptr noundef %17) #13
          to label %18 unwind label %74

18:                                               ; preds = %13
  %19 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 8
  store ptr %16, ptr %19, align 8, !tbaa !245
  %20 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !246
  %22 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 5
  store i32 %21, ptr %22, align 8, !tbaa !242
  %23 = add i32 %21, 1
  store i32 %23, ptr %20, align 8, !tbaa !246
  tail call void @_ZN11xercesc_2_76CMLeaf11setPositionEj(ptr noundef nonnull align 8 dereferenceable(61) %5, i32 noundef %21) #13
  %24 = load ptr, ptr %3, align 8, !tbaa !227
  %25 = load i32, ptr %20, align 8, !tbaa !246
  %26 = zext i32 %25 to i64
  %27 = shl nuw nsw i64 %26, 3
  %28 = load ptr, ptr %24, align 8, !tbaa !167
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef %27) #13
  %32 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 10
  store ptr %31, ptr %32, align 8, !tbaa !247
  %33 = load ptr, ptr %3, align 8, !tbaa !227
  %34 = load i32, ptr %20, align 8, !tbaa !246
  %35 = zext i32 %34 to i64
  %36 = shl nuw nsw i64 %35, 2
  %37 = load ptr, ptr %33, align 8, !tbaa !167
  %38 = getelementptr inbounds ptr, ptr %37, i64 2
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef %36) #13
  %41 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 11
  store ptr %40, ptr %41, align 8, !tbaa !248
  %42 = load ptr, ptr %19, align 8, !tbaa !245
  %43 = tail call noundef i32 @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %42, i32 noundef 0) #13
  %44 = load ptr, ptr %3, align 8, !tbaa !227
  %45 = load i32, ptr %20, align 8, !tbaa !246
  %46 = zext i32 %45 to i64
  %47 = shl nuw nsw i64 %46, 3
  %48 = load ptr, ptr %44, align 8, !tbaa !167
  %49 = getelementptr inbounds ptr, ptr %48, i64 2
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %44, i64 noundef %47) #13
  %52 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 7
  store ptr %51, ptr %52, align 8, !tbaa !249
  %53 = load i32, ptr %20, align 8, !tbaa !246
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %78, label %55, !prof !250

55:                                               ; preds = %18, %61
  %56 = phi i64 [ %64, %61 ], [ 0, %18 ]
  %57 = load ptr, ptr %3, align 8, !tbaa !227
  %58 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %57) #13
  %59 = load i32, ptr %20, align 8, !tbaa !246
  %60 = load ptr, ptr %3, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %58, i32 noundef %59, ptr noundef %60) #13
          to label %61 unwind label %76

61:                                               ; preds = %55
  %62 = load ptr, ptr %52, align 8, !tbaa !249
  %63 = getelementptr inbounds ptr, ptr %62, i64 %56
  store ptr %58, ptr %63, align 8, !tbaa !198
  %64 = add nuw nsw i64 %56, 1
  %65 = load i32, ptr %20, align 8, !tbaa !246
  %66 = zext i32 %65 to i64
  %67 = icmp ult i64 %64, %66
  br i1 %67, label %55, label %78, !prof !251, !llvm.loop !252

68:                                               ; preds = %11, %2
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %72

70:                                               ; preds = %8
  %71 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %7, ptr noundef %6) #11
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi { ptr, i32 } [ %69, %68 ], [ %71, %70 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #11
  br label %570

74:                                               ; preds = %13
  %75 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %15) #11
  br label %570

76:                                               ; preds = %55
  %77 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %58, ptr noundef %57) #11
  br label %570

78:                                               ; preds = %61, %18
  %79 = load ptr, ptr %19, align 8, !tbaa !245
  tail call void @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %79) #13
  %80 = load ptr, ptr %14, align 8, !tbaa !167
  %81 = getelementptr inbounds ptr, ptr %80, i64 2
  %82 = load ptr, ptr %81, align 8
  %83 = tail call noundef zeroext i1 %82(ptr noundef nonnull align 8 dereferenceable(44) %14) #13
  %84 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 4
  %85 = zext i1 %83 to i8
  store i8 %85, ptr %84, align 4, !tbaa !195
  %86 = load ptr, ptr %3, align 8, !tbaa !227
  %87 = load i32, ptr %20, align 8, !tbaa !246
  %88 = zext i32 %87 to i64
  %89 = shl nuw nsw i64 %88, 3
  %90 = load ptr, ptr %86, align 8, !tbaa !167
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8
  %93 = tail call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %86, i64 noundef %89) #13
  %94 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 1
  store ptr %93, ptr %94, align 8, !tbaa !205
  %95 = load ptr, ptr %3, align 8, !tbaa !227
  %96 = load i32, ptr %20, align 8, !tbaa !246
  %97 = zext i32 %96 to i64
  %98 = shl nuw nsw i64 %97, 2
  %99 = load ptr, ptr %95, align 8, !tbaa !167
  %100 = getelementptr inbounds ptr, ptr %99, i64 2
  %101 = load ptr, ptr %100, align 8
  %102 = tail call noundef ptr %101(ptr noundef nonnull align 8 dereferenceable(8) %95, i64 noundef %98) #13
  %103 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 2
  store ptr %102, ptr %103, align 8, !tbaa !209
  %104 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 3
  store i32 0, ptr %104, align 8, !tbaa !225
  %105 = load i32, ptr %20, align 8, !tbaa !246
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107, !prof !250

107:                                              ; preds = %78
  %108 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 16
  %109 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 14
  br label %116

110:                                              ; preds = %206, %78
  %111 = phi i32 [ 0, %78 ], [ %209, %206 ]
  %112 = phi i32 [ 0, %78 ], [ %207, %206 ]
  %113 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 16
  %114 = load ptr, ptr %113, align 8, !tbaa !236
  %115 = icmp eq ptr %114, null
  br i1 %115, label %217, label %212, !prof !253

116:                                              ; preds = %107, %206
  %117 = phi i64 [ 0, %107 ], [ %208, %206 ]
  %118 = load ptr, ptr %3, align 8, !tbaa !227
  %119 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %118) #13
  %120 = load ptr, ptr %3, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %119, ptr noundef %120) #13
          to label %121 unwind label %137

121:                                              ; preds = %116
  %122 = load ptr, ptr %94, align 8, !tbaa !205
  %123 = getelementptr inbounds ptr, ptr %122, i64 %117
  store ptr %119, ptr %123, align 8, !tbaa !198
  %124 = load ptr, ptr %41, align 8, !tbaa !248
  %125 = getelementptr inbounds i32, ptr %124, i64 %117
  %126 = load i32, ptr %125, align 4, !tbaa !210
  %127 = and i32 %126, 15
  %128 = icmp ne i32 %127, 0
  %129 = load ptr, ptr %108, align 8
  %130 = icmp eq ptr %129, null
  %131 = select i1 %128, i1 %130, i1 false
  br i1 %131, label %132, label %141, !prof !254

132:                                              ; preds = %121
  %133 = load ptr, ptr %3, align 8, !tbaa !227
  %134 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %133) #13
  %135 = load ptr, ptr %3, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_725ContentLeafNameTypeVectorC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(28) %134, ptr noundef %135) #13
          to label %136 unwind label %139

136:                                              ; preds = %132
  store ptr %134, ptr %108, align 8, !tbaa !236
  br label %141

137:                                              ; preds = %116
  %138 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %119, ptr noundef %118) #11
  br label %570

139:                                              ; preds = %132
  %140 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %134, ptr noundef %133) #11
  br label %570

141:                                              ; preds = %136, %121
  %142 = load ptr, ptr %32, align 8, !tbaa !247
  %143 = getelementptr inbounds ptr, ptr %142, i64 %117
  %144 = load ptr, ptr %143, align 8, !tbaa !198
  %145 = tail call noundef ptr @_ZN11xercesc_2_76CMLeaf10getElementEv(ptr noundef nonnull align 8 dereferenceable(61) %144) #13
  %146 = load i8, ptr %109, align 4, !tbaa !199, !range !181, !noundef !182
  %147 = icmp ne i8 %146, 0
  %148 = icmp ne ptr %145, null
  %149 = and i1 %148, %147
  br i1 %149, label %150, label %152, !prof !254

150:                                              ; preds = %141
  %151 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %145) #13
  br label %152

152:                                              ; preds = %150, %141
  %153 = phi ptr [ %151, %150 ], [ null, %141 ]
  %154 = load i32, ptr %104, align 8, !tbaa !225
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %192, label %156, !prof !255

156:                                              ; preds = %152, %182
  %157 = phi i64 [ %183, %182 ], [ 0, %152 ]
  %158 = load ptr, ptr %94, align 8, !tbaa !205
  %159 = getelementptr inbounds ptr, ptr %158, i64 %157
  %160 = load ptr, ptr %159, align 8, !tbaa !198
  %161 = load i8, ptr %109, align 4, !tbaa !199, !range !181, !noundef !182
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %166, label %163, !prof !256

163:                                              ; preds = %156
  %164 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %160) #13
  %165 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %164, ptr noundef %153) #13
  br i1 %165, label %187, label %182

166:                                              ; preds = %156
  %167 = load ptr, ptr %103, align 8, !tbaa !209
  %168 = getelementptr inbounds i32, ptr %167, i64 %157
  %169 = load i32, ptr %168, align 4, !tbaa !210
  %170 = load ptr, ptr %41, align 8, !tbaa !248
  %171 = getelementptr inbounds i32, ptr %170, i64 %117
  %172 = load i32, ptr %171, align 4, !tbaa !210
  %173 = icmp eq i32 %169, %172
  br i1 %173, label %174, label %182, !prof !256

174:                                              ; preds = %166
  %175 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %160) #13
  %176 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %145) #13
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %182, !prof !257

178:                                              ; preds = %174
  %179 = tail call noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %160) #13
  %180 = tail call noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %145) #13
  %181 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %179, ptr noundef %180) #13
  br i1 %181, label %187, label %182, !prof !258

182:                                              ; preds = %166, %174, %178, %163
  %183 = add nuw nsw i64 %157, 1
  %184 = load i32, ptr %104, align 8, !tbaa !225
  %185 = zext i32 %184 to i64
  %186 = icmp ult i64 %183, %185
  br i1 %186, label %156, label %187, !prof !259, !llvm.loop !260

187:                                              ; preds = %182, %163, %178
  %188 = phi i64 [ %183, %182 ], [ %157, %163 ], [ %157, %178 ]
  %189 = trunc i64 %188 to i32
  %190 = load i32, ptr %104, align 8, !tbaa !225
  %191 = icmp eq i32 %190, %189
  br i1 %191, label %192, label %206, !prof !261

192:                                              ; preds = %152, %187
  %193 = phi i32 [ %190, %187 ], [ 0, %152 ]
  %194 = load ptr, ptr %94, align 8, !tbaa !205
  %195 = zext i32 %193 to i64
  %196 = getelementptr inbounds ptr, ptr %194, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !198
  tail call void @_ZN11xercesc_2_75QName9setValuesERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %197, ptr noundef nonnull align 8 dereferenceable(56) %145) #13
  %198 = load ptr, ptr %41, align 8, !tbaa !248
  %199 = getelementptr inbounds i32, ptr %198, i64 %117
  %200 = load i32, ptr %199, align 4, !tbaa !210
  %201 = load ptr, ptr %103, align 8, !tbaa !209
  %202 = load i32, ptr %104, align 8, !tbaa !225
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i32, ptr %201, i64 %203
  store i32 %200, ptr %204, align 4, !tbaa !210
  %205 = add i32 %202, 1
  store i32 %205, ptr %104, align 8, !tbaa !225
  br label %206

206:                                              ; preds = %192, %187
  %207 = phi i32 [ %205, %192 ], [ %190, %187 ]
  %208 = add nuw nsw i64 %117, 1
  %209 = load i32, ptr %20, align 8, !tbaa !246
  %210 = zext i32 %209 to i64
  %211 = icmp ult i64 %208, %210
  br i1 %211, label %116, label %110, !prof !251, !llvm.loop !262

212:                                              ; preds = %110
  %213 = load ptr, ptr %94, align 8, !tbaa !205
  %214 = load ptr, ptr %103, align 8, !tbaa !209
  tail call void @_ZN11xercesc_2_725ContentLeafNameTypeVector9setValuesEPPNS_5QNameEPNS_15ContentSpecNode9NodeTypesEj(ptr noundef nonnull align 8 dereferenceable(28) %114, ptr noundef %213, ptr noundef %214, i32 noundef %112) #13
  %215 = load i32, ptr %20, align 8, !tbaa !246
  %216 = load i32, ptr %104, align 8, !tbaa !225
  br label %217

217:                                              ; preds = %212, %110
  %218 = phi i32 [ %216, %212 ], [ %112, %110 ]
  %219 = phi i32 [ %215, %212 ], [ %111, %110 ]
  %220 = load ptr, ptr %3, align 8, !tbaa !227
  %221 = add i32 %218, %219
  %222 = zext i32 %221 to i64
  %223 = shl nuw nsw i64 %222, 2
  %224 = load ptr, ptr %220, align 8, !tbaa !167
  %225 = getelementptr inbounds ptr, ptr %224, i64 2
  %226 = load ptr, ptr %225, align 8
  %227 = tail call noundef ptr %226(ptr noundef nonnull align 8 dereferenceable(8) %220, i64 noundef %223) #13
  %228 = load i32, ptr %104, align 8, !tbaa !225
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230, !prof !250

230:                                              ; preds = %217
  %231 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 14
  br label %258

232:                                              ; preds = %274, %217
  %233 = load i32, ptr %20, align 8, !tbaa !246
  %234 = shl i32 %233, 2
  %235 = load ptr, ptr %3, align 8, !tbaa !227
  %236 = zext i32 %234 to i64
  %237 = shl nuw nsw i64 %236, 3
  %238 = load ptr, ptr %235, align 8, !tbaa !167
  %239 = getelementptr inbounds ptr, ptr %238, i64 2
  %240 = load ptr, ptr %239, align 8
  %241 = tail call noundef ptr %240(ptr noundef nonnull align 8 dereferenceable(8) %235, i64 noundef %237) #13
  %242 = load ptr, ptr %3, align 8, !tbaa !227
  %243 = load ptr, ptr %242, align 8, !tbaa !167
  %244 = getelementptr inbounds ptr, ptr %243, i64 2
  %245 = load ptr, ptr %244, align 8
  %246 = tail call noundef ptr %245(ptr noundef nonnull align 8 dereferenceable(8) %242, i64 noundef %236) #13
  %247 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 6
  store ptr %246, ptr %247, align 8, !tbaa !219
  %248 = load ptr, ptr %3, align 8, !tbaa !227
  %249 = load ptr, ptr %248, align 8, !tbaa !167
  %250 = getelementptr inbounds ptr, ptr %249, i64 2
  %251 = load ptr, ptr %250, align 8
  %252 = tail call noundef ptr %251(ptr noundef nonnull align 8 dereferenceable(8) %248, i64 noundef %237) #13
  %253 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  store ptr %252, ptr %253, align 8, !tbaa !207
  %254 = load ptr, ptr %3, align 8, !tbaa !227
  %255 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %254) #13
  %256 = load ptr, ptr %19, align 8, !tbaa !245
  %257 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv(ptr noundef nonnull align 8 dereferenceable(44) %256) #13
          to label %322 unwind label %359

258:                                              ; preds = %230, %274
  %259 = phi i64 [ 0, %230 ], [ %279, %274 ]
  %260 = phi i32 [ 0, %230 ], [ %276, %274 ]
  %261 = load ptr, ptr %94, align 8, !tbaa !205
  %262 = getelementptr inbounds ptr, ptr %261, i64 %259
  %263 = load ptr, ptr %262, align 8, !tbaa !198
  %264 = load i8, ptr %231, align 4, !tbaa !199, !range !181, !noundef !182
  %265 = icmp ne i8 %264, 0
  %266 = icmp ne ptr %263, null
  %267 = select i1 %265, i1 %266, i1 false
  br i1 %267, label %268, label %270, !prof !254

268:                                              ; preds = %258
  %269 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %263) #13
  br label %270

270:                                              ; preds = %268, %258
  %271 = phi ptr [ %269, %268 ], [ null, %258 ]
  %272 = load i32, ptr %20, align 8, !tbaa !246
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %283, !prof !255

274:                                              ; preds = %316, %270
  %275 = phi i32 [ %260, %270 ], [ %317, %316 ]
  %276 = add i32 %275, 1
  %277 = zext i32 %275 to i64
  %278 = getelementptr inbounds i32, ptr %227, i64 %277
  store i32 -1, ptr %278, align 4, !tbaa !208
  %279 = add nuw nsw i64 %259, 1
  %280 = load i32, ptr %104, align 8, !tbaa !225
  %281 = zext i32 %280 to i64
  %282 = icmp ult i64 %279, %281
  br i1 %282, label %258, label %232, !prof !251, !llvm.loop !263

283:                                              ; preds = %270, %316
  %284 = phi i64 [ %318, %316 ], [ 0, %270 ]
  %285 = phi i32 [ %317, %316 ], [ %260, %270 ]
  %286 = load ptr, ptr %32, align 8, !tbaa !247
  %287 = getelementptr inbounds ptr, ptr %286, i64 %284
  %288 = load ptr, ptr %287, align 8, !tbaa !198
  %289 = tail call noundef ptr @_ZN11xercesc_2_76CMLeaf10getElementEv(ptr noundef nonnull align 8 dereferenceable(61) %288) #13
  %290 = load i8, ptr %231, align 4, !tbaa !199, !range !181, !noundef !182
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %295, label %292, !prof !264

292:                                              ; preds = %283
  %293 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %289) #13
  %294 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %293, ptr noundef %271) #13
  br i1 %294, label %311, label %316

295:                                              ; preds = %283
  %296 = load ptr, ptr %103, align 8, !tbaa !209
  %297 = getelementptr inbounds i32, ptr %296, i64 %259
  %298 = load i32, ptr %297, align 4, !tbaa !210
  %299 = load ptr, ptr %41, align 8, !tbaa !248
  %300 = getelementptr inbounds i32, ptr %299, i64 %284
  %301 = load i32, ptr %300, align 4, !tbaa !210
  %302 = icmp eq i32 %298, %301
  br i1 %302, label %303, label %316, !prof !264

303:                                              ; preds = %295
  %304 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %289) #13
  %305 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %263) #13
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %316, !prof !265

307:                                              ; preds = %303
  %308 = tail call noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %289) #13
  %309 = tail call noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %263) #13
  %310 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %308, ptr noundef %309) #13
  br i1 %310, label %311, label %316, !prof !266

311:                                              ; preds = %307, %292
  %312 = add i32 %285, 1
  %313 = zext i32 %285 to i64
  %314 = getelementptr inbounds i32, ptr %227, i64 %313
  %315 = trunc i64 %284 to i32
  store i32 %315, ptr %314, align 4, !tbaa !208
  br label %316

316:                                              ; preds = %311, %295, %303, %307, %292
  %317 = phi i32 [ %285, %292 ], [ %285, %307 ], [ %285, %303 ], [ %285, %295 ], [ %312, %311 ]
  %318 = add nuw nsw i64 %284, 1
  %319 = load i32, ptr %20, align 8, !tbaa !246
  %320 = zext i32 %319 to i64
  %321 = icmp ult i64 %318, %320
  br i1 %321, label %283, label %274, !prof !267, !llvm.loop !268

322:                                              ; preds = %232
  invoke void @_ZN11xercesc_2_710CMStateSetC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %255, ptr noundef nonnull align 8 dereferenceable(32) %257) #13
          to label %323 unwind label %359

323:                                              ; preds = %322
  %324 = tail call noundef ptr @_ZNK11xercesc_2_715DFAContentModel16makeDefStateListEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #13
  %325 = load ptr, ptr %253, align 8, !tbaa !207
  store ptr %324, ptr %325, align 8, !tbaa !198
  store ptr %255, ptr %241, align 8, !tbaa !198
  %326 = load ptr, ptr %3, align 8, !tbaa !227
  %327 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %326) #13
  %328 = load ptr, ptr %3, align 8, !tbaa !227
  %329 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %328) #13
          to label %330 unwind label %361

330:                                              ; preds = %323
  invoke void @_ZN11xercesc_2_714HashCMStateSetC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %329) #13
          to label %331 unwind label %363

331:                                              ; preds = %330
  %332 = load ptr, ptr %3, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %327, i32 noundef %234, i1 noundef zeroext true, ptr noundef nonnull %329, ptr noundef %332) #13
          to label %340 unwind label %361

333:                                              ; preds = %483, %340
  %334 = phi i32 [ %345, %340 ], [ %484, %483 ]
  %335 = phi ptr [ %344, %340 ], [ %485, %483 ]
  %336 = phi i32 [ %343, %340 ], [ %486, %483 ]
  %337 = phi ptr [ %342, %340 ], [ %487, %483 ]
  %338 = zext i32 %336 to i64
  %339 = icmp ult i64 %356, %338
  br i1 %339, label %340, label %492, !prof !269, !llvm.loop !270

340:                                              ; preds = %331, %333
  %341 = phi i64 [ %356, %333 ], [ 0, %331 ]
  %342 = phi ptr [ %337, %333 ], [ null, %331 ]
  %343 = phi i32 [ %336, %333 ], [ 1, %331 ]
  %344 = phi ptr [ %335, %333 ], [ %241, %331 ]
  %345 = phi i32 [ %334, %333 ], [ %234, %331 ]
  %346 = getelementptr inbounds ptr, ptr %344, i64 %341
  %347 = load ptr, ptr %346, align 8, !tbaa !198
  %348 = load ptr, ptr %253, align 8, !tbaa !207
  %349 = getelementptr inbounds ptr, ptr %348, i64 %341
  %350 = load ptr, ptr %349, align 8, !tbaa !198
  %351 = load i32, ptr %22, align 8, !tbaa !242
  %352 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710CMStateSet6getBitEj(ptr noundef nonnull align 8 dereferenceable(32) %347, i32 noundef %351) #13
  %353 = load ptr, ptr %247, align 8, !tbaa !219
  %354 = getelementptr inbounds i8, ptr %353, i64 %341
  %355 = zext i1 %352 to i8
  store i8 %355, ptr %354, align 1, !tbaa !220
  %356 = add nuw nsw i64 %341, 1
  %357 = load i32, ptr %104, align 8, !tbaa !225
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %333, label %367, !prof !271

359:                                              ; preds = %322, %232
  %360 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %255, ptr noundef %254) #11
  br label %570

361:                                              ; preds = %331, %323
  %362 = landingpad { ptr, i32 }
          cleanup
  br label %365

363:                                              ; preds = %330
  %364 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %329, ptr noundef %328) #11
  br label %365

365:                                              ; preds = %363, %361
  %366 = phi { ptr, i32 } [ %362, %361 ], [ %364, %363 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %327, ptr noundef %326) #11
  br label %570

367:                                              ; preds = %340, %483
  %368 = phi i64 [ %488, %483 ], [ 0, %340 ]
  %369 = phi i32 [ %406, %483 ], [ 0, %340 ]
  %370 = phi ptr [ %487, %483 ], [ %342, %340 ]
  %371 = phi i32 [ %486, %483 ], [ %343, %340 ]
  %372 = phi ptr [ %485, %483 ], [ %344, %340 ]
  %373 = phi i32 [ %484, %483 ], [ %345, %340 ]
  %374 = icmp eq ptr %370, null
  br i1 %374, label %375, label %382, !prof !272

375:                                              ; preds = %367
  %376 = load ptr, ptr %3, align 8, !tbaa !227
  %377 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %376) #13
  %378 = load i32, ptr %20, align 8, !tbaa !246
  %379 = load ptr, ptr %3, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %377, i32 noundef %378, ptr noundef %379) #13
          to label %383 unwind label %380

380:                                              ; preds = %375
  %381 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %377, ptr noundef %376) #11
  br label %570

382:                                              ; preds = %367
  tail call void @_ZN11xercesc_2_710CMStateSet8zeroBitsEv(ptr noundef nonnull align 8 dereferenceable(32) %370) #13
  br label %383

383:                                              ; preds = %375, %382
  %384 = phi ptr [ %370, %382 ], [ %377, %375 ]
  %385 = zext i32 %369 to i64
  %386 = getelementptr inbounds i32, ptr %227, i64 %385
  %387 = load i32, ptr %386, align 4, !tbaa !208
  %388 = add i32 %369, 1
  %389 = icmp eq i32 %387, -1
  br i1 %389, label %405, label %390, !prof !273

390:                                              ; preds = %383, %399
  %391 = phi i32 [ %403, %399 ], [ %388, %383 ]
  %392 = phi i32 [ %402, %399 ], [ %387, %383 ]
  %393 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710CMStateSet6getBitEj(ptr noundef nonnull align 8 dereferenceable(32) %347, i32 noundef %392) #13
  br i1 %393, label %394, label %399, !prof !274

394:                                              ; preds = %390
  %395 = load ptr, ptr %52, align 8, !tbaa !249
  %396 = sext i32 %392 to i64
  %397 = getelementptr inbounds ptr, ptr %395, i64 %396
  %398 = load ptr, ptr %397, align 8, !tbaa !198
  tail call void @_ZN11xercesc_2_710CMStateSetoRERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %384, ptr noundef nonnull align 8 dereferenceable(32) %398) #13
  br label %399

399:                                              ; preds = %394, %390
  %400 = zext i32 %391 to i64
  %401 = getelementptr inbounds i32, ptr %227, i64 %400
  %402 = load i32, ptr %401, align 4, !tbaa !208
  %403 = add i32 %391, 1
  %404 = icmp eq i32 %402, -1
  br i1 %404, label %405, label %390, !prof !275, !llvm.loop !276

405:                                              ; preds = %399, %383
  %406 = phi i32 [ %388, %383 ], [ %403, %399 ]
  %407 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710CMStateSet7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(32) %384) #13
  br i1 %407, label %483, label %408, !prof !277

408:                                              ; preds = %405
  %409 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %327, ptr noundef nonnull %384) #13
  %410 = icmp eq ptr %409, null
  br i1 %410, label %414, label %411, !prof !278

411:                                              ; preds = %408
  %412 = tail call noundef i32 @_ZNK11xercesc_2_710XMLInteger8intValueEv(ptr noundef nonnull align 4 dereferenceable(4) %409) #13
  %413 = icmp eq i32 %412, %371
  br i1 %413, label %414, label %423, !prof !216

414:                                              ; preds = %408, %411
  %415 = zext i32 %371 to i64
  %416 = getelementptr inbounds ptr, ptr %372, i64 %415
  store ptr %384, ptr %416, align 8, !tbaa !198
  %417 = tail call noundef ptr @_ZNK11xercesc_2_715DFAContentModel16makeDefStateListEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #13
  %418 = load ptr, ptr %253, align 8, !tbaa !207
  %419 = getelementptr inbounds ptr, ptr %418, i64 %415
  store ptr %417, ptr %419, align 8, !tbaa !198
  %420 = load ptr, ptr %3, align 8, !tbaa !227
  %421 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 4, ptr noundef %420) #13
  tail call void @_ZN11xercesc_2_710XMLIntegerC2Ei(ptr noundef nonnull align 4 dereferenceable(4) %421, i32 noundef %371) #13
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %327, ptr noundef nonnull %384, ptr noundef nonnull %421) #13
  %422 = add i32 %371, 1
  br label %423

423:                                              ; preds = %414, %411
  %424 = phi i32 [ %371, %414 ], [ %412, %411 ]
  %425 = phi i32 [ %422, %414 ], [ %371, %411 ]
  %426 = phi ptr [ null, %414 ], [ %384, %411 ]
  %427 = getelementptr inbounds i32, ptr %350, i64 %368
  store i32 %424, ptr %427, align 4, !tbaa !208
  %428 = icmp eq i32 %425, %373
  br i1 %428, label %429, label %483, !prof !279

429:                                              ; preds = %423
  %430 = uitofp i32 %373 to double
  %431 = fmul double %430, 1.500000e+00
  %432 = fptoui double %431 to i32
  %433 = load ptr, ptr %3, align 8, !tbaa !227
  %434 = zext i32 %432 to i64
  %435 = shl nuw nsw i64 %434, 3
  %436 = load ptr, ptr %433, align 8, !tbaa !167
  %437 = getelementptr inbounds ptr, ptr %436, i64 2
  %438 = load ptr, ptr %437, align 8
  %439 = tail call noundef ptr %438(ptr noundef nonnull align 8 dereferenceable(8) %433, i64 noundef %435) #13
  %440 = load ptr, ptr %3, align 8, !tbaa !227
  %441 = load ptr, ptr %440, align 8, !tbaa !167
  %442 = getelementptr inbounds ptr, ptr %441, i64 2
  %443 = load ptr, ptr %442, align 8
  %444 = tail call noundef ptr %443(ptr noundef nonnull align 8 dereferenceable(8) %440, i64 noundef %434) #13
  %445 = load ptr, ptr %3, align 8, !tbaa !227
  %446 = load ptr, ptr %445, align 8, !tbaa !167
  %447 = getelementptr inbounds ptr, ptr %446, i64 2
  %448 = load ptr, ptr %447, align 8
  %449 = tail call noundef ptr %448(ptr noundef nonnull align 8 dereferenceable(8) %445, i64 noundef %435) #13
  %450 = icmp eq i32 %373, 0
  br i1 %450, label %453, label %451

451:                                              ; preds = %429
  %452 = zext i32 %373 to i64
  br label %468

453:                                              ; preds = %468, %429
  %454 = load ptr, ptr %3, align 8, !tbaa !227
  %455 = load ptr, ptr %454, align 8, !tbaa !167
  %456 = getelementptr inbounds ptr, ptr %455, i64 3
  %457 = load ptr, ptr %456, align 8
  tail call void %457(ptr noundef nonnull align 8 dereferenceable(8) %454, ptr noundef %372) #13
  %458 = load ptr, ptr %3, align 8, !tbaa !227
  %459 = load ptr, ptr %247, align 8, !tbaa !219
  %460 = load ptr, ptr %458, align 8, !tbaa !167
  %461 = getelementptr inbounds ptr, ptr %460, i64 3
  %462 = load ptr, ptr %461, align 8
  tail call void %462(ptr noundef nonnull align 8 dereferenceable(8) %458, ptr noundef %459) #13
  %463 = load ptr, ptr %3, align 8, !tbaa !227
  %464 = load ptr, ptr %253, align 8, !tbaa !207
  %465 = load ptr, ptr %463, align 8, !tbaa !167
  %466 = getelementptr inbounds ptr, ptr %465, i64 3
  %467 = load ptr, ptr %466, align 8
  tail call void %467(ptr noundef nonnull align 8 dereferenceable(8) %463, ptr noundef %464) #13
  store ptr %444, ptr %247, align 8, !tbaa !219
  store ptr %449, ptr %253, align 8, !tbaa !207
  br label %483

468:                                              ; preds = %451, %468
  %469 = phi i64 [ 0, %451 ], [ %481, %468 ]
  %470 = getelementptr inbounds ptr, ptr %372, i64 %469
  %471 = load ptr, ptr %470, align 8, !tbaa !198
  %472 = getelementptr inbounds ptr, ptr %439, i64 %469
  store ptr %471, ptr %472, align 8, !tbaa !198
  %473 = load ptr, ptr %247, align 8, !tbaa !219
  %474 = getelementptr inbounds i8, ptr %473, i64 %469
  %475 = load i8, ptr %474, align 1, !tbaa !220, !range !181, !noundef !182
  %476 = getelementptr inbounds i8, ptr %444, i64 %469
  store i8 %475, ptr %476, align 1, !tbaa !220
  %477 = load ptr, ptr %253, align 8, !tbaa !207
  %478 = getelementptr inbounds ptr, ptr %477, i64 %469
  %479 = load ptr, ptr %478, align 8, !tbaa !198
  %480 = getelementptr inbounds ptr, ptr %449, i64 %469
  store ptr %479, ptr %480, align 8, !tbaa !198
  %481 = add nuw nsw i64 %469, 1
  %482 = icmp eq i64 %481, %452
  br i1 %482, label %453, label %468, !llvm.loop !280

483:                                              ; preds = %423, %453, %405
  %484 = phi i32 [ %373, %405 ], [ %432, %453 ], [ %373, %423 ]
  %485 = phi ptr [ %372, %405 ], [ %439, %453 ], [ %372, %423 ]
  %486 = phi i32 [ %371, %405 ], [ %373, %453 ], [ %425, %423 ]
  %487 = phi ptr [ %384, %405 ], [ %426, %453 ], [ %426, %423 ]
  %488 = add nuw nsw i64 %368, 1
  %489 = load i32, ptr %104, align 8, !tbaa !225
  %490 = zext i32 %489 to i64
  %491 = icmp ult i64 %488, %490
  br i1 %491, label %367, label %333, !prof !281, !llvm.loop !282

492:                                              ; preds = %333
  %493 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 13
  store i32 %336, ptr %493, align 8, !tbaa !229
  %494 = icmp eq ptr %337, null
  br i1 %494, label %496, label %495, !prof !283

495:                                              ; preds = %492
  tail call void @_ZN11xercesc_2_710CMStateSetD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %337) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %337) #11
  br label %496

496:                                              ; preds = %495, %492
  %497 = load ptr, ptr %19, align 8, !tbaa !245
  %498 = icmp eq ptr %497, null
  br i1 %498, label %503, label %499

499:                                              ; preds = %496
  %500 = load ptr, ptr %497, align 8, !tbaa !167
  %501 = getelementptr inbounds ptr, ptr %500, i64 1
  %502 = load ptr, ptr %501, align 8
  tail call void %502(ptr noundef nonnull align 8 dereferenceable(44) %497) #11
  br label %503

503:                                              ; preds = %499, %496
  %504 = load i32, ptr %20, align 8, !tbaa !246
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %520, label %506, !prof !250

506:                                              ; preds = %503, %515
  %507 = phi i32 [ %516, %515 ], [ %504, %503 ]
  %508 = phi i64 [ %517, %515 ], [ 0, %503 ]
  %509 = load ptr, ptr %52, align 8, !tbaa !249
  %510 = getelementptr inbounds ptr, ptr %509, i64 %508
  %511 = load ptr, ptr %510, align 8, !tbaa !198
  %512 = icmp eq ptr %511, null
  br i1 %512, label %515, label %513

513:                                              ; preds = %506
  tail call void @_ZN11xercesc_2_710CMStateSetD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %511) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %511) #11
  %514 = load i32, ptr %20, align 8, !tbaa !246
  br label %515

515:                                              ; preds = %506, %513
  %516 = phi i32 [ %507, %506 ], [ %514, %513 ]
  %517 = add nuw nsw i64 %508, 1
  %518 = zext i32 %516 to i64
  %519 = icmp ult i64 %517, %518
  br i1 %519, label %506, label %520, !prof !251, !llvm.loop !284

520:                                              ; preds = %515, %503
  %521 = load ptr, ptr %3, align 8, !tbaa !227
  %522 = load ptr, ptr %52, align 8, !tbaa !249
  %523 = load ptr, ptr %521, align 8, !tbaa !167
  %524 = getelementptr inbounds ptr, ptr %523, i64 3
  %525 = load ptr, ptr %524, align 8
  tail call void %525(ptr noundef nonnull align 8 dereferenceable(8) %521, ptr noundef %522) #13
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %327) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %327) #11
  %526 = icmp eq i32 %336, 0
  br i1 %526, label %536, label %527, !prof !250

527:                                              ; preds = %520, %533
  %528 = phi i64 [ %534, %533 ], [ 0, %520 ]
  %529 = getelementptr inbounds ptr, ptr %335, i64 %528
  %530 = load ptr, ptr %529, align 8, !tbaa !198
  %531 = icmp eq ptr %530, null
  br i1 %531, label %533, label %532

532:                                              ; preds = %527
  tail call void @_ZN11xercesc_2_710CMStateSetD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %530) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %530) #11
  br label %533

533:                                              ; preds = %527, %532
  %534 = add nuw nsw i64 %528, 1
  %535 = icmp eq i64 %534, %338
  br i1 %535, label %536, label %527, !prof !285, !llvm.loop !286

536:                                              ; preds = %533, %520
  %537 = load ptr, ptr %3, align 8, !tbaa !227
  %538 = load ptr, ptr %537, align 8, !tbaa !167
  %539 = getelementptr inbounds ptr, ptr %538, i64 3
  %540 = load ptr, ptr %539, align 8
  tail call void %540(ptr noundef nonnull align 8 dereferenceable(8) %537, ptr noundef %335) #13
  %541 = load i32, ptr %20, align 8, !tbaa !246
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %560, label %543, !prof !250

543:                                              ; preds = %536, %555
  %544 = phi i32 [ %556, %555 ], [ %541, %536 ]
  %545 = phi i64 [ %557, %555 ], [ 0, %536 ]
  %546 = load ptr, ptr %32, align 8, !tbaa !247
  %547 = getelementptr inbounds ptr, ptr %546, i64 %545
  %548 = load ptr, ptr %547, align 8, !tbaa !198
  %549 = icmp eq ptr %548, null
  br i1 %549, label %555, label %550

550:                                              ; preds = %543
  %551 = load ptr, ptr %548, align 8, !tbaa !167
  %552 = getelementptr inbounds ptr, ptr %551, i64 1
  %553 = load ptr, ptr %552, align 8
  tail call void %553(ptr noundef nonnull align 8 dereferenceable(61) %548) #11
  %554 = load i32, ptr %20, align 8, !tbaa !246
  br label %555

555:                                              ; preds = %543, %550
  %556 = phi i32 [ %544, %543 ], [ %554, %550 ]
  %557 = add nuw nsw i64 %545, 1
  %558 = zext i32 %556 to i64
  %559 = icmp ult i64 %557, %558
  br i1 %559, label %543, label %560, !prof !251, !llvm.loop !287

560:                                              ; preds = %555, %536
  %561 = load ptr, ptr %3, align 8, !tbaa !227
  %562 = load ptr, ptr %32, align 8, !tbaa !247
  %563 = load ptr, ptr %561, align 8, !tbaa !167
  %564 = getelementptr inbounds ptr, ptr %563, i64 3
  %565 = load ptr, ptr %564, align 8
  tail call void %565(ptr noundef nonnull align 8 dereferenceable(8) %561, ptr noundef %562) #13
  %566 = load ptr, ptr %3, align 8, !tbaa !227
  %567 = load ptr, ptr %566, align 8, !tbaa !167
  %568 = getelementptr inbounds ptr, ptr %567, i64 3
  %569 = load ptr, ptr %568, align 8
  tail call void %569(ptr noundef nonnull align 8 dereferenceable(8) %566, ptr noundef %227) #13
  ret void

570:                                              ; preds = %74, %76, %139, %137, %365, %380, %359, %72
  %571 = phi { ptr, i32 } [ %73, %72 ], [ %77, %76 ], [ %75, %74 ], [ %140, %139 ], [ %138, %137 ], [ %360, %359 ], [ %381, %380 ], [ %366, %365 ]
  resume { ptr, i32 } %571
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !288 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !243 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLContentModelD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DFAContentModelC2EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !244 {
  %6 = zext i1 %1 to i8
  %7 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_715XMLContentModelC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715DFAContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !167
  %8 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 5
  store i32 0, ptr %9, align 8, !tbaa !242
  %10 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 6
  %11 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 10
  %12 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %8, i8 0, i64 21, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  store i8 %6, ptr %12, align 4, !tbaa !199
  %13 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 15
  store i8 %7, ptr %13, align 1, !tbaa !201
  %14 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 16
  store ptr null, ptr %14, align 8, !tbaa !236
  %15 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  store ptr %4, ptr %15, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %2) #13
          to label %16 unwind label %17

16:                                               ; preds = %5
  ret void

17:                                               ; preds = %5
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_715XMLContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715DFAContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !244 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715DFAContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !167
  %2 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !227
  %4 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !219
  %6 = load ptr, ptr %3, align 8, !tbaa !167
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #13
          to label %9 unwind label %88

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !229
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %13, !prof !250

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  br label %15

15:                                               ; preds = %13, %24
  %16 = phi i64 [ 0, %13 ], [ %25, %24 ]
  %17 = load ptr, ptr %2, align 8, !tbaa !227
  %18 = load ptr, ptr %14, align 8, !tbaa !207
  %19 = getelementptr inbounds ptr, ptr %18, i64 %16
  %20 = load ptr, ptr %19, align 8, !tbaa !198
  %21 = load ptr, ptr %17, align 8, !tbaa !167
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %20) #13
          to label %24 unwind label %86

24:                                               ; preds = %15
  %25 = add nuw nsw i64 %16, 1
  %26 = load i32, ptr %10, align 8, !tbaa !229
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %15, label %29, !prof !289, !llvm.loop !290

29:                                               ; preds = %24, %9
  %30 = load ptr, ptr %2, align 8, !tbaa !227
  %31 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !207
  %33 = load ptr, ptr %30, align 8, !tbaa !167
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
          to label %36 unwind label %88

36:                                               ; preds = %29
  %37 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !246
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %59, label %40, !prof !250

40:                                               ; preds = %36
  %41 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 1
  br label %42

42:                                               ; preds = %40, %54
  %43 = phi i32 [ %38, %40 ], [ %55, %54 ]
  %44 = phi i64 [ 0, %40 ], [ %56, %54 ]
  %45 = load ptr, ptr %41, align 8, !tbaa !205
  %46 = getelementptr inbounds ptr, ptr %45, i64 %44
  %47 = load ptr, ptr %46, align 8, !tbaa !198
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = load ptr, ptr %47, align 8, !tbaa !167
  %51 = getelementptr inbounds ptr, ptr %50, i64 1
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(56) %47) #11
  %53 = load i32, ptr %37, align 8, !tbaa !246
  br label %54

54:                                               ; preds = %42, %49
  %55 = phi i32 [ %43, %42 ], [ %53, %49 ]
  %56 = add nuw nsw i64 %44, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %42, label %59, !prof !251, !llvm.loop !291

59:                                               ; preds = %54, %36
  %60 = load ptr, ptr %2, align 8, !tbaa !227
  %61 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !205
  %63 = load ptr, ptr %60, align 8, !tbaa !167
  %64 = getelementptr inbounds ptr, ptr %63, i64 3
  %65 = load ptr, ptr %64, align 8
  invoke void %65(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %62) #13
          to label %66 unwind label %88

66:                                               ; preds = %59
  %67 = load ptr, ptr %2, align 8, !tbaa !227
  %68 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !209
  %70 = load ptr, ptr %67, align 8, !tbaa !167
  %71 = getelementptr inbounds ptr, ptr %70, i64 3
  %72 = load ptr, ptr %71, align 8
  invoke void %72(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef %69) #13
          to label %73 unwind label %88

73:                                               ; preds = %66
  %74 = load ptr, ptr %2, align 8, !tbaa !227
  %75 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 11
  %76 = load ptr, ptr %75, align 8, !tbaa !248
  %77 = load ptr, ptr %74, align 8, !tbaa !167
  %78 = getelementptr inbounds ptr, ptr %77, i64 3
  %79 = load ptr, ptr %78, align 8
  invoke void %79(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef %76) #13
          to label %80 unwind label %88

80:                                               ; preds = %73
  %81 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 16
  %82 = load ptr, ptr %81, align 8, !tbaa !236
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  tail call void @_ZN11xercesc_2_725ContentLeafNameTypeVectorD1Ev(ptr noundef nonnull align 8 dereferenceable(28) %82) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %82) #11
  br label %85

85:                                               ; preds = %84, %80
  tail call void @_ZN11xercesc_2_715XMLContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void

86:                                               ; preds = %15
  %87 = landingpad { ptr, i32 }
          catch ptr null
  br label %90

88:                                               ; preds = %1, %29, %59, %66, %73
  %89 = landingpad { ptr, i32 }
          catch ptr null
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi { ptr, i32 } [ %87, %86 ], [ %89, %88 ]
  %92 = extractvalue { ptr, i32 } %91, 0
  tail call void @__clang_call_terminate(ptr %92) #12
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_725ContentLeafNameTypeVectorD1Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !292 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !293
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !296 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !297

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !298
  %8 = load i16, ptr %1, align 2, !tbaa !298
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !300

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !301

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !298
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !302

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !303

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !298
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !304

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !305

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !298
  %28 = load i16, ptr %26, align 2, !tbaa !298
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !306, !llvm.loop !307

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !308 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !309
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727SubstitutionGroupComparatorC2EPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !222 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !310
  %4 = getelementptr inbounds %"class.xercesc_2_7::SubstitutionGroupComparator", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !312
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !prof !222 {
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !244 {
  %6 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef 0, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMLeafE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !167
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !184
  %8 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 3
  store i32 %2, ptr %8, align 8, !tbaa !186
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 4
  store i8 %6, ptr %9, align 4, !tbaa !178
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %23, !prof !283

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !313
  %14 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %13) #13
          to label %15 unwind label %19

15:                                               ; preds = %11
  %16 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !208
  %17 = load ptr, ptr %12, align 8, !tbaa !313
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %16, ptr noundef %17) #13
          to label %18 unwind label %21

18:                                               ; preds = %15
  store ptr %14, ptr %7, align 8, !tbaa !184
  store i8 1, ptr %9, align 4, !tbaa !178
  br label %24

19:                                               ; preds = %11
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %25

21:                                               ; preds = %15
  %22 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #11
  br label %25

23:                                               ; preds = %5
  store ptr %1, ptr %7, align 8, !tbaa !184
  br label %24

24:                                               ; preds = %23, %18
  ret void

25:                                               ; preds = %21, %19
  %26 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  tail call void @_ZN11xercesc_2_76CMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) #11
  resume { ptr, i32 } %26
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !314 {
  %3 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %4 = and i32 %3, 15
  %5 = add nsw i32 %4, -6
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %19, !prof !315

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !227
  %10 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %9) #13
  %11 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %12 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %11) #13
  %13 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !246
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !246
  %16 = load ptr, ptr %8, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_75CMAnyC1ENS_15ContentSpecNode9NodeTypesEjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(52) %10, i32 noundef %3, i32 noundef %12, i32 noundef %14, ptr noundef %16) #13
          to label %64 unwind label %17

17:                                               ; preds = %7
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #11
  br label %66

19:                                               ; preds = %2
  %20 = icmp eq i32 %3, 0
  br i1 %20, label %21, label %32, !prof !316

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !227
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %23) #13
  %25 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %26 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !246
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !246
  %29 = load ptr, ptr %22, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %24, ptr noundef %25, i32 noundef %27, ptr noundef %29) #13
          to label %64 unwind label %30

30:                                               ; preds = %21
  %31 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %23) #11
  br label %66

32:                                               ; preds = %19
  %33 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %34 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %35 = and i32 %3, 14
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %46, !prof !317

37:                                               ; preds = %32
  %38 = tail call noundef ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %33) #13
  %39 = tail call noundef ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %34) #13
  %40 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %41 = load ptr, ptr %40, align 8, !tbaa !227
  %42 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %41) #13
  %43 = load ptr, ptr %40, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_710CMBinaryOpC1ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %42, i32 noundef %3, ptr noundef %38, ptr noundef %39, ptr noundef %43) #13
          to label %64 unwind label %44

44:                                               ; preds = %37
  %45 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %42, ptr noundef %41) #11
  br label %66

46:                                               ; preds = %32
  %47 = icmp ult i32 %3, 4
  br i1 %47, label %48, label %57, !prof !318

48:                                               ; preds = %46
  %49 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %50 = load ptr, ptr %49, align 8, !tbaa !227
  %51 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %50) #13
  %52 = invoke noundef ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %33) #13
          to label %53 unwind label %55

53:                                               ; preds = %48
  %54 = load ptr, ptr %49, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_79CMUnaryOpC1ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %51, i32 noundef %3, ptr noundef %52, ptr noundef %54) #13
          to label %64 unwind label %55

55:                                               ; preds = %53, %48
  %56 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %51, ptr noundef %50) #11
  br label %66

57:                                               ; preds = %46
  %58 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %59 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %60 = load ptr, ptr %59, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %58, ptr noundef nonnull @.str.2, i32 noundef 941, i32 noundef 22, ptr noundef %60) #13
          to label %61 unwind label %62

61:                                               ; preds = %57
  tail call void @__cxa_throw(ptr nonnull %58, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

62:                                               ; preds = %57
  %63 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %58) #14
  br label %66

64:                                               ; preds = %37, %53, %21, %7
  %65 = phi ptr [ %10, %7 ], [ %24, %21 ], [ %42, %37 ], [ %51, %53 ]
  ret ptr %65

66:                                               ; preds = %44, %55, %62, %30, %17
  %67 = phi { ptr, i32 } [ %18, %17 ], [ %31, %30 ], [ %45, %44 ], [ %56, %55 ], [ %63, %62 ]
  resume { ptr, i32 } %67
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710CMBinaryOpC1ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMLeaf11setPositionEj(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !244 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 8, !tbaa !186
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, ptr noundef nonnull %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 9
  br label %5

5:                                                ; preds = %38, %3
  %6 = phi ptr [ %41, %38 ], [ %1, %3 ]
  %7 = phi i32 [ %40, %38 ], [ %2, %3 ]
  br label %8

8:                                                ; preds = %5, %45
  %9 = phi ptr [ %46, %45 ], [ %6, %5 ]
  %10 = load i32, ptr %4, align 8, !tbaa !246
  tail call void @_ZN11xercesc_2_76CMNode12setMaxStatesEj(ptr noundef nonnull align 8 dereferenceable(44) %9, i32 noundef %10) #13
  %11 = tail call noundef i32 @_ZNK11xercesc_2_76CMNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(44) %9) #13
  %12 = and i32 %11, 15
  switch i32 %12, label %42 [
    i32 6, label %13
    i32 8, label %13
    i32 7, label %13
    i32 4, label %38
    i32 5, label %38
  ], !prof !319

13:                                               ; preds = %8, %8, %8
  %14 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !227
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %15) #13
  %17 = load ptr, ptr %14, align 8, !tbaa !227
  %18 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %17) #13
          to label %19 unwind label %32

19:                                               ; preds = %13
  %20 = invoke noundef i32 @_ZNK11xercesc_2_75CMAny6getURIEv(ptr noundef nonnull align 8 dereferenceable(52) %9) #13
          to label %21 unwind label %34

21:                                               ; preds = %19
  %22 = load ptr, ptr %14, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %20, ptr noundef %22) #13
          to label %23 unwind label %34

23:                                               ; preds = %21
  %24 = invoke noundef i32 @_ZNK11xercesc_2_75CMAny11getPositionEv(ptr noundef nonnull align 8 dereferenceable(52) %9) #13
          to label %25 unwind label %32

25:                                               ; preds = %23
  %26 = load ptr, ptr %14, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %16, ptr noundef nonnull %18, i32 noundef %24, i1 noundef zeroext true, ptr noundef %26) #13
          to label %27 unwind label %32

27:                                               ; preds = %25
  %28 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !247
  %30 = zext i32 %7 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  store ptr %16, ptr %31, align 8, !tbaa !198
  br label %75

32:                                               ; preds = %25, %23, %13
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %36

34:                                               ; preds = %21, %19
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %18, ptr noundef %17) #11
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi { ptr, i32 } [ %33, %32 ], [ %35, %34 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %15) #11
  br label %84

38:                                               ; preds = %8, %8
  %39 = tail call noundef ptr @_ZN11xercesc_2_710CMBinaryOp7getLeftEv(ptr noundef nonnull align 8 dereferenceable(64) %9) #13
  %40 = tail call noundef i32 @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %39, i32 noundef %7) #13
  %41 = tail call noundef ptr @_ZN11xercesc_2_710CMBinaryOp8getRightEv(ptr noundef nonnull align 8 dereferenceable(64) %9) #13
  br label %5

42:                                               ; preds = %8
  %43 = add i32 %11, -1
  %44 = icmp ult i32 %43, 3
  br i1 %44, label %45, label %47, !prof !320

45:                                               ; preds = %42
  %46 = tail call noundef ptr @_ZN11xercesc_2_79CMUnaryOp8getChildEv(ptr noundef nonnull align 8 dereferenceable(56) %9) #13
  br label %8

47:                                               ; preds = %42
  %48 = icmp eq i32 %11, 0
  br i1 %48, label %49, label %68, !prof !321

49:                                               ; preds = %47
  %50 = tail call noundef ptr @_ZN11xercesc_2_76CMLeaf10getElementEv(ptr noundef nonnull align 8 dereferenceable(61) %9) #13
  %51 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %50) #13
  %52 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel14gEpsilonFakeIdE, align 4, !tbaa !208
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %82, label %54, !prof !188

54:                                               ; preds = %49
  %55 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %56 = load ptr, ptr %55, align 8, !tbaa !227
  %57 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %56) #13
  %58 = tail call noundef ptr @_ZN11xercesc_2_76CMLeaf10getElementEv(ptr noundef nonnull align 8 dereferenceable(61) %9) #13
  %59 = tail call noundef i32 @_ZNK11xercesc_2_76CMLeaf11getPositionEv(ptr noundef nonnull align 8 dereferenceable(61) %9) #13
  %60 = load ptr, ptr %55, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %57, ptr noundef %58, i32 noundef %59, ptr noundef %60) #13
          to label %61 unwind label %66

61:                                               ; preds = %54
  %62 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 10
  %63 = load ptr, ptr %62, align 8, !tbaa !247
  %64 = zext i32 %7 to i64
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  store ptr %57, ptr %65, align 8, !tbaa !198
  br label %75

66:                                               ; preds = %54
  %67 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %57, ptr noundef %56) #11
  br label %84

68:                                               ; preds = %47
  %69 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %70 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %71 = load ptr, ptr %70, align 8, !tbaa !227
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %69, ptr noundef nonnull @.str.2, i32 noundef 1103, i32 noundef 22, ptr noundef %71) #13
          to label %72 unwind label %73

72:                                               ; preds = %68
  tail call void @__cxa_throw(ptr nonnull %69, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

73:                                               ; preds = %68
  %74 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %69) #14
  br label %84

75:                                               ; preds = %27, %61
  %76 = phi i64 [ %64, %61 ], [ %30, %27 ]
  %77 = phi i32 [ 0, %61 ], [ %11, %27 ]
  %78 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 11
  %79 = load ptr, ptr %78, align 8, !tbaa !248
  %80 = getelementptr inbounds i32, ptr %79, i64 %76
  store i32 %77, ptr %80, align 4, !tbaa !210
  %81 = add i32 %7, 1
  br label %82

82:                                               ; preds = %75, %49
  %83 = phi i32 [ %7, %49 ], [ %81, %75 ]
  ret i32 %83

84:                                               ; preds = %73, %66, %36
  %85 = phi { ptr, i32 } [ %37, %36 ], [ %67, %66 ], [ %74, %73 ]
  resume { ptr, i32 } %85
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !322 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i32 %1, ptr %0, align 8, !tbaa !323
  %4 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  store ptr null, ptr %4, align 8, !tbaa !238
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  store ptr %2, ptr %5, align 8, !tbaa !241
  %6 = icmp ugt i32 %1, 64
  br i1 %6, label %7, label %19, !prof !324

7:                                                ; preds = %3
  %8 = lshr i32 %1, 3
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %10 = and i32 %1, 7
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = add nuw nsw i32 %8, %12
  store i32 %13, ptr %9, align 4, !tbaa !325
  %14 = zext nneg i32 %13 to i64
  %15 = load ptr, ptr %2, align 8, !tbaa !167
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %14) #13
  store ptr %18, ptr %4, align 8, !tbaa !238
  br label %19

19:                                               ; preds = %7, %3
  tail call void @_ZN11xercesc_2_710CMStateSet8zeroBitsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %1) local_unnamed_addr #1 align 2 !prof !191 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = phi ptr [ %1, %2 ], [ %11, %10 ]
  %5 = tail call noundef i32 @_ZNK11xercesc_2_76CMNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(44) %4) #13
  %6 = and i32 %5, 15
  switch i32 %6, label %37 [
    i32 4, label %7
    i32 5, label %12
  ], !prof !326

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xercesc_2_710CMBinaryOp7getLeftEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #13
  tail call void @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %8) #13
  %9 = tail call noundef ptr @_ZN11xercesc_2_710CMBinaryOp8getRightEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #13
  br label %10

10:                                               ; preds = %7, %64
  %11 = phi ptr [ %9, %7 ], [ %65, %64 ]
  br label %3

12:                                               ; preds = %3
  %13 = tail call noundef ptr @_ZN11xercesc_2_710CMBinaryOp7getLeftEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #13
  tail call void @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %13) #13
  %14 = tail call noundef ptr @_ZN11xercesc_2_710CMBinaryOp8getRightEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #13
  tail call void @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %14) #13
  %15 = tail call noundef ptr @_ZN11xercesc_2_710CMBinaryOp7getLeftEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #13
  %16 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode10getLastPosEv(ptr noundef nonnull align 8 dereferenceable(44) %15) #13
  %17 = tail call noundef ptr @_ZN11xercesc_2_710CMBinaryOp8getRightEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #13
  %18 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv(ptr noundef nonnull align 8 dereferenceable(44) %17) #13
  %19 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !246
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %66, label %22, !prof !204

22:                                               ; preds = %12
  %23 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 7
  br label %24

24:                                               ; preds = %22, %32
  %25 = phi i64 [ 0, %22 ], [ %33, %32 ]
  %26 = trunc i64 %25 to i32
  %27 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710CMStateSet6getBitEj(ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef %26) #13
  br i1 %27, label %28, label %32, !prof !327

28:                                               ; preds = %24
  %29 = load ptr, ptr %23, align 8, !tbaa !249
  %30 = getelementptr inbounds ptr, ptr %29, i64 %25
  %31 = load ptr, ptr %30, align 8, !tbaa !198
  tail call void @_ZN11xercesc_2_710CMStateSetoRERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(32) %18) #13
  br label %32

32:                                               ; preds = %24, %28
  %33 = add nuw nsw i64 %25, 1
  %34 = load i32, ptr %19, align 8, !tbaa !246
  %35 = zext i32 %34 to i64
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %24, label %66, !prof !328, !llvm.loop !329

37:                                               ; preds = %3
  %38 = and i32 %5, -2
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %62, !prof !330

40:                                               ; preds = %37
  %41 = tail call noundef ptr @_ZN11xercesc_2_79CMUnaryOp8getChildEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #13
  tail call void @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %41) #13
  %42 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv(ptr noundef nonnull align 8 dereferenceable(44) %4) #13
  %43 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode10getLastPosEv(ptr noundef nonnull align 8 dereferenceable(44) %4) #13
  %44 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !246
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %66, label %47, !prof !331

47:                                               ; preds = %40
  %48 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 7
  br label %49

49:                                               ; preds = %47, %57
  %50 = phi i64 [ 0, %47 ], [ %58, %57 ]
  %51 = trunc i64 %50 to i32
  %52 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710CMStateSet6getBitEj(ptr noundef nonnull align 8 dereferenceable(32) %43, i32 noundef %51) #13
  br i1 %52, label %53, label %57, !prof !332

53:                                               ; preds = %49
  %54 = load ptr, ptr %48, align 8, !tbaa !249
  %55 = getelementptr inbounds ptr, ptr %54, i64 %50
  %56 = load ptr, ptr %55, align 8, !tbaa !198
  tail call void @_ZN11xercesc_2_710CMStateSetoRERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull align 8 dereferenceable(32) %42) #13
  br label %57

57:                                               ; preds = %49, %53
  %58 = add nuw nsw i64 %50, 1
  %59 = load i32, ptr %44, align 8, !tbaa !246
  %60 = zext i32 %59 to i64
  %61 = icmp ult i64 %58, %60
  br i1 %61, label %49, label %66, !prof !333, !llvm.loop !334

62:                                               ; preds = %37
  %63 = icmp eq i32 %5, 1
  br i1 %63, label %64, label %66, !prof !335

64:                                               ; preds = %62
  %65 = tail call noundef ptr @_ZN11xercesc_2_79CMUnaryOp8getChildEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #13
  br label %10

66:                                               ; preds = %62, %32, %57, %12, %40
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_725ContentLeafNameTypeVectorC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_76CMLeaf10getElementEv(ptr noundef nonnull align 8 dereferenceable(61) %0) local_unnamed_addr #0 comdat align 2 !prof !336 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QName9setValuesERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_725ContentLeafNameTypeVector9setValuesEPPNS_5QNameEPNS_15ContentSpecNode9NodeTypesEj(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !337 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !170
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %19, !prof !338

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !313
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %7) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !339
  %11 = load ptr, ptr %6, align 8, !tbaa !313
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %10, ptr noundef %11) #13
          to label %12 unwind label %17

12:                                               ; preds = %5
  store ptr %8, ptr %2, align 8, !tbaa !170
  %13 = load ptr, ptr %0, align 8, !tbaa !167
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  %16 = load ptr, ptr %2, align 8, !tbaa !170
  br label %19

17:                                               ; preds = %5
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #11
  resume { ptr, i32 } %18

19:                                               ; preds = %12, %1
  %20 = phi ptr [ %16, %12 ], [ %3, %1 ]
  ret ptr %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSetC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 !prof !244 {
  %3 = load i32, ptr %1, align 8, !tbaa !323
  store i32 %3, ptr %0, align 8, !tbaa !323
  %4 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  store ptr null, ptr %4, align 8, !tbaa !238
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !241
  store ptr %7, ptr %5, align 8, !tbaa !241
  %8 = icmp ugt i32 %3, 64
  br i1 %8, label %9, label %25, !prof !283

9:                                                ; preds = %2
  %10 = lshr i32 %3, 3
  %11 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %12 = and i32 %3, 7
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = add nuw nsw i32 %10, %14
  store i32 %15, ptr %11, align 4, !tbaa !325
  %16 = zext nneg i32 %15 to i64
  %17 = load ptr, ptr %7, align 8, !tbaa !167
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %16) #13
  store ptr %20, ptr %4, align 8, !tbaa !238
  %21 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !238
  %23 = load i32, ptr %11, align 4, !tbaa !325
  %24 = zext i32 %23 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 1 %22, i64 %24, i1 false)
  br label %29

25:                                               ; preds = %2
  %26 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 2
  %27 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  %28 = load <2 x i32>, ptr %26, align 8, !tbaa !208
  store <2 x i32> %28, ptr %27, align 8, !tbaa !208
  br label %29

29:                                               ; preds = %25, %9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DFAContentModel16makeDefStateListEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0) local_unnamed_addr #1 align 2 !prof !340 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !227
  %4 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !225
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 2
  %8 = load ptr, ptr %3, align 8, !tbaa !167
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %7) #13
  %12 = load i32, ptr %4, align 8, !tbaa !225
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !271

14:                                               ; preds = %1
  %15 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4, !tbaa !208
  br label %17

16:                                               ; preds = %17, %1
  ret ptr %11

17:                                               ; preds = %14, %17
  %18 = phi i64 [ 0, %14 ], [ %20, %17 ]
  %19 = getelementptr inbounds i32, ptr %11, i64 %18
  store i32 %15, ptr %19, align 4, !tbaa !208
  %20 = add nuw nsw i64 %18, 1
  %21 = load i32, ptr %4, align 8, !tbaa !225
  %22 = zext i32 %21 to i64
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %17, label %16, !prof !281, !llvm.loop !341
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714HashCMStateSetC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !244 {
  tail call void @_ZN11xercesc_2_78HashBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714HashCMStateSetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 !prof !244 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %4, ptr %0, align 8, !tbaa !342
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !344
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !345
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !346
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %10, align 4, !tbaa !347
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !348
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %12, align 8, !tbaa !349
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #13
  store ptr %3, ptr %12, align 8, !tbaa !349
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710CMStateSet6getBitEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !350 {
  %3 = load i32, ptr %0, align 8, !tbaa !323
  %4 = icmp ugt i32 %3, %1
  br i1 %4, label %12, label %5, !prof !351

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !241
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i32 noundef 198, i32 noundef 11, ptr noundef %8) #13
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #14
  resume { ptr, i32 } %11

12:                                               ; preds = %2
  %13 = icmp ult i32 %3, 65
  br i1 %13, label %14, label %26, !prof !351

14:                                               ; preds = %12
  %15 = and i32 %1, 31
  %16 = shl nuw i32 1, %15
  %17 = icmp ult i32 %1, 32
  br i1 %17, label %18, label %20, !prof !351

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  br label %22

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 3
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %19, %18 ], [ %21, %20 ]
  %24 = load i32, ptr %23, align 4, !tbaa !208
  %25 = and i32 %24, %16
  br label %37

26:                                               ; preds = %12
  %27 = and i32 %1, 7
  %28 = shl nuw nsw i32 1, %27
  %29 = lshr i32 %1, 3
  %30 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !238
  %32 = zext nneg i32 %29 to i64
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !352
  %35 = zext i8 %34 to i32
  %36 = and i32 %28, %35
  br label %37

37:                                               ; preds = %26, %22
  %38 = phi i32 [ %25, %22 ], [ %36, %26 ]
  %39 = icmp ne i32 %38, 0
  ret i1 %39
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSet8zeroBitsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !353 {
  %2 = load i32, ptr %0, align 8, !tbaa !323
  %3 = icmp ult i32 %2, 65
  br i1 %3, label %10, label %4, !prof !354

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !325
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  br label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 8, !tbaa !355
  %12 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 3
  store i32 0, ptr %12, align 4, !tbaa !356
  br label %21

13:                                               ; preds = %8, %13
  %14 = phi i64 [ 0, %8 ], [ %17, %13 ]
  %15 = load ptr, ptr %9, align 8, !tbaa !238
  %16 = getelementptr inbounds i8, ptr %15, i64 %14
  store i8 0, ptr %16, align 1, !tbaa !352
  %17 = add nuw nsw i64 %14, 1
  %18 = load i32, ptr %5, align 4, !tbaa !325
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %13, label %21, !llvm.loop !357

21:                                               ; preds = %13, %4, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSetoRERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !358 {
  %3 = load i32, ptr %0, align 8, !tbaa !323
  %4 = icmp ult i32 %3, 65
  br i1 %4, label %12, label %5, !prof !359

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !325
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  br label %18

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  %15 = load <2 x i32>, ptr %13, align 8, !tbaa !208
  %16 = load <2 x i32>, ptr %14, align 8, !tbaa !208
  %17 = or <2 x i32> %16, %15
  store <2 x i32> %17, ptr %14, align 8, !tbaa !208
  br label %31

18:                                               ; preds = %9, %18
  %19 = phi i64 [ 0, %9 ], [ %27, %18 ]
  %20 = load ptr, ptr %10, align 8, !tbaa !238
  %21 = getelementptr inbounds i8, ptr %20, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !352
  %23 = load ptr, ptr %11, align 8, !tbaa !238
  %24 = getelementptr inbounds i8, ptr %23, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !352
  %26 = or i8 %25, %22
  store i8 %26, ptr %24, align 1, !tbaa !352
  %27 = add nuw nsw i64 %19, 1
  %28 = load i32, ptr %6, align 4, !tbaa !325
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %18, label %31, !llvm.loop !360

31:                                               ; preds = %18, %5, %12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710CMStateSet7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !361 {
  %2 = load i32, ptr %0, align 8, !tbaa !323
  %3 = icmp ult i32 %2, 65
  br i1 %3, label %12, label %4, !prof !362

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !325
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !238
  %11 = zext i32 %6 to i64
  br label %20

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !355
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %15, i1 %18, i1 false, !prof !277
  br label %29

20:                                               ; preds = %20, %8
  %21 = phi i64 [ 0, %8 ], [ %26, %20 ]
  %22 = getelementptr inbounds i8, ptr %10, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !352
  %24 = icmp eq i8 %23, 0
  %25 = xor i1 %24, true
  %26 = add nuw nsw i64 %21, 1
  %27 = icmp eq i64 %26, %11
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %29, label %20, !llvm.loop !363

29:                                               ; preds = %20, %4, %12
  %30 = phi i1 [ %19, %12 ], [ true, %4 ], [ %24, %20 ]
  ret i1 %30
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !364 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !278

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !365
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLInteger8intValueEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat align 2 !prof !367 {
  %2 = load i32, ptr %0, align 4, !tbaa !368
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !370 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !346
  %7 = mul i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !348
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12, !prof !371

12:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br label %13

13:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %14 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16, !prof !371

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !344, !range !181, !noundef !182
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !365
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZN11xercesc_2_710XMLIntegerD2Ev(ptr noundef nonnull align 4 dereferenceable(4) %21) #11
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #11
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %2, ptr %14, align 8, !tbaa !365
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !372
  br label %44

26:                                               ; preds = %13
  %27 = load ptr, ptr %0, align 8, !tbaa !342
  %28 = load ptr, ptr %27, align 8, !tbaa !167
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 24) #13
  %32 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !345
  %34 = load i32, ptr %4, align 4, !tbaa !208
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !198
  call void @_ZN11xercesc_2_722RefHashTableBucketElemINS_10XMLIntegerEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef %1, ptr noundef %2, ptr noundef %37) #13
  %38 = load ptr, ptr %32, align 8, !tbaa !345
  %39 = load i32, ptr %4, align 4, !tbaa !208
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  store ptr %31, ptr %41, align 8, !tbaa !198
  %42 = load i32, ptr %9, align 8, !tbaa !348
  %43 = add i32 %42, 1
  store i32 %43, ptr %9, align 8, !tbaa !348
  br label %44

44:                                               ; preds = %26, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLIntegerC2Ei(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 !prof !370 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i32 %1, ptr %0, align 4, !tbaa !368
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !244 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !166 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !167
  %4 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !313
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 2
  store i32 %1, ptr %5, align 8, !tbaa !373
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i32 -1, ptr %7, align 8, !tbaa !339
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78HashBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !374 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_78HashBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78HashBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !374 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78HashBaseD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !244 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !283

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %6 = load ptr, ptr %0, align 8, !tbaa !342
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 99, i32 noundef 48, ptr noundef %6) #13
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #14
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !342
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !346
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !167
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !345
  %21 = load i32, ptr %12, align 8, !tbaa !346
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !250

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !345
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !198
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !375, !llvm.loop !376
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !222 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !167
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !222 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !222 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !377
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !222 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !167
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !222 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !167
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !222 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !222 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !377
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !222 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 !prof !191 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !349
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !346
  %8 = load ptr, ptr %0, align 8, !tbaa !342
  %9 = load ptr, ptr %5, align 8, !tbaa !167
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !208
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !345
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !198
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !380

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !349
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !372
  %23 = load ptr, ptr %20, align 8, !tbaa !167
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27, !prof !381

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !198
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !382, !llvm.loop !383

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !222 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !346
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !342
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !167
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %13 = load ptr, ptr %0, align 8, !tbaa !342
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLIntegerEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12, ptr noundef %13) #13
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %14 = load i32, ptr %3, align 8, !tbaa !346
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %27

19:                                               ; preds = %54, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !345
  %22 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLIntegerEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  store ptr %22, ptr %20, align 8, !tbaa !345
  store i32 %5, ptr %3, align 8, !tbaa !346
  %23 = load ptr, ptr %0, align 8, !tbaa !342
  %24 = load ptr, ptr %23, align 8, !tbaa !167
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #13
          to label %59 unwind label %60

27:                                               ; preds = %16, %54
  %28 = phi i32 [ %14, %16 ], [ %55, %54 ]
  %29 = phi i64 [ 0, %16 ], [ %56, %54 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !345
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !198
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %27, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %27 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !384
  %38 = load ptr, ptr %18, align 8, !tbaa !349
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !372
  %41 = load ptr, ptr %0, align 8, !tbaa !342
  %42 = load ptr, ptr %38, align 8, !tbaa !167
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41) #13
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !198
  store ptr %48, ptr %36, align 8, !tbaa !384
  store ptr %35, ptr %47, align 8, !tbaa !198
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !385

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %62

52:                                               ; preds = %45
  %53 = load i32, ptr %3, align 8, !tbaa !346
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %28, %27 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %27, label %19, !llvm.loop !386

59:                                               ; preds = %19
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLIntegerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret void

60:                                               ; preds = %19
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi { ptr, i32 } [ %51, %50 ], [ %61, %60 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLIntegerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLIntegerD2Ev(ptr noundef nonnull align 4 dereferenceable(4) %0) unnamed_addr #0 comdat align 2 !prof !370 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722RefHashTableBucketElemINS_10XMLIntegerEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !370 {
  store ptr %2, ptr %0, align 8, !tbaa !365
  %5 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !384
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !372
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLIntegerEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !222 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !387
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !389
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLIntegerEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !222 {
  %2 = load ptr, ptr %0, align 8, !tbaa !387
  store ptr null, ptr %0, align 8, !tbaa !387
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLIntegerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !222 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLIntegerEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLIntegerEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !222 {
  %3 = load ptr, ptr %0, align 8, !tbaa !387
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !389
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !167
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !387
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !389
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !244 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  %2 = load ptr, ptr %0, align 8, !tbaa !342
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !345
  %5 = load ptr, ptr %2, align 8, !tbaa !167
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #13
  store ptr null, ptr %3, align 8, !tbaa !345
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !349
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !167
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #11
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !244 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %2, label %45, label %3, !prof !283

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !346
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !250

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !348
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !345
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !198
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !390

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !384
  %23 = load i8, ptr %9, align 8, !tbaa !344, !range !181, !noundef !182
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !391

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !365
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_710XMLIntegerD2Ev(ptr noundef nonnull align 4 dereferenceable(4) %26) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #11
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !342
  %31 = load ptr, ptr %30, align 8, !tbaa !167
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #13
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !prof !392, !llvm.loop !393

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !345
  %37 = load i32, ptr %4, align 8, !tbaa !346
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !198
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !prof !394, !llvm.loop !395

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !244 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !348
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 !prof !396 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !397
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 !prof !399 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !400
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75CMAnyC1ENS_15ContentSpecNode9NodeTypesEjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(52), i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !401 {
  tail call void @_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef 0, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMLeafE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !167
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !184
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 3
  store i32 %2, ptr %6, align 8, !tbaa !186
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 4
  store i8 0, ptr %7, align 4, !tbaa !178
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %21, !prof !402

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !313
  %12 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %11) #13
          to label %13 unwind label %17

13:                                               ; preds = %9
  %14 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !208
  %15 = load ptr, ptr %10, align 8, !tbaa !313
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %14, ptr noundef %15) #13
          to label %16 unwind label %19

16:                                               ; preds = %13
  store ptr %12, ptr %5, align 8, !tbaa !184
  store i8 1, ptr %7, align 4, !tbaa !178
  br label %22

17:                                               ; preds = %9
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %23

19:                                               ; preds = %13
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #11
  br label %23

21:                                               ; preds = %4
  store ptr %1, ptr %5, align 8, !tbaa !184
  br label %22

22:                                               ; preds = %21, %16
  ret void

23:                                               ; preds = %19, %17
  %24 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  tail call void @_ZN11xercesc_2_76CMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) #11
  resume { ptr, i32 } %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 !prof !403 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !404
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 !prof !405 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !406
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79CMUnaryOpC1ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !222 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !167
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !222 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !222 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !377
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !222 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_76CMNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #0 comdat align 2 !prof !407 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !373
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710CMBinaryOp7getLeftEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #7

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710CMBinaryOp8getRightEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode10getLastPosEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !176
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %19, !prof !408

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !313
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %7) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !339
  %11 = load ptr, ptr %6, align 8, !tbaa !313
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %10, ptr noundef %11) #13
          to label %12 unwind label %17

12:                                               ; preds = %5
  store ptr %8, ptr %2, align 8, !tbaa !176
  %13 = load ptr, ptr %0, align 8, !tbaa !167
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  %16 = load ptr, ptr %2, align 8, !tbaa !176
  br label %19

17:                                               ; preds = %5
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #11
  resume { ptr, i32 } %18

19:                                               ; preds = %12, %1
  %20 = phi ptr [ %16, %12 ], [ %3, %1 ]
  ret ptr %20
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79CMUnaryOp8getChildEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMNode12setMaxStatesEj(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !191 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 6
  store i32 %1, ptr %3, align 8, !tbaa !339
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_75CMAny6getURIEv(ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #7

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_75CMAny11getPositionEv(ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_76CMLeaf11getPositionEv(ptr noundef nonnull align 8 dereferenceable(61) %0) local_unnamed_addr #0 comdat align 2 !prof !187 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !186
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75QName6setURIEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !187 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 4, !tbaa !293
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard8conflictEPNS_13SchemaGrammarENS_15ContentSpecNode9NodeTypesEPNS_5QNameES4_S6_PNS_27SubstitutionGroupComparatorE(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !409 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i32 0, ptr %0, align 8, !tbaa !410
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !412
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !413
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !414
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !415
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !167
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !416
  store i16 0, ptr %16, align 2, !tbaa !298
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !417 {
  store i32 0, ptr %0, align 8, !tbaa !410
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !416
  %4 = load i32, ptr %0, align 8, !tbaa !410
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !298
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !409 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !415
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !416
  %6 = load ptr, ptr %3, align 8, !tbaa !167
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #13
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !419 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !420

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !298
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !421

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !298
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !422, !llvm.loop !423

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !410
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !412
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !424

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #13
  %21 = load i32, ptr %0, align 8, !tbaa !410
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !416
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !410
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !410
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSet6setBitEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !401 {
  %3 = load i32, ptr %0, align 8, !tbaa !323
  %4 = icmp ugt i32 %3, %1
  br i1 %4, label %12, label %5, !prof !425

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !241
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i32 noundef 233, i32 noundef 11, ptr noundef %8) #13
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #14
  resume { ptr, i32 } %11

12:                                               ; preds = %2
  %13 = icmp ult i32 %3, 65
  br i1 %13, label %14, label %26, !prof !425

14:                                               ; preds = %12
  %15 = and i32 %1, 31
  %16 = shl nuw i32 1, %15
  %17 = icmp ult i32 %1, 32
  br i1 %17, label %18, label %22, !prof !425

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !355
  %21 = or i32 %20, %16
  store i32 %21, ptr %19, align 8, !tbaa !355
  br label %42

22:                                               ; preds = %14
  %23 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !356
  %25 = or i32 %24, %16
  store i32 %25, ptr %23, align 4, !tbaa !356
  br label %42

26:                                               ; preds = %12
  %27 = and i32 %1, 7
  %28 = shl nuw nsw i32 1, %27
  %29 = lshr i32 %1, 3
  %30 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !238
  %32 = zext nneg i32 %29 to i64
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !352
  %35 = trunc i32 %28 to i8
  %36 = xor i8 %35, -1
  %37 = and i8 %34, %36
  store i8 %37, ptr %33, align 1, !tbaa !352
  %38 = load ptr, ptr %30, align 8, !tbaa !238
  %39 = getelementptr inbounds i8, ptr %38, i64 %32
  %40 = load i8, ptr %39, align 1, !tbaa !352
  %41 = or i8 %40, %35
  store i8 %41, ptr %39, align 1, !tbaa !352
  br label %42

42:                                               ; preds = %18, %22, %26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710CMStateSet8hashCodeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !191 {
  %2 = load i32, ptr %0, align 8, !tbaa !323
  %3 = icmp ult i32 %2, 65
  br i1 %3, label %4, label %11, !prof !426

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !355
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !356
  %9 = mul i32 %8, 31
  %10 = add i32 %9, %6
  br label %30

11:                                               ; preds = %1
  %12 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !325
  %14 = add i32 %13, -1
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !238
  %19 = zext nneg i32 %14 to i64
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi i64 [ %19, %16 ], [ %28, %20 ]
  %22 = phi i32 [ 0, %16 ], [ %27, %20 ]
  %23 = getelementptr inbounds i8, ptr %18, i64 %21
  %24 = load i8, ptr %23, align 1, !tbaa !352
  %25 = zext i8 %24 to i32
  %26 = mul nsw i32 %22, 31
  %27 = add nsw i32 %26, %25
  %28 = add nsw i64 %21, -1
  %29 = icmp eq i64 %21, 0
  br i1 %29, label %30, label %20, !llvm.loop !427

30:                                               ; preds = %20, %11, %4
  %31 = phi i32 [ %10, %4 ], [ 0, %11 ], [ %27, %20 ]
  ret i32 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710CMStateSeteqERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !192 {
  %3 = load i32, ptr %0, align 8, !tbaa !323
  %4 = load i32, ptr %1, align 8, !tbaa !323
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %38, !prof !428

6:                                                ; preds = %2
  %7 = icmp ult i32 %3, 65
  br i1 %7, label %18, label %8, !prof !428

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !325
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %38, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !238
  %15 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !238
  %17 = zext i32 %10 to i64
  br label %27

18:                                               ; preds = %6
  %19 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 2
  %21 = load <2 x i32>, ptr %19, align 8
  %22 = load <2 x i32>, ptr %20, align 8
  %23 = icmp eq <2 x i32> %21, %22
  %24 = extractelement <2 x i1> %23, i64 0
  %25 = extractelement <2 x i1> %23, i64 1
  %26 = select i1 %24, i1 %25, i1 false, !prof !381
  br label %38

27:                                               ; preds = %27, %12
  %28 = phi i64 [ 0, %12 ], [ %35, %27 ]
  %29 = getelementptr inbounds i8, ptr %14, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !352
  %31 = getelementptr inbounds i8, ptr %16, i64 %28
  %32 = load i8, ptr %31, align 1, !tbaa !352
  %33 = icmp eq i8 %30, %32
  %34 = xor i1 %33, true
  %35 = add nuw nsw i64 %28, 1
  %36 = icmp eq i64 %35, %17
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %38, label %27, !llvm.loop !429

38:                                               ; preds = %27, %8, %2, %18
  %39 = phi i1 [ %26, %18 ], [ false, %2 ], [ true, %8 ], [ %33, %27 ]
  ret i1 %39
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind optsize }
attributes #12 = { noreturn nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!165}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!36 = !{ptr @_ZN11xercesc_2_76CMNodeD2Ev, ptr @_ZN11xercesc_2_710CMStateSetD2Ev, i64 292}
!37 = !{ptr @_ZN11xercesc_2_76CMNodeD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 292}
!38 = !{ptr @_ZN11xercesc_2_76CMLeafD2Ev, ptr @_ZN11xercesc_2_76CMNodeD2Ev, i64 152}
!39 = !{ptr @_ZNK11xercesc_2_76CMLeaf12calcFirstPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSet8zeroBitsEv, i64 1}
!40 = !{ptr @_ZNK11xercesc_2_76CMLeaf12calcFirstPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSet6setBitEj, i64 75}
!41 = !{ptr @_ZNK11xercesc_2_76CMLeaf11calcLastPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSet8zeroBitsEv, i64 1}
!42 = !{ptr @_ZNK11xercesc_2_76CMLeaf11calcLastPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSet6setBitEj, i64 64}
!43 = !{ptr @_ZN11xercesc_2_714HashCMStateSet10getHashValEPKvjPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_710CMStateSet8hashCodeEv, i64 157}
!44 = !{ptr @_ZN11xercesc_2_714HashCMStateSet6equalsEPKvS2_, ptr @_ZNK11xercesc_2_710CMStateSeteqERKS0_, i64 63}
!45 = !{ptr @_ZNK11xercesc_2_715DFAContentModel15validateContentEPPNS_5QNameEjj, ptr @_ZNK11xercesc_2_75QName10getRawNameEv, i64 2}
!46 = !{ptr @_ZNK11xercesc_2_715DFAContentModel15validateContentEPPNS_5QNameEjj, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 4557008}
!47 = !{ptr @_ZNK11xercesc_2_715DFAContentModel15validateContentEPPNS_5QNameEjj, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 2227251}
!48 = !{ptr @_ZNK11xercesc_2_715DFAContentModel15validateContentEPPNS_5QNameEjj, ptr @_ZNK11xercesc_2_75QName12getLocalPartEv, i64 4454500}
!49 = !{ptr @_ZN11xercesc_2_715XMLContentModelC2Ev, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 24}
!50 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 333}
!51 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE, i64 11}
!52 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjbPNS_13MemoryManagerE, i64 11}
!53 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, i64 11}
!54 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_710CMBinaryOpC1ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE, i64 11}
!55 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_76CMLeaf11setPositionEj, i64 11}
!56 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, i64 11}
!57 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE, i64 139}
!58 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, i64 11}
!59 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE, i64 71}
!60 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_76CMLeaf10getElementEv, i64 613}
!61 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZNK11xercesc_2_75QName10getRawNameEv, i64 2}
!62 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 595}
!63 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 1546}
!64 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZNK11xercesc_2_75QName12getLocalPartEv, i64 1186}
!65 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_75QName9setValuesERKS0_, i64 70}
!66 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_725ContentLeafNameTypeVector9setValuesEPPNS_5QNameEPNS_15ContentSpecNode9NodeTypesEj, i64 1}
!67 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv, i64 11}
!68 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_710CMStateSetC2ERKS0_, i64 11}
!69 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZNK11xercesc_2_715DFAContentModel16makeDefStateListEv, i64 68}
!70 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_714HashCMStateSetC2Ev, i64 11}
!71 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, i64 11}
!72 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZNK11xercesc_2_710CMStateSet6getBitEj, i64 591}
!73 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_710CMStateSet8zeroBitsEv, i64 456}
!74 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_710CMStateSetoRERKS0_, i64 105}
!75 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZNK11xercesc_2_710CMStateSet7isEmptyEv, i64 523}
!76 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3getEPKv, i64 88}
!77 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZNK11xercesc_2_710XMLInteger8intValueEv, i64 31}
!78 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_710XMLIntegerC2Ei, i64 57}
!79 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3putEPvPS1_, i64 57}
!80 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_710CMStateSetD2Ev, i64 96}
!81 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 107}
!82 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEED2Ev, i64 11}
!83 = !{ptr @_ZN11xercesc_2_715DFAContentModelC2EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715XMLContentModelC2Ev, i64 11}
!84 = !{ptr @_ZN11xercesc_2_715DFAContentModelC2EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, i64 11}
!85 = !{ptr @_ZN11xercesc_2_715DFAContentModelD2Ev, ptr @_ZN11xercesc_2_725ContentLeafNameTypeVectorD1Ev, i64 7}
!86 = !{ptr @_ZN11xercesc_2_715DFAContentModelD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 7}
!87 = !{ptr @_ZN11xercesc_2_715DFAContentModelD2Ev, ptr @_ZN11xercesc_2_715XMLContentModelD2Ev, i64 11}
!88 = !{ptr @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, i64 11}
!89 = !{ptr @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!90 = !{ptr @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE, i64 1}
!91 = !{ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, ptr @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv, i64 135}
!92 = !{ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 135}
!93 = !{ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_715ContentSpecNode10getElementEv, i64 67}
!94 = !{ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 3}
!95 = !{ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_75CMAnyC1ENS_15ContentSpecNode9NodeTypesEjjPNS_13MemoryManagerE, i64 3}
!96 = !{ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjPNS_13MemoryManagerE, i64 64}
!97 = !{ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv, i64 68}
!98 = !{ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv, i64 68}
!99 = !{ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, i64 121}
!100 = !{ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_710CMBinaryOpC1ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE, i64 53}
!101 = !{ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_79CMUnaryOpC1ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeEPNS_13MemoryManagerE, i64 15}
!102 = !{ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, ptr @__cxa_allocate_exception, i64 1}
!103 = !{ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!104 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZN11xercesc_2_76CMNode12setMaxStatesEj, i64 331}
!105 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZNK11xercesc_2_76CMNode7getTypeEv, i64 331}
!106 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 159}
!107 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZNK11xercesc_2_75CMAny6getURIEv, i64 6}
!108 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE, i64 6}
!109 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZNK11xercesc_2_75CMAny11getPositionEv, i64 6}
!110 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjbPNS_13MemoryManagerE, i64 6}
!111 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZN11xercesc_2_710CMBinaryOp7getLeftEv, i64 136}
!112 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, i64 136}
!113 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZN11xercesc_2_710CMBinaryOp8getRightEv, i64 136}
!114 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZN11xercesc_2_79CMUnaryOp8getChildEv, i64 38}
!115 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZN11xercesc_2_76CMLeaf10getElementEv, i64 296}
!116 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 149}
!117 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZNK11xercesc_2_76CMLeaf11getPositionEv, i64 147}
!118 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjPNS_13MemoryManagerE, i64 147}
!119 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @__cxa_allocate_exception, i64 2}
!120 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 2}
!121 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @__cxa_throw, i64 1}
!122 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @__cxa_free_exception, i64 1}
!123 = !{ptr @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 441}
!124 = !{ptr @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710CMStateSet8zeroBitsEv, i64 441}
!125 = !{ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, ptr @_ZNK11xercesc_2_76CMNode7getTypeEv, i64 174}
!126 = !{ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, ptr @_ZN11xercesc_2_710CMBinaryOp7getLeftEv, i64 143}
!127 = !{ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, i64 149}
!128 = !{ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, ptr @_ZN11xercesc_2_710CMBinaryOp8getRightEv, i64 143}
!129 = !{ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, ptr @_ZNK11xercesc_2_76CMNode10getLastPosEv, i64 76}
!130 = !{ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv, i64 76}
!131 = !{ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, ptr @_ZNK11xercesc_2_710CMStateSet6getBitEj, i64 592}
!132 = !{ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, ptr @_ZN11xercesc_2_710CMStateSetoRERKS0_, i64 113}
!133 = !{ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, ptr @_ZN11xercesc_2_79CMUnaryOp8getChildEv, i64 20}
!134 = !{ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 156}
!135 = !{ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv, ptr @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE, i64 156}
!136 = !{ptr @_ZN11xercesc_2_714HashCMStateSetC2Ev, ptr @_ZN11xercesc_2_78HashBaseC2Ev, i64 11}
!137 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 11}
!138 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE10initializeEj, i64 11}
!139 = !{ptr @_ZNK11xercesc_2_710CMStateSet6getBitEj, ptr @__cxa_allocate_exception, i64 1}
!140 = !{ptr @_ZNK11xercesc_2_710CMStateSet6getBitEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!141 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE14findBucketElemEPKvRj, i64 95}
!142 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3putEPvPS1_, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE6rehashEv, i64 1}
!143 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3putEPvPS1_, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE14findBucketElemEPKvRj, i64 62}
!144 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3putEPvPS1_, ptr @_ZN11xercesc_2_722RefHashTableBucketElemINS_10XMLIntegerEEC2EPvPS1_PS2_, i64 61}
!145 = !{ptr @_ZN11xercesc_2_710XMLIntegerC2Ei, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 62}
!146 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE7cleanupEv, i64 11}
!147 = !{ptr @_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 233}
!148 = !{ptr @_ZN11xercesc_2_78HashBaseC2Ev, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 833054}
!149 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE10initializeEj, ptr @__cxa_allocate_exception, i64 1}
!150 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE10initializeEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!151 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE9removeAllEv, i64 11}
!152 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE7isEmptyEv, i64 11}
!153 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE9removeAllEv, ptr @_ZN11xercesc_2_710XMLIntegerD2Ev, i64 33}
!154 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE9removeAllEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 33}
!155 = !{ptr @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, i64 141}
!156 = !{ptr @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!157 = !{ptr @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE, i64 1}
!158 = !{ptr @_ZNK11xercesc_2_76CMNode10getLastPosEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 134}
!159 = !{ptr @_ZNK11xercesc_2_76CMNode10getLastPosEv, ptr @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE, i64 134}
!160 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!161 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKt, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 190774}
!162 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!163 = !{ptr @_ZN11xercesc_2_710CMStateSet6setBitEj, ptr @__cxa_allocate_exception, i64 1}
!164 = !{ptr @_ZN11xercesc_2_710CMStateSet6setBitEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!165 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!166 = !{!"function_entry_count", i64 233}
!167 = !{!168, !168, i64 0}
!168 = !{!"vtable pointer", !169, i64 0}
!169 = !{!"Simple C++ TBAA"}
!170 = !{!171, !172, i64 24}
!171 = !{!"_ZTSN11xercesc_2_76CMNodeE", !172, i64 8, !174, i64 16, !172, i64 24, !172, i64 32, !175, i64 40}
!172 = !{!"any pointer", !173, i64 0}
!173 = !{!"omnipotent char", !169, i64 0}
!174 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !173, i64 0}
!175 = !{!"int", !173, i64 0}
!176 = !{!171, !172, i64 32}
!177 = !{!"function_entry_count", i64 152}
!178 = !{!179, !180, i64 60}
!179 = !{!"_ZTSN11xercesc_2_76CMLeafE", !171, i64 0, !172, i64 48, !175, i64 56, !180, i64 60}
!180 = !{!"bool", !173, i64 0}
!181 = !{i8 0, i8 2}
!182 = !{}
!183 = !{!"branch_weights", i32 142, i32 12}
!184 = !{!179, !172, i64 48}
!185 = !{!"function_entry_count", i64 108}
!186 = !{!179, !175, i64 56}
!187 = !{!"function_entry_count", i64 76}
!188 = !{!"branch_weights", i32 1, i32 77}
!189 = !{!"function_entry_count", i64 65}
!190 = !{!"branch_weights", i32 1, i32 66}
!191 = !{!"function_entry_count", i64 157}
!192 = !{!"function_entry_count", i64 63}
!193 = !{!"function_entry_count", i64 256331}
!194 = !{!"branch_weights", i32 110793, i32 145540}
!195 = !{!196, !180, i64 28}
!196 = !{!"_ZTSN11xercesc_2_715DFAContentModelE", !197, i64 0, !172, i64 8, !172, i64 16, !175, i64 24, !180, i64 28, !175, i64 32, !172, i64 40, !172, i64 48, !172, i64 56, !175, i64 64, !172, i64 72, !172, i64 80, !172, i64 88, !175, i64 96, !180, i64 100, !180, i64 101, !172, i64 104, !172, i64 112}
!197 = !{!"_ZTSN11xercesc_2_715XMLContentModelE"}
!198 = !{!172, !172, i64 0}
!199 = !{!196, !180, i64 100}
!200 = !{!"branch_weights", i32 665442, i32 1}
!201 = !{!196, !180, i64 101}
!202 = !{!"branch_weights", i32 560075, i32 105368}
!203 = !{!"branch_weights", i32 1, i32 105368}
!204 = !{!"branch_weights", i32 1, i32 127}
!205 = !{!196, !172, i64 8}
!206 = !{!"branch_weights", i32 2307454, i32 1}
!207 = !{!196, !172, i64 88}
!208 = !{!175, !175, i64 0}
!209 = !{!196, !172, i64 16}
!210 = !{!174, !174, i64 0}
!211 = !{!"branch_weights", i32 665442, i32 1642013}
!212 = !{!"branch_weights", i32 1, i32 665442}
!213 = !{!"branch_weights", i32 295353985, i32 127}
!214 = distinct !{!214, !215}
!215 = !{!"llvm.loop.mustprogress"}
!216 = !{!"branch_weights", i32 0, i32 -2147483648}
!217 = !{!"branch_weights", i32 145540, i32 519902}
!218 = distinct !{!218, !215}
!219 = !{!196, !172, i64 40}
!220 = !{!180, !180, i64 0}
!221 = !{!"branch_weights", i32 1, i32 145540}
!222 = !{!"function_entry_count", i64 0}
!223 = distinct !{!223, !215}
!224 = distinct !{!224, !215}
!225 = !{!196, !175, i64 24}
!226 = distinct !{!226, !215}
!227 = !{!196, !172, i64 112}
!228 = distinct !{!228, !215}
!229 = !{!196, !175, i64 96}
!230 = distinct !{!230, !215}
!231 = distinct !{!231, !215}
!232 = distinct !{!232, !215}
!233 = distinct !{!233, !215}
!234 = distinct !{!234, !215}
!235 = !{!"function_entry_count", i64 665441}
!236 = !{!196, !172, i64 104}
!237 = !{!"function_entry_count", i64 452}
!238 = !{!239, !172, i64 16}
!239 = !{!"_ZTSN11xercesc_2_710CMStateSetE", !175, i64 0, !175, i64 4, !175, i64 8, !175, i64 12, !172, i64 16, !172, i64 24}
!240 = !{!"branch_weights", i32 453, i32 1}
!241 = !{!239, !172, i64 24}
!242 = !{!196, !175, i64 32}
!243 = !{!"function_entry_count", i64 24}
!244 = !{!"function_entry_count", i64 11}
!245 = !{!196, !172, i64 56}
!246 = !{!196, !175, i64 64}
!247 = !{!196, !172, i64 72}
!248 = !{!196, !172, i64 80}
!249 = !{!196, !172, i64 48}
!250 = !{!"branch_weights", i32 1, i32 191}
!251 = !{!"branch_weights", i32 1041, i32 191}
!252 = distinct !{!252, !215}
!253 = !{!"branch_weights", i32 12, i32 1}
!254 = !{!"branch_weights", i32 1, i32 155}
!255 = !{!"branch_weights", i32 1, i32 153}
!256 = !{!"branch_weights", i32 258, i32 1}
!257 = !{!"branch_weights", i32 193, i32 66}
!258 = !{!"branch_weights", i32 1, i32 193}
!259 = !{!"branch_weights", i32 363, i32 153}
!260 = distinct !{!260, !215}
!261 = !{!"branch_weights", i32 2119771860, i32 27711788}
!262 = distinct !{!262, !215}
!263 = distinct !{!263, !215}
!264 = !{!"branch_weights", i32 591, i32 1}
!265 = !{!"branch_weights", i32 461, i32 131}
!266 = !{!"branch_weights", i32 77, i32 385}
!267 = !{!"branch_weights", i32 1029, i32 153}
!268 = distinct !{!268, !215}
!269 = !{!"branch_weights", i32 62, i32 12}
!270 = distinct !{!270, !215}
!271 = !{!"branch_weights", i32 1, i32 147}
!272 = !{!"branch_weights", i32 74, i32 498}
!273 = !{!"branch_weights", i32 1, i32 570}
!274 = !{!"branch_weights", i32 115, i32 457}
!275 = !{!"branch_weights", i32 570, i32 1}
!276 = distinct !{!276, !215}
!277 = !{!"branch_weights", i32 476, i32 96}
!278 = !{!"branch_weights", i32 63, i32 34}
!279 = !{!"branch_weights", i32 1, i32 96}
!280 = distinct !{!280, !215}
!281 = !{!"branch_weights", i32 995, i32 147}
!282 = distinct !{!282, !215}
!283 = !{!"branch_weights", i32 1, i32 12}
!284 = distinct !{!284, !215}
!285 = !{!"branch_weights", i32 191, i32 993}
!286 = distinct !{!286, !215}
!287 = distinct !{!287, !215}
!288 = !{!"function_entry_count", i64 5836268}
!289 = !{!"branch_weights", i32 993, i32 191}
!290 = distinct !{!290, !215}
!291 = distinct !{!291, !215}
!292 = !{!"function_entry_count", i64 6553673}
!293 = !{!294, !175, i64 20}
!294 = !{!"_ZTSN11xercesc_2_75QNameE", !295, i64 0, !175, i64 8, !175, i64 12, !175, i64 16, !175, i64 20, !172, i64 24, !172, i64 32, !172, i64 40, !172, i64 48}
!295 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!296 = !{!"function_entry_count", i64 1231717351}
!297 = !{!"branch_weights", i32 621, i32 -1469098093}
!298 = !{!299, !299, i64 0}
!299 = !{!"short", !173, i64 0}
!300 = !{!"branch_weights", i32 408901017, i32 1}
!301 = !{!"branch_weights", i32 267, i32 4}
!302 = !{!"branch_weights", i32 1, i32 4}
!303 = !{!"branch_weights", i32 156, i32 112}
!304 = !{!"branch_weights", i32 1, i32 112}
!305 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!306 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!307 = distinct !{!307, !215}
!308 = !{!"function_entry_count", i64 6668307}
!309 = !{!294, !172, i64 32}
!310 = !{!311, !172, i64 0}
!311 = !{!"_ZTSN11xercesc_2_727SubstitutionGroupComparatorE", !172, i64 0, !172, i64 8}
!312 = !{!311, !172, i64 8}
!313 = !{!171, !172, i64 8}
!314 = !{!"function_entry_count", i64 135}
!315 = !{!"branch_weights", i32 55897, i32 2515456}
!316 = !{!"branch_weights", i32 66, i32 71}
!317 = !{!"branch_weights", i32 3867, i32 1173}
!318 = !{!"branch_weights", i32 782, i32 28}
!319 = !{!"branch_weights", i32 -718462390, i32 39443100, i32 39195030, i32 38948520, i32 116110684, i32 -1833716608}
!320 = !{!"branch_weights", i32 135226, i32 540540}
!321 = !{!"branch_weights", i32 77, i32 1}
!322 = !{!"function_entry_count", i64 441}
!323 = !{!239, !175, i64 0}
!324 = !{!"branch_weights", i32 1, i32 442}
!325 = !{!239, !175, i64 4}
!326 = !{!"branch_weights", i32 14508, i32 471, i32 9984}
!327 = !{!"branch_weights", i32 96, i32 412}
!328 = !{!"branch_weights", i32 887, i32 127}
!329 = distinct !{!329, !215}
!330 = !{!"branch_weights", i32 544, i32 8010}
!331 = !{!"branch_weights", i32 1, i32 159}
!332 = !{!"branch_weights", i32 7, i32 26}
!333 = !{!"branch_weights", i32 865, i32 159}
!334 = distinct !{!334, !215}
!335 = !{!"branch_weights", i32 13, i32 77}
!336 = !{!"function_entry_count", i64 818}
!337 = !{!"function_entry_count", i64 165}
!338 = !{!"branch_weights", i32 158, i32 9}
!339 = !{!171, !175, i64 40}
!340 = !{!"function_entry_count", i64 73}
!341 = distinct !{!341, !215}
!342 = !{!343, !172, i64 0}
!343 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEEE", !172, i64 0, !180, i64 8, !172, i64 16, !175, i64 24, !175, i64 28, !175, i64 32, !172, i64 40}
!344 = !{!343, !180, i64 8}
!345 = !{!343, !172, i64 16}
!346 = !{!343, !175, i64 24}
!347 = !{!343, !175, i64 28}
!348 = !{!343, !175, i64 32}
!349 = !{!343, !172, i64 40}
!350 = !{!"function_entry_count", i64 1180}
!351 = !{!"branch_weights", i32 1181, i32 1}
!352 = !{!173, !173, i64 0}
!353 = !{!"function_entry_count", i64 938}
!354 = !{!"branch_weights", i32 939, i32 1}
!355 = !{!239, !175, i64 8}
!356 = !{!239, !175, i64 12}
!357 = distinct !{!357, !215}
!358 = !{!"function_entry_count", i64 236}
!359 = !{!"branch_weights", i32 237, i32 1}
!360 = distinct !{!360, !215}
!361 = !{!"function_entry_count", i64 570}
!362 = !{!"branch_weights", i32 571, i32 1}
!363 = distinct !{!363, !215}
!364 = !{!"function_entry_count", i64 95}
!365 = !{!366, !172, i64 0}
!366 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_10XMLIntegerEEE", !172, i64 0, !172, i64 8, !172, i64 16}
!367 = !{!"function_entry_count", i64 33}
!368 = !{!369, !175, i64 0}
!369 = !{!"_ZTSN11xercesc_2_710XMLIntegerE", !175, i64 0}
!370 = !{!"function_entry_count", i64 62}
!371 = !{!"branch_weights", i32 63, i32 1}
!372 = !{!366, !172, i64 16}
!373 = !{!171, !174, i64 16}
!374 = !{!"function_entry_count", i64 833054}
!375 = !{!"branch_weights", i32 191, i32 4689}
!376 = distinct !{!376, !215}
!377 = !{!378, !172, i64 40}
!378 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !379, i64 8, !172, i64 16, !175, i64 24, !172, i64 32, !172, i64 40}
!379 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !173, i64 0}
!380 = !{!"branch_weights", i32 61, i32 64}
!381 = !{!"branch_weights", i32 34, i32 31}
!382 = !{!"branch_weights", i32 64, i32 0}
!383 = distinct !{!383, !215}
!384 = !{!366, !172, i64 8}
!385 = distinct !{!385, !215}
!386 = distinct !{!386, !215}
!387 = !{!388, !172, i64 0}
!388 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLIntegerEEEEE", !172, i64 0, !172, i64 8}
!389 = !{!388, !172, i64 8}
!390 = !{!"branch_weights", i32 242, i32 63}
!391 = !{!"branch_weights", i32 1, i32 63}
!392 = !{!"branch_weights", i32 63, i32 0}
!393 = distinct !{!393, !215}
!394 = !{!"branch_weights", i32 4689, i32 191}
!395 = distinct !{!395, !215}
!396 = !{!"function_entry_count", i64 353}
!397 = !{!398, !174, i64 48}
!398 = !{!"_ZTSN11xercesc_2_715ContentSpecNodeE", !295, i64 0, !172, i64 8, !172, i64 16, !172, i64 24, !172, i64 32, !172, i64 40, !174, i64 48, !180, i64 52, !180, i64 53, !175, i64 56, !175, i64 60}
!399 = !{!"function_entry_count", i64 110}
!400 = !{!398, !172, i64 16}
!401 = !{!"function_entry_count", i64 141}
!402 = !{!"branch_weights", i32 1, i32 142}
!403 = !{!"function_entry_count", i64 180}
!404 = !{!398, !172, i64 32}
!405 = !{!"function_entry_count", i64 155}
!406 = !{!398, !172, i64 40}
!407 = !{!"function_entry_count", i64 820}
!408 = !{!"branch_weights", i32 136, i32 18}
!409 = !{!"function_entry_count", i64 496321}
!410 = !{!411, !175, i64 0}
!411 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !175, i64 0, !175, i64 4, !175, i64 8, !180, i64 12, !172, i64 16, !172, i64 24, !172, i64 32}
!412 = !{!411, !175, i64 4}
!413 = !{!411, !175, i64 8}
!414 = !{!411, !180, i64 12}
!415 = !{!411, !172, i64 16}
!416 = !{!411, !172, i64 32}
!417 = !{!"function_entry_count", i64 190774}
!418 = !{!"function_entry_count", i64 10769804}
!419 = !{!"function_entry_count", i64 789922}
!420 = !{!"branch_weights", i32 1, i32 789923}
!421 = !{!"branch_weights", i32 285, i32 789639}
!422 = !{!"branch_weights", i32 789639, i32 41628304}
!423 = distinct !{!423, !215}
!424 = !{!"branch_weights", i32 789637, i32 3}
!425 = !{!"branch_weights", i32 142, i32 1}
!426 = !{!"branch_weights", i32 158, i32 1}
!427 = distinct !{!427, !215}
!428 = !{!"branch_weights", i32 64, i32 1}
!429 = distinct !{!429, !215}
